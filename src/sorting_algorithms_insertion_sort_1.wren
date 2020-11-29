// url: https://rosettacode.org/wiki/Sorting_algorithms/Insertion_sort#Wren
// source: https://rosettacode.org/mw/index.php?title=Sorting_algorithms/Insertion_sort&action=edit&section=127
// file: sorting_algorithms_insertion_sort-1
// name: Sorting algorithms/Insertion sort
// author: PureFox
// license: MIT

import "/sort" for Sort

var as = [ [4, 65, 2, -31, 0, 99, 2, 83, 782, 1], [7, 5, 2, 6, 1, 4, 2, 6, 3] ]
for (a in as) {
    System.print("Before: %(a)")
    Sort.insertion(a)
    System.print("After : %(a)")
    System.print()
}
