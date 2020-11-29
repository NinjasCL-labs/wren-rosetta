// url: https://rosettacode.org/wiki/Singly-linked_list/Element_definition#Wren
// source: https://rosettacode.org/mw/index.php?title=Singly-linked_list/Element_definition&action=edit&section=85
// file: singly_linked_list_element_definition
// name: Singly-linked list/Element definition
// author: PureFox
// license: MIT

import "/llist" for Node

var n1 = Node.new(1)
var n2 = Node.new(2)
n1.next = n2
System.print(["node 1", "data = %(n1.data)", "next = %(n1.next)"])
System.print(["node 2", "data = %(n2.data)", "next = %(n2.next)"])
