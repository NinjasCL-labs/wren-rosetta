// url: https://rosettacode.org/wiki/Numeric_separator_syntax#Wren
// source: https://rosettacode.org/mw/index.php?title=Numeric_separator_syntax&action=edit&section=19
// file: numeric_separator_syntax
// name: Numeric separator syntax
// author: PureFox
// license: MIT

import "/fmt" for Fmt

var nums = [1e6, 1e9, 123456789, -123456789012]
var seps = [",", ".", " ", "*"]
for (i in 0...nums.count) System.print(Fmt.commatize(nums[i], seps[i]))
