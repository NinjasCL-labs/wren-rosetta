// url: https://rosettacode.org/wiki/Arithmetic-geometric_mean/Calculate_Pi#Wren
// source: https://rosettacode.org/mw/index.php?title=Arithmetic-geometric_mean/Calculate_Pi&action=edit&section=38
// file: arithmetic_geometric_mean_calculate_pi
// name: Arithmetic-geometric mean/Calculate Pi
// author: PureFox
// license: MIT

import "/modules/big" for BigRat

var digits = 500
var an = BigRat.one
var bn = BigRat.half.sqrt(digits)
var tn = BigRat.half.square
var pn = BigRat.one
while (pn <= digits) {
    var prevAn = an
    an = (bn + an) * BigRat.half
    bn = (bn * prevAn).sqrt(digits)
    prevAn = prevAn - an
    tn = tn - (prevAn.square * pn)
    pn = pn + pn
}
var pi = (an + bn).square / (tn * 4)
System.print(pi.toDecimal(digits, false))
