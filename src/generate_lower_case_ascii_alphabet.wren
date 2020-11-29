// url: https://rosettacode.org/wiki/Generate_lower_case_ASCII_alphabet#Wren
// source: https://rosettacode.org/mw/index.php?title=Generate_lower_case_ASCII_alphabet&action=edit&section=142
// file: generate_lower_case_ascii_alphabet
// name: Generate lower case ASCII alphabet
// author: PureFox
// license: MIT

var alpha = []
for (c in 97..122) alpha.add(String.fromByte(c))
System.print(alpha.join())
