// url: https://rosettacode.org/wiki/Check_input_device_is_a_terminal#Wren
// source: https://rosettacode.org/mw/index.php?title=Check_input_device_is_a_terminal&action=edit&section=29
// file: check_input_device_is_a_terminal
// name: Check input device is a terminal
// author: PureFox
// license: MIT

import "io" for Stdin

System.print("Input device is a terminal? %(Stdin.isTerminal ? "Yes" : "No")")
