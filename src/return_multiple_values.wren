// url: https://rosettacode.org/wiki/Return_multiple_values#Wren
// source: https://rosettacode.org/mw/index.php?title=Return_multiple_values&action=edit&section=114
// file: return_multiple_values
// name: Return multiple values
// author: PureFox
// license: MIT

var splitName = Fn.new { |fullName| fullName.split(" ") }

var names = splitName.call("George Bernard Shaw")
System.print("First name: %(names[0]), middle name: %(names[1]) and surname: %(names[2]).")
