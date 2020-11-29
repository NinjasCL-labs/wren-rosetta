// url: https://rosettacode.org/wiki/Currying#Wren
// source: https://rosettacode.org/mw/index.php?title=Currying&action=edit&section=84
// file: currying
// name: Currying
// author: PureFox
// license: MIT

var addN = Fn.new { |n| Fn.new { |x| n + x } }

var adder = addN.call(40)
System.print("The answer to life is %(adder.call(2)).")
