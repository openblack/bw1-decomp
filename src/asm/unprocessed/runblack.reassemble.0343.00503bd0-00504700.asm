.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00436960
.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern _jmp_addr_0x004774f0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0047a880
.extern _jmp_addr_0x0047d640
.extern _jmp_addr_0x00484260
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x00484ae0
.extern _jmp_addr_0x00484b00
.extern _jmp_addr_0x004dc260
.extern _jmp_addr_0x004dc370
.extern _jmp_addr_0x004dc600
.extern _jmp_addr_0x004f00e0
.extern _jmp_addr_0x00524fe0
.extern _jmp_addr_0x00525720
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern ?InBounds@MapCoords@@QBEIXZ
.extern _jmp_addr_0x00605050
.extern _jmp_addr_0x00637cc0
.extern _jmp_addr_0x006e8160
.extern ?GetDistance@GUtils@@SAXABUMapCoords@@0@Z
.extern ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z
.extern _jmp_addr_0x007a1400
.extern ___RTDynamicCast
.extern _jmp_addr_0x007faa50
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

start_0x00503bd0_0x00504700:
// Snippet: asm, [0x00503bd0, 0x005046e9)
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x00503bd0    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00503bd6    8b4858
                         call               _jmp_addr_0x00484260                          // 0x00503bd9    e88206f8ff
                         mov                eax, 0x00000002                               // 0x00503bde    b802000000
                         ret                                                              // 0x00503be3    c3
                         nop                                                              // 0x00503be4    90
                         nop                                                              // 0x00503be5    90
                         nop                                                              // 0x00503be6    90
                         nop                                                              // 0x00503be7    90
                         nop                                                              // 0x00503be8    90
                         nop                                                              // 0x00503be9    90
                         nop                                                              // 0x00503bea    90
                         nop                                                              // 0x00503beb    90
                         nop                                                              // 0x00503bec    90
                         nop                                                              // 0x00503bed    90
                         nop                                                              // 0x00503bee    90
                         nop                                                              // 0x00503bef    90
                         push               esi                                           // 0x00503bf0    56
                         mov.s              esi, ecx                                      // 0x00503bf1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00503bf3    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00503bf9    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00503bfc    e8cf06f8ff
                         test               eax, eax                                      // 0x00503c01    85c0
                         {disp8} jne        _jmp_addr_0x00503c0c                          // 0x00503c03    7507
                         mov                eax, 0x00000002                               // 0x00503c05    b802000000
                         pop                esi                                           // 0x00503c0a    5e
                         ret                                                              // 0x00503c0b    c3
_jmp_addr_0x00503c0c:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00503c0c    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x00503c12    8b4958
                         call               _jmp_addr_0x00484ae0                          // 0x00503c15    e8c60ef8ff
                         xor.s              eax, eax                                      // 0x00503c1a    33c0
                         pop                esi                                           // 0x00503c1c    5e
                         ret                                                              // 0x00503c1d    c3
                         nop                                                              // 0x00503c1e    90
                         nop                                                              // 0x00503c1f    90
                         sub                esp, 0x08                                     // 0x00503c20    83ec08
                         xor.s              edx, edx                                      // 0x00503c23    33d2
                         mov                eax, 0x000003e8                               // 0x00503c25    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x00503c2a    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x00503c30    c744240400000000
                         push               esi                                           // 0x00503c38    56
                         mov.s              esi, ecx                                      // 0x00503c39    8bf1
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00503c3b    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x00503c3f    df6c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1651c]             // 0x00503c43    d80d1cf58b00
                         call               _jmp_addr_0x007a1400                          // 0x00503c49    e8b2d72900
                         {disp8} mov        word ptr [esi + 0x58], ax                     // 0x00503c4e    66894658
                         mov                eax, 0x00000002                               // 0x00503c52    b802000000
                         pop                esi                                           // 0x00503c57    5e
                         add                esp, 0x08                                     // 0x00503c58    83c408
                         ret                                                              // 0x00503c5b    c3
                         nop                                                              // 0x00503c5c    90
                         nop                                                              // 0x00503c5d    90
                         nop                                                              // 0x00503c5e    90
                         nop                                                              // 0x00503c5f    90
                         sub                esp, 0x1c                                     // 0x00503c60    83ec1c
                         push               esi                                           // 0x00503c63    56
                         mov.s              esi, ecx                                      // 0x00503c64    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00503c66    8b06
                         call               dword ptr [eax + 0x1c]                        // 0x00503c68    ff501c
                         test               eax, eax                                      // 0x00503c6b    85c0
                         {disp8} jne        _jmp_addr_0x00503c79                          // 0x00503c6d    750a
                         mov                eax, 0x00000002                               // 0x00503c6f    b802000000
                         pop                esi                                           // 0x00503c74    5e
                         add                esp, 0x1c                                     // 0x00503c75    83c41c
                         ret                                                              // 0x00503c78    c3
_jmp_addr_0x00503c79:    xor.s              eax, eax                                      // 0x00503c79    33c0
                         {disp8} mov        ax, word ptr [esi + 0x58]                     // 0x00503c7b    668b4658
                         test               ax, ax                                        // 0x00503c7f    6685c0
                         {disp8} jne        _jmp_addr_0x00503c8e                          // 0x00503c82    750a
                         mov                eax, 0x00000002                               // 0x00503c84    b802000000
                         pop                esi                                           // 0x00503c89    5e
                         add                esp, 0x1c                                     // 0x00503c8a    83c41c
                         ret                                                              // 0x00503c8d    c3
_jmp_addr_0x00503c8e:    dec                eax                                           // 0x00503c8e    48
                         mov.s              ecx, esi                                      // 0x00503c8f    8bce
                         {disp8} mov        word ptr [esi + 0x58], ax                     // 0x00503c91    66894658
                         call               _jmp_addr_0x0047d640                          // 0x00503c95    e8a699f7ff
                         add                eax, 0x000000bc                               // 0x00503c9a    05bc000000
                         push               eax                                           // 0x00503c9f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00503ca0    8d4c240c
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x00503ca4    e8b7f40f00
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00503ca9    8d4c2408
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x00503cad    e80e061000
                         test               eax, eax                                      // 0x00503cb2    85c0
                         {disp32} je        _jmp_addr_0x00503dc8                          // 0x00503cb4    0f840e010000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00503cba    8b4c2410
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x00503cbe    894c2404
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00503cc2    8d4c2408
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00503cc6    e8c5f32f00
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x00503ccb    d8442404
                         mov                edx, dword ptr [esi]                          // 0x00503ccf    8b16
                         mov.s              ecx, esi                                      // 0x00503cd1    8bce
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00503cd3    d95c2418
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x00503cd7    db442408
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00503cdb    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00503ce1    d95c2414
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00503ce5    db44240c
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00503ce9    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00503cef    d95c241c
                         call               dword ptr [edx + 0x42c]                       // 0x00503cf3    ff922c040000
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00503cf9    d80590a38a00
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00503cff    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00503d05    8b4858
                         fadd.s             st(0), st(0)                                  // 0x00503d08    dcc0
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00503d0a    d95c2404
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00503d0e    e8bd05f8ff
                         test               eax, eax                                      // 0x00503d13    85c0
                         {disp8} jne        _jmp_addr_0x00503d93                          // 0x00503d15    757c
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00503d17    8d4c2408
                         push               ecx                                           // 0x00503d1b    51
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x00503d1c    8d5614
                         push               edx                                           // 0x00503d1f    52
                         call               ?GetDistance@GUtils@@SAXABUMapCoords@@0@Z     // 0x00503d20    e88b8f2400
                         push               eax                                           // 0x00503d25    50
                         call               ?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z  // 0x00503d26    e8959f2400
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00503d2b    d85c2410
                         add                esp, 0x0c                                     // 0x00503d2f    83c40c
                         fnstsw             ax                                            // 0x00503d32    dfe0
                         test               ah, 0x01                                      // 0x00503d34    f6c401
                         {disp8} je         _jmp_addr_0x00503d43                          // 0x00503d37    740a
                         mov                eax, 0x00000002                               // 0x00503d39    b802000000
                         pop                esi                                           // 0x00503d3e    5e
                         add                esp, 0x1c                                     // 0x00503d3f    83c41c
                         ret                                                              // 0x00503d42    c3
