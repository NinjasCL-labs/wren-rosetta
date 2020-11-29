// url: https://rosettacode.org/wiki/Exceptions#Wren
// source: https://rosettacode.org/mw/index.php?title=Exceptions&action=edit&section=108
// file: exceptions
// name: Exceptions
// author: PureFox
// license: MIT

var intDiv = Fn.new { |a, b|
    if (!(a is Num && a.isInteger) || !(b is Num && b.isInteger)) Fiber.abort("Invalid argument(s).")
    if (b == 0) Fiber.abort("Division by zero error.")
    if (a == 0) a = a.badMethod()
    return (a/b).truncate
}

var a = [ [6, 2], [6, 0], [10, 5], [true, false], [0, 2] ]
for (e in a) {
    var d
    var f = Fiber.new { d = intDiv.call(e[0], e[1]) }
    f.try()
    if (f.error) {
        System.print("Caught %(f.error)")
    } else {
        System.print("%(e[0]) / %(e[1]) = %(d)")
    }
}
