// url: https://rosettacode.org/wiki/Function_composition#Wren
// source: https://rosettacode.org/mw/index.php?title=Function_composition&action=edit&section=128
// file: function_composition
// name: Function composition
// author: PureFox
// license: MIT

var compose = Fn.new { |f, g| Fn.new { |x| f.call(g.call(x)) } }

var double = Fn.new { |x| 2 * x }

var addOne = Fn.new { |x| x + 1 }

System.print(compose.call(double, addOne).call(3))
