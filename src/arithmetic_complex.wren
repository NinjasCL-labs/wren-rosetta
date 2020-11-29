// url: https://rosettacode.org/wiki/Arithmetic/Complex#Wren
// source: https://rosettacode.org/mw/index.php?title=Arithmetic/Complex&action=edit&section=108
// file: arithmetic_complex
// name: Arithmetic/Complex
// author: PureFox
// license: MIT

import "/modules/complex" for Complex

var x = Complex.new(1, 3)
var y = Complex.new(5, 2)
System.print("x     =  %(x)")
System.print("y     =  %(y)")
System.print("x + y =  %(x + y)")
System.print("x - y =  %(x - y)")
System.print("x * y =  %(x * y)")
System.print("x / y =  %(x / y)")
System.print("-x    =  %(-x)")
System.print("1 / x =  %(x.inverse)")
System.print("x*    =  %(x.conj)")
