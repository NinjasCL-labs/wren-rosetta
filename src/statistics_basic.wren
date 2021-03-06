// url: https://rosettacode.org/wiki/Statistics/Basic#Wren
// source: https://rosettacode.org/mw/index.php?title=Statistics/Basic&action=edit&section=53
// file: statistics_basic
// name: Statistics/Basic
// author: PureFox
// license: MIT

import "random" for Random
import "/modules/math" for Nums

var r = Random.new()
for (i in [100, 1000, 10000]) {
    var a = List.filled(i, 0)
    for (j in 0...i) a[j] = r.float()
    System.print("For %(i) random numbers:")
    System.print("  mean    = %(Nums.mean(a))")
    System.print("  std/dev = %(Nums.popStdDev(a))")
    var scale = i / 100
    System.print("  scale   = %(scale) per asterisk")
    var sums = List.filled(10, 0)
    for (e in a) {
        var f = (e*10).floor
        sums[f] = sums[f] + 1
    }
    for (j in 0..8) {
        sums[j] = (sums[j] / scale).round
        System.print("  0.%(j) - 0.%(j+1): %("*" * sums[j])")
    }
    sums[9] = 100 - Nums.sum(sums[0..8])
    System.print("  0.9 - 1.0: %("*" * sums[9])\n")
}
