// url: https://rosettacode.org/wiki/Canonicalize_CIDR#Wren
// source: https://rosettacode.org/mw/index.php?title=Canonicalize_CIDR&action=edit&section=17
// file: canonicalize_cidr
// name: Canonicalize CIDR
// author: PureFox
// license: MIT

import "/modules/fmt" for Fmt, Conv
import "/modules/str" for Str

// canonicalize a CIDR block: make sure none of the host bits are set
var canonicalize = Fn.new { |cidr|
    // dotted-decimal / bits in network part
    var split = cidr.split("/")
    var dotted = split[0]
    var size = Num.fromString(split[1])

    // get IP as binary string
    var binary = dotted.split(".").map { |n| Fmt.swrite("$08b", Num.fromString(n)) }.join()

    // replace the host part with all zeros
    binary = binary[0...size] + "0" * (32 - size)

    // convert back to dotted-decimal
    var chunks = Str.chunks(binary, 8)
    var canon = chunks.map { |c| Conv.atoi(c, 2) }.join(".")

    // and return
    return canon + "/" + split[1]
}

var tests = [
    "87.70.141.1/22",
    "36.18.154.103/12",
    "62.62.197.11/29",
    "67.137.119.181/4",
    "161.214.74.21/24",
    "184.232.176.184/18"
]

for (test in tests) {
    Fmt.print("$-18s -> $s", test, canonicalize.call(test))
}
