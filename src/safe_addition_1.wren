// url: https://rosettacode.org/wiki/Safe_addition#Wren
// source: https://rosettacode.org/mw/index.php?title=Safe_addition&action=edit&section=30
// file: safe_addition-1
// name: Safe addition
// author: PureFox
// license: MIT

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#include "wren.h"

void Interval_nextAfter(WrenVM* vm) {
    double x = wrenGetSlotDouble(vm, 1);
    double y = wrenGetSlotDouble(vm, 2);    
    wrenSetSlotDouble(vm, 0, nextafter(x, y));
}

WrenForeignMethodFn bindForeignMethod(
    WrenVM* vm,
    const char* module,
    const char* className,
    bool isStatic,
    const char* signature) {
    if (strcmp(module, "main") == 0) {
        if (strcmp(className, "Interval") == 0) {
            if (isStatic &amp;&amp; strcmp(signature, "nextAfter_(_,_)") == 0) {
                return Interval_nextAfter;
            }
        }
    }
    return NULL;
}

static void writeFn(WrenVM* vm, const char* text) {
    printf("%s", text);
}

void errorFn(WrenVM* vm, WrenErrorType errorType, const char* module, const int line, const char* msg) {
    switch (errorType) {
        case WREN_ERROR_COMPILE:
            printf("[%s line %d] [Error] %s\n", module, line, msg);
            break;
        case WREN_ERROR_STACK_TRACE:
            printf("[%s line %d] in %s\n", module, line, msg);
            break;
        case WREN_ERROR_RUNTIME:
            printf("[Runtime Error] %s\n", msg);
            break;
    }
}

char *readFile(const char *fileName) {
    FILE *f = fopen(fileName, "r");
    fseek(f, 0, SEEK_END);
    long fsize = ftell(f);
    rewind(f);
    char *script = malloc(fsize + 1);
    fread(script, 1, fsize, f);
    fclose(f);
    script[fsize] = 0;
    return script;
}

int main() {
    WrenConfiguration config;
    wrenInitConfiguration(&amp;config);
    config.writeFn = &amp;writeFn;
    config.errorFn = &amp;errorFn;
    config.bindForeignMethodFn = &amp;bindForeignMethod;
    WrenVM* vm = wrenNewVM(&amp;config);
    const char* module = "main";
    const char* fileName = "safe_addition.wren";
    char *script = readFile(fileName);
    WrenInterpretResult result = wrenInterpret(vm, module, script);
    switch (result) {
        case WREN_RESULT_COMPILE_ERROR:
            printf("Compile Error!\n");
            break;
        case WREN_RESULT_RUNTIME_ERROR:
            printf("Runtime Error!\n");
            break;
        case WREN_RESULT_SUCCESS:
            break;
    }
    wrenFreeVM(vm);
    free(script);
    return 0;
}</string.h></math.h></stdio.h></stdlib.h>
