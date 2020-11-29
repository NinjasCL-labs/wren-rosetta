// url: https://rosettacode.org/wiki/Associative_array/Merging#Wren
// source: https://rosettacode.org/mw/index.php?title=Associative_array/Merging&action=edit&section=38
// file: associative_array_merging
// name: Associative array/Merging
// author: PureFox
// license: MIT

var mergeMaps = Fn.new { |m1, m2|
    var m3 = {}
    for (key in m1.keys) m3[key] = m1[key]
    for (key in m2.keys) m3[key] = m2[key]
    return m3
}     

var base = { "name": "Rocket Skates" , "price": 12.75, "color": "yellow" }
var update = { "price": 15.25, "color": "red", "year": 1974 }
var merged = mergeMaps.call(base, update)
System.print(merged)
