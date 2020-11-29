// url: https://rosettacode.org/wiki/Program_termination#Wren
// source: https://rosettacode.org/mw/index.php?title=Program_termination&action=edit&section=132
// file: program_termination
// name: Program termination
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout

System.write("Do you want to terminate the program y/n ?  ")
Stdout.flush()
var yn = Stdin.readLine()
if (yn == "y" || yn == "Y") {
    System.print("OK, shutting down")
    Fiber.suspend() // return to OS
} 
System.print("OK, carrying on")
