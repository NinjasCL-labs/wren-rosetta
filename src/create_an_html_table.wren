// url: https://rosettacode.org/wiki/Create_an_HTML_table#Wren
// source: https://rosettacode.org/mw/index.php?title=Create_an_HTML_table&action=edit&section=104
// file: create_an_html_table
// name: Create an HTML table
// author: PureFox
// license: MIT

import "random" for Random
import "/fmt" for Fmt

var r = Random.new()
var sb = ""
var i = "   "  // indent
sb = sb + "\n\n"
sb = sb + "<style>\n"
sb = sb + "table, th, td  { border: 1px solid black; }\n"
sb = sb + "th, td { text-align: right; }\n"
sb = sb + "</style>\n\n\n"
sb = sb + "<table style="\&quot;width:60\%\&quot;">\n"
sb = sb + "%(i)<thead>\n"
sb = sb + "%(i)%(i)<tr><th/>"
for (c in "XYZ") sb = sb + "<th>%(c)</th>"
sb = sb + "</tr>\n"
sb = sb + "%(i)</thead>\n"
sb = sb + "%(i)<tbody>\n"
var f = "%(i)%(i)<tr><td>$d</td><td>$d</td><td>$d</td><td>$d</td></tr>\n"
for (j in 1..4) sb = sb + Fmt.swrite(f, j, r.int(1e4), r.int(1e4), r.int(1e4))
sb = sb + "%(i)</tbody>\n"
sb = sb + "</table>\n"
sb = sb + "\n"
System.print(sb)
