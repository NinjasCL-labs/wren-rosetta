// url: https://rosettacode.org/wiki/Gamma_function#Wren
// source: https://rosettacode.org/mw/index.php?title=Gamma_function&action=edit&section=87
// file: gamma_function
// name: Gamma function
// author: PureFox
// license: MIT

import "/fmt" for Fmt
import "/math" for Math

var stirling = Fn.new { |x| (2 * Num.pi / x).sqrt * (x / Math.e).pow(x) }

System.print(" x\tStirling\t\tLanczos\n")
for (i in 1..20) {
    var d = i / 10
    System.write("%(Fmt.f(4, d, 2))\t")
    System.write("%(Fmt.f(16, stirling.call(d), 14))\t")
    System.print("%(Fmt.f(16, Math.gamma(d), 14))")
}
