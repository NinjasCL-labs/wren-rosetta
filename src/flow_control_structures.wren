// url: https://rosettacode.org/wiki/Flow-control_structures#Wren
// source: https://rosettacode.org/mw/index.php?title=Flow-control_structures&action=edit&section=220
// file: flow_control_structures
// name: Flow-control structures
// author: PureFox
// license: MIT

var func = Fn.new { |n|
    var i = 1
    while (true) {
        System.print(i)
        if (i == n) break // exits while loop
        i = i + 1
    }
    if (n < 3) return // exits function
    System.print(n + 1)
}

var fiber = Fiber.new {
    Fiber.abort("Demo error") // error occcurred, abort script
}

var a = [2, 3]
for (n in a) {
    func.call(n)
    if (n > 2) return // end script
    var error = fiber.try() // catch any error
    System.print("Caught error: " + error)
}
