// url: https://rosettacode.org/wiki/Here_document#Wren
// source: https://rosettacode.org/mw/index.php?title=Here_document&action=edit&section=78
// file: here_document
// name: Here document
// author: PureFox
// license: MIT

var a = [
    "This is a list of 'strings' with the following properties:",
    "  - indention is preserved, and",
    "  - a quotation mark '\"' must be \"escaped\" by preceding it with a '\\'.",
    "`Have fun!`"
]
System.print(a.join("\n"))
