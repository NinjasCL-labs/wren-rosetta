// url: https://rosettacode.org/wiki/Read_a_file_character_by_character/UTF8#Wren
// source: https://rosettacode.org/mw/index.php?title=Read_a_file_character_by_character/UTF8&action=edit&section=35
// file: read_a_file_character_by_character_utf8
// name: Read a file character by character/UTF8
// author: PureFox
// license: MIT

import "io" for File

File.open("input.txt") { |file|
    var offset = 0
    var char = "" // stores each byte read till we have a complete UTF encoded character
    while(true) {
        var b = file.readBytes(1, offset)
        if (b == "") return // end of stream
        char = char + b
        if (char.codePoints[0] >= 0) {  // a UTF encoded character is complete
            System.write(char)          // print it
            char = ""                   // reset store
        }
        offset = offset + 1
    }
}
