// url: https://rosettacode.org/wiki/JortSort#Wren
// source: https://rosettacode.org/mw/index.php?title=JortSort&action=edit&section=57
// file: jortsort
// name: JortSort
// author: PureFox
// license: MIT

import "/sort" for Sort

var jortSort = Fn.new { |a|
    var b = Sort.merge(a)
    for (i in 0...a.count) {
        if (a[i] != b[i]) return false
    }
    return true
}

var tests = [ [1, 2, 3, 4, 5], [2, 1, 3, 4, 5] ]
for (test in tests) System.print("%(test) -> %(jortSort.call(test) ? "sorted" : "not sorted")")
