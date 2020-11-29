// url: https://rosettacode.org/wiki/Dynamic_variable_names#Wren
// source: https://rosettacode.org/mw/index.php?title=Dynamic_variable_names&action=edit&section=75
// file: dynamic_variable_names
// name: Dynamic variable names
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout

var userVars = {}
System.print("Enter three variables:")
for (i in 0..2) {
    System.write("\n  name : ")
    Stdout.flush()
    var name = Stdin.readLine()
    System.write("  value: ")
    Stdout.flush()
    var value = Num.fromString(Stdin.readLine())
    userVars[name] = value
}

System.print("\nYour variables are:\n")
for (kv in userVars) {
    System.print("  %(kv.key) = %(kv.value)")
}
