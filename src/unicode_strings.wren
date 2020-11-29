// url: https://rosettacode.org/wiki/Unicode_strings#Wren
// source: https://rosettacode.org/mw/index.php?title=Unicode_strings&action=edit&section=56
// file: unicode_strings
// name: Unicode strings
// author: PureFox
// license: MIT

var w = "voilà"
for (c in w) {
    System.write("%(c) ") // prints the 5 Unicode 'characters'.
}
System.print("\nThe length of %(w) is %(w.count)")


System.print("\nIts code-points are:") 
for (cp in w.codePoints) {
    System.write("%(cp) ") // prints the code-points as numbers
}

System.print("\n\nIts bytes are: ")
for (b in w.bytes) {
    System.write("%(b) ") // prints the bytes as numbers
}

var zwe = "👨‍👩‍👧"
System.print("\n\n%(zwe) has:")
System.print("  %(zwe.bytes.count) bytes: %(zwe.bytes.toList.join(" "))")
System.print("  %(zwe.codePoints.count) code-points: %(zwe.codePoints.toList.join(" "))")
System.print("  %(Graphemes.clusterCount(zwe)) grapheme")
