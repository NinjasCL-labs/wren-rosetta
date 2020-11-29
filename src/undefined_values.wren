// url: https://rosettacode.org/wiki/Undefined_values#Wren
// source: https://rosettacode.org/mw/index.php?title=Undefined_values&action=edit&section=65
// file: undefined_values
// name: Undefined values
// author: PureFox
// license: MIT

var f = Fn.new {
    System.print("'f' called.") // note no return value
}

var res = f.call()
System.print("The value returned by 'f' is %(res).")

var m = {} // empty map
System.print("m[1] is %(m[1]).")

var u  // declared but not assigned a value
System.print("u is %(u).")

var v = null // explicitly assigned null
if (!v) System.print("v is %(v).")
