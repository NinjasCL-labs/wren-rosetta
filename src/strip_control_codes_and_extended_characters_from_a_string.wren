// url: https://rosettacode.org/wiki/Strip_control_codes_and_extended_characters_from_a_string#Wren
// source: https://rosettacode.org/mw/index.php?title=Strip_control_codes_and_extended_characters_from_a_string&action=edit&section=68
// file: strip_control_codes_and_extended_characters_from_a_string
// name: Strip control codes and extended characters from a string
// author: PureFox
// license: MIT

import "/pattern" for Pattern

var s = "\t\n\r\x01\0\fabc\v\v\b\a\x1f\x7f🌇Páez😃É"

// strip control codes only
var p = Pattern.new("+1/c")
var r = p.replaceAll(s, "")
System.print("%(r) -> length %(r.count)")

// strip extended characters as well
p = Pattern.new("[+1/c|+1/R]")
r = p.replaceAll(s, "")
System.print("%(r) -> length %(r.count)")

