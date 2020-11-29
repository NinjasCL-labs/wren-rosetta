// url: https://rosettacode.org/wiki/Reduced_row_echelon_form#Wren
// source: https://rosettacode.org/mw/index.php?title=Reduced_row_echelon_form&action=edit&section=61
// file: reduced_row_echelon_form
// name: Reduced row echelon form
// author: PureFox
// license: MIT

import "/modules/matrix" for Matrix
import "/modules/fmt" for Fmt

var m = Matrix.new([
    [ 1,  2,  -1,  -4],
    [ 2,  3,  -1, -11],
    [-2,  0,  -3,  22]
])

System.print("Original:\n")
Fmt.mprint(m, 3, 0)
System.print("\nRREF:\n")
m.toReducedRowEchelonForm
Fmt.mprint(m, 3, 0)
