// url: https://rosettacode.org/wiki/Sum_multiples_of_3_and_5#Wren
// source: https://rosettacode.org/mw/index.php?title=Sum_multiples_of_3_and_5&action=edit&section=118
// file: sum_multiples_of_3_and_5
// name: Sum multiples of 3 and 5
// author: PureFox
// license: MIT

var sum35 = Fn.new { |n|
    n = n - 1
    var s3 = (n/3).floor
    var s5 = (n/5).floor
    var s15 = (n/15).floor
    s3 = 3 * s3 * (s3+1)
    s5 = 5 * s5 * (s5+1)
    s15 = 15 * s15 * (s15+1)
    return (s3 + s5 - s15)/2
}

System.print(sum35.call(1000))
