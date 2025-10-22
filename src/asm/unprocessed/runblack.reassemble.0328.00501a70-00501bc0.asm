.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern _jmp_addr_0x0047a500
.extern _jmp_addr_0x0047a880
.extern _jmp_addr_0x0047d740
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x004842e0
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z

start_0x00501a70_0x00501bc0:
// Snippet: asm, [0x00501a70, 0x00501b9d)
                         push              ecx                                      // 0x00501a70    51
                         push              esi                                      // 0x00501a71    56
                         mov.s             esi, ecx                                 // 0x00501a72    8bf1
                         {disp32} mov      eax, dword ptr [esi + 0x00000160]        // 0x00501a74    8b8660010000
                         {disp8} mov       ecx, dword ptr [eax + 0x58]              // 0x00501a7a    8b4858
                         call              ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ                     // 0x00501a7d    e84e28f8ff
                         test              eax, eax                                 // 0x00501a82    85c0
                         {disp8} jne       _jmp_addr_0x00501ae1                     // 0x00501a84    755b
                         {disp8} mov       ecx, dword ptr [esi + 0x28]              // 0x00501a86    8b4e28
                         {disp32} mov      edx, dword ptr [ecx + 0x000002e8]        // 0x00501a89    8b91e8020000
                         {disp32} mov      eax, dword ptr [esi + 0x00000164]        // 0x00501a8f    8b8664010000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000fb4]        // 0x00501a95    8b88b40f0000
                         add               eax, 0x00000fa8                          // 0x00501a9b    05a80f0000
                         lea               ecx, dword ptr [ecx + ecx * 0x2]         // 0x00501aa0    8d0c49
                         shl               ecx, 5                                   // 0x00501aa3    c1e105
                         {disp8} mov       eax, dword ptr [ecx + eax * 0x1 + 0x34]  // 0x00501aa6    8b440134
                         add               eax, 0x24                                // 0x00501aaa    83c024
                         {disp8} mov       dword ptr [esp + 0x04], edx              // 0x00501aad    89542404
                         push              eax                                      // 0x00501ab1    50
                         {disp8} lea       edx, dword ptr [esi + 0x14]              // 0x00501ab2    8d5614
                         push              edx                                      // 0x00501ab5    52
                         call              ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                          // 0x00501ab6    e8b5b22400
                         {disp8} fcomp     dword ptr [esp + 0x0c]                   // 0x00501abb    d85c240c
                         add               esp, 0x08                                // 0x00501abf    83c408
                         fnstsw            ax                                       // 0x00501ac2    dfe0
                         test              ah, 0x41                                 // 0x00501ac4    f6c441
                         {disp8} jne       _jmp_addr_0x00501ad9                     // 0x00501ac7    7510
                         {disp32} mov      eax, dword ptr [esi + 0x00000164]        // 0x00501ac9    8b8664010000
                         {disp32} mov      dword ptr [eax + 0x00000658], 0x00000001 // 0x00501acf    c7805806000001000000
_jmp_addr_0x00501ad9:    mov               eax, 0x00000002                          // 0x00501ad9    b802000000
                         pop               esi                                      // 0x00501ade    5e
                         pop               ecx                                      // 0x00501adf    59
                         ret                                                        // 0x00501ae0    c3
_jmp_addr_0x00501ae1:    xor.s             eax, eax                                 // 0x00501ae1    33c0
                         pop               esi                                      // 0x00501ae3    5e
                         pop               ecx                                      // 0x00501ae4    59
                         ret                                                        // 0x00501ae5    c3
                         nop                                                        // 0x00501ae6    90
                         nop                                                        // 0x00501ae7    90
                         nop                                                        // 0x00501ae8    90
                         nop                                                        // 0x00501ae9    90
                         nop                                                        // 0x00501aea    90
                         nop                                                        // 0x00501aeb    90
                         nop                                                        // 0x00501aec    90
                         nop                                                        // 0x00501aed    90
                         nop                                                        // 0x00501aee    90
                         nop                                                        // 0x00501aef    90
                         sub               esp, 0x18                                // 0x00501af0    83ec18
                         push              esi                                      // 0x00501af3    56
                         mov.s             esi, ecx                                 // 0x00501af4    8bf1
                         mov               eax, dword ptr [esi]                     // 0x00501af6    8b06
                         call              dword ptr [eax + 0x1c]                   // 0x00501af8    ff501c
                         test              eax, eax                                 // 0x00501afb    85c0
                         {disp8} jne       _jmp_addr_0x00501b09                     // 0x00501afd    750a
                         mov               eax, 0x00000002                          // 0x00501aff    b802000000
                         pop               esi                                      // 0x00501b04    5e
                         add               esp, 0x18                                // 0x00501b05    83c418
                         ret                                                        // 0x00501b08    c3
