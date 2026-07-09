[
  {
    "ID": 1007421137,
    "key": "224b5f4f9c810b992072abe366cbcfdf553c26dda7f088329ffb6c18f8fed222",
    "original": " (%s, %s)",
    "translation": "",
    "context": "this.format(\" (%s, %s)\", getroottable().MSU.Text.colorPositive(skill.m.ActionPointCost), getroottable().MSU.Text.colorNegative(skill.m.FatigueCost))"
  },
  {
    "ID": 1007421138,
    "key": "fa7f25ef4da44b8c0df1b5d9f60abca9d53447898ab19c06058c8d63dd9a273b",
    "original": "- [%s|%s+%s,itemId:%s,entityId:default]%s\n",
    "translation": "",
    "context": "this.format(\"- [%s|%s+%s,itemId:%s,entityId:default]%s\n\", skill.getName(), identifier, getroottable().IO.scriptFilenameByHash(skill.ClassNameHash), itemID, suffix)"
  },
  {
    "ID": 1007421139,
    "key": "fb2c6bfad9f855cb94178613b5247c689669b16998d68eb6276c43b4b21ab312",
    "original": "Can be used to craft items",
    "translation": "可用于制作物品",
    "stage": 1,
    "context": "text = \"Can be used to craft items\""
  },
  {
    "ID": 1007421140,
    "key": "c83bec1f02849a09edc642f2d4226774435f1233abc8b85f7d559ba9d022f570",
    "original": "Fatigue",
    "translation": "",
    "context": "getroottable().MSU.Text.colorNegative(\"Fatigue\")"
  },
  {
    "ID": 1007421141,
    "key": "0f850a258a52a1558ba82452dd19726837de77bb5171ea42bd1e7b355d550e45",
    "original": "Perk",
    "translation": "",
    "context": "local identifier = skill.isType(getroottable().Const.SkillType.Perk) && !skill.isType(getroottable().Const.SkillType.StatusEffect) ? \"Perk\" : \"Skill\""
  },
  {
    "ID": 1007421142,
    "key": "6df1bb18a59ab97df82e307b93fe4f3bbda34d531bcbb79ec573dda23ba64918",
    "original": "Skill",
    "translation": "",
    "context": "local identifier = skill.isType(getroottable().Const.SkillType.Perk) && !skill.isType(getroottable().Const.SkillType.StatusEffect) ? \"Perk\" : \"Skill\""
  },
  {
    "ID": 1007421143,
    "key": "864e4d4b004cd5cd3581347f21e35d9b20f252b979b68fafab46822ad9d60886",
    "original": "Skills: (%s, %s)\n%s",
    "translation": "",
    "context": "this.format(\"Skills: (%s, %s)\n%s\", getroottable().MSU.Text.colorPositive(\"AP\"), getroottable().MSU.Text.colorNegative(\"Fatigue\"), skillsString)"
  },
  {
    "ID": 1007421144,
    "key": "a3b50c476732c7409d297c3d7d0e23569fee5e08318553ae76041ab5fe60582e",
    "original": "State",
    "translation": "",
    "context": "this.isItemType(getroottable().Const.Items.ItemType.Crafting) && \"State\" && !getroottable().MSU.isNull(getroottable().World.State)"
  },
  {
    "ID": 1007421145,
    "key": "ab845e2e0d034502a2765ff033a17fed792899969900d9e6b09afede690ae8a8",
    "original": "[%s|Item+%s]",
    "translation": "",
    "context": "this.format(\"[%s|Item+%s]\", _b.getName(), _b.m.PreviewCraftable.ClassName)"
  },
  {
    "ID": 1007421146,
    "key": "b80e0af617d0f8ff54ab3142c34c76e83eafe75c6b2cbe87a44c56bb8505dd01",
    "original": "hint",
    "translation": "",
    "context": "entry.id == 50 && entry.type == \"hint\""
  },
  {
    "ID": 1007421147,
    "key": "982d9e3eb996f559e633f4d194def3761d909f5a3b647d1a851fead67c32c9d1",
    "original": "text",
    "translation": "",
    "context": "type = \"text\""
  }
]
