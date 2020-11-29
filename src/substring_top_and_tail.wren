// url: https://rosettacode.org/wiki/Substring/Top_and_tail#Wren
// source: https://rosettacode.org/mw/index.php?title=Substring/Top_and_tail&action=edit&section=107
// file: substring_top_and_tail
// name: Substring/Top and tail
// author: PureFox
// license: MIT

import "/str" for Str

var a = "Beyoncé"
var b = Str.delete(a, 0)
var len = a.codePoints.count
var c = Str.delete(a, len-1)
var d = Str.delete(c, 0)
for (e in [a, b, c, d]) System.print(e)
