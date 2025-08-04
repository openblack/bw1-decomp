.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ??3@YAXPAX@Z
.extern _jmp_addr_0x00863a80
.extern _jmp_addr_0x00864190
.extern @FillPosAndHeading__8RPFollowFR7Point2DRff@20
.extern @GetLength__9RouteNodeFP7RPAvoid@12

.globl _jmp_addr_0x00863ef0

start_0x00863ef0_0x00864040:
// Snippet: asm, [0x00863ef0, 0x0086402b)
_jmp_addr_0x00863ef0:    sub               esp, 0x08                                // 0x00863ef0    83ec08
                         push              esi                                      // 0x00863ef3    56
                         mov.s             esi, ecx                                 // 0x00863ef4    8bf1
                         {disp32} mov      eax, dword ptr [esi + 0x00064054]        // 0x00863ef6    8b8654400600
                         cmp               eax, 0x04                                // 0x00863efc    83f804
                         {disp32} ja       _jmp_addr_0x00864026                     // 0x00863eff    0f8721010000
                         jmp               dword ptr [eax*4 + 0x86402c]             // 0x00863f05    ff24852c408600
                         mov.s             ecx, esi                                 // 0x00863f0c    8bce
                         call              _jmp_addr_0x00863a80                     // 0x00863f0e    e86dfbffff
                         {disp32} mov      dword ptr [esi + 0x00064054], 0x00000001 // 0x00863f13    c7865440060001000000
                         pop               esi                                      // 0x00863f1d    5e
                         add               esp, 0x08                                // 0x00863f1e    83c408
                         ret                                                        // 0x00863f21    c3
                         mov.s             ecx, esi                                 // 0x00863f22    8bce
                         call              _jmp_addr_0x00864190                     // 0x00863f24    e867020000
                         {disp32} fld      dword ptr [esi + 0x00064034]             // 0x00863f29    d98634400600
                         {disp32} mov      dword ptr [esi + 0x00064054], 0x00000003 // 0x00863f2f    c7865440060003000000
                         {disp32} fdiv     dword ptr [rdata_bytes + 0xfabc0]        // 0x00863f39    d835c03b9a00
                         {disp32} mov      eax, dword ptr [esi + 0x0006406c]        // 0x00863f3f    8b866c400600
                         test              eax, eax                                 // 0x00863f45    85c0
                         {disp8} mov       dword ptr [esp + 0x08], eax              // 0x00863f47    89442408
                         {disp32} fld      dword ptr [rdata_bytes + 0xfabc0]        // 0x00863f4b    d905c03b9a00
                         fmul              st, st(1)                                // 0x00863f51    d8c9
                         fmul              st, st(1)                                // 0x00863f53    d8c9
                         {disp32} fmul     dword ptr [_rdata_float0p5]              // 0x00863f55    d80db4a38a00
                         {disp8} fstp      dword ptr [esp + 0x04]                   // 0x00863f5b    d95c2404
                         fstp              st(0)                                    // 0x00863f5f    ddd8
                         {disp8} je        _jmp_addr_0x00863f84                     // 0x00863f61    7421
                         {disp32} mov      eax, dword ptr [esi + 0x00064060]        // 0x00863f63    8b8660400600
                         push              eax                                      // 0x00863f69    50
                         call              dword ptr [esp + 0xc]                    // 0x00863f6a    ff54240c
                         {disp8} fcom      dword ptr [esp + 0x08]                   // 0x00863f6e    d8542408
                         add               esp, 0x04                                // 0x00863f72    83c404
                         fnstsw            ax                                       // 0x00863f75    dfe0
                         test              ah, 0x41                                 // 0x00863f77    f6c441
                         {disp8} jne       _jmp_addr_0x00863f82                     // 0x00863f7a    7506
                         {disp8} fstp      dword ptr [esp + 0x04]                   // 0x00863f7c    d95c2404
                         {disp8} jmp       _jmp_addr_0x00863f84                     // 0x00863f80    eb02
