// url: https://rosettacode.org/wiki/Delete_a_file#Wren
// source: https://rosettacode.org/mw/index.php?title=Delete_a_file&action=edit&section=118
// file: delete_a_file
// name: Delete a file
// author: PureFox
// license: MIT

import "io" for File

File.delete("input.txt")

// check it worked
System.print(File.exists("input.txt"))
