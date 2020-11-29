// url: https://rosettacode.org/wiki/Stack#Wren
// source: https://rosettacode.org/mw/index.php?title=Stack&action=edit&section=135
// file: stack
// name: Stack
// author: PureFox
// license: MIT

import "/modules/seq" for Stack

var s = Stack.new()
s.push(1)
s.push(2)
System.print("Stack contains %(s.toList)")
System.print("Number of elements in stack = %(s.count)")
var item = s.pop()
System.print("'%(item)' popped from the stack")
System.print("Last element is now %(s.peek())")
s.clear()
System.print("Stack cleared")
System.print("Is stack now empty? %((s.isEmpty) ? "yes" : "no")")
