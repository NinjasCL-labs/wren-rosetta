// url: https://rosettacode.org/wiki/Implicit_type_conversion#Wren
// source: https://rosettacode.org/mw/index.php?title=Implicit_type_conversion&action=edit&section=29
// file: implicit_type_conversion
// name: Implicit type conversion
// author: PureFox
// license: MIT

import "/big" for BigInt

var b1 = BigInt.new(32)
var b2 = BigInt.new ("64")

var b3 = b1 + b2 + 2 + "2"
System.print(b3) // 100
