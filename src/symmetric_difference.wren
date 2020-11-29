// url: https://rosettacode.org/wiki/Symmetric_difference#Wren
// source: https://rosettacode.org/mw/index.php?title=Symmetric_difference&action=edit&section=96
// file: symmetric_difference
// name: Symmetric difference
// author: PureFox
// license: MIT

import "/set" for Set

var symmetricDifference = Fn.new { |a, b| a.except(b).union(b.except(a)) }

var a = Set.new(["John", "Bob", "Mary", "Serena"])
var b = Set.new(["Jim", "Mary", "John", "Bob"])
System.print("A     = %(a)")
System.print("B     = %(b)")
System.print("A - B = %(a.except(b))")
System.print("B - A = %(b.except(a))")
System.print("A △ B = %(symmetricDifference.call(a, b))")
