// url: https://rosettacode.org/wiki/Start_from_a_main_routine#Wren
// source: https://rosettacode.org/mw/index.php?title=Start_from_a_main_routine&action=edit&section=42
// file: start_from_a_main_routine
// name: Start from a main routine
// author: PureFox
// license: MIT

var main = Fn.new {
    System.print("Hello from the main function.")
}

main.call()
