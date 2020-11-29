// url: https://rosettacode.org/wiki/Sum_of_a_series#Wren
// source: https://rosettacode.org/mw/index.php?title=Sum_of_a_series&action=edit&section=167
// file: sum_of_a_series
// name: Sum of a series
// author: PureFox
// license: MIT

var sumSeries = Fn.new { |n| (1..n).reduce(0) { |sum, i| sum + 1/(i*i) } }

System.print("s(1000) = %(sumSeries.call(1000))")
System.print("zeta(2) = %(Num.pi*Num.pi/6)")
