// url: https://rosettacode.org/wiki/Quoting_constructs#Wren
// source: https://rosettacode.org/mw/index.php?title=Quoting_constructs&action=edit&section=7
// file: quoting_constructs
// name: Quoting constructs
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

// simple string literal
System.print("Hello world!")

// string literal including an escape sequence
System.print("Hello tabbed\tworld!")

// interpolated string literal
var w = "world"
System.print("Hello interpolated %(w)!")

// 'printf' style
Fmt.print("Hello 'printf' style $s!", w)

// more complicated interpolated string literal
var h = "Hello"
System.print("%(Fmt.s(-8, h)) more complicated interpolated %(w.map { |c| "%(c + "\%")" }.join())!")

// more complicated 'printf' style
Fmt.print("$-8s more complicated 'printf' style $s\%!", h, w.join("\%"))
