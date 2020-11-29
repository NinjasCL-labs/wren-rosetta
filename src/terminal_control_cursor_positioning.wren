// url: https://rosettacode.org/wiki/Terminal_control/Cursor_positioning#Wren
// source: https://rosettacode.org/mw/index.php?title=Terminal_control/Cursor_positioning&action=edit&section=63
// file: terminal_control_cursor_positioning
// name: Terminal control/Cursor positioning
// author: PureFox
// license: MIT

System.write("\x1b[2J")        // clear the terminal
System.print("\x1b[6;3HHello") // move to (6, 3) and print 'Hello'
