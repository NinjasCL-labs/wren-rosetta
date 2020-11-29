// url: https://rosettacode.org/wiki/Guess_the_number#Wren
// source: https://rosettacode.org/mw/index.php?title=Guess_the_number&action=edit&section=149
// file: guess_the_number
// name: Guess the number
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout
import "random" for Random

var rand = Random.new()
var n = rand.int(1, 11) // computer number from 1..10 inclusive
while (true) {
    System.write("Your guess 1-10 : ")
    Stdout.flush()
    var guess = Num.fromString(Stdin.readLine())
    if (n == guess) {
        System.print("Well guessed!")
        break
    }
}
