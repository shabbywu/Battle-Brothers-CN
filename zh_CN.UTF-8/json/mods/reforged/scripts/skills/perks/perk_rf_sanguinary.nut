[
  {
    "ID": 1007441952,
    "key": "3f666d1c99567e8222e18c40c8d7c6f6807e185f723d33262293ff6d7f9dcaa1",
    "original": " from a ",
    "translation": "",
    "context": "\" from a \" + getroottable().Const.Items.getWeaponTypeName(this.m.RequiredWeaponType)"
  },
  {
    "ID": 1007441953,
    "key": "abb57cf03c73913fc7ff6e3eaaab723ce0286a68a4aaa1b35319d2d467f120dd",
    "original": "Gruesome kills revitalize you!",
    "translation": "残忍杀戮让你重获新生！",
    "stage": 1,
    "context": "this.m.Description = \"Gruesome kills revitalize you!\""
  },
  {
    "ID": 1007441954,
    "key": "ee62b368a91a78d9b5c924fcb768b73fdcdcd185c0c19d51ab0a68a1380e9d47",
    "original": "The next %i%s attack(s) during your [turn|Concept.Turn]%s will recover %s [Action Points|Concept.ActionPoints] if they cause a fatality",
    "translation": "你的[回合|Concept.Turn]期间，接下来的%i%s次攻击%s若造成[残杀|Concept.Fatality]，将恢复%s点[行动点数|Concept.ActionPoints]",
    "context": "this.format(\"The next %i%s attack(s) during your [turn|Concept.Turn]%s will recover %s [Action Points|Concept.ActionPoints] if they cause a fatality\", this.m.UsesRemaining, attackString, weaponString, getroottable().MSU.Text.colorPositive(this.m.RestoredActionPoints))"
  }
]
