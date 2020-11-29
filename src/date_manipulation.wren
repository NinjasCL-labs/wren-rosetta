// url: https://rosettacode.org/wiki/Date_manipulation#Wren
// source: https://rosettacode.org/mw/index.php?title=Date_manipulation&action=edit&section=80
// file: date_manipulation
// name: Date manipulation
// author: PureFox
// license: MIT

import "/date" for Date

var fmt = "mmmm| |d| |yyyy| |H|:|MM|am| |zz|"
var d = Date.parse("March 7 2009 7:30pm EST", fmt)
Date.default = fmt
System.print("Original date/time : %(d)")
d = d.addHours(12)
System.print("12 hours later     : %(d)")
// Adjust to MST say
d = d.adjustTime("MST")
System.print("Adjusted to MST    : %(d)")
