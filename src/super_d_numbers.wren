// url: https://rosettacode.org/wiki/Super-d_numbers#Wren
// source: https://rosettacode.org/mw/index.php?title=Super-d_numbers&action=edit&section=29
// file: super_d_numbers
// name: Super-d numbers
// author: PureFox
// license: MIT

import "/modules/big" for BigInt
import "/modules/fmt" for Fmt

var start = System.clock
var rd = ["22", "333", "4444", "55555", "666666", "7777777", "88888888"]
for (i in 2..8) {
    Fmt.print("First 10 super-$d numbers:", i)
    var count = 0
    var j = BigInt.three
    while (true) {
        var k = j.pow(i) * i
        var ix = k.toString.indexOf(rd[i-2])
        if (ix >= 0) {
            count = count + 1
            Fmt.write("$i ", j)
            if (count == 10) {
                Fmt.print("\nfound in $f seconds\n", System.clock - start)
                break
            }
        }
        j = j.inc
    }
}
