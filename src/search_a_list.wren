// url: https://rosettacode.org/wiki/Search_a_list#Wren
// source: https://rosettacode.org/mw/index.php?title=Search_a_list&action=edit&section=126
// file: search_a_list
// name: Search a list
// author: PureFox
// license: MIT

import "/modules/seq" for Lst

var find = Fn.new { |haystack, needle|
    var res = Lst.indicesOf(haystack, needle)
    if (!res[0]) Fiber.abort("Needle not found in haystack.")
    System.print("The needle occurs %(res[1]) time(s) in the haystack.")
    if (res[1] == 1) {
        System.print("It occurs at index %(res[2][0])")
    } else {
        System.print("It first occurs at index %(res[2][0])")
        System.print("It last  occurs at index %(res[2][-1])")
    }
    System.print()
}

var haystack = ["Zig", "Zag", "Wally", "Ronald", "Bush", "Krusty", "Charlie", "Bush", "Boz", "Zag"]
System.print("The haystack is:\n%(haystack)\n")
var needles = ["Wally", "Bush", "Zag", "George"]
for (needle in needles) {
    System.print("The needle is %(needle).")
    find.call(haystack, needle)
}
