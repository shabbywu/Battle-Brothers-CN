package main

import (
	"bytes"
	"context"
	"encoding/json"
	"github.com/openai/openai-go"
	"github.com/openai/openai-go/option"
	flag "github.com/spf13/pflag"
	"log"
	"os"
	"path/filepath"
	"shabbywu.com/battle-brother-cn/pkg/models"
	"shabbywu.com/battle-brother-cn/pkg/translation"
)

var (
	APIToken   = flag.String("token", os.Getenv("OPENAI_API_KEY"), "API Token")
	BaseURL    = flag.String("base_url", "https://api.lkeap.cloud.tencent.com/v1/", "支持 OPENAI 协议的服务地址")
	AIModel    = flag.String("ai_model", "deepseek-r1", "AI 模型")
	SourceFile = flag.String("file", "", "需要翻译的文件")
	OutputFile = flag.String("output", "", "翻译后输出的文件")
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
	var err error
	var output *os.File
	if *SourceFile == "" {
		log.Fatalln("must specify --file")
	}
	if *OutputFile == "" {
		output = os.Stdout
	} else {
		os.MkdirAll(filepath.Dir(*OutputFile), os.ModePerm)
		output, err = os.OpenFile(*OutputFile, os.O_WRONLY|os.O_CREATE|os.O_TRUNC, 0755)
	}
	client := openai.NewClient(
		option.WithAPIKey(*APIToken),
		option.WithBaseURL(*BaseURL),
	)

	translator := translation.Translator{
		Client:  client,
		AIModel: *AIModel,
		Logger:  log.Default(),
	}

	data, err := os.ReadFile(*SourceFile)
	if err != nil {
		log.Fatal(err)
	}
	var entities []models.Entity
	if err := json.Unmarshal(data, &entities); err != nil {
		log.Fatal(err)
	}

	var outputs []models.Entity
	ctx := context.Background()
	for _, entity := range entities {
		translation, err := translator.DoTranslate(ctx, entity.Original)
		if err == nil {
			entity.Translation = translation
		}
		outputs = append(outputs, entity)
	}
	data, err = MarshalIndent(outputs, "", "  ")
	if err != nil {
		log.Fatal(err)
	}
	if _, err := output.Write(data); err != nil {
		log.Fatal(err)
	}
}
