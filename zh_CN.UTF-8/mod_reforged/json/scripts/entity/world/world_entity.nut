[
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
  }
]