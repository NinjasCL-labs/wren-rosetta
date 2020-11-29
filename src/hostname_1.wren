// url: https://rosettacode.org/wiki/Hostname#Wren
// source: https://rosettacode.org/mw/index.php?title=Hostname&action=edit&section=118
// file: hostname-1
// name: Hostname
// author: PureFox
// license: MIT

/* hostname.go */
package main

import (
    wren "github.com/crazyinfin8/WrenGo"
    "os"
)

type any = interface{}

func hostname(vm *wren.VM, parameters []any) (any, error) {
    name, _ := os.Hostname()
    return name, nil
}

func main() {
    vm := wren.NewVM()
    fileName := "hostname.wren"
    methodMap := wren.MethodMap{"static name()": hostname}
    classMap := wren.ClassMap{"Host": wren.NewClass(nil, nil, methodMap)}
    module := wren.NewModule(classMap)
    vm.SetModule(fileName, module)
    vm.InterpretFile(fileName)
    vm.Free()
}
