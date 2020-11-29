// url: https://rosettacode.org/wiki/Collections#Wren
// source: https://rosettacode.org/mw/index.php?title=Collections&action=edit&section=245
// file: collections
// name: Collections
// author: PureFox
// license: MIT

var list = [] // Empty Array
list = [1, 2, 3, 4]
list.add(5)
list.clear()
list = [0] * 10
list.count // 10

var map = {}
map["key"] = "value"
map[3] = 31
map.count // 2
map.clear()

for (e in map.keys) {
    // Do stuff
}
