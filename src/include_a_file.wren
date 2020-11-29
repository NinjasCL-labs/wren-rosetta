// url: https://rosettacode.org/wiki/Include_a_file#Wren
// source: https://rosettacode.org/mw/index.php?title=Include_a_file&action=edit&section=130
// file: include_a_file
// name: Include a file
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt   // imports the Fmt module and makes the 'Fmt' class available
import "/modules/math" for Int  // imports the Math module and makes the 'Int' class available
System.print("The maximum safe integer in Wren is %(Fmt.dc(0, Int.maxSafe)).")
