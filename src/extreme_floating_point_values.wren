// url: https://rosettacode.org/wiki/Extreme_floating_point_values#Wren
// source: https://rosettacode.org/mw/index.php?title=Extreme_floating_point_values&action=edit&section=60
// file: extreme_floating_point_values
// name: Extreme floating point values
// author: PureFox
// license: MIT

var inf = 1/0
var negInf = -1/0
var nan = 0/0
var negZero = -0
System.print([inf, negInf, nan, negZero])
System.print([inf + inf, negInf + inf, nan * nan, negZero == 0])
System.print([inf/inf, negInf/2, nan + inf, negZero/0])

