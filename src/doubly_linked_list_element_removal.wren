// url: https://rosettacode.org/wiki/Doubly-linked_list/Element_removal#Wren
// source: https://rosettacode.org/mw/index.php?title=Doubly-linked_list/Element_removal&action=edit&section=6
// file: doubly_linked_list_element_removal
// name: Doubly-linked list/Element removal
// author: PureFox
// license: MIT

import "/modules/llist" for DLinkedList

var dll = DLinkedList.new(["dog", "cat", "bear"])
System.print("Before removals: %(dll)")
dll.remove("cat") // remove by element
System.print("After removal 1: %(dll)")
dll.removeAt(0)   // remove by index
System.print("After removal 2: %(dll)")
