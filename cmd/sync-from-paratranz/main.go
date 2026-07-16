package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/json"
	"fmt"
	"log"
	"os"
	"os/signal"
	"path/filepath"
	"shabbywu.com/battle-brother-cn/pkg/localization"
	"shabbywu.com/battle-brother-cn/pkg/models"
	"shabbywu.com/battle-brother-cn/pkg/paratranz"
	"strings"
	"syscall"
	"time"

	"github.com/pkg/errors"
	flag "github.com/spf13/pflag"
)

var (
	APIToken     = flag.String("token", os.Getenv("PARATRANZ_API_TOKEN"), "ParaTranZ 的 API Token")
	ProjectID    = flag.Int("project", 0, "ParaTranZ 项目ID")
	JsonBaseDir  = flag.String("src", "zh_CN.UTF-8/json", "json 格式的翻译文件的根路径")
	ManifestPath = flag.String("manifest", "", "批量同步用的 localization.manifest.json 路径")
	ForceUpdate  = flag.Bool("force", false, "忽略本地文件状态, 强制更新")
)

// MarshalIndent is like Marshal but applies Indent to format the output.
func MarshalIndent(v any, prefix, indent string) ([]byte, error) {
	bf := bytes.NewBuffer([]byte{})
	e := json.NewEncoder(bf)
	e.SetEscapeHTML(false)
	if err := e.Encode(v); err != nil {
		return nil, err
	}
	b := bf.Bytes()
	var buf bytes.Buffer
	err := json.Indent(&buf, b, prefix, indent)
	if err != nil {
		return nil, err
	}
	return buf.Bytes(), nil
}

func hasMissingRemoteIDs(content []byte) (bool, error) {
	entities := []models.Entity{}
	if err := json.Unmarshal(content, &entities); err != nil {
		return false, err
	}
	for _, entity := range entities {
		if entity.ID == 0 {
			return true, nil
		}
	}
	return false, nil
}

func main() {
	flag.Parse()
	defer func() {
		if err := recover(); err != nil {
			log.Println(err)
			time.Sleep(time.Second * 2)
			os.Exit(1)
		}
	}()
	core()
}

func core() {
	logger := log.Default()
	if *APIToken == "" {
		logger.Fatalln("未提供 API Token")
	}

	if *ManifestPath != "" {
		components, err := localization.ProjectComponents(*ManifestPath)
		if err != nil {
			logger.Fatalln(errors.Wrap(err, "读取 localization manifest 失败"))
		}
		for _, component := range components {
			logger.Printf("正在从 ParaTranz 项目 %d 同步组件 %s(%s)", component.ProjectID, component.Name, component.ID)
			if err := syncProject(logger, component.ProjectID, component.JSONBaseDir); err != nil {
				logger.Fatalln(err)
			}
		}
		return
	}

	if *ProjectID == 0 {
		logger.Fatalln("未提供 ParaTranZ 项目ID")
	}
	if err := syncProject(logger, *ProjectID, *JsonBaseDir); err != nil {
		logger.Fatalln(err)
	}
}