_jmp_addr_0x00503d43:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00503d43    8b442408
                         test               eax, eax                                      // 0x00503d47    85c0
                         {disp8} jne        _jmp_addr_0x00503d6e                          // 0x00503d49    7523
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00503d4b    8b44240c
                         test               eax, eax                                      // 0x00503d4f    85c0
                         {disp8} jne        _jmp_addr_0x00503d6e                          // 0x00503d51    751b
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00503d53    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00503d57    d81d98a38a00
                         fnstsw             ax                                            // 0x00503d5d    dfe0
                         test               ah, 0x40                                      // 0x00503d5f    f6c440
                         {disp8} je         _jmp_addr_0x00503d6e                          // 0x00503d62    740a
                         mov                eax, 0x00000002                               // 0x00503d64    b802000000
                         pop                esi                                           // 0x00503d69    5e
                         add                esp, 0x1c                                     // 0x00503d6a    83c41c
                         ret                                                              // 0x00503d6d    c3
_jmp_addr_0x00503d6e:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00503d6e    d9442404
                         push               0x0                                           // 0x00503d72    6a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]              // 0x00503d74    d82578b48a00
                         push               ecx                                           // 0x00503d7a    51
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00503d7b    8d44241c
                         mov.s              ecx, esi                                      // 0x00503d7f    8bce
                         fstp               dword ptr [esp]                               // 0x00503d81    d91c24
                         push               eax                                           // 0x00503d84    50
                         push               0x0                                           // 0x00503d85    6a00
                         call               _jmp_addr_0x0047a880                          // 0x00503d87    e8f46af7ff
                         xor.s              eax, eax                                      // 0x00503d8c    33c0
                         pop                esi                                           // 0x00503d8e    5e
                         add                esp, 0x1c                                     // 0x00503d8f    83c41c
                         ret                                                              // 0x00503d92    c3
_jmp_addr_0x00503d93:    push               0x6                                           // 0x00503d93    6a06
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00503d95    8d4c240c
                         push               ecx                                           // 0x00503d99    51
                         mov.s              ecx, esi                                      // 0x00503d9a    8bce
                         call               _jmp_addr_0x004774f0                          // 0x00503d9c    e84f37f7ff
                         test               eax, eax                                      // 0x00503da1    85c0
                         {disp8} jne        _jmp_addr_0x00503dc1                          // 0x00503da3    751c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00503da5    d9442404
                         push               eax                                           // 0x00503da9    50
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2478]              // 0x00503daa    d82578b48a00
                         push               ecx                                           // 0x00503db0    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00503db1    8d54241c
                         mov.s              ecx, esi                                      // 0x00503db5    8bce
                         fstp               dword ptr [esp]                               // 0x00503db7    d91c24
                         push               edx                                           // 0x00503dba    52
                         push               eax                                           // 0x00503dbb    50
                         call               _jmp_addr_0x0047a880                          // 0x00503dbc    e8bf6af7ff
_jmp_addr_0x00503dc1:    xor.s              eax, eax                                      // 0x00503dc1    33c0
                         pop                esi                                           // 0x00503dc3    5e
                         add                esp, 0x1c                                     // 0x00503dc4    83c41c
                         ret                                                              // 0x00503dc7    c3
_jmp_addr_0x00503dc8:    mov                eax, 0x00000001                               // 0x00503dc8    b801000000
                         pop                esi                                           // 0x00503dcd    5e
                         add                esp, 0x1c                                     // 0x00503dce    83c41c
                         ret                                                              // 0x00503dd1    c3
                         nop                                                              // 0x00503dd2    90
                         nop                                                              // 0x00503dd3    90
                         nop                                                              // 0x00503dd4    90
                         nop                                                              // 0x00503dd5    90
                         nop                                                              // 0x00503dd6    90
                         nop                                                              // 0x00503dd7    90
                         nop                                                              // 0x00503dd8    90
                         nop                                                              // 0x00503dd9    90
                         nop                                                              // 0x00503dda    90
                         nop                                                              // 0x00503ddb    90
                         nop                                                              // 0x00503ddc    90
                         nop                                                              // 0x00503ddd    90
                         nop                                                              // 0x00503dde    90
                         nop                                                              // 0x00503ddf    90
                         sub                esp, 0x10                                     // 0x00503de0    83ec10
                         push               esi                                           // 0x00503de3    56
                         mov.s              esi, ecx                                      // 0x00503de4    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00503de6    8b06
                         call               dword ptr [eax + 0x1c]                        // 0x00503de8    ff501c
                         test               eax, eax                                      // 0x00503deb    85c0
                         {disp8} jne        _jmp_addr_0x00503df9                          // 0x00503ded    750a
                         mov                eax, 0x00000002                               // 0x00503def    b802000000
                         pop                esi                                           // 0x00503df4    5e
                         add                esp, 0x10                                     // 0x00503df5    83c410
                         ret                                                              // 0x00503df8    c3
_jmp_addr_0x00503df9:    {disp8} fild       dword ptr [esi + 0x14]                        // 0x00503df9    db4614
                         mov.s              ecx, esi                                      // 0x00503dfc    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00503dfe    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00503e04    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00503e0a    d95c2404
                         call               _jmp_addr_0x0047d640                          // 0x00503e0e    e82d98f7ff
                         {disp32} fld       dword ptr [eax + 0x000000b0]                  // 0x00503e13    d980b0000000
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00503e19    d8642404
                         mov.s              ecx, esi                                      // 0x00503e1d    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x00503e1f    c744240c00000000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00503e27    d95c2408
                         {disp8} fild       dword ptr [esi + 0x18]                        // 0x00503e2b    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00503e2e    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00503e34    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00503e3a    d95c2404
                         call               _jmp_addr_0x0047d640                          // 0x00503e3e    e8fd97f7ff
                         {disp32} fld       dword ptr [eax + 0x000000b8]                  // 0x00503e43    d980b8000000
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00503e49    d8642404
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00503e4d    8d4c2408
                         push               ecx                                           // 0x00503e51    51
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00503e52    d95c2414
                         call               _jmp_addr_0x006e8160                          // 0x00503e56    e805431e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x00503e5b    d81d2cb28a00
                         add                esp, 0x04                                     // 0x00503e61    83c404
                         fnstsw             ax                                            // 0x00503e64    dfe0
                         test               ah, 0x01                                      // 0x00503e66    f6c401
                         {disp8} je         _jmp_addr_0x00503e75                          // 0x00503e69    740a
                         mov                eax, 0x00000002                               // 0x00503e6b    b802000000
                         pop                esi                                           // 0x00503e70    5e
                         add                esp, 0x10                                     // 0x00503e71    83c410
                         ret                                                              // 0x00503e74    c3
