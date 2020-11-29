// url: https://rosettacode.org/wiki/Unix/ls#Wren
// source: https://rosettacode.org/mw/index.php?title=Unix/ls&action=edit&section=64
// file: unix_ls
// name: Unix/ls
// author: PureFox
// license: MIT

import "io" for Directory

var path = "./" // or whatever

// Note that output is automatically sorted using this method. 
Directory.list(path).each { |f| System.print(f) }
