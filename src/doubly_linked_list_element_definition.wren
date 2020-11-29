// url: https://rosettacode.org/wiki/Doubly-linked_list/Element_definition#Wren
// source: https://rosettacode.org/mw/index.php?title=Doubly-linked_list/Element_definition&action=edit&section=58
// file: doubly_linked_list_element_definition
// name: Doubly-linked list/Element definition
// author: PureFox
// license: MIT

import "/modules/llist" for DNode

var dn1 = DNode.new(1)
var dn2 = DNode.new(2)
dn1.next = dn2
dn1.prev = null
dn2.prev = dn1
dn2.next = null
System.print(["node 1", "data = %(dn1.data)", "prev = %(dn1.prev)", "next = %(dn1.next)"])
System.print(["node 2", "data = %(dn2.data)", "prev = %(dn2.prev)", "next = %(dn2.next)"])
