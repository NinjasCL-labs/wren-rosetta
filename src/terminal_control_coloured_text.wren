// url: https://rosettacode.org/wiki/Terminal_control/Coloured_text#Wren
// source: https://rosettacode.org/mw/index.php?title=Terminal_control/Coloured_text&action=edit&section=62
// file: terminal_control_coloured_text
// name: Terminal control/Coloured text
// author: PureFox
// license: MIT

import "timer" for Timer

var colors = ["Black", "Red", "Green", "Yellow", "Blue", "Magenta", "Cyan", "White"]
var esc = "\x1b"

// display words using 'bright' colors
for (i in 1..7) System.print("%(esc)[%(30+i);1m%(colors[i])") // red to white
Timer.sleep(3000)             // wait for 3 seconds
System.write("%(esc)[47m")    // set background color to white
System.write("%(esc)[2J")     // clear screen to background color
System.write("%(esc)[H")      // home the cursor

// display words again using 'blinking' colors
System.write("%(esc)[5m")     // blink on
for (i in 0..6) System.print("%(esc)[%(30+i);1m%(colors[i])") // black to cyan
Timer.sleep(3000)             // wait for 3 more seconds
System.write("%(esc)[0m")     // reset all attributes
System.write("%(esc)[2J")     // clear screen to background color
System.write("%(esc)[H")      // home the cursor
