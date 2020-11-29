// url: https://rosettacode.org/wiki/Higher-order_functions#Wren
// source: https://rosettacode.org/mw/index.php?title=Higher-order_functions&action=edit&section=152
// file: higher_order_functions
// name: Higher-order functions
// author: PureFox
// license: MIT

var first = Fn.new { |f|
    System.print("first function called")
    f.call()
}

var second = Fn.new { System.print("second function called") }

first.call(second)
