// url: https://rosettacode.org/wiki/Calculating_the_value_of_e#Wren
// source: https://rosettacode.org/mw/index.php?title=Calculating_the_value_of_e&action=edit&section=89
// file: calculating_the_value_of_e
// name: Calculating the value of e
// author: PureFox
// license: MIT

var epsilon = 1e-15
var fact = 1
var e = 2
var n = 2
while (true) {
    var e0 = e
    fact = fact * n
    n = n + 1
    e = e + 1/fact
    if ((e - e0).abs < epsilon) break
}
System.print("e = %(e)")
