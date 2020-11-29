// url: https://rosettacode.org/wiki/Numbers_with_prime_digits_whose_sum_is_13#Wren
// source: https://rosettacode.org/mw/index.php?title=Numbers_with_prime_digits_whose_sum_is_13&action=edit&section=25
// file: numbers_with_prime_digits_whose_sum_is_13
// name: Numbers with prime digits whose sum is 13
// author: PureFox
// license: MIT

import "/modules/math" for Nums
import "/modules/seq" for Lst
import "/modules/sort" for Sort

var combrep // recursive
combrep = Fn.new { |n, lst|
    if (n == 0 ) return [[]]
    if (lst.count == 0) return []
    var r = combrep.call(n, lst[1..-1])
    for (x in combrep.call(n-1, lst)) {
        var y = x.toList
        y.add(lst[0])
        r.add(y)
    }
    return r
}

var permute // recursive
permute = Fn.new { |input|
    if (input.count == 1) return [input]
    var perms = []
    var toInsert = input[0]
    for (perm in permute.call(input[1..-1])) {
        for (i in 0..perm.count) {
            var newPerm = perm.toList
            newPerm.insert(i, toInsert)
            perms.add(newPerm)
        }
    }
    return perms
}

var primes = [2, 3, 5, 7]
var res = []
for (n in 3..6) {
    var reps = combrep.call(n, primes)
    for (rep in reps) {
        if (Nums.sum(rep) == 13) {
            var perms = permute.call(rep)
            for (i in 0...perms.count) perms[i] = Num.fromString(perms[i].join())
            res.addAll(Lst.distinct(perms))
        }
    }
}
Sort.quick(res)
System.print("Those numbers whose digits are all prime and sum to 13 are:")
System.print(res)
