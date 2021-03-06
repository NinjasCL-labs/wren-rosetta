// url: https://rosettacode.org/wiki/Singly-linked_list/Traversal#Wren
// source: https://rosettacode.org/mw/index.php?title=Singly-linked_list/Traversal&action=edit&section=80
// file: singly_linked_list_traversal
// name: Singly-linked list/Traversal
// author: PureFox
// license: MIT

import "/modules/llist" for LinkedList
import "/modules/fmt" for Fmt

//create a new linked list and add the first 50 positive integers to it
var ll = LinkedList.new(1..50)

// traverse the linked list
for (i in ll) {
    Fmt.write("$4d ", i)
    if (i % 10 == 0) System.print()
}
