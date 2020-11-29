// url: https://rosettacode.org/wiki/Loop_over_multiple_arrays_simultaneously#Wren
// source: https://rosettacode.org/mw/index.php?title=Loop_over_multiple_arrays_simultaneously&action=edit&section=155
// file: loop_over_multiple_arrays_simultaneously
// name: Loop over multiple arrays simultaneously
// author: PureFox
// license: MIT

var a1 = ["a", "b", "c"]
var a2 = ["A", "B", "C"]
var a3 = [1, 2, 3]
for (i in a3) System.print("%(a1[i-1])%(a2[i-1])%(i)")