_jmp_addr_0x00503e75:    {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00503e75    8d542408
                         push               edx                                           // 0x00503e79    52
                         call               _jmp_addr_0x007faa50                          // 0x00503e7a    e8d16b2f00
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00503e7f    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00503e83    8b442408
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00503e87    8b8e60010000
                         add                esp, 0x04                                     // 0x00503e8d    83c404
                         push               eax                                           // 0x00503e90    50
                         call               _jmp_addr_0x004f00e0                          // 0x00503e91    e84ac2feff
                         test               eax, eax                                      // 0x00503e96    85c0
                         {disp8} je         _jmp_addr_0x00503ea4                          // 0x00503e98    740a
                         mov                eax, 0x00000002                               // 0x00503e9a    b802000000
                         pop                esi                                           // 0x00503e9f    5e
                         add                esp, 0x10                                     // 0x00503ea0    83c410
                         ret                                                              // 0x00503ea3    c3
_jmp_addr_0x00503ea4:    mov.s              ecx, esi                                      // 0x00503ea4    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00503ea6    e8a539f7ff
                         mov.s              ecx, eax                                      // 0x00503eab    8bc8
                         call               _jmp_addr_0x00484ae0                          // 0x00503ead    e82e0cf8ff
                         xor.s              eax, eax                                      // 0x00503eb2    33c0
                         pop                esi                                           // 0x00503eb4    5e
                         add                esp, 0x10                                     // 0x00503eb5    83c410
                         ret                                                              // 0x00503eb8    c3
                         nop                                                              // 0x00503eb9    90
                         nop                                                              // 0x00503eba    90
                         nop                                                              // 0x00503ebb    90
                         nop                                                              // 0x00503ebc    90
                         nop                                                              // 0x00503ebd    90
                         nop                                                              // 0x00503ebe    90
                         nop                                                              // 0x00503ebf    90
                         sub                esp, 0x10                                     // 0x00503ec0    83ec10
                         push               esi                                           // 0x00503ec3    56
                         mov.s              esi, ecx                                      // 0x00503ec4    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00503ec6    8b06
                         call               dword ptr [eax + 0x1c]                        // 0x00503ec8    ff501c
                         test               eax, eax                                      // 0x00503ecb    85c0
                         {disp8} jne        _jmp_addr_0x00503ed9                          // 0x00503ecd    750a
                         mov                eax, 0x00000002                               // 0x00503ecf    b802000000
                         pop                esi                                           // 0x00503ed4    5e
                         add                esp, 0x10                                     // 0x00503ed5    83c410
                         ret                                                              // 0x00503ed8    c3
_jmp_addr_0x00503ed9:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00503ed9    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x00503edf    8b4958
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00503ee2    e8e903f8ff
                         test               eax, eax                                      // 0x00503ee7    85c0
                         {disp32} jne       _jmp_addr_0x00503fb2                          // 0x00503ee9    0f85c3000000
                         {disp8} fild       dword ptr [esi + 0x14]                        // 0x00503eef    db4614
                         mov.s              ecx, esi                                      // 0x00503ef2    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00503ef4    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00503efa    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00503f00    d95c2404
                         call               _jmp_addr_0x0047d640                          // 0x00503f04    e83797f7ff
                         {disp32} fld       dword ptr [eax + 0x000000b0]                  // 0x00503f09    d980b0000000
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00503f0f    d8642404
                         mov.s              ecx, esi                                      // 0x00503f13    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x00503f15    c744240c00000000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00503f1d    d95c2408
                         {disp8} fild       dword ptr [esi + 0x18]                        // 0x00503f21    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00503f24    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00503f2a    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00503f30    d95c2404
                         call               _jmp_addr_0x0047d640                          // 0x00503f34    e80797f7ff
                         {disp32} fld       dword ptr [eax + 0x000000b8]                  // 0x00503f39    d980b8000000
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00503f3f    d8642404
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00503f43    8d542408
                         push               edx                                           // 0x00503f47    52
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00503f48    d95c2414
                         call               _jmp_addr_0x006e8160                          // 0x00503f4c    e80f421e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x00503f51    d81d2cb28a00
                         add                esp, 0x04                                     // 0x00503f57    83c404
                         fnstsw             ax                                            // 0x00503f5a    dfe0
                         test               ah, 0x01                                      // 0x00503f5c    f6c401
                         {disp8} je         _jmp_addr_0x00503f6b                          // 0x00503f5f    740a
                         mov                eax, 0x00000002                               // 0x00503f61    b802000000
                         pop                esi                                           // 0x00503f66    5e
                         add                esp, 0x10                                     // 0x00503f67    83c410
                         ret                                                              // 0x00503f6a    c3
_jmp_addr_0x00503f6b:    {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00503f6b    8d442408
                         push               eax                                           // 0x00503f6f    50
                         call               _jmp_addr_0x007faa50                          // 0x00503f70    e8db6a2f00
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00503f75    d95c2408
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00503f79    8b8e60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x58]                   // 0x00503f7f    8b5158
                         {disp32} fld       dword ptr [edx + 0x00000084]                  // 0x00503f82    d98284000000
                         add                esp, 0x04                                     // 0x00503f88    83c404
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00503f8b    d8642404
                         fabs                                                             // 0x00503f8f    d9e1
                         {disp32} fcomp     dword ptr [__real@3e4ccccd]                   // 0x00503f91    d81d44b28a00
                         fnstsw             ax                                            // 0x00503f97    dfe0
                         test               ah, 0x01                                      // 0x00503f99    f6c401
                         {disp8} je         _jmp_addr_0x00503fa8                          // 0x00503f9c    740a
                         mov                eax, 0x00000002                               // 0x00503f9e    b802000000
                         pop                esi                                           // 0x00503fa3    5e
                         add                esp, 0x10                                     // 0x00503fa4    83c410
                         ret                                                              // 0x00503fa7    c3
_jmp_addr_0x00503fa8:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00503fa8    8b442404
                         push               eax                                           // 0x00503fac    50
                         call               _jmp_addr_0x004f00e0                          // 0x00503fad    e82ec1feff
_jmp_addr_0x00503fb2:    xor.s              eax, eax                                      // 0x00503fb2    33c0
                         pop                esi                                           // 0x00503fb4    5e
                         add                esp, 0x10                                     // 0x00503fb5    83c410
                         ret                                                              // 0x00503fb8    c3
                         nop                                                              // 0x00503fb9    90
                         nop                                                              // 0x00503fba    90
                         nop                                                              // 0x00503fbb    90
                         nop                                                              // 0x00503fbc    90
                         nop                                                              // 0x00503fbd    90
                         nop                                                              // 0x00503fbe    90
                         nop                                                              // 0x00503fbf    90
                         sub                esp, 0x10                                     // 0x00503fc0    83ec10
                         push               esi                                           // 0x00503fc3    56
                         mov.s              esi, ecx                                      // 0x00503fc4    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00503fc6    8b8664010000
                         {disp32} mov       eax, dword ptr [eax + 0x00001bec]             // 0x00503fcc    8b80ec1b0000
                         test               eax, eax                                      // 0x00503fd2    85c0
                         {disp8} jne        _jmp_addr_0x00503fe0                          // 0x00503fd4    750a
                         mov                eax, 0x00000001                               // 0x00503fd6    b801000000
                         pop                esi                                           // 0x00503fdb    5e
                         add                esp, 0x10                                     // 0x00503fdc    83c410
                         ret                                                              // 0x00503fdf    c3
_jmp_addr_0x00503fe0:    {disp8} fild       dword ptr [esi + 0x14]                        // 0x00503fe0    db4614
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00503fe3    8d4c2408
                         push               ecx                                           // 0x00503fe7    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00503fe8    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00503fee    d80d1cc48a00
                         {disp32} fsubr     dword ptr [eax + 0x000000b0]                  // 0x00503ff4    d8a8b0000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00503ffa    c744241000000000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00504002    d95c240c
                         {disp8} fild       dword ptr [esi + 0x18]                        // 0x00504006    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00504009    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x0050400f    d80d1cc48a00
                         {disp32} fsubr     dword ptr [eax + 0x000000b8]                  // 0x00504015    d8a8b8000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0050401b    d95c2414
                         call               _jmp_addr_0x006e8160                          // 0x0050401f    e83c411e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x00504024    d81d2cb28a00
                         add                esp, 0x04                                     // 0x0050402a    83c404
                         fnstsw             ax                                            // 0x0050402d    dfe0
                         test               ah, 0x01                                      // 0x0050402f    f6c401
                         {disp8} je         _jmp_addr_0x0050403e                          // 0x00504032    740a
                         mov                eax, 0x00000002                               // 0x00504034    b802000000
                         pop                esi                                           // 0x00504039    5e
                         add                esp, 0x10                                     // 0x0050403a    83c410
                         ret                                                              // 0x0050403d    c3
_jmp_addr_0x0050403e:    {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0050403e    8d542408
                         push               edx                                           // 0x00504042    52
                         call               _jmp_addr_0x007faa50                          // 0x00504043    e8086a2f00
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00504048    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0050404c    8b442408
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00504050    8b8e60010000
                         add                esp, 0x04                                     // 0x00504056    83c404
                         push               eax                                           // 0x00504059    50
                         call               _jmp_addr_0x004f00e0                          // 0x0050405a    e881c0feff
                         neg                eax                                           // 0x0050405f    f7d8
                         sbb.s              eax, eax                                      // 0x00504061    1bc0
                         and                eax, 0x02                                     // 0x00504063    83e002
                         pop                esi                                           // 0x00504066    5e
                         add                esp, 0x10                                     // 0x00504067    83c410
                         ret                                                              // 0x0050406a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0050406b    e809d8efff
                         sub                esp, 0x10                                     // 0x00504070    83ec10
                         push               esi                                           // 0x00504073    56
                         mov.s              esi, ecx                                      // 0x00504074    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00504076    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x0050407c    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x0050407f    e84c02f8ff
                         test               eax, eax                                      // 0x00504084    85c0
                         {disp32} jne       _jmp_addr_0x0050414b                          // 0x00504086    0f85bf000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x0050408c    8b8e64010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00001bec]             // 0x00504092    8b81ec1b0000
                         test               eax, eax                                      // 0x00504098    85c0
                         {disp8} jne        _jmp_addr_0x005040a6                          // 0x0050409a    750a
                         mov                eax, 0x00000001                               // 0x0050409c    b801000000
                         pop                esi                                           // 0x005040a1    5e
                         add                esp, 0x10                                     // 0x005040a2    83c410
                         ret                                                              // 0x005040a5    c3
_jmp_addr_0x005040a6:    {disp8} fild       dword ptr [esi + 0x14]                        // 0x005040a6    db4614
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x005040a9    8d542408
                         push               edx                                           // 0x005040ad    52
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005040ae    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005040b4    d80d1cc48a00
                         {disp32} fsubr     dword ptr [eax + 0x000000b0]                  // 0x005040ba    d8a8b0000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x005040c0    c744241000000000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005040c8    d95c240c
                         {disp8} fild       dword ptr [esi + 0x18]                        // 0x005040cc    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005040cf    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005040d5    d80d1cc48a00
                         {disp32} fsubr     dword ptr [eax + 0x000000b8]                  // 0x005040db    d8a8b8000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005040e1    d95c2414
                         call               _jmp_addr_0x006e8160                          // 0x005040e5    e876401e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x005040ea    d81d2cb28a00
                         add                esp, 0x04                                     // 0x005040f0    83c404
                         fnstsw             ax                                            // 0x005040f3    dfe0
                         test               ah, 0x01                                      // 0x005040f5    f6c401
                         {disp8} je         _jmp_addr_0x00504104                          // 0x005040f8    740a
                         mov                eax, 0x00000002                               // 0x005040fa    b802000000
                         pop                esi                                           // 0x005040ff    5e
                         add                esp, 0x10                                     // 0x00504100    83c410
                         ret                                                              // 0x00504103    c3
_jmp_addr_0x00504104:    {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00504104    8d442408
                         push               eax                                           // 0x00504108    50
                         call               _jmp_addr_0x007faa50                          // 0x00504109    e842692f00
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0050410e    d95c2408
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00504112    8b8e60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x58]                   // 0x00504118    8b5158
                         {disp32} fld       dword ptr [edx + 0x00000084]                  // 0x0050411b    d98284000000
                         add                esp, 0x04                                     // 0x00504121    83c404
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00504124    d8642404
                         fabs                                                             // 0x00504128    d9e1
                         {disp32} fcomp     dword ptr [__real@3e4ccccd]                   // 0x0050412a    d81d44b28a00
                         fnstsw             ax                                            // 0x00504130    dfe0
                         test               ah, 0x01                                      // 0x00504132    f6c401
                         {disp8} je         _jmp_addr_0x00504141                          // 0x00504135    740a
                         mov                eax, 0x00000002                               // 0x00504137    b802000000
                         pop                esi                                           // 0x0050413c    5e
                         add                esp, 0x10                                     // 0x0050413d    83c410
                         ret                                                              // 0x00504140    c3
_jmp_addr_0x00504141:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00504141    8b442404
                         push               eax                                           // 0x00504145    50
                         call               _jmp_addr_0x004f00e0                          // 0x00504146    e895bffeff
_jmp_addr_0x0050414b:    xor.s              eax, eax                                      // 0x0050414b    33c0
                         pop                esi                                           // 0x0050414d    5e
                         add                esp, 0x10                                     // 0x0050414e    83c410
                         ret                                                              // 0x00504151    c3
                         nop                                                              // 0x00504152    90
                         nop                                                              // 0x00504153    90
                         nop                                                              // 0x00504154    90
                         nop                                                              // 0x00504155    90
                         nop                                                              // 0x00504156    90
                         nop                                                              // 0x00504157    90
                         nop                                                              // 0x00504158    90
                         nop                                                              // 0x00504159    90
                         nop                                                              // 0x0050415a    90
                         nop                                                              // 0x0050415b    90
                         nop                                                              // 0x0050415c    90
                         nop                                                              // 0x0050415d    90
                         nop                                                              // 0x0050415e    90
                         nop                                                              // 0x0050415f    90
                         sub                esp, 0x2c                                     // 0x00504160    83ec2c
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x28648]        // 0x00504163    a148168d00
                         push               ebx                                           // 0x00504168    53
                         push               esi                                           // 0x00504169    56
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0050416a    89442408
                         xor.s              eax, eax                                      // 0x0050416e    33c0
                         mov.s              ebx, ecx                                      // 0x00504170    8bd9
                         push               edi                                           // 0x00504172    57
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00504173    89442420
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00504177    89442424
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                   // 0x0050417b    8d7b14
                         mov                esi, 0x00da59da                               // 0x0050417e    beda59da00
_jmp_addr_0x00504183:    mov.s              ecx, edi                                      // 0x00504183    8bcf
                         mov                edx, dword ptr [ecx]                          // 0x00504185    8b11
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00504187    89542414
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x0050418b    db442414
                         movsx              edx, word ptr [esi + -0x02]                   // 0x0050418f    0fbf56fe
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00504193    89542410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00504197    d80d4c168d00
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0050419d    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005041a0    8b4908
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005041a3    d80d1cc48a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005041a9    89442418
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x005041ad    db442410
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x005041b1    894c241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x005041b5    d80d14b48a00
                         faddp              st(1), st                                     // 0x005041bb    dec1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005041bd    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x2864c]             // 0x005041c3    d8354c168d00
                         call               _jmp_addr_0x007a1400                          // 0x005041c9    e832d22900
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x005041ce    db442418
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005041d2    89442414
                         movsx              eax, word ptr [esi]                           // 0x005041d6    0fbf06
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005041d9    d80d4c168d00
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005041df    89442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005041e3    d80d1cc48a00
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x005041e9    db442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x005041ed    d80d14b48a00
                         faddp              st(1), st                                     // 0x005041f3    dec1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x005041f5    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x2864c]             // 0x005041fb    d8354c168d00
                         call               _jmp_addr_0x007a1400                          // 0x00504201    e8fad12900
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00504206    8d4c2414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0050420a    89442418
                         call               ?InBounds@MapCoords@@QBEIXZ                   // 0x0050420e    e8ad001000
                         test               eax, eax                                      // 0x00504213    85c0
                         {disp8} je         _jmp_addr_0x0050424b                          // 0x00504215    7434
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00504217    8d4c2414
                         call               _jmp_addr_0x00605050                          // 0x0050421b    e8300e1000
                         {disp8} fcom       dword ptr [esp + 0x0c]                        // 0x00504220    d854240c
                         fnstsw             ax                                            // 0x00504224    dfe0
                         test               ah, 0x01                                      // 0x00504226    f6c401
                         {disp8} je         _jmp_addr_0x00504249                          // 0x00504229    741e
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0050422b    8b4c2414
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0050422f    d95c240c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00504233    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00504237    8b44241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0050423b    894c2420
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0050423f    89542424
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00504243    89442428
                         {disp8} jmp        _jmp_addr_0x0050424b                          // 0x00504247    eb02
_jmp_addr_0x00504249:    fstp               st(0)                                         // 0x00504249    ddd8
_jmp_addr_0x0050424b:    add                esi, 0x04                                     // 0x0050424b    83c604
                         cmp                esi, 0x00da59fa                               // 0x0050424e    81fefa59da00
                         {disp32} jb        _jmp_addr_0x00504183                          // 0x00504254    0f8229ffffff
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x0050425a    db442420
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x0050425e    8d4c242c
                         push               ecx                                           // 0x00504262    51
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x00504263    c744243400000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x0050426b    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00504271    d80d1cc48a00
                         fild               dword ptr [edi]                               // 0x00504277    db07
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00504279    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x0050427f    d80d1cc48a00
                         fsubp              st(1), st                                     // 0x00504285    dee9
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00504287    d95c2430
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x0050428b    db442428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x0050428f    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00504295    d80d1cc48a00
                         {disp8} fild       dword ptr [ebx + 0x18]                        // 0x0050429b    db4318
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x0050429e    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005042a4    d80d1cc48a00
                         fsubp              st(1), st                                     // 0x005042aa    dee9
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005042ac    d95c2438
                         call               _jmp_addr_0x006e8160                          // 0x005042b0    e8ab3e1e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x005042b5    d81d2cb28a00
                         add                esp, 0x04                                     // 0x005042bb    83c404
                         fnstsw             ax                                            // 0x005042be    dfe0
                         test               ah, 0x01                                      // 0x005042c0    f6c401
                         {disp8} je         _jmp_addr_0x005042d1                          // 0x005042c3    740c
                         pop                edi                                           // 0x005042c5    5f
                         pop                esi                                           // 0x005042c6    5e
                         mov                eax, 0x00000002                               // 0x005042c7    b802000000
                         pop                ebx                                           // 0x005042cc    5b
                         add                esp, 0x2c                                     // 0x005042cd    83c42c
                         ret                                                              // 0x005042d0    c3
_jmp_addr_0x005042d1:    {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x005042d1    8d54242c
                         push               edx                                           // 0x005042d5    52
                         call               _jmp_addr_0x007faa50                          // 0x005042d6    e875672f00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005042db    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005042df    8b442414
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000160]             // 0x005042e3    8b8b60010000
                         add                esp, 0x04                                     // 0x005042e9    83c404
                         push               eax                                           // 0x005042ec    50
                         call               _jmp_addr_0x004f00e0                          // 0x005042ed    e8eebdfeff
                         neg                eax                                           // 0x005042f2    f7d8
                         pop                edi                                           // 0x005042f4    5f
                         sbb.s              eax, eax                                      // 0x005042f5    1bc0
                         pop                esi                                           // 0x005042f7    5e
                         and                eax, 0x02                                     // 0x005042f8    83e002
                         pop                ebx                                           // 0x005042fb    5b
                         add                esp, 0x2c                                     // 0x005042fc    83c42c
                         ret                                                              // 0x005042ff    c3
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x00504300    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00504306    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00504309    e8c2fff7ff
                         neg                eax                                           // 0x0050430e    f7d8
                         sbb.s              eax, eax                                      // 0x00504310    1bc0
                         and                eax, 0xfffffffe                               // 0x00504312    83e0fe
                         add                eax, 0x02                                     // 0x00504315    83c002
                         ret                                                              // 0x00504318    c3
                         nop                                                              // 0x00504319    90
                         nop                                                              // 0x0050431a    90
                         nop                                                              // 0x0050431b    90
                         nop                                                              // 0x0050431c    90
                         nop                                                              // 0x0050431d    90
                         nop                                                              // 0x0050431e    90
                         nop                                                              // 0x0050431f    90
                         sub                esp, 0x08                                     // 0x00504320    83ec08
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00504323    a15c19d000
                         push               ebx                                           // 0x00504328    53
                         push               ebp                                           // 0x00504329    55
                         {disp32} mov       ebp, dword ptr [eax + 0x00205a40]             // 0x0050432a    8ba8405a2000
                         mov.s              ebx, ecx                                      // 0x00504330    8bd9
                         push               esi                                           // 0x00504332    56
                         {disp32} mov       esi, dword ptr [ebx + 0x00000164]             // 0x00504333    8bb364010000
                         sub                ebp, dword ptr [esi + 0x00018c60]             // 0x00504339    2bae608c0100
                         xor.s              edx, edx                                      // 0x0050433f    33d2
                         mov                eax, 0x000003e8                               // 0x00504341    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x00504346    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0050434c    c744241000000000
                         push               edi                                           // 0x00504354    57
                         or                 edi, 0xffffffff                               // 0x00504355    83cfff
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00504358    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0050435c    df6c2410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x00504360    d80d14b48a00
                         call               _jmp_addr_0x007a1400                          // 0x00504366    e895d02900
                         cmp.s              ebp, eax                                      // 0x0050436b    3be8
                         {disp8} jae        _jmp_addr_0x0050439a                          // 0x0050436d    732b
                         {disp32} mov       eax, dword ptr [esi + 0x000005f8]             // 0x0050436f    8b86f8050000
                         test               eax, eax                                      // 0x00504375    85c0
                         {disp8} jne        _jmp_addr_0x0050439a                          // 0x00504377    7521
                         {disp32} fld       dword ptr [esi + 0x00018c58]                  // 0x00504379    d986588c0100
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0050437f    d81d98a38a00
                         fnstsw             ax                                            // 0x00504385    dfe0
                         test               ah, 0x01                                      // 0x00504387    f6c401
                         {disp8} jne        _jmp_addr_0x00504393                          // 0x0050438a    7507
                         mov                edi, 0x00000037                               // 0x0050438c    bf37000000
                         {disp8} jmp        _jmp_addr_0x005043bf                          // 0x00504391    eb2c
_jmp_addr_0x00504393:    mov                edi, 0x00000038                               // 0x00504393    bf38000000
                         {disp8} jmp        _jmp_addr_0x005043bf                          // 0x00504398    eb25
_jmp_addr_0x0050439a:    push               0x28                                          // 0x0050439a    6a28
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                   // 0x0050439c    8d4e08
                         call               _jmp_addr_0x004dc600                          // 0x0050439f    e85c82fdff
                         cmp                eax, 0x28                                     // 0x005043a4    83f828
                         {disp8} je         _jmp_addr_0x005043bf                          // 0x005043a7    7416
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005043a9    8d0480
                         shl                eax, 3                                        // 0x005043ac    c1e003
                         {disp32} mov       ecx, dword ptr [eax + 0x00c87868]             // 0x005043af    8b886878c800
                         test               ecx, ecx                                      // 0x005043b5    85c9
                         {disp8} je         _jmp_addr_0x005043bf                          // 0x005043b7    7406
                         {disp32} mov       edi, dword ptr [eax + 0x00c8786c]             // 0x005043b9    8bb86c78c800
_jmp_addr_0x005043bf:    {disp32} mov       ecx, dword ptr [ebx + 0x00000164]             // 0x005043bf    8b8b64010000
                         push               0x42700000                                    // 0x005043c5    6800007042
                         push               0x12                                          // 0x005043ca    6a12
                         add                ecx, 0x8                                      // 0x005043cc    83c108
                         call               _jmp_addr_0x004dc260                          // 0x005043cf    e88c7efdff
                         cmp                edi, -0x01                                    // 0x005043d4    83ffff
                         {disp8} je         _jmp_addr_0x005043f7                          // 0x005043d7    741e
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000160]             // 0x005043d9    8b8b60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x005043df    8b4958
                         push               edi                                           // 0x005043e2    57
                         call               _jmp_addr_0x00484b00                          // 0x005043e3    e81807f8ff
                         pop                edi                                           // 0x005043e8    5f
                         neg                eax                                           // 0x005043e9    f7d8
                         pop                esi                                           // 0x005043eb    5e
                         sbb.s              eax, eax                                      // 0x005043ec    1bc0
                         pop                ebp                                           // 0x005043ee    5d
                         and                eax, 0x02                                     // 0x005043ef    83e002
                         pop                ebx                                           // 0x005043f2    5b
                         add                esp, 0x08                                     // 0x005043f3    83c408
                         ret                                                              // 0x005043f6    c3
