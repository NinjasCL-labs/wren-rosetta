// url: https://rosettacode.org/wiki/Type_detection#Wren
// source: https://rosettacode.org/mw/index.php?title=Type_detection&action=edit&section=34
// file: type_detection
// name: Type detection
// author: PureFox
// license: MIT

import "/fmt" for Fmt

var showType = Fn.new { |obj|
    System.print("%(Fmt.s(10, obj)) has type %(Fmt.q(obj.type))")
}

var a  = [4, 3.728, [1, 2], { 1: "first" }, true, null, 1..6, "Rosetta"]
a.each { |e| showType.call(e) }
