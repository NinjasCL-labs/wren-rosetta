// url: https://rosettacode.org/wiki/Split_a_character_string_based_on_change_of_character#Wren
// source: https://rosettacode.org/mw/index.php?title=Split_a_character_string_based_on_change_of_character&action=edit&section=76
// file: split_a_character_string_based_on_change_of_character
// name: Split a character string based on change of character
// author: PureFox
// license: MIT

var split = Fn.new { |s|
    if (s.count == 0) return ""
    var res = []
    var last = s[0]
    var curr = last
    for (c in s.skip(1)) {
        if (c == last) {
            curr = curr + c
        } else {
            res.add(curr)
            curr = c
        }
        last = c
    }
    res.add(curr)
    return res.join(", ")
}

var s = "gHHH5YY++///\\" 
System.print(split.call(s))
