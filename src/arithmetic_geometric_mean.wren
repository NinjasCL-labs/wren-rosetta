// url: https://rosettacode.org/wiki/Arithmetic-geometric_mean#Wren
// source: https://rosettacode.org/mw/index.php?title=Arithmetic-geometric_mean&action=edit&section=116
// file: arithmetic_geometric_mean
// name: Arithmetic-geometric mean
// author: PureFox
// license: MIT

var eps = 1e-14

var agm = Fn.new { |a, g|
    while ((a-g).abs > a.abs * eps) {
        var t = a
        a = (a+g)/2
        g = (t*g).sqrt
    }
    return a
}

System.print(agm.call(1, 1/2.sqrt))
