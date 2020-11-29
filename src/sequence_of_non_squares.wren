// url: https://rosettacode.org/wiki/Sequence_of_non-squares#Wren
// source: https://rosettacode.org/mw/index.php?title=Sequence_of_non-squares&action=edit&section=89
// file: sequence_of_non_squares
// name: Sequence of non-squares
// author: PureFox
// license: MIT

import "/fmt" for Fmt

System.print("The first 22 numbers in the sequence are:")
System.print("  n  term")
for (n in 1...1e6) {
    var s = n + (0.5 + n.sqrt).floor
    var ss = s.sqrt.round
    if (ss * ss == s) {
        Fmt.print("The $r number in the sequence $d = $d x $d is a square.", n, s, ss, ss)
        return
    }
    if (n <= 22) Fmt.print(" $2d   $2d", n, s)
}
System.print("\nNo squares were found in the first 999,999 terms.")
