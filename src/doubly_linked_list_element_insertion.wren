// url: https://rosettacode.org/wiki/Doubly-linked_list/Element_insertion#Wren
// source: https://rosettacode.org/mw/index.php?title=Doubly-linked_list/Element_insertion&action=edit&section=51
// file: doubly_linked_list_element_insertion
// name: Doubly-linked list/Element insertion
// author: PureFox
// license: MIT

import "/modules/llist" for DLinkedList

var dll = DLinkedList.new(["A", "B"])
dll.insertAfter("A", "C")
System.print(dll)
