// url: https://rosettacode.org/wiki/99_bottles_of_beer#Wren
// source: https://rosettacode.org/mw/index.php?title=99_bottles_of_beer&action=edit&section=441
// file: 99_bottles_of_beer
// name: 99 bottles of beer
// author: Edsrzf, 4d47
// license: GNU FDL 1.2

for (i in 99...0) {
  System.print("%(i) bottles of beer on the wall,")
  System.print("%(i) bottles of beer,")
  System.print("Take one down, pass it around,")
  System.print("%(i - 1) bottles of beer on the wall.\n")
}
