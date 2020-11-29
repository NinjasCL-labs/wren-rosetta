// url: https://rosettacode.org/wiki/Twin_primes#Wren
// source: https://rosettacode.org/mw/index.php?title=Twin_primes&action=edit&section=20
// file: twin_primes
// name: Twin primes
// author: PureFox
// license: MIT

import "/math" for Int
import "/fmt" for Fmt

var c = Int.primeSieve(1e8-1, false)
var limit = 10
var start = 3
var twins = 0
for (i in 1..8) {
    var j = start
    while (j < limit) {
        if (!c[j] && !c[j-2]) twins = twins + 1
        j = j + 2
    }
    Fmt.print("Under $,11d there are $,7d pairs of twin primes.", limit, twins)
    start = limit + 1
    limit = limit * 10
}
