// url: https://rosettacode.org/wiki/Create_a_two-dimensional_array_at_runtime#Wren
// source: https://rosettacode.org/mw/index.php?title=Create_a_two-dimensional_array_at_runtime&action=edit&section=113
// file: create_a_two_dimensional_array_at_runtime
// name: Create a two-dimensional array at runtime
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout

var x
var y
System.print("Enter the dimensions of the array:")
while (true) {
    System.write("  First dimension  : ")
    Stdout.flush()
    x = Num.fromString(Stdin.readLine())
    if (x && (x is Num) && (x.isInteger) && (x > 0) ) {
        System.write("  Second dimension : ")
        Stdout.flush()
        y = Num.fromString(Stdin.readLine())
        if (y && (y is Num) && (y.isInteger) && (y > 0) ) break
        System.print("Dimension must be a positive integer.")
    } else {
        System.print("Dimension must be a positive integer.")
    }
}
// create the 2d array
var a = List.filled(x, null)
for (i in 0...x) a[i] = List.filled(y, 0)
// write an element
a[x - 1][y - 1] = 42
// print it
System.print("\na[%(x-1)][%(y-1)] = %(a[x-1][y-1])")
// make the array eligible for garbage collection
a = null
