// url: https://rosettacode.org/wiki/Get_system_command_output#Wren
// source: https://rosettacode.org/mw/index.php?title=Get_system_command_output&action=edit&section=64
// file: get_system_command_output
// name: Get system command output
// author: PureFox
// license: MIT

/* get_system_command_output.wren */
class Command {
    foreign static output(name, param) // the code for this is provided by Go
}

System.print(Command.output("ls", "-ls"))
