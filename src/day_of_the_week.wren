// url: https://rosettacode.org/wiki/Day_of_the_week#Wren
// source: https://rosettacode.org/mw/index.php?title=Day_of_the_week&action=edit&section=157
// file: day_of_the_week
// name: Day of the week
// author: PureFox
// license: MIT

import "/date" for Date

System.print("Years between 2008 and 2121 when 25th December falls on Sunday:")
for (year in 2008..2121) {
    if (Date.new(year, 12, 25).dayOfWeek == 7) System.print(year)
}
