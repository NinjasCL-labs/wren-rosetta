// url: https://rosettacode.org/wiki/Sorting_algorithms/Quicksort#Wren
// source: https://rosettacode.org/mw/index.php?title=Sorting_algorithms/Quicksort&action=edit&section=155
// file: sorting_algorithms_quicksort
// name: Sorting algorithms/Quicksort
// author: PureFox
// license: MIT

import "/sort" for Sort

var as = [
    [4, 65, 2, -31, 0, 99, 2, 83, 782, 1],
    [7, 5, 2, 6, 1, 4, 2, 6, 3],
    ["echo", "lima", "charlie", "whiskey", "golf", "papa", "alfa", "india", "foxtrot", "kilo"]
]
for (a in as) {
    System.print("Before: %(a)")
    Sort.quick(a)
    System.print("After : %(a)")
    System.print()
}
