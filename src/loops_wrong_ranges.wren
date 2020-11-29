// url: https://rosettacode.org/wiki/Loops/Wrong_ranges#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/Wrong_ranges&action=edit&section=34
// file: loops_wrong_ranges
// name: Loops/Wrong ranges
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var loop = Fn.new { |start, stop, inc|
    System.write("%(Fmt.v("dm", 3, [start, stop, inc], 0, " ", "[]")) -> ")
    var count = 0
    var limit = 10
    var i = start
    while (i <= stop) {
        System.write("%(i) ")
        count = count + 1
        if (count == limit) break
        i = i + inc
    }
    System.print()
}

var tests = [
    [-2, 2, 1], [-2, 2, 0], [-2, 2, -1], [-2, 2, 10], [2, -2, 1], [2, 2, 1], [2, 2, -1], [2, 2, 0], [0, 0, 0]
]
for (test in tests) loop.call(test[0], test[1], test[2])
