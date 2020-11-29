// url: https://rosettacode.org/wiki/Modular_inverse#Wren
// source: https://rosettacode.org/mw/index.php?title=Modular_inverse&action=edit&section=79
// file: modular_inverse
// name: Modular inverse
// author: PureFox
// license: MIT

import "/big" for BigInt

var a = BigInt.new(42)
var b = BigInt.new(2017)
System.print(a.modInv(b))
