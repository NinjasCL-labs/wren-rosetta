// url: https://rosettacode.org/wiki/Call_a_foreign-language_function#Wren
// source: https://rosettacode.org/mw/index.php?title=Call_a_foreign-language_function&action=edit&section=90
// file: call_a_foreign_language_function-1
// name: Call a foreign-language function
// author: PureFox
// license: MIT

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "wren.h"

void C_strdup(WrenVM* vm) {
    const char *s = wrenGetSlotString(vm, 1);
    char *t = strdup(s);    
    wrenSetSlotString(vm, 0, t);
    free(t);
}

WrenForeignMethodFn bindForeignMethod(
    WrenVM* vm,
    const char* module,
    const char* className,
    bool isStatic,
    const char* signature) {
    if (strcmp(module, "main") == 0) {
        if (strcmp(className, "C") == 0) {
            if (isStatic &amp;&amp; strcmp(signature, "strdup(_)") == 0) {
                return C_strdup;
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
    const char* fileName = "call_foreign_language_function.wren";
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
}</string.h></stdio.h></stdlib.h>
