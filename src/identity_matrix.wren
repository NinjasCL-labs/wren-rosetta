// url: https://rosettacode.org/wiki/Identity_matrix#Wren
// source: https://rosettacode.org/mw/index.php?title=Identity_matrix&action=edit&section=129
// file: identity_matrix
// name: Identity matrix
// author: PureFox
// license: MIT

import "/matrix" for Matrix
import "/fmt" for Fmt

var numRows = 10 // say
Fmt.mprint(Matrix.identity(numRows), 2, 0)
