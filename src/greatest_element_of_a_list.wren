// url: https://rosettacode.org/wiki/Greatest_element_of_a_list#Wren
// source: https://rosettacode.org/mw/index.php?title=Greatest_element_of_a_list&action=edit&section=203
// file: greatest_element_of_a_list
// name: Greatest element of a list
// author: PureFox
// license: MIT

var max = Fn.new { |a| a.reduce { |m, x| (x > m) ? x : m } }

var a = [42, 7, -5, 11.7, 58, 22.31, 59, -18]
System.print(max.call(a))
