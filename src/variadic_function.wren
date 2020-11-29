// url: https://rosettacode.org/wiki/Variadic_function#Wren
// source: https://rosettacode.org/mw/index.php?title=Variadic_function&action=edit&section=109
// file: variadic_function
// name: Variadic function
// author: PureFox
// license: MIT

var printArgs = Fn.new { |args| args.each { |arg| System.print(arg) } }

printArgs.call(["Mary", "had", "3", "little", "lambs"])
