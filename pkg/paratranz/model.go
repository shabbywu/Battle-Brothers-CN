package paratranz

type Entity struct {
	// Key: 描述当前翻译信息的唯一键
	Key string `json:"key"`
	// Original: 原文
	Original string `json:"original"`
	// Translation 翻译文案
	Translation string `json:"translation"`
	// Context: 协助翻译的上下文
	Context string `json:"context"`
}

// ParaTranzFileInfo: ParaTranz 项目中的文件信息结构
type ParaTranzFileInfo struct {
	ID        int    `json:"id"`
	ProjectID int    `json:"project"`
	Name      string `json:"name"`
	Filename  string `json:"filename"`
	Format    string `json:"format"`
}
