// url: https://rosettacode.org/wiki/Keyboard_input/Obtain_a_Y_or_N_response#Wren
// source: https://rosettacode.org/mw/index.php?title=Keyboard_input/Obtain_a_Y_or_N_response&action=edit&section=91
// file: keyboard_input_obtain_a_y_or_n_response
// name: Keyboard input/Obtain a Y or N response
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout

Stdin.isRaw = true // input is neither echoed nor buffered in this mode

System.print("Press Y or N")
Stdout.flush()

var byte
while ((byte = Stdin.readByte()) && !"YNyn".bytes.contains(byte)) {}
var yn = String.fromByte(byte)
System.print(yn)

Stdin.isRaw = false
