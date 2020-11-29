// url: https://rosettacode.org/wiki/Quickselect_algorithm#Wren
// source: https://rosettacode.org/mw/index.php?title=Quickselect_algorithm&action=edit&section=60
// file: quickselect_algorithm
// name: Quickselect algorithm
// author: PureFox
// license: MIT

import "/modules/sort" for Find

var a = [9, 8, 7, 6, 5, 0, 1, 2, 3, 4]
for (k in 0..9) {
    System.write(Find.quick(a, k))
    if (k < 9) System.write(", ")
}
System.print()
