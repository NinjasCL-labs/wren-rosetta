// url: https://rosettacode.org/wiki/Environment_variables#Wren
// source: https://rosettacode.org/mw/index.php?title=Environment_variables&action=edit&section=116
// file: environment_variables-1
// name: Environment variables
// author: PureFox
// license: MIT

/* environment_variables.go */
package main

import (
    wren "github.com/crazyinfin8/WrenGo"
    "os"
)

type any = interface{}

func getEnvironVariable(vm *wren.VM, parameters []any) (any, error) {
    name := parameters[1].(string)
    return os.Getenv(name), nil
}

func main() {
    vm := wren.NewVM()
    fileName := "environment_variables.wren"
    methodMap := wren.MethodMap{"static variable(_)": getEnvironVariable}
    classMap := wren.ClassMap{"Environ": wren.NewClass(nil, nil, methodMap)}
    module := wren.NewModule(classMap)
    vm.SetModule(fileName, module)
    vm.InterpretFile(fileName)
    vm.Free()
}
