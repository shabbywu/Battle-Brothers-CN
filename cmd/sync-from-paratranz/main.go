package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"os/signal"
	"path/filepath"
	"shabbywu.com/battle-brother-cn/pkg/models"
	"strings"
	"syscall"
	"time"

	"github.com/pkg/errors"
	flag "github.com/spf13/pflag"

	"shabbywu.com/battle-brother-cn/pkg/paratranz"
)

var (
	APIToken    = flag.String("token", os.Getenv("PARATRANZ_API_TOKEN"), "ParaTranZ 的 API Token")
	ProjectID   = flag.Int("project", 0, "ParaTranZ 项目ID")
	JsonBaseDir = flag.String("src", "zh_CN.UTF-8/json", "json 格式的翻译文件的根路径")
	ForceUpdate = flag.Bool("force", false, "忽略本地文件状态, 强制更新")
)

// MarshalIndent is like Marshal but applies Indent to format the output.
// Each JSON element in the output will begin on a new line beginning with prefix
// followed by one or more copies of indent according to the indentation nesting.
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
	if *ProjectID == 0 {
		logger.Fatalln("未提供 ParaTranZ 项目ID")
	}

	cli := paratranz.NewClient(*APIToken)
	files, err := cli.ListFiles(*ProjectID)
	if err != nil {
		logger.Fatalln(errors.Wrap(err, "获取文件列表失败!"))
	}
	fileNamesToInfo := map[string]models.ParaTranzFileInfo{}
	for _, file := range files {
		fileNamesToInfo[file.Name] = file
	}
	logger.Printf("ParaTranz 共有 %d 个文件记录", len(fileNamesToInfo))

	lockFileName := filepath.Join(*JsonBaseDir, ".lock")
	lockedInfos := map[string]models.ParaTranzFileInfo{}
	firstSync := false
	if _, err := os.Stat(lockFileName); err != nil {
		if !os.IsNotExist(err) {
			logger.Fatalln(errors.Wrap(err, "读取文件锁异常"))
		}
		firstSync = true
	} else {
		content, err := ioutil.ReadFile(lockFileName)
		if err != nil {
			logger.Fatalln(errors.Wrap(err, "读取文件锁异常"))
		}
		if err = json.Unmarshal(content, &lockedInfos); err != nil {
			logger.Fatalln(errors.Wrap(err, "读取文件锁异常"))
		}
	}
	logger.Printf("本地文件锁共有 %d 个文件记录", len(lockedInfos))

	sigs := make(chan os.Signal, 1)
	interrupt := make(chan bool, 1)
	done := make(chan error, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)

	go func() {
		<-sigs
		interrupt <- true
	}()

	conflict := 0
	defer func() {
		if conflict != 0 {
			logger.Printf("共有 %d 个文件未正常同步, 请检查执行日志", conflict)
		} else if err != nil {
			return
		} else {
			logger.Println("🔐文件同步成功, 正在写入文件状态锁...")
		}
		lockContent, err := json.MarshalIndent(lockedInfos, "", "    ")
		if err != nil {
			logger.Fatalln("写入文件状态锁失败...")
		}
		if err := ioutil.WriteFile(lockFileName, lockContent, 0755); err != nil {
			logger.Fatalln("写入文件状态锁失败...")
		}
	}()

	go func() {
		time.Sleep(time.Second * 1)
		for filename, remoteInfo := range fileNamesToInfo {
			select {
			case <-interrupt:
				{
					done <- fmt.Errorf("Ctrl+C 主动退出")
					return
				}
			default:

			}
			destFilename := filepath.Join(*JsonBaseDir, strings.Replace(filename, ".json", ".nut", 1))
			update := func() {
				logger.Printf("正在更新文件 %s", destFilename)
				// 远程文件更新, 且无冲突
				translation, err := cli.GetFileTranslation(*ProjectID, remoteInfo.ID)
				if err != nil {
					done <- errors.Wrapf(err, "获取文件 %s 翻译失败", destFilename)
					return
				}
				content, err := MarshalIndent(translation, "", "  ")
				if err != nil {
					done <- errors.Wrapf(err, "更新文件 %s 翻译失败", destFilename)
					return
				}
				if err = ioutil.WriteFile(destFilename, content, 0755); err != nil {
					done <- errors.Wrapf(err, "更新文件 %s 翻译失败", destFilename)
					return
				}
				if err = os.Chtimes(destFilename, remoteInfo.CreatedAt, remoteInfo.ModifiedAt); err != nil {
					done <- errors.Wrapf(err, "更新文件 %s 翻译失败", destFilename)
					return
				}
				remoteInfo.Sha256Sum = fmt.Sprintf("%x", sha256.Sum256(content))
				lockedInfos[filename] = remoteInfo
			}

			if !firstSync {
				var localInfo models.ParaTranzFileInfo
				var ok bool
				if localInfo, ok = lockedInfos[filename]; !ok {
					// 本地无该文件的状态锁, 直接更新
					update()
					continue
				}
				info, err := os.Stat(destFilename)
				if err != nil {
					if !os.IsNotExist(err) {
						done <- errors.Wrapf(err, "更新文件 %s 失败, 无法读取该文件", destFilename)
						return
					}
					// 文件不存在, 直接写入创建文件
					update()
					continue
				}

				if info.ModTime().Equal(localInfo.ModifiedAt) {
					// 本地文件未更新, 只需要判断远程文件即可
					if localInfo.ModifiedAt.Equal(remoteInfo.ModifiedAt) {
						// 本地文件未更新
						// 远程文件也未更新
						// 跳过更新
						continue
					}
				} else {
					// 本地文件可能被更新
					// 判断 sha256sum 是否真的被更新
					content, err := ioutil.ReadFile(destFilename)
					if err != nil {
						done <- errors.Wrapf(err, "更新文件 %s 失败, 无法读取该文件", destFilename)
						return
					}
					digest := fmt.Sprintf("%x", sha256.Sum256(content))
					if digest == localInfo.Sha256Sum {
						if localInfo.ModifiedAt.Equal(remoteInfo.ModifiedAt) {
							// 本地文件未更新
							// 远程文件也未更新
							// 跳过更新
							continue
						}
					} else {
						if localInfo.ModifiedAt.Equal(remoteInfo.ModifiedAt) {
							// 本地文件被更新, 但未同步至线上
							if !*ForceUpdate {
								logger.Printf("文件 %s 被修改且未同步至线上, 跳过同步该文件", destFilename)
								conflict += 1
								continue
							}
						} else {
							// 本地文件被更新
							// 远程文件被更新
							// 所以, 冲突了
							if !*ForceUpdate {
								url := fmt.Sprintf("https://paratranz.cn/projects/%d/strings?file=%d", remoteInfo.ProjectID, remoteInfo.ID)
								logger.Println(fmt.Errorf("文件 %s 冲突, 请到线上 %s 检查在线文件, 如确认无冲突, 可添加 --force 参数强制同步", destFilename, url))
								conflict += 1
								continue
							}
						}
					}
				}
			}
			// 更新文件
			update()
		}
		done <- nil
	}()

	if err = <-done; err != nil {
		panic(err)
	}
}
