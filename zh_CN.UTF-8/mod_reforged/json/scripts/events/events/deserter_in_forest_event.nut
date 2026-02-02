[
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "ae31efc9bb7ce0a89c17317e6d702b0584f6bd73fe7518a2ae9d3464a76b1d5b",
    "original": "Along the way...",
    "translation": "",
    "context": "this.m.Title = \"Along the way...\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.deserter_in_forest\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 200.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_25.png[/img]While trundling through the forest, birds suddenly scatter into the sky, shaking the trees and branches with the very frightful urgency of their leaving. Not a moment later does a man come barreling through a bush, looking more flash flood than flesh and blood. He seizes up, this earthen golem, and begs you to hide him.%SPEECH_ON%Look, I'll be perfectly honest. I'm a deserter. That's that. I didn't, I mean, alright I don't really have a defense. But look, what are you? Mercenaries? Great! Hide me and I'll fight for you to the end of time!%SPEECH_OFF%Halfway through his pleading spiel, you hear dogs barking in the distance. The man instinctively hides away into an arboreal cubby, quickly covering himself with dirt. He nods as if to say you've already come to an agreement.\\n\\n Bounty hunters come through the tree line, their dogs already sniffing around. Their lieutenant looks around.%SPEECH_ON%Don't even try to fool me, sellsword. I know that deserter came this way. Two hundred crowns for his head. Where is he?%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"He's right there, take him.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        },{\n            Text = \"What? Who? Where?\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.getPlayerRoster().add(_event.m.Dude);\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude.onHired();\n        return 0;;\n        return;\n    };\n    function getResult(_event){\n        this.World.getTemporaryRoster().clear();\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local roster = this.World.getTemporaryRoster();\n        _event.m.Dude = roster.create(\"scripts/entity/tactical/player\");\n        _event.m.Dude.setStartValuesEx([\"deserter_background\"]);\n        _event.m.Dude.getBackground().m.RawDescription = \"You found %name% the deserter being chased through the forest. Though bounty hunters were hot on his trail, you elected to defend him and for that he swore an oath to you.\";\n        _event.m.Dude.getBackground().buildDescription(True);\n        this.Characters.push(_event.m.Dude.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_25.png[/img]You spit and shake your head.%SPEECH_ON%I've not the faintest farkin' clue what you're talking about, bounty hunter.%SPEECH_OFF%The lieutenant eyes you up, staring you down with an old man's wisdom.%SPEECH_ON%Alright, mercenary. So be it. I know you're lying, but there's not much I can do about it.%SPEECH_OFF%The bounty hunter looses a sharp whistle and orders his band of men forth. The dogs bark briefly at the cubby where the deserter had hidden. Laughing, the lieutenant mockingly wishes you the best.\\n\\n With his hunters gone, the deserter emerges.%SPEECH_ON%Thank you, mercenary. I owe you my life! You'll not regret this, not ever!%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I better not reget this. Welcome to the company.\"\n            getResult = function getResult(_event){\n                this.World.getPlayerRoster().add(_event.m.Dude);\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude.onHired();\n                return 0;;\n                return;\n            }\n        },{\n            Text = \"Keep on running. We have no place for a deserter.\"\n            getResult = function getResult(_event){\n                this.World.getTemporaryRoster().clear();\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local roster = this.World.getTemporaryRoster();\n            _event.m.Dude = roster.create(\"scripts/entity/tactical/player\");\n            _event.m.Dude.setStartValuesEx([\"deserter_background\"]);\n            _event.m.Dude.getBackground().m.RawDescription = \"You found %name% the deserter being chased through the forest. Though bounty hunters were hot on his trail, you elected to defend him and for that he swore an oath to you.\";\n            _event.m.Dude.getBackground().buildDescription(True);\n            this.Characters.push(_event.m.Dude.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.World.Assets.addMoney(200);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]200[/color] Crowns\"\n        });\n        local brothers = this.World.getPlayerRoster().getAll();\n        foreach( bro in brothers){\n            if (bro.getBackground().getID() == \"background.deserter\") {\n                bro.worsenMood(0.5, \"You gave up a deserter to bounty hunters\");\n                if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                    this.List.push({\n                        id = 10\n                        icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                        text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                    })\n                }\n            }\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_25.png[/img]You nod to where the deserter is hiding. He must have kept one distrusting eye on you because he immediately jumps out of the hole and goes fleeing. The dogs run him down with ease, glomming onto him with caninal ferocity and dragging his screaming ass to the ground. Before you can even so much as laugh, the bounty hunter puts a bag of crowns into your palm.%SPEECH_ON%That's half my cut, but without the happenstance of your being here, I'm not sure we would have caught that wily bastard.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Just doing my part.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.World.Assets.addMoney(200);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]200[/color] Crowns\"\n            });\n            local brothers = this.World.getPlayerRoster().getAll();\n            foreach( bro in brothers){\n                if (bro.getBackground().getID() == \"background.deserter\") {\n                    bro.worsenMood(0.5, \"You gave up a deserter to bounty hunters\");\n                    if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                        this.List.push({\n                            id = 10\n                            icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                            text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                        })\n                    }\n                }\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return \"C\";;\n    return;\n}"
  },
  {
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.deserter_in_forest\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 200.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_25.png[/img]While trundling through the forest, birds suddenly scatter into the sky, shaking the trees and branches with the very frightful urgency of their leaving. Not a moment later does a man come barreling through a bush, looking more flash flood than flesh and blood. He seizes up, this earthen golem, and begs you to hide him.%SPEECH_ON%Look, I'll be perfectly honest. I'm a deserter. That's that. I didn't, I mean, alright I don't really have a defense. But look, what are you? Mercenaries? Great! Hide me and I'll fight for you to the end of time!%SPEECH_OFF%Halfway through his pleading spiel, you hear dogs barking in the distance. The man instinctively hides away into an arboreal cubby, quickly covering himself with dirt. He nods as if to say you've already come to an agreement.\\n\\n Bounty hunters come through the tree line, their dogs already sniffing around. Their lieutenant looks around.%SPEECH_ON%Don't even try to fool me, sellsword. I know that deserter came this way. Two hundred crowns for his head. Where is he?%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"He's right there, take him.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        },{\n            Text = \"What? Who? Where?\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.getPlayerRoster().add(_event.m.Dude);\n        this.World.getTemporaryRoster().clear();\n        _event.m.Dude.onHired();\n        return 0;;\n        return;\n    };\n    function getResult(_event){\n        this.World.getTemporaryRoster().clear();\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local roster = this.World.getTemporaryRoster();\n        _event.m.Dude = roster.create(\"scripts/entity/tactical/player\");\n        _event.m.Dude.setStartValuesEx([\"deserter_background\"]);\n        _event.m.Dude.getBackground().m.RawDescription = \"You found %name% the deserter being chased through the forest. Though bounty hunters were hot on his trail, you elected to defend him and for that he swore an oath to you.\";\n        _event.m.Dude.getBackground().buildDescription(True);\n        this.Characters.push(_event.m.Dude.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_25.png[/img]You spit and shake your head.%SPEECH_ON%I've not the faintest farkin' clue what you're talking about, bounty hunter.%SPEECH_OFF%The lieutenant eyes you up, staring you down with an old man's wisdom.%SPEECH_ON%Alright, mercenary. So be it. I know you're lying, but there's not much I can do about it.%SPEECH_OFF%The bounty hunter looses a sharp whistle and orders his band of men forth. The dogs bark briefly at the cubby where the deserter had hidden. Laughing, the lieutenant mockingly wishes you the best.\\n\\n With his hunters gone, the deserter emerges.%SPEECH_ON%Thank you, mercenary. I owe you my life! You'll not regret this, not ever!%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I better not reget this. Welcome to the company.\"\n            getResult = function getResult(_event){\n                this.World.getPlayerRoster().add(_event.m.Dude);\n                this.World.getTemporaryRoster().clear();\n                _event.m.Dude.onHired();\n                return 0;;\n                return;\n            }\n        },{\n            Text = \"Keep on running. We have no place for a deserter.\"\n            getResult = function getResult(_event){\n                this.World.getTemporaryRoster().clear();\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local roster = this.World.getTemporaryRoster();\n            _event.m.Dude = roster.create(\"scripts/entity/tactical/player\");\n            _event.m.Dude.setStartValuesEx([\"deserter_background\"]);\n            _event.m.Dude.getBackground().m.RawDescription = \"You found %name% the deserter being chased through the forest. Though bounty hunters were hot on his trail, you elected to defend him and for that he swore an oath to you.\";\n            _event.m.Dude.getBackground().buildDescription(True);\n            this.Characters.push(_event.m.Dude.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.World.Assets.addMoney(200);\n        this.List.push({\n            id = 10\n            icon = \"ui/icons/asset_money.png\"\n            text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]200[/color] Crowns\"\n        });\n        local brothers = this.World.getPlayerRoster().getAll();\n        foreach( bro in brothers){\n            if (bro.getBackground().getID() == \"background.deserter\") {\n                bro.worsenMood(0.5, \"You gave up a deserter to bounty hunters\");\n                if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                    this.List.push({\n                        id = 10\n                        icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                        text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                    })\n                }\n            }\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_25.png[/img]You nod to where the deserter is hiding. He must have kept one distrusting eye on you because he immediately jumps out of the hole and goes fleeing. The dogs run him down with ease, glomming onto him with caninal ferocity and dragging his screaming ass to the ground. Before you can even so much as laugh, the bounty hunter puts a bag of crowns into your palm.%SPEECH_ON%That's half my cut, but without the happenstance of your being here, I'm not sure we would have caught that wily bastard.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Just doing my part.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.World.Assets.addMoney(200);\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/asset_money.png\"\n                text = \"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]200[/color] Crowns\"\n            });\n            local brothers = this.World.getPlayerRoster().getAll();\n            foreach( bro in brothers){\n                if (bro.getBackground().getID() == \"background.deserter\") {\n                    bro.worsenMood(0.5, \"You gave up a deserter to bounty hunters\");\n                    if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                        this.List.push({\n                            id = 10\n                            icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                            text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                        })\n                    }\n                }\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "a033710da97c453523803f0d2ffaafc8c87286f5b4be434fe724d5981afa39f7",
    "original": "He's right there, take him.",
    "translation": "",
    "context": "Text = \"He's right there, take him.\""
  },
  {
    "key": "85fd02af11d2e2a73a66b65b8513979571c2a8a5d6111264ee3d8b63bae1756e",
    "original": "I better not reget this. Welcome to the company.",
    "translation": "",
    "context": "Text = \"I better not reget this. Welcome to the company.\""
  },
  {
    "key": "d3de5147a314eec226056ae64486afba53cddf6f2a540f005c51e64d0f2231d1",
    "original": "Just doing my part.",
    "translation": "",
    "context": "Text = \"Just doing my part.\""
  },
  {
    "key": "0aa2993140943eb7de191cfb799fde70a5def68016967f5f3a09b0a725786a76",
    "original": "Keep on running. We have no place for a deserter.",
    "translation": "",
    "context": "Text = \"Keep on running. We have no place for a deserter.\""
  },
  {
    "key": "7b88940634060dea09521704b49615187f80a6dcbc2a994b7f1b4ff8aa798f48",
    "original": "What? Who? Where?",
    "translation": "",
    "context": "Text = \"What? Who? Where?\""
  },
  {
    "key": "5a5141278c3eed3f6d886fdff69aea332392a51f7d8b5a87f9d9df4de1967501",
    "original": "You found %name% the deserter being chased through the forest. Though bounty hunters were hot on his trail, you elected to defend him and for that he swore an oath to you.",
    "translation": "",
    "context": "_event.m.Dude.getBackground().m.RawDescription = \"You found %name% the deserter being chased through the forest. Though bounty hunters were hot on his trail, you elected to defend him and for that he swore an oath to you.\""
  },
  {
    "key": "75c45e6b8866c7aacf8d3a14cae5d644d278d2f53ab2cc835118e64cc9d12404",
    "original": "You gain [color=",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]200[/color] Crowns\""
  },
  {
    "key": "c8f8f59daabcf5c4820d4e85c52bde93e47996966b72ebfb1c77492c45343aad",
    "original": "You gave up a deserter to bounty hunters",
    "translation": "",
    "context": ""
  },
  {
    "key": "b4e0577cb2b93fc146ed6273abf5c9ce23ba86b63fd9782eb2963a5c02b77586",
    "original": "[img]gfx/ui/events/event_25.png[/img]While trundling through the forest, birds suddenly scatter into the sky, shaking the trees and branches with the very frightful urgency of their leaving. Not a moment later does a man come barreling through a bush, looking more flash flood than flesh and blood. He seizes up, this earthen golem, and begs you to hide him.%SPEECH_ON%Look, I'll be perfectly honest. I'm a deserter. That's that. I didn't, I mean, alright I don't really have a defense. But look, what are you? Mercenaries? Great! Hide me and I'll fight for you to the end of time!%SPEECH_OFF%Halfway through his pleading spiel, you hear dogs barking in the distance. The man instinctively hides away into an arboreal cubby, quickly covering himself with dirt. He nods as if to say you've already come to an agreement.\n\n Bounty hunters come through the tree line, their dogs already sniffing around. Their lieutenant looks around.%SPEECH_ON%Don't even try to fool me, sellsword. I know that deserter came this way. Two hundred crowns for his head. Where is he?%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_25.png[/img]While trundling through the forest, birds suddenly scatter into the sky, shaking the trees and branches with the very frightful urgency of their leaving. Not a moment later does a man come barreling through a bush, looking more flash flood than flesh and blood. He seizes up, this earthen golem, and begs you to hide him.%SPEECH_ON%Look, I'll be perfectly honest. I'm a deserter. That's that. I didn't, I mean, alright I don't really have a defense. But look, what are you? Mercenaries? Great! Hide me and I'll fight for you to the end of time!%SPEECH_OFF%Halfway through his pleading spiel, you hear dogs barking in the distance. The man instinctively hides away into an arboreal cubby, quickly covering himself with dirt. He nods as if to say you've already come to an agreement.\\n\\n Bounty hunters come through the tree line, their dogs already sniffing around. Their lieutenant looks around.%SPEECH_ON%Don't even try to fool me, sellsword. I know that deserter came this way. Two hundred crowns for his head. Where is he?%SPEECH_OFF%\""
  },
  {
    "key": "38e3ec5ff64fa4974f3c54ebe2c5590aac599911af4f5c25f50601582fc2212c",
    "original": "[img]gfx/ui/events/event_25.png[/img]You nod to where the deserter is hiding. He must have kept one distrusting eye on you because he immediately jumps out of the hole and goes fleeing. The dogs run him down with ease, glomming onto him with caninal ferocity and dragging his screaming ass to the ground. Before you can even so much as laugh, the bounty hunter puts a bag of crowns into your palm.%SPEECH_ON%That's half my cut, but without the happenstance of your being here, I'm not sure we would have caught that wily bastard.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_25.png[/img]You nod to where the deserter is hiding. He must have kept one distrusting eye on you because he immediately jumps out of the hole and goes fleeing. The dogs run him down with ease, glomming onto him with caninal ferocity and dragging his screaming ass to the ground. Before you can even so much as laugh, the bounty hunter puts a bag of crowns into your palm.%SPEECH_ON%That's half my cut, but without the happenstance of your being here, I'm not sure we would have caught that wily bastard.%SPEECH_OFF%\""
  },
  {
    "key": "6f6b446a099b642a0cdba20dd5aa7271ec9f3a9b67249e6d79215255784b9964",
    "original": "[img]gfx/ui/events/event_25.png[/img]You spit and shake your head.%SPEECH_ON%I've not the faintest farkin' clue what you're talking about, bounty hunter.%SPEECH_OFF%The lieutenant eyes you up, staring you down with an old man's wisdom.%SPEECH_ON%Alright, mercenary. So be it. I know you're lying, but there's not much I can do about it.%SPEECH_OFF%The bounty hunter looses a sharp whistle and orders his band of men forth. The dogs bark briefly at the cubby where the deserter had hidden. Laughing, the lieutenant mockingly wishes you the best.\n\n With his hunters gone, the deserter emerges.%SPEECH_ON%Thank you, mercenary. I owe you my life! You'll not regret this, not ever!%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_25.png[/img]You spit and shake your head.%SPEECH_ON%I've not the faintest farkin' clue what you're talking about, bounty hunter.%SPEECH_OFF%The lieutenant eyes you up, staring you down with an old man's wisdom.%SPEECH_ON%Alright, mercenary. So be it. I know you're lying, but there's not much I can do about it.%SPEECH_OFF%The bounty hunter looses a sharp whistle and orders his band of men forth. The dogs bark briefly at the cubby where the deserter had hidden. Laughing, the lieutenant mockingly wishes you the best.\\n\\n With his hunters gone, the deserter emerges.%SPEECH_ON%Thank you, mercenary. I owe you my life! You'll not regret this, not ever!%SPEECH_OFF%\""
  },
  {
    "key": "2e97277b2848d34cc803843c712712dc067f37f3ab70bddca655b8335b9068d1",
    "original": "]200[/color] Crowns",
    "translation": "",
    "context": "\"You gain [color=\" + this.Const.UI.Color.PositiveEventValue + \"]200[/color] Crowns\""
  }
]