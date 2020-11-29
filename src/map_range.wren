// url: https://rosettacode.org/wiki/Map_range#Wren
// source: https://rosettacode.org/mw/index.php?title=Map_range&action=edit&section=92
// file: map_range
// name: Map range
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var mapRange = Fn.new { |a, b, s| b.from + (s - a.from) * (b.to - b.from) / (a.to - a.from) }

var a = 0..10
var b = -1..0
for (s in a) {
    var t = mapRange.call(a, b, s)
    var f = (t >= 0) ? " " : ""
    System.print("%(Fmt.d(2, s)) maps to %(f)%(t)")
}
