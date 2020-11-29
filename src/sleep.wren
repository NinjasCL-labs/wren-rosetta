// url: https://rosettacode.org/wiki/Sleep#Wren
// source: https://rosettacode.org/mw/index.php?title=Sleep&action=edit&section=136
// file: sleep
// name: Sleep
// author: PureFox
// license: MIT

import "timer" for Timer
import "io" for Stdin, Stdout

System.write("Enter time to sleep in seconds: ")
Stdout.flush()
var secs
while (true) {
    secs = Num.fromString(Stdin.readLine())
    if (secs == null) {
        System.print("Not a number try again.")
    } else break
}
System.print("Sleeping...")
Timer.sleep((secs*1000).floor)
System.print("Awake!")
