// url: https://rosettacode.org/wiki/Last_Friday_of_each_month#Wren
// source: https://rosettacode.org/mw/index.php?title=Last_Friday_of_each_month&action=edit&section=87
// file: last_friday_of_each_month
// name: Last Friday of each month
// author: PureFox
// license: MIT

import "os" for Process
import "/modules/date" for Date

var args = Process.arguments
if (args.count != 1) {
    Fiber.abort("Please pass just the year to be processed.")
}

var year = Num.fromString(args[0])
System.print("The dates of the last Fridays in the month for %(year) are:")
Date.default = Date.isoDate
for (m in 1..12) {
    var d = Date.monthLength(year, m)
    var dt = Date.new(year, m, d)
    var wd = dt.dayOfWeek
    if (wd == 5) {
        System.print(dt)
    } else if (wd > 5) {
        System.print(dt.addDays(-wd + 5))
    } else {
        System.print(dt.addDays(-wd - 2))
    }
}
