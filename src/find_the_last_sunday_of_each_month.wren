// url: https://rosettacode.org/wiki/Find_the_last_Sunday_of_each_month#Wren
// source: https://rosettacode.org/mw/index.php?title=Find_the_last_Sunday_of_each_month&action=edit&section=80
// file: find_the_last_sunday_of_each_month
// name: Find the last Sunday of each month
// author: PureFox
// license: MIT

import "os" for Process
import "/modules/date" for Date

var args = Process.arguments
if (args.count != 1) {
    Fiber.abort("Please pass just the year to be processed.")
}

var year = Num.fromString(args[0])
System.print("The dates of the last Sundays in the month for %(year) are:")
Date.default = Date.isoDate
for (m in 1..12) {
    var d = Date.monthLength(year, m)
    var dt = Date.new(year, m, d)
    var wd = dt.dayOfWeek
    if (wd == 7) {
        System.print(dt)
    } else {
        System.print(dt.addDays(-wd))
    }
}
