.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007e6fa0
.extern _jmp_addr_0x007e6fc0
.extern _jmp_addr_0x007e6fe0
.extern _jmp_addr_0x007e7200

.globl _jmp_addr_0x007e8090

start_0x007e8090_0x007e8170:
// Snippet: asm, [0x007e8090, 0x007e8146)
_jmp_addr_0x007e8090:    push             ebx                                        // 0x007e8090    53
                         mov.s            ebx, ecx                                   // 0x007e8091    8bd9
                         push             ebp                                        // 0x007e8093    55
                         push             esi                                        // 0x007e8094    56
                         mov              eax, dword ptr [ebx]                       // 0x007e8095    8b03
                         {disp8} mov      esi, dword ptr [esp + 0x10]                // 0x007e8097    8b742410
                         push             edi                                        // 0x007e809b    57
                         push             eax                                        // 0x007e809c    50
                         push             esi                                        // 0x007e809d    56
                         call             _jmp_addr_0x007e6fc0                       // 0x007e809e    e81defffff
                         push             0x00c34dec                                 // 0x007e80a3    68ec4dc300
                         call             _jmp_addr_0x007e7200                       // 0x007e80a8    e853f1ffff
                         push             eax                                        // 0x007e80ad    50
                         push             esi                                        // 0x007e80ae    56
                         call             _jmp_addr_0x007e6fa0                       // 0x007e80af    e8eceeffff
                         push             esi                                        // 0x007e80b4    56
                         call             _jmp_addr_0x007e6fe0                       // 0x007e80b5    e826efffff
                         add              esp, 0x18                                  // 0x007e80ba    83c418
                         mov.s            ebp, eax                                   // 0x007e80bd    8be8
                         xor.s            edi, edi                                   // 0x007e80bf    33ff
_jmp_addr_0x007e80c1:    movsx            eax, byte ptr [ebx + edi * 0x1 + 0x04]     // 0x007e80c1    0fbe443b04
                         add              eax, -0x41                                 // 0x007e80c6    83c0bf
                         cmp              eax, 0x0d                                  // 0x007e80c9    83f80d
                         {disp8} ja       _jmp_addr_0x007e8106                       // 0x007e80cc    7738
                         xor.s            ecx, ecx                                   // 0x007e80ce    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x007e815c]            // 0x007e80d0    8a885c817e00
                         jmp              dword ptr [ecx*4 + 0x7e8148]               // 0x007e80d6    ff248d48817e00
                         push             0x00c34de4                                 // 0x007e80dd    68e44dc300
                         {disp8} jmp      _jmp_addr_0x007e80f7                       // 0x007e80e2    eb13
                         push             0x00c34ddc                                 // 0x007e80e4    68dc4dc300
                         {disp8} jmp      _jmp_addr_0x007e80f7                       // 0x007e80e9    eb0c
                         push             0x00be83ac                                 // 0x007e80eb    68ac83be00
                         {disp8} jmp      _jmp_addr_0x007e80f7                       // 0x007e80f0    eb05
                         push             0x00c34dd4                                 // 0x007e80f2    68d44dc300
_jmp_addr_0x007e80f7:    call             _jmp_addr_0x007e7200                       // 0x007e80f7    e804f1ffff
                         push             eax                                        // 0x007e80fc    50
                         push             esi                                        // 0x007e80fd    56
                         call             _jmp_addr_0x007e6fa0                       // 0x007e80fe    e89deeffff
                         add              esp, 0x0c                                  // 0x007e8103    83c40c
_jmp_addr_0x007e8106:    inc              edi                                        // 0x007e8106    47
                         cmp              edi, 0x0c                                  // 0x007e8107    83ff0c
                         .byte            0x72, 0xb5// {disp8} jb _jmp_addr_0x007e80c1 // 0x007e810a    72b5
                         push             esi                                        // 0x007e810c    56
                         call             _jmp_addr_0x007e6fe0                       // 0x007e810d    e8ceeeffff
                         add              esp, 0x04                                  // 0x007e8112    83c404
                         cmp.s            ebp, eax                                   // 0x007e8115    3be8
                         {disp8} je       _jmp_addr_0x007e8129                       // 0x007e8117    7410
                         push             esi                                        // 0x007e8119    56
                         call             _jmp_addr_0x007e6fe0                       // 0x007e811a    e8c1eeffff
                         add              esp, 0x04                                  // 0x007e811f    83c404
                         {disp8} mov      word ptr [esi + eax * 0x2 + -0x04], 0x0000 // 0x007e8122    66c74446fc0000
_jmp_addr_0x007e8129:    push             0x00c22098                                 // 0x007e8129    689820c200
                         call             _jmp_addr_0x007e7200                       // 0x007e812e    e8cdf0ffff
                         push             eax                                        // 0x007e8133    50
                         push             esi                                        // 0x007e8134    56
                         call             _jmp_addr_0x007e6fa0                       // 0x007e8135    e866eeffff
                         add              esp, 0x0c                                  // 0x007e813a    83c40c
                         mov.s            eax, esi                                   // 0x007e813d    8bc6
                         pop              edi                                        // 0x007e813f    5f
                         pop              esi                                        // 0x007e8140    5e
                         pop              ebp                                        // 0x007e8141    5d
                         pop              ebx                                        // 0x007e8142    5b
                         ret              0x0004                                     // 0x007e8143    c20400

// Snippet: db, [0x007e8146, 0x007e8148)
.byte 0x8b, 0xff                  // 0x007e8146

// Snippet: jmptbl, [0x007e8148, 0x007e815c)
.byte 0xe4, 0x80, 0x7e, 0x00      // 0x007e8148
.byte 0xf2, 0x80, 0x7e, 0x00      // 0x007e814c
.byte 0xdd, 0x80, 0x7e, 0x00      // 0x007e8150
.byte 0xeb, 0x80, 0x7e, 0x00      // 0x007e8154
.byte 0x06, 0x81, 0x7e, 0x00      // 0x007e8158

// Snippet: ijmptbl, [0x007e815c, 0x007e816a)
.byte 0x00, 0x04, 0x04, 0x04      // 0x007e815c
.byte 0x04, 0x01, 0x04, 0x04      // 0x007e8160
.byte 0x04, 0x04, 0x04, 0x02      // 0x007e8164
.byte 0x04, 0x03                  // 0x007e8168

// Snippet: db, [0x007e816a, 0x007e8170)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e816a
.byte 0x90, 0x90                  // 0x007e816e

