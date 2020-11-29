// url: https://rosettacode.org/wiki/Check_that_file_exists#Wren
// source: https://rosettacode.org/mw/index.php?title=Check_that_file_exists&action=edit&section=133
// file: check_that_file_exists
// name: Check that file exists
// author: PureFox
// license: MIT

import "io" for Directory, File

for (name in ["input.txt", "`Abdu'l-Bahá.txt"]) {
    if (File.exists(name)) {
        System.print("%(name) file exists and has a size of %(File.size(name)) bytes.")
    } else {
        System.print("%(name) file does not exist.")
    }
}

var dir = "docs"
// if it exists get number of files it contains
if (Directory.exists(dir)) {
    var files = Directory.list(dir).count
    System.print("%(dir) directory exists and contains %(files) files.")
} else {
    System.print("%(dir) directory does not exist.")
}
