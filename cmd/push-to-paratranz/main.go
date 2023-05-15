package main

import (
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
)

func main() {
	flag.Parse()
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
	fileNamesToInfo := map[string]paratranz.ParaTranzFileInfo{}
	for _, file := range files {
		fileNamesToInfo[file.Name] = file
	}

	lockFileName := filepath.Join(*JsonBaseDir, ".lock")
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
		if currentInfo, ok := fileNamesToInfo[filename]; ok {
			if currentInfo.UpdatedAt.After(info.ModTime()) {
				url := fmt.Sprintf("https://paratranz.cn/projects/%d/strings?file=%d", currentInfo.ProjectID, currentInfo.ID)
				return fmt.Errorf("文件 %s 冲突, 请到线上 %s 检查在线文件, 线上解决冲突后使用 sync-from-paratranz --force 更新本地文件再重新推送", filename, url)
			} else if currentInfo.UpdatedAt.Equal(info.ModTime()) {
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
		fileNamesToInfo[filename] = fileinfo
		return nil
	})
	if err != nil {
		logger.Fatalln(err)
	}

	logger.Println("🔐文件推送成功, 正在写入文件状态锁...")
	lockContent, err := json.MarshalIndent(fileNamesToInfo, "", "    ")
	if err != nil {
		logger.Fatalln("写入文件状态锁失败...")
	}
	if err := ioutil.WriteFile(lockFileName, lockContent, 0755); err != nil {
		logger.Fatalln("写入文件状态锁失败...")
	}
}
