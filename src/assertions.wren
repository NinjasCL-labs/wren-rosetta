// url: https://rosettacode.org/wiki/Assertions#Wren
// source: https://rosettacode.org/mw/index.php?title=Assertions&action=edit&section=110
// file: assertions
// name: Assertions
// author: PureFox
// license: MIT

var assertEnabled = true

var assert = Fn.new { |cond|
    if (assertEnabled && !cond) Fiber.abort("Assertion failure")
}

var x = 42
assert.call(x == 42)  // fine
assertEnabled = false
assert.call(x > 42)   // no error
assertEnabled = true
assert.call(x > 42)   // error
