// url: https://rosettacode.org/wiki/Comma_quibbling#Wren
// source: https://rosettacode.org/mw/index.php?title=Comma_quibbling&action=edit&section=113
// file: comma_quibbling
// name: Comma quibbling
// author: PureFox
// license: MIT

var quibbling = Fn.new { |w|
    var c = w.count
    if (c == 0) return "{}"
    if (c == 1) return "{%(w[0])}"
    if (c == 2) return "{%(w[0]) and %(w[1])}"
    return "{%(w[0..-2].join(", ")) and %(w[-1])}"
}

var words = [ [], ["ABC"], ["ABC", "DEF"], ["ABC", "DEF", "G", "H"] ]
for (w in words) System.print(quibbling.call(w))
