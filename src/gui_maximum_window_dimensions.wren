// url: https://rosettacode.org/wiki/GUI/Maximum_window_dimensions#Wren
// source: https://rosettacode.org/mw/index.php?title=GUI/Maximum_window_dimensions&action=edit&section=53
// file: gui_maximum_window_dimensions
// name: GUI/Maximum window dimensions
// author: PureFox
// license: MIT

import "input" for Keyboard
import "dome" for Window, Process
import "graphics" for Canvas, Color

class Game {
    static init() {
        Canvas.print("Maximize the window and press 'm'", 0, 0, Color.white)
    }

    static update() {
        if (Keyboard.isKeyDown("m") ) {
            System.print("Maximum window dimensions are %(Window.width) x %(Window.height)")
            Process.exit(0)
        }
    }

    static draw(alpha) {}
}
