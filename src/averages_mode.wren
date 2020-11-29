// url: https://rosettacode.org/wiki/Averages/Mode#Wren
// source: https://rosettacode.org/mw/index.php?title=Averages/Mode&action=edit&section=90
// file: averages_mode
// name: Averages/Mode
// author: Fusta
// license: GNU FDL 1.2

class Arithmetic {
    static mode(arr) {
        var map = {}
        for (e in arr) {
            if (map[e] == null) map[e] = 0
            map[e] = map[e] + 1
        }
        var max = map.values.reduce {|x, y| x > y ? x : y}
        return map.keys.where {|x| map[x] == max}.toList
    }
}

System.print(Arithmetic.mode([1,2,3,4,5,5,51,2,3]))
