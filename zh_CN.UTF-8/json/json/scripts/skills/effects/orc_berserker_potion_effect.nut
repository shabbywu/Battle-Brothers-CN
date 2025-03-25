[
    {
        "ID": 293421644,
        "key": "This character gains two stacks of Rage each time they take hitpoint damage, and loses one stack at the end of each turn.",
        "original": "This character gains two stacks of Rage each time they take hitpoint damage, and loses one stack at the end of each turn.",
        "translation": "该角色每次受到生命值伤害时获得两层狂暴，每回合结束时失去一层。",
        "stage": 1,
        "context": "text = 'This character gains two stacks of Rage each time they take hitpoint damage, and loses one stack at the end of each turn.'"
    },
    {
        "ID": 293421645,
        "key": "[/color] Initiative",
        "original": "[/color] Initiative",
        "translation": "[/color]主动值",
        "stage": 1,
        "context": "text = '[color=' + this.Const.UI.Color.PositiveValue + ']+' + 1 * this.m.RageStacks + '[/color] Initiative'"
    },
    {
        "ID": 293421646,
        "key": " gains rage!",
        "original": " gains rage!",
        "translation": "狂怒了！",
        "stage": 1,
        "context": "this.Tactical.EventLog.log(this.Const.UI.getColorizedEntityName(actor) + ' gains rage!')"
    },
    {
        "ID": 293421647,
        "key": "Further mutations will cause a longer period of sickness",
        "original": "Further mutations will cause a longer period of sickness",
        "translation": "下次喝下突变药剂会导致更长时间的疾病",
        "stage": 1,
        "context": "text = 'Further mutations will cause a longer period of sickness'"
    },
    {
        "ID": 293421648,
        "key": "[/color] damage dealt",
        "original": "[/color] damage dealt",
        "translation": "[/color] 伤害输出",
        "stage": 1,
        "context": "text = '[color=' + this.Const.UI.Color.PositiveValue + ']+' + 1 * this.m.RageStacks + '[/color] damage dealt'"
    },
    {
        "ID": 293421649,
        "key": "[/color] Resolve",
        "original": "[/color] Resolve",
        "translation": "[/color] 决心",
        "stage": 1,
        "context": "text = '[color=' + this.Const.UI.Color.PositiveValue + ']+' + 1 * this.m.RageStacks + '[/color] Resolve'"
    },
    {
        "ID": 293421650,
        "key": "%[/color] damage reduction",
        "original": "%[/color] damage reduction",
        "translation": "%[/color] 伤害减免",
        "stage": 1,
        "context": "text = '[color=' + this.Const.UI.Color.PositiveValue + ']+' + 100 - this.Math.maxf(0.30000001192092896, 1.0 - 0.019999999552965164 * this.m.RageStacks) * 100 + '%[/color] damage reduction'"
    },
    {
        "ID": 293421651,
        "key": "This character's adrenaline and hormonal glands have mutated, causing a constant heightened emotional state. They can mostly keep this under control in camp, but in high-stress situations the effect is much stronger and fills them with an intense, unconso",
        "original": "This character's adrenaline and hormonal glands have mutated, causing a constant heightened emotional state. They can mostly keep this under control in camp, but in high-stress situations the effect is much stronger and fills them with an intense, unconsolable rage.",
        "translation": "此角色的肾上腺素和激素腺发生了变异，导致其情绪一直处于高度敏感状态。在营地里，他们基本上可以控制这种情况，但在高压情况下，这种效应则更为强烈，充满了强烈的、无法平息的愤怒。",
        "stage": 1,
        "context": "return \"This character's adrenaline and hormonal glands have mutated, causing a constant heightened emotional state. They can mostly keep this under control in camp, but in high-stress situations the effect is much stronger and fills them with an intense, unconsolable rage.\";"
    },
    {
        "ID": 293421652,
        "key": "Berserker Rage",
        "original": "Berserker Rage",
        "translation": "狂战士之怒",
        "stage": 1,
        "context": "this.m.Name = 'Berserker Rage'"
    },
    {
        "key": "This character's adrenaline and hormonal glands have mutated, causing a constant heightened emotional state. They can mostly keep this under control in camp, but in high-stress situations the effect is much stronger and fills them with an intense, unconsolable rage.",
        "original": "This character's adrenaline and hormonal glands have mutated, causing a constant heightened emotional state. They can mostly keep this under control in camp, but in high-stress situations the effect is much stronger and fills them with an intense, unconsolable rage.",
        "translation": "",
        "context": ""
    },
    {
        "key": "This character's adrenaline and hormonal glands have mutated, causing a constant heightened emotional state. They can mostly keep this under control in camp, but in high-stress situations the effect is much stronger and fills them with an intense, unconsolable rage.",
        "original": "This character's adrenaline and hormonal glands have mutated, causing a constant heightened emotional state. They can mostly keep this under control in camp, but in high-stress situations the effect is much stronger and fills them with an intense, unconsolable rage.",
        "translation": "",
        "context": "getDescription = function getDescription(){\n    return \"This character's adrenaline and hormonal glands have mutated, causing a constant heightened emotional state. They can mostly keep this under control in camp, but in high-stress situations the effect is much stronger and fills them with an intense, unconsolable rage.\";;\n    return;\n}"
    }
]