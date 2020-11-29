// url: https://rosettacode.org/wiki/Send_an_unknown_method_call#Wren
// source: https://rosettacode.org/mw/index.php?title=Send_an_unknown_method_call&action=edit&section=44
// file: send_an_unknown_method_call
// name: Send an unknown method call
// author: PureFox
// license: MIT

import "meta" for Meta
 
class Test {
    construct new() {}
 
    foo() { System.print("Foo called.") }
 
    bar() { System.print("Bar called.") }
}

var test = Test.new()
for (method in ["foo", "bar"]) {
    Meta.eval("test.%(method)()")
}
