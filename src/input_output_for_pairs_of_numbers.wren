// url: https://rosettacode.org/wiki/Input/Output_for_pairs_of_numbers#Wren
// source: https://rosettacode.org/mw/index.php?title=Input/Output_for_pairs_of_numbers&action=edit&section=37
// file: input_output_for_pairs_of_numbers
// name: Input/Output for pairs of numbers
// author: PureFox
// license: MIT

import "io" for Stdin

var output = Fn.new { |pairs| pairs.each { |p| System.print(p[0] + p[1]) } }

var n = Num.fromString(Stdin.readLine())
if (!n || !n.isInteger || n < 1) Fiber.abort("Number of pairs must be a positive integer.")
var pairs = []
for (i in 0...n) {
    var line = Stdin.readLine()
    var sp = line.split(" ")
    if (sp.count != 2) Fiber.abort("Each line must contain 2 integers, separated by a space.")
    var p1 = Num.fromString(sp[0])
    if (!p1 || !p1.isInteger) Fiber.abort("First value is not an integer.")
    var p2 = Num.fromString(sp[1])
    if (!p2 || !p2.isInteger) Fiber.abort("Second value is not an integer.")
    pairs.add([p1, p2])
}
System.print()
output.call(pairs)
