// url: https://rosettacode.org/wiki/Determine_if_a_string_is_numeric#Wren
// source: https://rosettacode.org/mw/index.php?title=Determine_if_a_string_is_numeric&action=edit&section=143
// file: determine_if_a_string_is_numeric
// name: Determine if a string is numeric
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

System.print("Are these strings numeric?")

for (s in ["1", "3.14", "-100", "1e2", "NaN", "0xaf", "rose"]) {
    var  i = Num.fromString(s) // returns null if 's' is not numeric
    System.print("  %(Fmt.s(4, s)) -> %((i != null) ? "yes" : "no")")
}
