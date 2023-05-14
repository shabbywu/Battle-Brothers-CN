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
	destDir, err := ioutil.TempDir("", "temp-json")
	if err != nil {
		logger.Fatalln("下载压缩包失败")
	}
	if err = cli.DownloadArtifacts(*ProjectID, destDir); err != nil {
		logger.Fatalln("下载压缩包失败")
	}

	destJsonBaseDir := filepath.Join(destDir, "utf8")
	err = filepath.Walk(destJsonBaseDir, func(path string, info fs.FileInfo, err error) error {
		if info.IsDir() {
			return nil
		}
		filename, err := filepath.Rel(destJsonBaseDir, path)
		if err != nil {
			return err
		}
		destFilename := filepath.Join(*JsonBaseDir, strings.Replace(filename, ".json", ".nut", 1))
		destFileStat, err := os.Stat(destFilename)
		if err != nil {
			return errors.Wrapf(err, "读取文件 %s 失败, 中止程序", destFilename)
		}
		if os.SameFile(info, destFileStat) {
			return nil
		}
		os.Remove(destFilename)
		if err := os.Link(path, destFilename); err != nil {
			return errors.Wrapf(err, "更新文件 %s 失败, 中止程序", destFilename)
		}
		logger.Printf("更新文件 %s 成功", destFilename)
		return nil
	})
	if err != nil {
		logger.Fatalln(err)
	}
}
