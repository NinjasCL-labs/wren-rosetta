// url: https://rosettacode.org/wiki/Kernighans_large_earthquake_problem#Wren
// source: https://rosettacode.org/mw/index.php?title=Kernighans_large_earthquake_problem&action=edit&section=39
// file: kernighans_large_earthquake_problem
// name: Kernighans large earthquake problem
// author: PureFox
// license: MIT

import "io" for File
import "os" for Process
import "/modules/pattern" for Pattern

var args = Process.arguments
if (args.count != 1) Fiber.abort("Please pass just the name of the date file.")
var fileName = args[0]
var lines = File.read(fileName).split("\n").map { |l| l.trim() }.where { |l| l != "" }
var p = Pattern.new("+1/s")
System.print("The earthquakes from '%(fileName)' with a magnitude of greater than 6 are:\n")
for (line in lines) {
    var data = p.splitAll(line)
    if (data.count != 3) Fiber.abort("Invalid line : %(line)")
    var mag = Num.fromString(data[2])
    if (mag > 6) System.print(line)
}
