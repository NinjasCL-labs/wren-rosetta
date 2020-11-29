// url: https://rosettacode.org/wiki/Averages/Root_mean_square#Wren
// source: https://rosettacode.org/mw/index.php?title=Averages/Root_mean_square&action=edit&section=121
// file: averages_root_mean_square
// name: Averages/Root mean square
// author: PureFox
// license: MIT

var rms = ((1..10).reduce(0) { |acc, i| acc + i*i }/10).sqrt
System.print(rms)
