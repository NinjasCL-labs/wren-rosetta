// url: https://rosettacode.org/wiki/First-class_functions/Use_numbers_analogously#Wren
// source: https://rosettacode.org/mw/index.php?title=First-class_functions/Use_numbers_analogously&action=edit&section=54
// file: first_class_functions_use_numbers_analogously
// name: First-class functions/Use numbers analogously
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var multiplier = Fn.new { |n1, n2| Fn.new { |m| n1 * n2 * m } }

var orderedCollection = Fn.new {
    var x  = 2.0
    var xi = 0.5
    var y  = 4.0
    var yi = 0.25
    var z  = x + y
    var zi = 1.0 / ( x + y )
    return [[x, y, z], [xi, yi, zi]]
}

var oc = orderedCollection.call()
for (i in 0..2) {
    var x = oc[0][i]
    var y = oc[1][i]
    var m = 0.5 // rather than 1 to compare with first-class functions task
    Fmt.print("$0.1g * $g * $0.1g = $0.1g", x, y, m, multiplier.call(x, y).call(m))
}
