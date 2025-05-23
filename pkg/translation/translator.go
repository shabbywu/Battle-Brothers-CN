package translation

import (
	"context"
	"encoding/json"
	"fmt"
	"github.com/openai/openai-go"
	"log"
)

type Translator struct {
	Client  *openai.Client
	AIModel string
	Logger  *log.Logger
}

func (g *Translator) DoTranslate(ctx context.Context, content string) (string, error) {
	g.Logger.Printf("Translating: %s", content)
	req := openai.ChatCompletionNewParams{
		Model: openai.F(g.AIModel),
		Messages: openai.F([]openai.ChatCompletionMessageParamUnion{
			openai.SystemMessage(`你是一个好用的翻译助手。请将我的英文翻译成中文，将所有非中文的翻译成中文。我发给你所有的话都是需要翻译的内容，你只需要回答翻译结果。翻译结果在贴近字面的前提下, 请符合中文的语言习惯。另外，德语地名, 优先按德语习惯翻译。`),
			openai.UserMessage(content),
		}),
	}
	stream := g.Client.Chat.Completions.NewStreaming(ctx, req)
	// optionally, an accumulator helper can be used
	acc := openai.ChatCompletionAccumulator{}

	for stream.Next() {
		chunk := stream.Current()
		acc.AddChunk(chunk)

		// it's best to use chunks after handling JustFinished events
		if len(chunk.Choices) > 0 {
			var delta = chunk.Choices[0].Delta
			if field, ok := delta.JSON.ExtraFields["reasoning_content"]; ok {
				var part string
				json.Unmarshal([]byte(field.Raw()), &part)
				fmt.Print(part)
			}
		}
	}

	if err := stream.Err(); err != nil {
		g.Logger.Printf("Stream error: %v", err)
		return "", err
	}

	// After the stream is finished, acc can be used like a ChatCompletion
	g.Logger.Printf("Translated: %s", acc.Choices[0].Message.Content)
	return acc.Choices[0].Message.Content, nil
}
