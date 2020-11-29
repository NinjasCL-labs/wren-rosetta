// url: https://rosettacode.org/wiki/Factors_of_an_integer#Wren
// source: https://rosettacode.org/mw/index.php?title=Factors_of_an_integer&action=edit&section=177
// file: factors_of_an_integer
// name: Factors of an integer
// author: PureFox
// license: MIT

import "/fmt" for Fmt
import "/math" for Int

var a = [11, 21, 32, 45, 67, 96, 159, 723, 1024, 5673, 12345, 32767, 123459, 999997]
System.print("The factors of the following numbers are:")
for (e in a) System.print("%(Fmt.d(6, e)) => %(Int.divisors(e))")
