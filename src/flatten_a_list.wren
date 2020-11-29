// url: https://rosettacode.org/wiki/Flatten_a_list#Wren
// source: https://rosettacode.org/mw/index.php?title=Flatten_a_list&action=edit&section=142
// file: flatten_a_list
// name: Flatten a list
// author: PureFox
// license: MIT

import "/seq" for Lst

var a = [[1], 2, [[3, 4], 5], [[[]]], [[[6]]], 7, 8, []]
System.print(Lst.flatten(a))
