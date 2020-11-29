// url: https://rosettacode.org/wiki/Loops/Increment_loop_index_within_loop_body#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/Increment_loop_index_within_loop_body&action=edit&section=54
// file: loops_increment_loop_index_within_loop_body
// name: Loops/Increment loop index within loop body
// author: PureFox
// license: MIT

import "/fmt" for Fmt

var isPrime = Fn.new { |n|
    if (n < 2 || !n.isInteger) return false
    if (n%2 == 0) return n == 2
    if (n%3 == 0) return n == 3
    var d = 5
    while (d*d <= n) {
        if (n%d == 0) return false
        d = d + 2
        if (n%d == 0) return false
        d = d + 4
    }
    return true
}

var count = 0
var i = 42
while (count < 42) {
    if (isPrime.call(i)) {
        count = count + 1
        System.print("%(Fmt.d(2, count)): %(Fmt.dc(18, i))")
        i = 2 * i - 1        
    }
    i = i + 1
}
