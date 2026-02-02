[
  {
    "key": "65b93e2be7463d7eeb7a5eb5e47d1f04cc2b1629f9110eb859a6788deff615b8",
    "original": " gets greedy",
    "translation": "",
    "context": "bro.getName() + \" gets greedy\""
  },
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": "ID = \"A\""
  },
  {
    "key": "92c3b504cddf8986d72c8214b078b19a0a8b40af7b2b39b77961d780712b43b1",
    "original": "Aye, it's fine time you all get a raise.",
    "translation": "",
    "context": "Text = \"Aye, it's fine time you all get a raise.\""
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
    "key": "df7e70e5021544f4834bbee64a9e3789febc4be81470df629cad6ddb03320a5c",
    "original": "B",
    "translation": "",
    "context": "create = function create(){\n    this.m.ID = \"event.player_is_rich_event\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 100.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]Over time, you've come to acquire a great deal of money. While you keep the war chest under lock and key, you can't help but notice a few brothers have gotten a bit greedier over the time they've spent in your company. Now you hear rumors of the men demanding higher pay.\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"Aye, it's fine time you all get a raise.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"You all signed the dotted line and get paid according to it.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local brothers = this.World.getPlayerRoster().getAll();\n        foreach( bro in brothers){\n            while ( bro.getSkills().hasSkill(\"trait.player\") || bro.getFlags().get(\"IsPlayerCharacter\") || bro.getBackground().getID() == \"background.slave\" ) {\n\n            };\n            bro.getBaseProperties()[7] += 4;\n            bro.improveMood(2.0, \"Got a pay raise\");\n            if (bro.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                    text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                })\n            }\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]Preempting any sort of mutiny or raise requests, you announce that the group shall have a company-wide raise. Three crowns a day for everyone. As it turns out, the men are quite fond of this move and cheer your name with a huzzah!\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"You've earned it, boys!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local brothers = this.World.getPlayerRoster().getAll();\n            foreach( bro in brothers){\n                while ( bro.getSkills().hasSkill(\"trait.player\") || bro.getFlags().get(\"IsPlayerCharacter\") || bro.getBackground().getID() == \"background.slave\" ) {\n\n                };\n                bro.getBaseProperties()[7] += 4;\n                bro.improveMood(2.0, \"Got a pay raise\");\n                if (bro.getMoodState() >= this.Const.MoodState.Neutral) {\n                    this.List.push({\n                        id = 10\n                        icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                        text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                    })\n                }\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local brothers = this.World.getPlayerRoster().getAll();\n        foreach( bro in brothers){\n            while ( bro.getSkills().hasSkill(\"trait.player\") || bro.getFlags().get(\"IsPlayerCharacter\") || bro.getBackground().getID() == \"background.slave\" ) {\n\n            };\n            if (bro.getSkills().hasSkill(\"trait.greedy\")) {\n                bro.worsenMood(2.0, \"Was denied a pay raise\");\n                if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                    this.List.push({\n                        id = 10\n                        icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                        text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                    })\n                }\n            } else {\n                if (!bro.getBackground().isExcluded(\"trait.greedy\")) {\n                    if (this.Math.rand(1, 100) <= 20) {\n                        local trait = this.new(\"scripts/skills/traits/greedy_trait\");\n                        bro.getSkills().add(trait);\n                        this.List.push({\n                            id = 10\n                            icon = trait.getIcon()\n                            text = bro.getName() + \" gets greedy\"\n                        })\n                    } else {\n                        bro.worsenMood(1.0, \"Was denied a pay raise\");\n                        if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                            this.List.push({\n                                id = 10\n                                icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                                text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                            })\n                        }\n                    }\n                }\n            }\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]Before anyone gets any ideas, you step up before the whole company and announce that there will be no raises. As far as you are concerned, every man present signed the contract. Any prospect of earning more pay shall be done by experience only, and that is only done by doing what sellswords do best: kill.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"That's how it works with the %companyname%.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local brothers = this.World.getPlayerRoster().getAll();\n            foreach( bro in brothers){\n                while ( bro.getSkills().hasSkill(\"trait.player\") || bro.getFlags().get(\"IsPlayerCharacter\") || bro.getBackground().getID() == \"background.slave\" ) {\n\n                };\n                if (bro.getSkills().hasSkill(\"trait.greedy\")) {\n                    bro.worsenMood(2.0, \"Was denied a pay raise\");\n                    if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                        this.List.push({\n                            id = 10\n                            icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                            text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                        })\n                    }\n                } else {\n                    if (!bro.getBackground().isExcluded(\"trait.greedy\")) {\n                        if (this.Math.rand(1, 100) <= 20) {\n                            local trait = this.new(\"scripts/skills/traits/greedy_trait\");\n                            bro.getSkills().add(trait);\n                            this.List.push({\n                                id = 10\n                                icon = trait.getIcon()\n                                text = bro.getName() + \" gets greedy\"\n                            })\n                        } else {\n                            bro.worsenMood(1.0, \"Was denied a pay raise\");\n                            if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                                this.List.push({\n                                    id = 10\n                                    icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                                    text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                                })\n                            }\n                        }\n                    }\n                }\n            };\n            return;\n        }\n    });\n    return;\n}"
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
    "context": "create = function create(){\n    this.m.ID = \"event.player_is_rich_event\";\n    this.m.Title = \"During camp...\";\n    this.m.Cooldown = 100.0 * this.World.getTime().SecondsPerDay;\n    function getResult(_event){\n        return \"B\";;\n        return;\n    };\n    function getResult(_event){\n        return \"C\";;\n        return;\n    };\n    function start(_event){\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"A\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]Over time, you've come to acquire a great deal of money. While you keep the war chest under lock and key, you can't help but notice a few brothers have gotten a bit greedier over the time they've spent in your company. Now you hear rumors of the men demanding higher pay.\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"Aye, it's fine time you all get a raise.\"\n            getResult = function getResult(_event){\n                return \"B\";;\n                return;\n            }\n        },{\n            Text = \"You all signed the dotted line and get paid according to it.\"\n            getResult = function getResult(_event){\n                return \"C\";;\n                return;\n            }\n        }]\n        start = function start(_event){\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local brothers = this.World.getPlayerRoster().getAll();\n        foreach( bro in brothers){\n            while ( bro.getSkills().hasSkill(\"trait.player\") || bro.getFlags().get(\"IsPlayerCharacter\") || bro.getBackground().getID() == \"background.slave\" ) {\n\n            };\n            bro.getBaseProperties()[7] += 4;\n            bro.improveMood(2.0, \"Got a pay raise\");\n            if (bro.getMoodState() >= this.Const.MoodState.Neutral) {\n                this.List.push({\n                    id = 10\n                    icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                    text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                })\n            }\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"B\"\n        Text = \"[img]gfx/ui/events/event_04.png[/img]Preempting any sort of mutiny or raise requests, you announce that the group shall have a company-wide raise. Three crowns a day for everyone. As it turns out, the men are quite fond of this move and cheer your name with a huzzah!\"\n        Image = \"\"\n        List = []\n        Options = [{\n            Text = \"You've earned it, boys!\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local brothers = this.World.getPlayerRoster().getAll();\n            foreach( bro in brothers){\n                while ( bro.getSkills().hasSkill(\"trait.player\") || bro.getFlags().get(\"IsPlayerCharacter\") || bro.getBackground().getID() == \"background.slave\" ) {\n\n                };\n                bro.getBaseProperties()[7] += 4;\n                bro.improveMood(2.0, \"Got a pay raise\");\n                if (bro.getMoodState() >= this.Const.MoodState.Neutral) {\n                    this.List.push({\n                        id = 10\n                        icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                        text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                    })\n                }\n            };\n            return;\n        }\n    });\n    function getResult(_event){\n        return 0;;\n        return;\n    };\n    function start(_event){\n        local brothers = this.World.getPlayerRoster().getAll();\n        foreach( bro in brothers){\n            while ( bro.getSkills().hasSkill(\"trait.player\") || bro.getFlags().get(\"IsPlayerCharacter\") || bro.getBackground().getID() == \"background.slave\" ) {\n\n            };\n            if (bro.getSkills().hasSkill(\"trait.greedy\")) {\n                bro.worsenMood(2.0, \"Was denied a pay raise\");\n                if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                    this.List.push({\n                        id = 10\n                        icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                        text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                    })\n                }\n            } else {\n                if (!bro.getBackground().isExcluded(\"trait.greedy\")) {\n                    if (this.Math.rand(1, 100) <= 20) {\n                        local trait = this.new(\"scripts/skills/traits/greedy_trait\");\n                        bro.getSkills().add(trait);\n                        this.List.push({\n                            id = 10\n                            icon = trait.getIcon()\n                            text = bro.getName() + \" gets greedy\"\n                        })\n                    } else {\n                        bro.worsenMood(1.0, \"Was denied a pay raise\");\n                        if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                            this.List.push({\n                                id = 10\n                                icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                                text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                            })\n                        }\n                    }\n                }\n            }\n        };\n        return;\n    };\n    this.m.Screens.push({\n        ID = \"C\"\n        Text = \"[img]gfx/ui/events/event_05.png[/img]Before anyone gets any ideas, you step up before the whole company and announce that there will be no raises. As far as you are concerned, every man present signed the contract. Any prospect of earning more pay shall be done by experience only, and that is only done by doing what sellswords do best: kill.\"\n        Image = \"\"\n        List = []\n        Characters = []\n        Options = [{\n            Text = \"That's how it works with the %companyname%.\"\n            getResult = function getResult(_event){\n                return 0;;\n                return;\n            }\n        }]\n        start = function start(_event){\n            local brothers = this.World.getPlayerRoster().getAll();\n            foreach( bro in brothers){\n                while ( bro.getSkills().hasSkill(\"trait.player\") || bro.getFlags().get(\"IsPlayerCharacter\") || bro.getBackground().getID() == \"background.slave\" ) {\n\n                };\n                if (bro.getSkills().hasSkill(\"trait.greedy\")) {\n                    bro.worsenMood(2.0, \"Was denied a pay raise\");\n                    if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                        this.List.push({\n                            id = 10\n                            icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                            text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                        })\n                    }\n                } else {\n                    if (!bro.getBackground().isExcluded(\"trait.greedy\")) {\n                        if (this.Math.rand(1, 100) <= 20) {\n                            local trait = this.new(\"scripts/skills/traits/greedy_trait\");\n                            bro.getSkills().add(trait);\n                            this.List.push({\n                                id = 10\n                                icon = trait.getIcon()\n                                text = bro.getName() + \" gets greedy\"\n                            })\n                        } else {\n                            bro.worsenMood(1.0, \"Was denied a pay raise\");\n                            if (bro.getMoodState() < this.Const.MoodState.Neutral) {\n                                this.List.push({\n                                    id = 10\n                                    icon = this.Const.MoodStateIcon[bro.getMoodState()]\n                                    text = bro.getName() + this.Const.MoodStateEvent[bro.getMoodState()]\n                                })\n                            }\n                        }\n                    }\n                }\n            };\n            return;\n        }\n    });\n    return;\n}"
  },
  {
    "key": "5ba916722880e9f2fe0278249d34c9b18081ea49eba04dec5c22f696886360ec",
    "original": "During camp...",
    "translation": "",
    "context": "this.m.Title = \"During camp...\""
  },
  {
    "key": "70e80e7f24d11dbd46f791356f9bf15e81be3f24f62d221b8275a9fcf5f675e1",
    "original": "Got a pay raise",
    "translation": "",
    "context": ""
  },
  {
    "key": "6afe320563f0141e76e031777f48b8729c1f560adab52e84bfa12e15e2f02d83",
    "original": "That's how it works with the %companyname%.",
    "translation": "",
    "context": "Text = \"That's how it works with the %companyname%.\""
  },
  {
    "key": "a9db7385d5c6e8eb019e4a5ceba44c2263662d10ff264c37f39c24ce7b2d0e52",
    "original": "Was denied a pay raise",
    "translation": "",
    "context": ""
  },
  {
    "key": "b4c88bd6d7bf131973a2093fd7497eedea8e11b9f7d127bb77ae75acb0b19bbf",
    "original": "You all signed the dotted line and get paid according to it.",
    "translation": "",
    "context": "Text = \"You all signed the dotted line and get paid according to it.\""
  },
  {
    "key": "8b2218cdd5da2450b193f33e269d69bde39bd07f9a112b0bb58795d0f31f7106",
    "original": "You've earned it, boys!",
    "translation": "",
    "context": "Text = \"You've earned it, boys!\""
  },
  {
    "key": "b4a4b2db8d53727086dc3f10665d3d16cdaf4e6fad482267430a799bd6b689d2",
    "original": "[img]gfx/ui/events/event_04.png[/img]Over time, you've come to acquire a great deal of money. While you keep the war chest under lock and key, you can't help but notice a few brothers have gotten a bit greedier over the time they've spent in your company. Now you hear rumors of the men demanding higher pay.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_04.png[/img]Over time, you've come to acquire a great deal of money. While you keep the war chest under lock and key, you can't help but notice a few brothers have gotten a bit greedier over the time they've spent in your company. Now you hear rumors of the men demanding higher pay.\""
  },
  {
    "key": "120dd83588c7c85376c3894a9cb2f0510e9ecdf82d27825eef9b89286c0b886d",
    "original": "[img]gfx/ui/events/event_04.png[/img]Preempting any sort of mutiny or raise requests, you announce that the group shall have a company-wide raise. Three crowns a day for everyone. As it turns out, the men are quite fond of this move and cheer your name with a huzzah!",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_04.png[/img]Preempting any sort of mutiny or raise requests, you announce that the group shall have a company-wide raise. Three crowns a day for everyone. As it turns out, the men are quite fond of this move and cheer your name with a huzzah!\""
  },
  {
    "key": "1dd37dfd71421d0cc8c0f1821f34cdca1be5aa1e002ee85137a5383179878c1b",
    "original": "[img]gfx/ui/events/event_05.png[/img]Before anyone gets any ideas, you step up before the whole company and announce that there will be no raises. As far as you are concerned, every man present signed the contract. Any prospect of earning more pay shall be done by experience only, and that is only done by doing what sellswords do best: kill.",
    "translation": "",
    "context": "Text = \"[img]gfx/ui/events/event_05.png[/img]Before anyone gets any ideas, you step up before the whole company and announce that there will be no raises. As far as you are concerned, every man present signed the contract. Any prospect of earning more pay shall be done by experience only, and that is only done by doing what sellswords do best: kill.\""
  }
]