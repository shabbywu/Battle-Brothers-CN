package main

import (
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
	fileNamesToId := map[string]int{}
	for _, file := range files {
		fileNamesToId[file.Name] = file.ID
	}

	filepath.Walk(*JsonBaseDir, func(path string, info fs.FileInfo, err error) error {
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
		if fileID, ok := fileNamesToId[filename]; ok {
			if fileinfo, err = cli.UpdateFile(*ProjectID, fileID, content, filename); err != nil {
				if errors.Is(err, paratranz.HashMatchedError) {
					logger.Printf("文件 %s 无变化, 跳过更新", filename)
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
		return nil
	})
}
