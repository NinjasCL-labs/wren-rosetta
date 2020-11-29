// url: https://rosettacode.org/wiki/Arithmetic/Integer#Wren
// source: https://rosettacode.org/mw/index.php?title=Arithmetic/Integer&action=edit&section=202
// file: arithmetic_integer
// name: Arithmetic/Integer
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout
System.write("first number:     ")
Stdout.flush()
var a = Num.fromString(Stdin.readLine())
System.write("second number:    ")
Stdout.flush()
var b = Num.fromString(Stdin.readLine())
System.print("sum:              %(a + b)")
System.print("difference:       %(a - b)")
System.print("product:          %(a * b)")
System.print("integer quotient: %((a / b).floor)")
System.print("remainder:        %(a % b)")
System.print("exponentiation:   %(a.pow(b))")
