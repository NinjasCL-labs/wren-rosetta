// url: https://rosettacode.org/wiki/Display_a_linear_combination#Wren
// source: https://rosettacode.org/mw/index.php?title=Display_a_linear_combination&action=edit&section=35
// file: display_a_linear_combination
// name: Display a linear combination
// author: PureFox
// license: MIT

import "/fmt" for Fmt

var linearCombo = Fn.new { |c|
    var sb = ""
    var i = 0
    for (n in c) {
        if (n != 0) {
            var op = (n < 0 && sb == "") ? "-"   :
                     (n < 0)             ? " - " :
                     (n > 0 && sb == "") ? ""    : " + "
            var av = n.abs
            var coeff = (av == 1) ? "" : "%(av)*"
            sb = sb + "%(op)%(coeff)e(%(i + 1))"
        }
        i = i + 1
    }
    return (sb == "") ? "0" : sb
}

var combos = [
    [1, 2, 3],
    [0, 1, 2, 3],
    [1, 0, 3, 4],
    [1, 2, 0],
    [0, 0, 0],
    [0],
    [1, 1, 1],
    [-1, -1, -1],
    [-1, -2, 0, -3],
    [-1]
]
for (c in combos) {
    Fmt.print("$-15s  ->  $s", c.toString, linearCombo.call(c))
}
