[
  {
    "ID": 1007437110,
    "key": "451ee5458d9c9b11ad9b6919467ee4e332a8759cfd596edb301d92eb2cb6546c",
    "original": " [Melee Defense|Concept.MeleeDefense]",
    "translation": "[近战防御|Concept.MeleeDefense]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(this.getMeleeDefenseModifier(), {\n    AddSign = True\n}) + \" [Melee Defense|Concept.MeleeDefense]\""
  },
  {
    "ID": 1007437111,
    "key": "c392380421ddfd4110daca4104666558ff54acd3b2b8afd31c2a52d051696590",
    "original": " [Ranged Defense|Concept.RangeDefense]",
    "translation": "[远程防御|Concept.RangeDefense]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(this.getRangedDefenseModifier(), {\n    AddSign = True\n}) + \" [Ranged Defense|Concept.RangeDefense]\""
  },
  {
    "ID": 1007437112,
    "key": "e34f0828b2d0c2fcfaabaf75b329fbf45c6fed37edf96b91f2c69964739cca0f",
    "original": " of the [$ $|Skill+taunt] [Resolve|Concept.Bravery]",
    "translation": "",
    "context": "\"[Melee|Concept.MeleeDefense] and [Ranged|Concept.RangeDefense] defenses are reduced by \" + getroottable().MSU.Text.colorizePct(resolveFraction) + \" of the [$ $|Skill+taunt] [Resolve|Concept.Bravery]\""
  },
  {
    "ID": 1007437113,
    "key": "30cd95fed908860a48c05839a9e90de5c51a26e0f9ae59fb80f2761f4f5300e3",
    "original": "This character has been taunted by ",
    "translation": "",
    "context": "\"This character has been taunted by \" + getroottable().MSU.Text.colorNegative(this.getTauntSource().getName())"
  },
  {
    "ID": 1007437114,
    "key": "674bbfc1ef8736c5be45e22de6db7394a3c567d76fd12d91f187886886ae0d4e",
    "original": "This character is taunted by another character and is much more likely to engage and attack them.",
    "translation": "该角色正受其他角色嘲讽，更可能接近并攻击那些角色。",
    "stage": 1,
    "context": "this.m.Description = \"This character is taunted by another character and is much more likely to engage and attack them.\""
  },
  {
    "ID": 1007437115,
    "key": "090b64607d53adf130eb5f26a6aab23c2bb47a48e33b6b4eb3de9a0e631c012c",
    "original": "[Melee|Concept.MeleeDefense] and [Ranged|Concept.RangeDefense] defenses are reduced by ",
    "translation": "[近战|Concept.MeleeDefense]和[远程|Concept.RangeDefense]防御降低，降低值为[嘲讽者|Skill+taunt][决心|Concept.Bravery]的",
    "stage": 1,
    "context": "\"[Melee|Concept.MeleeDefense] and [Ranged|Concept.RangeDefense] defenses are reduced by \" + getroottable().MSU.Text.colorizePct(resolveFraction) + \" of the [$ $|Skill+taunt] [Resolve|Concept.Bravery]\""
  },
  {
    "ID": 1007437116,
    "key": "982d9e3eb996f559e633f4d194def3761d909f5a3b647d1a851fead67c32c9d1",
    "original": "text",
    "translation": "",
    "context": "type = \"text\""
  }
]
