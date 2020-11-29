// url: https://rosettacode.org/wiki/CSV_data_manipulation#Wren
// source: https://rosettacode.org/mw/index.php?title=CSV_data_manipulation&action=edit&section=99
// file: csv_data_manipulation
// name: CSV data manipulation
// author: PureFox
// license: MIT

import "io" for File

var lines = File.read("rc.csv").split("\n").map { |w| w.trim() }.toList

var file = File.create("rc.csv") // overwrite existing file
file.writeBytes(lines[0] + ",SUM\n")
for (line in lines.skip(1)) {
    if (line != "") { 
        var nums = line.split(",").map { |s| Num.fromString(s) }
        var sum = nums.reduce { |acc, n| acc + n }
        file.writeBytes(line + ",%(sum)\n")
    }
}
file.close()
