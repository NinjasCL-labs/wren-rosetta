// url: https://rosettacode.org/wiki/Generic_swap#Wren
// source: https://rosettacode.org/mw/index.php?title=Generic_swap&action=edit&section=174
// file: generic_swap
// name: Generic swap
// author: PureFox
// license: MIT

var swap = Fn.new { |l|
    var t = l[0]
    l[0] = l[1]
    l[1] = t
}

var a = 6
var b = 3
var c = [a, b]
swap.call(c) // pass a list instead of individual variables
a = c[0] // unpack
b = c[1] // ditto
System.print("a is now %(a)")
System.print("b is now %(b)")
System.print()

// all user defined classes are reference types
class Box {
    construct new(v) { _v = v }
    v { _v }
    v=(value) { _v = value }
}

// by passing boxed arguments we can mutate them
var boxSwap = Fn.new { |a, b|
    var t = a.v
    a.v = b.v
    b.v = t
}

var d = Box.new(4)
var e = Box.new(8)
boxSwap.call(d, e)
d = d.v // unbox
e = e.v // ditto
System.print("d is now %(d)")
System.print("e is now %(e)")
