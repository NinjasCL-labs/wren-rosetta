// url: https://rosettacode.org/wiki/Arbitrary-precision_integers_(included)#Wren
// source: https://rosettacode.org/mw/index.php?title=Arbitrary-precision_integers_(included)&action=edit&section=107
// file: arbitrary_precision_integers_included
// name: Arbitrary-precision integers (included)
// author: PureFox
// license: MIT

import "/fmt" for Fmt
import "/big" for BigInt

var p = BigInt.three.pow(BigInt.two)
p = BigInt.four.pow(p)
p = BigInt.five.pow(p)
var s = p.toString
Fmt.print("5 ^ 4 ^ 3 ^ 2 has $,d digits.\n", s.count)
System.print("The first twenty are    : %(s[0..19])")
System.print("and the last twenty are : %(s[-20..-1])")
