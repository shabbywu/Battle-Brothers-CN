[
  {
    "ID": 1007441709,
    "key": "40b43d02fbe2f60620e58b2b15dca221f83522b153d737eefd495da2e112648f",
    "original": " [Initiative|Concept.Initiative]",
    "translation": "[主动值|Concept.Initiative]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(skillBonus, {\n    AddSign = True\n}) + \" [Initiative|Concept.Initiative]\""
  },
  {
    "ID": 1007441710,
    "key": "451ee5458d9c9b11ad9b6919467ee4e332a8759cfd596edb301d92eb2cb6546c",
    "original": " [Melee Defense|Concept.MeleeDefense]",
    "translation": "[近战防御|Concept.MeleeDefense]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(skillBonus, {\n    AddSign = True\n}) + \" [Melee Defense|Concept.MeleeDefense]\""
  },
  {
    "ID": 1007441711,
    "key": "ff823c3ab8a078a6e983e474c07f0f1b315d450c88d570dd8b2538d783f72de0",
    "original": " [Melee Skill|Concept.MeleeSkill]",
    "translation": "[近战技能|Concept.MeleeSkill]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(skillBonus, {\n    AddSign = True\n}) + \" [Melee Skill|Concept.MeleeSkill]\""
  },
  {
    "ID": 1007441712,
    "key": "152b1870e5053e298465c3ed65044096fe598c360d9129a4077eab55f5123341",
    "original": " damage ignores armor",
    "translation": "伤害穿甲率",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(skillBonus, {\n    AddSign = True\n    AddPercent = True\n}) + \" damage ignores armor\""
  },
  {
    "ID": 1007441713,
    "key": "8eb38ea2eec8a641ce6b7ef90023eb4e62a0481ea85a8a23591601b5250fa5d1",
    "original": "Free perks learned:\n",
    "translation": "免费习得特技：\n",
    "stage": 1,
    "context": "\"Free perks learned:\n\" + freePerks"
  },
  {
    "ID": 1007441714,
    "key": "64923822756da12da47f641d4795963146b5414fae75df3a317e7a434db63678",
    "original": "Requires a Sword to be equipped",
    "translation": "",
    "context": "getroottable().MSU.Text.colorRed(\"Requires a Sword to be equipped\")"
  },
  {
    "ID": 1007441715,
    "key": "1219479094348307ead40d0a1a785223f7aa81d1d84e0d67506658f04b91971d",
    "original": "Swordmaster's Training",
    "translation": "剑师训练",
    "stage": 1,
    "context": "this.m.Name = \"Swordmaster's Training\""
  },
  {
    "ID": 1007441716,
    "key": "4c708940fba41316a9ee945bf0d8691941ee2a03f0049024fed6e564fbbea5a3",
    "original": "This character is being trained by a highly accomplished swordmaster, and gains increased combat effectiveness when wielding a sword. This effect becomes stronger with each level.",
    "translation": "该角色正受一名大成的剑术大师训练，持剑的战斗效率得到提升。该效果会随着等级提升变强。",
    "stage": 1,
    "context": "this.m.Description = \"This character is being trained by a highly accomplished swordmaster, and gains increased combat effectiveness when wielding a sword. This effect becomes stronger with each level.\""
  },
  {
    "ID": 1007441717,
    "key": "56023f1d4efa6b32de95ffef888623ac993bceaeb09eb8a250949a9c2e153169",
    "original": "Upon gaining a [level|Concept.Level], has a %s chance to learn a random [perk|Concept.Perk] from the Sword perk group. Will refund the [perk|Concept.Perk] points spent on already picked [perks|Concept.Perk].",
    "translation": "",
    "context": "this.format(\"Upon gaining a [level|Concept.Level], has a %s chance to learn a random [perk|Concept.Perk] from the Sword perk group. Will refund the [perk|Concept.Perk] points spent on already picked [perks|Concept.Perk].\", getroottable().MSU.Text.colorizeValue(this.getFreePerkChance(), {\n    AddPercent = True\n}))"
  }
]
