[
  {
    "ID": 1007441261,
    "key": "e85bcaf24f59768247d6f10cbcd2c7e7622609a3735594fa734a498d1215b6ed",
    "original": " [Action Points|Concept.ActionPoints] and builds ",
    "translation": "点[行动点数|Concept.ActionPoints]，比起常规移动消耗，积累的[疲劳值|Concept.Fatigue]",
    "stage": 1,
    "context": "\"Costs \" + this.m.ActionPointCost == 0 ? \"+0\" : getroottable().MSU.Text.colorizeValue(this.m.ActionPointCost, {\n    AddSign = True\n    InvertColor = True\n}) + \" [Action Points|Concept.ActionPoints] and builds \""
  },
  {
    "ID": 1007441262,
    "key": "e522b5e836e40a3a5d774d1868d0062361ff6de3bba84e505222b8f5ef830f0c",
    "original": " [Fatigue|Concept.Fatigue] compared to the movement costs of the starting tile",
    "translation": "点[疲劳|Concept.Fatigue]，相较于起始地格的移动消耗计算",
    "context": "ret + this.m.FatigueCost == 0 ? \"+0\" : getroottable().MSU.Text.colorizeValue(this.m.FatigueCost, {\n    AddSign = True\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue] compared to the movement costs of the starting tile\""
  },
  {
    "ID": 1007441263,
    "key": "05eb24c0c7cebd9fab5d8e143bd9f1cceaf944550953441ec3e34fc51e057539",
    "original": "Can only be used immediately after killing an adjacent target",
    "translation": "只能在击杀接邻敌人后立即使用",
    "context": "getroottable().MSU.Text.colorNegative(\"Can only be used immediately after killing an adjacent target\")"
  },
  {
    "ID": 1007441264,
    "key": "28c8f20c752d46d15906853fedc4a08e13c847f78ca5f911cf9129ab078bee27",
    "original": "Cannot be used while rooted",
    "translation": "被定身时无法使用",
    "context": "getroottable().MSU.Text.colorNegative(\"Cannot be used while rooted\")"
  },
  {
    "ID": 1007441265,
    "key": "461b7ba9a79716e5c6c2a4232327b741fc363ab140c9f64a5c66e349a4ec268e",
    "original": "Costs ",
    "translation": "消耗",
    "stage": 1,
    "context": "\"Costs \" + this.m.ActionPointCost == 0 ? \"+0\" : getroottable().MSU.Text.colorizeValue(this.m.ActionPointCost, {\n    AddSign = True\n    InvertColor = True\n}) + \" [Action Points|Concept.ActionPoints] and builds \""
  },
  {
    "ID": 1007441266,
    "key": "11f467683ffc2fe9877b09e5d7c14577f153e1a8146f39ee784d2302da8fef7e",
    "original": "Gain Ground",
    "translation": "夺取立足点",
    "stage": 1,
    "context": "this.m.Name = \"Gain Ground\""
  },
  {
    "ID": 1007441267,
    "key": "88365ae37ea9afadb090a66e3748b4dca45193c1cd85abc1033b26bf38b452d9",
    "original": "Keep going! Immediately after killing an adjacent target you may move into their tile ignoring [Zone of Control|Concept.ZoneOfControl].",
    "translation": "继续前进！无视[控制区域|Concept.ZoneOfControl]，杀死接邻敌人后立即移动到他占据的地格当中。",
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"Keep going! Immediately after killing an adjacent target you may move into their tile ignoring [Zone of Control|Concept.ZoneOfControl].\")"
  }
]
