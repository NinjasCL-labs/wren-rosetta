// url: https://rosettacode.org/wiki/Loops/For_with_a_specified_step#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/For_with_a_specified_step&action=edit&section=191
// file: loops_for_with_a_specified_step
// name: Loops/For with a specified step
// author: PureFox
// license: MIT

// Print odd numbers under 20.
for (i in 1..10) {
    var j = 2*i - 1
    System.write("%(j) ")
}

System.print("\n")

// Do the same using a 'while' loop.
var k = 1
while (k < 20) {
    System.write("%(k) ")
    k = k + 2
}
System.print()

