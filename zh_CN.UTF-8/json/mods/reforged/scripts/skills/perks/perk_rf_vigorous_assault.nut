[
  {
    "ID": 1007442041,
    "key": "140ed549f60c65bf2748e17a17015d20e700a687c8dfb4af5413b6bacf1df6a9",
    "original": " [Action Point(s)|Concept.ActionPoints]",
    "translation": "",
    "context": "\"The next attack costs \" + getroottable().MSU.Text.colorizeValue(actionPointCostModifier, {\n    AddSign = True\n    InvertColor = True\n}) + \" [Action Point(s)|Concept.ActionPoints]\""
  },
  {
    "ID": 1007442042,
    "key": "479c4f18435ce10c7216c207fc082192cfa2d85248bc035a7d275cfda8715d5c",
    "original": " [Fatigue|Concept.Fatigue]",
    "translation": "",
    "context": "\"The next attack builds up \" + getroottable().MSU.Text.colorizeMultWithText(this.getFatigueCostMultMult(), {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007442043,
    "key": "538d98088f4e99dd92f9b2ae01987ecd79c20831b1a6e511add598f6a6f01c83",
    "original": "The momentum of this character's movement lends to an easier and faster attack.",
    "translation": "该角色运动的冲劲使得下次攻击动作更快，更轻松。",
    "stage": 1,
    "context": "this.m.Description = \"The momentum of this character's movement lends to an easier and faster attack.\""
  },
  {
    "ID": 1007442044,
    "key": "4d07529b3de06dee56a82f88d9ddbe412d6051fc1fa8c6ff491c2b89f3b6a3c1",
    "original": "The next attack builds up ",
    "translation": "下次攻击积累的[疲劳|Concept.Fatigue]",
    "stage": 1,
    "context": "\"The next attack builds up \" + getroottable().MSU.Text.colorizeMultWithText(this.getFatigueCostMultMult(), {\n    InvertColor = True\n}) + \" [Fatigue|Concept.Fatigue]\""
  },
  {
    "ID": 1007442045,
    "key": "30fc5c8c267062af3e14e1fa6856a3d5c413778a1dd929961cd279fe193f4b82",
    "original": "The next attack costs ",
    "translation": "下次攻击消耗的[行动点数|Concept.ActionPoints]",
    "stage": 1,
    "context": "\"The next attack costs \" + getroottable().MSU.Text.colorizeValue(actionPointCostModifier, {\n    AddSign = True\n    InvertColor = True\n}) + \" [Action Point(s)|Concept.ActionPoints]\""
  },
  {
    "ID": 1007442046,
    "key": "8cb59d106a20c64b19387c16d8561a2df470ac3aa502b6179ef018b4528f84e0",
    "original": "Will expire upon [waiting|Concept.Wait] or ending the [turn|Concept.Turn], using any skill, or swapping any item except to/from a throwing weapon",
    "translation": "会在[等待、|Concept.Wait]结束[回合、|Concept.Turn]使用技能或切换物品后失效，切换掉/成投掷武器除外",
    "stage": 1,
    "context": "getroottable().Reforged.Mod.Tooltips.parseString(\"Will expire upon [waiting|Concept.Wait] or ending the [turn|Concept.Turn], using any skill, or swapping any item except to/from a throwing weapon\")"
  }
]
