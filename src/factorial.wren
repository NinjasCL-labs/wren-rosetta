// url: https://rosettacode.org/wiki/Factorial#Wren
// source: https://rosettacode.org/mw/index.php?title=Factorial&action=edit&section=585
// file: factorial
// name: Factorial
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt
import "/modules/big" for BigInt

class Factorial {
    static iterative(n) {
        if (n < 2) return BigInt.one
        var fact = BigInt.one
        for (i in 2..n.toSmall) fact = fact * i
        return fact
    }

    static recursive(n) {
        if (n < 2) return BigInt.one
        return n * recursive(n-1)
    }
}

var n = BigInt.new(24)
Fmt.print("Factorial(%(n)) iterative -> $,s", Factorial.iterative(n))
Fmt.print("Factorial(%(n)) recursive -> $,s", Factorial.recursive(n))
