// url: https://rosettacode.org/wiki/Loops/Continue#Wren
// source: https://rosettacode.org/mw/index.php?title=Loops/Continue&action=edit&section=147
// file: loops_continue
// name: Loops/Continue
// author: PureFox
// license: MIT

// Invert the condition.
// OK for simple cases.
for (i in 1..10) {
    System.write(i)
    if (i%5 != 0) {
        System.write(", ")
    } else {
        System.print()
    }
}

System.print()

// Use a flag to indicate whether to continue or not.
// OK as a more general approach.
for (i in 1..10) {
    System.write(i)
    var cont = false
    if (i%5 == 0) {
        System.print()        
        cont = true
    }
    if (!cont) System.write(", ")
}

System.print()

// Break out of an inner infinite loop.
// Not good if you also need to use 'break' normally. 
for (i in 1..10) {
    while (true) {
        System.write(i)
        if (i%5 == 0) {
            System.print()        
            break
        }
        System.write(", ")
        break
    }
}

System.print()

// Return from an inner closure.
// Heavy handed, other methods usually preferable.
for (i in 1..10) {
    Fn.new {
        System.write(i)
        if (i%5 == 0) {
            System.print()        
            return
        }
        System.write(", ")
    }.call()
}
