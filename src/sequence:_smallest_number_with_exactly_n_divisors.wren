// url: https://rosettacode.org/wiki/Sequence:_smallest_number_with_exactly_n_divisors#Wren
// source: https://rosettacode.org/mw/index.php?title=Sequence:_smallest_number_with_exactly_n_divisors&action=edit&section=34
// file: sequence:_smallest_number_with_exactly_n_divisors
// name: Sequence: smallest number with exactly n divisors
// author: PureFox
// license: MIT

import "/modules/math" for Int

var limit = 22
var numbers = List.filled(limit, 0)
var i = 1
while (true) {
    var nd = Int.divisors(i).count
    if (nd <= limit && numbers[nd-1] == 0) {
        numbers[nd-1] = i
        if (numbers.all { |n| n > 0 }) break
    }
    i = i + 1
}
System.print("The first %(limit) terms are:")
System.print(numbers)
