// url: https://rosettacode.org/wiki/Greatest_common_divisor#Wren
// source: https://rosettacode.org/mw/index.php?title=Greatest_common_divisor&action=edit&section=280
// file: greatest_common_divisor
// name: Greatest common divisor
// author: PureFox
// license: MIT

var gcd = Fn.new { |x, y|
    while (y != 0) {
        var t = y
        y = x % y
        x = t
    }
    return x
}

System.print("gcd(33, 77) = %(gcd.call(33, 77))")
System.print("gcd(49865, 69811) = %(gcd.call(49865, 69811))")
