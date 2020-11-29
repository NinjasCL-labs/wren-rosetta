// url: https://rosettacode.org/wiki/Write_entire_file#Wren
// source: https://rosettacode.org/mw/index.php?title=Write_entire_file&action=edit&section=70
// file: write_entire_file
// name: Write entire file
// author: PureFox
// license: MIT

import "io" for File

// create a text file
File.create("hello.txt") { |file|
    file.writeBytes("hello")
}

// check it worked
System.print(File.read("hello.txt"))

// overwrite it by 'creating' the file again
File.create("hello.txt") {|file|
    file.writeBytes("goodbye")
}

// check it worked
System.print(File.read("hello.txt"))
