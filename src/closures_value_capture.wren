// url: https://rosettacode.org/wiki/Closures/Value_capture#Wren
// source: https://rosettacode.org/mw/index.php?title=Closures/Value_capture&action=edit&section=95
// file: closures_value_capture
// name: Closures/Value capture
// author: PureFox
// license: MIT

var fs = List.filled(10, null)
for (i in 0...fs.count) {
    fs[i] = Fn.new { i * i }
}

for (i in 0...fs.count-1) System.print("Function #%(i):  %(fs[i].call())")
