// url: https://rosettacode.org/wiki/Read_a_specific_line_from_a_file#Wren
// source: https://rosettacode.org/mw/index.php?title=Read_a_specific_line_from_a_file&action=edit&section=86
// file: read_a_specific_line_from_a_file
// name: Read a specific line from a file
// author: PureFox
// license: MIT

import "io" for File

var lines = File.read("input.txt").replace("\r", "").split("\n")
if (lines.count < 7) {
    System.print("There are only %(lines.count) lines in the file")
} else {
    var line7 = lines[6].trim()
    if (line7 == "") {
        System.print("The seventh line is empty")
    } else {
        System.print("The seventh line is : %(line7)")
    }
}

/* Note that 'input.txt' contains the eight lines:
Line 1
Line 2
Line 3
Line 4
Line 5
Line 6
Line 7
Line 8
*/
