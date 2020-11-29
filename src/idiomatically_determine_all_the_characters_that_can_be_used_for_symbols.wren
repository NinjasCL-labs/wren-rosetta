// url: https://rosettacode.org/wiki/Idiomatically_determine_all_the_characters_that_can_be_used_for_symbols#Wren
// source: https://rosettacode.org/mw/index.php?title=Idiomatically_determine_all_the_characters_that_can_be_used_for_symbols&action=edit&section=26
// file: idiomatically_determine_all_the_characters_that_can_be_used_for_symbols
// name: Idiomatically determine all the characters that can be used for symbols
// author: PureFox
// license: MIT

for (i in 97..122) System.write(String.fromByte(i))
for (i in 65..90)  System.write(String.fromByte(i))
System.print("_")
