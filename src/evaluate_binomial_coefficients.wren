// url: https://rosettacode.org/wiki/Evaluate_binomial_coefficients#Wren
// source: https://rosettacode.org/mw/index.php?title=Evaluate_binomial_coefficients&action=edit&section=110
// file: evaluate_binomial_coefficients
// name: Evaluate binomial coefficients
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt
import "/modules/math" for Int

var binomial = Fn.new { |n, k|
    if (n < 0 || k < 0) Fiber.abort("Arguments must be non-negative integers")
    if (n < k) Fiber.abort("The second argument cannot be more than the first.")
    if (n == k) return 1
    var prod = 1
    var i = n - k + 1
    while (i <= n) {
        prod = prod * i
        i = i + 1
    }
    return prod / Int.factorial(k)
}

var limit = 14
System.write("n/k |")
for (k in 0..limit) System.write(Fmt.d(5, k))
System.print()
System.write("----+" + "-----" * (limit + 1))
System.print()
for (n in 0..limit) {
    System.write("%(Fmt.d(3, n)) |")
    for (k in 0..n) System.write(Fmt.d(5, binomial.call(n, k)))
    System.print()
}
