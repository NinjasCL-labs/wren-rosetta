// url: https://rosettacode.org/wiki/Temperature_conversion#Wren
// source: https://rosettacode.org/mw/index.php?title=Temperature_conversion&action=edit&section=113
// file: temperature_conversion
// name: Temperature conversion
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var tempConv = Fn.new { |k|
    var c = k - 273.15
    var f = c * 1.8 + 32
    var r = f + 459.67
    System.print("%(Fmt.f(7, k, 2))˚ Kelvin")
    System.print("%(Fmt.f(7, c, 2))˚ Celsius")
    System.print("%(Fmt.f(7, f, 2))˚ Fahrenheit")
    System.print("%(Fmt.f(7, r, 2))˚ Rankine")
    System.print()
}

var ks = [0, 21, 100]
for (k in ks) tempConv.call(k)
