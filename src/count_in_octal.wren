// url: https://rosettacode.org/wiki/Count_in_octal#Wren
// source: https://rosettacode.org/mw/index.php?title=Count_in_octal&action=edit&section=114
// file: count_in_octal
// name: Count in octal
// author: PureFox
// license: MIT

import "/fmt" for Conv

var i = 0
while (true) {
    System.print(Conv.oct(i))
    i = i + 1
}
