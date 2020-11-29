// url: https://rosettacode.org/wiki/Prime_decomposition#Wren
// source: https://rosettacode.org/mw/index.php?title=Prime_decomposition&action=edit&section=120
// file: prime_decomposition
// name: Prime decomposition
// author: PureFox
// license: MIT

import "/modules/big" for BigInt
import "/modules/fmt" for Fmt

// gets a BigInteger's prime factors
var primeFactors = Fn.new { |n|
    if (n.type != BigInt || n < 2) return []
    if (n.isProbablePrime(5)) return [n]
    var inc = [4, 2, 4, 2, 4, 6, 2, 6]
    var factors = []
    while (n%2 == 0) {
        factors.add(BigInt.two)
        n = n / 2
    }
    while (n%3 == 0) {
        factors.add(BigInt.three)
        n = n / 3
    }
    while (n%5 == 0) {
        factors.add(BigInt.five)
        n = n / 5
    }
    var k = BigInt.new(7)
    var i = 0
    while (k * k <= n) {
        if (n%k == 0) {
            factors.add(k)
            n = n / k
        } else {
            k = k + inc[i]
            i = (i + 1) % 8
        }
    }
    if (n > 1) factors.add(n)
    return factors
}

var vals = [1 << 31, 1234567, 333333, 987653, 2 * 3 * 5 * 7 * 11 * 13 * 17]
for (val in vals) {
    Fmt.print("$10d -> $n", val, primeFactors.call(BigInt.new(val)))
}
