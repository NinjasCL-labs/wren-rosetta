// url: https://rosettacode.org/wiki/File_extension_is_in_extensions_list#Wren
// source: https://rosettacode.org/mw/index.php?title=File_extension_is_in_extensions_list&action=edit&section=40
// file: file_extension_is_in_extensions_list
// name: File extension is in extensions list
// author: PureFox
// license: MIT

import "/modules/str" for Str
import "/modules/fmt" for Fmt

var exts = ["zip", "rar", "7z", "gz", "archive", "A##", "tar.bz2"]

var tests = [
    "MyData.a##", "MyData.tar.Gz", "MyData.gzip" , "MyData.7z.backup",
    "MyData...", "MyData", "MyData_v1.0.tar.bz2", "MyData_v1.0.bz2"
]

var ucExts = exts.map { |e| "." + Str.upper(e) }
for (test in tests) {
    var ucTest = Str.upper(test)
    var hasExt = false
    var i = 0
    for (ext in ucExts) {
        hasExt = ucTest.endsWith(ext)
        if (hasExt) {
            Fmt.print("$-20s $s (extension: $s)", test, hasExt, exts[i])
            break
        }
        i = i + 1
    }
    if (!hasExt) Fmt.print("$-20s $-5s", test, hasExt)
}
