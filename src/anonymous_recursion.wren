// url: https://rosettacode.org/wiki/Anonymous_recursion#Wren
// source: https://rosettacode.org/mw/index.php?title=Anonymous_recursion&action=edit&section=113
// file: anonymous_recursion
// name: Anonymous recursion
// author: Fusta, PureFox
// license: GNU FDL 1.2

class Fibonacci {
    static compute(n) {
        var fib
        fib = Fn.new {|n|
            if (n < 2) return n
            return fib.call(n - 1) + fib.call(n - 2)
        }

        if (n < 0) return null
        return fib.call(n)
    }
}

System.print(Fibonacci.compute(36))
