// url: https://rosettacode.org/wiki/XML/Input#Wren
// source: https://rosettacode.org/mw/index.php?title=XML/Input&action=edit&section=86
// file: xml_input
// name: XML/Input
// author: PureFox
// license: MIT

import "/modules/pattern" for Pattern
import "/modules/fmt" for Conv

var xml =
"<students>
  <student name="\&quot;April\&quot;" gender="\&quot;F\&quot;" dateofbirth="\&quot;1989-01-02\&quot;"/>
  <student name="\&quot;Bob\&quot;" gender="\&quot;M\&quot;" dateofbirth="\&quot;1990-03-04\&quot;"/>
  <student name="\&quot;Chad\&quot;" gender="\&quot;M\&quot;" dateofbirth="\&quot;1991-05-06\&quot;"/>
  <student name="\&quot;Dave\&quot;" gender="\&quot;M\&quot;" dateofbirth="\&quot;1992-07-08\&quot;">
    <pet type="\&quot;dog\&quot;" name="\&quot;Rover\&quot;"/>
  </student>
  <student dateofbirth="\&quot;1993-09-10\&quot;" gender="\&quot;F\&quot;" name="\&quot;Émily\&quot;"/>
</students>"

var p = Pattern.new("&gt;")
var p2 = Pattern.new(" Name/=\"[+1^\"]\"")
var p3 = Pattern.new("/&amp;/#x[+1/h];")
var matches = p.findAll(xml)
for (m in matches) {
    var text = m.text
    if (text.startsWith("<student var="" match="p2.find(m.text)" if="" name="match.captures[0].text" escapes="p3.findAll(name)" for="" in="" hd="esc.captures[0].text" char="String.fromCodePoint(Conv.atoi(hd," system.print="">

{{out}}
<pre>
April
Bob
Chad
Dave
Émily
</pre>
</student>
