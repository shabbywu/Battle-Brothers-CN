[
  {
    "ID": 1007441335,
    "key": "e85bcaf24f59768247d6f10cbcd2c7e7622609a3735594fa734a498d1215b6ed",
    "original": " [Action Points|Concept.ActionPoints] and builds ",
    "translation": "点[行动点数|Concept.ActionPoints]，积累的[疲劳值|Concept.Fatigue]",
    "stage": 1,
    "context": "\"Costs \" + this.m.ActionPointCost == 0 ? \"+0\" : getroottable().MSU.Text.colorizeValue(this.m.ActionPointCost, {\n    AddSign = True\n    InvertColor = True\n}) + \" [Action Points|Concept.ActionPoints] and builds \""
  },
  {
    "ID": 1007441336,
    "key": "e522b5e836e40a3a5d774d1868d0062361ff6de3bba84e505222b8f5ef830f0c",
    "original": " [Fatigue|Concept.Fatigue] compared to the movement costs of the starting tile",
    "translation": "点[疲劳|Concept.Fatigue]，相较于起始地格的移动消耗计算",
    "context": "ret + this.m.FatigueCost == 0 ? \"+0\" : getroottable().MSU.Text.colorizeValue(this.m.FatigueCost, {\n    AddSign = True\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue] compared to the movement costs of the starting tile\""
  },
  {
    "ID": 1007441337,
    "key": "cbf7f30004f3667cb093b3c7b55169a90e3f0044f6ea3ff93d3f75427a72e377",
    "original": " a ",
    "translation": "的",
    "stage": 1,
    "context": "\" a \" + getroottable().Const.Damage.getDamageTypeName(this.m.RequiredDamageType).tolower() + \" attack\""
  },
  {
    "ID": 1007441338,
    "key": "2a127528b29f656ca2087ef85fa370170b8bd68d6ab8c8f8adab82ce6aae2548",
    "original": " an attack",
    "translation": "攻击",
    "stage": 1,
    "context": "local damageTypeString = this.m.RequiredDamageType == null ? \" an attack\" : \" a \" + getroottable().Const.Damage.getDamageTypeName(this.m.RequiredDamageType).tolower() + \" attack\""
  },
  {
    "ID": 1007441339,
    "key": "1f2a3ee6115a8f828f3dcb99bfb4c4406b2f61267267c54a7cff4fea9fa17ac1",
    "original": " attack",
    "translation": "攻击",
    "stage": 1,
    "context": "\" a \" + getroottable().Const.Damage.getDamageTypeName(this.m.RequiredDamageType).tolower() + \" attack\""
  },
  {
    "ID": 1007441340,
    "key": "0b0aa1fd1a8f4b6c66945acddbb6dc17398957d2a7fc78edb0ff29b67b67e07b",
    "original": " from a %s%s",
    "translation": "来自%s%s",
    "context": "this.format(\" from a %s%s\", this.m.RequireOffhandFree ? \"double-gripped or two-handed\" : \"\", \" \" + getroottable().Const.Items.getWeaponTypeName(this.m.RequiredWeaponType).tolower())"
  },
  {
    "ID": 1007441341,
    "key": "4022dbc8aaaef12d583871b23d6ee019a6a87718e8f912f9f8250a3936fe0f1b",
    "original": "Can only be used immediately after a successful attack",
    "translation": "只能在攻击成功后立即使用",
    "context": "getroottable().MSU.Text.colorNegative(\"Can only be used immediately after a successful attack\")"
  },
  {
    "ID": 1007441342,
    "key": "0d6b08da79d76df6d1f22742806fbf3930503dbb775fe61be510de149a880319",
    "original": "Can only be used on an empty tile adjacent to an enemy",
    "translation": "只能对接邻敌人的空地格使用",
    "context": "getroottable().MSU.Text.colorNegative(\"Can only be used on an empty tile adjacent to an enemy\")"
  },
  {
    "ID": 1007441343,
    "key": "28c8f20c752d46d15906853fedc4a08e13c847f78ca5f911cf9129ab078bee27",
    "original": "Cannot be used while rooted",
    "translation": "被定身时无法使用",
    "context": "getroottable().MSU.Text.colorNegative(\"Cannot be used while rooted\")"
  },
  {
    "ID": 1007441344,
    "key": "461b7ba9a79716e5c6c2a4232327b741fc363ab140c9f64a5c66e349a4ec268e",
    "original": "Costs ",
    "translation": "比起常规移动消耗，消耗",
    "stage": 1,
    "context": "\"Costs \" + this.m.ActionPointCost == 0 ? \"+0\" : getroottable().MSU.Text.colorizeValue(this.m.ActionPointCost, {\n    AddSign = True\n    InvertColor = True\n}) + \" [Action Points|Concept.ActionPoints] and builds \""
  },
  {
    "ID": 1007441345,
    "key": "f25092ea21f25a34b0cda86645f046599b8d6d92141257e652de8ef308cbf354",
    "original": "Move around your opponents combining skillful footwork with the flow of your weapon's swings.",
    "translation": "利用精湛步法和剑刃走势，围绕对手进行移动。",
    "stage": 1,
    "context": "this.m.Description = \"Move around your opponents combining skillful footwork with the flow of your weapon's swings.\""
  },
  {
    "ID": 1007441346,
    "key": "998c0a0a011588a0f6dfb346df0425f9ccd77b5f08c29cbb4d1d3dac976957e8",
    "original": "Move to an adjacent tile ignoring [Zone of Control|Concept.ZoneOfControl]",
    "translation": "无视[控制区域|Concept.ZoneOfControl]",
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"Move to an adjacent tile ignoring [Zone of Control|Concept.ZoneOfControl]\")"
  },
  {
    "ID": 1007441347,
    "key": "91214fd5cc27ff8b073c45956ecdb64d928e34607b80e9df97fe9eee30367244",
    "original": "Passing Step",
    "translation": "跨步",
    "stage": 1,
    "context": "this.m.Name = \"Passing Step\""
  },
  {
    "ID": 1007441348,
    "key": "563e5454e53096c81b3877ffdc4be47461624c9439de4c59b85e97418bb29b3f",
    "original": "Requires%s%s",
    "translation": "需要%s%s",
    "context": "this.format(\"Requires%s%s\", damageTypeString, weaponTypeString)"
  },
  {
    "ID": 1007441349,
    "key": "dfd371f6b8675fe0e23bfc1ac2890d27eb59da0dea3a3f5d2ea190da556c7a11",
    "original": "double-gripped or two-handed",
    "translation": "双手持握或双手",
    "context": "this.format(\" from a %s%s\", this.m.RequireOffhandFree ? \"double-gripped or two-handed\" : \"\", \" \" + getroottable().Const.Items.getWeaponTypeName(this.m.RequiredWeaponType).tolower())"
  }
]
