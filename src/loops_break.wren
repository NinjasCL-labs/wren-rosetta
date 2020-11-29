// url: https://rosettacode.org/wiki/Loops/Break#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/Break&action=edit&section=162
// file: loops_break
// name: Loops/Break
// author: PureFox
// license: MIT

import "random" for Random

var r = Random.new()
while (true) {
    var n = r.int(20)
    System.print(n)
    if (n == 10) break
    System.print(r.int(20))
} 
