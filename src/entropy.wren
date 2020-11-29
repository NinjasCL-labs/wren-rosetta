// url: https://rosettacode.org/wiki/Entropy#Wren
// source: https://rosettacode.org/mw/index.php?title=Entropy&action=edit&section=91
// file: entropy
// name: Entropy
// author: PureFox
// license: MIT

import "/math" for Math

var s = "1223334444"
var m = {}
for (c in s) {
    var d = m[c]
    m[c] = (d) ? d + 1 : 1
}
var hm = 0
for (k in m.keys) {
    var c = m[k]
    hm = hm + c*Math.log2(c)
}
var l = s.count
System.print(Math.log2(l) - hm/l)
