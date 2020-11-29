// url: https://rosettacode.org/wiki/Increment_a_numerical_string#Wren
// source: https://rosettacode.org/mw/index.php?title=Increment_a_numerical_string&action=edit&section=190
// file: increment_a_numerical_string
// name: Increment a numerical string
// author: PureFox
// license: MIT

var ns = "41"
var n = Num.fromString(ns) + 1
var ns2 = "%(n)"
System.print("%(ns) + 1 = %(ns2)")
