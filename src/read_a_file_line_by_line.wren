// url: https://rosettacode.org/wiki/Read_a_file_line_by_line#Wren
// source: https://rosettacode.org/mw/index.php?title=Read_a_file_line_by_line&action=edit&section=132
// file: read_a_file_line_by_line
// name: Read a file line by line
// author: PureFox
// license: MIT

import "io" for File

var lines = [] // store lines read
File.open("input.txt") { |file|
    var offset = 0
    var line = ""
    while(true) {
        var b = file.readBytes(1, offset)
        offset = offset + 1
        if (b == "\n") {
            lines.add(line)
            line = "" // reset line variable
        } else if (b == "\r") { // Windows
            // wait for following "\n"
        } else if (b == "") { // end of stream
            return
        } else {
            line = line + b
        }
    }
}

System.print(lines.join("\n")) // print out lines
