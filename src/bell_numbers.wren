// url: https://rosettacode.org/wiki/Bell_numbers#Wren
// source: https://rosettacode.org/mw/index.php?title=Bell_numbers&action=edit&section=49
// file: bell_numbers
// name: Bell numbers
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var bellTriangle = Fn.new { |n|
    var tri = List.filled(n, [])
    for (i in 0...n) tri[i] = List.filled(i, 0)
    tri[1][0] = 1
    for (i in 2...n) {
        tri[i][0] = tri[i-1][i-2]
        for (j in 1...i) {
            tri[i][j] = tri[i][j-1] + tri[i-1][j-1]
        }
    }
    return tri
}

var bt = bellTriangle.call(16)
System.print("First fifteen Bell numbers:")
for (i in 1..15) System.print("%(Fmt.d(2, i)): %(bt[i][0])")
System.print("\nThe first ten rows of Bell's triangle:")
for (i in 1..10) System.print(bt[i])
