// url: https://rosettacode.org/wiki/Palindrome_detection#Wren
// source: https://rosettacode.org/mw/index.php?title=Palindrome_detection&action=edit&section=176
// file: palindrome_detection
// name: Palindrome detection
// author: PureFox
// license: MIT

var isPal = Fn.new { |word| word == ((word.count > 0) ? word[-1..0] : "") }   

System.print("Are the following palindromes?")
for (word in ["rotor", "rosetta", "step on no pets", "été", "wren", "🦊😀🦊"]) {
    System.print("  %(word) => %(isPal.call(word))")
}
