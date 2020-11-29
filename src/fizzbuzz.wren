// url: https://rosettacode.org/wiki/FizzBuzz#Wren
// source: https://rosettacode.org/mw/index.php?title=FizzBuzz&action=edit&section=385
// file: fizzbuzz
// name: FizzBuzz
// author: PureFox
// license: MIT

for (i in 1..100) {
    if (i % 15 == 0) {
        System.print("FizzBuzz")
    } else if (i % 3 == 0) {
        System.print("Fizz")
    } else if (i % 5 == 0) {
        System.print("Buzz")
    } else {
        System.print(i)
    }
}
