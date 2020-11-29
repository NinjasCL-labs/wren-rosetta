// url: https://rosettacode.org/wiki/Babbage_problem#Wren
// source: https://rosettacode.org/mw/index.php?title=Babbage_problem&action=edit&section=131
// file: babbage_problem
// name: Babbage problem
// author: PureFox
// license: MIT

/*
    The answer must be an even number and it can't be less than the square root of 269,696.
    So, if we start from that, keep on adding 2 and squaring it we'll eventually find the answer.
*/

import "/modules/fmt" for Fmt                // this enables us to format numbers with thousand separators

var start = 269696.sqrt.ceil         // get the next integer higher than (or equal to) the square root
start = (start/2).ceil * 2           // if it's odd, use the next even integer
var i = start                        // assign it to a variable 'i' for use in the following loop
while (true) {                       // loop indefinitely till we find the answer
    var sq = i * i                   // get the square of 'i'
    var last6 = sq % 1000000         // get its last 6 digits by taking the remainder after division by a million
    if (last6 == 269696) {           // if those digits are 269696, we're done and can print the result
        Fmt.print("The lowest number whose square ends in 269,696 is $,d.", i)
        Fmt.print("Its square is $,d.", sq)
        break                        // break from the loop and end the program
    }
    i = i + 2                        // increase 'i' by 2
}
