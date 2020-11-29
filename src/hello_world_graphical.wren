// url: https://rosettacode.org/wiki/Hello_world/Graphical#Wren
// source: https://rosettacode.org/mw/index.php?title=Hello_world/Graphical&action=edit&section=212
// file: hello_world_graphical
// name: Hello world/Graphical
// author: PureFox
// license: MIT

import "graphics" for Canvas, Color

class Game {
    static init() {
        Canvas.print("Goodbye, World!", 10, 10, Color.white)
    }

    static update() {}

    static draw(alpha) {}
}
