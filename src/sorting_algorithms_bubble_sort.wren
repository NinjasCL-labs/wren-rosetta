// url: https://rosettacode.org/wiki/Sorting_algorithms/Bubble_sort#Wren
// source: https://rosettacode.org/mw/index.php?title=Sorting_algorithms/Bubble_sort&action=edit&section=159
// file: sorting_algorithms_bubble_sort
// name: Sorting algorithms/Bubble sort
// author: PureFox
// license: MIT

var bubbleSort = Fn.new { |a|
    var n = a.count
    if (n < 2) return
    while (true) {
        var swapped = false
        for (i in 1..n-1) {
            if (a[i-1] > a[i]) {
                var t = a[i-1]
                a[i-1] = a[i]
                a[i] = t
                swapped = true
            }
        }
        if (!swapped) return
    }
}

var as = [ [4, 65, 2, -31, 0, 99, 2, 83, 782, 1], [7, 5, 2, 6, 1, 4, 2, 6, 3] ]
for (a in as) {
    System.print("Before: %(a)")
    bubbleSort.call(a)
    System.print("After : %(a)")
    System.print()
}
