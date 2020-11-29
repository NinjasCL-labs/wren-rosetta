// url: https://rosettacode.org/wiki/Combinations#Wren
// source: https://rosettacode.org/mw/index.php?title=Combinations&action=edit&section=135
// file: combinations
// name: Combinations
// author: PureFox
// license: MIT

var comb = Fn.new { |n, m|
    var s = List.filled(m, 0)
    var last = m - 1
    var rc // recursive closure
    rc = Fn.new { |i, next|
        var j = next
        while (j < n) {
            s[i] = j
            if (i == last) {
                System.print(s)
            } else {
                rc.call(i+1, j+1)
            }
            j = j + 1
        }
    }
    rc.call(0, 0)
}

comb.call(5, 3)
