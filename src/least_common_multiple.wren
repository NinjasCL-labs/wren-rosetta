// url: https://rosettacode.org/wiki/Least_common_multiple#Wren
// source: https://rosettacode.org/mw/index.php?title=Least_common_multiple&action=edit&section=142
// file: least_common_multiple
// name: Least common multiple
// author: PureFox
// license: MIT

var gcd = Fn.new { |x, y|
    while (y != 0) {
        var t = y
        y = x % y
        x = t
    }
    return x
}

var lcm = Fn.new { |x, y| (x*y).abs / gcd.call(x, y) }

var xys = [[12, 18], [-6, 14], [35, 0]]
for (xy in xys) {
    System.print("lcm(%(xy[0]), %(xy[1]))\t%("\b"*5) = %(lcm.call(xy[0], xy[1]))")
}
