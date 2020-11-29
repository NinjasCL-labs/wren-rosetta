// url: https://rosettacode.org/wiki/Letter_frequency#Wren
// source: https://rosettacode.org/mw/index.php?title=Letter_frequency&action=edit&section=119
// file: letter_frequency
// name: Letter frequency
// author: PureFox
// license: MIT

import "io" for File
import "/modules/fmt" for Fmt

var text = File.read("mit10000.txt")
var freqs = List.filled(26, 0)
for (c in text.codePoints) {
    if (c >= 97 && c <= 122) {
        freqs[c-97] = freqs[c-97] + 1
    }
}
var totalFreq = freqs.reduce { |sum, f| sum + f }
System.print("Frequencies of letters in mit10000.txt:")
System.print("\n    freq     \%")
System.print("----------------")

for (i in 0..25) {
    Fmt.print("$c  $5d  $6.2f", i+97, freqs[i], freqs[i]/totalFreq * 100)
}
System.print("   -----  ------")
Fmt.print("   $5d  100.00", totalFreq)

Fmt.print("\nTotal characters in text file = $d minus 10000 \\n's = $d", text.count, totalFreq)
