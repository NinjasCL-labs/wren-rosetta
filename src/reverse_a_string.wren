// url: https://rosettacode.org/wiki/Reverse_a_string#Wren
// source: https://rosettacode.org/mw/index.php?title=Reverse_a_string&action=edit&section=254
// file: reverse_a_string
// name: Reverse a string
// author: PureFox
// license: MIT

import "/modules/str" for Str

for (word in ["asdf", "josé", "møøse", "was it a car or a cat I saw", "😀🚂🦊"]) {
    System.print(Str.reverse(word))
}
