// url: https://rosettacode.org/wiki/Special_variables#Wren
// source: https://rosettacode.org/mw/index.php?title=Special_variables&action=edit&section=74
// file: special_variables
// name: Special variables
// author: PureFox
// license: MIT

class Parent {
    construct new(name) {
        _name = name
    }

    name { _name }
}

class Child is Parent {
    construct new(name, parentName) {
        _name = name
        super(parentName)  // call parent's constructor
    }

    name { _name } // overrides Parent's name method

    printNames() {
        System.print("My name is %(this.name) and my parent's name is %(super.name).")
    }
}

var c = Child.new("John", "Fred")
c.printNames()
