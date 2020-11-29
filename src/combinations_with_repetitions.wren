// url: https://rosettacode.org/wiki/Combinations_with_repetitions#Wren
// source: https://rosettacode.org/mw/index.php?title=Combinations_with_repetitions&action=edit&section=82
// file: combinations_with_repetitions
// name: Combinations with repetitions
// author: PureFox
// license: MIT

var combrep // recursive
combrep = Fn.new { |n, lst|
    if (n == 0 ) return [[]]
    if (lst.count == 0) return []
    var r = combrep.call(n, lst[1..-1])
    for (x in combrep.call(n-1, lst)) {
        var y = x.toList
        y.add(lst[0])
        r.add(y)
    }
    return r
}

System.print(combrep.call(2, ["iced", "jam", "plain"]))
System.print(combrep.call(3, (1..10).toList).count)
