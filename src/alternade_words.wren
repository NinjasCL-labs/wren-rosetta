// url: https://rosettacode.org/wiki/Alternade_words#Wren
// source: https://rosettacode.org/mw/index.php?title=Alternade_words&action=edit&section=6
// file: alternade_words.wren
// name: Alternade Words
// author: PureFox
// license: MIT

import "io" for File
import "/modules/set" for Set
import "/modules/fmt" for Fmt

/*
'unixdict.txt' contains the following alternades of length 6 or more:

 1: accost   -> acs  cot
 2: accuse   -> acs  cue
 3: afield   -> ail  fed
 4: agleam   -> ala  gem
 5: alcott   -> act  lot
 6: allele   -> all  lee
 7: allied   -> ale  lid
 8: alpert   -> apr  let
 9: ambient  -> abet min
10: annette  -> ante net
11: apport   -> apr  pot
12: ariadne  -> aide ran
13: assist   -> ass  sit
14: battle   -> btl  ate
15: blaine   -> ban  lie
16: brenda   -> bed  rna
17: calliope -> clip aloe
18: choose   -> cos  hoe
19: choosy   -> cos  hoy
20: claire   -> car  lie
21: collude  -> clue old
22: effete   -> eft  fee
23: fabric   -> fbi  arc
24: fealty   -> fat  ely
25: fluent   -> fun  let
26: forwent  -> fret own
27: friend   -> fin  red
28: george   -> gog  ere
29: inroad   -> ira  nod
30: israel   -> ire  sal
31: jaunty   -> jut  any
32: joanne   -> jan  one
33: lounge   -> lug  one
34: oriole   -> oil  roe
35: oswald   -> owl  sad
36: parrot   -> pro  art
37: peoria   -> poi  era
38: pierre   -> per  ire
39: poodle   -> pol  ode
40: pounce   -> puc  one
41: racial   -> rca  ail
42: realty   -> rat  ely
43: sordid   -> sri  odd
44: spatial  -> sail pta
45: sprain   -> sri  pan
46: strain   -> sri  tan
47: strait   -> sri  tat
48: sturdy   -> sud  try
49: sweaty   -> set  way
50: tattle   -> ttl  ate
51: theorem  -> term hoe
52: though   -> tog  huh
53: throaty  -> tray hot
54: triode   -> tid  roe
55: triune   -> tin  rue
56: troupe   -> top  rue
57: truant   -> tun  rat
58: twirly   -> til  wry
*/

var wordList = "unixdict.txt" // local copy
var set = Set.new()
var words = File.read(wordList).trimEnd().split("\n")
for (word in words) set.add(word)
System.print("'unixdict.txt' contains the following alternades of length 6 or more:\n")
var count = 0
for (word in words) {
    if (word.count >= 6) {
        var w1 = ""
        var w2 = ""
        var i = 0
        for (c in word) {
           if (i%2 == 0) {
                w1 = w1 + c
           } else {
                w2 = w2 + c
           }
           i = i + 1
        }
        if (set.contains(w1) && set.contains(w2)) {
            count = count + 1
            Fmt.print("$2d: $-8s -> $-4s $-4s", count, word, w1, w2)
        }
    }
}
