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
    "context": "ID = \"A\""
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
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.cultist_origin_vs_old_gods\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 20.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear a quarrel taking shape. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the old gods having apparently discovered some differences to which the latter no doubt cannot even begin to truly understand.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Let's get godly with the goriest!\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Davkul awaits, we need not go to him.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        _event.m.OldGods.worsenMood(1.0, \"Lost composure and resorted to violence\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n            text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n        });\n        _event.m.OldGods.getBaseProperties()[3] += -1;\n        _event.m.OldGods.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\"\n        });\n        local injury = _event.m.Cultist.addInjury(this.Const.Injury.Brawl);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.Cultist.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        _event.m.Cultist.getBaseProperties()[4] += 2;\n        _event.m.Cultist.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an axious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass. You go over and pick him up, clapping a hand on his shoulder.%SPEECH_ON%Davkul awaits us all, brother. You did well.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"May the darkness be ever infinite.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            _event.m.OldGods.worsenMood(1.0, \"Lost composure and resorted to violence\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n                text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n            });\n            _event.m.OldGods.getBaseProperties()[3] += -1;\n            _event.m.OldGods.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\"\n            });\n            local injury = _event.m.Cultist.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Cultist.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            _event.m.Cultist.getBaseProperties()[4] += 2;\n            _event.m.Cultist.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        _event.m.OldGods.worsenMood(1.0, \"Was denied the chance to enlighten a cultist\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n            text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n        });\n        _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to break a follower of the old gods\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n            text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_03.png[/img]You figure to let them do what they must, but a shadow draws over both your shoulders. The blackness spools before you until it\\u2019s a great sheet blocking the world whole. In this infinite space there is a view of men dying, that of %cultist% and %oldgods%, and you see yourself amongst them. And more than that, you see a deed left undone, your work with and through Davkul unfinished. Just as you realize the omen, it snaps away and you find the two men ready to fight.\\n\\n Shouting, you split the godly and ungodly apart. %oldgods% leaves, but you spend a moment with %cultist%, leaning in and whispering.%SPEECH_ON%The light is only for a moment, brother, and its extinguishment is inevitable. Trust in Davkul, and await the darkness that is to come.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"He awaits us all.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            _event.m.OldGods.worsenMood(1.0, \"Was denied the chance to enlighten a cultist\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n                text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n            });\n            _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to break a follower of the old gods\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n            });\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.cultist_origin_vs_old_gods\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 20.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear a quarrel taking shape. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the old gods having apparently discovered some differences to which the latter no doubt cannot even begin to truly understand.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Let's get godly with the goriest!\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"Davkul awaits, we need not go to him.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        _event.m.OldGods.worsenMood(1.0, \"Lost composure and resorted to violence\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n            text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n        });\n        _event.m.OldGods.getBaseProperties()[3] += -1;\n        _event.m.OldGods.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\"\n        });\n        local injury = _event.m.Cultist.addInjury(this.Const.Injury.Brawl);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.Cultist.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        _event.m.Cultist.getBaseProperties()[4] += 2;\n        _event.m.Cultist.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an axious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass. You go over and pick him up, clapping a hand on his shoulder.%SPEECH_ON%Davkul awaits us all, brother. You did well.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"May the darkness be ever infinite.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            _event.m.OldGods.worsenMood(1.0, \"Lost composure and resorted to violence\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n                text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n            });\n            _event.m.OldGods.getBaseProperties()[3] += -1;\n            _event.m.OldGods.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.OldGods.getName() + \" loses [color=\" + this.Const.UI.Color.NegativeEventValue + \"]-1[/color] Resolve\"\n            });\n            local injury = _event.m.Cultist.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Cultist.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            _event.m.Cultist.getBaseProperties()[4] += 2;\n            _event.m.Cultist.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Cultist.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OldGods.getImagePath());\n        this.Characters.push(_event.m.Cultist.getImagePath());\n        _event.m.OldGods.worsenMood(1.0, \"Was denied the chance to enlighten a cultist\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n            text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n        });\n        _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to break a follower of the old gods\");\n        this.List.push({\n            id = 10\n            icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n            text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_03.png[/img]You figure to let them do what they must, but a shadow draws over both your shoulders. The blackness spools before you until it\\u2019s a great sheet blocking the world whole. In this infinite space there is a view of men dying, that of %cultist% and %oldgods%, and you see yourself amongst them. And more than that, you see a deed left undone, your work with and through Davkul unfinished. Just as you realize the omen, it snaps away and you find the two men ready to fight.\\n\\n Shouting, you split the godly and ungodly apart. %oldgods% leaves, but you spend a moment with %cultist%, leaning in and whispering.%SPEECH_ON%The light is only for a moment, brother, and its extinguishment is inevitable. Trust in Davkul, and await the darkness that is to come.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"He awaits us all.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OldGods.getImagePath());\n            this.Characters.push(_event.m.Cultist.getImagePath());\n            _event.m.OldGods.worsenMood(1.0, \"Was denied the chance to enlighten a cultist\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.OldGods.getMoodState()]\n                text = _event.m.OldGods.getName() + this.Const.MoodStateEvent[_event.m.OldGods.getMoodState()]\n            });\n            _event.m.Cultist.worsenMood(1.0, \"Was denied the chance to break a follower of the old gods\");\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Cultist.getMoodState()]\n                text = _event.m.Cultist.getName() + this.Const.MoodStateEvent[_event.m.Cultist.getMoodState()]\n            });\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "976b96b74656094b2b823f9af48f39b90830ab835e248962387ecb20f8d8b36a",
    "original": "Davkul awaits, we need not go to him.",
    "translation": "",
    "context": "Text = \"Davkul awaits, we need not go to him.\""
  },
  {
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "884e43ed19e8a99e695f5de2d2168af53caa6de40984f689f91d9d8b12b031bc",
    "original": "He awaits us all.",
    "translation": "",
    "context": "Text = \"He awaits us all.\""
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
    "key": "3b4bc8f7b89f9dd9b92af30a7c6a8a5a09f16711502c3d63a6b1ff7611d8fcd4",
    "original": "May the darkness be ever infinite.",
    "translation": "",
    "context": "Text = \"May the darkness be ever infinite.\""
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
    "key": "8d88c3008e4284258e52f0dd177b9b105523692857f62c768cb655c637b6bae8",
    "original": "[img]gfx/ui/events/event_03.png[/img]You figure to let them do what they must, but a shadow draws over both your shoulders. The blackness spools before you until it’s a great sheet blocking the world whole. In this infinite space there is a view of men dying, that of %cultist% and %oldgods%, and you see yourself amongst them. And more than that, you see a deed left undone, your work with and through Davkul unfinished. Just as you realize the omen, it snaps away and you find the two men ready to fight.\n\n Shouting, you split the godly and ungodly apart. %oldgods% leaves, but you spend a moment with %cultist%, leaning in and whispering.%SPEECH_ON%The light is only for a moment, brother, and its extinguishment is inevitable. Trust in Davkul, and await the darkness that is to come.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_03.png[/img]You figure to let them do what they must, but a shadow draws over both your shoulders. The blackness spools before you until it\\u2019s a great sheet blocking the world whole. In this infinite space there is a view of men dying, that of %cultist% and %oldgods%, and you see yourself amongst them. And more than that, you see a deed left undone, your work with and through Davkul unfinished. Just as you realize the omen, it snaps away and you find the two men ready to fight.\\n\\n Shouting, you split the godly and ungodly apart. %oldgods% leaves, but you spend a moment with %cultist%, leaning in and whispering.%SPEECH_ON%The light is only for a moment, brother, and its extinguishment is inevitable. Trust in Davkul, and await the darkness that is to come.%SPEECH_OFF%\""
  },
  {
    "key": "bbeb5ad59ff096793d784ffb16145f569fea512cf7e047c49ce97520d2553236",
    "original": "[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear a quarrel taking shape. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the old gods having apparently discovered some differences to which the latter no doubt cannot even begin to truly understand.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_06.png[/img]While enjoying a slice of bacon, you hear a quarrel taking shape. You ignore it for a time, but the shouts only get louder, quickly rising over your ability to enjoy a good meal. Angered, you stand up and head toward the disturbance. You find %cultist% and %oldgods% facing off, the cultist and follower of the old gods having apparently discovered some differences to which the latter no doubt cannot even begin to truly understand.\""
  },
  {
    "key": "36294a08856935e691f7f7416cdafa591b10d7f2a12d73b8cf31ec6e8dce2ce9",
    "original": "[img]gfx/ui/events/event_06.png[/img]You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an axious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass. You go over and pick him up, clapping a hand on his shoulder.%SPEECH_ON%Davkul awaits us all, brother. You did well.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_06.png[/img]You step off to the side, letting the men hash out their differences as men with great differences do. Fists for arguments, the follower of the old gods makes his case, battering the cultist again and again. But the man with the scarred head only grins in return. His eyes are puffing up, the lids purpled and puckering over his eyesight. Yet, still, he grins, and there is bloody laughter spewing out of his reddened mouth.%SPEECH_ON%Such darkness! Davkul is most pleased!%SPEECH_OFF%With an axious look, %oldgods% steps off %cultist% and backs away. He's rubbing his bloodied knuckles, realizing he may have broken a few in the seemingly one-sided scuffle. But it's the cultist's words that hurt him most of all.%SPEECH_ON%Man isn't tempted by the darkness, he is called to it! Lost without it! Gleeful in its return!%SPEECH_OFF%Almost afraid to look back, %oldgods% hurries away as the cultist remains behind, laughing and chuckling on the grass. You go over and pick him up, clapping a hand on his shoulder.%SPEECH_ON%Davkul awaits us all, brother. You did well.%SPEECH_OFF%\""
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