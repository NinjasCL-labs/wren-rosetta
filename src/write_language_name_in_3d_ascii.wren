// url: https://rosettacode.org/wiki/Write_language_name_in_3D_ASCII#Wren
// source: https://rosettacode.org/mw/index.php?title=Write_language_name_in_3D_ASCII&action=edit&section=77
// file: write_language_name_in_3d_ascii
// name: Write language name in 3D ASCII
// author: PureFox
// license: MIT

var w = [
   "  ____    ____    ____    ",
   " |*   *  |*   *  |*   *   ",
   " | *   * | *   * | *   *  ",
   " *  *   ** /    ** /   /| ",
   "  *  *   *V      *V   / | ",
   "   *  *      /*      /  / ",
   "    *  *____/  *____/  /  ",
   "     * |    | /|    | /   ",
   "      *|____|/ |____|/    "
]

var r = [
   "  _______    ____   ",
   " |*__    *  /    *  ",
   " || |*    */   ___* ",
   " *|_| *       /|__| ",
   "    *  *     //     ",
   "     *  *    *      ",
   "      *  *____*     ",
   "       * |    |     ",
   "        *|____|     "
]

var e = [
   "    ___________       ",
   "   /   _____   *      ",
   "  /   /_____*   *     ",
   " |*       _____/|     ",
   " | *     /|____|/     ",
   " *  *    */_______/*  ",
   "  *  *_____________/| ",
   "   * |            | | ",
   "    *|____________|/  "
]

var n = [
   "  _____  _______       ",
   " |*__  */       *      ",
   " || |*      __   *     ",
   " *|_| *    /| *   *    ",
   "    *  *   */* *   *   ",
   "     *  *   * * *   *  ",
   "      *  *___* * *___* ",
   "       * |   |  *|   | ",
   "        *|___|   |___| "
]

for (i in 0..8) w[i] = w[i].replace("*", "\\")
for (i in 0..8) r[i] = r[i].replace("*", "\\")
for (i in 0..8) e[i] = e[i].replace("*", "\\")
for (i in 0..8) n[i] = n[i].replace("*", "\\")

for (i in 0..8) {
   System.print("%(w[i]) %(r[i]) %(e[i]) %(n[i])")
}
