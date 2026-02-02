[
  {
    "key": "ddeed997e3e6836b41148b99568cf95e2f48405ac011c34055f6cc0e9638196e",
    "original": "'s speech",
    "translation": "",
    "context": "\"Inspired by \" + _event.m.Determined.getNameOnly() + \"'s speech\""
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
    "context": ""
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
    "context": "create = function create(){\n    this.m.ID = \"event.determined_delivers_peptalk\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 40.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Determined.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_58.png[/img]You are beginning to worry that a sort of malaise has fallen upon the men. They sit about the campfire, mindlessly poking sticks into the flames. Each face shows a loss of control, a loss of governance over one's own destiny. If a man can't know if tomorrow will be better than today, then how is he to keep pushing forward? Just as you are about to address this, %determined% stands up and so despondent is the mood that even the swift motion by itself catches the company's attention.%SPEECH_ON%Look at you bunch of sorry sad sacks. Do you think you're unique? Do you think you're the first to feel like shit? No, of course not. You'd not be the first to give up, either. To lay down and not rise again. That's the easy thing to do. That's what the world wants you to do. There's enough sonsabitches around, no need in having some sorry asses like yourselves mucking things up if you don't want no part and parcel in this punishment we call life.%SPEECH_OFF%Roused by this speech, you see a bit of a glint falling over the company.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"The man is right!\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Determined.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Determined.getImagePath());\n        local brothers = this.World.getPlayerRoster().getAll();\n        foreach( bro in brothers){\n            if (bro.getMoodState() <= this.Const.MoodState.Neutral && this.Math.rand(1, 100) <= 33) {\n                bro.improveMood(1.0, \"Inspired by \" + _event.m.Determined.getNameOnly() + \"'s speech\");\n                if (bro.getMoodState() >= this.Const.MoodState.Neutral) {\n                    this.List.push({\n                        id = 10\n                        icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                        text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                    })\n                }\n            }\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_58.png[/img]%determined% continues, almost stabbing his thumb into his chest.%SPEECH_ON%I'm not taking the world's shit. I'm gonna make the world sorry for having me here. I didn't ask for no invitation so I ain't gonna play nice to this farkin' party. See you in the next life, men, but until then, let's dance in this one!%SPEECH_OFF%A cheer erupts and the men get to their feet, a sense of elation bursting forth as though the ground had them chained all along.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Hear, hear!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Determined.getImagePath());\n            local brothers = this.World.getPlayerRoster().getAll();\n            foreach( bro in brothers){\n                if (bro.getMoodState() <= this.Const.MoodState.Neutral && this.Math.rand(1, 100) <= 33) {\n                    bro.improveMood(1.0, \"Inspired by \" + _event.m.Determined.getNameOnly() + \"'s speech\");\n                    if (bro.getMoodState() >= this.Const.MoodState.Neutral) {\n                        this.List.push({\n                            id = 10\n                            icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                            text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                        })\n                    }\n                }\n            };\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"B\";;\n    return;\n}"
  },
  {
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "a49e346a6d380c308bbc1073b8bad2da755db0da64826e798062fc5fc696a789",
    "original": "Hear, hear!",
    "translation": "",
    "context": "Text = \"Hear, hear!\""
  },
  {
    "key": "fdf00bf8032fb2c3262bb88ca4239d349db987e3afcc0f69786988b94d4acc7b",
    "original": "Inspired by ",
    "translation": "",
    "context": "\"Inspired by \" + _event.m.Determined.getNameOnly() + \"'s speech\""
  },
  {
    "key": "8c2ed388d707203234ff7cff8c844a758420145eca490a032260348f1c55fdf7",
    "original": "The man is right!",
    "translation": "",
    "context": "Text = \"The man is right!\""
  },
  {
    "key": "c8d00713b3469502c259a23cab1ff4092f4e1133f99a8ad77c7bc6d8c2731512",
    "original": "[img]gfx/ui/events/event_58.png[/img]%determined% continues, almost stabbing his thumb into his chest.%SPEECH_ON%I'm not taking the world's shit. I'm gonna make the world sorry for having me here. I didn't ask for no invitation so I ain't gonna play nice to this farkin' party. See you in the next life, men, but until then, let's dance in this one!%SPEECH_OFF%A cheer erupts and the men get to their feet, a sense of elation bursting forth as though the ground had them chained all along.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_58.png[/img]%determined% continues, almost stabbing his thumb into his chest.%SPEECH_ON%I'm not taking the world's shit. I'm gonna make the world sorry for having me here. I didn't ask for no invitation so I ain't gonna play nice to this farkin' party. See you in the next life, men, but until then, let's dance in this one!%SPEECH_OFF%A cheer erupts and the men get to their feet, a sense of elation bursting forth as though the ground had them chained all along.\""
  },
  {
    "key": "5745339d9729cdfa9c9dce715d0fd758d725e22eaa86ada552de2ec90a6bfcbe",
    "original": "[img]gfx/ui/events/event_58.png[/img]You are beginning to worry that a sort of malaise has fallen upon the men. They sit about the campfire, mindlessly poking sticks into the flames. Each face shows a loss of control, a loss of governance over one's own destiny. If a man can't know if tomorrow will be better than today, then how is he to keep pushing forward? Just as you are about to address this, %determined% stands up and so despondent is the mood that even the swift motion by itself catches the company's attention.%SPEECH_ON%Look at you bunch of sorry sad sacks. Do you think you're unique? Do you think you're the first to feel like shit? No, of course not. You'd not be the first to give up, either. To lay down and not rise again. That's the easy thing to do. That's what the world wants you to do. There's enough sonsabitches around, no need in having some sorry asses like yourselves mucking things up if you don't want no part and parcel in this punishment we call life.%SPEECH_OFF%Roused by this speech, you see a bit of a glint falling over the company.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_58.png[/img]You are beginning to worry that a sort of malaise has fallen upon the men. They sit about the campfire, mindlessly poking sticks into the flames. Each face shows a loss of control, a loss of governance over one's own destiny. If a man can't know if tomorrow will be better than today, then how is he to keep pushing forward? Just as you are about to address this, %determined% stands up and so despondent is the mood that even the swift motion by itself catches the company's attention.%SPEECH_ON%Look at you bunch of sorry sad sacks. Do you think you're unique? Do you think you're the first to feel like shit? No, of course not. You'd not be the first to give up, either. To lay down and not rise again. That's the easy thing to do. That's what the world wants you to do. There's enough sonsabitches around, no need in having some sorry asses like yourselves mucking things up if you don't want no part and parcel in this punishment we call life.%SPEECH_OFF%Roused by this speech, you see a bit of a glint falling over the company.\""
  },
  {
    "key": "891af2861ee601923b0126a5b4ef8b1742c7757e330a0dd230f95117dd91212a",
    "original": "determined",
    "translation": "",
    "context": ""
  }
]