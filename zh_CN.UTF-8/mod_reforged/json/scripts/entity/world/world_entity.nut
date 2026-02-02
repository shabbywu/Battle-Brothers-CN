[
  {
    "key": "559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd",
    "original": "A",
    "translation": "",
    "context": ""
  },
  {
    "key": "7a7202fb1b53105f00a4308223160a22fd287678fcc8cf3681a36a57ee85e75a",
    "original": "A ",
    "translation": "",
    "context": "local start = this.isFirstCharacter(this.Const.Strings.EntityName[i], [\"A\",\"E\",\"I\",\"O\",\"U\"]) ? \"An \" : \"A \""
  },
  {
    "key": "cdb597a0625879708b67b981ca304373a6b67b44b97b375af4621a96e1ab030c",
    "original": "An ",
    "translation": "",
    "context": "local start = this.isFirstCharacter(this.Const.Strings.EntityName[i], [\"A\",\"E\",\"I\",\"O\",\"U\"]) ? \"An \" : \"A \""
  },
  {
    "key": "d1348a56a516b7d3e4f474dc2632d323f88a41e6fc6ba1d7ee31ddaf79a5da7a",
    "original": "Challenging",
    "translation": "",
    "context": ""
  },
  {
    "key": "d1348a56a516b7d3e4f474dc2632d323f88a41e6fc6ba1d7ee31ddaf79a5da7a",
    "original": "Challenging",
    "translation": "",
    "context": "getStrengthAsText = function getStrengthAsText(){\n    local v = 0;\n    if (this.m.Strength != 0) {\n        v = this.m.Strength\n    } else {\n        return \"\";\n    };\n    local p = this.World.State.getPlayer() != null ? this.World.State.getPlayer().getStrength() : 33;\n    local s = p \\ v * 1.0;\n    if (s >= 0.8500000238418579 && s <= 1.149999976158142) {\n        return \"Even\";\n    } else {\n        if (s >= 0.699999988079071 && s < 0.8500000238418579) {\n            return \"Challenging\";\n        } else {\n            if (s >= 0.5 && s < 0.699999988079071) {\n                return \"Deadly\";\n            } else {\n                if (s < 0.5) {\n                    return \"Impossible\";\n                } else {\n                    if (s >= 1.149999976158142 && s <= 1.2999999523162842) {\n                        return \"Slightly Weaker\";\n                    } else {\n                        if (s >= 1.2999999523162842 && s <= 1.5) {\n                            return \"Weaker\";\n                        } else {\n                            if (s > 1.5) {\n                                return \"Puny\";\n                            }\n                        }\n                    }\n                }\n            }\n        }\n    };\n    return \"Unknown\";;\n    return;\n}"
  },
  {
    "key": "0acb0f327baf38086a7aa1a9368381bb7c2ccd9fb4269f9abb5de5e0f5fd9919",
    "original": "Deadly",
    "translation": "",
    "context": ""
  },
  {
    "key": "0acb0f327baf38086a7aa1a9368381bb7c2ccd9fb4269f9abb5de5e0f5fd9919",
    "original": "Deadly",
    "translation": "",
    "context": "getStrengthAsText = function getStrengthAsText(){\n    local v = 0;\n    if (this.m.Strength != 0) {\n        v = this.m.Strength\n    } else {\n        return \"\";\n    };\n    local p = this.World.State.getPlayer() != null ? this.World.State.getPlayer().getStrength() : 33;\n    local s = p \\ v * 1.0;\n    if (s >= 0.8500000238418579 && s <= 1.149999976158142) {\n        return \"Even\";\n    } else {\n        if (s >= 0.699999988079071 && s < 0.8500000238418579) {\n            return \"Challenging\";\n        } else {\n            if (s >= 0.5 && s < 0.699999988079071) {\n                return \"Deadly\";\n            } else {\n                if (s < 0.5) {\n                    return \"Impossible\";\n                } else {\n                    if (s >= 1.149999976158142 && s <= 1.2999999523162842) {\n                        return \"Slightly Weaker\";\n                    } else {\n                        if (s >= 1.2999999523162842 && s <= 1.5) {\n                            return \"Weaker\";\n                        } else {\n                            if (s > 1.5) {\n                                return \"Puny\";\n                            }\n                        }\n                    }\n                }\n            }\n        }\n    };\n    return \"Unknown\";;\n    return;\n}"
  },
  {
    "key": "a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58",
    "original": "E",
    "translation": "",
    "context": ""
  },
  {
    "key": "8c29bf34483dc157c14ffb531c5084c879af19ec75069d4e1a14033013ece963",
    "original": "Even",
    "translation": "",
    "context": ""
  },
  {
    "key": "8c29bf34483dc157c14ffb531c5084c879af19ec75069d4e1a14033013ece963",
    "original": "Even",
    "translation": "",
    "context": "getStrengthAsText = function getStrengthAsText(){\n    local v = 0;\n    if (this.m.Strength != 0) {\n        v = this.m.Strength\n    } else {\n        return \"\";\n    };\n    local p = this.World.State.getPlayer() != null ? this.World.State.getPlayer().getStrength() : 33;\n    local s = p \\ v * 1.0;\n    if (s >= 0.8500000238418579 && s <= 1.149999976158142) {\n        return \"Even\";\n    } else {\n        if (s >= 0.699999988079071 && s < 0.8500000238418579) {\n            return \"Challenging\";\n        } else {\n            if (s >= 0.5 && s < 0.699999988079071) {\n                return \"Deadly\";\n            } else {\n                if (s < 0.5) {\n                    return \"Impossible\";\n                } else {\n                    if (s >= 1.149999976158142 && s <= 1.2999999523162842) {\n                        return \"Slightly Weaker\";\n                    } else {\n                        if (s >= 1.2999999523162842 && s <= 1.5) {\n                            return \"Weaker\";\n                        } else {\n                            if (s > 1.5) {\n                                return \"Puny\";\n                            }\n                        }\n                    }\n                }\n            }\n        }\n    };\n    return \"Unknown\";;\n    return;\n}"
  },
  {
    "key": "a83dd0ccbffe39d071cc317ddf6e97f5c6b1c87af91919271f9fa140b0508c6c",
    "original": "I",
    "translation": "",
    "context": ""
  },
  {
    "key": "7623b1fa270edd0bbfbcac43c4c3578153b6415b1aeb3387d5abf1a7ce4fe15f",
    "original": "Impossible",
    "translation": "",
    "context": ""
  },
  {
    "key": "7623b1fa270edd0bbfbcac43c4c3578153b6415b1aeb3387d5abf1a7ce4fe15f",
    "original": "Impossible",
    "translation": "",
    "context": "getStrengthAsText = function getStrengthAsText(){\n    local v = 0;\n    if (this.m.Strength != 0) {\n        v = this.m.Strength\n    } else {\n        return \"\";\n    };\n    local p = this.World.State.getPlayer() != null ? this.World.State.getPlayer().getStrength() : 33;\n    local s = p \\ v * 1.0;\n    if (s >= 0.8500000238418579 && s <= 1.149999976158142) {\n        return \"Even\";\n    } else {\n        if (s >= 0.699999988079071 && s < 0.8500000238418579) {\n            return \"Challenging\";\n        } else {\n            if (s >= 0.5 && s < 0.699999988079071) {\n                return \"Deadly\";\n            } else {\n                if (s < 0.5) {\n                    return \"Impossible\";\n                } else {\n                    if (s >= 1.149999976158142 && s <= 1.2999999523162842) {\n                        return \"Slightly Weaker\";\n                    } else {\n                        if (s >= 1.2999999523162842 && s <= 1.5) {\n                            return \"Weaker\";\n                        } else {\n                            if (s > 1.5) {\n                                return \"Puny\";\n                            }\n                        }\n                    }\n                }\n            }\n        }\n    };\n    return \"Unknown\";;\n    return;\n}"
  },
  {
    "key": "c4694f2e93d5c4e7d51f9c5deb75e6cc8be5e1114178c6a45b6fc2c566a0aa8c",
    "original": "O",
    "translation": "",
    "context": ""
  },
  {
    "key": "e5397bd9f79022babfb5ae6da46b46b4bffa0f8fd906889e32f34d2964ba78ec",
    "original": "Puny",
    "translation": "",
    "context": ""
  },
  {
    "key": "e5397bd9f79022babfb5ae6da46b46b4bffa0f8fd906889e32f34d2964ba78ec",
    "original": "Puny",
    "translation": "",
    "context": "getStrengthAsText = function getStrengthAsText(){\n    local v = 0;\n    if (this.m.Strength != 0) {\n        v = this.m.Strength\n    } else {\n        return \"\";\n    };\n    local p = this.World.State.getPlayer() != null ? this.World.State.getPlayer().getStrength() : 33;\n    local s = p \\ v * 1.0;\n    if (s >= 0.8500000238418579 && s <= 1.149999976158142) {\n        return \"Even\";\n    } else {\n        if (s >= 0.699999988079071 && s < 0.8500000238418579) {\n            return \"Challenging\";\n        } else {\n            if (s >= 0.5 && s < 0.699999988079071) {\n                return \"Deadly\";\n            } else {\n                if (s < 0.5) {\n                    return \"Impossible\";\n                } else {\n                    if (s >= 1.149999976158142 && s <= 1.2999999523162842) {\n                        return \"Slightly Weaker\";\n                    } else {\n                        if (s >= 1.2999999523162842 && s <= 1.5) {\n                            return \"Weaker\";\n                        } else {\n                            if (s > 1.5) {\n                                return \"Puny\";\n                            }\n                        }\n                    }\n                }\n            }\n        }\n    };\n    return \"Unknown\";;\n    return;\n}"
  },
  {
    "key": "653256f07e0a4248379ee925b82399c712b0148d68721b9c16ecfa7faf445b23",
    "original": "Slightly Weaker",
    "translation": "",
    "context": ""
  },
  {
    "key": "653256f07e0a4248379ee925b82399c712b0148d68721b9c16ecfa7faf445b23",
    "original": "Slightly Weaker",
    "translation": "",
    "context": "getStrengthAsText = function getStrengthAsText(){\n    local v = 0;\n    if (this.m.Strength != 0) {\n        v = this.m.Strength\n    } else {\n        return \"\";\n    };\n    local p = this.World.State.getPlayer() != null ? this.World.State.getPlayer().getStrength() : 33;\n    local s = p \\ v * 1.0;\n    if (s >= 0.8500000238418579 && s <= 1.149999976158142) {\n        return \"Even\";\n    } else {\n        if (s >= 0.699999988079071 && s < 0.8500000238418579) {\n            return \"Challenging\";\n        } else {\n            if (s >= 0.5 && s < 0.699999988079071) {\n                return \"Deadly\";\n            } else {\n                if (s < 0.5) {\n                    return \"Impossible\";\n                } else {\n                    if (s >= 1.149999976158142 && s <= 1.2999999523162842) {\n                        return \"Slightly Weaker\";\n                    } else {\n                        if (s >= 1.2999999523162842 && s <= 1.5) {\n                            return \"Weaker\";\n                        } else {\n                            if (s > 1.5) {\n                                return \"Puny\";\n                            }\n                        }\n                    }\n                }\n            }\n        }\n    };\n    return \"Unknown\";;\n    return;\n}"
  },
  {
    "key": "103c5169871d49be7a2ebf9e6fe4720244cbf1fdbccdbfaca489898ea069504c",
    "original": "The ",
    "translation": "",
    "context": ""
  },
  {
    "key": "a25513c7e0f6eaa80a3337ee18081b9e2ed09e00af8531c8f7bb2542764027e7",
    "original": "U",
    "translation": "",
    "context": ""
  },
  {
    "key": "b764cdc0eab7137467211272fa539f1260d1bf2e71bcf6ff3bdc960f5c16aa14",
    "original": "Unknown",
    "translation": "",
    "context": ""
  },
  {
    "key": "b764cdc0eab7137467211272fa539f1260d1bf2e71bcf6ff3bdc960f5c16aa14",
    "original": "Unknown",
    "translation": "",
    "context": "getStrengthAsText = function getStrengthAsText(){\n    local v = 0;\n    if (this.m.Strength != 0) {\n        v = this.m.Strength\n    } else {\n        return \"\";\n    };\n    local p = this.World.State.getPlayer() != null ? this.World.State.getPlayer().getStrength() : 33;\n    local s = p \\ v * 1.0;\n    if (s >= 0.8500000238418579 && s <= 1.149999976158142) {\n        return \"Even\";\n    } else {\n        if (s >= 0.699999988079071 && s < 0.8500000238418579) {\n            return \"Challenging\";\n        } else {\n            if (s >= 0.5 && s < 0.699999988079071) {\n                return \"Deadly\";\n            } else {\n                if (s < 0.5) {\n                    return \"Impossible\";\n                } else {\n                    if (s >= 1.149999976158142 && s <= 1.2999999523162842) {\n                        return \"Slightly Weaker\";\n                    } else {\n                        if (s >= 1.2999999523162842 && s <= 1.5) {\n                            return \"Weaker\";\n                        } else {\n                            if (s > 1.5) {\n                                return \"Puny\";\n                            }\n                        }\n                    }\n                }\n            }\n        }\n    };\n    return \"Unknown\";;\n    return;\n}"
  },
  {
    "key": "a28cf8f19b211b470b830a40b7fc0a2828fa71e4647a1971042b6e89c82aed6c",
    "original": "Weaker",
    "translation": "",
    "context": ""
  },
  {
    "key": "a28cf8f19b211b470b830a40b7fc0a2828fa71e4647a1971042b6e89c82aed6c",
    "original": "Weaker",
    "translation": "",
    "context": "getStrengthAsText = function getStrengthAsText(){\n    local v = 0;\n    if (this.m.Strength != 0) {\n        v = this.m.Strength\n    } else {\n        return \"\";\n    };\n    local p = this.World.State.getPlayer() != null ? this.World.State.getPlayer().getStrength() : 33;\n    local s = p \\ v * 1.0;\n    if (s >= 0.8500000238418579 && s <= 1.149999976158142) {\n        return \"Even\";\n    } else {\n        if (s >= 0.699999988079071 && s < 0.8500000238418579) {\n            return \"Challenging\";\n        } else {\n            if (s >= 0.5 && s < 0.699999988079071) {\n                return \"Deadly\";\n            } else {\n                if (s < 0.5) {\n                    return \"Impossible\";\n                } else {\n                    if (s >= 1.149999976158142 && s <= 1.2999999523162842) {\n                        return \"Slightly Weaker\";\n                    } else {\n                        if (s >= 1.2999999523162842 && s <= 1.5) {\n                            return \"Weaker\";\n                        } else {\n                            if (s > 1.5) {\n                                return \"Puny\";\n                            }\n                        }\n                    }\n                }\n            }\n        }\n    };\n    return \"Unknown\";;\n    return;\n}"
  },
  {
    "key": "c9046f7a37ad0ea7cee73355984fa5428982f8b37c8f7bcec91f7ac71a7cd104",
    "original": "description",
    "translation": "",
    "context": "type = \"description\""
  },
  {
    "key": "5e8c03a94c7835b87dd82c690f9f85c08592ef7433aa141ceaacb36a9f4da434",
    "original": "instance",
    "translation": "",
    "context": "typeof _p == \"instance\" || typeof _p == \"table\""
  },
  {
    "key": "5e8c03a94c7835b87dd82c690f9f85c08592ef7433aa141ceaacb36a9f4da434",
    "original": "instance",
    "translation": "",
    "context": "typeof _entity == \"instance\""
  },
  {
    "key": "82a3537ff0dbce7eec35d69edc3a189ee6f17d82f353a553f9aa96cb0be3ce89",
    "original": "name",
    "translation": "",
    "context": ""
  },
  {
    "key": "65045134064dd4d905665eceaf4153fea4f9d69d2ae22255a0b7cef4701f4886",
    "original": "selection",
    "translation": "",
    "context": ""
  },
  {
    "key": "0d4fc4a78d3706edccafb665a8b2fdd9309e82c78625bb0f2b8e7bb9e1c4d21c",
    "original": "table",
    "translation": "",
    "context": "typeof _p == \"instance\" || typeof _p == \"table\""
  },
  {
    "key": "982d9e3eb996f559e633f4d194def3761d909f5a3b647d1a851fead67c32c9d1",
    "original": "text",
    "translation": "",
    "context": "type = \"text\""
  },
  {
    "key": "aaf2320646108059a87ab5017a86aee454f5378ed95003dbb2e12f4ca5266e0e",
    "original": "title",
    "translation": "",
    "context": "type = \"title\""
  },
  {
    "key": "540f97e53c43f0bd971fd9115aa04b96006c3bfb7f7783a3bfd152d8af640774",
    "original": "worldentity(",
    "translation": "",
    "context": "\"worldentity(\" + this.Math.rand() + \",\" + this.getID() + \")\""
  }
]