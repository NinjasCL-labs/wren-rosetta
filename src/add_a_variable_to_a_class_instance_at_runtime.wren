// url: https://rosettacode.org/wiki/Add_a_variable_to_a_class_instance_at_runtime#Wren
// source: https://rosettacode.org/mw/index.php?title=Add_a_variable_to_a_class_instance_at_runtime&action=edit&section=57
// file: add_a_variable_to_a_class_instance_at_runtime
// name: Add a variable to a class instance at runtime
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout

class Birds {
    construct new(userFields) {
        _userFields = userFields
    }
    userFields { _userFields }
}

var userFields = {}
System.print("Enter three fields to add to the Birds class:")
for (i in 0..2) {
    System.write("\n  name : ")
    Stdout.flush()
    var name = Stdin.readLine()
    System.write("  value: ")
    Stdout.flush()
    var value = Num.fromString(Stdin.readLine())
    userFields[name] = value
}

var birds = Birds.new(userFields)

System.print("\nYour fields are:\n")
for (kv in birds.userFields) {
    System.print("  %(kv.key) = %(kv.value)")
}
