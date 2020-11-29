// url: https://rosettacode.org/wiki/Formatted_numeric_output#Wren
// source: https://rosettacode.org/mw/index.php?title=Formatted_numeric_output&action=edit&section=117
// file: formatted_numeric_output
// name: Formatted numeric output
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt

var n = 7.125
System.print(Fmt.rjust(9, n, "0"))
