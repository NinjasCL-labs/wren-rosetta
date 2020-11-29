// url: https://rosettacode.org/wiki/Priority_queue#Wren
// source: https://rosettacode.org/mw/index.php?title=Priority_queue&action=edit&section=73
// file: priority_queue
// name: Priority queue
// author: PureFox
// license: MIT

import "/modules/queue" for PriorityQueue

var tasks = PriorityQueue.new()
tasks.push("Clear drains", 3)
tasks.push("Feed cat", 4)
tasks.push("Make tea", 5)
tasks.push("Solve RC tasks", 1)
tasks.push("Tax return", 2)
while (!tasks.isEmpty) {
    var t = tasks.pop()
    System.print(t)
}
