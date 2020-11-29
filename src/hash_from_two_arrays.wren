// url: https://rosettacode.org/wiki/Hash_from_two_arrays#Wren
// source: https://rosettacode.org/mw/index.php?title=Hash_from_two_arrays&action=edit&section=129
// file: hash_from_two_arrays
// name: Hash from two arrays
// author: PureFox
// license: MIT

var keys = [1, 2, 3, 4, 5]
var values = ["first", "second", "third", "fourth","fifth"]
var hash = {}
(0..4).each { |i| hash[keys[i]] = values[i] }
System.print(hash)
