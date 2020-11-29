// url: https://rosettacode.org/wiki/Strip_a_set_of_characters_from_a_string#Wren
// source: https://rosettacode.org/mw/index.php?title=Strip_a_set_of_characters_from_a_string&action=edit&section=118
// file: strip_a_set_of_characters_from_a_string
// name: Strip a set of characters from a string
// author: PureFox
// license: MIT

var stripChars = Fn.new { |s, t|
    return s.map { |c|
        return (t.indexOf(c) == -1) ? c : ""
    }.join()
}

System.print(stripChars.call("She was a soul stripper. She took my heart!", "aei"))
