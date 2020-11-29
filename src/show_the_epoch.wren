// url: https://rosettacode.org/wiki/Show_the_epoch#Wren
// source: https://rosettacode.org/mw/index.php?title=Show_the_epoch&action=edit&section=81
// file: show_the_epoch
// name: Show the epoch
// author: PureFox
// license: MIT

import "/modules/date" for Date

Date.default = Date.isoFull
var dt = Date.fromNumber(0)
System.print(dt)

var dt2 = Date.unixEpoch
System.print(dt2)
