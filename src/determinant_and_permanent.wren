// url: https://rosettacode.org/wiki/Determinant_and_permanent#Wren
// source: https://rosettacode.org/mw/index.php?title=Determinant_and_permanent&action=edit&section=51
// file: determinant_and_permanent
// name: Determinant and permanent
// author: PureFox
// license: MIT

import "/modules/matrix" for Matrix
import "/modules/fmt" for Fmt

var arrays = [
    [ [1, 2],
      [3, 4] ],

    [ [-2, 2, -3],
      [-1, 1,  3],
      [ 2, 0, -1] ],

    [ [ 1,  2,  3,  4],
      [ 4,  5,  6,  7],
      [ 7,  8,  9, 10],
      [10, 11, 12, 13] ],

    [ [ 0,  1,  2,  3,  4],
      [ 5,  6,  7,  8,  9],
      [10, 11, 12, 13, 14],
      [15, 16, 17, 18, 19],
      [20, 21, 22, 23, 24] ]
]

for (array in arrays) {
    var m = Matrix.new(array)
    Fmt.mprint(m, 2, 0)
    System.print("\nDeterminant: %(m.det)")
    System.print("Permanent  : %(m.perm)\n")
}
