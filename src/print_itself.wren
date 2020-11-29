// url: https://rosettacode.org/wiki/Print_itself#Wren
// source: https://rosettacode.org/mw/index.php?title=Print_itself&action=edit&section=12
// file: print_itself
// name: Print itself
// author: PureFox
// license: MIT

import "os" for Process
import "io" for File

var args = Process.allArguments
System.write(File.read(args[1]))
