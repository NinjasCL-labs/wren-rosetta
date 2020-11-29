// url: https://rosettacode.org/wiki/Proper_divisors#Wren
// source: https://rosettacode.org/mw/index.php?title=Proper_divisors&action=edit&section=97
// file: proper_divisors
// name: Proper divisors
// author: PureFox
// license: MIT

import "/fmt" for Fmt
import "/math" for Int

for (i in 1..10) System.print("%(Fmt.d(2, i)) -> %(Int.properDivisors(i))")

System.print("\nThe number in the range [1, 20000] with the most proper divisors is:")
var number = 1
var maxDivs = 0
for (i in 2..20000) {
    var divs = Int.properDivisors(i).count
    if (divs > maxDivs) {
        number = i
        maxDivs = divs
    }
}
System.print("%(number) which has %(maxDivs) proper divisors.")