_jmp_addr_0x005043f7:    pop                edi                                           // 0x005043f7    5f
                         pop                esi                                           // 0x005043f8    5e
                         pop                ebp                                           // 0x005043f9    5d
                         mov                eax, 0x00000001                               // 0x005043fa    b801000000
                         pop                ebx                                           // 0x005043ff    5b
                         add                esp, 0x08                                     // 0x00504400    83c408
                         ret                                                              // 0x00504403    c3
                         nop                                                              // 0x00504404    90
                         nop                                                              // 0x00504405    90
                         nop                                                              // 0x00504406    90
                         nop                                                              // 0x00504407    90
                         nop                                                              // 0x00504408    90
                         nop                                                              // 0x00504409    90
                         nop                                                              // 0x0050440a    90
                         nop                                                              // 0x0050440b    90
                         nop                                                              // 0x0050440c    90
                         nop                                                              // 0x0050440d    90
                         nop                                                              // 0x0050440e    90
                         nop                                                              // 0x0050440f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x00504410    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00504416    8b4858
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00504419    e8b2fef7ff
                         neg                eax                                           // 0x0050441e    f7d8
                         sbb.s              eax, eax                                      // 0x00504420    1bc0
                         and                eax, 0xfffffffe                               // 0x00504422    83e0fe
                         add                eax, 0x02                                     // 0x00504425    83c002
                         ret                                                              // 0x00504428    c3
                         nop                                                              // 0x00504429    90
                         nop                                                              // 0x0050442a    90
                         nop                                                              // 0x0050442b    90
                         nop                                                              // 0x0050442c    90
                         nop                                                              // 0x0050442d    90
                         nop                                                              // 0x0050442e    90
                         nop                                                              // 0x0050442f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00504430    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]             // 0x00504436    8b90b40f0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x0050443c    8b4928
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x0050443f    8d1452
                         shl                edx, 5                                        // 0x00504442    c1e205
                         {disp32} mov       edx, dword ptr [edx + eax * 0x1 + 0x00000fe0] // 0x00504445    8b9402e00f0000
                         push               0x3f28f5c3                                    // 0x0050444c    68c3f5283f
                         push               edx                                           // 0x00504451    52
                         push               ecx                                           // 0x00504452    51
                         {disp8} lea        ecx, dword ptr [eax + 0x08]                   // 0x00504453    8d4808
                         call               _jmp_addr_0x004dc370                          // 0x00504456    e8157ffdff
                         mov                eax, 0x00000002                               // 0x0050445b    b802000000
                         ret                                                              // 0x00504460    c3
                         nop                                                              // 0x00504461    90
                         nop                                                              // 0x00504462    90
                         nop                                                              // 0x00504463    90
                         nop                                                              // 0x00504464    90
                         nop                                                              // 0x00504465    90
                         nop                                                              // 0x00504466    90
                         nop                                                              // 0x00504467    90
                         nop                                                              // 0x00504468    90
                         nop                                                              // 0x00504469    90
                         nop                                                              // 0x0050446a    90
                         nop                                                              // 0x0050446b    90
                         nop                                                              // 0x0050446c    90
                         nop                                                              // 0x0050446d    90
                         nop                                                              // 0x0050446e    90
                         nop                                                              // 0x0050446f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00504470    8b8164010000
                         add                eax, 0x00000fa8                               // 0x00504476    05a80f0000
                         xor.s              ecx, ecx                                      // 0x0050447b    33c9
                         {disp8} mov        dword ptr [eax + 0x08], 0x00000001            // 0x0050447d    c7400801000000
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x00504484    89480c
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x00504487    894810
                         {disp32} mov       dword ptr [eax + 0x00000c34], ecx             // 0x0050448a    8988340c0000
                         xor.s              eax, eax                                      // 0x00504490    33c0
                         ret                                                              // 0x00504492    c3
                         nop                                                              // 0x00504493    90
                         nop                                                              // 0x00504494    90
                         nop                                                              // 0x00504495    90
                         nop                                                              // 0x00504496    90
                         nop                                                              // 0x00504497    90
                         nop                                                              // 0x00504498    90
                         nop                                                              // 0x00504499    90
                         nop                                                              // 0x0050449a    90
                         nop                                                              // 0x0050449b    90
                         nop                                                              // 0x0050449c    90
                         nop                                                              // 0x0050449d    90
                         nop                                                              // 0x0050449e    90
                         nop                                                              // 0x0050449f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x005044a0    8b8164010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000fb4]             // 0x005044a6    8b90b40f0000
                         add                eax, 0x00000fa8                               // 0x005044ac    05a80f0000
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x005044b1    8d1452
                         shl                edx, 5                                        // 0x005044b4    c1e205
                         cmp                dword ptr [edx + eax * 0x1 + 0x38], 0x01      // 0x005044b7    837c023801
                         {disp8} jne        _jmp_addr_0x005044c4                          // 0x005044bc    7506
                         mov                eax, 0x00000002                               // 0x005044be    b802000000
                         ret                                                              // 0x005044c3    c3
