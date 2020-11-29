// url: https://rosettacode.org/wiki/Loops/Do-while#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/Do-while&action=edit&section=173
// file: loops_do_while-1
// name: Loops/Do-while
// author: PureFox
// license: MIT

var value = 0
var ok = true
while (ok) {
    value = value + 1
    System.print(value)
    ok = value%6 != 0
}
