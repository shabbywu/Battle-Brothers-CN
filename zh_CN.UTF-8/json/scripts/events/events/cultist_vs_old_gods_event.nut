[
  {
    "ID": 293413458,
    "key": "[img]gfx/ui/events/event_06.png[/img] You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the m",
    "original": "[img]gfx/ui/events/event_06.png[/img] You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an anxious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass, nobody daring to get near him.",
    "translation": "[img]gfx/ui/events/event_06.png[/img] 你退到一旁，让队员们用男人的方式解决分歧。 古老神明的追随者们挥舞着拳头为自己辩护，一次又一次地打击着邪教徒。 但那个头上有疤的人只以咧嘴笑回应。 他的眼睛肿了起来，眼皮皱成紫色，遮住了他的视线。 然而，他仍然咧嘴一笑，从他流血的嘴里流出了恐怖的笑声。%SPEECH_ON%如此黑暗！达库尔一定很高兴！%SPEECH_OFF%带着焦虑的表情，%oldgods% 离开 %cultist% 并向后退却。 他揉着血淋淋的指关节，意识到自己可能在这场看似一边倒的混战中弄断了几个。 但最刺伤他的是那个邪教徒的话。%SPEECH_ON%人不是受到黑暗的诱惑，而是受到黑暗的召唤！ 失去了没有它！它的归来让人欣喜！%SPEECH_OFF%几乎不敢回头看，%oldgods% 匆忙离开，而邪教徒还在他们身后，在草地上大声发笑，没人敢靠近他。",
    "stage": 1,
    "context": "Text = \"[img]gfx/ui/events/event_06.png[/img] You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an anxious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass, nobody daring to get near him.\""
  },
  {
    "ID": 293413459,
    "key": "]+2[/color] Resolve",
    "original": "]+2[/color] Resolve",
    "translation": "]+2[/color] 决心",
    "stage": 1,
    "context": "text = _event.m.Cultist.getName() + ' gains [color=' + this.Const.UI.Color.PositiveEventValue + ']+2[/color] Resolve'"
  },
  {
    "ID": 293413460,
    "key": " loses [color=",
    "original": " loses [color=",
    "translation": "失去 [color=",
    "stage": 1,
    "context": "text = _event.m.OldGods.getName() + ' loses [color=' + this.Const.UI.Color.NegativeEventValue + ']-1[/color] Resolve'"
  },
  {
    "ID": 293413461,
    "key": "Stop this nonsense.",
    "original": "Stop this nonsense.",
    "translation": "停止这种无意义的行为。",
    "stage": 1,
    "context": "Text = 'Stop this nonsense.'"
  },
  {
    "ID": 293413462,
    "key": "Was denied the chance to enlighten a cultist",
    "original": "Was denied the chance to enlighten a cultist",
    "translation": "被剥夺了启发异教者的机会",
    "stage": 1,
    "context": "_event.m.OldGods.worsenMood(1.0, 'Was denied the chance to enlighten a cultist')"
  },
  {
    "ID": 293413463,
    "key": "And work is waiting for you, get moving.",
    "original": "And work is waiting for you, get moving.",
    "translation": "而工作正等着你们呢，行动起来。",
    "stage": 1,
    "context": "Text = 'And work is waiting for you, get moving.'"
  },
  {
    "ID": 293413464,
    "key": " suffers ",
    "original": " suffers ",
    "translation": " 遭受 ",
    "stage": 5,
    "context": "text = _event.m.Cultist.getName() + ' suffers ' + injury.getNameOnly()"
  },
  {
    "ID": 293413465,
    "key": "]-1[/color] Resolve",
    "original": "]-1[/color] Resolve",
    "translation": "]-1[/color] 决心",
    "stage": 1,
    "context": "text = _event.m.OldGods.getName() + ' loses [color=' + this.Const.UI.Color.NegativeEventValue + ']-1[/color] Resolve'"
  },
  {
    "ID": 293413466,
    "key": "Was denied the chance to break a follower of the old gods",
    "original": "Was denied the chance to break a follower of the old gods",
    "translation": "被剥夺了击溃古老神明的追随者的机会",
    "stage": 1,
    "context": "_event.m.Cultist.worsenMood(1.0, 'Was denied the chance to break a follower of the old gods')"
  },
  {
    "ID": 293413467,
    "key": "[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear wind of a quarrel going on. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head towa",
    "original": "[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear wind of a quarrel going on. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the gods having apparently discovered some differences.",
    "translation": "[img]gfx/ui/events/event_06.png[/img]当你正在享用一片培根的时候，你听到争吵的声音随风传来。 你忽视它一段时间，但叫喊声只是越来越大，迅速上升让你无法安心享用一顿美餐。 被惹怒了，你站起来朝骚动的方向走去。 你发现 %cultist% 和 %oldgods% 怒目相向，这些神的崇拜者和追随者显然意见不合。",
    "stage": 1,
    "context": "Text = '[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear wind of a quarrel going on. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the gods having apparently discovered some differences.'"
  },
  {
    "ID": 293413468,
    "key": "[img]gfx/ui/events/event_03.png[/img] The way things are going, you've hardly a man to spare. Just as fists are about to start flying, you step in between the two men and put an end to it. You tell %oldgods% he is better than this, and you tell %cultist% ",
    "original": "[img]gfx/ui/events/event_03.png[/img] The way things are going, you've hardly a man to spare. Just as fists are about to start flying, you step in between the two men and put an end to it. You tell %oldgods% he is better than this, and you tell %cultist% nothing, for the cultist is almost bowled over in fits of laughter. He points, grinning madly.%SPEECH_ON%The light steps in, but darkness is patient. Davkul awaits you all.%SPEECH_OFF%",
    "translation": "[img]gfx/ui/events/event_03.png[/img] 照目前的情况看，你几乎没有多余的人可用。 就在他们准备挥拳相向的时候，你走入这两个人之间，结束了他们的争吵。 你告诉 %oldgods% 他更有理，对 %cultist% 什么都没有说，因为邪教徒几乎被一阵阵的笑声击倒。 他指着我们，疯狂地笑着。%SPEECH_ON%光明来了，但黑暗正耐心等待。 达库尔即将降临到你们。%SPEECH_OFF%",
    "stage": 1,
    "context": "Text = \"[img]gfx/ui/events/event_03.png[/img] The way things are going, you've hardly a man to spare. Just as fists are about to start flying, you step in between the two men and put an end to it. You tell %oldgods% he is better than this, and you tell %cultist% nothing, for the cultist is almost bowled over in fits of laughter. He points, grinning madly.%SPEECH_ON%The light steps in, but darkness is patient. Davkul awaits you all.%SPEECH_OFF%\""
  },
  {
    "ID": 293413469,
    "key": "Let's get godly with the goriest!",
    "original": "Let's get godly with the goriest!",
    "translation": "让我们用最血腥的方式来尊敬古老神明吧！",
    "stage": 1,
    "context": "Text = \"Let's get godly with the goriest!\""
  },
  {
    "ID": 293413470,
    "key": "During camp...",
    "original": "During camp...",
    "translation": "露营时……",
    "stage": 5,
    "context": "this.m.Title = 'During camp...'"
  },
  {
    "ID": 293413471,
    "key": " gains [color=",
    "original": " gains [color=",
    "translation": " 获得了 [color=",
    "stage": 1,
    "context": "text = _event.m.Cultist.getName() + ' gains [color=' + this.Const.UI.Color.PositiveEventValue + ']+2[/color] Resolve'"
  },
  {
    "ID": 293413472,
    "key": "I didn't know %oldgods% had it in him.",
    "original": "I didn't know %oldgods% had it in him.",
    "translation": "我不知道 %oldgods% 会伺机报复他。",
    "stage": 1,
    "context": "Text = \"I didn't know %oldgods% had it in him.\""
  },
  {
    "ID": 293413473,
    "key": "Lost composure and resorted to violence",
    "original": "Lost composure and resorted to violence",
    "translation": "失去镇静，诉诸暴力",
    "stage": 1,
    "context": "_event.m.OldGods.worsenMood(1.0, 'Lost composure and resorted to violence')"
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": ""
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "onDetermineStartScreen = function onDetermineStartScreen(){\n    return \"A\";;\n    return;\n}"
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.cultist_vs_old_gods\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 30.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear wind of a quarrel going on. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the gods having apparently discovered some differences.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Let's get godly with the goriest!\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Stop this nonsense.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        _event.m.OldGods.worsenMood(1.0, \"Lost composure and resorted to violence\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n            text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n        });\n        _event.m.OldGods.getBaseProperties()[3] += -1;\n        _event.m.OldGods.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\"\n        });\n        local injury = _event.m.Cultist.addInjury(this.Const.Injury.Brawl);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.Cultist.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        _event.m.Cultist.getBaseProperties()[4] += 2;\n        _event.m.Cultist.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img] You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an anxious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass, nobody daring to get near him.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I didn't know %oldgods% had it in him.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            _event.m.OldGods.worsenMood(1.0, \"Lost composure and resorted to violence\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n                text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n            });\n            _event.m.OldGods.getBaseProperties()[3] += -1;\n            _event.m.OldGods.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\"\n            });\n            local injury = _event.m.Cultist.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Cultist.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            _event.m.Cultist.getBaseProperties()[4] += 2;\n            _event.m.Cultist.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        _event.m.OldGods.worsenMood(1.0, \"Was denied the chance to enlighten a cultist\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n            text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n        });\n        _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to break a follower of the old gods\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n            text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_03.png[/img] The way things are going, you've hardly a man to spare. Just as fists are about to start flying, you step in between the two men and put an end to it. You tell %oldgods% he is better than this, and you tell %cultist% nothing, for the cultist is almost bowled over in fits of laughter. He points, grinning madly.%SPEECH_ON%The light steps in, but darkness is patient. Davkul awaits you all.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"And work is waiting for you, get moving.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            _event.m.OldGods.worsenMood(1.0, \"Was denied the chance to enlighten a cultist\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n                text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n            });\n            _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to break a follower of the old gods\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n            });\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "ID = \"B\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"B\";;\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": ""
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.cultist_vs_old_gods\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 30.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear wind of a quarrel going on. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the gods having apparently discovered some differences.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Let's get godly with the goriest!\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Stop this nonsense.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        _event.m.OldGods.worsenMood(1.0, \"Lost composure and resorted to violence\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n            text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n        });\n        _event.m.OldGods.getBaseProperties()[3] += -1;\n        _event.m.OldGods.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\"\n        });\n        local injury = _event.m.Cultist.addInjury(this.Const.Injury.Brawl);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.Cultist.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        _event.m.Cultist.getBaseProperties()[4] += 2;\n        _event.m.Cultist.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img] You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an anxious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass, nobody daring to get near him.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I didn't know %oldgods% had it in him.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            _event.m.OldGods.worsenMood(1.0, \"Lost composure and resorted to violence\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n                text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n            });\n            _event.m.OldGods.getBaseProperties()[3] += -1;\n            _event.m.OldGods.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\"\n            });\n            local injury = _event.m.Cultist.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Cultist.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            _event.m.Cultist.getBaseProperties()[4] += 2;\n            _event.m.Cultist.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        _event.m.OldGods.worsenMood(1.0, \"Was denied the chance to enlighten a cultist\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n            text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n        });\n        _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to break a follower of the old gods\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n            text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_03.png[/img] The way things are going, you've hardly a man to spare. Just as fists are about to start flying, you step in between the two men and put an end to it. You tell %oldgods% he is better than this, and you tell %cultist% nothing, for the cultist is almost bowled over in fits of laughter. He points, grinning madly.%SPEECH_ON%The light steps in, but darkness is patient. Davkul awaits you all.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"And work is waiting for you, get moving.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            _event.m.OldGods.worsenMood(1.0, \"Was denied the chance to enlighten a cultist\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n                text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n            });\n            _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to break a follower of the old gods\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n            });\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"C\";;\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "ID = \"C\""
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": ""
  },
  {
    "key": "b7841aae23eb0eb084fe770775b8b7590c75a157f12d1b07485af990e71a5b7a",
    "original": "cultist",
    "translation": "",
    "context": ""
  },
  {
    "key": "eccbd862c1beecf52884c64326d2075a4c5a6c78342297ec1ae34f2ab99be59a",
    "original": "oldgods",
    "translation": "",
    "context": ""
  }
]