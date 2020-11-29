// url: https://rosettacode.org/wiki/100_doors#Wren
// source: https://rosettacode.org/mw/index.php?title=100_doors&action=edit&section=376
// file: 100_doors
// name: 100 doors
// author: PureFox
// license: MIT

var doors = [true] * 100
for (i in 1..100) {
    var j = i
    while (j < 100) {
        doors[j] = !doors[j]
        j = j + i + 1
    }
}

for (i in 0...100) {
    if (doors[i]) System.write("%(i + 1) ")
}
System.print()
