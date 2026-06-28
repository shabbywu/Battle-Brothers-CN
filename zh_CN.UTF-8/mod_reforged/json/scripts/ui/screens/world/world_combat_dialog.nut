[
  {
    "key": "19766ed6ccb2f4a32778eed80d1928d2c87a18d7c275ccb163ec6709d3eb2e27",
    "original": "Cancel",
    "translation": "",
    "context": ""
  },
  {
    "key": "19766ed6ccb2f4a32778eed80d1928d2c87a18d7c275ccb163ec6709d3eb2e27",
    "original": "Cancel",
    "translation": "",
    "context": "show = function show(_entities, _allyBanners, _enemyBanners, _allowDisengage, _allowFormationPicking, _text, _image, _disengageText){\n    for (local i = 0; i < _allyBanners.len(); ++i) {\n        local j = _allyBanners.len() - 1;\n        while ( i >= 0 ) {\n            i = j <= i;\n            if (i) {\n\n            } else {\n                break;\n                if (_allyBanners[i] == _allyBanners[j]) {\n                    _allyBanners.remove(j)\n                };\n                ++j\n            }\n        }\n    };\n    for (local i = 0; i < _enemyBanners.len(); ++i) {\n        local j = _enemyBanners.len() - 1;\n        while ( i >= 0 ) {\n            i = j <= i;\n            if (i) {\n\n            } else {\n                break;\n                if (_enemyBanners[i] == _enemyBanners[j]) {\n                    _enemyBanners.remove(j)\n                };\n                ++j\n            }\n        }\n    };\n    local data = {\n        Entities = _entities\n        AllyBanners = _allyBanners\n        EnemyBanners = _enemyBanners\n        AllowDisengage = _allowDisengage\n        AllowFormationPicking = _allowFormationPicking\n        Text = _text\n        DisengageText = _disengageText\n        Image = _image\n    };\n    if (!this.isVisible() && !this.isAnimating()) {\n        this.m.JSHandle.asyncCall(\"show\", data);\n        function None(_t){\n            this.Tooltip.hide();\n            return;\n        };\n        this.Time.scheduleEvent(this.TimeUnit.Real, 1000, function None(_t){\n            this.Tooltip.hide();\n            return;\n        }, null)\n    };\n    return;\n}"
  }
]