// url: https://rosettacode.org/wiki/Non-decimal_radices/Input#Wren
// source: https://rosettacode.org/mw/index.php?title=Non-decimal_radices/Input&action=edit&section=59
// file: non_decimal_radices_input
// name: Non-decimal radices/Input
// author: PureFox
// license: MIT

import "/fmt" for Conv, Fmt

var tests = [ ["0b1110", 2], ["112", 3], ["0o16", 8], ["14", 10], ["0xe", 16], ["e", 19] ]
for (test in tests) {
    System.print("%(Fmt.s(6, test[0])) in base %(Fmt.d(-2, test[1])) = %(Conv.atoi(test[0], test[1]))")
} 
