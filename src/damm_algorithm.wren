// url: https://rosettacode.org/wiki/Damm_algorithm#Wren
// source: https://rosettacode.org/mw/index.php?title=Damm_algorithm&action=edit&section=51
// file: damm_algorithm
// name: Damm algorithm
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var table = [
    [0, 3, 1, 7, 5, 9, 8, 6, 4, 2],
    [7, 0, 9, 2, 1, 5, 4, 8, 6, 3],
    [4, 2, 0, 6, 8, 7, 1, 3, 5, 9],
    [1, 7, 5, 0, 9, 8, 3, 4, 2, 6],
    [6, 1, 2, 3, 0, 4, 5, 9, 7, 8],
    [3, 6, 7, 4, 2, 0, 9, 5, 8, 1],
    [5, 8, 6, 9, 7, 2, 0, 1, 3, 4],
    [8, 9, 4, 5, 3, 6, 2, 0, 1, 7],
    [9, 4, 3, 8, 6, 1, 7, 2, 0, 5],
    [2, 5, 8, 1, 4, 3, 6, 7, 9, 0]
]

var damm = Fn.new { |input|
    var interim = 0
    for (c in input.bytes) interim = table[interim][c-48]
    return interim == 0
}

for (s in ["5724", "5727", "112946", "112949"]) {
    System.print("%(Fmt.s(6, s))  %(damm.call(s))")
}
