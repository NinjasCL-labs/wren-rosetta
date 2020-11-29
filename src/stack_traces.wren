// url: https://rosettacode.org/wiki/Stack_traces#Wren
// source: https://rosettacode.org/mw/index.php?title=Stack_traces&action=edit&section=57
// file: stack_traces
// name: Stack traces
// author: PureFox
// license: MIT

var func2 = Fn.new {
    Fiber.abort("Forced error.")
}

var func1 = Fn.new {
    func2.call()
}

func1.call()
