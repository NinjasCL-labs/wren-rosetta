// url: https://rosettacode.org/wiki/Magic_squares_of_doubly_even_order#Wren
// source: https://rosettacode.org/mw/index.php?title=Magic_squares_of_doubly_even_order&action=edit&section=39
// file: magic_squares_of_doubly_even_order
// name: Magic squares of doubly even order
// author: PureFox
// license: MIT

import "/fmt" for Conv, Fmt

var magicSquareDoublyEven = Fn.new { |n|
    if (n < 4 || n%4 != 0) Fiber.abort("Base must be a positive multiple of 4")

    // pattern of count-up vs count-down zones
    var bits = Conv.atoi("1001011001101001", 2)
    var size = n * n
    var mult = (n/4).floor // how many multiples of 4
    var result = List.filled(n, null)
    for (i in 0...n) result[i] = List.filled(n, 0)
    var i = 0
    for (r in 0...n) {
        for (c in 0...n) {
            var bitPos = (c/mult).floor + (r/mult).floor * 4
            result[r][c] = ((bits & (1<<bitpos i="" :="" size="" return="" result="" var="" n="8" for="" in="" magicsquaredoublyeven.call="" ia="" fmt.write="" system.print="" constant="">

{{out}}
<pre>
 1   2  62  61  60  59   7   8  
 9  10  54  53  52  51  15  16  
48  47  19  20  21  22  42  41  
40  39  27  28  29  30  34  33  
32  31  35  36  37  38  26  25  
24  23  43  44  45  46  18  17  
49  50  14  13  12  11  55  56  
57  58   6   5   4   3  63  64  

Magic constant 260
</pre>
</bitpos>
