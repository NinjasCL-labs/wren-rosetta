// url: https://rosettacode.org/wiki/Terminal_control/Cursor_movement#Wren
// source: https://rosettacode.org/mw/index.php?title=Terminal_control/Cursor_movement&action=edit&section=33
// file: terminal_control_cursor_movement
// name: Terminal control/Cursor movement
// author: PureFox
// license: MIT

import "timer" for Timer
import "io" for Stdout

var esc = "\x1b"

System.write("%(esc)[2J")     // clear terminal
System.write("%(esc)[12;40H") // move to (12, 40)
Stdout.flush()
Timer.sleep(2000)
System.write("%(esc)[D")      // move left
Stdout.flush()
Timer.sleep(2000)
System.write("%(esc)[C")      // move right
Stdout.flush()
Timer.sleep(2000)
System.write("%(esc)[A")      // move up
Stdout.flush()
Timer.sleep(2000)
System.write("%(esc)[B")      // move down
Stdout.flush()
Timer.sleep(2000)
System.write("%(esc)[G")      // move to beginning of line
Stdout.flush()
Timer.sleep(2000)
System.write("%(esc)[79C")    // move to end of line (assuming 80 column terminal)
Stdout.flush()
Timer.sleep(2000)
System.write("%(esc)[1;1H")   // move to top left corner
Stdout.flush()
Timer.sleep(2000)
System.write("%(esc)[24;80H") // move to bottom right corner (assuming 80 x 24 terminal)
Stdout.flush()
Timer.sleep(2000)
System.write("%(esc)[1;1H")   // home cursor again before quitting
