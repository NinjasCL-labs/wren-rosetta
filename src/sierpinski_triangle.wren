// url: https://rosettacode.org/wiki/Sierpinski_triangle#Wren
// source: https://rosettacode.org/mw/index.php?title=Sierpinski_triangle&action=edit&section=110
// file: sierpinski_triangle
// name: Sierpinski triangle
// author: PureFox
// license: MIT

var size = 1 << 4
for (y in size-1..0) {
    System.write(" " * y)
    for (x in 0...size-y) System.write((x&y != 0) ? "  " : "* ")
    System.print()
}
