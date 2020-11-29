// url: https://rosettacode.org/wiki/Days_between_dates#Wren
// source: https://rosettacode.org/mw/index.php?title=Days_between_dates&action=edit&section=37
// file: days_between_dates
// name: Days between dates
// author: PureFox
// license: MIT

import "/date" for Date

var datePairs = [
    ["1995-11-21", "1995-11-21"],
    ["2019-01-01", "2019-01-02"],
    ["2019-01-02", "2019-01-01"],
    ["2019-01-01", "2019-03-01"],
    ["2020-01-01", "2020-03-01"],
    ["1902-01-01", "1968-12-25"],
    ["2090-01-01", "2098-12-25"],
    ["1902-01-01", "2098-12-25"],
    ["1970-01-01", "2019-10-18"],
    ["2019-03-29", "2029-03-29"],
    ["2020-02-29", "2020-03-01"]
]
for (dates in datePairs) {
    var date1 = Date.parse(dates[0])
    var date2 = Date.parse(dates[1])
    var days = (date2 - date1).days
    Date.default = Date.isoDate
    System.print("Days between %(date1) and %(date2) = %(days)")
}
