// url: https://rosettacode.org/wiki/Sailors,_coconuts_and_a_monkey_problem#Wren
// source: https://rosettacode.org/mw/index.php?title=Sailors,_coconuts_and_a_monkey_problem&action=edit&section=51
// file: sailors_coconuts_and_a_monkey_problem
// name: Sailors, coconuts and a monkey problem
// author: PureFox
// license: MIT

var coconuts = 11
for (ns in 2..9) {
    var hidden = List.filled(ns, 0)
    coconuts = (coconuts/ns).floor * ns + 1
    while (true) {
        var nc = coconuts
        var outer = false
        for (s in 1..ns) {
            if (nc%ns == 1) {
                hidden[s-1] = (nc/ns).floor
                nc = nc - hidden[s-1] - 1
                if (s == ns && nc%ns == 0) {
                    System.print("%(ns) sailors require a minimum of %(coconuts) coconuts")
                    for (t in 1..ns) System.print("\tSailor %(t) hides %(hidden[t-1])")
                    System.print("\tThe monkey gets %(ns)")
                    System.print("\tFinally, each sailor takes %((nc/ns).floor)\n")
                    outer = true
                    break
                }
            } else {
                break
            }
        }
        if (outer) break
        coconuts = coconuts + ns
    }
}
