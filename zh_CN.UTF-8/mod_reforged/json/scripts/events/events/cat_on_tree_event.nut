[
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Archer.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Ranged Skill\""
  },
  {
    "key": "6f726fc77b4df6ce7802402b5b22b1df8a4be30015c423307b0eee66f71c4ca0",
    "original": " gains [color=",
    "translation": "",
    "context": "_event.m.Ratcatcher.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Initiative\""
  },
  {
    "key": "4388e0933ed08e501c108ba85f2f7f7ef684da23c9e549d50e8e08424338ae5d",
    "original": "%archerfull%, try to knock it down with an arrow?",
    "translation": "",
    "context": "Text = \"%archerfull%, try to knock it down with an arrow?\""
  },
  {
    "key": "b74828d7de3ed3ce42b398746fc3950696d7131bc25e7ce875d32d517e5822a0",
    "original": "%ratcatcherfull% has something up his sleeve.",
    "translation": "",
    "context": "Text = \"%ratcatcherfull% has something up his sleeve.\""
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "632d120fb328032d2e9d1040132290c11daf80abb42cb748d7bb60b075fc512c",
    "original": "Accidentally shot a little girl's pet cat",
    "translation": "",
    "context": ""
  },
  {
    "key": "1f1b8deaf876a9e0b37464f3a4181fc449364378095fb6adb35a1c8ab00ccc67",
    "original": "At %townname%",
    "translation": "",
    "context": "this.m.Title = \"At %townname%\""
  },
  {
    "key": "f67ab10ad4e4c53121b6a5fe4da9c10ddee905b978d3788d2723d7bfacbe28a9",
    "original": "F",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"F\";;\n    return;\n}"
  },
  {
    "key": "f67ab10ad4e4c53121b6a5fe4da9c10ddee905b978d3788d2723d7bfacbe28a9",
    "original": "F",
    "translation": "",
    "context": ""
  },
  {
    "key": "f67ab10ad4e4c53121b6a5fe4da9c10ddee905b978d3788d2723d7bfacbe28a9",
    "original": "F",
    "translation": "",
    "context": "ID = \"F\""
  },
  {
    "key": "f67ab10ad4e4c53121b6a5fe4da9c10ddee905b978d3788d2723d7bfacbe28a9",
    "original": "F",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.cat_on_tree\";\n    this.m.Title = \"At %townname%\";\n    this.m.Cooldown = 999999.0 * this.World.getTime().SecondsPerDay;\n    function start(_event){\n        if (_event.m.Archer != null) {\n            function getResult(_event){\n                if (this.Math.rand(1, 100) <= 70) {\n                    return \"ArrowGood\";\n                } else {\n                    return \"ArrowBad\";\n                };\n                return;\n            };\n            this.Options.push({\n                Text = \"%archerfull%, try to knock it down with an arrow?\"\n                getResult = function getResult(_event){\n                    if (this.Math.rand(1, 100) <= 70) {\n                        return \"ArrowGood\";\n                    } else {\n                        return \"ArrowBad\";\n                    };\n                    return;\n                }\n            })\n        };\n        if (_event.m.Ratcatcher != null) {\n            function getResult(_event){\n                return \"Ratcatcher\";;\n                return;\n            };\n            this.Options.push({\n                Text = \"%ratcatcherfull% has something up his sleeve.\"\n                getResult = function getResult(_event){\n                    return \"Ratcatcher\";;\n                    return;\n                }\n            })\n        };\n        function getResult(_event){\n            return \"F\";;\n            return;\n        };\n        this.Options.push({\n            Text = \"This really isn't our problem.\"\n            getResult = function getResult(_event){\n                return \"F\";;\n                return;\n            }\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]You find a boy and girl looking up a tree. The girl throws her hands up.%SPEECH_ON%Alright, stay there until you die! See if I care!%SPEECH_OFF%The boy, spotting you, asks if perhaps you could help them get their cat out of the tree. Looking up, you do see a feline flopped over a branch, basking in the sun.\"\n        Image = \"\"\n        List = []\n        Options = []\n        start = function start(_event){\n            if (_event.m.Archer != null) {\n                function getResult(_event){\n                    if (this.Math.rand(1, 100) <= 70) {\n                        return \"ArrowGood\";\n                    } else {\n                        return \"ArrowBad\";\n                    };\n                    return;\n                };\n                this.Options.push({\n                    Text = \"%archerfull%, try to knock it down with an arrow?\"\n                    getResult = function getResult(_event){\n                        if (this.Math.rand(1, 100) <= 70) {\n                            return \"ArrowGood\";\n                        } else {\n                            return \"ArrowBad\";\n                        };\n                        return;\n                    }\n                })\n            };\n            if (_event.m.Ratcatcher != null) {\n                function getResult(_event){\n                    return \"Ratcatcher\";;\n                    return;\n                };\n                this.Options.push({\n                    Text = \"%ratcatcherfull% has something up his sleeve.\"\n                    getResult = function getResult(_event){\n                        return \"Ratcatcher\";;\n                        return;\n                    }\n                })\n            };\n            function getResult(_event){\n                return \"F\";;\n                return;\n            };\n            this.Options.push({\n                Text = \"This really isn't our problem.\"\n                getResult = function getResult(_event){\n                    return \"F\";;\n                    return;\n                }\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.Assets.addMoralReputation(1);\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Archer.getImagePath());\n        _event.m.Archer.getBaseProperties()[3] += 1;\n        _event.m.Archer.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/ranged_skill.png\"\n            text = _event.m.Archer.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Ranged Skill\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"ArrowGood\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]%archer% nocks an arrow and sticks his tongue out as he aims up the tree. The girl and boy don't seem fond of this idea and clap their hands over their eyes. The archer looses the shot and it cracks against the cat's branch, breaking it and sending the cat cartwheeling down the tree like a game of devil sticks. When it hits the ground, the boy and girl lunge on it. They pet it and thank you for your troubles. The girl squeezes the cat warmly.%SPEECH_ON%Finally, we got ourselves something to eat!%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Wait, what?\"\n            getResult = function getResult(_event){\n                this.World.Assets.addMoralReputation(1);\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Archer.getImagePath());\n            _event.m.Archer.getBaseProperties()[3] += 1;\n            _event.m.Archer.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/ranged_skill.png\"\n                text = _event.m.Archer.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Ranged Skill\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Archer.getImagePath());\n        _event.m.Archer.worsenMood(1.0, \"Accidentally shot a little girl's pet cat\");\n        if (_event.m.Archer.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Archer.getMoodState()]\n                text = _event.m.Archer.getName() + this.Const.MoodStateEvent[_event.m.Archer.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"ArrowBad\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]%archer% readies himself, nocking an arrow and taking aim. The cat purrs as it stares down the line of the shot, rather sublime in its suicidal stance. Closing one eye, the archer lets the arrow fly. There isn't much mewling to be had. The cat tumbles down the tree like a game of devil sticks and lands on the ground with an arrow shaft halfway out its head. The girl crouches down and stares at the slinky bit of brain wobbling off the arrowtip. She looks up at you, as though it were you who fired the shot.%SPEECH_ON%That was my friend.%SPEECH_OFF%You tell her you're sorry and that she'll find more friends. As for the boy, he pockets the bit of brain and slings the cat carcass over his shoulder. He bleakly states.%SPEECH_ON%At least we've somethin' to eat now.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Rest in peace, kitty.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Archer.getImagePath());\n            _event.m.Archer.worsenMood(1.0, \"Accidentally shot a little girl's pet cat\");\n            if (_event.m.Archer.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Archer.getMoodState()]\n                    text = _event.m.Archer.getName() + this.Const.MoodStateEvent[_event.m.Archer.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.Assets.addMoralReputation(1);\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Ratcatcher.getImagePath());\n        _event.m.Ratcatcher.getBaseProperties()[3] += 2;\n        _event.m.Ratcatcher.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/initiative.png\"\n            text = _event.m.Ratcatcher.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Initiative\"\n        });\n        _event.m.Ratcatcher.improveMood(1.0, \"Impressed everyone with his swiftness\");\n        if (_event.m.Ratcatcher.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Ratcatcher.getMoodState()]\n                text = _event.m.Ratcatcher.getName() + this.Const.MoodStateEvent[_event.m.Ratcatcher.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"Ratcatcher\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]%ratcatcher% snaps his fingers.%SPEECH_ON%Oy, I'veuhplan! You little runts just wait a moment!%SPEECH_OFF%The rat catcher takes a rat out of his pocket you'd no idea he even had. Chirping his lips like a mewling cat himself, he holds the little rodent up. The cat takes notice, perking its ears.%SPEECH_ON%Yeah that's right you pussy, c'mon down, it's lunch time.%SPEECH_OFF%The rat catcher brings the rat to his lips and whispers.%SPEECH_ON%No it's not, heheh.%SPEECH_OFF%As the cat descends, %ratcatcher% holds his friend out a little more. It begins to scrape and scuttle against his hands, perhaps not trusting its master to keep it. But the moment the cat lunges for the meal, the rat catcher pockets the rat and snags the cat all in one swift motion. The children clap and cheer as he hands the cat over. Even some of the men are impressed by the fella's feline-like reflexes!\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Masterfully done!\"\n            getResult = function getResult(_event){\n                this.World.Assets.addMoralReputation(1);\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Ratcatcher.getImagePath());\n            _event.m.Ratcatcher.getBaseProperties()[3] += 2;\n            _event.m.Ratcatcher.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/initiative.png\"\n                text = _event.m.Ratcatcher.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Initiative\"\n            });\n            _event.m.Ratcatcher.improveMood(1.0, \"Impressed everyone with his swiftness\");\n            if (_event.m.Ratcatcher.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Ratcatcher.getMoodState()]\n                    text = _event.m.Ratcatcher.getName() + this.Const.MoodStateEvent[_event.m.Ratcatcher.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"F\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]You bluntly tell the kids they should get a dog and make your leave.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"The cat doesn't wanna be your friend anyway.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "f67ab10ad4e4c53121b6a5fe4da9c10ddee905b978d3788d2723d7bfacbe28a9",
    "original": "F",
    "translation": "",
    "context": "start = function start(_event){\n    if (_event.m.Archer != null) {\n        function getResult(_event){\n            if (this.Math.rand(1, 100) <= 70) {\n                return \"ArrowGood\";\n            } else {\n                return \"ArrowBad\";\n            };\n            return;\n        };\n        this.Options.push({\n            Text = \"%archerfull%, try to knock it down with an arrow?\"\n            getResult = function getResult(_event){\n                if (this.Math.rand(1, 100) <= 70) {\n                    return \"ArrowGood\";\n                } else {\n                    return \"ArrowBad\";\n                };\n                return;\n            }\n        })\n    };\n    if (_event.m.Ratcatcher != null) {\n        function getResult(_event){\n            return \"Ratcatcher\";;\n            return;\n        };\n        this.Options.push({\n            Text = \"%ratcatcherfull% has something up his sleeve.\"\n            getResult = function getResult(_event){\n                return \"Ratcatcher\";;\n                return;\n            }\n        })\n    };\n    function getResult(_event){\n        return \"F\";;\n        return;\n    };\n    this.Options.push({\n        Text = \"This really isn't our problem.\"\n        getResult = function getResult(_event){\n            return \"F\";;\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "a7b7bd7af7b9ef5763fa46ad9e599d4e6f50853f1f5a52d0ebe2500dcc4ab9ff",
    "original": "Impressed everyone with his swiftness",
    "translation": "",
    "context": ""
  },
  {
    "key": "0c39217eccb12fb15c1725a84541608247c59ae4e0c04cee3763948ad82e5f90",
    "original": "Masterfully done!",
    "translation": "",
    "context": "Text = \"Masterfully done!\""
  },
  {
    "key": "9071a20c47173ff89ce63be8097156a214c9368de819dfe84d17a40eb8452a27",
    "original": "Ratcatcher",
    "translation": "",
    "context": ""
  },
  {
    "key": "9071a20c47173ff89ce63be8097156a214c9368de819dfe84d17a40eb8452a27",
    "original": "Ratcatcher",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.cat_on_tree\";\n    this.m.Title = \"At %townname%\";\n    this.m.Cooldown = 999999.0 * this.World.getTime().SecondsPerDay;\n    function start(_event){\n        if (_event.m.Archer != null) {\n            function getResult(_event){\n                if (this.Math.rand(1, 100) <= 70) {\n                    return \"ArrowGood\";\n                } else {\n                    return \"ArrowBad\";\n                };\n                return;\n            };\n            this.Options.push({\n                Text = \"%archerfull%, try to knock it down with an arrow?\"\n                getResult = function getResult(_event){\n                    if (this.Math.rand(1, 100) <= 70) {\n                        return \"ArrowGood\";\n                    } else {\n                        return \"ArrowBad\";\n                    };\n                    return;\n                }\n            })\n        };\n        if (_event.m.Ratcatcher != null) {\n            function getResult(_event){\n                return \"Ratcatcher\";;\n                return;\n            };\n            this.Options.push({\n                Text = \"%ratcatcherfull% has something up his sleeve.\"\n                getResult = function getResult(_event){\n                    return \"Ratcatcher\";;\n                    return;\n                }\n            })\n        };\n        function getResult(_event){\n            return \"F\";;\n            return;\n        };\n        this.Options.push({\n            Text = \"This really isn't our problem.\"\n            getResult = function getResult(_event){\n                return \"F\";;\n                return;\n            }\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]You find a boy and girl looking up a tree. The girl throws her hands up.%SPEECH_ON%Alright, stay there until you die! See if I care!%SPEECH_OFF%The boy, spotting you, asks if perhaps you could help them get their cat out of the tree. Looking up, you do see a feline flopped over a branch, basking in the sun.\"\n        Image = \"\"\n        List = []\n        Options = []\n        start = function start(_event){\n            if (_event.m.Archer != null) {\n                function getResult(_event){\n                    if (this.Math.rand(1, 100) <= 70) {\n                        return \"ArrowGood\";\n                    } else {\n                        return \"ArrowBad\";\n                    };\n                    return;\n                };\n                this.Options.push({\n                    Text = \"%archerfull%, try to knock it down with an arrow?\"\n                    getResult = function getResult(_event){\n                        if (this.Math.rand(1, 100) <= 70) {\n                            return \"ArrowGood\";\n                        } else {\n                            return \"ArrowBad\";\n                        };\n                        return;\n                    }\n                })\n            };\n            if (_event.m.Ratcatcher != null) {\n                function getResult(_event){\n                    return \"Ratcatcher\";;\n                    return;\n                };\n                this.Options.push({\n                    Text = \"%ratcatcherfull% has something up his sleeve.\"\n                    getResult = function getResult(_event){\n                        return \"Ratcatcher\";;\n                        return;\n                    }\n                })\n            };\n            function getResult(_event){\n                return \"F\";;\n                return;\n            };\n            this.Options.push({\n                Text = \"This really isn't our problem.\"\n                getResult = function getResult(_event){\n                    return \"F\";;\n                    return;\n                }\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.Assets.addMoralReputation(1);\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Archer.getImagePath());\n        _event.m.Archer.getBaseProperties()[3] += 1;\n        _event.m.Archer.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/ranged_skill.png\"\n            text = _event.m.Archer.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Ranged Skill\"\n        });\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"ArrowGood\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]%archer% nocks an arrow and sticks his tongue out as he aims up the tree. The girl and boy don't seem fond of this idea and clap their hands over their eyes. The archer looses the shot and it cracks against the cat's branch, breaking it and sending the cat cartwheeling down the tree like a game of devil sticks. When it hits the ground, the boy and girl lunge on it. They pet it and thank you for your troubles. The girl squeezes the cat warmly.%SPEECH_ON%Finally, we got ourselves something to eat!%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Wait, what?\"\n            getResult = function getResult(_event){\n                this.World.Assets.addMoralReputation(1);\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Archer.getImagePath());\n            _event.m.Archer.getBaseProperties()[3] += 1;\n            _event.m.Archer.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/ranged_skill.png\"\n                text = _event.m.Archer.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Ranged Skill\"\n            });\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Archer.getImagePath());\n        _event.m.Archer.worsenMood(1.0, \"Accidentally shot a little girl's pet cat\");\n        if (_event.m.Archer.getMoodState() < this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Archer.getMoodState()]\n                text = _event.m.Archer.getName() + this.Const.MoodStateEvent[_event.m.Archer.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"ArrowBad\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]%archer% readies himself, nocking an arrow and taking aim. The cat purrs as it stares down the line of the shot, rather sublime in its suicidal stance. Closing one eye, the archer lets the arrow fly. There isn't much mewling to be had. The cat tumbles down the tree like a game of devil sticks and lands on the ground with an arrow shaft halfway out its head. The girl crouches down and stares at the slinky bit of brain wobbling off the arrowtip. She looks up at you, as though it were you who fired the shot.%SPEECH_ON%That was my friend.%SPEECH_OFF%You tell her you're sorry and that she'll find more friends. As for the boy, he pockets the bit of brain and slings the cat carcass over his shoulder. He bleakly states.%SPEECH_ON%At least we've somethin' to eat now.%SPEECH_OFF%\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Rest in peace, kitty.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Archer.getImagePath());\n            _event.m.Archer.worsenMood(1.0, \"Accidentally shot a little girl's pet cat\");\n            if (_event.m.Archer.getMoodState() < this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Archer.getMoodState()]\n                    text = _event.m.Archer.getName() + this.Const.MoodStateEvent[_event.m.Archer.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        this.World.Assets.addMoralReputation(1);\n        return 0;;\n        return;\n    };\n    function start(_event){\n        this.Characters.push(_event.m.Ratcatcher.getImagePath());\n        _event.m.Ratcatcher.getBaseProperties()[3] += 2;\n        _event.m.Ratcatcher.getSkills().update();\n        this.List.push({\n            id = 16\n            icon = \"ui/icons/initiative.png\"\n            text = _event.m.Ratcatcher.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Initiative\"\n        });\n        _event.m.Ratcatcher.improveMood(1.0, \"Impressed everyone with his swiftness\");\n        if (_event.m.Ratcatcher.getMoodState() >= this.Const.MoodState.Neutral) {\n            this.List.push({\n                id = 10\n                icon = this.Const.MoodStateIcon[_event.m.Ratcatcher.getMoodState()]\n                text = _event.m.Ratcatcher.getName() + this.Const.MoodStateEvent[_event.m.Ratcatcher.getMoodState()]\n            })\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"Ratcatcher\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]%ratcatcher% snaps his fingers.%SPEECH_ON%Oy, I'veuhplan! You little runts just wait a moment!%SPEECH_OFF%The rat catcher takes a rat out of his pocket you'd no idea he even had. Chirping his lips like a mewling cat himself, he holds the little rodent up. The cat takes notice, perking its ears.%SPEECH_ON%Yeah that's right you pussy, c'mon down, it's lunch time.%SPEECH_OFF%The rat catcher brings the rat to his lips and whispers.%SPEECH_ON%No it's not, heheh.%SPEECH_OFF%As the cat descends, %ratcatcher% holds his friend out a little more. It begins to scrape and scuttle against his hands, perhaps not trusting its master to keep it. But the moment the cat lunges for the meal, the rat catcher pockets the rat and snags the cat all in one swift motion. The children clap and cheer as he hands the cat over. Even some of the men are impressed by the fella's feline-like reflexes!\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"Masterfully done!\"\n            getResult = function getResult(_event){\n                this.World.Assets.addMoralReputation(1);\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            this.Characters.push(_event.m.Ratcatcher.getImagePath());\n            _event.m.Ratcatcher.getBaseProperties()[3] += 2;\n            _event.m.Ratcatcher.getSkills().update();\n            this.List.push({\n                id = 16\n                icon = \"ui/icons/initiative.png\"\n                text = _event.m.Ratcatcher.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Initiative\"\n            });\n            _event.m.Ratcatcher.improveMood(1.0, \"Impressed everyone with his swiftness\");\n            if (_event.m.Ratcatcher.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[_event.m.Ratcatcher.getMoodState()]\n                    text = _event.m.Ratcatcher.getName() + this.Const.MoodStateEvent[_event.m.Ratcatcher.getMoodState()]\n                })\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"F\"\n        Text = \"[img]gfx/ui/events/event_97.png[/img]You bluntly tell the kids they should get a dog and make your leave.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"The cat doesn't wanna be your friend anyway.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "9071a20c47173ff89ce63be8097156a214c9368de819dfe84d17a40eb8452a27",
    "original": "Ratcatcher",
    "translation": "",
    "context": "start = function start(_event){\n    if (_event.m.Archer != null) {\n        function getResult(_event){\n            if (this.Math.rand(1, 100) <= 70) {\n                return \"ArrowGood\";\n            } else {\n                return \"ArrowBad\";\n            };\n            return;\n        };\n        this.Options.push({\n            Text = \"%archerfull%, try to knock it down with an arrow?\"\n            getResult = function getResult(_event){\n                if (this.Math.rand(1, 100) <= 70) {\n                    return \"ArrowGood\";\n                } else {\n                    return \"ArrowBad\";\n                };\n                return;\n            }\n        })\n    };\n    if (_event.m.Ratcatcher != null) {\n        function getResult(_event){\n            return \"Ratcatcher\";;\n            return;\n        };\n        this.Options.push({\n            Text = \"%ratcatcherfull% has something up his sleeve.\"\n            getResult = function getResult(_event){\n                return \"Ratcatcher\";;\n                return;\n            }\n        })\n    };\n    function getResult(_event){\n        return \"F\";;\n        return;\n    };\n    this.Options.push({\n        Text = \"This really isn't our problem.\"\n        getResult = function getResult(_event){\n            return \"F\";;\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "9071a20c47173ff89ce63be8097156a214c9368de819dfe84d17a40eb8452a27",
    "original": "Ratcatcher",
    "translation": "",
    "context": "getResult = function getResult(_event){\n    return \"Ratcatcher\";;\n    return;\n}"
  },
  {
    "key": "9071a20c47173ff89ce63be8097156a214c9368de819dfe84d17a40eb8452a27",
    "original": "Ratcatcher",
    "translation": "",
    "context": "ID = \"Ratcatcher\""
  },
  {
    "key": "6389c60c5af604f27ea65ef67134e544fc0e0edf570a273fac4ef462f3b0941e",
    "original": "Rest in peace, kitty.",
    "translation": "",
    "context": "Text = \"Rest in peace, kitty.\""
  },
  {
    "key": "5ff10d5dc56f99aa14cf5c47b24803daf1721c1152b715dec15c741750b1f94e",
    "original": "The cat doesn't wanna be your friend anyway.",
    "translation": "",
    "context": "Text = \"The cat doesn't wanna be your friend anyway.\""
  },
  {
    "key": "3b0a84d1ad6f3275014d5f998f64ee543c3482360abdee142cecc06934a68ee5",
    "original": "This really isn't our problem.",
    "translation": "",
    "context": "Text = \"This really isn't our problem.\""
  },
  {
    "key": "3fe2a07691e51426f2a7f4c755c22535fe139c758c314ed1da4023aa70bd563a",
    "original": "Wait, what?",
    "translation": "",
    "context": "Text = \"Wait, what?\""
  },
  {
    "key": "61689e92267261c04c9da05a1b81083ffcae2dc0260780905c0fa9c4f33857f0",
    "original": "[img]gfx/ui/events/event_97.png[/img]%archer% nocks an arrow and sticks his tongue out as he aims up the tree. The girl and boy don't seem fond of this idea and clap their hands over their eyes. The archer looses the shot and it cracks against the cat's branch, breaking it and sending the cat cartwheeling down the tree like a game of devil sticks. When it hits the ground, the boy and girl lunge on it. They pet it and thank you for your troubles. The girl squeezes the cat warmly.%SPEECH_ON%Finally, we got ourselves something to eat!%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_97.png[/img]%archer% nocks an arrow and sticks his tongue out as he aims up the tree. The girl and boy don't seem fond of this idea and clap their hands over their eyes. The archer looses the shot and it cracks against the cat's branch, breaking it and sending the cat cartwheeling down the tree like a game of devil sticks. When it hits the ground, the boy and girl lunge on it. They pet it and thank you for your troubles. The girl squeezes the cat warmly.%SPEECH_ON%Finally, we got ourselves something to eat!%SPEECH_OFF%\""
  },
  {
    "key": "7f5b5ef5760b8b587525d9393664d164e9c9a4c193f188010b5e1d3812cc56a9",
    "original": "[img]gfx/ui/events/event_97.png[/img]%archer% readies himself, nocking an arrow and taking aim. The cat purrs as it stares down the line of the shot, rather sublime in its suicidal stance. Closing one eye, the archer lets the arrow fly. There isn't much mewling to be had. The cat tumbles down the tree like a game of devil sticks and lands on the ground with an arrow shaft halfway out its head. The girl crouches down and stares at the slinky bit of brain wobbling off the arrowtip. She looks up at you, as though it were you who fired the shot.%SPEECH_ON%That was my friend.%SPEECH_OFF%You tell her you're sorry and that she'll find more friends. As for the boy, he pockets the bit of brain and slings the cat carcass over his shoulder. He bleakly states.%SPEECH_ON%At least we've somethin' to eat now.%SPEECH_OFF%",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_97.png[/img]%archer% readies himself, nocking an arrow and taking aim. The cat purrs as it stares down the line of the shot, rather sublime in its suicidal stance. Closing one eye, the archer lets the arrow fly. There isn't much mewling to be had. The cat tumbles down the tree like a game of devil sticks and lands on the ground with an arrow shaft halfway out its head. The girl crouches down and stares at the slinky bit of brain wobbling off the arrowtip. She looks up at you, as though it were you who fired the shot.%SPEECH_ON%That was my friend.%SPEECH_OFF%You tell her you're sorry and that she'll find more friends. As for the boy, he pockets the bit of brain and slings the cat carcass over his shoulder. He bleakly states.%SPEECH_ON%At least we've somethin' to eat now.%SPEECH_OFF%\""
  },
  {
    "key": "654e5e3b40b4d805425d9ebc876d5ca424aa3b519d7925d47854d485095ca2b4",
    "original": "[img]gfx/ui/events/event_97.png[/img]%ratcatcher% snaps his fingers.%SPEECH_ON%Oy, I'veuhplan! You little runts just wait a moment!%SPEECH_OFF%The rat catcher takes a rat out of his pocket you'd no idea he even had. Chirping his lips like a mewling cat himself, he holds the little rodent up. The cat takes notice, perking its ears.%SPEECH_ON%Yeah that's right you pussy, c'mon down, it's lunch time.%SPEECH_OFF%The rat catcher brings the rat to his lips and whispers.%SPEECH_ON%No it's not, heheh.%SPEECH_OFF%As the cat descends, %ratcatcher% holds his friend out a little more. It begins to scrape and scuttle against his hands, perhaps not trusting its master to keep it. But the moment the cat lunges for the meal, the rat catcher pockets the rat and snags the cat all in one swift motion. The children clap and cheer as he hands the cat over. Even some of the men are impressed by the fella's feline-like reflexes!",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_97.png[/img]%ratcatcher% snaps his fingers.%SPEECH_ON%Oy, I'veuhplan! You little runts just wait a moment!%SPEECH_OFF%The rat catcher takes a rat out of his pocket you'd no idea he even had. Chirping his lips like a mewling cat himself, he holds the little rodent up. The cat takes notice, perking its ears.%SPEECH_ON%Yeah that's right you pussy, c'mon down, it's lunch time.%SPEECH_OFF%The rat catcher brings the rat to his lips and whispers.%SPEECH_ON%No it's not, heheh.%SPEECH_OFF%As the cat descends, %ratcatcher% holds his friend out a little more. It begins to scrape and scuttle against his hands, perhaps not trusting its master to keep it. But the moment the cat lunges for the meal, the rat catcher pockets the rat and snags the cat all in one swift motion. The children clap and cheer as he hands the cat over. Even some of the men are impressed by the fella's feline-like reflexes!\""
  },
  {
    "key": "28861a5b23ef0976183eb21d78950c84f6bf578ce6ef262f253b86df5e6d188f",
    "original": "[img]gfx/ui/events/event_97.png[/img]You bluntly tell the kids they should get a dog and make your leave.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_97.png[/img]You bluntly tell the kids they should get a dog and make your leave.\""
  },
  {
    "key": "42a161a6b5322648926a9307da3af443eda3fa42d3404800dbe1eb841612ef30",
    "original": "[img]gfx/ui/events/event_97.png[/img]You find a boy and girl looking up a tree. The girl throws her hands up.%SPEECH_ON%Alright, stay there until you die! See if I care!%SPEECH_OFF%The boy, spotting you, asks if perhaps you could help them get their cat out of the tree. Looking up, you do see a feline flopped over a branch, basking in the sun.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_97.png[/img]You find a boy and girl looking up a tree. The girl throws her hands up.%SPEECH_ON%Alright, stay there until you die! See if I care!%SPEECH_OFF%The boy, spotting you, asks if perhaps you could help them get their cat out of the tree. Looking up, you do see a feline flopped over a branch, basking in the sun.\""
  },
  {
    "key": "a34706e41c3b49c2e67dd0cd125a5c6ec74433971cec6928e0cb09bc045e2226",
    "original": "]+1[/color] Ranged Skill",
    "translation": "",
    "context": "_event.m.Archer.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+1[/color] Ranged Skill\""
  },
  {
    "key": "a4c4164934c93e5341c1820ffe735eb63b69353e506ab2bced974ffa837b98b4",
    "original": "]+2[/color] Initiative",
    "translation": "",
    "context": "_event.m.Ratcatcher.getName() + \" gains [color=\" + this.Const.UI.Color.PositiveEventValue + \"]+2[/color] Initiative\""
  },
  {
    "key": "e226306f3f87b8f3f73a51521b0c74d7fb5837c4f1f790f99c0a239c9fe5250e",
    "original": "archer",
    "translation": "",
    "context": ""
  },
  {
    "key": "0d8b397159feb386abbe399d3dca2c867c5e305f42ce811476c6b4f8c2790722",
    "original": "archerfull",
    "translation": "",
    "context": ""
  },
  {
    "key": "636c2a7f87827ebf077bfee6244895de18748d86b83fbbc2cdb33e7d2ccbba16",
    "original": "ratcatcher",
    "translation": "",
    "context": ""
  },
  {
    "key": "9c369d856067decad10fbf0a7a19e55a5c6ae59af66be8bcf03b4395104583a8",
    "original": "ratcatcherfull",
    "translation": "",
    "context": ""
  },
  {
    "key": "cce8cfe2ad73528fe61142ab4f5cda39410f936f701b34c2a94f736ac0a8797d",
    "original": "townname",
    "translation": "",
    "context": ""
  }
]