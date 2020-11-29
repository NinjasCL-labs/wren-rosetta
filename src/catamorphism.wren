// url: https://rosettacode.org/wiki/Catamorphism#Wren
// source: https://rosettacode.org/mw/index.php?title=Catamorphism&action=edit&section=87
// file: catamorphism
// name: Catamorphism
// author: PureFox
// license: MIT

var a = [1, 2, 3, 4, 5]
var sum   = a.reduce { |acc, i| acc + i }
var prod  = a.reduce { |acc, i| acc * i }
var sumSq = a.reduce { |acc, i| acc + i*i }
System.print(a)
System.print("Sum is %(sum)")
System.print("Product is %(prod)")
System.print("Sum of squares is %(sumSq)")
