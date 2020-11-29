// url: https://rosettacode.org/wiki/Real_constants_and_functions#Wren
// source: https://rosettacode.org/mw/index.php?title=Real_constants_and_functions&action=edit&section=126
// file: real_constants_and_functions
// name: Real constants and functions
// author: PureFox
// license: MIT

var e = 2.718281828459045 // not in standard library

System.print("e         = %(e)")
System.print("pi        = %(Num.pi)")
System.print("sqrt(2)   = %(2.sqrt)")
System.print("ln(3)     = %(3.log)")    // log base e
System.print("exp(2)    = %(e.pow(2))") // exp not in standard library
System.print("abs(-e)   = %(e.abs)")
System.print("floor(e)  = %(e.floor)")
System.print("ceil(e)   = %(e.ceil)")
System.print("pow(e, 2) = %(e.pow(2))")
