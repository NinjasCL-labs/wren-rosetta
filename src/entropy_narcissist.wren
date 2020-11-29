// url: https://rosettacode.org/wiki/Entropy/Narcissist#Wren
// source: https://rosettacode.org/mw/index.php?title=Entropy/Narcissist&action=edit&section=32
// file: entropy_narcissist
// name: Entropy/Narcissist
// author: PureFox
// license: MIT

import "os" for Process
import "io" for File
import "/math" for Math

var args = Process.allArguments
var s = File.read(args[1]).trim()
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
