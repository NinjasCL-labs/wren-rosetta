// url: https://rosettacode.org/wiki/Abstract_type#Wren
// source: https://rosettacode.org/mw/index.php?title=Abstract_type&action=edit&section=100
// file: abstract_type
// name: Abstract type
// author: PureFox
// license: MIT

import "/fmt" for Fmt

class Beast{
    kind {}
    name {}
    cry() {}
    print() { System.print("%(name), who's a %(kind), cries: %(Fmt.q(cry())).") }
}

class Dog is Beast {
    construct new(kind, name) {
        _kind = kind
        _name = name
    }
    kind { _kind }
    name { _name }
    cry() { "Woof" }
}

class Cat is Beast {
    construct new(kind, name) {
        _kind = kind
        _name = name
    }
    kind { _kind }
    name { _name }
    cry() { "Meow" }
}

var d = Dog.new("labrador", "Max")
var c = Cat.new("siamese", "Sammy")
d.print()
c.print()
