// url: https://rosettacode.org/wiki/Knuth_shuffle#Wren
// source: https://rosettacode.org/mw/index.php?title=Knuth_shuffle&action=edit&section=139
// file: knuth_shuffle
// name: Knuth shuffle
// author: PureFox
// license: MIT

import "random" for Random

var rand = Random.new()

var knuthShuffle = Fn.new { |a|
    var i = a.count - 1
    while (i >= 1) {
        var j = rand.int(i + 1)
        var t = a[i]
        a[i] = a[j]
        a[j] = t
        i = i - 1
    }
}

var tests = [ [], [10], [10, 20], [10, 20, 30] ]
for (a in tests) {
    var b = a.toList // store original order
    knuthShuffle.call(a)
    System.print("%(b) -> %(a)")
}
