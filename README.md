Battle Brothers(战场兄弟)中文翻译项目
==========================================

<a href="http://battle-brothers-cn.shabbywu.cn/engage/Battle-Brothers-CN/zh_Hans/">
<img src="http://battle-brothers-cn.shabbywu.cn/widgets/Battle-Brothers-CN/zh_Hans/open-graph.png" alt="翻译状态" />
</a>

重要说明
==========================================
> Q: 支不支持[传奇 Mod](https://github.com/Battle-Brothers-Legends/Legends-Bugs/releases)？   
> A: 这是游戏原版的汉化, 由于传奇 Mod 体量太大, 目前并未包含传奇 Mod 的文本。   

---
由于目前基本上是我个人在维护这个汉化，所以短期内并无计划开新坑。如果你希望有朝一日能用到全文本汉化的传奇 Mod, 可以通过点击右上角的 star 按钮或者直接参与原版文本的校对工作来减轻我的负担，这样说不定就有精力开新坑了😂


维护路线图
==========================================
- [x] 全文本基本翻译
- [x] 开发配套的汉化工具(bb-translator) 
- [ ] 常用 Mod 适配
  - [ ] 显星(已知不兼容)
  - ...


使用说明
==========================================
1. 从 Release 中下载附件 **data_cn.zip** 与 **data_font.zip**
2. 将附件放置到游戏目录 data 下, 与游戏其他的 data_xxx.dat 文件放在同级目录，无需解压
3. 翻译不易, 走过路过右上角点个 star 可以吗？谢谢

---
⭐️ 汉化工具 - bb-translator(测试中)
==========================================
bb-translator 是 Battle Brothers(战场兄弟)中文翻译器, 会自动使用本项目的 po 文件翻译 data 目录下的游戏脚本。

主要特性:
- 使用 physfs 读取文件, 实现了与游戏同样的加载方式和顺序
- 同时支持翻译 .nut/.cnut, 理论上支持翻译 Mod(只要 po 中有对应的汉化文本)
- 可汉化历史版本的游戏脚本(只要 po 中有对应的汉化文本)

## 使用说明
1. 从 [Release](https://github.com/BattleBrothersGameCN/Release/releases) 下载最新版本的 bb-translator
2. 解压到游戏目录
3. 联网环境下执行

> Q: 为什么要联网?   
> A: 为了保证汉化文本最新, 每次执行都需会更新 [Battle-Brothers-CN](https://github.com/shabbywu/Battle-Brothers-CN)


