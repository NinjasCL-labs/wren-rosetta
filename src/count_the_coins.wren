// url: https://rosettacode.org/wiki/Count_the_coins#Wren
// source: https://rosettacode.org/mw/index.php?title=Count_the_coins&action=edit&section=95
// file: count_the_coins
// name: Count the coins
// author: PureFox
// license: MIT

import "/big" for BigInt
import "/fmt" for Fmt

var countCoins = Fn.new { |c, m, n|
    var table = List.filled(n + 1, null)
    table[0] = BigInt.one
    for (i in 1..n) table[i] = BigInt.zero
    for (i in 0...m) {
        for (j in c[i]..n) table[j] = table[j] + table[j-c[i]]
    }
    return table[n]
}

var c = [1, 5, 10, 25, 50, 100]
Fmt.print("Ways to make change for $$1 using 4 coins     = $,i", countCoins.call(c, 4, 100))
Fmt.print("Ways to make change for $$1,000 using 6 coins = $,i", countCoins.call(c, 6, 1000 * 100))
