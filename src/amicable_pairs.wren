// url: https://rosettacode.org/wiki/Amicable_pairs#Wren
// source: https://rosettacode.org/mw/index.php?title=Amicable_pairs&action=edit&section=94
// file: amicable_pairs
// name: Amicable pairs
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt
import "/modules/math" for Int, Nums

var a = List.filled(20000, 0)
for (i in 1...20000) a[i] = Nums.sum(Int.properDivisors(i))
System.print("The amicable pairs below 20,000 are:")
for (n in 2...19999) {
    var m = a[n]
    if (m > n && m < 20000 && n == a[m]) {
        System.print("  %(Fmt.d(5, n)) and %(Fmt.d(5, m))")
    }
}
