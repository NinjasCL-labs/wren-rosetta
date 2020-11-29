// url: https://rosettacode.org/wiki/Sequence:_smallest_number_greater_than_previous_term_with_exactly_n_divisors#Wren
// source: https://rosettacode.org/mw/index.php?title=Sequence:_smallest_number_greater_than_previous_term_with_exactly_n_divisors&action=edit&section=29
// file: sequence:_smallest_number_greater_than_previous_term_with_exactly_n_divisors
// name: Sequence: smallest number greater than previous term with exactly n divisors
// author: PureFox
// license: MIT

import "/math" for Int

var limit = 24
var res = List.filled(limit, 0)
var next = 1
var n = 1
while (next <= limit) {
    var k = Int.divisors(n).count
    if (k == next) {
        res[k-1] = n        
        next = next + 1
        if (next > 4 && Int.isPrime(next)) n = 2.pow(next-1) - 1
    }
    n = n + 1 
}
System.print("The first %(limit) terms are:")
System.print(res)
