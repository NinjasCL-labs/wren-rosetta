// url: https://rosettacode.org/wiki/Integer_roots#Wren
// source: https://rosettacode.org/mw/index.php?title=Integer_roots&action=edit&section=38
// file: integer_roots
// name: Integer roots
// author: PureFox
// license: MIT

var intRoot = Fn.new { |x, n|
    if (!(x is Num && x.isInteger && x >= 0)) {
        Fiber.abort("First argument must be a non-negative integer.")
    }
    if (!(n is Num && x.isInteger && x >= 1)) {
        Fiber.abort("Second argument must be a positive integer.")
    }
    return x.pow(1/n).floor
}

var a = [ [8, 3], [9, 3], [2e18, 2] ]
for (e in a) {
    var x = e[0]
    var n = e[1]
    System.print("%(x) ^ (1/%(n)) = %(intRoot.call(x, n))")
}
