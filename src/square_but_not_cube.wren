// url: https://rosettacode.org/wiki/Square_but_not_cube#Wren
// source: https://rosettacode.org/mw/index.php?title=Square_but_not_cube&action=edit&section=37
// file: square_but_not_cube
// name: Square but not cube
// author: PureFox
// license: MIT

import "/math" for Math
import "/fmt" for Fmt

var i = 1
var sqnc = []  // squares not cubes
var sqcb = []  // squares and cubes
while (sqnc.count < 30 || sqcb.count < 3) {
    var sq = i * i
    var cb = Math.cbrt(sq).round
    if (cb*cb*cb != sq) {
        sqnc.add(sq)
    } else {
        sqcb.add(sq)
    }
    i = i + 1
}
System.print("The first 30 positive integers which are squares but not cubes are:")
System.print(sqnc.take(30).toList)
System.print("\nThe first 3 positive integers which are both squares and cubes are:")
System.print(sqcb.take(3).toList)
