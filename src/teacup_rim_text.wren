// url: https://rosettacode.org/wiki/Teacup_rim_text#Wren
// source: https://rosettacode.org/mw/index.php?title=Teacup_rim_text&action=edit&section=27
// file: teacup_rim_text
// name: Teacup rim text
// author: PureFox
// license: MIT

import "io" for File
import "/modules/str" for Str
import "/modules/sort" for Find

var readWords = Fn.new { |fileName|
    var dict = File.read(fileName).split("\n")
    return dict.where { |w| w.count >= 3 }.toList
}

var dicts = ["mit10000.txt", "unixdict.txt"]
for (dict in dicts) {
    System.print("Using %(dict):\n")
    var words = readWords.call(dict)
    var n = words.count
    var used = {}
    for (word in words) {
        var outer = false
        var variants = [word]
        var word2 = word
        for (i in 0...word.count-1) {
            word2 = Str.lshift(word2)
            if (word == word2 || used[word2]) {
                outer = true
                break
            }
            var ix = Find.first(words, word2)
            if (ix == n || words[ix] != word2) {
                outer = true
                break
            }
            variants.add(word2)
        }
        if (!outer) {
            for (variant in variants) used[variant] = true
            System.print(variants)
        }
    }
    System.print()
}
