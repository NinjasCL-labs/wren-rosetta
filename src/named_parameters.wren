// url: https://rosettacode.org/wiki/Named_parameters#Wren
// source: https://rosettacode.org/mw/index.php?title=Named_parameters&action=edit&section=78
// file: named_parameters
// name: Named parameters
// author: PureFox
// license: MIT

var printName = Fn.new { |name|
    if (!(name is Map && name["first"] != null && name["last"] !=  null)) {
        Fiber.abort("Argument must be a map with keys \"first\" and \"last\"")
    }
    System.print("%(name["first"]) %(name["last"])")
}

printName.call({"first": "Abraham", "last": "Lincoln"}) // normal order
printName.call({"last": "Trump", "first": "Donald"})  // reverse order
printName.call({"forename": "Boris", "lastname": "Johnson"}) // wrong parameter names
