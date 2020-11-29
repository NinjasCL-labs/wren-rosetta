// url: https://rosettacode.org/wiki/Draw_pixel_2#Wren
// source: https://rosettacode.org/mw/index.php?title=Draw_pixel_2&action=edit&section=17
// file: draw_pixel_2
// name: Draw pixel 2
// author: PureFox
// license: MIT

import "dome" for Window
import "graphics" for Canvas, Color
import "random" for Random

class Game {
    static init() {
        Window.title = "Draw a pixel 2"
        Window.resize(320, 240)
        Canvas.resize(320, 240)
        var yellow = Color.rgb(255, 255, 0)
        var rand = Random.new()
        var randX = rand.int(320)
        var randY = rand.int(240)
        Canvas.pset(randX, randY, yellow)
    }

    static update() {}

    static draw(dt) {}

    static getRGB(col) { "{%(col.r), %(col.g), %(col.b)}" }
}
