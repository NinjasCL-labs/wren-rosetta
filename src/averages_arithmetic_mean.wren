// url: https://rosettacode.org/wiki/Averages/Arithmetic_mean#Wren
// source: https://rosettacode.org/mw/index.php?title=Averages/Arithmetic_mean&action=edit&section=190
// file: averages_arithmetic_mean
// name: Averages/Arithmetic mean
// author: Fusta
// license: GNU FDL 1.2

class Arithmetic {
    static mean(arr) {
        if (arr.count == 0) Fiber.abort("Length must be greater than zero")
        return arr.reduce(Fn.new{ |x,y| x+y }) / arr.count
    }
}
Arithmetic.mean([1,2,3,4,5]) // 3
