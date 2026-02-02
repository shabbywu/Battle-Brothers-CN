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
    "key": "3210bf7b4663611c240a73ed564ad71d900e940d6e0a4ce5255eeb8e0dd07441",
    "original": "Deal.",
    "translation": "",
    "context": "Text = \"Deal.\""
  },
  {
    "key": "2d57708137733c6df90c244e70f930443aa81414c5d7fa1e5397f538f14b54f0",
    "original": "No deal.",
    "translation": "",
    "context": "Text = \"No deal.\""
  },
  {
    "key": "8d93330719655e527218721080fd70dbec0b8ea118098b63add510461584386d",
    "original": "Peddler",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.collector_wants_trophy\";\n    this.m.Title = \"At %townname%\";\n    this.m.Cooldown = 25.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        if (_event.m.Peddler != null) {\n            return \"Peddler\";\n        } else {\n            this.World.Assets.addMoney(_event.m.Reward);\n            local stash = this.World.Assets.getStash().getItems();\n            foreach( i, item in stash){\n                if (item != null && item.getID() == _event.m.Item.getID()) {\n                    stash.i = null\n                } else {\n                    break\n                }\n            };\n            return 0;\n        };\n        return;\n    };\n    function getResult(_event){\n        if (_event.m.Peddler != null) {\n            return \"Peddler\";\n        } else {\n            return 0;\n        };\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_01.png[/img]{While browsing the town's markets, a man in silk approaches. He's wearing a grin with more glitter than chomp, and each of his fingers are adorned to glint. | As you take a look at the local market's wares, a strange man approaches. He has baubles of strange liquids hanging from his hip and there's a strange wood taking the place of most of his teeth. | It's not a true trip to the markets without some strange fella accosting you. This time it's a man with a large face, his mouth a bear trap of jagged teeth, and his cheeks set high as though they were meant to be shelves. Features aside, he swings his weight around like someone of import and wealth.}%SPEECH_ON%{Ah sellsword, I see you have some interesting trophies with ya. How about I take that %trophy% for, say, %reward% crowns? | That's an interesting trophy you got there, the %trophy%. I'll give you %reward% crowns for it, hand over fist, easy money! | Hmm, I see you are of the adventuring sort. You wouldn't come by that %trophy% without some guile in ya. Well I got some gold in me, and I'll give you %reward% of it for that trinket.}%SPEECH_OFF%You consider the man's offer.\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"Deal.\"\n            getResult = function getResult(_event){\n                if (_event.m.Peddler != null) {\n                    return \"Peddler\";\n                } else {\n                    this.World.Assets.addMoney(_event.m.Reward);\n                    local stash = this.World.Assets.getStash().getItems();\n                    foreach( i, item in stash){\n                        if (item != null && item.getID() == _event.m.Item.getID()) {\n                            stash.i = null\n                        } else {\n                            break\n                        }\n                    };\n                    return 0;\n                };\n                return;\n            }\n        },{\n            Text = \"No deal.\"\n            getResult = function getResult(_event){\n                if (_event.m.Peddler != null) {\n                    return \"Peddler\";\n                } else {\n                    return 0;\n                };\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.Assets.addMoney(_event.m.Reward);\n        local stash = this.World.Assets.getStash().getItems();\n        foreach( i, item in stash){\n            if (item != null && item.getID() == _event.m.Item.getID()) {\n                stash.i = null\n            } else {\n                break\n            }\n        };\n        return 0;;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Peddler.getImagePath());\n        _event.m.Reward = this.Math.floor(_event.m.Reward * 1.3300000429153442);\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"Peddler\"\n        Text = \"[img]gfx/ui/events/event_01.png[/img]{%peddler% steps forward and pushes you back as though you were a random customer and not the company captain. He yells at the buyer and throws a hand up and the buyer responds and it's like two dogs barking at one another and it's all so fast and with so many numbers being thrown around it may as well be another language. After a minute passes, the peddler returns.%SPEECH_ON%Alright. He's now offering %reward% crowns. I'm off to look at some pots and pans, good luck.%SPEECH_OFF%He pats you on the shoulder and walks off.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Deal.\"\n            getResult = function getResult(_event){\n                this.World.Assets.addMoney(_event.m.Reward);\n                local stash = this.World.Assets.getStash().getItems();\n                foreach( i, item in stash){\n                    if (item != null && item.getID() == _event.m.Item.getID()) {\n                        stash.i = null\n                    } else {\n                        break\n                    }\n                };\n                return 0;;\n                return;\n            }\n        },{\n            Text = \"No deal.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Peddler.getImagePath());\n            _event.m.Reward = this.Math.floor(_event.m.Reward * 1.3300000429153442);\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "8d93330719655e527218721080fd70dbec0b8ea118098b63add510461584386d",
    "original": "Peddler",
    "translation": "",
    "context": ""
  },
  {
    "key": "8d93330719655e527218721080fd70dbec0b8ea118098b63add510461584386d",
    "original": "Peddler",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    if (_event.m.Peddler != null) {\n        return \"Peddler\";\n    } else {\n        return 0;\n    };\n    return;\n}"
  },
  {
    "key": "8d93330719655e527218721080fd70dbec0b8ea118098b63add510461584386d",
    "original": "Peddler",
    "translation": "",
    "context": "ID = \"Peddler\""
  },
  {
    "key": "8d93330719655e527218721080fd70dbec0b8ea118098b63add510461584386d",
    "original": "Peddler",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    if (_event.m.Peddler != null) {\n        return \"Peddler\";\n    } else {\n        this.World.Assets.addMoney(_event.m.Reward);\n        local stash = this.World.Assets.getStash().getItems();\n        foreach( i, item in stash){\n            if (item != null && item.getID() == _event.m.Item.getID()) {\n                stash.i = null\n            } else {\n                break\n            }\n        };\n        return 0;\n    };\n    return;\n}"
  },
  {
    "key": "793959c65f7905f7af4463f486b0252d3e17e3707137a1dfb4d7313155b16eaf",
    "original": "[img]gfx/ui/events/event_01.png[/img]{%peddler% steps forward and pushes you back as though you were a random customer and not the company captain. He yells at the buyer and throws a hand up and the buyer responds and it's like two dogs barking at one another and it's all so fast and with so many numbers being thrown around it may as well be another language. After a minute passes, the peddler returns.%SPEECH_ON%Alright. He's now offering %reward% crowns. I'm off to look at some pots and pans, good luck.%SPEECH_OFF%He pats you on the shoulder and walks off.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_01.png[/img]{%peddler% steps forward and pushes you back as though you were a random customer and not the company captain. He yells at the buyer and throws a hand up and the buyer responds and it's like two dogs barking at one another and it's all so fast and with so many numbers being thrown around it may as well be another language. After a minute passes, the peddler returns.%SPEECH_ON%Alright. He's now offering %reward% crowns. I'm off to look at some pots and pans, good luck.%SPEECH_OFF%He pats you on the shoulder and walks off.}\""
  },
  {
    "key": "5d0267127e9c3192563006185a695787b7226aeb5eda40ed34f557d08353bc1f",
    "original": "[img]gfx/ui/events/event_01.png[/img]{While browsing the town's markets, a man in silk approaches. He's wearing a grin with more glitter than chomp, and each of his fingers are adorned to glint. | As you take a look at the local market's wares, a strange man approaches. He has baubles of strange liquids hanging from his hip and there's a strange wood taking the place of most of his teeth. | It's not a true trip to the markets without some strange fella accosting you. This time it's a man with a large face, his mouth a bear trap of jagged teeth, and his cheeks set high as though they were meant to be shelves. Features aside, he swings his weight around like someone of import and wealth.}%SPEECH_ON%{Ah sellsword, I see you have some interesting trophies with ya. How about I take that %trophy% for, say, %reward% crowns? | That's an interesting trophy you got there, the %trophy%. I'll give you %reward% crowns for it, hand over fist, easy money! | Hmm, I see you are of the adventuring sort. You wouldn't come by that %trophy% without some guile in ya. Well I got some gold in me, and I'll give you %reward% of it for that trinket.}%SPEECH_OFF%You consider the man's offer.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_01.png[/img]{While browsing the town's markets, a man in silk approaches. He's wearing a grin with more glitter than chomp, and each of his fingers are adorned to glint. | As you take a look at the local market's wares, a strange man approaches. He has baubles of strange liquids hanging from his hip and there's a strange wood taking the place of most of his teeth. | It's not a true trip to the markets without some strange fella accosting you. This time it's a man with a large face, his mouth a bear trap of jagged teeth, and his cheeks set high as though they were meant to be shelves. Features aside, he swings his weight around like someone of import and wealth.}%SPEECH_ON%{Ah sellsword, I see you have some interesting trophies with ya. How about I take that %trophy% for, say, %reward% crowns? | That's an interesting trophy you got there, the %trophy%. I'll give you %reward% crowns for it, hand over fist, easy money! | Hmm, I see you are of the adventuring sort. You wouldn't come by that %trophy% without some guile in ya. Well I got some gold in me, and I'll give you %reward% of it for that trinket.}%SPEECH_OFF%You consider the man's offer.\""
  },
  {
    "key": "06e39f9dd2c69f08fb3c9a56e1dfe05a13cb18226901e92f679f790f3dfb1ea1",
    "original": "peddler",
    "translation": "",
    "context": ""
  },
  {
    "key": "7696fff84f26472a9737981c0ef48600731e7b2a20c93e2dbfe06706ca0d31b0",
    "original": "reward",
    "translation": "",
    "context": ""
  },
  {
    "key": "cce8cfe2ad73528fe61142ab4f5cda39410f936f701b34c2a94f736ac0a8797d",
    "original": "townname",
    "translation": "",
    "context": ""
  },
  {
    "key": "b39419ef79491b8efa0ae699a656fd976430fc16a7917f5bfcc9ce8fc6a8eff2",
    "original": "trophy",
    "translation": "",
    "context": ""
  }
]