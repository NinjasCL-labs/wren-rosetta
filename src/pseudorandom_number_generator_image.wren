// url: https://rosettacode.org/wiki/Pseudorandom_number_generator_image#Wren
// source: https://rosettacode.org/mw/index.php?title=Pseudorandom_number_generator_image&action=edit&section=7
// file: pseudorandom_number_generator_image
// name: Pseudorandom number generator image
// author: PureFox
// license: MIT

import "dome" for Window
import "graphics" for Canvas, Color
import "random" for Random

class Game {
    static init() {
        Window.title = "Pseudorandom Number Generator Image"
        Window.resize(1000, 1000)
        Canvas.resize(1000, 1000)
        var r = Random.new() // generates seed from current time
        for (x in 0...1000) {
            for (y in 0...1000) {
                var c = Color.rgb(r.int(256), r.int(256), r.int(256))
                Canvas.pset(x, y, c)
            }
        }
    }

    static update() {}

    static draw(dt) {}
}
