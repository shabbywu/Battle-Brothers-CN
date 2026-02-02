[
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\""
  },
  {
    "key": "6e78c8e2e86acc1145f17799f3f8786c45605e0154e028c6731996e6d870b4a6",
    "original": " loses [color=",
    "translation": "",
    "context": "_event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\""
  },
  {
    "key": "8c4401d0753098d7a38cbf7246a4f9cc426e9ba62a6ea25d2de002bed9e8fc3a",
    "original": " suffers ",
    "translation": "",
    "context": "_event.m.Cultist.getName() + \" suffers \" + injury.getNameOnly()"
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
    "key": "9b84bdc4512d2b364aeb9dc623bff7e92b24768f1cb57c30f5cf2309851e06c8",
    "original": "And work is waiting for you, get moving.",
    "translation": "",
    "context": "Text = \"And work is waiting for you, get moving.\""
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
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "7e0718f8a1692e0269076af2ca9b9c4d413a0c2623df04b8254b9cb1138575bb",
    "original": "I didn't know %oldgods% had it in him.",
    "translation": "",
    "context": "Text = \"I didn't know %oldgods% had it in him.\""
  },
  {
    "key": "8ab64c0ac84181f06e815fb6d9bfba5b8cce898eef172518e38e9a8eaa70b6b7",
    "original": "Let's get godly with the goriest!",
    "translation": "",
    "context": "Text = \"Let's get godly with the goriest!\""
  },
  {
    "key": "b8a5a7042fa1fdaab4cd1829448d446c9cc2f82845ad7439c34907c0f80e10e5",
    "original": "Lost composure and resorted to violence",
    "translation": "",
    "context": ""
  },
  {
    "key": "90a6b712dbb9158997b3c0e44de4cedf23cf5c58a66e5b79e79b129f521a2035",
    "original": "Stop this nonsense.",
    "translation": "",
    "context": "Text = \"Stop this nonsense.\""
  },
  {
    "key": "2f491996a4bce68424cdf01abacd27031eeaf45afa5ae398e7e47a25d2fb4d4f",
    "original": "Was denied the chance to break a follower of the old gods",
    "translation": "",
    "context": ""
  },
  {
    "key": "d957d2fa7aed0f4ed68d2c535443e1e39377edb5dfb25ceaa5b4a913eb262d45",
    "original": "Was denied the chance to enlighten a cultist",
    "translation": "",
    "context": ""
  },
  {
    "key": "9cec1de86d42916a68259625023fcd11323b15ce411f05af146312bb054e2f9e",
    "original": "[img]gfx/ui/events/event_03.png[/img] The way things are going, you've hardly a man to spare. Just as fists are about to start flying, you step in between the two men and put an end to it. You tell %oldgods% he is better than this, and you tell %cultist% nothing, for the cultist is almost bowled over in fits of laughter. He points, grinning madly.%SPEECH_ON%The light steps in, but darkness is patient. Davkul awaits you all.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_03.png[/img] The way things are going, you've hardly a man to spare. Just as fists are about to start flying, you step in between the two men and put an end to it. You tell %oldgods% he is better than this, and you tell %cultist% nothing, for the cultist is almost bowled over in fits of laughter. He points, grinning madly.%SPEECH_ON%The light steps in, but darkness is patient. Davkul awaits you all.%SPEECH_OFF%\""
  },
  {
    "key": "e7bc69c3ad9e366efca48fda6a34536fe30c9664c2b38d45bfd679090ee0371d",
    "original": "[img]gfx/ui/events/event_06.png[/img] You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an anxious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass, nobody daring to get near him.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_06.png[/img] You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an anxious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass, nobody daring to get near him.\""
  },
  {
    "key": "7e7e4071b99c64f6a7adb1b677f8f7f0bda4c65468b7b8cd74e4d2b325c056da",
    "original": "[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear wind of a quarrel going on. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the gods having apparently discovered some differences.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear wind of a quarrel going on. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the gods having apparently discovered some differences.\""
  },
  {
    "key": "7a13736f003f5eb5e634c0a135bc0a5fb7d5cfb449189cd394583b83a5807f90",
    "original": "]+2[/color] Resolve",
    "translation": "",
    "context": "_event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\""
  },
  {
    "key": "3c9e515e383f18f2749fd43f8e6259a0d58197433efe1553f932eb74441d91e1",
    "original": "]-1[/color] Resolve",
    "translation": "",
    "context": "_event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\""
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