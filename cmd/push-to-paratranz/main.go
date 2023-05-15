package main

import (
	"crypto/sha256"
	"encoding/json"
	"fmt"
	"io/fs"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
	"strings"

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

func main() {
	var err error

	flag.Parse()
	logger := log.Default()
	if *APIToken == "" {
		logger.Fatalln("未提供 API Token")
	}
	if *ProjectID == 0 {
		logger.Fatalln("未提供 ParaTranZ 项目ID")
	}

	cli := paratranz.NewClient(*APIToken)

	lockFileName := filepath.Join(*JsonBaseDir, ".lock")
	lockedInfos := map[string]paratranz.ParaTranzFileInfo{}
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

	newLockedInfos := map[string]paratranz.ParaTranzFileInfo{}
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

	err = filepath.Walk(*JsonBaseDir, func(path string, info fs.FileInfo, err error) error {
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
			logger.Fatalln(errors.Wrapf(err, "读取文件 %s 失败", path))
		}

		var fileinfo paratranz.ParaTranzFileInfo
		if currentInfo, ok := newLockedInfos[filename]; ok {
			if currentInfo.ModifiedAt.After(info.ModTime()) {
				url := fmt.Sprintf("https://paratranz.cn/projects/%d/strings?file=%d", currentInfo.ProjectID, currentInfo.ID)
				return fmt.Errorf("文件 %s 冲突, 请到线上 %s 检查在线文件, 线上解决冲突后使用 sync-from-paratranz --force 更新本地文件再重新推送", filename, url)
			} else if currentInfo.ModifiedAt.Equal(info.ModTime()) {
				return nil
			}
			if fileinfo, err = cli.UpdateFile(*ProjectID, currentInfo.ID, content, filename); err != nil {
				if errors.Is(err, paratranz.HashMatchedError) {
					return nil
				}
				logger.Fatalln(errors.Wrapf(err, "更新文件 %s 失败", filename))
			}
			logger.Printf("更新文件 %s 成功", fileinfo.Name)
		} else {
			if fileinfo, err = cli.CreateFile(*ProjectID, content, filename, fileDir); err != nil {
				logger.Fatalln(errors.Wrapf(err, "创建文件 %s 失败", filename))
			}
			logger.Printf("创建文件 %s 成功", fileinfo.Name)
		}

		// 更新 sha256 sum
		fileinfo.Sha256Sum = fmt.Sprintf("%x", sha256.Sum256(content))
		newLockedInfos[filename] = fileinfo
		return nil
	})
	if err != nil {
		logger.Fatalln(err)
	}

	logger.Println("🔐文件推送成功, 正在写入文件状态锁...")
	lockContent, err := json.MarshalIndent(newLockedInfos, "", "    ")
	if err != nil {
		logger.Fatalln("写入文件状态锁失败...")
	}
	if err := ioutil.WriteFile(lockFileName, lockContent, 0755); err != nil {
		logger.Fatalln("写入文件状态锁失败...")
	}
}
