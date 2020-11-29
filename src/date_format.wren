// url: https://rosettacode.org/wiki/Date_format#Wren
// source: https://rosettacode.org/mw/index.php?title=Date_format&action=edit&section=135
// file: date_format
// name: Date format
// author: PureFox
// license: MIT

import "os" for Process
import "/date" for Date

var args = Process.arguments
if (args.count != 1) {
    Fiber.abort("Please pass just the current date in yyyy-mm-dd format.")
}
var current = Date.parse(args[0])
System.print(current.format(Date.isoDate))
System.print(current.format("dddd|, |mmmm| |d|, |yyyy"))
