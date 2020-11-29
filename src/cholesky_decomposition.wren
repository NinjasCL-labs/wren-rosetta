// url: https://rosettacode.org/wiki/Cholesky_decomposition#Wren
// source: https://rosettacode.org/mw/index.php?title=Cholesky_decomposition&action=edit&section=67
// file: cholesky_decomposition
// name: Cholesky decomposition
// author: PureFox
// license: MIT

import "/matrix" for Matrix
import "/fmt" for Fmt

var arrays = [
    [ [25, 15, -5],
      [15, 18,  0],
      [-5,  0, 11] ],

    [ [18, 22,  54,  42],
      [22, 70,  86,  62],
      [54, 86, 174, 134],
      [42, 62, 134, 106] ]
]

for (array in arrays) {
    System.print("Original:")
    Fmt.mprint(array, 3, 0)
    System.print("\nLower Cholesky factor:")
    Fmt.mprint(Matrix.new(array).cholesky(), 8, 5)
    System.print()
}
