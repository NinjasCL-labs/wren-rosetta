// url: https://rosettacode.org/wiki/Terminal_control/Hiding_the_cursor#Wren
// source: https://rosettacode.org/mw/index.php?title=Terminal_control/Hiding_the_cursor&action=edit&section=39
// file: terminal_control_hiding_the_cursor
// name: Terminal control/Hiding the cursor
// author: PureFox
// license: MIT

import "timer" for Timer

System.print("\x1b[?25l")
Timer.sleep(3000)
System.print("\x1b[?25h")
Timer.sleep(3000)
