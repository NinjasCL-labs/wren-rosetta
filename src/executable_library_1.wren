// url: https://rosettacode.org/wiki/Executable_library#Wren
// source: https://rosettacode.org/mw/index.php?title=Executable_library&action=edit&section=43
// file: executable_library-1
// name: Executable library
// author: PureFox
// license: MIT

/* hailstone2.wren */

import "/hailstone" for Hailstone

var freq = {}
for (i in 1...100000) {
    var len = Hailstone.call(i).count
    var f = freq[len]
    freq[len] = f ? f + 1 : 1
}
var mk = 0
var mv = 0
for (k in freq.keys) {
    var v = freq[k]
    if (v > mv) {
        mk = k
        mv = v
    }
}
System.print("The Hailstone length returned most is %(mk), which occurs %(mv) times.")
