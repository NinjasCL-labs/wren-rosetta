// url: https://rosettacode.org/wiki/Fermat_numbers#Wren
// source: https://rosettacode.org/mw/index.php?title=Fermat_numbers&action=edit&section=27
// file: fermat_numbers
// name: Fermat numbers
// author: PureFox
// license: MIT

import "/math" for Int

var fermat = Fn.new { |n| 2.pow(2.pow(n)) + 1 }

for (i in 0..5) {
    var n = fermat.call(i)
    var pf = Int.primeFactors(n)
    var kind = (pf.count == 1) ? "prime" : "composite"
    System.print("F%(String.fromCodePoint(0x2080+i)): %(n) -> factors = %(pf) -> %(kind)")
}
