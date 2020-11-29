// url: https://rosettacode.org/wiki/Loops/Do-while#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/Do-while&action=edit&section=173
// file: loops_do_while
// name: Loops/Do-while
// author: PureFox
// license: MIT

var v = 0
while (true) {
    v = v + 1
    System.print(v)
    if (v%6 == 0) break
}
