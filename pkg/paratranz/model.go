package paratranz

import "time"

type Entity struct {
	// ID: 词条ID
	ID int `json:"ID,omitempty"`
	// Key: 描述当前翻译信息的唯一键
	Key string `json:"key"`
	// Original: 原文
	Original string `json:"original"`
	// Translation 翻译文案
	Translation string `json:"translation"`
	// Stage: 状态
	Stage int `json:"stage,omitempty"`
	// Context: 协助翻译的上下文
	Context string `json:"context,omitempty"`
}

// ParaTranzFileInfo: ParaTranz 项目中的文件信息结构
type ParaTranzFileInfo struct {
	ID         int       `json:"id"`
	ProjectID  int       `json:"project"`
	Name       string    `json:"name"`
	Filename   string    `json:"filename"`
	Format     string    `json:"format"`
	Total      int       `json:"total"`
	Translated int       `json:"translated"`
	Disputed   int       `json:"disputed"`
	Checked    int       `json:"checked"`
	Reviewed   int       `json:"reviewed"`
	Hidden     int       `json:"hidden"`
	Locked     int       `json:"locked"`
	CreatedAt  time.Time `json:"createdAt"`
	UpdatedAt  time.Time `json:"updatedAt"`
	ModifiedAt time.Time `json:"modifiedAt"`
}
