// url: https://rosettacode.org/wiki/Hickerson_series_of_almost_integers#Wren
// source: https://rosettacode.org/mw/index.php?title=Hickerson_series_of_almost_integers&action=edit&section=45
// file: hickerson_series_of_almost_integers
// name: Hickerson series of almost integers
// author: PureFox
// license: MIT

import "/modules/math" for Int
import "/modules/fmt" for Fmt
import "/modules/big" for BigInt

var hickerson = Fn.new { |n|
    var fact = BigInt.new(Int.factorial(n)) // accurate up to n == 18
    var ln2 = BigInt.new("693147180559945309417232121458176568075500134360255254120680009") // 63 digits
    var mult = BigInt.new("1e64").pow(n+1)  // 64 == ln2 digit count + 1
    return fact * mult /(BigInt.two * ln2.pow(n+1))
}

System.print("Values of h(n), truncated to 1 dp, and whether 'almost integers' or not:")
for (i in 1..17) {
    var h = hickerson.call(i).toString
    var hl = h.count
    var k = hl - i - 1
    var ai = (h[k] == "0" || h[k] == "9")
    var s = h[0...k] + "." + h[k]
    Fmt.print("$2d: $20s $s", i, s, ai)
}
