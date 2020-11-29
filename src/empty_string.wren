// url: https://rosettacode.org/wiki/Empty_string#Wren
// source: https://rosettacode.org/mw/index.php?title=Empty_string&action=edit&section=158
// file: empty_string
// name: Empty string
// author: PureFox
// license: MIT

var isEmpty = Fn.new { |s| s == "" }

var s = ""
var t = "0"
System.print("'s' is empty? %(isEmpty.call(s))")
System.print("'t' is empty? %(isEmpty.call(t))")
