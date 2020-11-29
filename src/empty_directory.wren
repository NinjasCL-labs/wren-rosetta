// url: https://rosettacode.org/wiki/Empty_directory#Wren
// source: https://rosettacode.org/mw/index.php?title=Empty_directory&action=edit&section=72
// file: empty_directory
// name: Empty directory
// author: PureFox
// license: MIT

import "io" for Directory

var isEmptyDir = Fn.new { |path|
    if (!Directory.exists(path)) Fiber.abort("Directory at '%(path)' does not exist.")
    return Directory.list(path).count == 0
}

var path = "test"
var empty = isEmptyDir.call(path)
System.print("'%(path)' is %(empty ? "empty" : "not empty")")
