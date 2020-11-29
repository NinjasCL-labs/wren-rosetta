// url: https://rosettacode.org/wiki/Fibonacci_word#Wren
// source: https://rosettacode.org/mw/index.php?title=Fibonacci_word&action=edit&section=56
// file: fibonacci_word
// name: Fibonacci word
// author: PureFox
// license: MIT

import "/math" for Math
import "/fmt" for Fmt

var entropy = Fn.new { |s|
    var m = {}
    for (c in s) {
        var d = m[c]
        m[c] = (d) ? d + 1 : 1
    }
    var hm = 0
    for (k in m.keys) {
        var c = m[k]
        hm = hm + c*Math.log2(c)
    }
    var l = s.count
    return Math.log2(l) - hm/l
}

var fibWord = Fn.new { |n|
    if (n < 2) return n.toString
    var a = "1"
    var b = "0"
    var i = 3
    while (i <= n) {
        var c = b + a
        a = b
        b = c
        i = i + 1
    }
    return b
}

Fmt.print("$2s  $10s  $10m  $s", "n", "Length", "Entropy", "Fib word")
for (i in 1..37) {
    var fw = fibWord.call(i)
    if (i < 10) {
        Fmt.print("$2d  $,10d  $0.8f  $s", i, fw.count, entropy.call(fw), fw)
    } else {
        Fmt.print("$2d  $,10d  $0.8f  $s", i, fw.count, entropy.call(fw), Fmt.abbreviate(20, fw))
    }
}
