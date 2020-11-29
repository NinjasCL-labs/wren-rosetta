// url: https://rosettacode.org/wiki/Shoelace_formula_for_polygonal_area#Wren
// source: https://rosettacode.org/mw/index.php?title=Shoelace_formula_for_polygonal_area&action=edit&section=54
// file: shoelace_formula_for_polygonal_area
// name: Shoelace formula for polygonal area
// author: PureFox
// license: MIT

var shoelace = Fn.new { |pts|
    var area = 0
    for (i in 0...pts.count-1) {
        area = area + pts[i][0]*pts[i+1][1] - pts[i+1][0]*pts[i][1]
    }
    return (area + pts[-1][0]*pts[0][1] - pts[0][0]*pts[-1][1]).abs / 2
}

var pts = [ [3, 4], [5, 11], [12, 8], [9, 5], [5, 6] ]
System.print("The polygon with vertices at %(pts) has an area of %(shoelace.call(pts)).")
