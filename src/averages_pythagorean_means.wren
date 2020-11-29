// url: https://rosettacode.org/wiki/Averages/Pythagorean_means#Wren
// source: https://rosettacode.org/mw/index.php?title=Averages/Pythagorean_means&action=edit&section=106
// file: averages_pythagorean_means
// name: Averages/Pythagorean means
// author: PureFox
// license: MIT

var rng = 1..10
var count = rng.count
var A = rng.reduce { |acc, x| acc + x }/count
var G = rng.reduce { |prod, x| prod * x}.pow(1/count)
var H = rng.reduce { |acc, x| acc + 1/x}.pow(-1) * count

System.print("For the numbers %(rng):")
System.print("  Arithmetic mean = %(A)")
System.print("  Geometric mean  = %(G)")
System.print("  Harmonic mean   = %(H)") 
System.print("  A >= G >= H     = %(A >= G && G >= H)")
