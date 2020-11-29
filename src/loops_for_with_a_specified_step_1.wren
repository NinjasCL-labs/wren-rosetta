// url: https://rosettacode.org/wiki/Loops/For_with_a_specified_step#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/For_with_a_specified_step&action=edit&section=191
// file: loops_for_with_a_specified_step-1
// name: Loops/For with a specified step
// author: PureFox
// license: MIT

import "/modules/trait" for Stepped

// Print odd numbers under 20.
for (i in Stepped.new(1..20, 2)) System.write("%(i) ")
System.print()

// Print first plus every third element thereafter.
for (i in Stepped.new(1..20, 3)) System.write("%(i) ")
System.print()
