// url: https://rosettacode.org/wiki/Mutual_recursion#Wren
// source: https://rosettacode.org/mw/index.php?title=Mutual_recursion&action=edit&section=128
// file: mutual_recursion
// name: Mutual recursion
// author: PureFox
// license: MIT

var M  // forward declaration

var F = Fn.new { |n|
    if (n == 0) return 1
    return n - M.call(F.call(n-1))
}

M = Fn.new { |n|
    if (n == 0) return 0
    return n - F.call(M.call(n-1))
}

System.write("F(0..20): ")
(0..20).each { |i| System.write("%(F.call(i))  ") }
System.write("\nM(0..20): ")
(0..20).each { |i| System.write("%(M.call(i))  ") }
System.print()
