// url: https://rosettacode.org/wiki/Strip_whitespace_from_a_string/Top_and_tail#Wren
// source: https://rosettacode.org/mw/index.php?title=Strip_whitespace_from_a_string/Top_and_tail&action=edit&section=111
// file: strip_whitespace_from_a_string_top_and_tail
// name: Strip whitespace from a string/Top and tail
// author: PureFox
// license: MIT

var a = " \t\r\nString with leading whitespace removed"
var b = "String with trailing whitespace removed \t\r\n"
var c = " \t\r\nString with both leading and trailing whitespace removed \t\r\n"
var d = " \t\r\n\f\vString with leading whitespace, form feed and verical tab characters removed"     
System.print("'%(a.trimStart())'")
System.print("'%(b.trimEnd())'")
System.print("'%(c.trim())'")
System.print("'%(d.trimStart(" \t\r\n\f\v"))'") // similar overloads of trimEnd and trim exist
