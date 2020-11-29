// url: https://rosettacode.org/wiki/Exponentiation_order#Wren
// source: https://rosettacode.org/mw/index.php?title=Exponentiation_order&action=edit&section=61
// file: exponentiation_order
// name: Exponentiation order
// author: PureFox
// license: MIT

import "/fmt" for Fmt

var ops = [ "5**3**2", "(5**3)**2", "5**(3**2)" ]
var results = [ 5.pow(3).pow(2), (5.pow(3)).pow(2), 5.pow(3.pow(2)) ]
for (i in 0...ops.count) {
    System.print("%(Fmt.s(-9, ops[i])) -> %(results[i])")
}
