// url: https://rosettacode.org/wiki/Sort_using_a_custom_comparator#Wren
// source: https://rosettacode.org/mw/index.php?title=Sort_using_a_custom_comparator&action=edit&section=96
// file: sort_using_a_custom_comparator
// name: Sort using a custom comparator
// author: PureFox
// license: MIT

import "/sort" for Cmp, Sort

var cmp = Fn.new { |s, t|
    if (s.count < t.count) return 1
    if (s.count > t.count) return -1
    return Cmp.insensitive.call(s, t)
}

var strings = ["Here", "are", "some", "sample", "strings", "to", "be", "sorted"]
System.print("Unsorted: %(strings)")
Sort.insertion(strings, cmp)
System.print("Sorted  : %(strings)")
