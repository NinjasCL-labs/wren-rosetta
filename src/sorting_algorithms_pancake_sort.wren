// url: https://rosettacode.org/wiki/Sorting_algorithms/Pancake_sort#Wren
// source: https://rosettacode.org/mw/index.php?title=Sorting_algorithms/Pancake_sort&action=edit&section=63
// file: sorting_algorithms_pancake_sort
// name: Sorting algorithms/Pancake sort
// author: PureFox
// license: MIT

import "/sort" for Find

class Pancake {
    construct new(a) {
        _a = a.toList
    }

    flip(r) {
        for (l in 0...r) {
            var t = _a[r]
            _a[r] = _a[l]
            _a[l] = t
            r = r - 1
        }
    }

    sort() {
        for (uns in _a.count-1..1) {
            var h = Find.highest(_a[0..uns])
            var lx = h[2][0]
            flip(lx)
            flip(uns)
        }
    }

    toString { _a.toString }
}

var p = Pancake.new([31, 41, 59, 26, 53, 58, 97, 93, 23, 84])
System.print("unsorted: %(p)")
p.sort()
System.print("sorted  : %(p)")
