// url: https://rosettacode.org/wiki/Create_a_file_on_magnetic_tape#Wren
// source: https://rosettacode.org/mw/index.php?title=Create_a_file_on_magnetic_tape&action=edit&section=37
// file: create_a_file_on_magnetic_tape
// name: Create a file on magnetic tape
// author: PureFox
// license: MIT

import "os" for Platform
import "io" for File

var fileName = (Platform.isWindows) ? "TAPE.FILE" : "/dev/tape"
File.create(fileName) { |file|
    file.writeBytes("Hello World!\n")
}
