[
  {
    "ID": 1007442003,
    "key": "2b9d1444011849172821e79188ba4eac59ece9dfa7d0fbf212c4dac41df17b2d",
    "original": " (x",
    "translation": " (x",
    "stage": 1,
    "context": "this.m.Name + \" (x\" + this.m.Stacks + \")\""
  },
  {
    "ID": 1007442004,
    "key": "140ed549f60c65bf2748e17a17015d20e700a687c8dfb4af5413b6bacf1df6a9",
    "original": " [Action Point(s)|Concept.ActionPoints]",
    "translation": "点[行动点数|Concept.ActionPoints]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(this.m.APBonusThisTurn, {\n    AddSign = True\n}) + \" [Action Point(s)|Concept.ActionPoints]\""
  },
  {
    "ID": 1007442005,
    "key": "2dc19fb67bbb623d3177f38748385aa664a009329a089844fb397c059adf2fbd",
    "original": " [Action Points|Concept.ActionPoints]",
    "translation": "[行动点数|Concept.ActionPoints]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(this.getAPModifier(), {\n    AddSign = True\n}) + \" [Action Points|Concept.ActionPoints]\""
  },
  {
    "ID": 1007442006,
    "key": "479c4f18435ce10c7216c207fc082192cfa2d85248bc035a7d275cfda8715d5c",
    "original": " [Fatigue|Concept.Fatigue]",
    "translation": "",
    "context": "startString + \" build up \" + getroottable().MSU.Text.colorizeMultWithText(this.m.FatBonusThisTurn, {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007442007,
    "key": "40b43d02fbe2f60620e58b2b15dca221f83522b153d737eefd495da2e112648f",
    "original": " [Initiative|Concept.Initiative]",
    "translation": "点[主动值|Concept.Initiative]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(initiativeBonus, {\n    AddSign = True\n}) + \" [Initiative|Concept.Initiative]\""
  },
  {
    "ID": 1007442008,
    "key": "d74e825940329c67a7867652578abc38c7c860398321337412413c0201f0b8e1",
    "original": " attacks",
    "translation": "攻击",
    "stage": 1,
    "context": "getroottable().Const.Items.getWeaponTypeName(this.m.RequiredWeaponType) + \" attacks\""
  },
  {
    "ID": 1007442009,
    "key": "03b27f93fcfd4c0321dd229e2a324cac68ccb8c1cbd75c16558d994691ca8cda",
    "original": " build up ",
    "translation": "积累的[疲劳|Concept.Fatigue]",
    "stage": 1,
    "context": "startString + \" build up \" + getroottable().MSU.Text.colorizeMultWithText(this.m.FatBonusThisTurn, {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007442010,
    "key": "1e3a955bd202b3069a93f99cc298452c948faa28abcee091de7099860d05b72f",
    "original": "Attacks",
    "translation": "攻击",
    "stage": 1,
    "context": "local startString = this.m.RequiredWeaponType == null ? \"Attacks\" : getroottable().Const.Items.getWeaponTypeName(this.m.RequiredWeaponType) + \" attacks\""
  },
  {
    "ID": 1007442011,
    "key": "1c651ead30197556e72de80a71d75c6b7386dddac39c352c3fdf77daec6b020d",
    "original": "In the next [turn|Concept.Turn]:",
    "translation": "下[回合|Concept.Turn]中：",
    "stage": 1
  },
  {
    "ID": 1007442012,
    "key": "5202b460858cfe91965e5cfc26bb8b9d53e6e90024a83668e87010999d595aeb",
    "original": "The [Initiative|Concept.Initiative] bonus has been carried over from the previous [turn|Concept.Turn] and will expire after using a skill or upon [waiting|Concept.Wait] or ending this [turn|Concept.Turn]",
    "translation": "从上[回合中|Concept.Turn]继承的[主动值|Concept.Initiative]会在使用技能、[等待|Concept.Wait]或是结束[回合|Concept.Turn]后失效",
    "stage": 1
  },
  {
    "ID": 1007442013,
    "key": "5e035bdbc3f8fa43548a93c8180d9e05fd81f2e2c0f8e60ef0f08b6efc9f036a",
    "original": "This character is building upon the advantage of going first in the flow of battle.",
    "translation": "该角色靠先发制人在战斗中积累起了优势。",
    "stage": 1,
    "context": "this.m.Description = \"This character is building upon the advantage of going first in the flow of battle.\""
  }
]
