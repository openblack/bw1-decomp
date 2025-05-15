.intel_syntax noprefix
.align 16

.globl _jmp_addr_0x004012d0

_jmp_addr_0x004012d0:    
push             0x004012e0  // 0x004012d0    68e0124000
call             _atexit     // 0x004012d5    e8b7443c00
pop              ecx         // 0x004012da    59
ret                          // 0x004012db    c3

.byte 0x90, 0x25, 0xa2, 0x03 // 0x004012dc

