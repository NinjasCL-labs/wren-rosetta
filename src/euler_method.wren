// url: https://rosettacode.org/wiki/Euler_method#Wren
// source: https://rosettacode.org/mw/index.php?title=Euler_method&action=edit&section=68
// file: euler_method
// name: Euler method
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt
import "/modules/trait" for Stepped
import "/modules/math" for Math

var euler = Fn.new { |f, y, step, end|
    Fmt.write(" Step $2d: ", step)
    for (t in Stepped.new(0..end, step)) {
        if (t%10 == 0) Fmt.write(" $7.3f", y)
        y = y + step * f.call(y)
    }
    System.print()
}

var analytic = Fn.new {
    System.write("    Time: ")
    for (t in Stepped.new(0..100, 10)) Fmt.write(" $7d", t)
    System.write("\nAnalytic: ")
    for (t in Stepped.new(0..100, 10)) {
        Fmt.write(" $7.3f", 20 + 80 * Math.exp(-0.07*t))
    }
    System.print()
}
var cooling = Fn.new { |temp| -0.07 * (temp - 20) }

analytic.call()
for (i in [2, 5, 10]) euler.call(cooling, 100, i, 100)
