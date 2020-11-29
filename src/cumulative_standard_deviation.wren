// url: https://rosettacode.org/wiki/Cumulative_standard_deviation#Wren
// source: https://rosettacode.org/mw/index.php?title=Cumulative_standard_deviation&action=edit&section=119
// file: cumulative_standard_deviation
// name: Cumulative standard deviation
// author: PureFox
// license: MIT

import "/fmt" for Fmt
import "/math" for Nums

var cumStdDev = Fiber.new { |a|
    for (i in 0...a.count) {
        var b = a[0..i]
        System.print("Values  : %(b)")
        Fiber.yield(Nums.popStdDev(b))
    }
}

var a = [2, 4, 4, 4, 5,  5, 7, 9]
while (true) {
    var sd = cumStdDev.call(a)
    if (cumStdDev.isDone) return
    System.print("Std Dev : %(Fmt.f(10, sd, 8))\n")
}
