// url: https://rosettacode.org/wiki/Arithmetic/Rational#Wren
// source: https://rosettacode.org/mw/index.php?title=Arithmetic/Rational&action=edit&section=66
// file: arithmetic_rational
// name: Arithmetic/Rational
// author: PureFox
// license: MIT

import "/modules/math" for Int
import "/modules/rat" for Rat

System.print("The following numbers (less than 2^19) are perfect:")
for (i in 2...(1<<19)) {
    var sum = Rat.new(1, i)
    for (j in Int.properDivisors(i)[1..-1]) sum = sum + Rat.new(1, j)
    if (sum == Rat.one) System.print("  %(i)")
}
