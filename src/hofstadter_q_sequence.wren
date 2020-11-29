// url: https://rosettacode.org/wiki/Hofstadter_Q_sequence#Wren
// source: https://rosettacode.org/mw/index.php?title=Hofstadter_Q_sequence&action=edit&section=86
// file: hofstadter_q_sequence
// name: Hofstadter Q sequence
// author: PureFox
// license: MIT

var N = 1e5
var q = List.filled(N + 1, 0)
q[1] = 1
q[2] = 1
for (n in 3..N) q[n] = q[n - q[n-1]] + q[n - q[n-2]]

System.print("The first ten terms of the Hofstadter Q sequence are:")
System.print(q[1..10])
System.print("\nThe thousandth term is %(q[1000]).")
var flips = 0
for (n in 2..N) {
    if (q[n] < q[n-1]) flips = flips + 1
}
System.print("\nThere are %(flips) flips in the first %(N) terms.")
