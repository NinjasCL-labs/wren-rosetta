// url: https://rosettacode.org/wiki/Sort_numbers_lexicographically#Wren
// source: https://rosettacode.org/mw/index.php?title=Sort_numbers_lexicographically&action=edit&section=45
// file: sort_numbers_lexicographically
// name: Sort numbers lexicographically
// author: PureFox
// license: MIT

import "/sort" for Sort

var a = (1..13).map { |i| "%(i)" }.toList
Sort.quick(a)
System.print(a)
