// url: https://rosettacode.org/wiki/Department_numbers#Wren
// source: https://rosettacode.org/mw/index.php?title=Department_numbers&action=edit&section=73
// file: department_numbers
// name: Department numbers
// author: PureFox
// license: MIT

System.print("Police  Sanitation  Fire")
System.print("------  ----------  ----")
var count = 0
for (h in 1..3) {
    var i = h * 2
    for (j in 1..7) {
        if (j != i) {
            for (k in 1..7) {
                if ((k != i && k != j) && (i + j + k == 12) ) {
                    System.print("  %(i)         %(j)         %(k)")
                    count = count + 1
                }
            }
        }
    }
}
System.print("\n%(count) valid combinations")
