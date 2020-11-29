// url: https://rosettacode.org/wiki/Chowla_numbers#Wren
// source: https://rosettacode.org/mw/index.php?title=Chowla_numbers&action=edit&section=38
// file: chowla_numbers
// name: Chowla numbers
// author: PureFox
// license: MIT

import "/fmt" for Fmt
import "/math" for Int, Nums

var chowla = Fn.new { |n| (n > 1) ? Nums.sum(Int.properDivisors(n)) - 1 : 0 }

for (i in 1..37) System.print("chowla(%(Fmt.d(2, i))) = %(chowla.call(i))")
System.print()
var count = 1
var limit = 1e7
var c = Int.primeSieve(limit, false)
var power = 100
var i = 3
while (i < limit) {
    if (!c[i]) count = count + 1
    if (i == power - 1) {
        System.print("Count of primes up to %(Fmt.dc(-10, power)) = %(Fmt.dc(0, count))")
        power = power * 10
    }
    i = i + 2
}
System.print()
count = 0
limit = 35 * 1e6
i = 2
while (true) {
    var p = (1 << (i -1)) * ((1<<i perfect="" numbers="" must="" be="" of="" this="" form="" if=""> limit) break
    if (chowla.call(p) == p-1) {
        System.print("%(Fmt.dc(0, p)) is a perfect number")
        count = count + 1
    }
    i = i + 1
}
System.print("There are %(count) perfect numbers &lt;= 35,000,000")</i>
