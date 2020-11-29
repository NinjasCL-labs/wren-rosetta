// url: https://rosettacode.org/wiki/Singly-linked_list/Element_insertion#Wren
// source: https://rosettacode.org/mw/index.php?title=Singly-linked_list/Element_insertion&action=edit&section=64
// file: singly_linked_list_element_insertion
// name: Singly-linked list/Element insertion
// author: PureFox
// license: MIT

import "/llist" for LinkedList

var ll = LinkedList.new(["A", "B"])
ll.insertAfter("A", "C")
System.print(ll)
