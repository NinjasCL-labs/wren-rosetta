// url: https://rosettacode.org/wiki/Jewels_and_stones#Wren
// source: https://rosettacode.org/mw/index.php?title=Jewels_and_stones&action=edit&section=58
// file: jewels_and_stones
// name: Jewels and stones
// author: PureFox
// license: MIT

var countJewels = Fn.new { |s, j| s.count { |c| j.contains(c) } }

System.print(countJewels.call("aAAbbbb", "aA"))
System.print(countJewels.call("ZZ", "z"))
