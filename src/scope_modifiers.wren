// url: https://rosettacode.org/wiki/Scope_modifiers#Wren
// source: https://rosettacode.org/mw/index.php?title=Scope_modifiers&action=edit&section=68
// file: scope_modifiers
// name: Scope modifiers
// author: PureFox
// license: MIT

class MyClass {
    construct new(a) {
        _a = a // creates an instance field _a automatically
    }
    a { _a } // allow public access to the field
}

var mc = MyClass.new(3)
System.print(mc.a)  // fine
System.print(mc._a) // can't access _a directly as its private to the class
