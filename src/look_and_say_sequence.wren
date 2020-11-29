// url: https://rosettacode.org/wiki/Look-and-say_sequence#Wren
// source: https://rosettacode.org/mw/index.php?title=Look-and-say_sequence&action=edit&section=111
// file: look_and_say_sequence
// name: Look-and-say sequence
// author: PureFox
// license: MIT

var lookAndSay = Fn.new { |s|
    var res = ""
    var digit = s[0]
    var count = 1
    for (i in 1...s.count) {
        if (s[i] == digit) {
            count = count + 1
        } else {
            res = res + "%(count)%(digit)"
            digit = s[i]
            count = 1
        }
    }
    return res + "%(count)%(digit)"
}

var las = "1"
for (i in 1..15) {
    System.print(las)
    las = lookAndSay.call(las)
}
