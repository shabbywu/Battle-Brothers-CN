[
  {
    "ID": 1007441648,
    "key": "de5e26a87ba1fef76758ed58137ec212c93bd9cf018672b0da598d5db4922a56",
    "original": " [Melee Defense|Concept.MeleeDefense] from equipped shield",
    "translation": "来自盾牌的[近战防御|Concept.MeleeDefense]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(~getroottable().Math.floor(shield.getMeleeDefenseBonus() * 0.75), {\n    AddSign = True\n}) + \" [Melee Defense|Concept.MeleeDefense] from equipped shield\""
  },
  {
    "ID": 1007441649,
    "key": "192431e1b2d3db6d5f702472e63a970cf9777f86f80bef277c06704d33eb1187",
    "original": " [Ranged Defense|Concept.RangeDefense] from equipped shield",
    "translation": "",
    "context": "getroottable().MSU.Text.colorizeValue(~getroottable().Math.floor(shield.getRangedDefenseBonus() * 0.75), {\n    AddSign = True\n}) + \" [Ranged Defense|Concept.RangeDefense] from equipped shield\""
  },
  {
    "ID": 1007441650,
    "key": "6c90410cfe34098c7d593867d9cef193a455341510831c2a975b92a64c5c0fdc",
    "original": "Hooked Shield",
    "translation": "盾牌被钩",
    "stage": 1,
    "context": "this.m.Name = \"Hooked Shield\""
  },
  {
    "ID": 1007441651,
    "key": "c50f21f44bb97bc095b3736041b9d7f35c3395f928d8ab9dd4003cef79fd82bb",
    "original": "Is disabled because of [",
    "translation": "被[",
    "stage": 1,
    "context": "\"Is disabled because of [\" + this.getName() + \"|Skill+\" + filename"
  },
  {
    "ID": 1007441652,
    "key": "46d703ccb0c27dfeaeb95fa8f2f4cd4dd1e474a6546a7f6a683aa19752068037",
    "original": "Reduces the [Melee Defense|Concept.MeleeDefense] and [Ranged Defense|Concept.RangeDefense] granted by shields by ",
    "translation": "盾牌提供的[近战防御|Concept.MeleeDefense]和[远程防御|Concept.RangeDefense]降低",
    "stage": 1,
    "context": "\"Reduces the [Melee Defense|Concept.MeleeDefense] and [Ranged Defense|Concept.RangeDefense] granted by shields by \" + getroottable().MSU.Text.colorNegative(\"75%\")"
  },
  {
    "ID": 1007441653,
    "key": "5afcdd0dac6d0acf0c093428421a2564886cbd8d1b87a45c3ee9fc62cad24ed0",
    "original": "Removes [$ $|Skill+riposte_effect] and disables [$ $|Perk+perk_rf_rebuke]",
    "translation": "移除[$ $|Skill+riposte_effect]并禁用[$ $|Perk+perk_rf_rebuke]",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"Removes [$ $|Skill+riposte_effect] and disables [$ $|Perk+perk_rf_rebuke]\")"
  },
  {
    "ID": 1007441654,
    "key": "42c8d7d291d36b43d3f6e06b4c745dc37ef144d8ca85f5882528c9c11f06bd09",
    "original": "This character's shield has been hooked and pulled away, making it difficult to use the shield properly.",
    "translation": "该角色的盾牌被钩住拉开，难以正常使用盾牌。",
    "stage": 1,
    "context": "this.m.Description = \"This character's shield has been hooked and pulled away, making it difficult to use the shield properly.\""
  },
  {
    "ID": 1007441655,
    "key": "1c0bc5d337a1ae5d2f6c0dcdff2dac7a019a9f6f5e8643cc1538be3acff2203d",
    "original": "Will expire upon using any skill or starting a new [turn|Concept.Turn]",
    "translation": "",
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"Will expire upon using any skill or starting a new [turn|Concept.Turn]\")"
  },
  {
    "ID": 1007441656,
    "key": "7fa579ed7f86233a34b5607a652b84d7cb514a52f532bdea2d83bae583898d7f",
    "original": "|Skill+",
    "translation": "",
    "context": "\"Is disabled because of [\" + this.getName() + \"|Skill+\" + filename"
  }
]
