// url: https://rosettacode.org/wiki/Sum_of_squares#Wren
// source: https://rosettacode.org/mw/index.php?title=Sum_of_squares&action=edit&section=162
// file: sum_of_squares
// name: Sum of squares
// author: PureFox
// license: MIT

var sumSquares = Fn.new { |v| v.reduce(0) { |sum, n| sum + n * n } }

var v = [1, 2, 3, -1, -2, -3]
System.print("Vector         : %(v)")
System.print("Sum of squares : %(sumSquares.call(v))")
