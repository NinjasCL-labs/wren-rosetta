// url: https://rosettacode.org/wiki/Permutations_with_some_identical_elements#Wren
// source: https://rosettacode.org/mw/index.php?title=Permutations_with_some_identical_elements&action=edit&section=17
// file: permutations_with_some_identical_elements
// name: Permutations with some identical elements
// author: PureFox
// license: MIT

var shouldSwap = Fn.new { |s, start, curr|
    if (start < curr) {
        for (i in start...curr) {
            if (s[i] == s[curr]) return false
        }
    }
    return true
}

var findPerms
findPerms = Fn.new { |s, index, n, res|
    if (index >= n) {
        res.add(s.join())
        return
    }
    if (index >= n) return
    for (i in index...n) {
        var check = shouldSwap.call(s, index, i)
        if (check) {
            var t = s[index]
            s[index] = s[i]
            s[i] = t
            System.write("") // guard against VM recursion bug
            findPerms.call(s, index+1, n, res)
            t = s[index]
            s[index] = s[i]
            s[i] = t
        }
    }
}

var createList = Fn.new { |nums, charSet|
    var chars = []
    for (i in 0...nums.count) {
        for (j in 0...nums[i]) chars.add(charSet[i])
    }
    return chars
}

var res = []
var nums = [2, 1]
var s = createList.call(nums, "12")
findPerms.call(s, 0, s.count, res)
System.print(res)
System.print()

res.clear()
nums = [2, 3, 1]
s = createList.call(nums, "123")
findPerms.call(s, 0, s.count, res)
System.print(res)
System.print()

res.clear()
s = createList.call(nums, "ABC")
findPerms.call(s, 0, s.count, res)
System.print(res)
