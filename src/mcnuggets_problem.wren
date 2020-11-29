// url: https://rosettacode.org/wiki/McNuggets_problem#Wren
// source: https://rosettacode.org/mw/index.php?title=McNuggets_problem&action=edit&section=44
// file: mcnuggets_problem
// name: McNuggets problem
// author: PureFox
// license: MIT

var mcnugget = Fn.new { |limit|
    var sv = List.filled(limit+1, false)
    var s = 0
    while (s <= limit) {
        var n = s
        while (n <= limit) {
            var t = n
            while (t <= limit) {
                sv[t] = true
                t = t + 20
            }
            n = n + 9
        }
        s = s + 6
    }
    for (i in limit..0) {
        if (!sv[i]) {
            System.print("Maximum non-McNuggets number is %(i)")
            return
        }
    }
}

mcnugget.call(100)
