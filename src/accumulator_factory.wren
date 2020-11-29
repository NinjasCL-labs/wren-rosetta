// url: https://rosettacode.org/wiki/Accumulator_factory#Wren
// source: https://rosettacode.org/mw/index.php?title=Accumulator_factory&action=edit&section=123
// file: accumulator_factory
// name: Accumulator factory
// author: PureFox
// license: MIT

var accumulator = Fn.new { |acc| Fn.new { |n| acc = acc + n } }

var x = accumulator.call(1)
x.call(5)
accumulator.call(3)
System.print(x.call(2.3))
