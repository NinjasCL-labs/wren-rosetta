// url: https://rosettacode.org/wiki/Associative_array/Iteration#Wren
// source: https://rosettacode.org/mw/index.php?title=Associative_array/Iteration&action=edit&section=130
// file: associative_array_iteration
// name: Associative array/Iteration
// author: PureFox
// license: MIT

// create a new map with four entries
var capitals = {
    "France": "Paris",
    "Germany": "Berlin",
    "Russia": "Moscow",
    "Spain": "Madrid"
}

// iterate through the map and print out the key/value pairs
for (c in capitals) System.print([c.key, c.value])
System.print()

// iterate though the map and print out just the keys
for (k in capitals.keys) System.print(k)
System.print()

// iterate though the map and print out just the values
for (v in capitals.values) System.print(v)
