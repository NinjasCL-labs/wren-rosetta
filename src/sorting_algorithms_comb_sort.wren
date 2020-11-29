// url: https://rosettacode.org/wiki/Sorting_algorithms/Comb_sort#Wren
// source: https://rosettacode.org/mw/index.php?title=Sorting_algorithms/Comb_sort&action=edit&section=74
// file: sorting_algorithms_comb_sort
// name: Sorting algorithms/Comb sort
// author: PureFox
// license: MIT

var combSort = Fn.new { |a|
    var gap = a.count
    while (true) {
        gap = (gap/1.25).floor
        if (gap < 1) gap = 1
        var i = 0
        var swaps = false
        while (true) {
            if (a[i] > a[i+gap]) {
                var t = a[i]
                a[i] = a[i+gap]
                a[i+gap] = t
                swaps = true
            }
            i = i + 1
            if (i + gap >= a.count) break
        }
        if (gap == 1 && !swaps) return
    }
}

var as = [ [4, 65, 2, -31, 0, 99, 2, 83, 782, 1], [7, 5, 2, 6, 1, 4, 2, 6, 3] ]
for (a in as) {
    System.print("Before: %(a)")
    combSort.call(a)
    System.print("After : %(a)")
    System.print()
}
