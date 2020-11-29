// url: https://rosettacode.org/wiki/Smith_numbers#Wren
// source: https://rosettacode.org/mw/index.php?title=Smith_numbers&action=edit&section=52
// file: smith_numbers
// name: Smith numbers
// author: PureFox
// license: MIT

import "/modules/math" for Int
import "/modules/fmt" for Fmt
import "/modules/seq" for Lst

var sumDigits = Fn.new { |n|
    var sum = 0
    while (n > 0) {
        sum = sum + n%10
        n = (n/10).floor
    }
    return sum
}

var smiths = []
System.print("The Smith numbers below 10,000 are:")
for (i in 2...10000) {
    if (!Int.isPrime(i)) {
        var thisSum = sumDigits.call(i)
        var factors = Int.primeFactors(i)
        var factSum = factors.reduce(0) { |acc, f| acc + sumDigits.call(f) }
        if (thisSum == factSum) smiths.add(i)
    }
}
for (chunk in Lst.chunks(smiths, 16)) Fmt.print("$4d", chunk)
