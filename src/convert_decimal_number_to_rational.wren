// url: https://rosettacode.org/wiki/Convert_decimal_number_to_rational#Wren
// source: https://rosettacode.org/mw/index.php?title=Convert_decimal_number_to_rational&action=edit&section=52
// file: convert_decimal_number_to_rational
// name: Convert decimal number to rational
// author: PureFox
// license: MIT

import "/modules/rat" for Rat
import "/modules/fmt" for Fmt

var tests = [0.9054054, 0.518518, 0.75]
for (test in tests) {
    var r = Rat.fromFloat(test)
    System.print("%(Fmt.s(-9, test)) -> %(r)")
}