_jmp_addr_0x005044c4:    push               0x1                                           // 0x005044c4    6a01
                         push               0x1                                           // 0x005044c6    6a01
                         push               0x0                                           // 0x005044c8    6a00
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                          // 0x005044ca    e86112f7ff
                         mov                eax, 0x00000001                               // 0x005044cf    b801000000
                         ret                                                              // 0x005044d4    c3
                         nop                                                              // 0x005044d5    90
                         nop                                                              // 0x005044d6    90
                         nop                                                              // 0x005044d7    90
                         nop                                                              // 0x005044d8    90
                         nop                                                              // 0x005044d9    90
                         nop                                                              // 0x005044da    90
                         nop                                                              // 0x005044db    90
                         nop                                                              // 0x005044dc    90
                         nop                                                              // 0x005044dd    90
                         nop                                                              // 0x005044de    90
                         nop                                                              // 0x005044df    90
                         push               esi                                           // 0x005044e0    56
                         push               edi                                           // 0x005044e1    57
                         mov.s              edi, ecx                                      // 0x005044e2    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x005044e4    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x005044ea    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x005044f0    05a80f0000
                         push               0x0                                           // 0x005044f5    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005044f7    8d0c49
                         push               0x009c7f50                                    // 0x005044fa    68507f9c00
                         shl                ecx, 5                                        // 0x005044ff    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x00504502    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x00504506    8b5030
                         push               0x009c7f30                                    // 0x00504509    68307f9c00
                         push               0x0                                           // 0x0050450e    6a00
                         push               edx                                           // 0x00504510    52
                         call               ___RTDynamicCast                              // 0x00504511    e803152c00
                         mov.s              esi, eax                                      // 0x00504516    8bf0
                         mov                eax, dword ptr [esi]                          // 0x00504518    8b06
                         add                esp, 0x14                                     // 0x0050451a    83c414
                         push               0x3e4ccccd                                    // 0x0050451d    68cdcc4c3e
                         mov.s              ecx, esi                                      // 0x00504522    8bce
                         call               dword ptr [eax + 0x5bc]                       // 0x00504524    ff90bc050000
                         fstp               st(0)                                         // 0x0050452a    ddd8
                         mov                edx, dword ptr [esi]                          // 0x0050452c    8b16
                         mov.s              ecx, esi                                      // 0x0050452e    8bce
                         call               dword ptr [edx + 0x11c]                       // 0x00504530    ff921c010000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00504536    d81d90a38a00
                         fnstsw             ax                                            // 0x0050453c    dfe0
                         test               ah, 0x01                                      // 0x0050453e    f6c401
                         {disp8} jne        _jmp_addr_0x00504553                          // 0x00504541    7510
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x00504543    8b8764010000
                         {disp32} mov       dword ptr [eax + 0x00000658], 0x00000001      // 0x00504549    c7805806000001000000
