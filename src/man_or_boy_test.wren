// url: https://rosettacode.org/wiki/Man_or_boy_test#Wren
// source: https://rosettacode.org/mw/index.php?title=Man_or_boy_test&action=edit&section=83
// file: man_or_boy_test
// name: Man or boy test
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var a
a = Fn.new { |k, x1, x2, x3, x4, x5|
    var b
    b = Fn.new {
        k = k - 1
        return a.call(k, b, x1, x2, x3, x4)
    }
    return (k <= 0) ? x4.call() + x5.call() : b.call()
}

System.print(" k    a")
for (k in 0..20) {
    Fmt.print("$2d : $ d", k, a.call(k, Fn.new { 1 }, Fn.new { -1 }, Fn.new { -1 }, Fn.new { 1 }, Fn.new { 0 }))
}
