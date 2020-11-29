// url: https://rosettacode.org/wiki/Increasing_gaps_between_consecutive_Niven_numbers#Wren
// source: https://rosettacode.org/mw/index.php?title=Increasing_gaps_between_consecutive_Niven_numbers&action=edit&section=15
// file: increasing_gaps_between_consecutive_niven_numbers
// name: Increasing gaps between consecutive Niven numbers
// author: PureFox
// license: MIT

import "/fmt" for Fmt

var newSum // recursive
newSum = Fn.new {
    var ms // also recursive
    ms = Fn.new {
        ms = newSum.call()
        return ms.call()
    }
    var msd = 0
    var d = 0
    return Fn.new {
        if (d < 9) {
            d = d + 1
        } else {
            d = 0
            msd = ms.call()
        }
        return msd + d
    }
}

var newHarshard = Fn.new {
    var  i = 0
    var sum = newSum.call()
    return Fn.new {
        i = i + 1
        while (i%sum.call() != 0) i = i + 1
        return i
    }
}

System.print("Gap    Index of gap   Starting Niven")
System.print("===   =============   ==============")
var h = newHarshard.call() 
var pg = 0        // previous highest gap
var pn = h.call() // previous Niven number
var i = 1
var n = h.call()
while (n <= 1e9) {
    var g = n - pn
    if (g > pg) {
        System.print("%(Fmt.d(3, g))   %(Fmt.dc(13, i))   %(Fmt.dc(14, pn))")
        pg = g
    }
    pn = n
    i = i + 1
    n = h.call()
}
