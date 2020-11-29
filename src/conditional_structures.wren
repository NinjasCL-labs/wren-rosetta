// url: https://rosettacode.org/wiki/Conditional_structures#Wren
// source: https://rosettacode.org/mw/index.php?title=Conditional_structures&action=edit&section=543
// file: conditional_structures
// name: Conditional structures
// author: PureFox
// license: MIT

for (b in [true, false]) {
    if (b) {
        System.print(true)
    } else {
        System.print(false)
    }

    // equivalent code using ternary operator
    System.print(b ? true : false)

    // equivalent code using && operator
    System.print(b && true)

    // equivalent code using || operator
    System.print(b || false)

    System.print()
}
