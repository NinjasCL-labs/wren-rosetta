// url: https://rosettacode.org/wiki/Loops/While#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/While&action=edit&section=229
// file: loops_while
// name: Loops/While
// author: PureFox
// license: MIT

var i = 1024
while (i > 0) {
    System.print(i)
    i = (i / 2).floor
}
