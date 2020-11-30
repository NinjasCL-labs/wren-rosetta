// url: https://rosettacode.org/wiki/Apply_a_callback_to_an_array#Wren
// source: https://rosettacode.org/mw/index.php?title=Apply_a_callback_to_an_array&action=edit&section=168
// file: apply_a_callback_to_an_array
// name: Apply a callback to an array
// author: Fusta
// license: GNU FDL 1.2

var arr = [1, 2, 3, 4, 5]
arr = arr.map { |x| x * 2 }.toList
arr = arr.map(Fn.new { |x| x / 2 }).toList
arr.each { |x| System.print(x) }
