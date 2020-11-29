// url: https://rosettacode.org/wiki/Queue/Definition#Wren
// source: https://rosettacode.org/mw/index.php?title=Queue/Definition&action=edit&section=112
// file: queue_definition
// name: Queue/Definition
// author: PureFox
// license: MIT

import "/modules/queue" for Queue

var q = Queue.new()
var item = q.pop()
if (item == null) {
    System.print("ERROR: attempted to pop from an empty queue")
} else {
    System.print("'%(item)' was popped")
}
