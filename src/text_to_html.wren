// url: https://rosettacode.org/wiki/Text_to_HTML#Wren
// source: https://rosettacode.org/mw/index.php?title=Text_to_HTML&action=edit&section=9
// file: text_to_html
// name: Text to HTML
// author: PureFox
// license: MIT

import "/pattern" for Pattern

var t =
    "     Sample Text\n\n" +
    "This is an example of converting plain text to HTML which demonstrates extracting a title and escaping certain characters within bulleted and numbered lists.\n\n" +
    "* This is a bulleted list with a less than sign ()\n\n" +
    "A 'normal' paragraph between the lists.\n\n" +
    "1. This is a numbered list with an ampersand (&)\n\n" +
    "2. \"Second line\" in double quotes\n\n" +
    "3. 'Third line' in single quotes\n\n" +
    "That's all folks."

// prefer the standard " for escaping a double-quote character rather than Go's "
var escapes = [ ["&", "&"], ["", ">"], ["\"", """], ["'", "'"] ]
for (esc in escapes) t = t.replace(esc[0], esc[1])
var paras = t.split("\n\n")
var ol = Pattern.new("/d.", Pattern.start)

// Assume if first character of first paragraph is white-space
// then it's probably a document title.
var firstChar = paras[0][0]
var title = "Untitled"
var k = 0
if (firstChar == " " || firstChar == "\t") {
    title = paras[0].trim()
    k = 1
}
System.print("")
System.print("<title>%(title)</title>")
System.print("")

var blist = false
var nlist = false
for (para in paras.skip(k)) {
    var para2 = para.trim()
    var cont = false
    if (para2.startsWith("*")) {
        if (!blist) {
            blist = true
            System.print("<ul>")
        }
        para2 = para2[1..-1].trim()
        System.print("  <li>%(para2)</li>")
        cont = true
    } else if (blist) {
        blist = false
        System.print("</ul>")
    }

    if (!cont) {
        if (ol.isMatch(para2)) {
            if (!nlist) {
                nlist = true
                System.print("<ol>")
            }
            para2 = para2[2..-1].trim()
            System.print("  <li>%(para2)</li>")
            cont = true
        } else if (nlist) {
            nlist = false
            System.print("</ol>")
        }
        if (!cont &amp;&amp; !blist &amp;&amp; !nlist) System.print("<p>%(para2)</p>")
    }
}

if (blist) System.print("")
if (nlist) System.prin("")
System.print("")
System.print("")

