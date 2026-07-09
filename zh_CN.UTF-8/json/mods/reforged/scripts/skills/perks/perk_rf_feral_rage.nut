[
  {
    "ID": 1007441872,
    "key": "2b9d1444011849172821e79188ba4eac59ece9dfa7d0fbf212c4dac41df17b2d",
    "original": " (x",
    "translation": " (x",
    "stage": 1,
    "context": "this.m.Name + \" (x\" + this.m.RageStacks + \")\""
  },
  {
    "ID": 1007441873,
    "key": "40b43d02fbe2f60620e58b2b15dca221f83522b153d737eefd495da2e112648f",
    "original": " [Initiative|Concept.Initiative]",
    "translation": "[主动值|Concept.Initiative]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(this.m.RageStacks * this.m.PerStackInitiativeModifier, {\n    AddSign = True\n}) + \" [Initiative|Concept.Initiative]\""
  },
  {
    "ID": 1007441874,
    "key": "451ee5458d9c9b11ad9b6919467ee4e332a8759cfd596edb301d92eb2cb6546c",
    "original": " [Melee Defense|Concept.MeleeDefense]",
    "translation": "[近战防御|Concept.MeleeDefense]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(this.m.RageStacks * this.m.PerStackMeleeDefenseModifier, {\n    AddSign = True\n}) + \" [Melee Defense|Concept.MeleeDefense]\""
  },
  {
    "ID": 1007441875,
    "key": "eb87384ed62571b50d040294470f3f8ddaab0f874b92fc5e777881d97ef4c286",
    "original": " [Resolve|Concept.Bravery]",
    "translation": "[决心|Concept.Bravery]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(this.m.RageStacks * this.m.PerStackBraveryModifier, {\n    AddSign = True\n}) + \" [Resolve|Concept.Bravery]\""
  },
  {
    "ID": 1007441876,
    "key": "2581b414bc09cfc30a1bdfcf52c14dfd25dc189ba88302508edd69dadb1516ec",
    "original": " gains rage!",
    "translation": "狂怒了！",
    "stage": 1,
    "context": "getroottable().Const.UI.getColorizedEntityName(actor) + \" gains rage!\""
  },
  {
    "ID": 1007441877,
    "key": "b20b68d179345ec47d46efeb1901f78d43179432236e637d0f08333b34e906a4",
    "original": " less damage received",
    "translation": "",
    "context": "getroottable().MSU.Text.colorizeMult(getroottable().Math.maxf(this.m.MaxDamageReductionMult, 1.0 - this.m.RageStacks * this.m.PerStackDamageReductionMult), {\n    InvertColor = True\n}) + \" less damage received\""
  },
  {
    "ID": 1007441878,
    "key": "4f1b3cd0d0e7083c622f378814e26e0d02436419dd6c4874808ee71925eefccc",
    "original": " more melee damage",
    "translation": "",
    "context": "getroottable().MSU.Text.colorizeMult(1.0 + this.m.RageStacks * this.m.PerStackDamageMult) + \" more melee damage\""
  },
  {
    "ID": 1007441879,
    "key": "ef1f0b1725fbad8cf409256abce86b34063e9544cbc34b055a12f9a839579617",
    "original": "The smell of blood and death sends you into an uncontrollable rage. Every taste of blood your weapon takes, every kill you make, and every hit you receive emboldens you and increases your lethality. Once in a rage, you must continuously feed it to keep it going.",
    "translation": "鲜血和死亡的味道让你陷入了无法控制的愤怒之中。你的武器每品尝一口鲜血，每杀死一个人，每被打中一次，都会让你更加胆大妄为，并增加你的杀伤力。一旦陷入愤怒，你就必须不断喂养它，好让它持续下去。",
    "stage": 1,
    "context": "this.m.Description = \"The smell of blood and death sends you into an uncontrollable rage. Every taste of blood your weapon takes, every kill you make, and every hit you receive emboldens you and increases your lethality. Once in a rage, you must continuously feed it to keep it going.\""
  }
]
