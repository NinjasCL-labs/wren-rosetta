// url: https://rosettacode.org/wiki/File_input/output#Wren
// source: https://rosettacode.org/mw/index.php?title=File_input/output&action=edit&section=157
// file: file_input_output
// name: File input/output
// author: PureFox
// license: MIT

import "io" for File

var contents = File.read("input.txt")
File.create("output.txt") {|file|
    file.writeBytes(contents)
}
