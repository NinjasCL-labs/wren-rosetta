// url: https://rosettacode.org/wiki/Inverted_syntax#Wren
// source: https://rosettacode.org/mw/index.php?title=Inverted_syntax&action=edit&section=51
// file: inverted_syntax
// name: Inverted syntax
// author: PureFox
// license: MIT

class IBool {
    construct new(b) {
        if (!(b is Bool)) Fiber.abort("B must be a boolean")
        _b = b
    }

    iff(cond) { cond ? _b : !_b }
}

var itrue = IBool.new(true)

var needUmbrella
var raining = true

// normal syntax
if (raining) needUmbrella = true
System.print("Is it raining? %(raining). Do I need an umbrella? %(needUmbrella)")

// inverted syntax
raining = false
needUmbrella = itrue.iff(raining)
System.print("Is it raining? %(raining). Do I need an umbrella? %(needUmbrella)")
