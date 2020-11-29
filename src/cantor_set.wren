// url: https://rosettacode.org/wiki/Cantor_set#Wren
// source: https://rosettacode.org/mw/index.php?title=Cantor_set&action=edit&section=49
// file: cantor_set
// name: Cantor set
// author: PureFox
// license: MIT

var width = 81
var height = 5

var lines = [[]] * height
for (i in 0...height) lines[i] = ["*"] * width

var cantor // recursive so need to declare variable first
cantor = Fn.new { |start, len, index|
    var seg = (len/3).floor
    if (seg == 0) return
    for (i in index...height) {
        for (j in (start+seg)...(start+seg*2)) lines[i][j] = " "
    }    
    cantor.call(start, seg, index + 1)
    cantor.call(start + seg*2, seg, index + 1)
}

cantor.call(0, width, 1)
for (i in 0...height) System.print(lines[i].join())
