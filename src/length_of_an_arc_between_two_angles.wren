// url: https://rosettacode.org/wiki/Length_of_an_arc_between_two_angles#Wren
// source: https://rosettacode.org/mw/index.php?title=Length_of_an_arc_between_two_angles&action=edit&section=23
// file: length_of_an_arc_between_two_angles
// name: Length of an arc between two angles
// author: PureFox
// license: MIT

var arcLength = Fn.new { |r, angle1, angle2| (360 - (angle2 - angle1).abs) * Num.pi / 180 * r }

System.print(arcLength.call(10, 10, 120))
