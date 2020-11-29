// url: https://rosettacode.org/wiki/Copy_stdin_to_stdout#Wren
// source: https://rosettacode.org/mw/index.php?title=Copy_stdin_to_stdout&action=edit&section=38
// file: copy_stdin_to_stdout
// name: Copy stdin to stdout
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout

Stdin.isRaw = true // prevents echoing to the terminal
while (true) {
    var byte = Stdin.readByte()         // read a byte from stdin
    if (byte == 13) break               // break when enter key pressed
    System.write(String.fromByte(byte)) // write the byte (in string form) to stdout
    Stdout.flush()                      // flush output
}
System.print()
Stdin.isRaw = false
