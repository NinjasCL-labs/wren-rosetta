// url: https://rosettacode.org/wiki/Sort_an_array_of_composite_structures#Wren
// source: https://rosettacode.org/mw/index.php?title=Sort_an_array_of_composite_structures&action=edit&section=85
// file: sort_an_array_of_composite_structures
// name: Sort an array of composite structures
// author: PureFox
// license: MIT

import "/modules/sort" for Cmp, Sort, Comparable

class Pair is Comparable {
    construct new (name, value) {
        _name = name
        _value = value
    }

    name  { _name }
    value { _value }

    compare(other) { Cmp.string.call(_name, other.name) }

    toString { "{%(_name), %(_value)}" }
}

var pairs = [
    Pair.new("grass", "green"),
    Pair.new("snow", "white"),
    Pair.new("sky", "blue"),
    Pair.new("cherry", "red")
]

System.print("Before sorting:")
System.print("  " + pairs.join("\n  "))
Sort.insertion(pairs)
System.print("\nAfter sorting:")
System.print("  " + pairs.join("\n  "))
