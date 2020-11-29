// url: https://rosettacode.org/wiki/Function_definition#Wren
// source: https://rosettacode.org/mw/index.php?title=Function_definition&action=edit&section=255
// file: function_definition
// name: Function definition
// author: PureFox
// license: MIT

var multiply = Fn.new { |a, b| a * b }

System.print(multiply.call(3, 7))
System.print(multiply.call("abc", 3))
System.print(multiply.call([1], 5))
System.print(multiply.call(true, false))
