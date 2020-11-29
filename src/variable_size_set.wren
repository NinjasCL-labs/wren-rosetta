// url: https://rosettacode.org/wiki/Variable_size/Set#Wren
// source: https://rosettacode.org/mw/index.php?title=Variable_size/Set&action=edit&section=40
// file: variable_size_set
// name: Variable size/Set
// author: PureFox
// license: MIT

// create a list with 10 elements all initialized to zero
var l = List.filled(10, 0)
// give them different values and print them
for (i in 0..9) l[i] = i
System.print(l)
// add another element to the list dynamically and print it again
l.add(10)
System.print(l)
