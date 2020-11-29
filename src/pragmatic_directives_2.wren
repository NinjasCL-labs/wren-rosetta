// url: https://rosettacode.org/wiki/Pragmatic_directives#Wren
// source: https://rosettacode.org/mw/index.php?title=Pragmatic_directives&action=edit&section=51
// file: pragmatic_directives-2
// name: Pragmatic directives
// author: PureFox
// license: MIT

/*pragmatic_directives.wren*/

import "os" for Platform

var os
if (Platform.isWindows) {
    import "/windows" for Windows
    os = Windows
} else {
    import "/linux" for Linux
    os = Linux
}
System.print("%(os.message) which has a \"%(os.lineSeparator)\" line separator.")
