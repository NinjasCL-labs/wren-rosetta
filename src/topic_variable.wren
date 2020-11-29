// url: https://rosettacode.org/wiki/Topic_variable#Wren
// source: https://rosettacode.org/mw/index.php?title=Topic_variable&action=edit&section=32
// file: topic_variable
// name: Topic variable
// author: PureFox
// license: MIT

var T // global scope

var doSomethingWithT = Fn.new { [T * T, T.sqrt] }

T = 3
System.print(doSomethingWithT.call())
