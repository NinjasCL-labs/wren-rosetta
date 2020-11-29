// url: https://rosettacode.org/wiki/Mouse_position#Wren
// source: https://rosettacode.org/mw/index.php?title=Mouse_position&action=edit&section=61
// file: mouse_position
// name: Mouse position
// author: PureFox
// license: MIT

import "dome" for Window
import "graphics" for Canvas
import "input" for Mouse

class Game {
    static init() {
        Window.title = "Mouse position"
        Canvas.resize(400, 400)
        Window.resize(400, 400)     
        // get initial mouse coordinates
        __px = Mouse.x
        __py = Mouse.y
        __ticks = 0
        System.print("The coordinates of the mouse relative to the canvas are:")
    }

    static update() {
        __ticks = __ticks + 1
        if (__ticks%60 == 0) {
            // get current mouse coordinates
            var cx = Mouse.x
            var cy = Mouse.y
            // if it's moved in the last second, report new position
            if (cx != __px || cy != __py) {
                System.print([cx, cy])
                __px = cx
                __py = cy
            }
        }
    }

    static draw(alpha) {}
}
