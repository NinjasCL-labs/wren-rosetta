// url: https://rosettacode.org/wiki/Y_combinator#Wren
// source: https://rosettacode.org/mw/index.php?title=Y_combinator&action=edit&section=106
// file: y_combinator
// name: Y combinator
// author: PureFox
// license: MIT

var y = Fn.new { |f|
    var g = Fn.new { |r| f.call { |x| r.call(r).call(x) } }
    return g.call(g)
}

var almostFac = Fn.new { |f| Fn.new { |x| x <= 1 ? 1 : x * f.call(x-1) } }

var almostFib = Fn.new { |f| Fn.new { |x| x <= 2 ? 1 : f.call(x-1) + f.call(x-2) } }

var fac = y.call(almostFac)
var fib = y.call(almostFib)

System.print("fac(10) = %(fac.call(10))")
System.print("fib(10) = %(fib.call(10))")
