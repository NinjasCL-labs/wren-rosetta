// url: https://rosettacode.org/wiki/Sorting_algorithms/Selection_sort#Wren
// source: https://rosettacode.org/mw/index.php?title=Sorting_algorithms/Selection_sort&action=edit&section=101
// file: sorting_algorithms_selection_sort
// name: Sorting algorithms/Selection sort
// author: PureFox
// license: MIT

var selectionSort = Fn.new { |a|
    var last = a.count - 1
    for (i in 0...last) {
        var aMin = a[i]
        var iMin = i
        for (j in i+1..last) {
            if (a[j] < aMin) {
                aMin = a[j]
                iMin = j
            }
        }
        var t = a[i]
        a[i] = aMin
        a[iMin] = t
    }
}

var as = [ [4, 65, 2, -31, 0, 99, 2, 83, 782, 1], [7, 5, 2, 6, 1, 4, 2, 6, 3] ]
for (a in as) {
    System.print("Before: %(a)")
    selectionSort.call(a)
    System.print("After : %(a)")
    System.print()
}
