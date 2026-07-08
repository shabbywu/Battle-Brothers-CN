[
  {
    "key": "e3ee915a8e8c7aa02d2fced443314522b20824abd2535d5959c41dc8ab8a09e4",
    "original": " and ",
    "translation": "",
    "context": "ret + n < 100 ? \" and \" : \" \""
  },
  {
    "key": "e3ee915a8e8c7aa02d2fced443314522b20824abd2535d5959c41dc8ab8a09e4",
    "original": " and ",
    "translation": "",
    "context": "str + \" and \""
  },
  {
    "key": "002c91543e3e66547424f40b648dedc541a9211b54d33871f99d1319c779b437",
    "original": " and a half days",
    "translation": "",
    "context": "this.getNumberAsText(daysAndHalf.tointeger()) + \" and a half days\""
  },
  {
    "key": "b1c503166f164bf59aa036c8ff9c224768de31a3937f850060551d22c3bcbe9e",
    "original": " days",
    "translation": "",
    "context": "daysAndHalf + \" days\""
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
    "key": "c240a9fa6e2745522684f54866aa2f84def7560a50e6e2df47896c7ad93d6cad",
    "original": " hundred",
    "translation": "",
    "context": "str + units[_n \\ 100] + \" hundred\""
  },
  {
    "key": "49375539b1ff2bc54850f497fd9d5bc21d460fbc34603bd21870982f60613411",
    "original": " million",
    "translation": "",
    "context": "ret + getPart(n \\ 1000000) + \" million\""
  },
  {
    "key": "2f49944b08e1ea6dfafed7785c88805e1c22efe2ba95841df6ea9fb745bd7219",
    "original": " thousand",
    "translation": "",
    "context": "ret + getPart(n \\ 1000) + \" thousand\""
  },
  {
    "key": "83a90fe778e63b9b7113f863b6d660d2c419f6ab2d857a4dcb1210a9911468c2",
    "original": "1 day and ",
    "translation": "",
    "context": "dayHourString = \"1 day and \""
  },
  {
    "key": "c4d38ee5240e2e30347fe1a72772b7cbffc876868343b09f0ff818e6da421366",
    "original": "a couple days ago",
    "translation": "",
    "context": ""
  },
  {
    "key": "c4d38ee5240e2e30347fe1a72772b7cbffc876868343b09f0ff818e6da421366",
    "original": "a couple days ago",
    "translation": "",
    "context": "getDaysAgoAsText = function getDaysAgoAsText(_numDays){\n    if (_numDays > 8) {\n        return \"a long time ago\";\n    };\n    if (_numDays >= 6) {\n        return \"a week or so ago\";\n    };\n    if (_numDays >= 4) {\n        return \"several days ago\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple days ago\";\n    };\n    if (_numDays == 1) {\n        return \"yesterday\";\n    };\n    return \"today\";;\n    return;\n}"
  },
  {
    "key": "47a793a05731f2fc53bace32f6c4086cdb46a761ef1f9f5aa2297c7933f567dc",
    "original": "a couple more days",
    "translation": "",
    "context": ""
  },
  {
    "key": "47a793a05731f2fc53bace32f6c4086cdb46a761ef1f9f5aa2297c7933f567dc",
    "original": "a couple more days",
    "translation": "",
    "context": "getDaysRemainingText = function getDaysRemainingText(_numDays){\n    if (_numDays > 8) {\n        return \"a long while\";\n    };\n    if (_numDays >= 6) {\n        return \"another week or so\";\n    };\n    if (_numDays >= 4) {\n        return \"several more days\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple more days\";\n    };\n    if (_numDays >= 1) {\n        return \"another day or so\";\n    };\n    return \"less than a day\";;\n    return;\n}"
  },
  {
    "key": "4ed042e01ceba40277e5f5b7a6beb0d47865056fc751c0ba33d00204f9e5807c",
    "original": "a day",
    "translation": "",
    "context": "getDaysAndHalf = function getDaysAndHalf(_seconds){\n    local doubleDays = getroottable().Math.round(2.0 * _seconds \\ getroottable().World.getTime().SecondsPerDay);\n    local daysAndHalf = doubleDays \\ 2.0;\n    if (daysAndHalf <= 1.0) {\n        return \"a day\";\n    };\n    if (daysAndHalf == daysAndHalf.tointeger()) {\n        return daysAndHalf + \" days\";\n    };\n    return this.getNumberAsText(daysAndHalf.tointeger()) + \" and a half days\";;\n    return;\n}"
  },
  {
    "key": "4ed042e01ceba40277e5f5b7a6beb0d47865056fc751c0ba33d00204f9e5807c",
    "original": "a day",
    "translation": "",
    "context": ""
  },
  {
    "key": "e955d62aa9712015a3f3a2326e21906a8611d5a0b97ff1d6ffabf00343fd2748",
    "original": "a long time ago",
    "translation": "",
    "context": ""
  },
  {
    "key": "e955d62aa9712015a3f3a2326e21906a8611d5a0b97ff1d6ffabf00343fd2748",
    "original": "a long time ago",
    "translation": "",
    "context": "getDaysAgoAsText = function getDaysAgoAsText(_numDays){\n    if (_numDays > 8) {\n        return \"a long time ago\";\n    };\n    if (_numDays >= 6) {\n        return \"a week or so ago\";\n    };\n    if (_numDays >= 4) {\n        return \"several days ago\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple days ago\";\n    };\n    if (_numDays == 1) {\n        return \"yesterday\";\n    };\n    return \"today\";;\n    return;\n}"
  },
  {
    "key": "94f81ae5fa4b0d8b93b0004bfdab86f784474cf00432ae6e68dd71bbc75d4248",
    "original": "a long while",
    "translation": "",
    "context": "getDaysRemainingText = function getDaysRemainingText(_numDays){\n    if (_numDays > 8) {\n        return \"a long while\";\n    };\n    if (_numDays >= 6) {\n        return \"another week or so\";\n    };\n    if (_numDays >= 4) {\n        return \"several more days\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple more days\";\n    };\n    if (_numDays >= 1) {\n        return \"another day or so\";\n    };\n    return \"less than a day\";;\n    return;\n}"
  },
  {
    "key": "94f81ae5fa4b0d8b93b0004bfdab86f784474cf00432ae6e68dd71bbc75d4248",
    "original": "a long while",
    "translation": "",
    "context": ""
  },
  {
    "key": "4e7ad048cc5e11ee91031d966ffa6ffe90b1caffaa872b5f3f04f5d3f6b329b8",
    "original": "a week or so ago",
    "translation": "",
    "context": ""
  },
  {
    "key": "4e7ad048cc5e11ee91031d966ffa6ffe90b1caffaa872b5f3f04f5d3f6b329b8",
    "original": "a week or so ago",
    "translation": "",
    "context": "getDaysAgoAsText = function getDaysAgoAsText(_numDays){\n    if (_numDays > 8) {\n        return \"a long time ago\";\n    };\n    if (_numDays >= 6) {\n        return \"a week or so ago\";\n    };\n    if (_numDays >= 4) {\n        return \"several days ago\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple days ago\";\n    };\n    if (_numDays == 1) {\n        return \"yesterday\";\n    };\n    return \"today\";;\n    return;\n}"
  },
  {
    "key": "5efe67a737143ca06d601bf7553b2c798093f91757121bdf28270fb7f64c0e95",
    "original": "another day or so",
    "translation": "",
    "context": "getDaysRemainingText = function getDaysRemainingText(_numDays){\n    if (_numDays > 8) {\n        return \"a long while\";\n    };\n    if (_numDays >= 6) {\n        return \"another week or so\";\n    };\n    if (_numDays >= 4) {\n        return \"several more days\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple more days\";\n    };\n    if (_numDays >= 1) {\n        return \"another day or so\";\n    };\n    return \"less than a day\";;\n    return;\n}"
  },
  {
    "key": "5efe67a737143ca06d601bf7553b2c798093f91757121bdf28270fb7f64c0e95",
    "original": "another day or so",
    "translation": "",
    "context": ""
  },
  {
    "key": "355b4c17d48b9d0f2260e73de4e4157f6676576355607aab1edbe0e45d213084",
    "original": "another week or so",
    "translation": "",
    "context": ""
  },
  {
    "key": "355b4c17d48b9d0f2260e73de4e4157f6676576355607aab1edbe0e45d213084",
    "original": "another week or so",
    "translation": "",
    "context": "getDaysRemainingText = function getDaysRemainingText(_numDays){\n    if (_numDays > 8) {\n        return \"a long while\";\n    };\n    if (_numDays >= 6) {\n        return \"another week or so\";\n    };\n    if (_numDays >= 4) {\n        return \"several more days\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple more days\";\n    };\n    if (_numDays >= 1) {\n        return \"another day or so\";\n    };\n    return \"less than a day\";;\n    return;\n}"
  },
  {
    "key": "c195d2d8756234367242ba7616c5c60369bc25ced2dcb5b92808d31b58ef217a",
    "original": "eight",
    "translation": "",
    "context": ""
  },
  {
    "key": "34357b18abddea1874221b1f062f80fe3e11b6abd11fe80b171738893003b24c",
    "original": "eighteen",
    "translation": "",
    "context": ""
  },
  {
    "key": "0dbc3407a7080e3d39871b66208636c038ed9ffbd082421b6ad6b80b22f447f1",
    "original": "eighty",
    "translation": "",
    "context": ""
  },
  {
    "key": "e979074ebd5633a7263aa48c4b7dea055a769115fbc0a7de459f8a74cd2efd2b",
    "original": "eleven",
    "translation": "",
    "context": ""
  },
  {
    "key": "c463967e5708cab7f980855e14042ddbcfd1c3556d520ad4dacdfb4a115c67a5",
    "original": "fifteen",
    "translation": "",
    "context": ""
  },
  {
    "key": "f8d807ee15e983f8d185132ffb0e55d3075b220891aff58845e55a158c842798",
    "original": "fifty",
    "translation": "",
    "context": ""
  },
  {
    "key": "222b0bd51fcef7e65c2e62db2ed65457013bab56be6fafeb19ee11d453153c80",
    "original": "five",
    "translation": "",
    "context": ""
  },
  {
    "key": "9cee2304bd633d42c35db17c1427a273668bd3166487f924216d807a566a8e73",
    "original": "forty",
    "translation": "",
    "context": ""
  },
  {
    "key": "04efaf080f5a3e74e1c29d1ca6a48569382cbbcd324e8d59d2b83ef21c039f00",
    "original": "four",
    "translation": "",
    "context": ""
  },
  {
    "key": "fef8f41cdcd2038663b027a0cfbe252d39510bc162b599d1d4aa683873cc21d7",
    "original": "fourteen",
    "translation": "",
    "context": ""
  },
  {
    "key": "bc2648c2488d823bb747ba028e0360e05a5735df486e72b4dbab9b9dda01665b",
    "original": "less than a day",
    "translation": "",
    "context": ""
  },
  {
    "key": "bc2648c2488d823bb747ba028e0360e05a5735df486e72b4dbab9b9dda01665b",
    "original": "less than a day",
    "translation": "",
    "context": "getDaysRemainingText = function getDaysRemainingText(_numDays){\n    if (_numDays > 8) {\n        return \"a long while\";\n    };\n    if (_numDays >= 6) {\n        return \"another week or so\";\n    };\n    if (_numDays >= 4) {\n        return \"several more days\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple more days\";\n    };\n    if (_numDays >= 1) {\n        return \"another day or so\";\n    };\n    return \"less than a day\";;\n    return;\n}"
  },
  {
    "key": "9d5d6812b36854242d2a9c068d5b3202cdbf231c5741a0f290029e661ecf8ec4",
    "original": "negative ",
    "translation": "",
    "context": "ret = \"negative \""
  },
  {
    "key": "edcd8e701a2df0cd66a39bae6aa156cf16fe2b9653ef65f7d31742e2352421e4",
    "original": "nine",
    "translation": "",
    "context": ""
  },
  {
    "key": "cde4e100efd26f5b02fb484e30db927732ca192f1cd9975186510adec82b5c61",
    "original": "nineteen",
    "translation": "",
    "context": ""
  },
  {
    "key": "521c74a4d5824aba60ce4abaf48f951b11836b548de2f7f72af3bac37e70fc47",
    "original": "ninety",
    "translation": "",
    "context": ""
  },
  {
    "key": "7692c3ad3540bb803c020b3aee66cd8887123234ea0c6e7143c0add73ff431ed",
    "original": "one",
    "translation": "",
    "context": ""
  },
  {
    "key": "3ba8d02b16fd2a01c1a8ba1a1f036d7ce386ed953696fa57331c2ac48a80b255",
    "original": "seven",
    "translation": "",
    "context": ""
  },
  {
    "key": "2c5abdef2a0eacb49f5115991a9331e8f78c5a15f986426815fd9486b5230628",
    "original": "seventeen",
    "translation": "",
    "context": ""
  },
  {
    "key": "ab0e4b1a7839571e0278fdb4c49d6ea632bc9df91968af197d539b2df976d4f9",
    "original": "seventy",
    "translation": "",
    "context": ""
  },
  {
    "key": "8568ffd0c03b3916030e800bf86d16e065b14317315cffe328d8877b9168462f",
    "original": "several days ago",
    "translation": "",
    "context": "getDaysAgoAsText = function getDaysAgoAsText(_numDays){\n    if (_numDays > 8) {\n        return \"a long time ago\";\n    };\n    if (_numDays >= 6) {\n        return \"a week or so ago\";\n    };\n    if (_numDays >= 4) {\n        return \"several days ago\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple days ago\";\n    };\n    if (_numDays == 1) {\n        return \"yesterday\";\n    };\n    return \"today\";;\n    return;\n}"
  },
  {
    "key": "8568ffd0c03b3916030e800bf86d16e065b14317315cffe328d8877b9168462f",
    "original": "several days ago",
    "translation": "",
    "context": ""
  },
  {
    "key": "3311231db754b212f54b510b7c9445eab1645161a1f768c95f2d59be229d623b",
    "original": "several more days",
    "translation": "",
    "context": "getDaysRemainingText = function getDaysRemainingText(_numDays){\n    if (_numDays > 8) {\n        return \"a long while\";\n    };\n    if (_numDays >= 6) {\n        return \"another week or so\";\n    };\n    if (_numDays >= 4) {\n        return \"several more days\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple more days\";\n    };\n    if (_numDays >= 1) {\n        return \"another day or so\";\n    };\n    return \"less than a day\";;\n    return;\n}"
  },
  {
    "key": "3311231db754b212f54b510b7c9445eab1645161a1f768c95f2d59be229d623b",
    "original": "several more days",
    "translation": "",
    "context": ""
  },
  {
    "key": "44778d82365e4af681c40d5f0eef5cf6f5899d3f0ac335050a7ed6779cf3f674",
    "original": "six",
    "translation": "",
    "context": ""
  },
  {
    "key": "f2ce341fdaa67727bbdc88e3f7f19dc539943e346f6c2bac497fa1c89c0ca128",
    "original": "sixteen",
    "translation": "",
    "context": ""
  },
  {
    "key": "df41164e151227b31ca29bb188c936923a0afb26d9bd0a8e4ec6d05d4815c991",
    "original": "sixty",
    "translation": "",
    "context": ""
  },
  {
    "key": "e4432baa90819aaef51d2a7f8e148bf7e679610f3173752fabb4dcb2d0f418d3",
    "original": "ten",
    "translation": "",
    "context": ""
  },
  {
    "key": "9ecc81f0a4b6dfb0c30e78370c42a1e0c118d2b426ec4dd1ee06c9f62a832040",
    "original": "thirteen",
    "translation": "",
    "context": ""
  },
  {
    "key": "aca5fb59db69e5dffeda36ff0bd65205f16720b7fa1893c4557e9216dfc276d5",
    "original": "thirty",
    "translation": "",
    "context": ""
  },
  {
    "key": "8b5b9db0c13db24256c829aa364aa90c6d2eba318b9232a4ab9313b954d3555f",
    "original": "three",
    "translation": "",
    "context": ""
  },
  {
    "key": "e0f4f767ac88a9303e7317843ac20be980665a36f52397e5b26d4cc2bf54011d",
    "original": "today",
    "translation": "",
    "context": ""
  },
  {
    "key": "e0f4f767ac88a9303e7317843ac20be980665a36f52397e5b26d4cc2bf54011d",
    "original": "today",
    "translation": "",
    "context": "getDaysAgoAsText = function getDaysAgoAsText(_numDays){\n    if (_numDays > 8) {\n        return \"a long time ago\";\n    };\n    if (_numDays >= 6) {\n        return \"a week or so ago\";\n    };\n    if (_numDays >= 4) {\n        return \"several days ago\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple days ago\";\n    };\n    if (_numDays == 1) {\n        return \"yesterday\";\n    };\n    return \"today\";;\n    return;\n}"
  },
  {
    "key": "d1a749ad879b6c07e1f356b260ba81f9cb5b4376072280c9994a5c125165b701",
    "original": "twelve",
    "translation": "",
    "context": ""
  },
  {
    "key": "7c2c4df740f720b0c861920dc27692c4d4b5daa65d6330a593c931d35f8ac737",
    "original": "twenty",
    "translation": "",
    "context": ""
  },
  {
    "key": "3fc4ccfe745870e2c0d99f71f30ff0656c8dedd41cc1d7d3d376b0dbe685e2f3",
    "original": "two",
    "translation": "",
    "context": ""
  },
  {
    "key": "9523d9fbe79bcf3ee5f9f664a8041fa3cdba4b6b8bb902cb5ec335a5bf1ca769",
    "original": "yesterday",
    "translation": "",
    "context": ""
  },
  {
    "key": "9523d9fbe79bcf3ee5f9f664a8041fa3cdba4b6b8bb902cb5ec335a5bf1ca769",
    "original": "yesterday",
    "translation": "",
    "context": "getDaysAgoAsText = function getDaysAgoAsText(_numDays){\n    if (_numDays > 8) {\n        return \"a long time ago\";\n    };\n    if (_numDays >= 6) {\n        return \"a week or so ago\";\n    };\n    if (_numDays >= 4) {\n        return \"several days ago\";\n    };\n    if (_numDays >= 2) {\n        return \"a couple days ago\";\n    };\n    if (_numDays == 1) {\n        return \"yesterday\";\n    };\n    return \"today\";;\n    return;\n}"
  },
  {
    "key": "f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243",
    "original": "zero",
    "translation": "",
    "context": ""
  },
  {
    "key": "f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243",
    "original": "zero",
    "translation": "",
    "context": "getNumberAsText = function getNumberAsText(_number){\n    if (_number == 0) {\n        return \"zero\";\n    };\n    local ret = \"\";\n    local n = _number;\n    if (n < 0) {\n        ret = \"negative \";\n        n = ~n\n    };\n    local units = [\"\",\"one\",\"two\",\"three\",\"four\",\"five\",\"six\",\"seven\",\"eight\",\"nine\",\"ten\",\"eleven\",\"twelve\",\"thirteen\",\"fourteen\",\"fifteen\",\"sixteen\",\"seventeen\",\"eighteen\",\"nineteen\"];\n    local tens = [\"\",\"\",\"twenty\",\"thirty\",\"forty\",\"fifty\",\"sixty\",\"seventy\",\"eighty\",\"ninety\"];\n    local getPart = function None(_n){\n        local str = \"\";\n        if (_n >= 100) {\n            str = str + units[_n \\ 100] + \" hundred\";\n            _n = _n % 100;\n            if (_n > 0) {\n                str = str + \" and \"\n            }\n        };\n        if (_n >= 20) {\n            str = str + tens[_n \\ 10];\n            if (_n % 10 > 0) {\n                str = str + \" \" + units[_n % 10]\n            }\n        } else {\n            if (_n > 0) {\n                str = str + units[_n]\n            }\n        };\n        return str;;\n        return;\n    };\n    getPart;\n    if (n >= 1000000) {\n        ret = ret + getPart(n \\ 1000000) + \" million\";\n        n = n % 1000000;\n        if (n > 0) {\n            ret = ret + n < 100 ? \" and \" : \" \"\n        }\n    };\n    if (n >= 1000) {\n        ret = ret + getPart(n \\ 1000) + \" thousand\";\n        n = n % 1000;\n        if (n > 0) {\n            ret = ret + n < 100 ? \" and \" : \" \"\n        }\n    };\n    if (n > 0) {\n        ret = ret + getPart(n)\n    };\n    return ret;;\n    return;\n}"
  }
]