.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007e6d30
.extern _jmp_addr_0x007e6d70
.extern _jmp_addr_0x007e6da0
.extern _jmp_addr_0x007e7210

.globl _jmp_addr_0x007e7fb0

start_0x007e7fb0_0x007e8090:
// Snippet: asm, [0x007e7fb0, 0x007e8064)
_jmp_addr_0x007e7fb0:    push             ebx                                      // 0x007e7fb0    53
                         mov.s            ebx, ecx                                 // 0x007e7fb1    8bd9
                         push             ebp                                      // 0x007e7fb3    55
                         push             esi                                      // 0x007e7fb4    56
                         mov              eax, dword ptr [ebx]                     // 0x007e7fb5    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x10]              // 0x007e7fb7    8b742410
                         push             edi                                      // 0x007e7fbb    57
                         push             eax                                      // 0x007e7fbc    50
                         push             esi                                      // 0x007e7fbd    56
                         call             _jmp_addr_0x007e6d70                     // 0x007e7fbe    e8adedffff
                         push             0x00c34dec                               // 0x007e7fc3    68ec4dc300
                         call             _jmp_addr_0x007e7210                     // 0x007e7fc8    e843f2ffff
                         push             eax                                      // 0x007e7fcd    50
                         push             esi                                      // 0x007e7fce    56
                         call             _jmp_addr_0x007e6d30                     // 0x007e7fcf    e85cedffff
                         push             esi                                      // 0x007e7fd4    56
                         call             _jmp_addr_0x007e6da0                     // 0x007e7fd5    e8c6edffff
                         add              esp, 0x18                                // 0x007e7fda    83c418
                         mov.s            ebp, eax                                 // 0x007e7fdd    8be8
                         xor.s            edi, edi                                 // 0x007e7fdf    33ff
_jmp_addr_0x007e7fe1:    movsx            eax, byte ptr [ebx + edi * 0x1 + 0x04]   // 0x007e7fe1    0fbe443b04
                         add              eax, -0x41                               // 0x007e7fe6    83c0bf
                         cmp              eax, 0x0d                                // 0x007e7fe9    83f80d
                         {disp8} ja       _jmp_addr_0x007e8026                     // 0x007e7fec    7738
                         xor.s            ecx, ecx                                 // 0x007e7fee    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x007e8078]          // 0x007e7ff0    8a8878807e00
                         jmp              dword ptr [ecx*4 + 0x7e8064]             // 0x007e7ff6    ff248d64807e00
                         push             0x00c34de4                               // 0x007e7ffd    68e44dc300
                         {disp8} jmp      _jmp_addr_0x007e8017                     // 0x007e8002    eb13
                         push             0x00c34ddc                               // 0x007e8004    68dc4dc300
                         {disp8} jmp      _jmp_addr_0x007e8017                     // 0x007e8009    eb0c
                         push             0x00be83ac                               // 0x007e800b    68ac83be00
                         {disp8} jmp      _jmp_addr_0x007e8017                     // 0x007e8010    eb05
                         push             0x00c34dd4                               // 0x007e8012    68d44dc300
_jmp_addr_0x007e8017:    call             _jmp_addr_0x007e7210                     // 0x007e8017    e8f4f1ffff
                         push             eax                                      // 0x007e801c    50
                         push             esi                                      // 0x007e801d    56
                         call             _jmp_addr_0x007e6d30                     // 0x007e801e    e80dedffff
                         add              esp, 0x0c                                // 0x007e8023    83c40c
_jmp_addr_0x007e8026:    inc              edi                                      // 0x007e8026    47
                         cmp              edi, 0x0c                                // 0x007e8027    83ff0c
                         .byte            0x72, 0xb5// {disp8} jb _jmp_addr_0x007e7fe1 // 0x007e802a    72b5
                         push             esi                                      // 0x007e802c    56
                         call             _jmp_addr_0x007e6da0                     // 0x007e802d    e86eedffff
                         add              esp, 0x04                                // 0x007e8032    83c404
                         cmp.s            ebp, eax                                 // 0x007e8035    3be8
                         {disp8} je       _jmp_addr_0x007e8047                     // 0x007e8037    740e
                         push             esi                                      // 0x007e8039    56
                         call             _jmp_addr_0x007e6da0                     // 0x007e803a    e861edffff
                         add              esp, 0x04                                // 0x007e803f    83c404
                         {disp8} mov      byte ptr [eax + esi * 0x1 + -0x02], 0x00 // 0x007e8042    c64430fe00
_jmp_addr_0x007e8047:    push             0x00c22098                               // 0x007e8047    689820c200
                         call             _jmp_addr_0x007e7210                     // 0x007e804c    e8bff1ffff
                         push             eax                                      // 0x007e8051    50
                         push             esi                                      // 0x007e8052    56
                         call             _jmp_addr_0x007e6d30                     // 0x007e8053    e8d8ecffff
                         add              esp, 0x0c                                // 0x007e8058    83c40c
                         mov.s            eax, esi                                 // 0x007e805b    8bc6
                         pop              edi                                      // 0x007e805d    5f
                         pop              esi                                      // 0x007e805e    5e
                         pop              ebp                                      // 0x007e805f    5d
                         pop              ebx                                      // 0x007e8060    5b
                         ret              0x0004                                   // 0x007e8061    c20400

// Snippet: jmptbl, [0x007e8064, 0x007e8078)
.byte 0x04, 0x80, 0x7e, 0x00      // 0x007e8064
.byte 0x12, 0x80, 0x7e, 0x00      // 0x007e8068
.byte 0xfd, 0x7f, 0x7e, 0x00      // 0x007e806c
.byte 0x0b, 0x80, 0x7e, 0x00      // 0x007e8070
.byte 0x26, 0x80, 0x7e, 0x00      // 0x007e8074

// Snippet: ijmptbl, [0x007e8078, 0x007e8086)
.byte 0x00, 0x04, 0x04, 0x04      // 0x007e8078
.byte 0x04, 0x01, 0x04, 0x04      // 0x007e807c
.byte 0x04, 0x04, 0x04, 0x02      // 0x007e8080
.byte 0x04, 0x03                  // 0x007e8084

// Snippet: db, [0x007e8086, 0x007e8090)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e8086
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e808a
.byte 0x90, 0x90                  // 0x007e808e

