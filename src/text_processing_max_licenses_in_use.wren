// url: https://rosettacode.org/wiki/Text_processing/Max_licenses_in_use#Wren
// source: https://rosettacode.org/mw/index.php?title=Text_processing/Max_licenses_in_use&action=edit&section=72
// file: text_processing_max_licenses_in_use
// name: Text processing/Max licenses in use
// author: PureFox
// license: MIT

import "io" for File

var lines = File.read("mlijobs.txt").replace("\r", "").split("\n")
var out = 0
var max = 0
var times = []
for (line in lines) {
    if (line.startsWith("License OUT")) {
        out = out + 1
        if (out >= max) {
            var sp = line.split(" ")
            if (out > max) {
                max = out
                times.clear()
            }
            times.add(sp[3])
        }
    } else if (line.startsWith("License IN")) {
        out = out - 1
    }
}

System.print("The maximum licenses that were out = %(max) at time(s):")
System.print("  " + times.join("\n  "))
