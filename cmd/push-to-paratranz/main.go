package main

import (
	"crypto/sha256"
	"encoding/json"
	"fmt"
	"io/fs"
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
	APIToken     = flag.String("token", os.Getenv("PARATRANZ_API_TOKEN"), "ParaTranZ 的 API Token")
	ProjectID    = flag.Int("project", 0, "ParaTranZ 项目ID")
	JsonBaseDir  = flag.String("src", "zh_CN.UTF-8/json", "json 格式的翻译文件的根路径")
	ForceUpdate  = flag.Bool("force", false, "忽略本地文件状态, 强制更新")
	SkipConflict = flag.Bool("skip-conflict", false, "跳过冲突文件")
)

func main() {
	flag.Parse()
	defer func() {
		if err := recover(); err != nil {
			time.Sleep(time.Second * 2)
			os.Exit(1)
		}
	}()
	core()
}

func core() {
	var err error
	logger := log.Default()
	if *APIToken == "" {
		logger.Fatalln("未提供 API Token")
	}
	if *ProjectID == 0 {
		logger.Fatalln("未提供 ParaTranZ 项目ID")
	}

	cli := paratranz.NewClient(*APIToken)

	lockFileName := filepath.Join(*JsonBaseDir, ".lock")
	lockedInfos := map[string]models.ParaTranzFileInfo{}
	if _, err := os.Stat(lockFileName); err != nil {
		if !os.IsNotExist(err) {
			logger.Fatalln(errors.Wrap(err, "读取文件锁异常"))
		}
	} else {
		content, err := ioutil.ReadFile(lockFileName)
		if err != nil {
			logger.Fatalln(errors.Wrap(err, "读取文件锁异常"))
		}
		if err = json.Unmarshal(content, &lockedInfos); err != nil {
			logger.Fatalln(errors.Wrap(err, "读取文件锁异常"))
		}
	}
	files, err := cli.ListFiles(*ProjectID)
	if err != nil {
		logger.Fatalln(errors.Wrap(err, "获取文件列表失败!"))
	}

	newLockedInfos := map[string]models.ParaTranzFileInfo{}
	for _, info := range files {
		if locked, ok := lockedInfos[info.Name]; !ok {
			// 本地 lock 不存在该记录, 插入记录
			newLockedInfos[info.Name] = info
		} else {
			// 复用旧 lock 记录的 sha256 sum
			info.Sha256Sum = locked.Sha256Sum
			newLockedInfos[info.Name] = info
		}
	}

	anyUpdated := false
	defer func() {
		if err != nil {
			if !anyUpdated {
				return
			}
			logger.Println("程序异常终止, 正在写入文件状态锁...")
		} else {
			logger.Println("🔐文件推送成功, 正在写入文件状态锁...")
		}
		lockContent, err := json.MarshalIndent(lockedInfos, "", "    ")
		if err != nil {
			logger.Fatalln("写入文件状态锁失败...")
		}
		if err := ioutil.WriteFile(lockFileName, lockContent, 0755); err != nil {
			logger.Fatalln("写入文件状态锁失败...")
		}
	}()

	sigs := make(chan os.Signal, 1)
	interrupt := make(chan bool, 1)
	done := make(chan error, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)

	go func() {
		<-sigs
		interrupt <- true
	}()

	go func() {
		err := filepath.Walk(*JsonBaseDir, func(path string, info fs.FileInfo, err error) error {
			select {
			case <-interrupt:
				{
					return fmt.Errorf("Ctrl+C 主动退出")
				}
			default:
				{
					// 忽略文件锁
					if path == lockFileName {
						return nil
					}
					if info.IsDir() {
						return nil
					}

					filename, err := filepath.Rel(*JsonBaseDir, path)
					if err != nil {
						return err
					}

					filename = strings.Replace(filename, ".nut", ".json", 1)
					fileDir := filepath.Dir(filename)

					content, err := ioutil.ReadFile(path)
					if err != nil {
						return errors.Wrapf(err, "读取文件 %s 失败", path)
					}

					sha256Sum := fmt.Sprintf("%x", sha256.Sum256(content))

					var fileinfo models.ParaTranzFileInfo
					if currentInfo, ok := newLockedInfos[filename]; ok {
						if currentInfo.Sha256Sum == sha256Sum {
							// 本地文件未更新
							return nil
						}
						// 本地文件被更新
						if currentInfo.ModifiedAt.After(info.ModTime()) {
							// 远程文件也被更新
							if !*ForceUpdate {
								if *SkipConflict {
									log.Printf("文件 %s 冲突, 暂时跳过该文件", filename)
									return nil
								}
								url := fmt.Sprintf("https://paratranz.cn/projects/%d/strings?file=%d", currentInfo.ProjectID, currentInfo.ID)
								return fmt.Errorf("文件 %s 冲突, 请到线上 %s 检查在线文件, 线上解决冲突后使用 sync-from-paratranz --force 更新本地文件再重新推送", filename, url)
							}
						}
						if fileinfo, err = cli.UpdateFile(*ProjectID, currentInfo.ID, content, filename); err != nil {
							if errors.Is(err, paratranz.HashMatchedError) {
								println(filename)
								fileinfo = newLockedInfos[filename]
								fileinfo.Sha256Sum = sha256Sum
								lockedInfos[filename] = fileinfo
								anyUpdated = true
								return nil
							}
							return errors.Wrapf(err, "更新文件 %s 失败", filename)
						}
						logger.Printf("更新文件 %s 成功", fileinfo.Name)
					} else {
						if fileinfo, err = cli.CreateFile(*ProjectID, content, filename, fileDir); err != nil {
							return errors.Wrapf(err, "创建文件 %s 失败", filename)
						}
						logger.Printf("创建文件 %s 成功", fileinfo.Name)
					}

					// 更新 sha256 sum
					fileinfo.Sha256Sum = sha256Sum
					lockedInfos[filename] = fileinfo
					anyUpdated = true
					return nil
				}
			}
		})
		done <- err
	}()

	if err = <-done; err != nil {
		panic(err)
	}
}
