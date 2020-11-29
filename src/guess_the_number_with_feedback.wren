// url: https://rosettacode.org/wiki/Guess_the_number/With_feedback#Wren
// source: https://rosettacode.org/mw/index.php?title=Guess_the_number/With_feedback&action=edit&section=112
// file: guess_the_number_with_feedback
// name: Guess the number/With feedback
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout
import "random" for Random

var rand = Random.new()
var n = rand.int(1, 21) // computer number from 1..20 inclusive, say
System.print("The computer has chosen a number between 1 and 20 inclusive.")
while (true) {
    System.write("  Your guess 1-20 : ")
    Stdout.flush()
    var g = Num.fromString(Stdin.readLine())
    if (!g || g.type != Num || !g.isInteger || g < 1 || g > 20) {
        System.print("  Inappropriate")
    } else if (g > n) {
        System.print("  Too high")
    } else if (g < n) {
        System.print("  Too low")
    } else {
        System.print("  Spot on!")
        break
    }
}
