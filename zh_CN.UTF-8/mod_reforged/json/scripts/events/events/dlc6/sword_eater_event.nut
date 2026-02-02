[
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "1f1b8deaf876a9e0b37464f3a4181fc449364378095fb6adb35a1c8ab00ccc67",
    "original": "At %townname%",
    "translation": "",
    "context": "this.m.Title = \"At %townname%\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "start = function start(_event){\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    this.Options.push({\n        Text = \"Bravo! Here's a few coins for you.\"\n        getResult = function getResult(_event){\n            return \"B\";;\n            return;\n        }\n    });\n    if (_event.m.Wildman != null) {\n        function getResult(_event){\n            return \"C\";;\n            return;\n        };\n        this.Options.push({\n            Text = \"Bravo! Give that guy a few coins from me, %wildman%.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        })\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    this.Options.push({\n        Text = \"Interesting way to earn a living.\"\n        getResult = function getResult(_event){\n            return 0;;\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.sword_eater\";\n    this.m.Title = \"At %townname%\";\n    this.m.Cooldown = 60.0 * this.World.getTime().SecondsPerDay;\n    function start(_event){\n        function getResult(_event){\n            return \"B\";;\n            return;\n        };\n        this.Options.push({\n            Text = \"Bravo! Here's a few coins for you.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        });\n        if (_event.m.Wildman != null) {\n            function getResult(_event){\n                return \"C\";;\n                return;\n            };\n            this.Options.push({\n                Text = \"Bravo! Give that guy a few coins from me, %wildman%.\"\n                getResult = function getResult(_event){\n                    return \"C\";;\n                    return;\n                }\n            })\n        };\n        function getResult(_event){\n            return 0;;\n            return;\n        };\n        this.Options.push({\n            Text = \"Interesting way to earn a living.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_163.png[/img]{A sword eater is dancing around a plaza of %townname%. He holds out a blade about as thick as your pinky.%SPEECH_ON%As the Gilder sees me, I will eat this steel!%SPEECH_OFF%The man announces his intent, and follows through promptly: he arches his back, pinches the blade, and glides it into his mouth and onward and inward, his mouth puckering around the steel as though he were slurping noodles. The crowd at first gasps, but then the swallower gives two thumbs up and the onlookers cheer.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = []\n        start = function start(_event){\n            function getResult(_event){\n                return \"B\";;\n                return;\n            };\n            this.Options.push({\n                Text = \"Bravo! Here's a few coins for you.\"\n                getResult = function getResult(_event){\n                    return \"B\";;\n                    return;\n                }\n            });\n            if (_event.m.Wildman != null) {\n                function getResult(_event){\n                    return \"C\";;\n                    return;\n                };\n                this.Options.push({\n                    Text = \"Bravo! Give that guy a few coins from me, %wildman%.\"\n                    getResult = function getResult(_event){\n                        return \"C\";;\n                        return;\n                    }\n                })\n            };\n            function getResult(_event){\n                return 0;;\n                return;\n            };\n            this.Options.push({\n                Text = \"Interesting way to earn a living.\"\n                getResult = function getResult(_event){\n                    return 0;;\n                    return;\n                }\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.World.Assets.addMoney(-5);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\"\n        }];\n        _event.m.Town.getOwner().addPlayerRelation(5.0, \"Local entertainers spread the word about you\");\n        this.World.Assets.addBusinessReputation(this.Const.World.Assets.ReputationOnContractSuccess);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_163.png[/img]{You toss the man a few crowns. He pulls out his sword and places its tip upon his pate. The crowd cheers again. Grinning, the man talks as he balances the sword.%SPEECH_ON%I see your banner, Crownling. I'm no warrior, but I am a traveler and well enough speaker. Though I seek to impress for personal gain, I will on occasion make sure to put in a kind word for your company of coin-seeking misfits.%SPEECH_OFF%The swallower throws his arms wide and nods quickly. The blade plummets from his skull and falls deftly into his sheathe at his hip. Again, the crowd roars with delight and you can't help but think this entertainer is a man of his word.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"My sword is not so sharp, yet the ladies can't even do that?\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.World.Assets.addMoney(-5);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\"\n            }];\n            _event.m.Town.getOwner().addPlayerRelation(5.0, \"Local entertainers spread the word about you\");\n            this.World.Assets.addBusinessReputation(this.Const.World.Assets.ReputationOnContractSuccess);\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Wildman.getImagePath());\n        this.World.Assets.addMoney(-5);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\"\n        }];\n        local item = this.new(\"scripts/items/weapons/fencing_sword\");\n        item.setCondition(this.Math.max(1, item.getConditionMax() * this.Math.rand(10, 40) * 0.009999999776482582));\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n        });\n        _event.m.Town.getOwner().addPlayerRelation(-10.0, \"Rumor is that a local entertainer was killed by one of your men\");\n        this.World.Flags.set(\"IsSwordEaterWildmanDone\", True);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_163.png[/img]{You hand %wildman% a few crowns and tell him to tip the entertainer. He grunts and heads over, then you realize that wasn't just any sellsword you beckoned, but %wildman% the wildman! Before you can stop him, he pushes the sword swallower over. There are cries, screams, and blood gargling death throes, but the crowd sweeps in front of the action and blocks the view. The way it is relayed to you is that the blade came out the swallower's front with straps of esophagus or stomach hanging off it. You know this, because the wildman made sure to bring back the sword himself and you had to have it cleaned.\\n\\n How exactly he retrieved the blade during those moments of carnage is beyond you, though you imagine he escaped the ferocity of the crowd by sheer will, determination, and complete absence of moral judgments which frightens men of normal sensibilities. You ask a few of the sellswords to hide the wildman away as he'll need to lay low for a while.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Good job, but also bad job.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Wildman.getImagePath());\n            this.World.Assets.addMoney(-5);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\"\n            }];\n            local item = this.new(\"scripts/items/weapons/fencing_sword\");\n            item.setCondition(this.Math.max(1, item.getConditionMax() * this.Math.rand(10, 40) * 0.009999999776482582));\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n            });\n            _event.m.Town.getOwner().addPlayerRelation(-10.0, \"Rumor is that a local entertainer was killed by one of your men\");\n            this.World.Flags.set(\"IsSwordEaterWildmanDone\", True);\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "dadc812a45d6b1e15aa36a1f047bb5655e44d166defd0aca9515db5d5f391c4e",
    "original": "Bravo! Give that guy a few coins from me, %wildman%.",
    "translation": "",
    "context": "Text = \"Bravo! Give that guy a few coins from me, %wildman%.\""
  },
  {
    "key": "0731892d0892b2bc323f2cf160dc5192beb25373a9a2e47ebae46c9b0d6c27c7",
    "original": "Bravo! Here's a few coins for you.",
    "translation": "",
    "context": "Text = \"Bravo! Here's a few coins for you.\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.sword_eater\";\n    this.m.Title = \"At %townname%\";\n    this.m.Cooldown = 60.0 * this.World.getTime().SecondsPerDay;\n    function start(_event){\n        function getResult(_event){\n            return \"B\";;\n            return;\n        };\n        this.Options.push({\n            Text = \"Bravo! Here's a few coins for you.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        });\n        if (_event.m.Wildman != null) {\n            function getResult(_event){\n                return \"C\";;\n                return;\n            };\n            this.Options.push({\n                Text = \"Bravo! Give that guy a few coins from me, %wildman%.\"\n                getResult = function getResult(_event){\n                    return \"C\";;\n                    return;\n                }\n            })\n        };\n        function getResult(_event){\n            return 0;;\n            return;\n        };\n        this.Options.push({\n            Text = \"Interesting way to earn a living.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_163.png[/img]{A sword eater is dancing around a plaza of %townname%. He holds out a blade about as thick as your pinky.%SPEECH_ON%As the Gilder sees me, I will eat this steel!%SPEECH_OFF%The man announces his intent, and follows through promptly: he arches his back, pinches the blade, and glides it into his mouth and onward and inward, his mouth puckering around the steel as though he were slurping noodles. The crowd at first gasps, but then the swallower gives two thumbs up and the onlookers cheer.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = []\n        start = function start(_event){\n            function getResult(_event){\n                return \"B\";;\n                return;\n            };\n            this.Options.push({\n                Text = \"Bravo! Here's a few coins for you.\"\n                getResult = function getResult(_event){\n                    return \"B\";;\n                    return;\n                }\n            });\n            if (_event.m.Wildman != null) {\n                function getResult(_event){\n                    return \"C\";;\n                    return;\n                };\n                this.Options.push({\n                    Text = \"Bravo! Give that guy a few coins from me, %wildman%.\"\n                    getResult = function getResult(_event){\n                        return \"C\";;\n                        return;\n                    }\n                })\n            };\n            function getResult(_event){\n                return 0;;\n                return;\n            };\n            this.Options.push({\n                Text = \"Interesting way to earn a living.\"\n                getResult = function getResult(_event){\n                    return 0;;\n                    return;\n                }\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.World.Assets.addMoney(-5);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\"\n        }];\n        _event.m.Town.getOwner().addPlayerRelation(5.0, \"Local entertainers spread the word about you\");\n        this.World.Assets.addBusinessReputation(this.Const.World.Assets.ReputationOnContractSuccess);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_163.png[/img]{You toss the man a few crowns. He pulls out his sword and places its tip upon his pate. The crowd cheers again. Grinning, the man talks as he balances the sword.%SPEECH_ON%I see your banner, Crownling. I'm no warrior, but I am a traveler and well enough speaker. Though I seek to impress for personal gain, I will on occasion make sure to put in a kind word for your company of coin-seeking misfits.%SPEECH_OFF%The swallower throws his arms wide and nods quickly. The blade plummets from his skull and falls deftly into his sheathe at his hip. Again, the crowd roars with delight and you can't help but think this entertainer is a man of his word.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"My sword is not so sharp, yet the ladies can't even do that?\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.World.Assets.addMoney(-5);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\"\n            }];\n            _event.m.Town.getOwner().addPlayerRelation(5.0, \"Local entertainers spread the word about you\");\n            this.World.Assets.addBusinessReputation(this.Const.World.Assets.ReputationOnContractSuccess);\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Wildman.getImagePath());\n        this.World.Assets.addMoney(-5);\n        this.List = [{\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\"\n        }];\n        local item = this.new(\"scripts/items/weapons/fencing_sword\");\n        item.setCondition(this.Math.max(1, item.getConditionMax() * this.Math.rand(10, 40) * 0.009999999776482582));\n        this.World.Assets.getStash().add(item);\n        this.List.push({\n            id = 10\n            icon = \"ui/items/\" + item.getIcon()\n            text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n        });\n        _event.m.Town.getOwner().addPlayerRelation(-10.0, \"Rumor is that a local entertainer was killed by one of your men\");\n        this.World.Flags.set(\"IsSwordEaterWildmanDone\", True);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_163.png[/img]{You hand %wildman% a few crowns and tell him to tip the entertainer. He grunts and heads over, then you realize that wasn't just any sellsword you beckoned, but %wildman% the wildman! Before you can stop him, he pushes the sword swallower over. There are cries, screams, and blood gargling death throes, but the crowd sweeps in front of the action and blocks the view. The way it is relayed to you is that the blade came out the swallower's front with straps of esophagus or stomach hanging off it. You know this, because the wildman made sure to bring back the sword himself and you had to have it cleaned.\\n\\n How exactly he retrieved the blade during those moments of carnage is beyond you, though you imagine he escaped the ferocity of the crowd by sheer will, determination, and complete absence of moral judgments which frightens men of normal sensibilities. You ask a few of the sellswords to hide the wildman away as he'll need to lay low for a while.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Good job, but also bad job.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Wildman.getImagePath());\n            this.World.Assets.addMoney(-5);\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\"\n            }];\n            local item = this.new(\"scripts/items/weapons/fencing_sword\");\n            item.setCondition(this.Math.max(1, item.getConditionMax() * this.Math.rand(10, 40) * 0.009999999776482582));\n            this.World.Assets.getStash().add(item);\n            this.List.push({\n                id = 10\n                icon = \"ui/items/\" + item.getIcon()\n                text = \"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()\n            });\n            _event.m.Town.getOwner().addPlayerRelation(-10.0, \"Rumor is that a local entertainer was killed by one of your men\");\n            this.World.Flags.set(\"IsSwordEaterWildmanDone\", True);\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "start = function start(_event){\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    this.Options.push({\n        Text = \"Bravo! Here's a few coins for you.\"\n        getResult = function getResult(_event){\n            return \"B\";;\n            return;\n        }\n    });\n    if (_event.m.Wildman != null) {\n        function getResult(_event){\n            return \"C\";;\n            return;\n        };\n        this.Options.push({\n            Text = \"Bravo! Give that guy a few coins from me, %wildman%.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        })\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    this.Options.push({\n        Text = \"Interesting way to earn a living.\"\n        getResult = function getResult(_event){\n            return 0;;\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "006a4f4bb4b5e6780756a927731a07b890306203399eecfa2b78fa536dfbb0d3",
    "original": "Good job, but also bad job.",
    "translation": "",
    "context": "Text = \"Good job, but also bad job.\""
  },
  {
    "key": "7011a0dbf9c81e78287ac9b1ef2ba1c18eff49faf2eff06f75de4c8c216a9d71",
    "original": "Interesting way to earn a living.",
    "translation": "",
    "context": "Text = \"Interesting way to earn a living.\""
  },
  {
    "key": "e6f084684c965753b9af97beebe9af6b0c8b704149b406c0ff1129a0ad80b6a3",
    "original": "Local entertainers spread the word about you",
    "translation": "",
    "context": ""
  },
  {
    "key": "5dc3dac4e26d6115b198fe414a0588491edd3ebe26d873ccf2f5147d11b72a7d",
    "original": "My sword is not so sharp, yet the ladies can't even do that?",
    "translation": "",
    "context": "Text = \"My sword is not so sharp, yet the ladies can't even do that?\""
  },
  {
    "key": "e95bbb6bc99cd82d2afbf9461f7af99e859a4c15f740a869644e0558d722a73b",
    "original": "Rumor is that a local entertainer was killed by one of your men",
    "translation": "",
    "context": ""
  },
  {
    "key": "85d13cf4d5f8d972cb9d6de67c9cc3128758d8462dd3293693b2bcc94257ec0e",
    "original": "You gain ",
    "translation": "",
    "context": "\"You gain \" + this.Const.Strings.getArticle(item.getName()) + item.getName()"
  },
  {
    "key": "a13fe5411cacd783f255c572bdc6c56739d54be420a516b38fb8ae49baa5a6d3",
    "original": "You spend [color=",
    "translation": "",
    "context": "\"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\""
  },
  {
    "key": "d853f4f8bcb80766d91a4d393a9264a5261195f80e645c32529dc542e6e3003a",
    "original": "[img]gfx/ui/events/event_163.png[/img]{A sword eater is dancing around a plaza of %townname%. He holds out a blade about as thick as your pinky.%SPEECH_ON%As the Gilder sees me, I will eat this steel!%SPEECH_OFF%The man announces his intent, and follows through promptly: he arches his back, pinches the blade, and glides it into his mouth and onward and inward, his mouth puckering around the steel as though he were slurping noodles. The crowd at first gasps, but then the swallower gives two thumbs up and the onlookers cheer.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_163.png[/img]{A sword eater is dancing around a plaza of %townname%. He holds out a blade about as thick as your pinky.%SPEECH_ON%As the Gilder sees me, I will eat this steel!%SPEECH_OFF%The man announces his intent, and follows through promptly: he arches his back, pinches the blade, and glides it into his mouth and onward and inward, his mouth puckering around the steel as though he were slurping noodles. The crowd at first gasps, but then the swallower gives two thumbs up and the onlookers cheer.}\""
  },
  {
    "key": "e2ba19d6c93a3a76773ec4fe680b65d92278ea0dd722b35fec0457cd1e3183d3",
    "original": "[img]gfx/ui/events/event_163.png[/img]{You hand %wildman% a few crowns and tell him to tip the entertainer. He grunts and heads over, then you realize that wasn't just any sellsword you beckoned, but %wildman% the wildman! Before you can stop him, he pushes the sword swallower over. There are cries, screams, and blood gargling death throes, but the crowd sweeps in front of the action and blocks the view. The way it is relayed to you is that the blade came out the swallower's front with straps of esophagus or stomach hanging off it. You know this, because the wildman made sure to bring back the sword himself and you had to have it cleaned.\n\n How exactly he retrieved the blade during those moments of carnage is beyond you, though you imagine he escaped the ferocity of the crowd by sheer will, determination, and complete absence of moral judgments which frightens men of normal sensibilities. You ask a few of the sellswords to hide the wildman away as he'll need to lay low for a while.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_163.png[/img]{You hand %wildman% a few crowns and tell him to tip the entertainer. He grunts and heads over, then you realize that wasn't just any sellsword you beckoned, but %wildman% the wildman! Before you can stop him, he pushes the sword swallower over. There are cries, screams, and blood gargling death throes, but the crowd sweeps in front of the action and blocks the view. The way it is relayed to you is that the blade came out the swallower's front with straps of esophagus or stomach hanging off it. You know this, because the wildman made sure to bring back the sword himself and you had to have it cleaned.\\n\\n How exactly he retrieved the blade during those moments of carnage is beyond you, though you imagine he escaped the ferocity of the crowd by sheer will, determination, and complete absence of moral judgments which frightens men of normal sensibilities. You ask a few of the sellswords to hide the wildman away as he'll need to lay low for a while.}\""
  },
  {
    "key": "78c313c9e4a8ffc8a7b89173c2a77d417abdb9ee47f82914f1e61a1af74d197a",
    "original": "[img]gfx/ui/events/event_163.png[/img]{You toss the man a few crowns. He pulls out his sword and places its tip upon his pate. The crowd cheers again. Grinning, the man talks as he balances the sword.%SPEECH_ON%I see your banner, Crownling. I'm no warrior, but I am a traveler and well enough speaker. Though I seek to impress for personal gain, I will on occasion make sure to put in a kind word for your company of coin-seeking misfits.%SPEECH_OFF%The swallower throws his arms wide and nods quickly. The blade plummets from his skull and falls deftly into his sheathe at his hip. Again, the crowd roars with delight and you can't help but think this entertainer is a man of his word.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_163.png[/img]{You toss the man a few crowns. He pulls out his sword and places its tip upon his pate. The crowd cheers again. Grinning, the man talks as he balances the sword.%SPEECH_ON%I see your banner, Crownling. I'm no warrior, but I am a traveler and well enough speaker. Though I seek to impress for personal gain, I will on occasion make sure to put in a kind word for your company of coin-seeking misfits.%SPEECH_OFF%The swallower throws his arms wide and nods quickly. The blade plummets from his skull and falls deftly into his sheathe at his hip. Again, the crowd roars with delight and you can't help but think this entertainer is a man of his word.}\""
  },
  {
    "key": "5d23c83cc8c976ba6de2bfd671479c3d22ab69fa384fd0d5d313bb7a9a1ae5b0",
    "original": "]5[/color] Crowns",
    "translation": "",
    "context": "\"You spend [color=\" + this.Const.UI.Color.NegativeEventValue + \"]5[/color] Crowns\""
  },
  {
    "key": "cce8cfe2ad73528fe61142ab4f5cda39410f936f701b34c2a94f736ac0a8797d",
    "original": "townname",
    "translation": "",
    "context": ""
  },
  {
    "key": "8b5e678f62578828f7bea930e7ba16e36291fc403e14f60f54edce8a4de2c316",
    "original": "wildman",
    "translation": "",
    "context": ""
  }
]