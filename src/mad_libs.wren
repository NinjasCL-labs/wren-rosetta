// url: https://rosettacode.org/wiki/Mad_Libs#Wren
// source: https://rosettacode.org/mw/index.php?title=Mad_Libs&action=edit&section=53
// file: mad_libs
// name: Mad Libs
// author: PureFox
// license: MIT

import "io" for Stdin, Stdout
import "/modules/pattern" for Pattern
import "/modules/seq" for Lst

System.print("Please enter a multi-line story template terminated by a blank line:\n")
Stdout.flush()
var story = ""
while (true) {
    var line = Stdin.readLine()
    if (line.isEmpty) break
    story = story + line + "\n" // preserve line breaks
}
// identify blanks
var p = Pattern.new(">")
var blanks = Lst.distinct(p.findAll(story).map { |m| m.text }.toList)
System.print("Please enter your replacements for the following 'blanks' in the story:")
for (blank in blanks) {
    System.write("  %(blank[1..-2]) : ")
    Stdout.flush()
    var repl = Stdin.readLine()
    story = story.replace(blank, repl)
}
System.print("\n%(story)")
