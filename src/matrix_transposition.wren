// url: https://rosettacode.org/wiki/Matrix_transposition#Wren
// source: https://rosettacode.org/mw/index.php?title=Matrix_transposition&action=edit&section=134
// file: matrix_transposition
// name: Matrix transposition
// author: PureFox
// license: MIT

import "/modules/matrix" for Matrix
import "/modules/fmt" for Fmt

var m = Matrix.new([
    [ 1,  2,  3],
    [ 4,  5,  6],
    [ 7,  8,  9],
    [10, 11, 12]
])

System.print("Original:\n")
Fmt.mprint(m, 2, 0)
System.print("\nTransposed:\n")
Fmt.mprint(m.transpose, 2, 0)
