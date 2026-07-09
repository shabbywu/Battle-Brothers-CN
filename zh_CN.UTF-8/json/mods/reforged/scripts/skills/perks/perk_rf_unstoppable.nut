[
  {
    "ID": 1007442024,
    "key": "2b9d1444011849172821e79188ba4eac59ece9dfa7d0fbf212c4dac41df17b2d",
    "original": " (x",
    "translation": " (x",
    "stage": 1,
    "context": "this.m.Name + \" (x\" + this.m.Stacks + \")\""
  },
  {
    "ID": 1007442025,
    "key": "2dc19fb67bbb623d3177f38748385aa664a009329a089844fb397c059adf2fbd",
    "original": " [Action Points|Concept.ActionPoints]",
    "translation": "[行动点数|Concept.ActionPoints]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(this.getAPBonus(), {\n    AddSign = True\n}) + \" [Action Points|Concept.ActionPoints]\""
  },
  {
    "ID": 1007442026,
    "key": "86c5bdb3a3864cc0232021655f2ad86efc71e865703b123c824757511cb43556",
    "original": " [Action Points|Concept.ActionPoints] remaining",
    "translation": "点[行动点数|Concept.ActionPoints]结束[回合|Concept.Turn]后失效",
    "stage": 1,
    "context": "\"Will expire upon using [Wait|Concept.Wait] or [$ $|Skill+recover_skill] or getting [$ $|Skill+stunned_effect], rooted, or [$ $|Skill+staggered_effect] or ending the [turn|Concept.Turn] with more than \" + getroottable().Math.floor(this.getContainer().getActor().getActionPointsMax() \\ 2) + \" [Action Points|Concept.ActionPoints] remaining\""
  },
  {
    "ID": 1007442027,
    "key": "40b43d02fbe2f60620e58b2b15dca221f83522b153d737eefd495da2e112648f",
    "original": " [Initiative|Concept.Initiative]",
    "translation": "[主动值|Concept.Initiative]",
    "stage": 1,
    "context": "getroottable().MSU.Text.colorizeValue(this.getInitiativeBonus(), {\n    AddSign = True\n}) + \" [Initiative|Concept.Initiative]\""
  },
  {
    "ID": 1007442028,
    "key": "1a6a0dfb59ebeb101978c9c34b9d941121f93d5f2a74889af5a914361f87dd61",
    "original": "This character is like a boulder rolling down a hill. Unstoppable!",
    "translation": "该角色像送山上滚下来的巨石。根本停不下来！",
    "stage": 1,
    "context": "this.m.Description = \"This character is like a boulder rolling down a hill. Unstoppable!\""
  },
  {
    "ID": 1007442029,
    "key": "a933578e55c7a98779fd15302ca6e9ada715e9eb8f2dcd9072b410224a7d9b00",
    "original": "Will cause you to lose all stacks of ",
    "translation": "",
    "context": "\"Will cause you to lose all stacks of \" + getroottable().Reforged.NestedTooltips.getNestedPerkName(this)"
  },
  {
    "ID": 1007442030,
    "key": "f4986a2342bbe2b394823a03271d1456a0be12d49343c991951b5994bdc76247",
    "original": "Will expire upon using [Wait|Concept.Wait] or [$ $|Skill+recover_skill] or getting [$ $|Skill+stunned_effect], rooted, or [$ $|Skill+staggered_effect] or ending the [turn|Concept.Turn] with more than ",
    "translation": "",
    "context": "\"Will expire upon using [Wait|Concept.Wait] or [$ $|Skill+recover_skill] or getting [$ $|Skill+stunned_effect], rooted, or [$ $|Skill+staggered_effect] or ending the [turn|Concept.Turn] with more than \" + getroottable().Math.floor(this.getContainer().getActor().getActionPointsMax() \\ 2) + \" [Action Points|Concept.ActionPoints] remaining\""
  }
]
