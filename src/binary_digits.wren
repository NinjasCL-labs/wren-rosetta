// url: https://rosettacode.org/wiki/Binary_digits#Wren
// source: https://rosettacode.org/mw/index.php?title=Binary_digits&action=edit&section=183
// file: binary_digits
// name: Binary digits
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

System.print("Converting to binary:")
for (i in [5, 50, 9000]) {
    System.print("%(i) -> %(Fmt.b(0, i))")
}
