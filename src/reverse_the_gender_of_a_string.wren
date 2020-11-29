// url: https://rosettacode.org/wiki/Reverse_the_gender_of_a_string#Wren
// source: https://rosettacode.org/mw/index.php?title=Reverse_the_gender_of_a_string&action=edit&section=22
// file: reverse_the_gender_of_a_string
// name: Reverse the gender of a string
// author: PureFox
// license: MIT

import "/modules/str" for Char

var swaps = {
    "She": "He", "she": "he", "Her": "His", "her": "his", "hers": "his", "He": "She",
    "he": "she", "His": "Her", "his": "her", "him": "her"
}

var reverseGender = Fn.new { |sentence|
    var newWords = []
    for (word in sentence.split(" ")) {
        var s = swaps[word]
        if (s) {
            newWords.add(s)
        } else if (Char.isPunctuation(word[-1]) && (s = swaps[word[0..-2]])) {
            newWords.add(s + word[-1])
        } else {
            newWords.add(word)
        }
    }
    return newWords.join(" ")
}

var sentences = [
    "She was a soul stripper. She took his heart!",
    "He was a soul stripper. He took her heart!",
    "She wants what's hers, he wants her and she wants him!",
    "Her dog belongs to him but his dog is hers!"
]

for (sentence in sentences) System.print(reverseGender.call(sentence))
