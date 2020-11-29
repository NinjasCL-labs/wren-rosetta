// url: https://rosettacode.org/wiki/Create_a_file#Wren
// source: https://rosettacode.org/mw/index.php?title=Create_a_file&action=edit&section=134
// file: create_a_file
// name: Create a file
// author: PureFox
// license: MIT

import "io" for File

// file is closed automatically after creation
File.create("output.txt") {}

// check size
System.print("%(File.size("output.txt")) bytes")