_jmp_addr_0x00863f82:    fstp              st(0)                                    // 0x00863f82    ddd8
_jmp_addr_0x00863f84:    {disp32} mov      ecx, dword ptr [esi + 0x00064070]        // 0x00863f84    8b8e70400600
                         push              esi                                      // 0x00863f8a    56
                         call              @GetLength__9RouteNodeFP7RPAvoid@12      // 0x00863f8b    e810520000
                         {disp32} fsub     dword ptr [esi + 0x00064038]             // 0x00863f90    d8a638400600
                         {disp32} fsub     dword ptr [rdata_bytes + 0x1c840]        // 0x00863f96    d82540588c00
                         {disp8} fcomp     dword ptr [esp + 0x04]                   // 0x00863f9c    d85c2404
                         fnstsw            ax                                       // 0x00863fa0    dfe0
                         test              ah, 0x41                                 // 0x00863fa2    f6c441
                         {disp8} jne       _jmp_addr_0x00863fcb                     // 0x00863fa5    7524
                         {disp8} fld       dword ptr [esp + 0x04]                   // 0x00863fa7    d9442404
                         {disp32} mov      edx, dword ptr [esi + 0x00064070]        // 0x00863fab    8b9670400600
                         {disp32} fadd     dword ptr [esi + 0x00064038]             // 0x00863fb1    d88638400600
                         push              ecx                                      // 0x00863fb7    51
                         {disp8} lea       ecx, dword ptr [esp + 0x0c]              // 0x00863fb8    8d4c240c
                         add               edx, 0x08                                // 0x00863fbc    83c208
                         fstp              dword ptr [esp]                          // 0x00863fbf    d91c24
                         push              ecx                                      // 0x00863fc2    51
                         push              edx                                      // 0x00863fc3    52
                         mov.s             ecx, esi                                 // 0x00863fc4    8bce
                         call              @FillPosAndHeading__8RPFollowFR7Point2DRff@20                     // 0x00863fc6    e8d50b0000
_jmp_addr_0x00863fcb:    {disp32} mov      eax, dword ptr [esi + 0x00064070]        // 0x00863fcb    8b8670400600
                         {disp8} mov       eax, dword ptr [eax + 0x24]              // 0x00863fd1    8b4024
                         test              eax, eax                                 // 0x00863fd4    85c0
                         {disp8} je        _jmp_addr_0x00863fec                     // 0x00863fd6    7414
                         push              edi                                      // 0x00863fd8    57
_jmp_addr_0x00863fd9:    {disp8} mov       edi, dword ptr [eax + 0x24]              // 0x00863fd9    8b7824
                         push              eax                                      // 0x00863fdc    50
                         call              ??3@YAXPAX@Z                             // 0x00863fdd    e8b6aef4ff
                         add               esp, 0x04                                // 0x00863fe2    83c404
                         test              edi, edi                                 // 0x00863fe5    85ff
                         mov.s             eax, edi                                 // 0x00863fe7    8bc7
                         {disp8} jne       _jmp_addr_0x00863fd9                     // 0x00863fe9    75ee
                         pop               edi                                      // 0x00863feb    5f
_jmp_addr_0x00863fec:    {disp32} mov      ecx, dword ptr [esi + 0x00064070]        // 0x00863fec    8b8e70400600
                         {disp8} mov       dword ptr [ecx + 0x24], 0x00000000       // 0x00863ff2    c7412400000000
                         {disp32} mov      edx, dword ptr [esi + 0x0006408c]        // 0x00863ff9    8b968c400600
                         {disp8} mov       eax, dword ptr [edx + 0x68]              // 0x00863fff    8b4268
                         {disp32} mov      ecx, dword ptr [esi + 0x00064070]        // 0x00864002    8b8e70400600
                         {disp8} mov       dword ptr [eax + 0x04], ecx              // 0x00864008    894804
                         {disp32} mov      eax, dword ptr [esi + 0x00064070]        // 0x0086400b    8b8670400600
                         {disp8} mov       edx, dword ptr [eax + 0x08]              // 0x00864011    8b5008
                         add               eax, 0x08                                // 0x00864014    83c008
                         {disp32} mov      dword ptr [esi + 0x00064044], edx        // 0x00864017    899644400600
                         {disp8} mov       eax, dword ptr [eax + 0x04]              // 0x0086401d    8b4004
                         {disp32} mov      dword ptr [esi + 0x00064048], eax        // 0x00864020    898648400600
_jmp_addr_0x00864026:    pop               esi                                      // 0x00864026    5e
                         add               esp, 0x08                                // 0x00864027    83c408
                         ret                                                        // 0x0086402a    c3

// Snippet: db, [0x0086402b, 0x0086402c)
.byte 0x90                        // 0x0086402b

// Snippet: jmptbl, [0x0086402c, 0x00864040)
.byte 0x26, 0x40, 0x86, 0x00      // 0x0086402c
.byte 0x26, 0x40, 0x86, 0x00      // 0x00864030
.byte 0x0c, 0x3f, 0x86, 0x00      // 0x00864034
.byte 0x22, 0x3f, 0x86, 0x00      // 0x00864038
.byte 0x22, 0x3f, 0x86, 0x00      // 0x0086403c

