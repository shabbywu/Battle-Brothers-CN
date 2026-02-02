[
  {
    "key": "b8071bd76cf62a7999fce95a8ab9e69b7b167721b8348f1f61ea7dbb2343c0d9",
    "original": "'s ",
    "translation": "",
    "context": "_event.m.Bowyer.getNameOnly() + \"'s \" + item.m.Name"
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "6fe6514237387e6195ed026fc9b25cd8a4533dd437434d12ac9199641bdf04b2",
    "original": "A masterwork!",
    "translation": "",
    "context": "Text = \"A masterwork!\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.bowyer_crafts_masterwork\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 999999.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Bowyer.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]%bowyer% the bowyer comes to you with a bit of request: he wishes to build a weapon for the ages. Apparently, the man has been attempting to build a bow of legendary qualities for many years, but now that he has been on the road he's picked up a few things to fill in his gaps of knowledge. Truly, he believes he can get it right this time. All he needs is a few resources to help procure the elements needed to construct it. A sum of 500 crowns is what he humbly requests, and the quality wood you carry.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Build me a bow of legends!\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"We don't have time for this.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Bowyer.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Bowyer.getImagePath());\n        this.World.Assets.addMoney(-500);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n        });\n        local stash = this.World.Assets.getStash().getItems();\n        foreach( i, item in stash){\n            if (item != null && item.getID() == \"misc.quality_wood\") {\n                stash.i = null;\n                this.List.push({\n                    id = 10\n                    icon = \"ui/items/\" + item.getIcon()\n                    text = \"You lose \" + item.getName()\n                })\n            } else {\n                break\n            }\n        };\n        local item = this.new(\"scripts/items/weapons/masterwork_bow\");\n        item.m.Name = _event.m.Bowyer.getNameOnly() + \"'s \" + item.m.Name;\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + item.getName()\n        });\n        _event.m.Bowyer.improveMood(2.0, \"Created a masterwork\");\n        if (_event.m.Bowyer.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{The bow isn't quite legendary, but it is quite good. It's light in the grip, easily spun from side to side with the air whistling as it whirls. You test the draw. A strong man will be required to wield it that is for sure. When you loose an arrow, the shaft travels unbelievably straight and the shot almost seems to aim itself. A brilliant weapon if you ever saw one! | The bow was constructed with a mix of woods whose names you do not know. Colors of this tree and that spiral through the curve of the weapon, looking arboreally damascened. Testing the draw, the string proves itself mighty. You're no marksman, but when you loose an arrow it almost seems to guide itself to its target. A terrific weapon, if for no other reason it made you look better than you really are. You congratulate the bowyer.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A masterwork!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Bowyer.getImagePath());\n            this.World.Assets.addMoney(-500);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n            });\n            local stash = this.World.Assets.getStash().getItems();\n            foreach( i, item in stash){\n                if (item != null && item.getID() == \"misc.quality_wood\") {\n                    stash.i = null;\n                    this.List.push({\n                        id = 10\n                        icon = \"ui/items/\" + item.getIcon()\n                        text = \"You lose \" + item.getName()\n                    })\n                } else {\n                    break\n                }\n            };\n            local item = this.new(\"scripts/items/weapons/masterwork_bow\");\n            item.m.Name = _event.m.Bowyer.getNameOnly() + \"'s \" + item.m.Name;\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + item.getName()\n            });\n            _event.m.Bowyer.improveMood(2.0, \"Created a masterwork\");\n            if (_event.m.Bowyer.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                    text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Bowyer.getImagePath());\n        this.World.Assets.addMoney(-500);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n        });\n        local stash = this.World.Assets.getStash().getItems();\n        foreach( i, item in stash){\n            if (item != null && item.getID() == \"misc.quality_wood\") {\n                stash.i = null;\n                this.List.push({\n                    id = 10\n                    icon = \"ui/items/\" + item.getIcon()\n                    text = \"You lose \" + item.getName()\n                })\n            } else {\n                break\n            }\n        };\n        local item = this.new(\"scripts/items/weapons/wonky_bow\");\n        item.m.Name = _event.m.Bowyer.getNameOnly() + \"'s \" + item.m.Name;\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + item.getName()\n        });\n        _event.m.Bowyer.worsenMood(1.0, \"Failed in creating a masterwork\");\n        if (_event.m.Bowyer.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]Is this thing a wild experiment? The wood cricks and cracks when bent, the string frizzes and goes wiry every time you draw it back, and you swear you saw a termite poking its head out of the shaft. Every tested arrow goes haywire, skirting this way or that, anywhere but its supposed target.\\n\\nYou ease the bowyer's pain by blaming yourself for how inaccurate the weapon is, but %otherguy1% and %otherguy2% both give it a try and come to even worse results. The bowyer eventually shuffles off, cradling his construction in his arms before tossing it onto the stockpile of weapons where you'd wish it'd look just like any other bow, but its obscene ugliness makes it stick out like a hot coal on a haystack. Surely no man will be accidentally wielding that thing!\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I see now why you're no longer working as a bowyer.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Bowyer.getImagePath());\n            this.World.Assets.addMoney(-500);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n            });\n            local stash = this.World.Assets.getStash().getItems();\n            foreach( i, item in stash){\n                if (item != null && item.getID() == \"misc.quality_wood\") {\n                    stash.i = null;\n                    this.List.push({\n                        id = 10\n                        icon = \"ui/items/\" + item.getIcon()\n                        text = \"You lose \" + item.getName()\n                    })\n                } else {\n                    break\n                }\n            };\n            local item = this.new(\"scripts/items/weapons/wonky_bow\");\n            item.m.Name = _event.m.Bowyer.getNameOnly() + \"'s \" + item.m.Name;\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + item.getName()\n            });\n            _event.m.Bowyer.worsenMood(1.0, \"Failed in creating a masterwork\");\n            if (_event.m.Bowyer.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                    text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Bowyer.getImagePath());\n        _event.m.Bowyer.worsenMood(2.0, \"Was denied a request\");\n        if (_event.m.Bowyer.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"D\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You tell the bowyer that the %companyname% has no resources to spare. The man grinds his teeth, and apparently whatever words he had to say, for he says nothing and turns on his heels and stomps off. In the distance you finally hear what kindness he had in store for you - a litany of swearing and cursing and eventually moaning disappointment.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Pull yourself together.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Bowyer.getImagePath());\n            _event.m.Bowyer.worsenMood(2.0, \"Was denied a request\");\n            if (_event.m.Bowyer.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                    text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n    return;\n}"
  },
  {
    "key": "5d2a7e8b395354a939382baaa448c530a0e47893b7da08d760f6e8514cffb9a1",
    "original": "Build me a bow of legends!",
    "translation": "",
    "context": "Text = \"Build me a bow of legends!\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.bowyer_crafts_masterwork\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 999999.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Bowyer.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]%bowyer% the bowyer comes to you with a bit of request: he wishes to build a weapon for the ages. Apparently, the man has been attempting to build a bow of legendary qualities for many years, but now that he has been on the road he's picked up a few things to fill in his gaps of knowledge. Truly, he believes he can get it right this time. All he needs is a few resources to help procure the elements needed to construct it. A sum of 500 crowns is what he humbly requests, and the quality wood you carry.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Build me a bow of legends!\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"We don't have time for this.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Bowyer.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Bowyer.getImagePath());\n        this.World.Assets.addMoney(-500);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n        });\n        local stash = this.World.Assets.getStash().getItems();\n        foreach( i, item in stash){\n            if (item != null && item.getID() == \"misc.quality_wood\") {\n                stash.i = null;\n                this.List.push({\n                    id = 10\n                    icon = \"ui/items/\" + item.getIcon()\n                    text = \"You lose \" + item.getName()\n                })\n            } else {\n                break\n            }\n        };\n        local item = this.new(\"scripts/items/weapons/masterwork_bow\");\n        item.m.Name = _event.m.Bowyer.getNameOnly() + \"'s \" + item.m.Name;\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + item.getName()\n        });\n        _event.m.Bowyer.improveMood(2.0, \"Created a masterwork\");\n        if (_event.m.Bowyer.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]{The bow isn't quite legendary, but it is quite good. It's light in the grip, easily spun from side to side with the air whistling as it whirls. You test the draw. A strong man will be required to wield it that is for sure. When you loose an arrow, the shaft travels unbelievably straight and the shot almost seems to aim itself. A brilliant weapon if you ever saw one! | The bow was constructed with a mix of woods whose names you do not know. Colors of this tree and that spiral through the curve of the weapon, looking arboreally damascened. Testing the draw, the string proves itself mighty. You're no marksman, but when you loose an arrow it almost seems to guide itself to its target. A terrific weapon, if for no other reason it made you look better than you really are. You congratulate the bowyer.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A masterwork!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Bowyer.getImagePath());\n            this.World.Assets.addMoney(-500);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n            });\n            local stash = this.World.Assets.getStash().getItems();\n            foreach( i, item in stash){\n                if (item != null && item.getID() == \"misc.quality_wood\") {\n                    stash.i = null;\n                    this.List.push({\n                        id = 10\n                        icon = \"ui/items/\" + item.getIcon()\n                        text = \"You lose \" + item.getName()\n                    })\n                } else {\n                    break\n                }\n            };\n            local item = this.new(\"scripts/items/weapons/masterwork_bow\");\n            item.m.Name = _event.m.Bowyer.getNameOnly() + \"'s \" + item.m.Name;\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + item.getName()\n            });\n            _event.m.Bowyer.improveMood(2.0, \"Created a masterwork\");\n            if (_event.m.Bowyer.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                    text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Bowyer.getImagePath());\n        this.World.Assets.addMoney(-500);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n        });\n        local stash = this.World.Assets.getStash().getItems();\n        foreach( i, item in stash){\n            if (item != null && item.getID() == \"misc.quality_wood\") {\n                stash.i = null;\n                this.List.push({\n                    id = 10\n                    icon = \"ui/items/\" + item.getIcon()\n                    text = \"You lose \" + item.getName()\n                })\n            } else {\n                break\n            }\n        };\n        local item = this.new(\"scripts/items/weapons/wonky_bow\");\n        item.m.Name = _event.m.Bowyer.getNameOnly() + \"'s \" + item.m.Name;\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + item.getName()\n        });\n        _event.m.Bowyer.worsenMood(1.0, \"Failed in creating a masterwork\");\n        if (_event.m.Bowyer.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]Is this thing a wild experiment? The wood cricks and cracks when bent, the string frizzes and goes wiry every time you draw it back, and you swear you saw a termite poking its head out of the shaft. Every tested arrow goes haywire, skirting this way or that, anywhere but its supposed target.\\n\\nYou ease the bowyer's pain by blaming yourself for how inaccurate the weapon is, but %otherguy1% and %otherguy2% both give it a try and come to even worse results. The bowyer eventually shuffles off, cradling his construction in his arms before tossing it onto the stockpile of weapons where you'd wish it'd look just like any other bow, but its obscene ugliness makes it stick out like a hot coal on a haystack. Surely no man will be accidentally wielding that thing!\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I see now why you're no longer working as a bowyer.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Bowyer.getImagePath());\n            this.World.Assets.addMoney(-500);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\"\n            });\n            local stash = this.World.Assets.getStash().getItems();\n            foreach( i, item in stash){\n                if (item != null && item.getID() == \"misc.quality_wood\") {\n                    stash.i = null;\n                    this.List.push({\n                        id = 10\n                        icon = \"ui/items/\" + item.getIcon()\n                        text = \"You lose \" + item.getName()\n                    })\n                } else {\n                    break\n                }\n            };\n            local item = this.new(\"scripts/items/weapons/wonky_bow\");\n            item.m.Name = _event.m.Bowyer.getNameOnly() + \"'s \" + item.m.Name;\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + item.getName()\n            });\n            _event.m.Bowyer.worsenMood(1.0, \"Failed in creating a masterwork\");\n            if (_event.m.Bowyer.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                    text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Bowyer.getImagePath());\n        _event.m.Bowyer.worsenMood(2.0, \"Was denied a request\");\n        if (_event.m.Bowyer.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"D\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]You tell the bowyer that the %companyname% has no resources to spare. The man grinds his teeth, and apparently whatever words he had to say, for he says nothing and turns on his heels and stomps off. In the distance you finally hear what kindness he had in store for you - a litany of swearing and cursing and eventually moaning disappointment.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Pull yourself together.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Bowyer.getImagePath());\n            _event.m.Bowyer.worsenMood(2.0, \"Was denied a request\");\n            if (_event.m.Bowyer.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Bowyer.getMoodState()]\n                    text = _event.m.Bowyer.getName() + this.Const.MoodStateEvent[_event.m.Bowyer.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n    return;\n}"
  },
  {
    "key": "44694e3fa3ecda5522ef9694f19880cf3894afbb75b24ec61ad4eb5a0a4cbcbb",
    "original": "Created a masterwork",
    "translation": "",
    "context": ""
  },
  {
    "key": "3f39d5c348e5b79d06e842c114e6cc571583bbf44e4b0ebfda1a01ec05745d43",
    "original": "D",
    "translation": "",
    "context": "ID = \"D\""
  },
  {
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "cbb705ccfd53d688000886ee43c3c76b9fbea62b94dae0ccdaf7799ad36184e2",
    "original": "Failed in creating a masterwork",
    "translation": "",
    "context": ""
  },
  {
    "key": "6b118b956275d543519a85c4df5537a33c90edaae9b716b230d8251a5648fc69",
    "original": "I see now why you're no longer working as a bowyer.",
    "translation": "",
    "context": "Text = \"I see now why you're no longer working as a bowyer.\""
  },
  {
    "key": "1cbfaa19a105f74b7edc1439ddee624b740e9deb38fbafa4f3c45d191aaf8185",
    "original": "Pull yourself together.",
    "translation": "",
    "context": "Text = \"Pull yourself together.\""
  },
  {
    "key": "5b48fbf133a1e811bb8b827b626a38f2eafac1fea2cb5d63baa3fcd54302e8dc",
    "original": "Was denied a request",
    "translation": "",
    "context": ""
  },
  {
    "key": "038fa730a0790ee755634b9e50b05fbc5500ee983f3185cf8c0edb11392be6c6",
    "original": "We don't have time for this.",
    "translation": "",
    "context": "Text = \"We don't have time for this.\""
  },
  {
    "key": "85d13cf4d5f8d972cb9d6de67c9cc3128758d8462dd3293693b2bcc94257ec0e",
    "original": "You gain ",
    "translation": "",
    "context": "\"You gain \" + item.getName()"
  },
  {
    "key": "206a22ae79743f3b9862628939132ec211d951f223ce6d2a7b925ba56a76f2d9",
    "original": "You lose ",
    "translation": "",
    "context": "\"You lose \" + item.getName()"
  },
  {
    "key": "a13fe5411cacd783f255c572bdc6c56739d54be420a516b38fb8ae49baa5a6d3",
    "original": "You spend [color=",
    "translation": "",
    "context": "\"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\""
  },
  {
    "key": "9497473de196f0eddba6f46d4ea5fe7fa4cc177efdf1664aa3a82a987cdc13a4",
    "original": "[img]gfx/ui/events/event_05.png[/img]%bowyer% the bowyer comes to you with a bit of request: he wishes to build a weapon for the ages. Apparently, the man has been attempting to build a bow of legendary qualities for many years, but now that he has been on the road he's picked up a few things to fill in his gaps of knowledge. Truly, he believes he can get it right this time. All he needs is a few resources to help procure the elements needed to construct it. A sum of 500 crowns is what he humbly requests, and the quality wood you carry.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]%bowyer% the bowyer comes to you with a bit of request: he wishes to build a weapon for the ages. Apparently, the man has been attempting to build a bow of legendary qualities for many years, but now that he has been on the road he's picked up a few things to fill in his gaps of knowledge. Truly, he believes he can get it right this time. All he needs is a few resources to help procure the elements needed to construct it. A sum of 500 crowns is what he humbly requests, and the quality wood you carry.\""
  },
  {
    "key": "7f1824f3b243143c9bba7a8ece80019d5ad536f65fcc9749c3d76d3157fb5117",
    "original": "[img]gfx/ui/events/event_05.png[/img]Is this thing a wild experiment? The wood cricks and cracks when bent, the string frizzes and goes wiry every time you draw it back, and you swear you saw a termite poking its head out of the shaft. Every tested arrow goes haywire, skirting this way or that, anywhere but its supposed target.\n\nYou ease the bowyer's pain by blaming yourself for how inaccurate the weapon is, but %otherguy1% and %otherguy2% both give it a try and come to even worse results. The bowyer eventually shuffles off, cradling his construction in his arms before tossing it onto the stockpile of weapons where you'd wish it'd look just like any other bow, but its obscene ugliness makes it stick out like a hot coal on a haystack. Surely no man will be accidentally wielding that thing!",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]Is this thing a wild experiment? The wood cricks and cracks when bent, the string frizzes and goes wiry every time you draw it back, and you swear you saw a termite poking its head out of the shaft. Every tested arrow goes haywire, skirting this way or that, anywhere but its supposed target.\\n\\nYou ease the bowyer's pain by blaming yourself for how inaccurate the weapon is, but %otherguy1% and %otherguy2% both give it a try and come to even worse results. The bowyer eventually shuffles off, cradling his construction in his arms before tossing it onto the stockpile of weapons where you'd wish it'd look just like any other bow, but its obscene ugliness makes it stick out like a hot coal on a haystack. Surely no man will be accidentally wielding that thing!\""
  },
  {
    "key": "009d1653bf884da5c76bc6dd584a456460e0cabd7c53c01fc84d6cd8971dabeb",
    "original": "[img]gfx/ui/events/event_05.png[/img]You tell the bowyer that the %companyname% has no resources to spare. The man grinds his teeth, and apparently whatever words he had to say, for he says nothing and turns on his heels and stomps off. In the distance you finally hear what kindness he had in store for you - a litany of swearing and cursing and eventually moaning disappointment.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]You tell the bowyer that the %companyname% has no resources to spare. The man grinds his teeth, and apparently whatever words he had to say, for he says nothing and turns on his heels and stomps off. In the distance you finally hear what kindness he had in store for you - a litany of swearing and cursing and eventually moaning disappointment.\""
  },
  {
    "key": "41634b087b14e2ef6e549d30969e8986ef368cda1885827275658096cdcaa478",
    "original": "[img]gfx/ui/events/event_05.png[/img]{The bow isn't quite legendary, but it is quite good. It's light in the grip, easily spun from side to side with the air whistling as it whirls. You test the draw. A strong man will be required to wield it that is for sure. When you loose an arrow, the shaft travels unbelievably straight and the shot almost seems to aim itself. A brilliant weapon if you ever saw one! | The bow was constructed with a mix of woods whose names you do not know. Colors of this tree and that spiral through the curve of the weapon, looking arboreally damascened. Testing the draw, the string proves itself mighty. You're no marksman, but when you loose an arrow it almost seems to guide itself to its target. A terrific weapon, if for no other reason it made you look better than you really are. You congratulate the bowyer.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]{The bow isn't quite legendary, but it is quite good. It's light in the grip, easily spun from side to side with the air whistling as it whirls. You test the draw. A strong man will be required to wield it that is for sure. When you loose an arrow, the shaft travels unbelievably straight and the shot almost seems to aim itself. A brilliant weapon if you ever saw one! | The bow was constructed with a mix of woods whose names you do not know. Colors of this tree and that spiral through the curve of the weapon, looking arboreally damascened. Testing the draw, the string proves itself mighty. You're no marksman, but when you loose an arrow it almost seems to guide itself to its target. A terrific weapon, if for no other reason it made you look better than you really are. You congratulate the bowyer.}\""
  },
  {
    "key": "5076c811af44eba319a7c380d69d5432e23a681021f4d45b5c0a88dbe01ca62f",
    "original": "]500[/color] Crowns",
    "translation": "",
    "context": "\"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]500[/color] Crowns\""
  },
  {
    "key": "b50c6fb48f538ec9435c6cf0cb2e3573609e75a66d0af8e9dd48ab24a9c5af16",
    "original": "bowyer",
    "translation": "",
    "context": ""
  },
  {
    "key": "38bf5f444e07f3408b00a33e5142f502c6d31be247b021a4e24a0c13f14e46e2",
    "original": "otherguy1",
    "translation": "",
    "context": ""
  },
  {
    "key": "b34228e9550269c1376b80161ef91e599285450fdf76e20fd3acb7a3f397bed5",
    "original": "otherguy2",
    "translation": "",
    "context": ""
  }
]