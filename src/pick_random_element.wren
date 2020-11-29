// url: https://rosettacode.org/wiki/Pick_random_element#Wren
// source: https://rosettacode.org/mw/index.php?title=Pick_random_element&action=edit&section=110
// file: pick_random_element
// name: Pick random element
// author: PureFox
// license: MIT

import "random" for Random

var rand = Random.new()
var colors = ["red", "green", "blue", "yellow", "pink"]
for (i in 0..4) System.print(colors[rand.int(colors.count)])
