// url: https://rosettacode.org/wiki/Attractive_numbers#Wren
// source: https://rosettacode.org/mw/index.php?title=Attractive_numbers&action=edit&section=50
// file: attractive_numbers
// name: Attractive numbers
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt
import "/modules/math" for Int

var max = 120
System.print("The attractive numbers up to and including %(max) are:")
var count = 0
for (i in 1..max) {
    var n = Int.primeFactors(i).count
    if (Int.isPrime(n)) {
        System.write(Fmt.d(4, i))
        count = count + 1
        if (count%20 == 0) System.print()
    }
}
System.print()
