// url: https://rosettacode.org/wiki/CRC-32#Wren
// source: https://rosettacode.org/mw/index.php?title=CRC-32&action=edit&section=101
// file: crc_32
// name: CRC-32
// author: PureFox
// license: MIT

import "/modules/fmt" for Conv

class CRC32 {
    static init() {
        __table = List.filled(256, 0)
        for (i in 0..255) {
            var word = i
            for (j in 0..7) {
                if (word&1 == 1) {
                    word = (word >> 1) ^ 0xedb88320
                } else {
                    word = word >> 1
                }
            }
            __table[i] = word
         }
    }

    static compute(s) {
        var crc = ~0
        var le = s.bytes.count
        for (i in 0...le) {
            var crb = crc & 0xff
            crc = __table[crb^s[i].bytes[0]] ^ (crc >> 8)
        }
        return ~crc
    }
}

CRC32.init()
var crc = CRC32.compute("The quick brown fox jumps over the lazy dog")
System.print(Conv.hex(crc))
