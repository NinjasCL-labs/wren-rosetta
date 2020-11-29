// url: https://rosettacode.org/wiki/Break_OO_privacy#Wren
// source: https://rosettacode.org/mw/index.php?title=Break_OO_privacy&action=edit&section=40
// file: break_oo_privacy
// name: Break OO privacy
// author: PureFox
// license: MIT

class Safe {
    construct new() { _safe = 42 } // the field _safe is private
    safe { _safe }                 // provides public access to field
    doubleSafe { notSoSafe_ }      // another public method
    notSoSafe_ { _safe * 2 }       // intended only for private use but still accesible externally
}

var s = Safe.new()
var a = [s.safe, s.doubleSafe, s.notSoSafe_]
for (e in a) System.print(e)
