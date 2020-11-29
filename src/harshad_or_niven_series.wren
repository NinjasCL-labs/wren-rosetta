// url: https://rosettacode.org/wiki/Harshad_or_Niven_series#Wren
// source: https://rosettacode.org/mw/index.php?title=Harshad_or_Niven_series&action=edit&section=93
// file: harshad_or_niven_series
// name: Harshad or Niven series
// author: PureFox
// license: MIT

var niven = Fiber.new {
    var n = 1
    while (true) {
        var i = n
        var sum = 0
        while (i > 0) {
            sum = sum + i%10
            i = (i/10).floor
        }
        if (n%sum == 0) Fiber.yield(n)
        n = n + 1
   }
}

System.print("The first 20 Niven numbers are:")
for (i in 1..20) {
    System.write("%(niven.call()) ")
}
System.write("\n\nThe first Niven number greater than 1000 is: ")
while (true) {
    var niv = niven.call()
    if (niv > 1000) {
        System.print(niv)
        break
    }
}
