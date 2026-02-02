[
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Monk1.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\""
  },
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Monk2.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\""
  },
  {
    "key": "8c4401d0753098d7a38cbf7246a4f9cc426e9ba62a6ea25d2de002bed9e8fc3a",
    "original": " suffers ",
    "translation": "",
    "context": "_event.m.Monk2.getName() + \" suffers \" + injury.getNameOnly()"
  },
  {
    "key": "8c4401d0753098d7a38cbf7246a4f9cc426e9ba62a6ea25d2de002bed9e8fc3a",
    "original": " suffers ",
    "translation": "",
    "context": "_event.m.Monk1.getName() + \" suffers \" + injury.getNameOnly()"
  },
  {
    "key": "b7bc905957708d55178221afa8341e37cfc0312b758eb88e1a3ea8b3e2fee3c6",
    "original": " suffers light wounds",
    "translation": "",
    "context": "_event.m.Monk1.getName() + \" suffers light wounds\""
  },
  {
    "key": "b7bc905957708d55178221afa8341e37cfc0312b758eb88e1a3ea8b3e2fee3c6",
    "original": " suffers light wounds",
    "translation": "",
    "context": "_event.m.Monk2.getName() + \" suffers light wounds\""
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
    "key": "cc3355988684f77fd91840b57799b88a0d88ad176b0ea3c9ee1e30e3a8f8ab60",
    "original": "A mercenary company is no place to talk religion!",
    "translation": "",
    "context": "Text = \"A mercenary company is no place to talk religion!\""
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
    "context": "create = function create(){\n    this.m.ID = \"event.monk_vs_monk\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 60.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk1.getImagePath());\n        this.Characters.push(_event.m.Monk2.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img] Ah, the campfire is brimming with talk and chatter. The men are enjoying some beer and food when rather suddenly the shouts of two men in particular get everyone else to quiet down, not because they yell louder than the rest, but because it's rather out of character for the both of them: the monks %monk1% and %monk2% are screaming-deep in a theological debate.\\n\\nYou've not the education to understand the intricacies nor complexities of what they are arguing, but you do understand that getting into another man's face and pointing furiously at him, or at a holy book, is probably asking for trouble one way or another.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"This doesn't concern me.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"A mercenary company is no place to talk religion!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk1.getImagePath());\n            this.Characters.push(_event.m.Monk2.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk1.getImagePath());\n        this.Characters.push(_event.m.Monk2.getImagePath());\n        _event.m.Monk1.improveMood(1.0, \"Had a stimulating discourse on religious matters\");\n        if (_event.m.Monk1.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Monk1.getMoodState()]\n                text = _event.m.Monk1.getName() + this.Const.MoodStateEvent[_event.m.Monk1.getMoodState()]\n            })\n        };\n        _event.m.Monk2.improveMood(1, \"Had a stimulating discourse on religious matters\");\n        if (_event.m.Monk2.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Monk2.getMoodState()]\n                text = _event.m.Monk2.getName() + this.Const.MoodStateEvent[_event.m.Monk2.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img] For a moment, you think to stop the debate before it gets out of hand and into fists, but then you remember that this isn't the first time you've seen two holy men exchanging rather heatedly. It's just what they do. So you decide to let the men hash it out. In time, their voices lower in volume, and their faces lower together into a book. They quietly peruse it, bumping heads as they draw their eyes over the pages. Finally, %monk1% raises up, pointing to some sentence.%SPEECH_ON%There! Right there! 'Man from mud', not 'man from blood'. Man can't be from blood, he is blood! Man can't be from himself, see? Now does it make sense?%SPEECH_OFF%Scratching his chin, %monk2% nods, but then wonders aloud.%SPEECH_ON%What if...%SPEECH_OFF%Before he can even finish the thought %monk1% slaps the book closed and throws his hands into the air.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"The holy men avert another crisis.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk1.getImagePath());\n            this.Characters.push(_event.m.Monk2.getImagePath());\n            _event.m.Monk1.improveMood(1.0, \"Had a stimulating discourse on religious matters\");\n            if (_event.m.Monk1.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Monk1.getMoodState()]\n                    text = _event.m.Monk1.getName() + this.Const.MoodStateEvent[_event.m.Monk1.getMoodState()]\n                })\n            };\n            _event.m.Monk2.improveMood(1, \"Had a stimulating discourse on religious matters\");\n            if (_event.m.Monk2.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Monk2.getMoodState()]\n                    text = _event.m.Monk2.getName() + this.Const.MoodStateEvent[_event.m.Monk2.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk1.getImagePath());\n        this.Characters.push(_event.m.Monk2.getImagePath());\n        _event.m.Monk1.getBaseProperties()[3] += 1;\n        _event.m.Monk1.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Monk1.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n        });\n        _event.m.Monk2.getBaseProperties()[3] += 1;\n        _event.m.Monk2.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Monk2.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n        });\n        _event.m.Monk1.worsenMood(1.0, \"Lost his composure and resorted to violence\");\n        if (_event.m.Monk1.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Monk1.getMoodState()]\n                text = _event.m.Monk1.getName() + this.Const.MoodStateEvent[_event.m.Monk1.getMoodState()]\n            })\n        };\n        _event.m.Monk2.worsenMood(1.0, \"Lost his composure and resorted to violence\");\n        if (_event.m.Monk2.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Monk2.getMoodState()]\n                text = _event.m.Monk2.getName() + this.Const.MoodStateEvent[_event.m.Monk2.getMoodState()]\n            })\n        };\n        if (this.Math.rand(1, 100) <= 50) {\n            _event.m.Monk1.addLightInjury();\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/days_wounded.png\"\n                text = _event.m.Monk1.getName() + \" suffers light wounds\"\n            })\n        } else {\n            local injury = _event.m.Monk1.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Monk1.getName() + \" suffers \" + injury.getNameOnly()\n            })\n        };\n        if (this.Math.rand(1, 100) <= 50) {\n            _event.m.Monk2.addLightInjury();\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/days_wounded.png\"\n                text = _event.m.Monk2.getName() + \" suffers light wounds\"\n            })\n        } else {\n            local injury = _event.m.Monk2.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Monk2.getName() + \" suffers \" + injury.getNameOnly()\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]Now, this isn't the first time you've seen two monks squabbling. The last time it happened the debaters hashed it out right quick. So naturally you think these two will do the same. Alas, it isn't to be. Their voices grow louder and louder. You never knew monks could be so sharp-tongued. Fierceness and lewdness don't even begin to describe the insults being thrown back and forth. It isn't but a few seconds later that they are on the ground, wrestling and punching until you order %otherguy% to put an end to it.\\n\\nThe company of sellswords and their bloody daywork, it seems, have left a mark on the once peaceful demeanor of the two.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I suppose this is what they call a crisis of faith.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk1.getImagePath());\n            this.Characters.push(_event.m.Monk2.getImagePath());\n            _event.m.Monk1.getBaseProperties()[3] += 1;\n            _event.m.Monk1.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Monk1.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n            });\n            _event.m.Monk2.getBaseProperties()[3] += 1;\n            _event.m.Monk2.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Monk2.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n            });\n            _event.m.Monk1.worsenMood(1.0, \"Lost his composure and resorted to violence\");\n            if (_event.m.Monk1.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Monk1.getMoodState()]\n                    text = _event.m.Monk1.getName() + this.Const.MoodStateEvent[_event.m.Monk1.getMoodState()]\n                })\n            };\n            _event.m.Monk2.worsenMood(1.0, \"Lost his composure and resorted to violence\");\n            if (_event.m.Monk2.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Monk2.getMoodState()]\n                    text = _event.m.Monk2.getName() + this.Const.MoodStateEvent[_event.m.Monk2.getMoodState()]\n                })\n            };\n            if (this.Math.rand(1, 100) <= 50) {\n                _event.m.Monk1.addLightInjury();\n                this.List.push({\n                    id = 10\n                    icon = \"ui/icons/days_wounded.png\"\n                    text = _event.m.Monk1.getName() + \" suffers light wounds\"\n                })\n            } else {\n                local injury = _event.m.Monk1.addInjury(this.Const.Injury.Brawl);\n                this.List.push({\n                    id = 10\n                    icon = injury.getIcon()\n                    text = _event.m.Monk1.getName() + \" suffers \" + injury.getNameOnly()\n                })\n            };\n            if (this.Math.rand(1, 100) <= 50) {\n                _event.m.Monk2.addLightInjury();\n                this.List.push({\n                    id = 10\n                    icon = \"ui/icons/days_wounded.png\"\n                    text = _event.m.Monk2.getName() + \" suffers light wounds\"\n                })\n            } else {\n                local injury = _event.m.Monk2.addInjury(this.Const.Injury.Brawl);\n                this.List.push({\n                    id = 10\n                    icon = injury.getIcon()\n                    text = _event.m.Monk2.getName() + \" suffers \" + injury.getNameOnly()\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "getResult = function getResult(_event){\n    return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n    return;\n}"
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
    "context": "create = function create(){\n    this.m.ID = \"event.monk_vs_monk\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 60.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n        return;\n    };\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk1.getImagePath());\n        this.Characters.push(_event.m.Monk2.getImagePath());\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img] Ah, the campfire is brimming with talk and chatter. The men are enjoying some beer and food when rather suddenly the shouts of two men in particular get everyone else to quiet down, not because they yell louder than the rest, but because it's rather out of character for the both of them: the monks %monk1% and %monk2% are screaming-deep in a theological debate.\\n\\nYou've not the education to understand the intricacies nor complexities of what they are arguing, but you do understand that getting into another man's face and pointing furiously at him, or at a holy book, is probably asking for trouble one way or another.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"This doesn't concern me.\"\n            getResult = function getResult(_event){\n                return this.Math.rand(1, 100) <= 50 ? \"B\" : \"C\";;\n                return;\n            }\n        },{\n            Text = \"A mercenary company is no place to talk religion!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk1.getImagePath());\n            this.Characters.push(_event.m.Monk2.getImagePath());\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk1.getImagePath());\n        this.Characters.push(_event.m.Monk2.getImagePath());\n        _event.m.Monk1.improveMood(1.0, \"Had a stimulating discourse on religious matters\");\n        if (_event.m.Monk1.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Monk1.getMoodState()]\n                text = _event.m.Monk1.getName() + this.Const.MoodStateEvent[_event.m.Monk1.getMoodState()]\n            })\n        };\n        _event.m.Monk2.improveMood(1, \"Had a stimulating discourse on religious matters\");\n        if (_event.m.Monk2.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Monk2.getMoodState()]\n                text = _event.m.Monk2.getName() + this.Const.MoodStateEvent[_event.m.Monk2.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img] For a moment, you think to stop the debate before it gets out of hand and into fists, but then you remember that this isn't the first time you've seen two holy men exchanging rather heatedly. It's just what they do. So you decide to let the men hash it out. In time, their voices lower in volume, and their faces lower together into a book. They quietly peruse it, bumping heads as they draw their eyes over the pages. Finally, %monk1% raises up, pointing to some sentence.%SPEECH_ON%There! Right there! 'Man from mud', not 'man from blood'. Man can't be from blood, he is blood! Man can't be from himself, see? Now does it make sense?%SPEECH_OFF%Scratching his chin, %monk2% nods, but then wonders aloud.%SPEECH_ON%What if...%SPEECH_OFF%Before he can even finish the thought %monk1% slaps the book closed and throws his hands into the air.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"The holy men avert another crisis.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk1.getImagePath());\n            this.Characters.push(_event.m.Monk2.getImagePath());\n            _event.m.Monk1.improveMood(1.0, \"Had a stimulating discourse on religious matters\");\n            if (_event.m.Monk1.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Monk1.getMoodState()]\n                    text = _event.m.Monk1.getName() + this.Const.MoodStateEvent[_event.m.Monk1.getMoodState()]\n                })\n            };\n            _event.m.Monk2.improveMood(1, \"Had a stimulating discourse on religious matters\");\n            if (_event.m.Monk2.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Monk2.getMoodState()]\n                    text = _event.m.Monk2.getName() + this.Const.MoodStateEvent[_event.m.Monk2.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Monk1.getImagePath());\n        this.Characters.push(_event.m.Monk2.getImagePath());\n        _event.m.Monk1.getBaseProperties()[3] += 1;\n        _event.m.Monk1.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Monk1.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n        });\n        _event.m.Monk2.getBaseProperties()[3] += 1;\n        _event.m.Monk2.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/bravery.png\"\n            text = _event.m.Monk2.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n        });\n        _event.m.Monk1.worsenMood(1.0, \"Lost his composure and resorted to violence\");\n        if (_event.m.Monk1.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Monk1.getMoodState()]\n                text = _event.m.Monk1.getName() + this.Const.MoodStateEvent[_event.m.Monk1.getMoodState()]\n            })\n        };\n        _event.m.Monk2.worsenMood(1.0, \"Lost his composure and resorted to violence\");\n        if (_event.m.Monk2.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Monk2.getMoodState()]\n                text = _event.m.Monk2.getName() + this.Const.MoodStateEvent[_event.m.Monk2.getMoodState()]\n            })\n        };\n        if (this.Math.rand(1, 100) <= 50) {\n            _event.m.Monk1.addLightInjury();\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/days_wounded.png\"\n                text = _event.m.Monk1.getName() + \" suffers light wounds\"\n            })\n        } else {\n            local injury = _event.m.Monk1.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Monk1.getName() + \" suffers \" + injury.getNameOnly()\n            })\n        };\n        if (this.Math.rand(1, 100) <= 50) {\n            _event.m.Monk2.addLightInjury();\n            this.List.push({\n                id = 10\n                icon = \"ui/icons/days_wounded.png\"\n                text = _event.m.Monk2.getName() + \" suffers light wounds\"\n            })\n        } else {\n            local injury = _event.m.Monk2.addInjury(this.Const.Injury.Brawl);\n            this.List.push({\n                id = 10\n                icon = injury.getIcon()\n                text = _event.m.Monk2.getName() + \" suffers \" + injury.getNameOnly()\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_06.png[/img]Now, this isn't the first time you've seen two monks squabbling. The last time it happened the debaters hashed it out right quick. So naturally you think these two will do the same. Alas, it isn't to be. Their voices grow louder and louder. You never knew monks could be so sharp-tongued. Fierceness and lewdness don't even begin to describe the insults being thrown back and forth. It isn't but a few seconds later that they are on the ground, wrestling and punching until you order %otherguy% to put an end to it.\\n\\nThe company of sellswords and their bloody daywork, it seems, have left a mark on the once peaceful demeanor of the two.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"I suppose this is what they call a crisis of faith.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Monk1.getImagePath());\n            this.Characters.push(_event.m.Monk2.getImagePath());\n            _event.m.Monk1.getBaseProperties()[3] += 1;\n            _event.m.Monk1.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Monk1.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n            });\n            _event.m.Monk2.getBaseProperties()[3] += 1;\n            _event.m.Monk2.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/bravery.png\"\n                text = _event.m.Monk2.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\"\n            });\n            _event.m.Monk1.worsenMood(1.0, \"Lost his composure and resorted to violence\");\n            if (_event.m.Monk1.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Monk1.getMoodState()]\n                    text = _event.m.Monk1.getName() + this.Const.MoodStateEvent[_event.m.Monk1.getMoodState()]\n                })\n            };\n            _event.m.Monk2.worsenMood(1.0, \"Lost his composure and resorted to violence\");\n            if (_event.m.Monk2.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Monk2.getMoodState()]\n                    text = _event.m.Monk2.getName() + this.Const.MoodStateEvent[_event.m.Monk2.getMoodState()]\n                })\n            };\n            if (this.Math.rand(1, 100) <= 50) {\n                _event.m.Monk1.addLightInjury();\n                this.List.push({\n                    id = 10\n                    icon = \"ui/icons/days_wounded.png\"\n                    text = _event.m.Monk1.getName() + \" suffers light wounds\"\n                })\n            } else {\n                local injury = _event.m.Monk1.addInjury(this.Const.Injury.Brawl);\n                this.List.push({\n                    id = 10\n                    icon = injury.getIcon()\n                    text = _event.m.Monk1.getName() + \" suffers \" + injury.getNameOnly()\n                })\n            };\n            if (this.Math.rand(1, 100) <= 50) {\n                _event.m.Monk2.addLightInjury();\n                this.List.push({\n                    id = 10\n                    icon = \"ui/icons/days_wounded.png\"\n                    text = _event.m.Monk2.getName() + \" suffers light wounds\"\n                })\n            } else {\n                local injury = _event.m.Monk2.addInjury(this.Const.Injury.Brawl);\n                this.List.push({\n                    id = 10\n                    icon = injury.getIcon()\n                    text = _event.m.Monk2.getName() + \" suffers \" + injury.getNameOnly()\n                })\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "key": "63fdf246821e67b468c00988fe06389986a14d934e9478cd498066a5bec1ab41",
    "original": "Had a stimulating discourse on religious matters",
    "translation": "",
    "context": ""
  },
  {
    "key": "cb54384d9dffbb615067938b8a7d556a3f6ecae6af457a140c5c74fd8adb6ef6",
    "original": "I suppose this is what they call a crisis of faith.",
    "translation": "",
    "context": "Text = \"I suppose this is what they call a crisis of faith.\""
  },
  {
    "key": "c73486dca979e5e041c7a16d626b630806cf36f42f75422e81cbcff95bb7187b",
    "original": "Lost his composure and resorted to violence",
    "translation": "",
    "context": ""
  },
  {
    "key": "5be241116563ea841d1cc5626813231726acd868af591a32e54310f087878bf0",
    "original": "The holy men avert another crisis.",
    "translation": "",
    "context": "Text = \"The holy men avert another crisis.\""
  },
  {
    "key": "6174ec11aeae3ef4f5058a9d802af30fac8db6944404bff787f8dd06e0d9760d",
    "original": "This doesn't concern me.",
    "translation": "",
    "context": "Text = \"This doesn't concern me.\""
  },
  {
    "key": "5a1864bb713e7ae218ff23077172674c9959aa5c0f728976eed401ab5f2cc7bf",
    "original": "[img]gfx/ui/events/event_05.png[/img] Ah, the campfire is brimming with talk and chatter. The men are enjoying some beer and food when rather suddenly the shouts of two men in particular get everyone else to quiet down, not because they yell louder than the rest, but because it's rather out of character for the both of them: the monks %monk1% and %monk2% are screaming-deep in a theological debate.\n\nYou've not the education to understand the intricacies nor complexities of what they are arguing, but you do understand that getting into another man's face and pointing furiously at him, or at a holy book, is probably asking for trouble one way or another.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img] Ah, the campfire is brimming with talk and chatter. The men are enjoying some beer and food when rather suddenly the shouts of two men in particular get everyone else to quiet down, not because they yell louder than the rest, but because it's rather out of character for the both of them: the monks %monk1% and %monk2% are screaming-deep in a theological debate.\\n\\nYou've not the education to understand the intricacies nor complexities of what they are arguing, but you do understand that getting into another man's face and pointing furiously at him, or at a holy book, is probably asking for trouble one way or another.\""
  },
  {
    "key": "981829ed7d14aed2f533ab40768dc4c997251e980ffc6f3807c1f972e5e3142d",
    "original": "[img]gfx/ui/events/event_05.png[/img] For a moment, you think to stop the debate before it gets out of hand and into fists, but then you remember that this isn't the first time you've seen two holy men exchanging rather heatedly. It's just what they do. So you decide to let the men hash it out. In time, their voices lower in volume, and their faces lower together into a book. They quietly peruse it, bumping heads as they draw their eyes over the pages. Finally, %monk1% raises up, pointing to some sentence.%SPEECH_ON%There! Right there! 'Man from mud', not 'man from blood'. Man can't be from blood, he is blood! Man can't be from himself, see? Now does it make sense?%SPEECH_OFF%Scratching his chin, %monk2% nods, but then wonders aloud.%SPEECH_ON%What if...%SPEECH_OFF%Before he can even finish the thought %monk1% slaps the book closed and throws his hands into the air.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img] For a moment, you think to stop the debate before it gets out of hand and into fists, but then you remember that this isn't the first time you've seen two holy men exchanging rather heatedly. It's just what they do. So you decide to let the men hash it out. In time, their voices lower in volume, and their faces lower together into a book. They quietly peruse it, bumping heads as they draw their eyes over the pages. Finally, %monk1% raises up, pointing to some sentence.%SPEECH_ON%There! Right there! 'Man from mud', not 'man from blood'. Man can't be from blood, he is blood! Man can't be from himself, see? Now does it make sense?%SPEECH_OFF%Scratching his chin, %monk2% nods, but then wonders aloud.%SPEECH_ON%What if...%SPEECH_OFF%Before he can even finish the thought %monk1% slaps the book closed and throws his hands into the air.\""
  },
  {
    "key": "aff5c499016cdd566a57eda1bacde3d5a69bfb4fc31d0758462ec92600031725",
    "original": "[img]gfx/ui/events/event_06.png[/img]Now, this isn't the first time you've seen two monks squabbling. The last time it happened the debaters hashed it out right quick. So naturally you think these two will do the same. Alas, it isn't to be. Their voices grow louder and louder. You never knew monks could be so sharp-tongued. Fierceness and lewdness don't even begin to describe the insults being thrown back and forth. It isn't but a few seconds later that they are on the ground, wrestling and punching until you order %otherguy% to put an end to it.\n\nThe company of sellswords and their bloody daywork, it seems, have left a mark on the once peaceful demeanor of the two.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_06.png[/img]Now, this isn't the first time you've seen two monks squabbling. The last time it happened the debaters hashed it out right quick. So naturally you think these two will do the same. Alas, it isn't to be. Their voices grow louder and louder. You never knew monks could be so sharp-tongued. Fierceness and lewdness don't even begin to describe the insults being thrown back and forth. It isn't but a few seconds later that they are on the ground, wrestling and punching until you order %otherguy% to put an end to it.\\n\\nThe company of sellswords and their bloody daywork, it seems, have left a mark on the once peaceful demeanor of the two.\""
  },
  {
    "key": "d77afa2604514fbb33e439e67a1c5f47eb5b0dd68be42a644af4fd56b423bdd6",
    "original": "]+1[/color] Resolve",
    "translation": "",
    "context": "_event.m.Monk1.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\""
  },
  {
    "key": "d77afa2604514fbb33e439e67a1c5f47eb5b0dd68be42a644af4fd56b423bdd6",
    "original": "]+1[/color] Resolve",
    "translation": "",
    "context": "_event.m.Monk2.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Resolve\""
  },
  {
    "key": "70bdd8b515326110e2a5e191c72cd5836fcc14d9ed9f1482e28942f23d61143c",
    "original": "monk1",
    "translation": "",
    "context": ""
  },
  {
    "key": "8b7ecbab2d87bd01d4dbd33e4fb4fb11935bfe7a0e1f80cdc9f88969b776063c",
    "original": "monk2",
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