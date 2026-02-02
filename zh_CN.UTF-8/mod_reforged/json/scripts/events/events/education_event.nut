[
  {
    "key": "f56cd3bc04ea0182d5873134d393b2b9d510ca5f0902c99cd170227090378d95",
    "original": " anything",
    "translation": "",
    "context": "\"Failed to teach \" + _event.m.DumbGuy.getName() + \" anything\""
  },
  {
    "key": "35d879b90bc3bd91e70b898ffd7b72870dee7cc02572f984b5ef34ae54382c0e",
    "original": " is no longer dumb",
    "translation": "",
    "context": "_event.m.DumbGuy.getName() + \" is no longer dumb\""
  },
  {
    "key": "f2917665bfc97584d524ff04236cbf382effe53f3c0567525dd5b9acd6dd010f",
    "original": " something",
    "translation": "",
    "context": "\"Taught \" + _event.m.DumbGuy.getName() + \" something\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.education\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 60.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Scholar.getImagePath());\n        this.Characters.push(_event.m.DumbGuy.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_15.png[/img]During your travels, %scholar% has taken some interest in %dumbguy%'s intellectual shortcomings. %scholar_short% says that, with some time, he could learn the man a thing or two. %dumbguy_short% can put one foot in front of the other - and sometimes quite confidently - but you think that's about where his aptitude for all things comes to an end. Not only that, but %scholar_short% has gotten easily frustrated in the past. Teaching the dumb brother might just be an exercise in inflating his own ego.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"See what you can teach him.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"Leave %dumbguy% alone.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Scholar.getImagePath());\n            this.Characters.push(_event.m.DumbGuy.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Scholar.getImagePath());\n        this.Characters.push(_event.m.DumbGuy.getImagePath());\n        _event.m.Scholar.worsenMood(2.0, \"Failed to teach \" + _event.m.DumbGuy.getName() + \" anything\");\n        if (_event.m.Scholar.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List = [{\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Scholar.getMoodState()]\n                text = _event.m.Scholar.getName() + this.Const.MoodStateEvent[_event.m.Scholar.getMoodState()]\n            }]\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_15.png[/img]{You come across %scholar% and %dumbguy% staring at a patch of dirt. Along the brown canvas you see that %scholar_short% has drawn geometric shapes, letters, numbers, and what look like constellations. It appears that they've been at this for hours now. \\n\\nA teaching stick in hand, %scholar% madly points at one of the star clusters and demands to know what it is. %dumbguy%, with a pained expression, guesses a sheep. %scholar% snaps the teaching stick in half and kicks dirt all over his drawings. It's a horse! A horse! %scholar% sighs heavily before marching off to the beat of endless profanity. Personally, you thought it was a crab. | You find %scholar% standing over %dumbguy%. Count the beetles, don't smash them, the learned man says with exasperation. %dumbguy% looks down at his beetle-juiced hands where {fragments of insect carapaces | carapaces of once-insects} dot his flesh. He nods, understandingly, and turns to pulling the beetles' legs off instead. %scholar% lets out a string of swears you've never heard in your life. | You find %scholar% and %dumbguy% yelling at one another. It appears they're at a very red-faced crossroads. %dumbguy_short% says he doesn't care if he's dumb, and the %scholar_short% argues that every man should be learned. Well it appears %dumbguy_short% would prefer to be left to his devices for he shows %scholar_short% his back as he walks away. Guess that's the end of the lesson for both men. | You find %dumbguy% squatting beside a creek, staring at himself in the shimmering reflection. He must have been at it for a while now for he's showing signs of sunburn. You ask if everything is alright, to which he explains that he is not 'getting it' with %scholar%'s teachings, and that %scholar% nearly went mad today before finally giving up on the venture. You explain that %dumbguy% doesn't have to be smart, he just needs to know how to swing a sword and shoot a bow. That's what you hired him for, after all. The man tries to hide a smile, but the running water betrays him. You take him back to camp where you then tell %scholar% to lay off for a while.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"{Why will you not learn?! | Ignorance is bliss.}\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Scholar.getImagePath());\n            this.Characters.push(_event.m.DumbGuy.getImagePath());\n            _event.m.Scholar.worsenMood(2.0, \"Failed to teach \" + _event.m.DumbGuy.getName() + \" anything\");\n            if (_event.m.Scholar.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List = [{\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Scholar.getMoodState()]\n                    text = _event.m.Scholar.getName() + this.Const.MoodStateEvent[_event.m.Scholar.getMoodState()]\n                }]\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Scholar.getImagePath());\n        this.Characters.push(_event.m.DumbGuy.getImagePath());\n        _event.m.Scholar.improveMood(2.0, \"Taught \" + _event.m.DumbGuy.getName() + \" something\");\n        _event.m.DumbGuy.getSkills().removeByID(\"trait.dumb\");\n        this.List.push({\n            id = 10\n            icon = \"ui/traits/trait_icon_17.png\"\n            text = _event.m.DumbGuy.getName() + \" is no longer dumb\"\n        });\n        if (_event.m.Scholar.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Scholar.getMoodState()]\n                text = _event.m.Scholar.getName() + this.Const.MoodStateEvent[_event.m.Scholar.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_15.png[/img]{You come across %dumbguy% mulling over a set of coins on a table. You inquire as to what he is doing and he says he's trying to figure out how much to save for retirement. First off, you're surprised he even knows what the word retirement is. Second off, counting? Looks like you might owe %scholar% a pint. | You find %dumbguy% sitting on a stump as he writes across a scroll. When you ask what he's doing, he says he's writing a letter. When you ask to whom it is addressed, the man looks up with a sheepish grin and asks, does it matter? Just then, you spot %scholar% in the distance, arms crossed, a look of satisfaction on his face.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Fascinating.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Scholar.getImagePath());\n            this.Characters.push(_event.m.DumbGuy.getImagePath());\n            _event.m.Scholar.improveMood(2.0, \"Taught \" + _event.m.DumbGuy.getName() + \" something\");\n            _event.m.DumbGuy.getSkills().removeByID(\"trait.dumb\");\n            this.List.push({\n                id = 10\n                icon = \"ui/traits/trait_icon_17.png\"\n                text = _event.m.DumbGuy.getName() + \" is no longer dumb\"\n            });\n            if (_event.m.Scholar.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Scholar.getMoodState()]\n                    text = _event.m.Scholar.getName() + this.Const.MoodStateEvent[_event.m.Scholar.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "6b23c0d5f35d1b11f9b683f0b0a617355deb11277d91ae091d399c655b87940d",
    "original": "C",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.education\";\n    this.m.Title = \"Along the way...\";\n    this.m.Cooldown = 60.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Scholar.getImagePath());\n        this.Characters.push(_event.m.DumbGuy.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_15.png[/img]During your travels, %scholar% has taken some interest in %dumbguy%'s intellectual shortcomings. %scholar_short% says that, with some time, he could learn the man a thing or two. %dumbguy_short% can put one foot in front of the other - and sometimes quite confidently - but you think that's about where his aptitude for all things comes to an end. Not only that, but %scholar_short% has gotten easily frustrated in the past. Teaching the dumb brother might just be an exercise in inflating his own ego.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"See what you can teach him.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"Leave %dumbguy% alone.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Scholar.getImagePath());\n            this.Characters.push(_event.m.DumbGuy.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Scholar.getImagePath());\n        this.Characters.push(_event.m.DumbGuy.getImagePath());\n        _event.m.Scholar.worsenMood(2.0, \"Failed to teach \" + _event.m.DumbGuy.getName() + \" anything\");\n        if (_event.m.Scholar.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List = [{\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Scholar.getMoodState()]\n                text = _event.m.Scholar.getName() + this.Const.MoodStateEvent[_event.m.Scholar.getMoodState()]\n            }]\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_15.png[/img]{You come across %scholar% and %dumbguy% staring at a patch of dirt. Along the brown canvas you see that %scholar_short% has drawn geometric shapes, letters, numbers, and what look like constellations. It appears that they've been at this for hours now. \\n\\nA teaching stick in hand, %scholar% madly points at one of the star clusters and demands to know what it is. %dumbguy%, with a pained expression, guesses a sheep. %scholar% snaps the teaching stick in half and kicks dirt all over his drawings. It's a horse! A horse! %scholar% sighs heavily before marching off to the beat of endless profanity. Personally, you thought it was a crab. | You find %scholar% standing over %dumbguy%. Count the beetles, don't smash them, the learned man says with exasperation. %dumbguy% looks down at his beetle-juiced hands where {fragments of insect carapaces | carapaces of once-insects} dot his flesh. He nods, understandingly, and turns to pulling the beetles' legs off instead. %scholar% lets out a string of swears you've never heard in your life. | You find %scholar% and %dumbguy% yelling at one another. It appears they're at a very red-faced crossroads. %dumbguy_short% says he doesn't care if he's dumb, and the %scholar_short% argues that every man should be learned. Well it appears %dumbguy_short% would prefer to be left to his devices for he shows %scholar_short% his back as he walks away. Guess that's the end of the lesson for both men. | You find %dumbguy% squatting beside a creek, staring at himself in the shimmering reflection. He must have been at it for a while now for he's showing signs of sunburn. You ask if everything is alright, to which he explains that he is not 'getting it' with %scholar%'s teachings, and that %scholar% nearly went mad today before finally giving up on the venture. You explain that %dumbguy% doesn't have to be smart, he just needs to know how to swing a sword and shoot a bow. That's what you hired him for, after all. The man tries to hide a smile, but the running water betrays him. You take him back to camp where you then tell %scholar% to lay off for a while.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"{Why will you not learn?! | Ignorance is bliss.}\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Scholar.getImagePath());\n            this.Characters.push(_event.m.DumbGuy.getImagePath());\n            _event.m.Scholar.worsenMood(2.0, \"Failed to teach \" + _event.m.DumbGuy.getName() + \" anything\");\n            if (_event.m.Scholar.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List = [{\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Scholar.getMoodState()]\n                    text = _event.m.Scholar.getName() + this.Const.MoodStateEvent[_event.m.Scholar.getMoodState()]\n                }]\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Scholar.getImagePath());\n        this.Characters.push(_event.m.DumbGuy.getImagePath());\n        _event.m.Scholar.improveMood(2.0, \"Taught \" + _event.m.DumbGuy.getName() + \" something\");\n        _event.m.DumbGuy.getSkills().removeByID(\"trait.dumb\");\n        this.List.push({\n            id = 10\n            icon = \"ui/traits/trait_icon_17.png\"\n            text = _event.m.DumbGuy.getName() + \" is no longer dumb\"\n        });\n        if (_event.m.Scholar.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Scholar.getMoodState()]\n                text = _event.m.Scholar.getName() + this.Const.MoodStateEvent[_event.m.Scholar.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_15.png[/img]{You come across %dumbguy% mulling over a set of coins on a table. You inquire as to what he is doing and he says he's trying to figure out how much to save for retirement. First off, you're surprised he even knows what the word retirement is. Second off, counting? Looks like you might owe %scholar% a pint. | You find %dumbguy% sitting on a stump as he writes across a scroll. When you ask what he's doing, he says he's writing a letter. When you ask to whom it is addressed, the man looks up with a sheepish grin and asks, does it matter? Just then, you spot %scholar% in the distance, arms crossed, a look of satisfaction on his face.}\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Fascinating.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Scholar.getImagePath());\n            this.Characters.push(_event.m.DumbGuy.getImagePath());\n            _event.m.Scholar.improveMood(2.0, \"Taught \" + _event.m.DumbGuy.getName() + \" something\");\n            _event.m.DumbGuy.getSkills().removeByID(\"trait.dumb\");\n            this.List.push({\n                id = 10\n                icon = \"ui/traits/trait_icon_17.png\"\n                text = _event.m.DumbGuy.getName() + \" is no longer dumb\"\n            });\n            if (_event.m.Scholar.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Scholar.getMoodState()]\n                    text = _event.m.Scholar.getName() + this.Const.MoodStateEvent[_event.m.Scholar.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 60 ? \"B\" : \"C\";;\n    return;\n}"
  },
  {
    "key": "ab688ae7c84bfc7f36c223917ca7b74ecd9d0ecff6b002cabacefb2cf76eb148",
    "original": "Failed to teach ",
    "translation": "",
    "context": "\"Failed to teach \" + _event.m.DumbGuy.getName() + \" anything\""
  },
  {
    "key": "8c0fe2615e44db7e0f9708047193f6eea5e90331873812d64a08baec7fd89757",
    "original": "Fascinating.",
    "translation": "",
    "context": "Text = \"Fascinating.\""
  },
  {
    "key": "651eca2c7e0a8921b5bc99b52e36b7e42065b2572ed66234fca602f2ee26d2d7",
    "original": "Leave %dumbguy% alone.",
    "translation": "",
    "context": "Text = \"Leave %dumbguy% alone.\""
  },
  {
    "key": "5b32309cfb8217db8cc5405c6764c5e54098a0e8de6a7e63a1c484585749f6ab",
    "original": "See what you can teach him.",
    "translation": "",
    "context": "Text = \"See what you can teach him.\""
  },
  {
    "key": "2faf4ad47eb05f6b57521881d9566a8a91bba578e98e1999c21b42420a3e0bb7",
    "original": "Taught ",
    "translation": "",
    "context": "\"Taught \" + _event.m.DumbGuy.getName() + \" something\""
  },
  {
    "key": "df98b9c8de862fa220665c561efc2fa6eb80212d165fed20a37e2684751a3a18",
    "original": "[img]gfx/ui/events/event_15.png[/img]During your travels, %scholar% has taken some interest in %dumbguy%'s intellectual shortcomings. %scholar_short% says that, with some time, he could learn the man a thing or two. %dumbguy_short% can put one foot in front of the other - and sometimes quite confidently - but you think that's about where his aptitude for all things comes to an end. Not only that, but %scholar_short% has gotten easily frustrated in the past. Teaching the dumb brother might just be an exercise in inflating his own ego.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_15.png[/img]During your travels, %scholar% has taken some interest in %dumbguy%'s intellectual shortcomings. %scholar_short% says that, with some time, he could learn the man a thing or two. %dumbguy_short% can put one foot in front of the other - and sometimes quite confidently - but you think that's about where his aptitude for all things comes to an end. Not only that, but %scholar_short% has gotten easily frustrated in the past. Teaching the dumb brother might just be an exercise in inflating his own ego.\""
  },
  {
    "key": "49dabfee852458663726ad939bf91f0e5cd3772d413a9b791b9c20810490d4da",
    "original": "[img]gfx/ui/events/event_15.png[/img]{You come across %dumbguy% mulling over a set of coins on a table. You inquire as to what he is doing and he says he's trying to figure out how much to save for retirement. First off, you're surprised he even knows what the word retirement is. Second off, counting? Looks like you might owe %scholar% a pint. | You find %dumbguy% sitting on a stump as he writes across a scroll. When you ask what he's doing, he says he's writing a letter. When you ask to whom it is addressed, the man looks up with a sheepish grin and asks, does it matter? Just then, you spot %scholar% in the distance, arms crossed, a look of satisfaction on his face.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_15.png[/img]{You come across %dumbguy% mulling over a set of coins on a table. You inquire as to what he is doing and he says he's trying to figure out how much to save for retirement. First off, you're surprised he even knows what the word retirement is. Second off, counting? Looks like you might owe %scholar% a pint. | You find %dumbguy% sitting on a stump as he writes across a scroll. When you ask what he's doing, he says he's writing a letter. When you ask to whom it is addressed, the man looks up with a sheepish grin and asks, does it matter? Just then, you spot %scholar% in the distance, arms crossed, a look of satisfaction on his face.}\""
  },
  {
    "key": "e6612b97f4441e129a9f8366b100bc703b405e1179bd7d51de6fef3d5225f8da",
    "original": "[img]gfx/ui/events/event_15.png[/img]{You come across %scholar% and %dumbguy% staring at a patch of dirt. Along the brown canvas you see that %scholar_short% has drawn geometric shapes, letters, numbers, and what look like constellations. It appears that they've been at this for hours now. \n\nA teaching stick in hand, %scholar% madly points at one of the star clusters and demands to know what it is. %dumbguy%, with a pained expression, guesses a sheep. %scholar% snaps the teaching stick in half and kicks dirt all over his drawings. It's a horse! A horse! %scholar% sighs heavily before marching off to the beat of endless profanity. Personally, you thought it was a crab. | You find %scholar% standing over %dumbguy%. Count the beetles, don't smash them, the learned man says with exasperation. %dumbguy% looks down at his beetle-juiced hands where {fragments of insect carapaces | carapaces of once-insects} dot his flesh. He nods, understandingly, and turns to pulling the beetles' legs off instead. %scholar% lets out a string of swears you've never heard in your life. | You find %scholar% and %dumbguy% yelling at one another. It appears they're at a very red-faced crossroads. %dumbguy_short% says he doesn't care if he's dumb, and the %scholar_short% argues that every man should be learned. Well it appears %dumbguy_short% would prefer to be left to his devices for he shows %scholar_short% his back as he walks away. Guess that's the end of the lesson for both men. | You find %dumbguy% squatting beside a creek, staring at himself in the shimmering reflection. He must have been at it for a while now for he's showing signs of sunburn. You ask if everything is alright, to which he explains that he is not 'getting it' with %scholar%'s teachings, and that %scholar% nearly went mad today before finally giving up on the venture. You explain that %dumbguy% doesn't have to be smart, he just needs to know how to swing a sword and shoot a bow. That's what you hired him for, after all. The man tries to hide a smile, but the running water betrays him. You take him back to camp where you then tell %scholar% to lay off for a while.}",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_15.png[/img]{You come across %scholar% and %dumbguy% staring at a patch of dirt. Along the brown canvas you see that %scholar_short% has drawn geometric shapes, letters, numbers, and what look like constellations. It appears that they've been at this for hours now. \\n\\nA teaching stick in hand, %scholar% madly points at one of the star clusters and demands to know what it is. %dumbguy%, with a pained expression, guesses a sheep. %scholar% snaps the teaching stick in half and kicks dirt all over his drawings. It's a horse! A horse! %scholar% sighs heavily before marching off to the beat of endless profanity. Personally, you thought it was a crab. | You find %scholar% standing over %dumbguy%. Count the beetles, don't smash them, the learned man says with exasperation. %dumbguy% looks down at his beetle-juiced hands where {fragments of insect carapaces | carapaces of once-insects} dot his flesh. He nods, understandingly, and turns to pulling the beetles' legs off instead. %scholar% lets out a string of swears you've never heard in your life. | You find %scholar% and %dumbguy% yelling at one another. It appears they're at a very red-faced crossroads. %dumbguy_short% says he doesn't care if he's dumb, and the %scholar_short% argues that every man should be learned. Well it appears %dumbguy_short% would prefer to be left to his devices for he shows %scholar_short% his back as he walks away. Guess that's the end of the lesson for both men. | You find %dumbguy% squatting beside a creek, staring at himself in the shimmering reflection. He must have been at it for a while now for he's showing signs of sunburn. You ask if everything is alright, to which he explains that he is not 'getting it' with %scholar%'s teachings, and that %scholar% nearly went mad today before finally giving up on the venture. You explain that %dumbguy% doesn't have to be smart, he just needs to know how to swing a sword and shoot a bow. That's what you hired him for, after all. The man tries to hide a smile, but the running water betrays him. You take him back to camp where you then tell %scholar% to lay off for a while.}\""
  },
  {
    "key": "0df3804ad2249e52f0d8100345d3872bdfdca8b43ef2aabfd32f2e9f061c91f7",
    "original": "dumbguy",
    "translation": "",
    "context": ""
  },
  {
    "key": "e3f48726b892403e0552010bd81debbb10539350fe15d36d9b90e5e682faeb1d",
    "original": "scholar",
    "translation": "",
    "context": ""
  },
  {
    "key": "1966c7464991bee852395eaced5188bfae5e90a2f30711fdc2f2597a22e99044",
    "original": "{Why will you not learn?! | Ignorance is bliss.}",
    "translation": "",
    "context": "Text = \"{Why will you not learn?! | Ignorance is bliss.}\""
  }
]