// url: https://rosettacode.org/wiki/Monads/List_monad#Wren
// source: https://rosettacode.org/mw/index.php?title=Monads/List_monad&action=edit&section=20
// file: monads_list_monad
// name: Monads/List monad
// author: PureFox
// license: MIT

class Mlist {
    construct new(value) { _value = value }

    value { _value }

    bind(f) { f.call(_value) }

    static unit(lst) { Mlist.new(lst) }
}

var increment = Fn.new { |lst|
    var lst2 = lst.map { |v| v + 1 }.toList
    return Mlist.unit(lst2)
}

var double = Fn.new { |lst|
    var lst2 = lst.map { |v| v * 2 }.toList
    return Mlist.unit(lst2)
}

var ml1 = Mlist.unit([3, 4, 5])
var ml2 = ml1.bind(increment).bind(double)
System.print("%(ml1.value) -> %(ml2.value)")
