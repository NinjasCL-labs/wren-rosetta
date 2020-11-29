// url: https://rosettacode.org/wiki/Feigenbaum_constant_calculation#Wren
// source: https://rosettacode.org/mw/index.php?title=Feigenbaum_constant_calculation&action=edit&section=36
// file: feigenbaum_constant_calculation
// name: Feigenbaum constant calculation
// author: PureFox
// license: MIT

import "/fmt" for Fmt

var feigenbaum = Fn.new {
    var maxIt = 13
    var maxItJ = 10
    var a1 = 1
    var a2 = 0
    var d1 = 3.2
    System.print(" i       d")
    for (i in 2..maxIt) {
        var a = a1 + (a1 - a2)/d1
        for (j in 1..maxItJ) {
            var x = 0
            var y = 0
            for (k in 1..(1<<i y="1" x="a" a="a" var="" d="(a1" a2="" a1="" system.print="" i="" d1="d" feigenbaum.call="">

{{out}}
<pre>
 i       d
 2    3.21851142
 3    4.38567760
 4    4.60094928
 5    4.65513050
 6    4.66611195
 7    4.66854858
 8    4.66906066
 9    4.66917155
10    4.66919515
11    4.66920026
12    4.66920098
13    4.66920537
</pre>
</i>
