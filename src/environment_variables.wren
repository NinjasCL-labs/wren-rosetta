// url: https://rosettacode.org/wiki/Environment_variables#Wren
// source: https://rosettacode.org/mw/index.php?title=Environment_variables&action=edit&section=116
// file: environment_variables
// name: Environment variables
// author: PureFox
// license: MIT

/* environment_variables.wren */
class Environ {
    foreign static variable(name)
}

System.print(Environ.variable("SHELL"))