_jmp_addr_0x00504553:    pop                edi                                           // 0x00504553    5f
                         mov                eax, 0x00000002                               // 0x00504554    b802000000
                         pop                esi                                           // 0x00504559    5e
                         ret                                                              // 0x0050455a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0050455b    e819d3efff
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00504560    8b8164010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00504566    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x0050456c    05a80f0000
                         push               0x0                                           // 0x00504571    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00504573    8d0c49
                         push               0x009c7f50                                    // 0x00504576    68507f9c00
                         shl                ecx, 5                                        // 0x0050457b    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x0050457e    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x00504582    8b5030
                         push               0x009c7f30                                    // 0x00504585    68307f9c00
                         push               0x0                                           // 0x0050458a    6a00
                         push               edx                                           // 0x0050458c    52
                         call               ___RTDynamicCast                              // 0x0050458d    e887142c00
                         mov                edx, dword ptr [eax]                          // 0x00504592    8b10
                         add                esp, 0x14                                     // 0x00504594    83c414
                         push               0x0                                           // 0x00504597    6a00
                         mov.s              ecx, eax                                      // 0x00504599    8bc8
                         call               dword ptr [edx + 0xc]                         // 0x0050459b    ff520c
                         mov                eax, 0x00000002                               // 0x0050459e    b802000000
                         ret                                                              // 0x005045a3    c3
                         nop                                                              // 0x005045a4    90
                         nop                                                              // 0x005045a5    90
                         nop                                                              // 0x005045a6    90
                         nop                                                              // 0x005045a7    90
                         nop                                                              // 0x005045a8    90
                         nop                                                              // 0x005045a9    90
                         nop                                                              // 0x005045aa    90
                         nop                                                              // 0x005045ab    90
                         nop                                                              // 0x005045ac    90
                         nop                                                              // 0x005045ad    90
                         nop                                                              // 0x005045ae    90
                         nop                                                              // 0x005045af    90
                         sub                esp, 0x44                                     // 0x005045b0    83ec44
                         push               esi                                           // 0x005045b3    56
                         push               edi                                           // 0x005045b4    57
                         mov.s              edi, ecx                                      // 0x005045b5    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x005045b7    8b8764010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x005045bd    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x005045c3    05a80f0000
                         push               0x0                                           // 0x005045c8    6a00
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005045ca    8d0c49
                         push               0x009c7f50                                    // 0x005045cd    68507f9c00
                         shl                ecx, 5                                        // 0x005045d2    c1e105
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x1 + 0x34]       // 0x005045d5    8b440134
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x005045d9    8b5030
                         push               0x009c7f30                                    // 0x005045dc    68307f9c00
                         push               0x0                                           // 0x005045e1    6a00
                         push               edx                                           // 0x005045e3    52
                         call               ___RTDynamicCast                              // 0x005045e4    e830142c00
                         add                esp, 0x14                                     // 0x005045e9    83c414
                         push               0x0                                           // 0x005045ec    6a00
                         push               edi                                           // 0x005045ee    57
                         push               0x4                                           // 0x005045ef    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x005045f1    8d4c2418
                         mov.s              esi, eax                                      // 0x005045f5    8bf0
                         call               _jmp_addr_0x00524fe0                          // 0x005045f7    e8e4090200
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x005045fc    8d442408
                         push               eax                                           // 0x00504600    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00504601    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x0c], 0x40a00000            // 0x00504605    c744240c0000a040
                         call               _jmp_addr_0x00525720                          // 0x0050460d    e80e110200
                         mov                edx, dword ptr [esi]                          // 0x00504612    8b16
                         push               0x1                                           // 0x00504614    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00504616    8d442410
                         push               eax                                           // 0x0050461a    50
                         mov.s              ecx, esi                                      // 0x0050461b    8bce
                         call               dword ptr [edx + 0x5cc]                       // 0x0050461d    ff92cc050000
                         fstp               st(0)                                         // 0x00504623    ddd8
                         mov.s              ecx, esi                                      // 0x00504625    8bce
                         call               _jmp_addr_0x00637cc0                          // 0x00504627    e894361300
                         test               eax, eax                                      // 0x0050462c    85c0
                         {disp8} jne        _jmp_addr_0x00504640                          // 0x0050462e    7510
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x00504630    8b8f64010000
                         {disp32} mov       dword ptr [ecx + 0x00000658], 0x00000001      // 0x00504636    c7815806000001000000
