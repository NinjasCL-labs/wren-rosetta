// url: https://rosettacode.org/wiki/Matrix-exponentiation_operator#Wren
// source: https://rosettacode.org/mw/index.php?title=Matrix-exponentiation_operator&action=edit&section=56
// file: matrix_exponentiation_operator
// name: Matrix-exponentiation operator
// author: PureFox
// license: MIT

import "/modules/matrix" for Matrix
import "/modules/fmt" for Fmt

var m = Matrix.new([[0, 1], [1, 1]])
System.print("Original:\n")
Fmt.mprint(m, 2, 0)
System.print("\nRaised to power of 10:\n")
Fmt.mprint(m ^ 10, 3, 0)
