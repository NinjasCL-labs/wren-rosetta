// url: https://rosettacode.org/wiki/Doubly-linked_list/Traversal#Wren
// source: https://rosettacode.org/mw/index.php?title=Doubly-linked_list/Traversal&action=edit&section=49
// file: doubly_linked_list_traversal
// name: Doubly-linked list/Traversal
// author: PureFox
// license: MIT

import "/modules/llist" for DLinkedList
import "/modules/fmt" for Fmt

// create a new doubly-linked list and add the first 50 positive integers to it
var dll = DLinkedList.new(1..50)

// traverse the doubly-linked list from head to tail
for (i in dll) {
    Fmt.write("$4d ", i)
    if (i % 10 == 0) System.print()
}
System.print()
// traverse the doubly-linked list from tail to head
for (i in dll.reversed) {
    Fmt.write("$4d ", i)
    if (i % 10 == 1) System.print()
}
