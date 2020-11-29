// url: https://rosettacode.org/wiki/Text_between#Wren
// source: https://rosettacode.org/mw/index.php?title=Text_between&action=edit&section=45
// file: text_between
// name: Text between
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var textBetween = Fn.new { |str, start, end|
    if (!((start is String) && start != "") && !((end is String) && end != "")) {
        Fiber.abort("Start and end must both be non-empty strings.")
    }
    if (str == "") return str
    var s = (start == "start") ? 0 : str.indexOf(start)
    if (s == -1) return ""
    var si = (start == "start") ? 0 : s + start.count
    var e = (end == "end") ? str.count : str.indexOf(end, si)
    if (e == -1) return str[si..-1]
    return str[si...e]
}

var texts = [
    "Hello Rosetta Code world",
    "Hello Rosetta Code world",
    "Hello Rosetta Code world",
    "<div style="\&quot;chinese\&quot;">你好嗎</div>",
    "<text>Hello <span>Rosetta Code</span> world</text><table style="\&quot;myTable\&quot;">",
    "<table style="\&quot;myTable\&quot;"><tr><td>hello world</td></tr></table>",
    "The quick brown fox jumps over the lazy other fox",
    "One fish two fish red fish blue fish",
    "FooBarBazFooBuxQuux"
]

var starts = [
    "Hello ", "start", "Hello ", "<div style="\&quot;chinese\&quot;">",
    "<text>", "<table>", "quick ", "fish ", "Foo"
]

var ends = [
    " world", " world", "end", "", "<table>",
    "</table>", " fox", " red", "Foo"
]

var i = 0
for (text in texts) {
    Fmt.print("Text: $q", text)
    Fmt.print("Start delimiter: $q", starts[i])
    Fmt.print("End delimiter: $q", ends[i])
    var b = textBetween.call(text, starts[i], ends[i])
    Fmt.print("Output: $q\n", b)
    i = i + 1
}

{{out}}
<pre>
Text: "Hello Rosetta Code world"
Start delimiter: "Hello "
End delimiter: " world"
Output: "Rosetta Code"

Text: "Hello Rosetta Code world"
Start delimiter: "start"
End delimiter: " world"
Output: "Hello Rosetta Code"

Text: "Hello Rosetta Code world"
Start delimiter: "Hello "
End delimiter: "end"
Output: "Rosetta Code world"

Text: "<div style="chinese">你好嗎</div>"
Start delimiter: "<div style="chinese">"
End delimiter: "</div>"
Output: "你好嗎"

Text: "<text>Hello <span>Rosetta Code</span> world</text></pre><table style="myTable">"
Start delimiter: "<text>"
End delimiter: "<table>"
Output: "Hello <span>Rosetta Code</span> world<table style="myTable">"

Text: "<table style="myTable"><tr><td>hello world</td></tr></table>"
Start delimiter: "<table>"
End delimiter: "</table>"
Output: ""

Text: "The quick brown fox jumps over the lazy other fox"
Start delimiter: "quick "
End delimiter: " fox"
Output: "brown"

Text: "One fish two fish red fish blue fish"
Start delimiter: "fish "
End delimiter: " red"
Output: "two fish"

Text: "FooBarBazFooBuxQuux"
Start delimiter: "Foo"
End delimiter: "Foo"
Output: "BarBaz"

</table></table></text></table></table></text></div></table>
