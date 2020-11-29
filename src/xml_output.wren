// url: https://rosettacode.org/wiki/XML/Output#Wren
// source: https://rosettacode.org/mw/index.php?title=XML/Output&action=edit&section=69
// file: xml_output
// name: XML/Output
// author: PureFox
// license: MIT

var escapes = [
    ["&" , "&"], // must do this one first
    ["\"", """],   
    ["'" , "'"],
    ["" , ">"]
]

var xmlEscape = Fn.new { |s|
    for (esc in escapes) s = s.replace(esc[0], esc[1])
    return s
}

var xmlDoc = Fn.new { |names, remarks|
    var xml = "<characterremarks>\n"
    for (i in 0...names.count) {
        var name = xmlEscape.call(names[i])
        var remark = xmlEscape.call(remarks[i])
        xml = xml + "    <character name="\&quot;%(name)\&quot;">%(remark)</character>\n"
    }
    xml = xml + "</characterremarks>"
    System.print(xml)
}

var names = ["April", "Tam O'Shanter", "Emily"]
var remarks = [
    "Bubbly: I'm &gt; Tam and &lt;= Emily",
    "Burns: \"When chapman billies leave the street ...\"",
    "Short &amp; shrift"
]
xmlDoc.call(names, remarks)
