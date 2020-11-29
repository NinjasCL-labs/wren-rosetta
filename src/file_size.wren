// url: https://rosettacode.org/wiki/File_size#Wren
// source: https://rosettacode.org/mw/index.php?title=File_size&action=edit&section=121
// file: file_size
// name: File size
// author: PureFox
// license: MIT

import "io" for File

var name = "input.txt"
System.print("'%(name)' has a a size of %(File.size(name)) bytes")
