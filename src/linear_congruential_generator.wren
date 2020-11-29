// url: https://rosettacode.org/wiki/Linear_congruential_generator#Wren
// source: https://rosettacode.org/mw/index.php?title=Linear_congruential_generator&action=edit&section=74
// file: linear_congruential_generator
// name: Linear congruential generator
// author: PureFox
// license: MIT

import "/modules/big" for BigInt
import "/modules/fmt" for Fmt

// basic linear congruential generator
var lcg = Fn.new { |a, c, m, seed|
    var r = BigInt.new(seed)
    return Fn.new {
        r = (r*a + c) % m
        return r
    }
}

// Microsoft generator has extra division step
var msg = Fn.new { |seed|
    var g = lcg.call(214013, 2531011, 1<<31, seed)
    return Fn.new { g.call()/(1 << 16) }
}

var example = Fn.new { |seed|
    System.print("\nWith seed = %(seed):")
    var bsd = lcg.call(1103515245, 12345, 1<<31, seed)
    var msf = msg.call(seed)
    System.print("       BSD      MSF")
    for (i in 0..4) {
        Fmt.print("$10i    $5i", bsd.call(), msf.call())
    }
}

example.call(0)
example.call(1)
