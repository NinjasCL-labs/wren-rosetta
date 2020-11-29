// url: https://rosettacode.org/wiki/Find_limit_of_recursion#Wren
// source: https://rosettacode.org/mw/index.php?title=Find_limit_of_recursion&action=edit&section=127
// file: find_limit_of_recursion
// name: Find limit of recursion
// author: PureFox
// license: MIT

var f
f = Fn.new { |n|
    if (n%500 == 0) System.print(n)  // print progress after every 500 calls
    System.write("") // required to fix a VM recursion bug
    f.call(n + 1)
}
f.call(1)
