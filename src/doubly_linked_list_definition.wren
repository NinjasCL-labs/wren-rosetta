// url: https://rosettacode.org/wiki/Doubly-linked_list/Definition#Wren
// source: https://rosettacode.org/mw/index.php?title=Doubly-linked_list/Definition&action=edit&section=45
// file: doubly_linked_list_definition
// name: Doubly-linked list/Definition
// author: PureFox
// license: MIT

import "/modules/llist" for DLinkedList

var dll = DLinkedList.new()
for (i in 1..3) dll.add(i)
System.print(dll)
for (i in 1..3) dll.remove(i)
System.print(dll)
