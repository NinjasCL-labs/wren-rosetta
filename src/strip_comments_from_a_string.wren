// url: https://rosettacode.org/wiki/Strip_comments_from_a_string#Wren
// source: https://rosettacode.org/mw/index.php?title=Strip_comments_from_a_string&action=edit&section=80
// file: strip_comments_from_a_string
// name: Strip comments from a string
// author: PureFox
// license: MIT

var markers = ["#", ";"]

var stripComments = Fn.new { |s|
   for (marker in markers) {
       var t = s.split(marker)
       if (t.count > 1) return t[0].trim()
   }
   return s.trim()
}

var strings = [
    " apples, pears # and bananas",
    " apples, pears ; and bananas",
    " apples, pears \t     "
]

for (s in strings) {
    var t = stripComments.call(s)
    System.print("'%(s)' -> '%(t)'")
}
