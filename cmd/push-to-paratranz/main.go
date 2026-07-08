package main

import (
	"crypto/sha256"
	"encoding/json"
	"fmt"
	"io/fs"
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
	APIToken          = flag.String("token", os.Getenv("PARATRANZ_API_TOKEN"), "ParaTranZ 的 API Token")
	ProjectID         = flag.Int("project", 0, "ParaTranZ 项目ID")
	JsonBaseDir       = flag.String("src", "zh_CN.UTF-8/json", "json 格式的翻译文件的根路径")
	ManifestPath      = flag.String("manifest", "", "批量同步用的 localization.manifest.json 路径")
	ForceUpdate       = flag.Bool("force", false, "忽略本地文件状态, 强制更新")
	SkipConflict      = flag.Bool("skip-conflict", false, "跳过冲突文件")
	CreateTranslation = flag.Bool("create-translation", false, "更新时创建新词条/新文件")
)

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
			logger.Printf("正在推送组件 %s(%s) 到 ParaTranz 项目 %d", component.Name, component.ID, component.ProjectID)
			if err := pushProject(logger, component.ProjectID, component.JSONBaseDir); err != nil {
				logger.Fatalln(err)
			}
		}
		return
	}

	if *ProjectID == 0 {
		logger.Fatalln("未提供 ParaTranZ 项目ID")
	}
	if err := pushProject(logger, *ProjectID, *JsonBaseDir); err != nil {
		logger.Fatalln(err)
	}
}

func pushProject(logger *log.Logger, projectID int, jsonBaseDir string) error {
	cli := paratranz.NewClient(*APIToken)

	lockFileName := filepath.Join(jsonBaseDir, ".lock")
	lockedInfos := map[string]models.ParaTranzFileInfo{}
	if _, err := os.Stat(lockFileName); err != nil {
		if !os.IsNotExist(err) {
			return errors.Wrap(err, "读取文件锁异常")
		}
	} else {
		content, err := os.ReadFile(lockFileName)
		if err != nil {
			return errors.Wrap(err, "读取文件锁异常")
		}
		if err = json.Unmarshal(content, &lockedInfos); err != nil {
			return errors.Wrap(err, "读取文件锁异常")
		}
	}
	files, err := cli.ListFiles(projectID)
	if err != nil {
		return errors.Wrap(err, "获取文件列表失败!")
	}

	newLockedInfos := map[string]models.ParaTranzFileInfo{}
	for _, info := range files {
		if locked, ok := lockedInfos[info.Name]; ok {
			info.Sha256Sum = locked.Sha256Sum
		}
		newLockedInfos[info.Name] = info
	}

	sigs := make(chan os.Signal, 1)
	interrupt := make(chan bool, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)
	defer signal.Stop(sigs)
	go func() {
		<-sigs
		interrupt <- true
	}()

	anyUpdated := false
	err = filepath.Walk(jsonBaseDir, func(path string, info fs.FileInfo, err error) error {
		if err != nil {
			return err
		}
		select {
		case <-interrupt:
			return fmt.Errorf("Ctrl+C 主动退出")
		default:
		}

		if path == lockFileName || info.IsDir() {
			return nil
		}

		filename, err := filepath.Rel(jsonBaseDir, path)
		if err != nil {
			return err
		}

		filename = strings.Replace(filename, ".nut", ".json", 1)
		filename = strings.Replace(filename, `\`, "/", -1)
		fileDir := filepath.Dir(filename)

		content, err := os.ReadFile(path)
		if err != nil {
			return errors.Wrapf(err, "读取文件 %s 失败", path)
		}

		sha256Sum := fmt.Sprintf("%x", sha256.Sum256(content))
		var fileinfo models.ParaTranzFileInfo
		if currentInfo, ok := newLockedInfos[filename]; ok {
			if currentInfo.Sha256Sum == sha256Sum {
				return nil
			}
			if currentInfo.ModifiedAt.After(info.ModTime()) && !*ForceUpdate {
				if *SkipConflict {
					log.Printf("文件 %s 冲突, 暂时跳过该文件", filename)
					return nil
				}
				url := fmt.Sprintf("https://paratranz.cn/projects/%d/strings?file=%d", currentInfo.ProjectID, currentInfo.ID)
				return fmt.Errorf("文件 %s 冲突, 请到线上 %s 检查在线文件, 线上解决冲突后使用 sync-from-paratranz --force 更新本地文件再重新推送", filename, url)
			}
			if *CreateTranslation {
				fileinfo, err = cli.UpdateFile(projectID, currentInfo.ID, content, filename)
			} else {
				fileinfo, err = cli.UpdateFileTranslation(projectID, currentInfo.ID, content, filename)
			}
			if err != nil {
				if errors.Is(err, paratranz.HashMatchedError) {
					fileinfo = newLockedInfos[filename]
					fileinfo.Sha256Sum = sha256Sum
					lockedInfos[filename] = fileinfo
					anyUpdated = true
					return nil
				}
				if errors.Is(err, paratranz.UnchangedError) {
					logger.Println(filename, "unchanged")
					return nil
				}
				return errors.Wrapf(err, "更新文件 %s 失败", filename)
			}
			logger.Printf("更新文件 %s 成功", fileinfo.Name)
		} else {
			if !*CreateTranslation {
				return fmt.Errorf("远程不存在文件 %s, 如需创建请添加 --create-translation", filename)
			}
			fileinfo, err = cli.CreateFile(projectID, content, filename, fileDir)
			if err != nil {
				return errors.Wrapf(err, "创建文件 %s 失败", filename)
			}
			logger.Printf("创建文件 %s 成功", fileinfo.Name)
		}

		fileinfo.Sha256Sum = sha256Sum
		lockedInfos[filename] = fileinfo
		anyUpdated = true
		return nil
	})
	if err != nil {
		if !anyUpdated {
			return err
		}
		logger.Println("程序异常终止, 正在写入文件状态锁...", err)
	} else {
		logger.Println("文件推送成功, 正在写入文件状态锁...")
	}

	lockContent, lockErr := json.MarshalIndent(lockedInfos, "", "    ")
	if lockErr != nil {
		return errors.Wrap(lockErr, "写入文件状态锁失败")
	}
	if lockErr := os.WriteFile(lockFileName, lockContent, 0755); lockErr != nil {
		return errors.Wrap(lockErr, "写入文件状态锁失败")
	}
	return err
}
