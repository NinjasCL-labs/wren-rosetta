// url: https://rosettacode.org/wiki/Loops/Nested#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/Nested&action=edit&section=119
// file: loops_nested
// name: Loops/Nested
// author: PureFox
// license: MIT

import "random" for Random
import "/modules/fmt" for Fmt

var rand = Random.new()

var a = List.filled(20, null)
for (i in 0..19) {
    a[i] = List.filled(20, 0)
    for (j in 0..19) a[i][j] = rand.int(1, 21)
}

var found = false
for (i in 0..19) {
    for (j in 0..19) {
        System.write(Fmt.d(4, a[i][j]))
        if (a[i][j] == 20) {
            found = true
            break
        }
    }
    System.print()
    if (found) break
}
