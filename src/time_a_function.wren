// url: https://rosettacode.org/wiki/Time_a_function#Wren
// source: https://rosettacode.org/mw/index.php?title=Time_a_function&action=edit&section=108
// file: time_a_function
// name: Time a function
// author: PureFox
// license: MIT

var f = Fn.new {
    for (i in 0..1e7) {}
}

var runs = 100
var total = 0
for (i in 1..runs) {
    var start = System.clock
    f.call()
    total = total + System.clock - start
}
System.print("Over %(runs) runs, took an average of %(total/runs) seconds.")
