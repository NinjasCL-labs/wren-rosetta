// url: https://rosettacode.org/wiki/Character_codes#Wren
// source: https://rosettacode.org/mw/index.php?title=Character_codes&action=edit&section=170
// file: character_codes
// name: Character codes
// author: PureFox
// license: MIT

var cps = []
for (c in ["a", "π", "字", "🐘"]) {
    var cp = c.codePoints[0]
    cps.add(cp)
    System.print("%(c) = %(cp)")
}
System.print()
for (i in cps) {
    var c = String.fromCodePoint(i)
    System.print("%(i) = %(c)")
}
