// url: https://rosettacode.org/wiki/Catalan_numbers/Pascal%27s_triangle#Wren
// source: https://rosettacode.org/mw/index.php?title=Catalan_numbers/Pascal%27s_triangle&action=edit&section=73
// file: catalan_pascal
// name: Catalan numbers/Pascal's triangle
// author: PureFox
// license: MIT

var n = 15
var t = List.filled(n+2, 0)
t[1] = 1
for (i in 1..n) {
    if (i > 1) for (j in i..2) t[j] = t[j] + t[j-1]
    t[i+1] = t[i]
    if (i > 0) for (j in i+1..2) t[j] = t[j] + t[j-1]
    System.write("%(t[i+1]-t[i]) ")
}
System.print()
