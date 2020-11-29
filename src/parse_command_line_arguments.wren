// url: https://rosettacode.org/wiki/Parse_command-line_arguments#Wren
// source: https://rosettacode.org/mw/index.php?title=Parse_command-line_arguments&action=edit&section=36
// file: parse_command_line_arguments
// name: Parse command-line arguments
// author: PureFox
// license: MIT

import "os" for Process

var args = Process.arguments
System.print("The arguments passed are: %(args)")
// parse last argument to a Range object
var sp = args[-1].split("-")
var start = Num.fromString(sp[0])
var end   = Num.fromString(sp[1])
var r = start..end
System.print("The final argument expressed as a Range object is %(r)")
