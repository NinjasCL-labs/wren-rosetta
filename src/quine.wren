// url: https://rosettacode.org/wiki/Quine#Wren
// source: https://rosettacode.org/mw/index.php?title=Quine&action=edit&section=180
// file: quine
// name: Quine
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var a = "import $c/fmt$c for Fmt$c$cvar a = $q$cFmt.lprint(a, [34, 34, 10, 10, a, 10])"
Fmt.lprint(a, [34, 34, 10, 10, a, 10])
