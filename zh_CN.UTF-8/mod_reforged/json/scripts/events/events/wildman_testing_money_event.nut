[
  {
    "key": "8c4401d0753098d7a38cbf7246a4f9cc426e9ba62a6ea25d2de002bed9e8fc3a",
    "original": " suffers ",
    "translation": "",
    "context": "_event.m.OtherGuy.getName() + \" suffers \" + injury.getNameOnly()"
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
    "context": "getResult = function getResult(_event){\n    if (this.Math.rand(1, 100) <= 50) {\n        return \"B\";\n    } else {\n        return \"C\";\n    };\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.wildman_testing_money\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 90.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        if (this.Math.rand(1, 100) <= 50) {\n            return \"B\";\n        } else {\n            return \"C\";\n        };\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Wildman.getImagePath());\n        _event.m.Wildman.getFlags().set(\"IsConceptionOfMoneyTested\", True);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]You find %wildman% the wildman stacking his crowns into towers. He leans back from his moneyed manifestations with a wide grin, but then suddenly launches forward, knocking the towers over like a child would their blocks. He laughs maniacally as the coins scatter. The man playing with his money is a curious sight. Perhaps the wildman has no real conception of what crowns are good for? If so, maybe... maybe you could take them back?\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Let's see if he'll trade it all away for something else.\"\n            getResult = function getResult(_event){\n                if (this.Math.rand(1, 100) <= 50) {\n                    return \"B\";\n                } else {\n                    return \"C\";\n                };\n                return;\n            }\n        },{\n            Text = \"Better to leave the man and his crowns alone.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Wildman.getImagePath());\n            _event.m.Wildman.getFlags().set(\"IsConceptionOfMoneyTested\", True);\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Wildman.getImagePath());\n        local money = 10 * _event.m.Wildman.getDaysWithCompany();\n        this.World.Assets.addMoney(money);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n        }];\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]You crouch down.%SPEECH_ON%Hey there %wildman%. Mind if I take one of these?%SPEECH_OFF%Carefully, you pick up a coin and measure the wildman's reaction. He shrugs and grunts as if to say 'it's yours'. You take another crown. And then another. The wildman glares at you, but you slowly produce a stick with a frilly bow tied to the top. Its whirly nature captures the wildman's eye. When he reaches out for it, you draw it back and shake your head. You then point at the crowns, and then at the stick.%SPEECH_ON%One for the other, yes?%SPEECH_OFF%The wildman looks at his crowns, mulling them over like an accountant, but you know his thoughts are far more chaotic than that. Suddenly, he growls and pushes his crowns forward and takes the stick away from you. Looks like the trade is done.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"That went well.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Wildman.getImagePath());\n            local money = 10 * _event.m.Wildman.getDaysWithCompany();\n            this.World.Assets.addMoney(money);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n            }];\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Wildman.getImagePath());\n        _event.m.Wildman.worsenMood(1.0, \"Did a bad trade\");\n        if (_event.m.Wildman.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Wildman.getMoodState()]\n                text = _event.m.Wildman.getName() + this.Const.MoodStateEvent[_event.m.Wildman.getMoodState()]\n            })\n        };\n        local injury = _event.m.OtherGuy.addInjury(this.Const.Injury.Brawl);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.OtherGuy.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        if (_event.m.Item != null) {\n            this.World.Assets.getStash().remove(_event.m.Item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + _event.m.Item.getIcon()\n                text = \"You lose \" + this.Const.Strings.getArticle(_event.m.Item.getName()) + _event.m.Item.getName()\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]You crouch down and look at the mess of crowns.%SPEECH_ON%Those are real shiny, huh?%SPEECH_OFF%The wildman grunts and tries to shoo you away. Resisting, you pick up a crown. His hands drop and he jerks his head up, glaring at you. Slowly, you put the coin down and then produce a stick with a string wrapped around its top. His stare slackens, the sturdy stick a slick treat to the unkempt wildman. You motion that you'll give it to him in exchange for the crowns. He takes the stick. You take the crowns.\\n\\n But when the wildman plays with the string, it falls off and blows away in the wind. He cries out, then stares murderously at you, yourself standing there with both arms barreled to try and hold all the crowns. The wildman screams. You drop the crowns and run as fast as you can. There is all manner of chaos going on behind you - tools and weapons being broke, brothers running for their lives, and the absolute bedlam of a bunch of confused men beset by a wildman - but you dare not look.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Probably should not have done that.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Wildman.getImagePath());\n            _event.m.Wildman.worsenMood(1.0, \"Did a bad trade\");\n            if (_event.m.Wildman.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Wildman.getMoodState()]\n                    text = _event.m.Wildman.getName() + this.Const.MoodStateEvent[_event.m.Wildman.getMoodState()]\n                })\n            };\n            local injury = _event.m.OtherGuy.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.OtherGuy.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            if (_event.m.Item != null) {\n                this.World.Assets.getStash().remove(_event.m.Item);\n                this.List.push({\n                    id = 10\n                    icon = \"ui/items/\" + _event.m.Item.getIcon()\n                    text = \"You lose \" + this.Const.Strings.getArticle(_event.m.Item.getName()) + _event.m.Item.getName()\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": ""
  },
  {
    "key": "773ab3a1966d9157cde63a2ec5d25493b0b3b7d826952fee1947a86c621702ff",
    "original": "Better to leave the man and his crowns alone.",
    "translation": "",
    "context": "Text = \"Better to leave the man and his crowns alone.\""
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    if (this.Math.rand(1, 100) <= 50) {\n        return \"B\";\n    } else {\n        return \"C\";\n    };\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.wildman_testing_money\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 90.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        if (this.Math.rand(1, 100) <= 50) {\n            return \"B\";\n        } else {\n            return \"C\";\n        };\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Wildman.getImagePath());\n        _event.m.Wildman.getFlags().set(\"IsConceptionOfMoneyTested\", True);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]You find %wildman% the wildman stacking his crowns into towers. He leans back from his moneyed manifestations with a wide grin, but then suddenly launches forward, knocking the towers over like a child would their blocks. He laughs maniacally as the coins scatter. The man playing with his money is a curious sight. Perhaps the wildman has no real conception of what crowns are good for? If so, maybe... maybe you could take them back?\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Let's see if he'll trade it all away for something else.\"\n            getResult = function getResult(_event){\n                if (this.Math.rand(1, 100) <= 50) {\n                    return \"B\";\n                } else {\n                    return \"C\";\n                };\n                return;\n            }\n        },{\n            Text = \"Better to leave the man and his crowns alone.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Wildman.getImagePath());\n            _event.m.Wildman.getFlags().set(\"IsConceptionOfMoneyTested\", True);\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Wildman.getImagePath());\n        local money = 10 * _event.m.Wildman.getDaysWithCompany();\n        this.World.Assets.addMoney(money);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n        }];\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]You crouch down.%SPEECH_ON%Hey there %wildman%. Mind if I take one of these?%SPEECH_OFF%Carefully, you pick up a coin and measure the wildman's reaction. He shrugs and grunts as if to say 'it's yours'. You take another crown. And then another. The wildman glares at you, but you slowly produce a stick with a frilly bow tied to the top. Its whirly nature captures the wildman's eye. When he reaches out for it, you draw it back and shake your head. You then point at the crowns, and then at the stick.%SPEECH_ON%One for the other, yes?%SPEECH_OFF%The wildman looks at his crowns, mulling them over like an accountant, but you know his thoughts are far more chaotic than that. Suddenly, he growls and pushes his crowns forward and takes the stick away from you. Looks like the trade is done.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"That went well.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Wildman.getImagePath());\n            local money = 10 * _event.m.Wildman.getDaysWithCompany();\n            this.World.Assets.addMoney(money);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\"\n            }];\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Wildman.getImagePath());\n        _event.m.Wildman.worsenMood(1.0, \"Did a bad trade\");\n        if (_event.m.Wildman.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Wildman.getMoodState()]\n                text = _event.m.Wildman.getName() + this.Const.MoodStateEvent[_event.m.Wildman.getMoodState()]\n            })\n        };\n        local injury = _event.m.OtherGuy.addInjury(this.Const.Injury.Brawl);\n        this.List.push({\n            id = 10\n            icon = injury.getIcon()\n            text = _event.m.OtherGuy.getName() + \" suffers \" + injury.getNameOnly()\n        });\n        if (_event.m.Item != null) {\n            this.World.Assets.getStash().remove(_event.m.Item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + _event.m.Item.getIcon()\n                text = \"You lose \" + this.Const.Strings.getArticle(_event.m.Item.getName()) + _event.m.Item.getName()\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]You crouch down and look at the mess of crowns.%SPEECH_ON%Those are real shiny, huh?%SPEECH_OFF%The wildman grunts and tries to shoo you away. Resisting, you pick up a crown. His hands drop and he jerks his head up, glaring at you. Slowly, you put the coin down and then produce a stick with a string wrapped around its top. His stare slackens, the sturdy stick a slick treat to the unkempt wildman. You motion that you'll give it to him in exchange for the crowns. He takes the stick. You take the crowns.\\n\\n But when the wildman plays with the string, it falls off and blows away in the wind. He cries out, then stares murderously at you, yourself standing there with both arms barreled to try and hold all the crowns. The wildman screams. You drop the crowns and run as fast as you can. There is all manner of chaos going on behind you - tools and weapons being broke, brothers running for their lives, and the absolute bedlam of a bunch of confused men beset by a wildman - but you dare not look.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Probably should not have done that.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Wildman.getImagePath());\n            _event.m.Wildman.worsenMood(1.0, \"Did a bad trade\");\n            if (_event.m.Wildman.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Wildman.getMoodState()]\n                    text = _event.m.Wildman.getName() + this.Const.MoodStateEvent[_event.m.Wildman.getMoodState()]\n                })\n            };\n            local injury = _event.m.OtherGuy.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.OtherGuy.getName() + \" suffers \" + injury.getNameOnly()\n            });\n            if (_event.m.Item != null) {\n                this.World.Assets.getStash().remove(_event.m.Item);\n                this.List.push({\n                    id = 10\n                    icon = \"ui/items/\" + _event.m.Item.getIcon()\n                    text = \"You lose \" + this.Const.Strings.getArticle(_event.m.Item.getName()) + _event.m.Item.getName()\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "855499d3287260531ffb82f465ef4f5b92bcf7b531eaa1f6f1e4e74b6955496e",
    "original": "Did a bad trade",
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
    "key": "b1e1ae866896b429acb3b7fc413941cad51ada5c2b78faf7b55cd723a0c1a986",
    "original": "Let's see if he'll trade it all away for something else.",
    "translation": "",
    "context": "Text = \"Let's see if he'll trade it all away for something else.\""
  },
  {
    "key": "1d1cd3fb1f03c09ee825a2e54635f17623c94032fd1f18750bd4781990d288e0",
    "original": "Probably should not have done that.",
    "translation": "",
    "context": "Text = \"Probably should not have done that.\""
  },
  {
    "key": "92f80329b40a69a0eeb06e619dc47e17a7dbda9db1e6aadadc41e16274d7e35b",
    "original": "That went well.",
    "translation": "",
    "context": "Text = \"That went well.\""
  },
  {
    "key": "75c45e6b8866c7aacf8d3a14cae5d644d278d2f53ab2cc835118e64cc9d12404",
    "original": "You gain [color=",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\""
  },
  {
    "key": "206a22ae79743f3b9862628939132ec211d951f223ce6d2a7b925ba56a76f2d9",
    "original": "You lose ",
    "translation": "",
    "context": "\"You lose \" + this.Const.Strings.getArticle(_event.m.Item.getName()) + _event.m.Item.getName()"
  },
  {
    "key": "4c7191ec29bcad5f88c9782f841c0151bf3019e2218c080ea4787ee82639d2e1",
    "original": "[/color] Crowns",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]\" + money + \"[/color] Crowns\""
  },
  {
    "key": "227469f7b8753ab3b5adf8193df4f58a74b0f98c7d838d38f358fd736977223c",
    "original": "[img]gfx/ui/events/event_04.png[/img]You crouch down.%SPEECH_ON%Hey there %wildman%. Mind if I take one of these?%SPEECH_OFF%Carefully, you pick up a coin and measure the wildman's reaction. He shrugs and grunts as if to say 'it's yours'. You take another crown. And then another. The wildman glares at you, but you slowly produce a stick with a frilly bow tied to the top. Its whirly nature captures the wildman's eye. When he reaches out for it, you draw it back and shake your head. You then point at the crowns, and then at the stick.%SPEECH_ON%One for the other, yes?%SPEECH_OFF%The wildman looks at his crowns, mulling them over like an accountant, but you know his thoughts are far more chaotic than that. Suddenly, he growls and pushes his crowns forward and takes the stick away from you. Looks like the trade is done.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_04.png[/img]You crouch down.%SPEECH_ON%Hey there %wildman%. Mind if I take one of these?%SPEECH_OFF%Carefully, you pick up a coin and measure the wildman's reaction. He shrugs and grunts as if to say 'it's yours'. You take another crown. And then another. The wildman glares at you, but you slowly produce a stick with a frilly bow tied to the top. Its whirly nature captures the wildman's eye. When he reaches out for it, you draw it back and shake your head. You then point at the crowns, and then at the stick.%SPEECH_ON%One for the other, yes?%SPEECH_OFF%The wildman looks at his crowns, mulling them over like an accountant, but you know his thoughts are far more chaotic than that. Suddenly, he growls and pushes his crowns forward and takes the stick away from you. Looks like the trade is done.\""
  },
  {
    "key": "70b2e31b1b3587df0ffbc0e14b9a0fb55b453aac81c3592e5d24ed8eedc807b8",
    "original": "[img]gfx/ui/events/event_04.png[/img]You find %wildman% the wildman stacking his crowns into towers. He leans back from his moneyed manifestations with a wide grin, but then suddenly launches forward, knocking the towers over like a child would their blocks. He laughs maniacally as the coins scatter. The man playing with his money is a curious sight. Perhaps the wildman has no real conception of what crowns are good for? If so, maybe... maybe you could take them back?",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_04.png[/img]You find %wildman% the wildman stacking his crowns into towers. He leans back from his moneyed manifestations with a wide grin, but then suddenly launches forward, knocking the towers over like a child would their blocks. He laughs maniacally as the coins scatter. The man playing with his money is a curious sight. Perhaps the wildman has no real conception of what crowns are good for? If so, maybe... maybe you could take them back?\""
  },
  {
    "key": "6e50bdc56de53d3733ef4e5d7f2ce9bde4de190b672e17f28a2411e7742ce02e",
    "original": "[img]gfx/ui/events/event_06.png[/img]You crouch down and look at the mess of crowns.%SPEECH_ON%Those are real shiny, huh?%SPEECH_OFF%The wildman grunts and tries to shoo you away. Resisting, you pick up a crown. His hands drop and he jerks his head up, glaring at you. Slowly, you put the coin down and then produce a stick with a string wrapped around its top. His stare slackens, the sturdy stick a slick treat to the unkempt wildman. You motion that you'll give it to him in exchange for the crowns. He takes the stick. You take the crowns.\n\n But when the wildman plays with the string, it falls off and blows away in the wind. He cries out, then stares murderously at you, yourself standing there with both arms barreled to try and hold all the crowns. The wildman screams. You drop the crowns and run as fast as you can. There is all manner of chaos going on behind you - tools and weapons being broke, brothers running for their lives, and the absolute bedlam of a bunch of confused men beset by a wildman - but you dare not look.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_06.png[/img]You crouch down and look at the mess of crowns.%SPEECH_ON%Those are real shiny, huh?%SPEECH_OFF%The wildman grunts and tries to shoo you away. Resisting, you pick up a crown. His hands drop and he jerks his head up, glaring at you. Slowly, you put the coin down and then produce a stick with a string wrapped around its top. His stare slackens, the sturdy stick a slick treat to the unkempt wildman. You motion that you'll give it to him in exchange for the crowns. He takes the stick. You take the crowns.\\n\\n But when the wildman plays with the string, it falls off and blows away in the wind. He cries out, then stares murderously at you, yourself standing there with both arms barreled to try and hold all the crowns. The wildman screams. You drop the crowns and run as fast as you can. There is all manner of chaos going on behind you - tools and weapons being broke, brothers running for their lives, and the absolute bedlam of a bunch of confused men beset by a wildman - but you dare not look.\""
  },
  {
    "key": "8b5e678f62578828f7bea930e7ba16e36291fc403e14f60f54edce8a4de2c316",
    "original": "wildman",
    "translation": "",
    "context": ""
  }
]