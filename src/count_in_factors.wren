// url: https://rosettacode.org/wiki/Count_in_factors#Wren
// source: https://rosettacode.org/mw/index.php?title=Count_in_factors&action=edit&section=79
// file: count_in_factors
// name: Count in factors
// author: PureFox
// license: MIT

import "/math" for Int

for (r in [1..9, 2144..2154, 9987..9999]) {    
    for (i in r) {
        var factors = (i > 1) ? Int.primeFactors(i) : [1]
        System.print("%(i): %(factors.join(" x "))")
    }
    System.print()
}
