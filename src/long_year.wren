// url: https://rosettacode.org/wiki/Long_year#Wren
// source: https://rosettacode.org/mw/index.php?title=Long_year&action=edit&section=50
// file: long_year
// name: Long year
// author: PureFox
// license: MIT

import "/modules/date" for Date

var centuries = ["20th", "21st", "22nd"]
var starts = [1900, 2000, 2100]
for (i in 0...centuries.count) {
    var longYears = []
    System.print("\nLong years in the %(centuries[i]) century:")
    for (j in starts[i]...starts[i]+100) {
        var t = Date.new(j, 12, 28)
        if (t.weekOfYear[1] == 53) {
            longYears.add(j)
        }
    }
    System.print(longYears)
}
