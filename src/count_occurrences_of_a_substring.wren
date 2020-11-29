// url: https://rosettacode.org/wiki/Count_occurrences_of_a_substring#Wren
// source: https://rosettacode.org/mw/index.php?title=Count_occurrences_of_a_substring&action=edit&section=120
// file: count_occurrences_of_a_substring
// name: Count occurrences of a substring
// author: PureFox
// license: MIT

import "/pattern" for Pattern
import "/fmt" for Fmt

var countSubstring = Fn.new { |str, sub|
    var p = Pattern.new(sub)
    return p.findAll(str).count
}

var tests = [
    ["the three truths", "th"],
    ["ababababab", "abab"],
    ["abaabba*bbaba*bbab", "a*b"],
    ["aaaaaaaaaaaaaa", "aa"],
    ["aaaaaaaaaaaaaa", "b"],
]

for (test in tests) {
    var count = countSubstring.call(test[0], test[1])
    Fmt.print("$6s occurs $d times in $q.", Fmt.q(test[1]), count, test[0])
}