_jmp_addr_0x00501b09:    mov.s             ecx, esi                                 // 0x00501b09    8bce
                         call              _jmp_addr_0x0047d740                     // 0x00501b0b    e830bcf7ff
                         add               eax, 0x000000c8                          // 0x00501b10    05c8000000
                         mov               ecx, dword ptr [eax]                     // 0x00501b15    8b08
                         {disp8} mov       dword ptr [esp + 0x04], ecx              // 0x00501b17    894c2404
                         {disp8} mov       edx, dword ptr [eax + 0x04]              // 0x00501b1b    8b5004
                         {disp8} mov       dword ptr [esp + 0x08], edx              // 0x00501b1e    89542408
                         {disp8} mov       eax, dword ptr [eax + 0x08]              // 0x00501b22    8b4008
                         {disp8} lea       ecx, dword ptr [esp + 0x10]              // 0x00501b25    8d4c2410
                         push              ecx                                      // 0x00501b29    51
                         {disp8} lea       edx, dword ptr [esp + 0x08]              // 0x00501b2a    8d542408
                         push              edx                                      // 0x00501b2e    52
                         mov.s             ecx, esi                                 // 0x00501b2f    8bce
                         {disp8} mov       dword ptr [esp + 0x14], eax              // 0x00501b31    89442414
                         call              _jmp_addr_0x0047a500                     // 0x00501b35    e8c689f7ff
                         {disp32} mov      eax, dword ptr [esi + 0x00000160]        // 0x00501b3a    8b8660010000
                         {disp8} mov       ecx, dword ptr [eax + 0x58]              // 0x00501b40    8b4858
                         call              _jmp_addr_0x004842e0                     // 0x00501b43    e89827f8ff
                         test              eax, eax                                 // 0x00501b48    85c0
                         {disp8} je        _jmp_addr_0x00501b96                     // 0x00501b4a    744a
                         mov               edx, dword ptr [esi]                     // 0x00501b4c    8b16
                         push              0x0                                      // 0x00501b4e    6a00
                         mov.s             ecx, esi                                 // 0x00501b50    8bce
                         call              dword ptr [edx + 0x42c]                  // 0x00501b52    ff922c040000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x26e4]         // 0x00501b58    d80de4b68a00
                         push              ecx                                      // 0x00501b5e    51
                         {disp8} lea       eax, dword ptr [esp + 0x18]              // 0x00501b5f    8d442418
                         fstp              dword ptr [esp]                          // 0x00501b63    d91c24
                         push              eax                                      // 0x00501b66    50
                         push              0x0                                      // 0x00501b67    6a00
                         mov.s             ecx, esi                                 // 0x00501b69    8bce
                         call              _jmp_addr_0x0047a880                     // 0x00501b6b    e8108df7ff
                         cmp               eax, 0x04                                // 0x00501b70    83f804
                         {disp8} ja        _jmp_addr_0x00501b8c                     // 0x00501b73    7717
                         jmp               dword ptr [eax*4 + 0x501ba0]             // 0x00501b75    ff2485a01b5000
                         push              0x1                                      // 0x00501b7c    6a01
                         push              0x1                                      // 0x00501b7e    6a01
                         push              0x00be6540                               // 0x00501b80    684065be00
                         mov.s             ecx, esi                                 // 0x00501b85    8bce
                         call              ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                     // 0x00501b87    e8a43bf7ff
_jmp_addr_0x00501b8c:    mov               eax, 0x00000001                          // 0x00501b8c    b801000000
                         pop               esi                                      // 0x00501b91    5e
                         add               esp, 0x18                                // 0x00501b92    83c418
                         ret                                                        // 0x00501b95    c3
_jmp_addr_0x00501b96:    xor.s             eax, eax                                 // 0x00501b96    33c0
                         pop               esi                                      // 0x00501b98    5e
                         add               esp, 0x18                                // 0x00501b99    83c418
                         ret                                                        // 0x00501b9c    c3

// Snippet: db, [0x00501b9d, 0x00501ba0)
.byte 0x8d, 0x49, 0x00            // 0x00501b9d

// Snippet: jmptbl, [0x00501ba0, 0x00501bb4)
.byte 0x7c, 0x1b, 0x50, 0x00      // 0x00501ba0
.byte 0x96, 0x1b, 0x50, 0x00      // 0x00501ba4
.byte 0x7c, 0x1b, 0x50, 0x00      // 0x00501ba8
.byte 0xff, 0x1a, 0x50, 0x00      // 0x00501bac
.byte 0xff, 0x1a, 0x50, 0x00      // 0x00501bb0

// Snippet: db, [0x00501bb4, 0x00501bc0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00501bb4
.byte 0x90, 0x90, 0x90, 0x90      // 0x00501bb8
.byte 0x90, 0x90, 0x90, 0x90      // 0x00501bbc

