// url: https://rosettacode.org/wiki/Compare_a_list_of_strings#Wren
// source: https://rosettacode.org/mw/index.php?title=Compare_a_list_of_strings&action=edit&section=89
// file: compare_a_list_of_strings
// name: Compare a list of strings
// author: PureFox
// license: MIT

import "/sort" for Sort

var areEqual = Fn.new { |strings|
    if (strings.count < 2) return true
    return (1...strings.count).all { |i| strings[i] == strings[i-1] }
}

var areAscending = Fn.new { |strings| Sort.isSorted(strings) }
    
var a = ["a", "a", "a"]
var b = ["a", "b", "c"]
var c = ["a", "a", "b"]
var d = ["a", "d", "c"]
System.print("%(a) are all equal : %(areEqual.call(a))")
System.print("%(b) are ascending : %(areAscending.call(b))")
System.print("%(c) are all equal : %(areEqual.call(c))")
System.print("%(d) are ascending : %(areAscending.call(d))")
