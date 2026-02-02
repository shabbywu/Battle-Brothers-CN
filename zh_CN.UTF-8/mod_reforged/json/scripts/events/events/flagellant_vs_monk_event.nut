[
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Monk.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\""
  },
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Flagellant.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\""
  },
  {
    "key": "d5ba394caccbc75aa5887fe2aeed9597062f0bc5f9f20338f4bc13a8d63a74f5",
    "original": " is now a Monk turned Flagellant",
    "translation": "",
    "context": "_event.m.Monk.getName() + \" is now a Monk turned Flagellant\""
  },
  {
    "key": "306bb23798983450288698d4f0627ad54f0ca858bed8ca0f8e91d9bf0c090965",
    "original": " is now a Pacified Flagellant",
    "translation": "",
    "context": "_event.m.Flagellant.getName() + \" is now a Pacified Flagellant\""
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
    "key": "447d4c27ec1063898eca2b565dc700d91c531c4ab9044cdf14a66e8135466795",
    "original": "A man left to torture himself can find the truest of horrors.",
    "translation": "",
    "context": "Text = \"A man left to torture himself can find the truest of horrors.\""
  },
  {
    "key": "630150bd2a7d3a526f9c14cc54b3d32350b2c5f3a6fc84e3718ce7573439b1c1",
    "original": "Alright that's enough. We've got actual work to do.",
    "translation": "",
    "context": "Text = \"Alright that's enough. We've got actual work to do.\""
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.flagellant_vs_monk\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 45.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk.getImagePath());\n        this.Characters.push(_event.m.Flagellant.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]The campfire shines bright, twisting the faces of men in flowing orange as though they themselves were of burning stock.\\n\\n It is here you find %monk% and %flagellant% talking to one another. Their discussion is, at first, an easy one. The monk pleads with the flagellant to set aside his whip. While you don't necessarily wish to step in, you can't help but agree that destroying your own body on a glorified gore-schedule is not the best way to live. But then the flagellant retorts with something that gives you both pause. It is a phrase so well crafted that to think it might justify the man's personal habits has you pushing the notion out of your head as fast as possible. Disturbing, too, was the ease with which he said it. That such a soothing voice could be so warmly bundled in that scarred husk of flesh. What could muster it?\\n\\n The monk stammers for a moment, but then puts his hands to the flagellant's shoulders, holding him to keep their eyes on one another. He whispers, words which tickle your ears, but don't pronounce themselves loud enough to have real meaning. You can only assume they are meant to, once again, persuade the flagellant to a better, less violent life.\\n\\n But, again, the flagellant begins to respond and so back and forth they continue to go.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"This is fascinating. Let's see where it goes.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"Alright that's enough. We've got actual work to do.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk.getImagePath());\n            this.Characters.push(_event.m.Flagellant.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk.getImagePath());\n        this.Characters.push(_event.m.Flagellant.getImagePath());\n        local background = this.new(\"scripts/skills/backgrounds/pacified_flagellant_background\");\n        _event.m.Flagellant.getSkills().removeByID(\"background.flagellant\");\n        _event.m.Flagellant.getSkills().add(background);\n        _event.m.Flagellant.m.Background = background;\n        background.buildDescription();\n        this.List = [{\n            id = 13\n            icon = background.getIcon()\n            text = _event.m.Flagellant.getName() + \" is now a Pacified Flagellant\"\n        }];\n        _event.m.Monk.getBaseProperties()[4] += 2;\n        _event.m.Monk.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Monk.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]Deciding to let the men talk, you step away for a time. When you return, you find the flagellant sitting next to the monk. The two saw back and forth on a log, their hands clasped in prayer as whispers of heavenly words part their lips. You've no urge to get closer to hear what they are saying for it is a comforting sight in and of itself. While you have no dog in what way is best to appease the gods, you can't help but feel a little better seeing the flagellant put down his tools of self-torture.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"May the man find his peace now.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk.getImagePath());\n            this.Characters.push(_event.m.Flagellant.getImagePath());\n            local background = this.new(\"scripts/skills/backgrounds/pacified_flagellant_background\");\n            _event.m.Flagellant.getSkills().removeByID(\"background.flagellant\");\n            _event.m.Flagellant.getSkills().add(background);\n            _event.m.Flagellant.m.Background = background;\n            background.buildDescription();\n            this.List = [{\n                id = 13\n                icon = background.getIcon()\n                text = _event.m.Flagellant.getName() + \" is now a Pacified Flagellant\"\n            }];\n            _event.m.Monk.getBaseProperties()[4] += 2;\n            _event.m.Monk.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Monk.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk.getImagePath());\n        this.Characters.push(_event.m.Flagellant.getImagePath());\n        local background = this.new(\"scripts/skills/backgrounds/monk_turned_flagellant_background\");\n        _event.m.Monk.getSkills().removeByID(\"background.monk\");\n        _event.m.Monk.getSkills().add(background);\n        _event.m.Monk.m.Background = background;\n        background.buildDescription();\n        this.List = [{\n            id = 13\n            icon = background.getIcon()\n            text = _event.m.Monk.getName() + \" is now a Monk turned Flagellant\"\n        }];\n        _event.m.Flagellant.getBaseProperties()[4] += 2;\n        _event.m.Flagellant.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Flagellant.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]Deciding to let the men talk, you step away for a time.\\n\\nWhen you come back, the monk is naked and bent over with tears in his eyes. His shape is craven, but his face is gutting as though this is always what he wanted. With a gulp of air he straightens up and flicks his wrist over his shoulder. The flagellant's whip is in hand and you hear the leather slap against the monk's back. He pulls the tool away and the sound of glass and barbs tearing flesh causes a ringing in your ears. The flagellant himself says nothing. He has set himself down by the monk's side. He stares out across the land, but there is hardly a shimmer of life in his eyes, though you certainly see the blood of his life leaving his backside as he treats himself to a beating.\\n\\nYou step away once more, but the grass beneath your feet doesn't have the same crunch to it and the air carries a copper scent. Little leather snickers follow you all the way back to your tent.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A man left to torture himself can find the truest of horrors.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk.getImagePath());\n            this.Characters.push(_event.m.Flagellant.getImagePath());\n            local background = this.new(\"scripts/skills/backgrounds/monk_turned_flagellant_background\");\n            _event.m.Monk.getSkills().removeByID(\"background.monk\");\n            _event.m.Monk.getSkills().add(background);\n            _event.m.Monk.m.Background = background;\n            background.buildDescription();\n            this.List = [{\n                id = 13\n                icon = background.getIcon()\n                text = _event.m.Monk.getName() + \" is now a Monk turned Flagellant\"\n            }];\n            _event.m.Flagellant.getBaseProperties()[4] += 2;\n            _event.m.Flagellant.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Flagellant.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n    return;\n}"
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
    "context": "create = function create(){\n    this.m.ID = \"event.flagellant_vs_monk\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 45.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk.getImagePath());\n        this.Characters.push(_event.m.Flagellant.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]The campfire shines bright, twisting the faces of men in flowing orange as though they themselves were of burning stock.\\n\\n It is here you find %monk% and %flagellant% talking to one another. Their discussion is, at first, an easy one. The monk pleads with the flagellant to set aside his whip. While you don't necessarily wish to step in, you can't help but agree that destroying your own body on a glorified gore-schedule is not the best way to live. But then the flagellant retorts with something that gives you both pause. It is a phrase so well crafted that to think it might justify the man's personal habits has you pushing the notion out of your head as fast as possible. Disturbing, too, was the ease with which he said it. That such a soothing voice could be so warmly bundled in that scarred husk of flesh. What could muster it?\\n\\n The monk stammers for a moment, but then puts his hands to the flagellant's shoulders, holding him to keep their eyes on one another. He whispers, words which tickle your ears, but don't pronounce themselves loud enough to have real meaning. You can only assume they are meant to, once again, persuade the flagellant to a better, less violent life.\\n\\n But, again, the flagellant begins to respond and so back and forth they continue to go.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"This is fascinating. Let's see where it goes.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"Alright that's enough. We've got actual work to do.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk.getImagePath());\n            this.Characters.push(_event.m.Flagellant.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk.getImagePath());\n        this.Characters.push(_event.m.Flagellant.getImagePath());\n        local background = this.new(\"scripts/skills/backgrounds/pacified_flagellant_background\");\n        _event.m.Flagellant.getSkills().removeByID(\"background.flagellant\");\n        _event.m.Flagellant.getSkills().add(background);\n        _event.m.Flagellant.m.Background = background;\n        background.buildDescription();\n        this.List = [{\n            id = 13\n            icon = background.getIcon()\n            text = _event.m.Flagellant.getName() + \" is now a Pacified Flagellant\"\n        }];\n        _event.m.Monk.getBaseProperties()[4] += 2;\n        _event.m.Monk.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Monk.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]Deciding to let the men talk, you step away for a time. When you return, you find the flagellant sitting next to the monk. The two saw back and forth on a log, their hands clasped in prayer as whispers of heavenly words part their lips. You've no urge to get closer to hear what they are saying for it is a comforting sight in and of itself. While you have no dog in what way is best to appease the gods, you can't help but feel a little better seeing the flagellant put down his tools of self-torture.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"May the man find his peace now.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk.getImagePath());\n            this.Characters.push(_event.m.Flagellant.getImagePath());\n            local background = this.new(\"scripts/skills/backgrounds/pacified_flagellant_background\");\n            _event.m.Flagellant.getSkills().removeByID(\"background.flagellant\");\n            _event.m.Flagellant.getSkills().add(background);\n            _event.m.Flagellant.m.Background = background;\n            background.buildDescription();\n            this.List = [{\n                id = 13\n                icon = background.getIcon()\n                text = _event.m.Flagellant.getName() + \" is now a Pacified Flagellant\"\n            }];\n            _event.m.Monk.getBaseProperties()[4] += 2;\n            _event.m.Monk.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Monk.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk.getImagePath());\n        this.Characters.push(_event.m.Flagellant.getImagePath());\n        local background = this.new(\"scripts/skills/backgrounds/monk_turned_flagellant_background\");\n        _event.m.Monk.getSkills().removeByID(\"background.monk\");\n        _event.m.Monk.getSkills().add(background);\n        _event.m.Monk.m.Background = background;\n        background.buildDescription();\n        this.List = [{\n            id = 13\n            icon = background.getIcon()\n            text = _event.m.Monk.getName() + \" is now a Monk turned Flagellant\"\n        }];\n        _event.m.Flagellant.getBaseProperties()[4] += 2;\n        _event.m.Flagellant.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Flagellant.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]Deciding to let the men talk, you step away for a time.\\n\\nWhen you come back, the monk is naked and bent over with tears in his eyes. His shape is craven, but his face is gutting as though this is always what he wanted. With a gulp of air he straightens up and flicks his wrist over his shoulder. The flagellant's whip is in hand and you hear the leather slap against the monk's back. He pulls the tool away and the sound of glass and barbs tearing flesh causes a ringing in your ears. The flagellant himself says nothing. He has set himself down by the monk's side. He stares out across the land, but there is hardly a shimmer of life in his eyes, though you certainly see the blood of his life leaving his backside as he treats himself to a beating.\\n\\nYou step away once more, but the grass beneath your feet doesn't have the same crunch to it and the air carries a copper scent. Little leather snickers follow you all the way back to your tent.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"A man left to torture himself can find the truest of horrors.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk.getImagePath());\n            this.Characters.push(_event.m.Flagellant.getImagePath());\n            local background = this.new(\"scripts/skills/backgrounds/monk_turned_flagellant_background\");\n            _event.m.Monk.getSkills().removeByID(\"background.monk\");\n            _event.m.Monk.getSkills().add(background);\n            _event.m.Monk.m.Background = background;\n            background.buildDescription();\n            this.List = [{\n                id = 13\n                icon = background.getIcon()\n                text = _event.m.Monk.getName() + \" is now a Monk turned Flagellant\"\n            }];\n            _event.m.Flagellant.getBaseProperties()[4] += 2;\n            _event.m.Flagellant.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Flagellant.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\"\n            });\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n    return;\n}"
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
    "key": "1cc10de393e0dab6eeb4ef664caf0b4cdd515c16b8bb6bee4ed0f87d0b777a01",
    "original": "May the man find his peace now.",
    "translation": "",
    "context": "Text = \"May the man find his peace now.\""
  },
  {
    "key": "40b455db7a4f44a03298e9ee15ba5c92b4bde759a35ea02369e3da591428ec0a",
    "original": "This is fascinating. Let's see where it goes.",
    "translation": "",
    "context": "Text = \"This is fascinating. Let's see where it goes.\""
  },
  {
    "key": "68f975d21d6b598643d0f6c9c8965e2836cae29dac21bb02768ca8cacdf258aa",
    "original": "[img]gfx/ui/events/event_05.png[/img]Deciding to let the men talk, you step away for a time.\n\nWhen you come back, the monk is naked and bent over with tears in his eyes. His shape is craven, but his face is gutting as though this is always what he wanted. With a gulp of air he straightens up and flicks his wrist over his shoulder. The flagellant's whip is in hand and you hear the leather slap against the monk's back. He pulls the tool away and the sound of glass and barbs tearing flesh causes a ringing in your ears. The flagellant himself says nothing. He has set himself down by the monk's side. He stares out across the land, but there is hardly a shimmer of life in his eyes, though you certainly see the blood of his life leaving his backside as he treats himself to a beating.\n\nYou step away once more, but the grass beneath your feet doesn't have the same crunch to it and the air carries a copper scent. Little leather snickers follow you all the way back to your tent.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]Deciding to let the men talk, you step away for a time.\\n\\nWhen you come back, the monk is naked and bent over with tears in his eyes. His shape is craven, but his face is gutting as though this is always what he wanted. With a gulp of air he straightens up and flicks his wrist over his shoulder. The flagellant's whip is in hand and you hear the leather slap against the monk's back. He pulls the tool away and the sound of glass and barbs tearing flesh causes a ringing in your ears. The flagellant himself says nothing. He has set himself down by the monk's side. He stares out across the land, but there is hardly a shimmer of life in his eyes, though you certainly see the blood of his life leaving his backside as he treats himself to a beating.\\n\\nYou step away once more, but the grass beneath your feet doesn't have the same crunch to it and the air carries a copper scent. Little leather snickers follow you all the way back to your tent.\""
  },
  {
    "key": "fcf9a75543cedd03168e3e87b9363543a08decffd0860c3e602441e19a13f080",
    "original": "[img]gfx/ui/events/event_05.png[/img]Deciding to let the men talk, you step away for a time. When you return, you find the flagellant sitting next to the monk. The two saw back and forth on a log, their hands clasped in prayer as whispers of heavenly words part their lips. You've no urge to get closer to hear what they are saying for it is a comforting sight in and of itself. While you have no dog in what way is best to appease the gods, you can't help but feel a little better seeing the flagellant put down his tools of self-torture.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]Deciding to let the men talk, you step away for a time. When you return, you find the flagellant sitting next to the monk. The two saw back and forth on a log, their hands clasped in prayer as whispers of heavenly words part their lips. You've no urge to get closer to hear what they are saying for it is a comforting sight in and of itself. While you have no dog in what way is best to appease the gods, you can't help but feel a little better seeing the flagellant put down his tools of self-torture.\""
  },
  {
    "key": "e20ef8907a92c2c2cb36cec5cdde64d7f270a6e77d731b6fdc244147db2a7a70",
    "original": "[img]gfx/ui/events/event_05.png[/img]The campfire shines bright, twisting the faces of men in flowing orange as though they themselves were of burning stock.\n\n It is here you find %monk% and %flagellant% talking to one another. Their discussion is, at first, an easy one. The monk pleads with the flagellant to set aside his whip. While you don't necessarily wish to step in, you can't help but agree that destroying your own body on a glorified gore-schedule is not the best way to live. But then the flagellant retorts with something that gives you both pause. It is a phrase so well crafted that to think it might justify the man's personal habits has you pushing the notion out of your head as fast as possible. Disturbing, too, was the ease with which he said it. That such a soothing voice could be so warmly bundled in that scarred husk of flesh. What could muster it?\n\n The monk stammers for a moment, but then puts his hands to the flagellant's shoulders, holding him to keep their eyes on one another. He whispers, words which tickle your ears, but don't pronounce themselves loud enough to have real meaning. You can only assume they are meant to, once again, persuade the flagellant to a better, less violent life.\n\n But, again, the flagellant begins to respond and so back and forth they continue to go.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]The campfire shines bright, twisting the faces of men in flowing orange as though they themselves were of burning stock.\\n\\n It is here you find %monk% and %flagellant% talking to one another. Their discussion is, at first, an easy one. The monk pleads with the flagellant to set aside his whip. While you don't necessarily wish to step in, you can't help but agree that destroying your own body on a glorified gore-schedule is not the best way to live. But then the flagellant retorts with something that gives you both pause. It is a phrase so well crafted that to think it might justify the man's personal habits has you pushing the notion out of your head as fast as possible. Disturbing, too, was the ease with which he said it. That such a soothing voice could be so warmly bundled in that scarred husk of flesh. What could muster it?\\n\\n The monk stammers for a moment, but then puts his hands to the flagellant's shoulders, holding him to keep their eyes on one another. He whispers, words which tickle your ears, but don't pronounce themselves loud enough to have real meaning. You can only assume they are meant to, once again, persuade the flagellant to a better, less violent life.\\n\\n But, again, the flagellant begins to respond and so back and forth they continue to go.\""
  },
  {
    "key": "7a13736f003f5eb5e634c0a135bc0a5fb7d5cfb449189cd394583b83a5807f90",
    "original": "]+2[/color] Resolve",
    "translation": "",
    "context": "_event.m.Monk.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\""
  },
  {
    "key": "7a13736f003f5eb5e634c0a135bc0a5fb7d5cfb449189cd394583b83a5807f90",
    "original": "]+2[/color] Resolve",
    "translation": "",
    "context": "_event.m.Flagellant.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Resolve\""
  },
  {
    "key": "dcb61598ec17e2e9f55fefd4b9ef824796ccc3a2d835cd9169ffed1bb457a89b",
    "original": "flagellant",
    "translation": "",
    "context": ""
  },
  {
    "key": "9b550d15e298bd082ff0378694e05688e79f6a710a600ec00b834e8b15d6f6e4",
    "original": "monk",
    "translation": "",
    "context": ""
  }
]