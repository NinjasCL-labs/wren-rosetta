// url: https://rosettacode.org/wiki/Semiprime#Wren
// source: https://rosettacode.org/mw/index.php?title=Semiprime&action=edit&section=63
// file: semiprime
// name: Semiprime
// author: PureFox
// license: MIT

var semiprime = Fn.new { |n|
    if (n < 3) return false
    var nf = 0
    for (i in 2..n) {
        while (n%i == 0) {
            if (nf == 2) return false
            nf = nf + 1
            n = (n/i).floor
        }
    }
    return nf == 2
}

for (v in 1675..1680) {
    System.print("%(v) -> %(semiprime.call(v) ? "is" : "is not") semi-prime")
}
