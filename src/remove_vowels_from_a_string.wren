// url: https://rosettacode.org/wiki/Remove_vowels_from_a_string#Wren
// source: https://rosettacode.org/mw/index.php?title=Remove_vowels_from_a_string&action=edit&section=34
// file: remove_vowels_from_a_string
// name: Remove vowels from a string
// author: PureFox
// license: MIT

var removeVowels = Fn.new { |s| s.where { |c| !"aeiouAEIOU".contains(c) }.join() }

var s = "Wren Programming Language"
System.print("Input  : %(s)")
System.print("Output : %(removeVowels.call(s))")
