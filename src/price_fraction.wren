// url: https://rosettacode.org/wiki/Price_fraction#Wren
// source: https://rosettacode.org/mw/index.php?title=Price_fraction&action=edit&section=89
// file: price_fraction
// name: Price fraction
// author: PureFox
// license: MIT

import "/fmt" for Fmt

var rescale = Fn.new { |v|
    return (v < 0.06) ? 0.10 :
           (v < 0.11) ? 0.18 :
           (v < 0.16) ? 0.26 :
           (v < 0.21) ? 0.32 :
           (v < 0.26) ? 0.38 :
           (v < 0.31) ? 0.44 :
           (v < 0.36) ? 0.50 :
           (v < 0.41) ? 0.54 :
           (v < 0.46) ? 0.58 :
           (v < 0.51) ? 0.62 :
           (v < 0.56) ? 0.66 :
           (v < 0.61) ? 0.70 :
           (v < 0.66) ? 0.74 :
           (v < 0.71) ? 0.78 :
           (v < 0.76) ? 0.82 :
           (v < 0.81) ? 0.86 :
           (v < 0.86) ? 0.90 :
           (v < 0.91) ? 0.94 :
           (v < 0.96) ? 0.98 : 1.00
}

var tests = [0.49, 0.79, 1.00, 0.83, 0.99, 0.23, 0.12, 0.28, 0.72, 0.37, 0.95, 0.51, 0.43, 0.52, 0.84, 0.89, 0.48, 0.48, 0.30, 0.01]
for (test in tests) {
    Fmt.print("$4.2f -> $4.2f", test, rescale.call(test))
}