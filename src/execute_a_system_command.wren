// url: https://rosettacode.org/wiki/Execute_a_system_command#Wren
// source: https://rosettacode.org/mw/index.php?title=Execute_a_system_command&action=edit&section=147
// file: execute_a_system_command
// name: Execute a system command
// author: PureFox
// license: MIT

/* run_system_command.wren */
class Command {
    foreign static exec(name, param) // the code for this is provided by Go
}

Command.exec("ls", "-lt")
System.print()
Command.exec("dir", "")
