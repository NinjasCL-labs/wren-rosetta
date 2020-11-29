// url: https://rosettacode.org/wiki/Integer_overflow#Wren
// source: https://rosettacode.org/mw/index.php?title=Integer_overflow&action=edit&section=55
// file: integer_overflow
// name: Integer overflow
// author: PureFox
// license: MIT

var exprs = [-4294967295, 3000000000 + 3000000000, 2147483647 - 4294967295, 65537 * 65537]

for (expr in exprs) System.print(expr >> 0)
