// url: https://rosettacode.org/wiki/RPG_attributes_generator#Wren
// source: https://rosettacode.org/mw/index.php?title=RPG_attributes_generator&action=edit&section=53
// file: rpg_attributes_generator
// name: RPG attributes generator
// author: PureFox
// license: MIT

import "random" for Random
import "/modules/sort" for Sort

var rand = Random.new()
var vals = List.filled(6, 0)
while (true) {
    for (i in 0..5) {
        var rns = List.filled(4, 0)
        for (j in 0..3) rns[j] = rand.int(1, 7)
        var sum = rns.reduce { |acc, n| acc + n }
        Sort.insertion(rns)
        vals[i] = sum - rns[0]
    }
    var total = vals.reduce { |acc, n| acc + n }
    if (total >= 75) {
        var fifteens = vals.count { |n| n >= 15 }
        if (fifteens >= 2) {
            System.print("The six values are: %(vals)")
            System.print("Their total is: %(total)")
            break
        }
    }
}
