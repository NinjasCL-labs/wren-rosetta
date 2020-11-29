// url: https://rosettacode.org/wiki/Function_prototype#Wren
// source: https://rosettacode.org/mw/index.php?title=Function_prototype&action=edit&section=40
// file: function_prototype
// name: Function prototype
// author: PureFox
// license: MIT

var factorial // forward declaration

factorial = Fn.new { |n| (n <= 1) ? 1 : factorial.call(n-1) * n }

System.print(factorial.call(5))
