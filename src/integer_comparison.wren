// url: https://rosettacode.org/wiki/Integer_comparison#Wren
// source: https://rosettacode.org/mw/index.php?title=Integer_comparison&action=edit&section=194
// file: integer_comparison
// name: Integer comparison
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout

System.print("Enter anything other than a number to quit at any time.\n")
while (true) {
    System.write("  First number  : ")
    Stdout.flush()
    var a = Num.fromString(Stdin.readLine())
    if (!a) break
    System.write("  Second number : ")
    Stdout.flush()
    var b = Num.fromString(Stdin.readLine())
    if (!b) break
    var s = (a-b).sign
    if (s < 0) {
        System.print("  %(a) < %(b)")
    } else if (s == 0) {
        System.print("  %(a) == %(b)")
    } else {
        System.print("  %(a) > %(b)")
    }
    System.print()
}
