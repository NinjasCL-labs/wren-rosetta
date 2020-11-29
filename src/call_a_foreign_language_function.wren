// url: https://rosettacode.org/wiki/Call_a_foreign-language_function#Wren
// source: https://rosettacode.org/mw/index.php?title=Call_a_foreign-language_function&action=edit&section=90
// file: call_a_foreign_language_function
// name: Call a foreign-language function
// author: PureFox
// license: MIT

/* call_foreign_language_function.wren */

class C {
    foreign static strdup(s) 
}

var s = "Hello World!" 
System.print(C.strdup(s))
