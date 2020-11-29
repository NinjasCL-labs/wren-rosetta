// url: https://rosettacode.org/wiki/Mersenne_primes#Wren
// source: https://rosettacode.org/mw/index.php?title=Mersenne_primes&action=edit&section=29
// file: mersenne_primes
// name: Mersenne primes
// author: PureFox
// license: MIT

import "/modules/math" for Int
import "/modules/big" for BigInt

var MAX = 14
System.print("The first %(MAX) Mersenne primes are:")
var count = 0
var p = 2
while (true) {
    var m = (BigInt.one << p) - 1
    if (m.isProbablePrime(10)) {
        System.print("2 ^ %(p) - 1")
        count = count + 1
        if (count == MAX) break
    }
    while (true) {
        p = (p > 2) ? p + 2 : 3
        if (Int.isPrime(p)) break
    }
}
