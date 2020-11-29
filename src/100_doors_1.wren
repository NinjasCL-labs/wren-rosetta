// url: https://rosettacode.org/wiki/100_doors#Wren
// source: https://rosettacode.org/mw/index.php?title=100_doors&action=edit&section=376
// file: 100_doors-1
// name: 100 doors
// author: PureFox
// license: MIT

var door = 1
var increment = 3
while (door <= 100) {
    System.write("%(door) ")
    door = door + increment
    increment = increment + 2
}
System.print()
