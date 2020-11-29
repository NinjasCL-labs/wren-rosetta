// url: https://rosettacode.org/wiki/Kronecker_product#Wren
// source: https://rosettacode.org/mw/index.php?title=Kronecker_product&action=edit&section=55
// file: kronecker_product
// name: Kronecker Product
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt
import "/modules/matrix" for Matrix

var a1 = [
    [1, 2],
    [3, 4]
]

var a2 =  [
    [0, 5],
    [6, 7]
]

var a3 = [
    [0, 1, 0],
    [1, 1, 1],
    [0, 1, 0]
]

var a4 = [
    [1, 1, 1, 1],
    [1, 0, 0, 1],
    [1, 1, 1, 1]
]

var m1 = Matrix.new(a1)
var m2 = Matrix.new(a2)
Fmt.mprint(m1.kronecker(m2), 2, 0)
System.print()
var m3 = Matrix.new(a3)
var m4 = Matrix.new(a4)
Fmt.mprint(m3.kronecker(m4), 2, 0)
