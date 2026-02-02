[
  {
    "key": "efdd47387592ce98de51416243c6ede06c05030a9f79f5e83955dec401e067d3",
    "original": "\n\n[color=#bcad8c]\"",
    "translation": "",
    "context": ""
  },
  {
    "key": "efdd47387592ce98de51416243c6ede06c05030a9f79f5e83955dec401e067d3",
    "original": "\n\n[color=#bcad8c]\"",
    "translation": "",
    "context": "rumor + \"\\n\\n[color=#bcad8c]\\\"\""
  },
  {
    "key": "c18e020262dc12d9cd2f5ed7d43aced76dd80f736ebd69526d36347329927040",
    "original": " is now drunk.",
    "translation": "",
    "context": "b.getName() + \" is now drunk.\""
  },
  {
    "key": "21ca44363a6c3f7aeca8762dca05eadc24030aa10261889e5e660ff4cb038652",
    "original": "Got drunk with the company",
    "translation": "",
    "context": ""
  },
  {
    "key": "255a70fd8ebfcbcfa78fd0a378c65bc516b7cbfdb6ebb78533d6890bb6190cc6",
    "original": "Tavern",
    "translation": "",
    "context": "this.m.Name = \"Tavern\""
  },
  {
    "key": "96e819983da60ea2b4f628f179210f0034978b82c6cf0d00bc6e33cd624df9d3",
    "original": "The patrons raise their cups to you, but it seems there is nothing more to be learned by talking to them tonight.",
    "translation": "",
    "context": "getRumor = function getRumor(_isPaidFor){\n    if (_isPaidFor) {\n        if (this.World.Assets.getMoney() < this.Math.round(20 * this.m.Settlement.getBuyPriceMult())) {\n            return null;\n        };\n        this.World.Assets.addMoney(this.Math.round(-20 * this.m.Settlement.getBuyPriceMult()));\n        ++this.m.RumorsGiven;\n        this.Sound.play(this.Const.Sound.TavernRumor[this.Math.rand(0, this.Const.Sound.TavernRumor.len() - 1)])\n    };\n    if (this.m.RumorsGiven > 3) {\n        if (_isPaidFor) {\n            return \"The patrons raise their cups to you, but it seems there is nothing more to be learned by talking to them tonight.\";\n        } else {\n            return \"The patrons talk about this and that.\";\n        }\n    } else {\n        this.m.LastRumorTime = this.Time.getVirtualTimeF();\n        local rumor = \"\";\n        if (_isPaidFor) {\n            if (!this.m.Settlement.isMilitary()) {\n                this.World.FactionManager.getFaction(this.m.Settlement.getFactions()[0]).addPlayerRelation(0.10000000149011612)\n            };\n            rumor = rumor + this.Const.Strings.PayTavernRumorsIntro[this.Math.rand(0, this.Const.Strings.PayTavernRumorsIntro.len() - 1)]\n        } else {\n            if (this.m.LastRumor != \"\") {\n                return this.m.LastRumor;\n            } else {\n                rumor = rumor + \"The patrons talk about this and that.\"\n            }\n        };\n        local candidates = [];\n        local r = this.World.Assets.m.IsNonFlavorRumorsOnly ? this.Math.rand(3, 6) : this.Math.rand(1, 6);\n        if (r <= 2) {\n            if (this.World.FactionManager.isGreaterEvil()) {\n                candidates.extend(this.Const.Strings.RumorsGreaterEvil[this.World.FactionManager.getGreaterEvilType()]);\n                candidates.extend(this.Const.Strings.RumorsGreaterEvil[this.World.FactionManager.getGreaterEvilType()])\n            } else {\n                candidates.extend(this.Const.Strings.RumorsGeneral)\n            };\n            if (this.m.Settlement.isMilitary()) {\n                candidates.extend(this.Const.Strings.RumorsMilitary)\n            } else {\n                candidates.extend(this.Const.Strings.RumorsCivilian)\n            };\n            candidates.extend(this.m.Settlement.getRumors())\n        } else {\n            if (r == 3) {\n                local best = null;\n                local bestDist = 9000;\n                foreach( s in this.World.EntityManager.getSettlements()){\n                    while ( s.isMilitary() || s.getID() == this.m.Settlement.getID() ) {\n\n                    };\n                    if (this.World.FactionManager.getFaction(s.getFactions()[0]).getContracts().len() != 0) {\n                        local d = s.getTile().getDistanceTo(this.m.Settlement.getTile());\n                        bestDist = d < bestDist;\n                        if (bestDist) {\n                            bestDist = d;\n                            best = s\n                        }\n                    };\n                    if (best != null) {\n                        candidates.extend(this.Const.Strings.RumorsContract);\n                        this.m.ContractSettlement = this.WeakTableRef(best)\n                    } else {\n                        candidates.extend(this.Const.Strings.RumorsGeneral);\n                        if (this.m.Settlement.isMilitary()) {\n                            candidates.extend(this.Const.Strings.RumorsMilitary)\n                        } else {\n                            candidates.extend(this.Const.Strings.RumorsCivilian)\n                        };\n                        candidates.extend(this.m.Settlement.getRumors())\n                    }\n                }\n            } else {\n                if (r == 4) {\n                    local best = null;\n                    local bestDist = 9000;\n                    foreach( s in this.World.EntityManager.getLocations()){\n                        while ( s.isLocationType(this.Const.World.LocationType.AttachedLocation) || s.isLocationType(this.Const.World.LocationType.Unique) || s.isAlliedWithPlayer() ) {\n\n                        };\n                        local d = s.getTile().getDistanceTo(this.m.Settlement.getTile()) - this.Math.rand(1, 10);\n                        bestDist = d < bestDist;\n                        if (bestDist) {\n                            bestDist = d;\n                            best = s\n                        }\n                    };\n                    if (best != null) {\n                        candidates.extend(this.Const.Strings.RumorsLocation);\n                        this.m.Location = this.WeakTableRef(best)\n                    } else {\n                        candidates.extend(this.Const.Strings.RumorsGeneral);\n                        if (this.m.Settlement.isMilitary()) {\n                            candidates.extend(this.Const.Strings.RumorsMilitary)\n                        } else {\n                            candidates.extend(this.Const.Strings.RumorsCivilian)\n                        };\n                        candidates.extend(this.m.Settlement.getRumors())\n                    }\n                } else {\n                    if (r == 5) {\n                        local best = null;\n                        local bestDist = 9000;\n                        foreach( s in this.World.EntityManager.getLocations()){\n                            while ( s.isAlliedWithPlayer() ) {\n\n                            };\n                            if (s.getLoot().isEmpty()) {\n                                continue\n                            };\n                            local d = s.getTile().getDistanceTo(this.m.Settlement.getTile()) - this.Math.rand(1, 10);\n                            if (d > 20) {\n                                continue\n                            };\n                            bestDist = d < bestDist;\n                            if (bestDist) {\n                                bestDist = d;\n                                best = s\n                            }\n                        };\n                        if (best != null) {\n                            local f = this.World.FactionManager.getFaction(best.getFaction());\n                            local category = 0;\n                            if (best.getLoot().getItems()[0].isItemType(this.Const.Items.ItemType.Shield)) {\n                                category = 1\n                            } else {\n                                if (best.getLoot().getItems()[0].isItemType(this.Const.Items.ItemType.Armor) || best.getLoot().getItems()[0].isItemType(this.Const.Items.ItemType.Helmet)) {\n                                    category = 2\n                                }\n                            };\n                            if (f.getType() == this.Const.FactionType.Orcs) {\n                                candidates.extend(this.Const.Strings.RumorsItemsOrcs[category])\n                            } else {\n                                if (f.getType() == this.Const.FactionType.Goblins) {\n                                    candidates.extend(this.Const.Strings.RumorsItemsGoblins[category])\n                                } else {\n                                    if (f.getType() == this.Const.FactionType.Undead || f.getType() == this.Const.FactionType.Zombies) {\n                                        candidates.extend(this.Const.Strings.RumorsItemsUndead[category])\n                                    } else {\n                                        if (f.getType() == this.Const.FactionType.Barbarians) {\n                                            candidates.extend(this.Const.Strings.RumorsItemsBarbarians[category])\n                                        } else {\n                                            if (f.getType() == this.Const.FactionType.OrientalBandits) {\n                                                candidates.extend(this.Const.Strings.RumorsItemsNomads[category])\n                                            } else {\n                                                candidates.extend(this.Const.Strings.RumorsItemsBandits[category])\n                                            }\n                                        }\n                                    }\n                                }\n                            };\n                            this.m.Location = this.WeakTableRef(best)\n                        } else {\n                            candidates.extend(this.Const.Strings.RumorsGeneral);\n                            if (this.m.Settlement.isMilitary()) {\n                                candidates.extend(this.Const.Strings.RumorsMilitary)\n                            } else {\n                                candidates.extend(this.Const.Strings.RumorsCivilian)\n                            };\n                            candidates.extend(this.m.Settlement.getRumors())\n                        }\n                    } else {\n                        if (r == 6) {\n                            local best = null;\n                            local bestDist = 9000;\n                            foreach( s in this.World.EntityManager.getSettlements()){\n                                while ( s.getID() == this.m.Settlement.getID() ) {\n\n                                };\n                                s.updateSituations();\n                                if (s.getSituations().len() > 0) {\n                                    local d = s.getTile().getDistanceTo(this.m.Settlement.getTile());\n                                    bestDist = d < bestDist;\n                                    if (bestDist) {\n                                        bestDist = d;\n                                        best = s\n                                    }\n                                }\n                            };\n                            if (best != null) {\n                                local situation = best.getSituations()[this.Math.rand(0, best.getSituations().len() - 1)];\n                                candidates.extend(situation.getRumors());\n                                this.m.ContractSettlement = this.WeakTableRef(best)\n                            } else {\n                                candidates.extend(this.Const.Strings.RumorsGeneral);\n                                if (this.m.Settlement.isMilitary()) {\n                                    candidates.extend(this.Const.Strings.RumorsMilitary)\n                                } else {\n                                    candidates.extend(this.Const.Strings.RumorsCivilian)\n                                };\n                                candidates.extend(this.m.Settlement.getRumors())\n                            }\n                        }\n                    }\n                }\n            }\n        };\n        rumor = rumor + \"\\n\\n[color=#bcad8c]\\\"\";\n        rumor = rumor + candidates[this.Math.rand(0, candidates.len() - 1)];\n        rumor = rumor + \"\\\"[/color]\\n\\n\";\n        rumor = this.buildText(rumor);\n        this.m.LastRumor = rumor;\n        return rumor;\n    };\n    return;\n}"
  },
  {
    "key": "96e819983da60ea2b4f628f179210f0034978b82c6cf0d00bc6e33cd624df9d3",
    "original": "The patrons raise their cups to you, but it seems there is nothing more to be learned by talking to them tonight.",
    "translation": "",
    "context": ""
  },
  {
    "key": "db8009d4cf9f3c1fae242ee058a3be13105f82e153f40690c2e6a5eb18204442",
    "original": "The patrons talk about this and that.",
    "translation": "",
    "context": "rumor + \"The patrons talk about this and that.\""
  },
  {
    "key": "db8009d4cf9f3c1fae242ee058a3be13105f82e153f40690c2e6a5eb18204442",
    "original": "The patrons talk about this and that.",
    "translation": "",
    "context": "getRumor = function getRumor(_isPaidFor){\n    if (_isPaidFor) {\n        if (this.World.Assets.getMoney() < this.Math.round(20 * this.m.Settlement.getBuyPriceMult())) {\n            return null;\n        };\n        this.World.Assets.addMoney(this.Math.round(-20 * this.m.Settlement.getBuyPriceMult()));\n        ++this.m.RumorsGiven;\n        this.Sound.play(this.Const.Sound.TavernRumor[this.Math.rand(0, this.Const.Sound.TavernRumor.len() - 1)])\n    };\n    if (this.m.RumorsGiven > 3) {\n        if (_isPaidFor) {\n            return \"The patrons raise their cups to you, but it seems there is nothing more to be learned by talking to them tonight.\";\n        } else {\n            return \"The patrons talk about this and that.\";\n        }\n    } else {\n        this.m.LastRumorTime = this.Time.getVirtualTimeF();\n        local rumor = \"\";\n        if (_isPaidFor) {\n            if (!this.m.Settlement.isMilitary()) {\n                this.World.FactionManager.getFaction(this.m.Settlement.getFactions()[0]).addPlayerRelation(0.10000000149011612)\n            };\n            rumor = rumor + this.Const.Strings.PayTavernRumorsIntro[this.Math.rand(0, this.Const.Strings.PayTavernRumorsIntro.len() - 1)]\n        } else {\n            if (this.m.LastRumor != \"\") {\n                return this.m.LastRumor;\n            } else {\n                rumor = rumor + \"The patrons talk about this and that.\"\n            }\n        };\n        local candidates = [];\n        local r = this.World.Assets.m.IsNonFlavorRumorsOnly ? this.Math.rand(3, 6) : this.Math.rand(1, 6);\n        if (r <= 2) {\n            if (this.World.FactionManager.isGreaterEvil()) {\n                candidates.extend(this.Const.Strings.RumorsGreaterEvil[this.World.FactionManager.getGreaterEvilType()]);\n                candidates.extend(this.Const.Strings.RumorsGreaterEvil[this.World.FactionManager.getGreaterEvilType()])\n            } else {\n                candidates.extend(this.Const.Strings.RumorsGeneral)\n            };\n            if (this.m.Settlement.isMilitary()) {\n                candidates.extend(this.Const.Strings.RumorsMilitary)\n            } else {\n                candidates.extend(this.Const.Strings.RumorsCivilian)\n            };\n            candidates.extend(this.m.Settlement.getRumors())\n        } else {\n            if (r == 3) {\n                local best = null;\n                local bestDist = 9000;\n                foreach( s in this.World.EntityManager.getSettlements()){\n                    while ( s.isMilitary() || s.getID() == this.m.Settlement.getID() ) {\n\n                    };\n                    if (this.World.FactionManager.getFaction(s.getFactions()[0]).getContracts().len() != 0) {\n                        local d = s.getTile().getDistanceTo(this.m.Settlement.getTile());\n                        bestDist = d < bestDist;\n                        if (bestDist) {\n                            bestDist = d;\n                            best = s\n                        }\n                    };\n                    if (best != null) {\n                        candidates.extend(this.Const.Strings.RumorsContract);\n                        this.m.ContractSettlement = this.WeakTableRef(best)\n                    } else {\n                        candidates.extend(this.Const.Strings.RumorsGeneral);\n                        if (this.m.Settlement.isMilitary()) {\n                            candidates.extend(this.Const.Strings.RumorsMilitary)\n                        } else {\n                            candidates.extend(this.Const.Strings.RumorsCivilian)\n                        };\n                        candidates.extend(this.m.Settlement.getRumors())\n                    }\n                }\n            } else {\n                if (r == 4) {\n                    local best = null;\n                    local bestDist = 9000;\n                    foreach( s in this.World.EntityManager.getLocations()){\n                        while ( s.isLocationType(this.Const.World.LocationType.AttachedLocation) || s.isLocationType(this.Const.World.LocationType.Unique) || s.isAlliedWithPlayer() ) {\n\n                        };\n                        local d = s.getTile().getDistanceTo(this.m.Settlement.getTile()) - this.Math.rand(1, 10);\n                        bestDist = d < bestDist;\n                        if (bestDist) {\n                            bestDist = d;\n                            best = s\n                        }\n                    };\n                    if (best != null) {\n                        candidates.extend(this.Const.Strings.RumorsLocation);\n                        this.m.Location = this.WeakTableRef(best)\n                    } else {\n                        candidates.extend(this.Const.Strings.RumorsGeneral);\n                        if (this.m.Settlement.isMilitary()) {\n                            candidates.extend(this.Const.Strings.RumorsMilitary)\n                        } else {\n                            candidates.extend(this.Const.Strings.RumorsCivilian)\n                        };\n                        candidates.extend(this.m.Settlement.getRumors())\n                    }\n                } else {\n                    if (r == 5) {\n                        local best = null;\n                        local bestDist = 9000;\n                        foreach( s in this.World.EntityManager.getLocations()){\n                            while ( s.isAlliedWithPlayer() ) {\n\n                            };\n                            if (s.getLoot().isEmpty()) {\n                                continue\n                            };\n                            local d = s.getTile().getDistanceTo(this.m.Settlement.getTile()) - this.Math.rand(1, 10);\n                            if (d > 20) {\n                                continue\n                            };\n                            bestDist = d < bestDist;\n                            if (bestDist) {\n                                bestDist = d;\n                                best = s\n                            }\n                        };\n                        if (best != null) {\n                            local f = this.World.FactionManager.getFaction(best.getFaction());\n                            local category = 0;\n                            if (best.getLoot().getItems()[0].isItemType(this.Const.Items.ItemType.Shield)) {\n                                category = 1\n                            } else {\n                                if (best.getLoot().getItems()[0].isItemType(this.Const.Items.ItemType.Armor) || best.getLoot().getItems()[0].isItemType(this.Const.Items.ItemType.Helmet)) {\n                                    category = 2\n                                }\n                            };\n                            if (f.getType() == this.Const.FactionType.Orcs) {\n                                candidates.extend(this.Const.Strings.RumorsItemsOrcs[category])\n                            } else {\n                                if (f.getType() == this.Const.FactionType.Goblins) {\n                                    candidates.extend(this.Const.Strings.RumorsItemsGoblins[category])\n                                } else {\n                                    if (f.getType() == this.Const.FactionType.Undead || f.getType() == this.Const.FactionType.Zombies) {\n                                        candidates.extend(this.Const.Strings.RumorsItemsUndead[category])\n                                    } else {\n                                        if (f.getType() == this.Const.FactionType.Barbarians) {\n                                            candidates.extend(this.Const.Strings.RumorsItemsBarbarians[category])\n                                        } else {\n                                            if (f.getType() == this.Const.FactionType.OrientalBandits) {\n                                                candidates.extend(this.Const.Strings.RumorsItemsNomads[category])\n                                            } else {\n                                                candidates.extend(this.Const.Strings.RumorsItemsBandits[category])\n                                            }\n                                        }\n                                    }\n                                }\n                            };\n                            this.m.Location = this.WeakTableRef(best)\n                        } else {\n                            candidates.extend(this.Const.Strings.RumorsGeneral);\n                            if (this.m.Settlement.isMilitary()) {\n                                candidates.extend(this.Const.Strings.RumorsMilitary)\n                            } else {\n                                candidates.extend(this.Const.Strings.RumorsCivilian)\n                            };\n                            candidates.extend(this.m.Settlement.getRumors())\n                        }\n                    } else {\n                        if (r == 6) {\n                            local best = null;\n                            local bestDist = 9000;\n                            foreach( s in this.World.EntityManager.getSettlements()){\n                                while ( s.getID() == this.m.Settlement.getID() ) {\n\n                                };\n                                s.updateSituations();\n                                if (s.getSituations().len() > 0) {\n                                    local d = s.getTile().getDistanceTo(this.m.Settlement.getTile());\n                                    bestDist = d < bestDist;\n                                    if (bestDist) {\n                                        bestDist = d;\n                                        best = s\n                                    }\n                                }\n                            };\n                            if (best != null) {\n                                local situation = best.getSituations()[this.Math.rand(0, best.getSituations().len() - 1)];\n                                candidates.extend(situation.getRumors());\n                                this.m.ContractSettlement = this.WeakTableRef(best)\n                            } else {\n                                candidates.extend(this.Const.Strings.RumorsGeneral);\n                                if (this.m.Settlement.isMilitary()) {\n                                    candidates.extend(this.Const.Strings.RumorsMilitary)\n                                } else {\n                                    candidates.extend(this.Const.Strings.RumorsCivilian)\n                                };\n                                candidates.extend(this.m.Settlement.getRumors())\n                            }\n                        }\n                    }\n                }\n            }\n        };\n        rumor = rumor + \"\\n\\n[color=#bcad8c]\\\"\";\n        rumor = rumor + candidates[this.Math.rand(0, candidates.len() - 1)];\n        rumor = rumor + \"\\\"[/color]\\n\\n\";\n        rumor = this.buildText(rumor);\n        this.m.LastRumor = rumor;\n        return rumor;\n    };\n    return;\n}"
  },
  {
    "key": "db8009d4cf9f3c1fae242ee058a3be13105f82e153f40690c2e6a5eb18204442",
    "original": "The patrons talk about this and that.",
    "translation": "",
    "context": ""
  },
  {
    "key": "b4c32c7b7041d27e2812f09a15b489c79779e2b5f9db9a4c01a7d979c4aeaf2e",
    "original": "companyname",
    "translation": "",
    "context": ""
  },
  {
    "key": "93c4abe27cf1696102534bb60b3795f41f60f52fa806cd5d0feadfc8bd2b8170",
    "original": "direction",
    "translation": "",
    "context": ""
  },
  {
    "key": "63e6ce93e1bcb5122b1419a229bb3f90726664ad1a6cc74433bb2bbf2b018135",
    "original": "distance",
    "translation": "",
    "context": ""
  },
  {
    "key": "4a33eacd5fa65f2b2e2871cd131286b53c415b131666d71173bb6e3fe59361b3",
    "original": "item",
    "translation": "",
    "context": ""
  },
  {
    "key": "e6eaea18e885e1078829b56df34896be5ab51439e8f0ba00cb1624b2c572c10e",
    "original": "location",
    "translation": "",
    "context": ""
  },
  {
    "key": "257fee2a9b4ccf20f6000853eae432109f891c92af8464fb06a2f62b38b2aa54",
    "original": "randomfemalename",
    "translation": "",
    "context": ""
  },
  {
    "key": "e0830298fffce61e669402bc809988ee16bbf6bfd53ca90eb5048beb2ed0f31d",
    "original": "randommercenarycompany",
    "translation": "",
    "context": ""
  },
  {
    "key": "6332b7dfc70717743cbc07e742939bdc8de6025a8173ab8c99d252264b4256ca",
    "original": "randomname",
    "translation": "",
    "context": ""
  },
  {
    "key": "1975900b8922502d3ca4f62b82ec7c748b955671c9495e0b5e7aee9f787f9f6f",
    "original": "randomnoble",
    "translation": "",
    "context": ""
  },
  {
    "key": "7c415f7f34a6d92e3a349d55ae62510318406ee629ea6054781d20c320e914a1",
    "original": "randomtown",
    "translation": "",
    "context": ""
  },
  {
    "key": "c697d2981bf416569a16cfbcdec1542b5398f3cc77d2b905819aa99c46ecf6f6",
    "original": "region",
    "translation": "",
    "context": ""
  },
  {
    "key": "a75c433ab2ae1daf8b032d38bf64e02fb152076b487bfb2784d10e4cf1bba73a",
    "original": "settlement",
    "translation": "",
    "context": ""
  },
  {
    "key": "84088805e145b555f349c164a7cfdcf13981e0affcba4393aaa78ae40f320f4e",
    "original": "terrain",
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