// url: https://rosettacode.org/wiki/Sorting_algorithms/Bogosort#Wren
// source: https://rosettacode.org/mw/index.php?title=Sorting_algorithms/Bogosort&action=edit&section=88
// file: sorting_algorithms_bogosort
// name: Sorting algorithms/Bogosort
// author: PureFox
// license: MIT

import "random" for Random
import "/modules/sort" for Sort

var bogoSort = Fn.new { |a|
    var rand = Random.new()
    while (!Sort.isSorted(a)) rand.shuffle(a)
}

var a = [31, 41, 59, 26, 53, 58, 97, 93, 23, 84]
System.print("Before: %(a)")
bogoSort.call(a)
System.print("After : %(a)")
