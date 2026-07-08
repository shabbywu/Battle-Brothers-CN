[
  {
    "key": "b1c503166f164bf59aa036c8ff9c224768de31a3937f850060551d22c3bcbe9e",
    "original": " days",
    "translation": "",
    "context": "\"\" + daysAndHalf + \" days\""
  },
  {
    "key": "12a322e47d2430c9d0c1f2226888f13224293a35d7201d5807389e2c76e772c4",
    "original": " days and ",
    "translation": "",
    "context": "days + \" days and \""
  },
  {
    "key": "4e952f4d1aa00985b563c64639c1ad5e5b528dd8d9f9149a879540c46d1bcf29",
    "original": " hours",
    "translation": "",
    "context": "dayHourString + hours == 0 ? \"\" : hours + \" hours\""
  },
  {
    "key": "83a90fe778e63b9b7113f863b6d660d2c419f6ab2d857a4dcb1210a9911468c2",
    "original": "1 day and ",
    "translation": "",
    "context": "dayHourString = \"1 day and \""
  },
  {
    "key": "4ed042e01ceba40277e5f5b7a6beb0d47865056fc751c0ba33d00204f9e5807c",
    "original": "a day",
    "translation": "",
    "context": ""
  },
  {
    "key": "4ed042e01ceba40277e5f5b7a6beb0d47865056fc751c0ba33d00204f9e5807c",
    "original": "a day",
    "translation": "",
    "context": "getDaysAndHalf = function getDaysAndHalf(_seconds){\n    local doubleDays = getroottable().Math.round(2.0 * _seconds \\ getroottable().World.getTime().SecondsPerDay);\n    local daysAndHalf = doubleDays \\ 2.0;\n    if (daysAndHalf <= 1.0) {\n        return \"a day\";\n    };\n    return \"\" + daysAndHalf + \" days\";;\n    return;\n}"
  }
]