func syncProject(logger *log.Logger, projectID int, jsonBaseDir string) error {
	cli := paratranz.NewClient(*APIToken)
	files, err := cli.ListFiles(projectID)
	if err != nil {
		return errors.Wrap(err, "获取文件列表失败!")
	}
	fileNamesToInfo := map[string]models.ParaTranzFileInfo{}
	for _, file := range files {
		fileNamesToInfo[file.Name] = file
	}
	logger.Printf("ParaTranz 共有 %d 个文件记录", len(fileNamesToInfo))

	lockFileName := filepath.Join(jsonBaseDir, ".lock")
	lockedInfos := map[string]models.ParaTranzFileInfo{}
	firstSync := false
	if _, err := os.Stat(lockFileName); err != nil {
		if !os.IsNotExist(err) {
			return errors.Wrap(err, "读取文件锁异常")
		}
		firstSync = true
	} else {
		content, err := os.ReadFile(lockFileName)
		if err != nil {
			return errors.Wrap(err, "读取文件锁异常")
		}
		if err = json.Unmarshal(content, &lockedInfos); err != nil {
			return errors.Wrap(err, "读取文件锁异常")
		}
	}
	logger.Printf("本地文件锁共有 %d 个文件记录", len(lockedInfos))

	sigs := make(chan os.Signal, 1)
	interrupt := make(chan bool, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)
	defer signal.Stop(sigs)
	go func() {
		<-sigs
		interrupt <- true
	}()

	conflict := 0
	for filename, remoteInfo := range fileNamesToInfo {
		select {
		case <-interrupt:
			return fmt.Errorf("Ctrl+C 主动退出")
		default:
		}
		destFilename := filepath.Join(jsonBaseDir, filepath.FromSlash(strings.Replace(filename, ".json", ".nut", 1)))
		update := func() error {
			logger.Printf("正在更新文件 %s", destFilename)
			translation, err := cli.GetFileTranslation(projectID, remoteInfo.ID)
			if err != nil {
				return errors.Wrapf(err, "获取文件 %s 翻译失败", destFilename)
			}
			content, err := MarshalIndent(translation, "", "  ")
			if err != nil {
				return errors.Wrapf(err, "更新文件 %s 翻译失败", destFilename)
			}
			if err = os.MkdirAll(filepath.Dir(destFilename), 0755); err != nil {
				return errors.Wrapf(err, "更新文件 %s 翻译失败", destFilename)
			}
			if err = os.WriteFile(destFilename, content, 0755); err != nil {
				return errors.Wrapf(err, "更新文件 %s 翻译失败", destFilename)
			}
			if err = os.Chtimes(destFilename, remoteInfo.CreatedAt, remoteInfo.ModifiedAt); err != nil {
				return errors.Wrapf(err, "更新文件 %s 翻译失败", destFilename)
			}
			remoteInfo.Sha256Sum = fmt.Sprintf("%x", sha256.Sum256(content))
			lockedInfos[filename] = remoteInfo
			time.Sleep(time.Second / 2)
			return nil
		}

		if !firstSync {
			localInfo, ok := lockedInfos[filename]
			if !ok {
				if err := update(); err != nil {
					return err
				}
				continue
			}
			info, err := os.Stat(destFilename)
			if err != nil {
				if !os.IsNotExist(err) {
					return errors.Wrapf(err, "更新文件 %s 失败, 无法读取该文件", destFilename)
				}
				if err := update(); err != nil {
					return err
				}
				continue
			}

			if info.ModTime().Equal(localInfo.ModifiedAt) {
				if localInfo.ModifiedAt.Equal(remoteInfo.ModifiedAt) {
					continue
				}
			} else {
				content, err := os.ReadFile(destFilename)
				if err != nil {
					return errors.Wrapf(err, "更新文件 %s 失败, 无法读取该文件", destFilename)
				}
				digest := fmt.Sprintf("%x", sha256.Sum256(content))
				if digest == localInfo.Sha256Sum {
					if localInfo.ModifiedAt.Before(remoteInfo.ModifiedAt) || localInfo.Hash != remoteInfo.Hash {
						if err := update(); err != nil {
							return err
						}
						continue
					}
					missingIDs, err := hasMissingRemoteIDs(content)
					if err != nil {
						return errors.Wrapf(err, "检查文件 %s 词条 ID 失败", destFilename)
					}
					if missingIDs {
						if err := update(); err != nil {
							return err
						}
						continue
					}
					logger.Printf("文件 %s 未更新, 跳过同步该文件", destFilename)
					continue
				}
				if localInfo.ModifiedAt.Equal(remoteInfo.ModifiedAt) {
					if !*ForceUpdate {
						logger.Printf("文件 %s 被修改且未同步至线上, 跳过同步该文件", destFilename)
						conflict += 1
						continue
					}
				} else if !*ForceUpdate {
					url := fmt.Sprintf("https://paratranz.cn/projects/%d/strings?file=%d", remoteInfo.ProjectID, remoteInfo.ID)
					logger.Println(fmt.Errorf("文件 %s 冲突, 请到线上 %s 检查在线文件, 如确认无冲突, 可添加 --force 参数强制同步", destFilename, url))
					conflict += 1
					continue
				}
			}
		}

		if err := update(); err != nil {
			return err
		}
	}

	if conflict != 0 {
		logger.Printf("共有 %d 个文件未正常同步, 请检查执行日志", conflict)
	} else {
		logger.Println("文件同步成功, 正在写入文件状态锁...")
	}
	if err := os.MkdirAll(filepath.Dir(lockFileName), 0755); err != nil {
		return errors.Wrap(err, "写入文件状态锁失败")
	}
	lockContent, err := json.MarshalIndent(lockedInfos, "", "    ")
	if err != nil {
		return errors.Wrap(err, "写入文件状态锁失败")
	}
	if err := os.WriteFile(lockFileName, lockContent, 0755); err != nil {
		return errors.Wrap(err, "写入文件状态锁失败")
	}
	return nil
}
