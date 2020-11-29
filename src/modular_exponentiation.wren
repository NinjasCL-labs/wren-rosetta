// url: https://rosettacode.org/wiki/Modular_exponentiation#Wren
// source: https://rosettacode.org/mw/index.php?title=Modular_exponentiation&action=edit&section=67
// file: modular_exponentiation
// name: Modular exponentiation
// author: PureFox
// license: MIT

import "/big" for BigInt

var a = BigInt.new("2988348162058574136915891421498819466320163312926952423791023078876139")
var b = BigInt.new("2351399303373464486466122544523690094744975233415544072992656881240319")
var m = BigInt.ten.pow(40)
System.print(a.modPow(b, m))
