// url: https://rosettacode.org/wiki/Ordered_words#Wren
// source: https://rosettacode.org/mw/index.php?title=Ordered_words&action=edit&section=103
// file: ordered_words
// name: Ordered words
// author: PureFox
// license: MIT

import "io" for File
import "/modules/sort" for Sort

var words = File.read("unixdict.txt").split("\n")
var longestLen = 0
var longest = []
for (word in words) {
    if (word.count > longestLen) {
        if (Sort.isSorted(word.toList)) {
            longestLen = word.count
            longest.clear()
            longest.add(word)
        }
    } else if (word.count == longestLen) {
        if (Sort.isSorted(word.toList)) longest.add(word)
    }
}
System.print("The %(longest.count) ordered words with the longest length (%(longestLen)) are:")
System.print(longest.join("\n"))