_jmp_addr_0x00504640:    {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00504640    8d4c240c
                         call               _jmp_addr_0x00436960                          // 0x00504644    e81723f3ff
                         pop                edi                                           // 0x00504649    5f
                         mov                eax, 0x00000002                               // 0x0050464a    b802000000
                         pop                esi                                           // 0x0050464f    5e
                         add                esp, 0x44                                     // 0x00504650    83c444
                         ret                                                              // 0x00504653    c3
                         nop                                                              // 0x00504654    90
                         nop                                                              // 0x00504655    90
                         nop                                                              // 0x00504656    90
                         nop                                                              // 0x00504657    90
                         nop                                                              // 0x00504658    90
                         nop                                                              // 0x00504659    90
                         nop                                                              // 0x0050465a    90
                         nop                                                              // 0x0050465b    90
                         nop                                                              // 0x0050465c    90
                         nop                                                              // 0x0050465d    90
                         nop                                                              // 0x0050465e    90
                         nop                                                              // 0x0050465f    90
                         sub                esp, 0x0c                                     // 0x00504660    83ec0c
                         push               esi                                           // 0x00504663    56
                         mov.s              esi, ecx                                      // 0x00504664    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00504666    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x0050466c    8b88b40f0000
                         add                eax, 0x00000fa8                               // 0x00504672    05a80f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00504677    8d0c49
                         shl                ecx, 5                                        // 0x0050467a    c1e105
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x1 + 0x3c]       // 0x0050467d    8b54013c
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x1 + 0x3c]       // 0x00504681    8d44013c
                         {disp8} mov        dword ptr [esp + 0x04], edx                   // 0x00504685    89542404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00504689    8b4804
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x0050468c    894c2408
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00504690    8b5008
                         mov                eax, dword ptr [esi]                          // 0x00504693    8b06
                         push               0x0                                           // 0x00504695    6a00
                         mov.s              ecx, esi                                      // 0x00504697    8bce
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00504699    89542410
                         call               dword ptr [eax + 0x42c]                       // 0x0050469d    ff902c040000
                         push               ecx                                           // 0x005046a3    51
                         fstp               dword ptr [esp]                               // 0x005046a4    d91c24
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x005046a7    8d4c240c
                         push               ecx                                           // 0x005046ab    51
                         push               0x0                                           // 0x005046ac    6a00
                         mov.s              ecx, esi                                      // 0x005046ae    8bce
                         call               _jmp_addr_0x0047a880                          // 0x005046b0    e8cb61f7ff
                         cmp                eax, 0x04                                     // 0x005046b5    83f804
                         {disp8} ja         _jmp_addr_0x005046ce                          // 0x005046b8    7714
                         jmp                dword ptr [eax*4 + 0x5046ec]                  // 0x005046ba    ff2485ec465000
                         push               0x1                                           // 0x005046c1    6a01
                         push               0x1                                           // 0x005046c3    6a01
                         push               0x0                                           // 0x005046c5    6a00
                         mov.s              ecx, esi                                      // 0x005046c7    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                          // 0x005046c9    e86210f7ff
