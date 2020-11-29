// url: https://rosettacode.org/wiki/Nested_function#Wren
// source: https://rosettacode.org/mw/index.php?title=Nested_function&action=edit&section=64
// file: nested_function
// name: Nested function
// author: PureFox
// license: MIT

var makeList = Fn.new { |sep|
    var counter = 0
    var makeItem = Fn.new { |name|
        counter = counter + 1
        return "%(counter)%(sep)%(name)"
    }
    var items = []
    for (name in ["first", "second", "third"]) {
        items.add(makeItem.call(name))
    }
    System.print(items.join("\n"))
}

makeList.call(". ")
