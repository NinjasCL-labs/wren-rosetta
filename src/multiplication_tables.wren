// url: https://rosettacode.org/wiki/Multiplication_tables#Wren
// source: https://rosettacode.org/mw/index.php?title=Multiplication_tables&action=edit&section=126
// file: multiplication_tables
// name: Multiplication tables
// author: PureFox
// license: MIT

import "/fmt" for Fmt

var nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
Fmt.print("  x | $4d", nums)
System.print("----+%("-" * 60)")
for (i in 1..12) {
    var nums2 = nums.map { |n| (n >= i) ? (n * i).toString : "    " }.toList
    Fmt.print("$3d | $4s", i, nums2)
}
