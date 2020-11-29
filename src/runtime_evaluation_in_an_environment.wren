// url: https://rosettacode.org/wiki/Runtime_evaluation/In_an_environment#Wren
// source: https://rosettacode.org/mw/index.php?title=Runtime_evaluation/In_an_environment&action=edit&section=56
// file: runtime_evaluation_in_an_environment
// name: Runtime evaluation/In an environment
// author: PureFox
// license: MIT

import "meta" for Meta

var x
Meta.eval("x = 2")
System.print("First  x = %(x)")
var y = x // save this value

Meta.eval("x = 5")
System.print("Second x = %(x)")

Meta.eval("x = x - y")
System.print("Delta  x = %(x)")
