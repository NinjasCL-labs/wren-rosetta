// url: https://rosettacode.org/wiki/Sorting_algorithms/Permutation_sort#Wren
// source: https://rosettacode.org/mw/index.php?title=Sorting_algorithms/Permutation_sort&action=edit&section=59
// file: sorting_algorithms_permutation_sort
// name: Sorting algorithms/Permutation sort
// author: PureFox
// license: MIT

import "/modules/sort" for Sort

var a = [170, 45, 75, -90, -802, 24, 2, 66]

// recursive permutation generator
var recurse
recurse = Fn.new { |last|
    if (last <= 0) return Sort.isSorted(a)
    for (i in 0..last) {
        var t = a[i]
        a[i] = a[last]
        a[last] = t
        System.write("") // guard against VM recursion bug
        if (recurse.call(last - 1))  return true
        t = a[i]
        a[i] = a[last]
        a[last] = t
    }
    return false
}

System.print("Unsorted: %(a)")
var count = a.count
if (count > 1 && !recurse.call(count-1)) Fiber.abort("Sorted permutation not found!")
System.print("Sorted  : %(a)")
