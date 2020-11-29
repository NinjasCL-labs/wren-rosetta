// url: https://rosettacode.org/wiki/Program_name#Wren
// source: https://rosettacode.org/mw/index.php?title=Program_name&action=edit&section=107
// file: program_name
// name: Program name
// author: PureFox
// license: MIT

import "os" for Process

System.print("My name is %(Process.allArguments[1])")
