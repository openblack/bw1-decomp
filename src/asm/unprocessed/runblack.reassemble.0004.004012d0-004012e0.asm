.code32
.intel_syntax noprefix
.align 16

.globl _jmp_addr_0x004012d0

_jmp_addr_0x004012d0:
.att_syntax
                         push             $_jmp_addr_0x004012e0                      // 0x004012d0    68e0124000
.intel_syntax noprefix
                         call             _atexit                                    // 0x004012d5    e8b7443c00
                         pop              ecx                                        // 0x004012da    59
                         ret                                                         // 0x004012db    c3

.byte 0x90, 0x25, 0xa2, 0x03                                                         // 0x004012dc

_jmp_addr_0x004012e0:    {disp32} mov       cl, byte ptr [_data_bytes_byte_0x00c3c680]     // 0x004012e0    8a0d80c6c300
                         mov                al, 0x01                                 // 0x004012e6    b001
                         test               al, cl                                   // 0x004012e8    84c8
                         {disp8} jne        _jmp_addr_0x00401312                     // 0x004012ea    7526
                         push               esi                                      // 0x004012ec    56
                         or.s               cl, al                                   // 0x004012ed    0ac8
                         push               edi                                      // 0x004012ef    57
                         {disp32} mov       byte ptr [_data_bytes_byte_0x00c3c680], cl     // 0x004012f0    880d80c6c300
                         mov                esi, 0x00c4cc68                          // 0x004012f6    be68ccc400
                         mov                edi, 0x00000093                          // 0x004012fb    bf93000000
_jmp_addr_0x00401300:    sub                esi, 0x000001c8                          // 0x00401300    81eec8010000
                         mov.s              ecx, esi                                 // 0x00401306    8bce
                         call               _jmp_addr_0x00436960                     // 0x00401308    e853560300
                         dec                edi                                      // 0x0040130d    4f
                         {disp8} jne        _jmp_addr_0x00401300                     // 0x0040130e    75f0
                         pop                edi                                      // 0x00401310    5f
                         pop                esi                                      // 0x00401311    5e
_jmp_addr_0x00401312:    ret                                                         // 0x00401312    c3
                         nop                                                         // 0x00401313    90
                         nop                                                         // 0x00401314    90
                         nop                                                         // 0x00401315    90
                         nop                                                         // 0x00401316    90
                         nop                                                         // 0x00401317    90
                         nop                                                         // 0x00401318    90
                         nop                                                         // 0x00401319    90
                         nop                                                         // 0x0040131a    90
                         nop                                                         // 0x0040131b    90
                         nop                                                         // 0x0040131c    90
                         nop                                                         // 0x0040131d    90
                         nop                                                         // 0x0040131e    90
                         nop                                                         // 0x0040131f    90