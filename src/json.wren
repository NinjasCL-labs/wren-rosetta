// url: https://rosettacode.org/wiki/JSON#Wren
// source: https://rosettacode.org/mw/index.php?title=JSON&action=edit&section=103
// file: json
// name: JSON
// author: PureFox
// license: MIT
// use https://github.com/brandly/wren-json
import "/json" for JSON

var s = "{ \"foo\": 1, \"bar\": [ \"10\", \"apples\"] }"
var o = JSON.parse(s)
System.print(o)

o = { "blue": [1, 2], "ocean": "water" }
s = JSON.stringify(o)
System.print(s)
