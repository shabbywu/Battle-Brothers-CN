[
  {
    "key": "8c4401d0753098d7a38cbf7246a4f9cc426e9ba62a6ea25d2de002bed9e8fc3a",
    "original": " suffers ",
    "translation": "",
    "context": "_event.m.Flagellant.getName() + \" suffers \" + injury.getNameOnly()"
  },
  {
    "key": "b7bc905957708d55178221afa8341e37cfc0312b758eb88e1a3ea8b3e2fee3c6",
    "original": " suffers light wounds",
    "translation": "",
    "context": "_event.m.Flagellant.getName() + \" suffers light wounds\""
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
    "key": "d5452efbd10943b299ae0e1cdeb50f38cb0924844f1a759b110af39a9fd503ff",
    "original": "At least he didn't kill himself.",
    "translation": "",
    "context": "Text = \"At least he didn't kill himself.\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.flagellation\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 25.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OtherGuy.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]%otherguy% approaches with a pained look on his face. His helmet is in hand as he wipes his brow.%SPEECH_ON%Sir, uh, you should come and see this.%SPEECH_OFF%You inquire as to what it is you are going to see.%SPEECH_ON%I don't have the words for it. You'd best come and see with your own eyes.%SPEECH_OFF%You look down at your work - plotting the march for the coming days - but, judging by the look on the brother's face, it can wait.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Show me, then.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OtherGuy.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.OtherGuy.getImagePath());\n        this.Characters.push(_event.m.Flagellant.getImagePath());\n        if (this.Math.rand(1, 100) <= 50) {\n            local injury = _event.m.Flagellant.addInjury(this.Const.Injury.Flagellation);\n            this.List = [{\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Flagellant.getName() + \" suffers \" + injury.getNameOnly()\n            }]\n        } else {\n            _event.m.Flagellant.addLightInjury();\n            this.List = [{\n                id = 10\n                icon = \"ui/icons/days_wounded.png\"\n                text = _event.m.Flagellant.getName() + \" suffers light wounds\"\n            }]\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_38.png[/img]You get up and have him lead you to whatever it is that's causing an issue. You come across a throng of brothers circled around something or someone. Breaking your way through the crowd, the company quiets as you come into the clearing to find %flagellant_short% the flagellant unconscious on the ground.\\n\\nHis back is stripped raw and you think you can even see a rib or two. Thorns have broken off his brutish whip, embedding themselves in his flesh, and his skin hangs in strands where it hangs at all. It is good he has passed out. Not because he would be horrible in pain, but because you think he might not otherwise have stopped. You order the men to clean him up, dress his wounds, and hide his tools of misery.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"At least he didn't kill himself.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.OtherGuy.getImagePath());\n            this.Characters.push(_event.m.Flagellant.getImagePath());\n            if (this.Math.rand(1, 100) <= 50) {\n                local injury = _event.m.Flagellant.addInjury(this.Const.Injury.Flagellation);\n                this.List = [{\n                    id = 10\n                    icon = injury.getIcon()\n                    text = _event.m.Flagellant.getName() + \" suffers \" + injury.getNameOnly()\n                }]\n            } else {\n                _event.m.Flagellant.addLightInjury();\n                this.List = [{\n                    id = 10\n                    icon = \"ui/icons/days_wounded.png\"\n                    text = _event.m.Flagellant.getName() + \" suffers light wounds\"\n                }]\n            };\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "ID = \"B\""
  },
  {
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "c43a2733c2705b7977461d9b2be4ebd4a5424771dd1e557fbe14105a2afbe07a",
    "original": "Show me, then.",
    "translation": "",
    "context": "Text = \"Show me, then.\""
  },
  {
    "key": "a13f41459010899c250eb935645101e5d54f1faf5410073f3c4473b97e305bd7",
    "original": "[img]gfx/ui/events/event_05.png[/img]%otherguy% approaches with a pained look on his face. His helmet is in hand as he wipes his brow.%SPEECH_ON%Sir, uh, you should come and see this.%SPEECH_OFF%You inquire as to what it is you are going to see.%SPEECH_ON%I don't have the words for it. You'd best come and see with your own eyes.%SPEECH_OFF%You look down at your work - plotting the march for the coming days - but, judging by the look on the brother's face, it can wait.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]%otherguy% approaches with a pained look on his face. His helmet is in hand as he wipes his brow.%SPEECH_ON%Sir, uh, you should come and see this.%SPEECH_OFF%You inquire as to what it is you are going to see.%SPEECH_ON%I don't have the words for it. You'd best come and see with your own eyes.%SPEECH_OFF%You look down at your work - plotting the march for the coming days - but, judging by the look on the brother's face, it can wait.\""
  },
  {
    "key": "ce7c6181dd4f0eecad238f0229702f6c00b689ac5dacf5a17dd6f9a9f96ba4a6",
    "original": "[img]gfx/ui/events/event_38.png[/img]You get up and have him lead you to whatever it is that's causing an issue. You come across a throng of brothers circled around something or someone. Breaking your way through the crowd, the company quiets as you come into the clearing to find %flagellant_short% the flagellant unconscious on the ground.\n\nHis back is stripped raw and you think you can even see a rib or two. Thorns have broken off his brutish whip, embedding themselves in his flesh, and his skin hangs in strands where it hangs at all. It is good he has passed out. Not because he would be horrible in pain, but because you think he might not otherwise have stopped. You order the men to clean him up, dress his wounds, and hide his tools of misery.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_38.png[/img]You get up and have him lead you to whatever it is that's causing an issue. You come across a throng of brothers circled around something or someone. Breaking your way through the crowd, the company quiets as you come into the clearing to find %flagellant_short% the flagellant unconscious on the ground.\\n\\nHis back is stripped raw and you think you can even see a rib or two. Thorns have broken off his brutish whip, embedding themselves in his flesh, and his skin hangs in strands where it hangs at all. It is good he has passed out. Not because he would be horrible in pain, but because you think he might not otherwise have stopped. You order the men to clean him up, dress his wounds, and hide his tools of misery.\""
  },
  {
    "key": "dcb61598ec17e2e9f55fefd4b9ef824796ccc3a2d835cd9169ffed1bb457a89b",
    "original": "flagellant",
    "translation": "",
    "context": ""
  },
  {
    "key": "f5150ee304c068edbef20dacf2450f7ec057d0c288d7fea3ec30ea4616f98d6d",
    "original": "otherguy",
    "translation": "",
    "context": ""
  }
]