_jmp_addr_0x005046ce:    mov                eax, 0x00000001                               // 0x005046ce    b801000000
                         pop                esi                                           // 0x005046d3    5e
                         add                esp, 0x0c                                     // 0x005046d4    83c40c
                         ret                                                              // 0x005046d7    c3
                         xor.s              eax, eax                                      // 0x005046d8    33c0
                         pop                esi                                           // 0x005046da    5e
                         add                esp, 0x0c                                     // 0x005046db    83c40c
                         ret                                                              // 0x005046de    c3
                         mov                eax, 0x00000002                               // 0x005046df    b802000000
                         pop                esi                                           // 0x005046e4    5e
                         add                esp, 0x0c                                     // 0x005046e5    83c40c
                         ret                                                              // 0x005046e8    c3

// Snippet: db, [0x005046e9, 0x005046ec)
.byte 0x8d, 0x49, 0x00            // 0x005046e9

// Snippet: jmptbl, [0x005046ec, 0x00504700)
.byte 0xc1, 0x46, 0x50, 0x00      // 0x005046ec
.byte 0xd8, 0x46, 0x50, 0x00      // 0x005046f0
.byte 0xc1, 0x46, 0x50, 0x00      // 0x005046f4
.byte 0xdf, 0x46, 0x50, 0x00      // 0x005046f8
.byte 0xdf, 0x46, 0x50, 0x00      // 0x005046fc

