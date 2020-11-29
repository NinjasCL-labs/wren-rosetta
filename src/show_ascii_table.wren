// url: https://rosettacode.org/wiki/Show_ASCII_table#Wren
// source: https://rosettacode.org/mw/index.php?title=Show_ASCII_table&action=edit&section=72
// file: show_ascii_table
// name: Show ASCII table
// author: PureFox
// license: MIT

import "/fmt" for Fmt

for (i in 0...16) {
    var j = 32 + i
    while (j < 128) {
        var k = "%(String.fromByte(j))"
        if (j == 32) {
            k = "Spc"
        } else if (j == 127) {
            k = "Del"
        }
        System.write("%(Fmt.d(3, j)) : %(Fmt.s(-3, k))   ")
        j = j + 16
    }
    System.print()
}
