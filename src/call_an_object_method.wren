// url: https://rosettacode.org/wiki/Call_an_object_method#Wren
// source: https://rosettacode.org/mw/index.php?title=Call_an_object_method&action=edit&section=78
// file: call_an_object_method
// name: Call an object method
// author: PureFox
// license: MIT

class MyClass {
    construct new() {}
    method() { System.print("instance method called") }
    static method() { System.print("static method called") }
}

var mc = MyClass.new()
mc.method()
MyClass.method()
