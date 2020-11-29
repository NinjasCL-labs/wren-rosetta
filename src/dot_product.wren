// url: https://rosettacode.org/wiki/Dot_product#Wren
// source: https://rosettacode.org/mw/index.php?title=Dot_product&action=edit&section=158
// file: dot_product
// name: Dot product
// author: PureFox
// license: MIT

class Vector {
    construct new(a) {
        if (a.type != List || a.count == 0 || !a.all { |i| i is Num }) {
            Fiber.abort("Argument must be a non-empty list of numbers.")
        }
        _a = a
    }

    a { _a }
    length { _a.count }

    dot(other) {
        if (other.type != Vector || length != other.length) {
            Fiber.abort("Argument must be a Vector of the same length.")
        }
        var sum = 0
        for (i in 0...length) sum = sum + _a[i] * other.a[i]
        return sum
    }

    toString { _a.toString }
}

var v1 = Vector.new([1, 3, -5])
var v2 = Vector.new([4, -2, -1])

System.print("The dot product of %(v1) and %(v2) is %(v1.dot(v2)).")
