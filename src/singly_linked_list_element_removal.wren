// url: https://rosettacode.org/wiki/Singly-linked_list/Element_removal#Wren
// source: https://rosettacode.org/mw/index.php?title=Singly-linked_list/Element_removal&action=edit&section=18
// file: singly_linked_list_element_removal
// name: Singly-linked list/Element removal
// author: PureFox
// license: MIT

import "/modules/llist" for LinkedList

var ll = LinkedList.new(["dog", "cat", "bear"])
System.print("Before removals: %(ll)")
ll.remove("cat") // remove by element
System.print("After removal 1: %(ll)")
ll.removeAt(0)   // remove by index
System.print("After removal 2: %(ll)")
