// url: https://rosettacode.org/wiki/Van_Eck_sequence#Wren
// source: https://rosettacode.org/mw/index.php?title=Van_Eck_sequence&action=edit&section=50
// file: van_eck_sequence
// name: Van Eck sequence
// author: PureFox
// license: MIT

var max = 1000
var a = List.filled(max, 0)
var seen = {}
for (n in 0...max-1) {
    var m = seen[a[n]]
    if (m != null) a[n+1] = n - m
    seen[a[n]] = n
}
System.print("The first ten terms of the Van Eck sequence are:")
System.print(a[0...10])
System.print("\nTerms 991 to 1000 of the sequence are:")
System.print(a[990..-1])
