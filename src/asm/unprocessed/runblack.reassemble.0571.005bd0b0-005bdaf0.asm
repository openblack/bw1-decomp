.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x005b96d0
.extern _jmp_addr_0x005b98d0
.extern _jmp_addr_0x005baa40
.extern _jmp_addr_0x005bac10
.extern _jmp_addr_0x005bf9d0
.extern _jmp_addr_0x005c0310
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x0081b370
.extern _jmp_addr_0x0081b450
.extern _jmp_addr_0x0081b5f0
.extern _jmp_addr_0x00861ee0

.globl _jmp_addr_0x005bd0b0
.globl _jmp_addr_0x005bd210
.globl _jmp_addr_0x005bd250
.globl _jmp_addr_0x005bd2a0
.globl _jmp_addr_0x005bd390
.globl _jmp_addr_0x005bd440
.globl _jmp_addr_0x005bd4a0

start_0x005bd0b0_0x005bdaf0:
// Snippet: asm, [0x005bd0b0, 0x005bd99d)
_jmp_addr_0x005bd0b0:    sub                esp, 0x24                                     // 0x005bd0b0    83ec24
                         push               ebx                                           // 0x005bd0b3    53
                         push               esi                                           // 0x005bd0b4    56
                         mov.s              esi, ecx                                      // 0x005bd0b5    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00002c2c]             // 0x005bd0b7    8b862c2c0000
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x005bd0bd    89442408
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x005bd0c1    d9442408
                         push               edi                                           // 0x005bd0c5    57
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005bd0c6    d81d98a38a00
                         fnstsw             ax                                            // 0x005bd0cc    dfe0
                         test               ah, 0x41                                      // 0x005bd0ce    f6c441
                         {disp8} je         _jmp_addr_0x005bd0dd                          // 0x005bd0d1    740a
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x005bd0d3    c744240c00000000
                         {disp8} jmp        _jmp_addr_0x005bd0f6                          // 0x005bd0db    eb19
_jmp_addr_0x005bd0dd:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005bd0dd    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005bd0e1    d81d90a38a00
                         fnstsw             ax                                            // 0x005bd0e7    dfe0
                         test               ah, 0x41                                      // 0x005bd0e9    f6c441
                         {disp8} jne        _jmp_addr_0x005bd0f6                          // 0x005bd0ec    7508
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3f800000            // 0x005bd0ee    c744240c0000803f
_jmp_addr_0x005bd0f6:    {disp32} mov       edx, dword ptr [esi + 0x00002c28]             // 0x005bd0f6    8b96282c0000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005bd0fc    8b4c240c
                         push               ecx                                           // 0x005bd100    51
                         shl                edx, 6                                        // 0x005bd101    c1e206
                         {disp32} lea       eax, dword ptr [edx + esi * 0x1 + 0x00002c38] // 0x005bd104    8d8432382c0000
                         push               eax                                           // 0x005bd10b    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00002c38]             // 0x005bd10c    8d8e382c0000
                         {disp32} lea       ebx, dword ptr [esi + 0x00002e38]             // 0x005bd112    8d9e382e0000
                         push               ecx                                           // 0x005bd118    51
                         mov.s              ecx, ebx                                      // 0x005bd119    8bcb
                         call               _jmp_addr_0x005baa40                          // 0x005bd11b    e820d9ffff
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x005bd120    8b542434
                         push               edx                                           // 0x005bd124    52
                         {disp32} lea       eax, dword ptr [esi + 0x00002e78]             // 0x005bd125    8d86782e0000
                         push               eax                                           // 0x005bd12b    50
                         {disp32} lea       edi, dword ptr [esi + 0x00002e44]             // 0x005bd12c    8dbe442e0000
                         push               edi                                           // 0x005bd132    57
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x005bd133    8d4c241c
                         push               ecx                                           // 0x005bd137    51
                         mov.s              ecx, ebx                                      // 0x005bd138    8bcb
                         {disp8} mov        dword ptr [esp + 0x24], 0x3f800000            // 0x005bd13a    c74424240000803f
                         {disp8} mov        dword ptr [esp + 0x20], 0x3f800000            // 0x005bd142    c74424200000803f
                         {disp8} mov        dword ptr [esp + 0x2c], 0x3f800000            // 0x005bd14a    c744242c0000803f
                         {disp8} mov        dword ptr [esp + 0x28], 0x3f800000            // 0x005bd152    c74424280000803f
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x005bd15a    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x005bd162    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000            // 0x005bd16a    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x005bd172    c744243800000000
                         call               _jmp_addr_0x005bac10                          // 0x005bd17a    e891daffff
                         test               byte ptr [esi + 0x000035d0], 0x08             // 0x005bd17f    f686d035000008
                         {disp8} jne        _jmp_addr_0x005bd194                          // 0x005bd186    750c
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x005bd188    8d542410
                         push               edx                                           // 0x005bd18c    52
                         mov.s              ecx, esi                                      // 0x005bd18d    8bce
                         call               _jmp_addr_0x005c0310                          // 0x005bd18f    e87c310000
_jmp_addr_0x005bd194:    push               edi                                           // 0x005bd194    57
                         mov.s              ecx, esi                                      // 0x005bd195    8bce
                         call               _jmp_addr_0x005bf9d0                          // 0x005bd197    e834280000
                         {disp32} mov       eax, dword ptr [esi + 0x00002c28]             // 0x005bd19c    8b86282c0000
                         {disp8} mov        ecx, dword ptr [esi + 0x24]                   // 0x005bd1a2    8b4e24
                         {disp8} mov        edi, dword ptr [ecx + eax * 0x4 + 0x28]       // 0x005bd1a5    8b7c8128
                         test               edi, edi                                      // 0x005bd1a9    85ff
                         {disp8} je         _jmp_addr_0x005bd203                          // 0x005bd1ab    7456
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005bd1ad    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005bd1b1    d81d98a38a00
                         fnstsw             ax                                            // 0x005bd1b7    dfe0
                         test               ah, 0x41                                      // 0x005bd1b9    f6c441
                         {disp8} jne        _jmp_addr_0x005bd203                          // 0x005bd1bc    7545
                         mov                ebx, dword ptr [edi]                          // 0x005bd1be    8b1f
                         {disp8} mov        dword ptr [esp + 0x34], ebx                   // 0x005bd1c0    895c2434
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x005bd1c4    db442434
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x005bd1c8    d84c240c
                         call               _jmp_addr_0x007a1400                          // 0x005bd1cc    e82f421e00
                         cmp.s              eax, ebx                                      // 0x005bd1d1    3bc3
                         {disp8} jl         _jmp_addr_0x005bd1d8                          // 0x005bd1d3    7c03
                         {disp8} lea        eax, dword ptr [ebx + -0x01]                  // 0x005bd1d5    8d43ff
_jmp_addr_0x005bd1d8:    {disp32} mov       edx, dword ptr [esi + 0x000028b0]             // 0x005bd1d8    8b96b0280000
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x005bd1de    8b4e14
                         push               0x0                                           // 0x005bd1e1    6a00
                         push               0x0                                           // 0x005bd1e3    6a00
                         push               eax                                           // 0x005bd1e5    50
                         {disp32} mov       eax, dword ptr [esi + 0x000028ac]             // 0x005bd1e6    8b86ac280000
                         push               edx                                           // 0x005bd1ec    52
                         {disp8} mov        edx, dword ptr [edi + 0x34]                   // 0x005bd1ed    8b5734
                         push               eax                                           // 0x005bd1f0    50
                         mov                eax, dword ptr [edx]                          // 0x005bd1f1    8b02
                         push               ecx                                           // 0x005bd1f3    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000028b4]             // 0x005bd1f4    8b8eb4280000
                         push               eax                                           // 0x005bd1fa    50
                         push               ecx                                           // 0x005bd1fb    51
                         mov.s              ecx, edi                                      // 0x005bd1fc    8bcf
                         call               _jmp_addr_0x00861ee0                          // 0x005bd1fe    e8dd4c2a00
_jmp_addr_0x005bd203:    pop                edi                                           // 0x005bd203    5f
                         pop                esi                                           // 0x005bd204    5e
                         pop                ebx                                           // 0x005bd205    5b
                         add                esp, 0x24                                     // 0x005bd206    83c424
                         ret                0x0004                                        // 0x005bd209    c20400
                         nop                                                              // 0x005bd20c    90
                         nop                                                              // 0x005bd20d    90
                         nop                                                              // 0x005bd20e    90
                         nop                                                              // 0x005bd20f    90
_jmp_addr_0x005bd210:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x005bd210    d9442408
                         {disp32} mov       dword ptr [ecx + 0x00003488], 0x00000000      // 0x005bd214    c7818834000000000000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005bd21e    d81598a38a00
                         fnstsw             ax                                            // 0x005bd224    dfe0
                         test               ah, 0x41                                      // 0x005bd226    f6c441
                         {disp8} je         _jmp_addr_0x005bd233                          // 0x005bd229    7408
                         fstp               st(0)                                         // 0x005bd22b    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005bd22d    d90598a38a00
_jmp_addr_0x005bd233:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005bd233    8b442404
                         {disp32} fstp      dword ptr [ecx + 0x00002c34]                  // 0x005bd237    d999342c0000
                         {disp32} mov       dword ptr [ecx + 0x00002c30], eax             // 0x005bd23d    8981302c0000
                         ret                0x0008                                        // 0x005bd243    c20800
                         nop                                                              // 0x005bd246    90
                         nop                                                              // 0x005bd247    90
                         nop                                                              // 0x005bd248    90
                         nop                                                              // 0x005bd249    90
                         nop                                                              // 0x005bd24a    90
                         nop                                                              // 0x005bd24b    90
                         nop                                                              // 0x005bd24c    90
                         nop                                                              // 0x005bd24d    90
                         nop                                                              // 0x005bd24e    90
                         nop                                                              // 0x005bd24f    90
_jmp_addr_0x005bd250:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x005bd250    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005bd254    d81d98a38a00
                         fnstsw             ax                                            // 0x005bd25a    dfe0
                         test               ah, 0x01                                      // 0x005bd25c    f6c401
                         {disp8} je         _jmp_addr_0x005bd268                          // 0x005bd25f    7407
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005bd261    d90598a38a00
                         ret                                                              // 0x005bd267    c3
_jmp_addr_0x005bd268:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x005bd268    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005bd26c    d81d90a38a00
                         fnstsw             ax                                            // 0x005bd272    dfe0
                         test               ah, 0x41                                      // 0x005bd274    f6c441
                         {disp8} jne        _jmp_addr_0x005bd280                          // 0x005bd277    7507
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005bd279    d90590a38a00
                         ret                                                              // 0x005bd27f    c3
_jmp_addr_0x005bd280:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x005bd280    d9442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x005bd284    d80da0368c00
                         fcos                                                             // 0x005bd28a    d9ff
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x005bd28c    d82d90a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x005bd292    d80db4a38a00
                         ret                                                              // 0x005bd298    c3
                         nop                                                              // 0x005bd299    90
                         nop                                                              // 0x005bd29a    90
                         nop                                                              // 0x005bd29b    90
                         nop                                                              // 0x005bd29c    90
                         nop                                                              // 0x005bd29d    90
                         nop                                                              // 0x005bd29e    90
                         nop                                                              // 0x005bd29f    90
_jmp_addr_0x005bd2a0:    sub                esp, 0x18                                     // 0x005bd2a0    83ec18
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x005bd2a3    a15850e800
                         push               esi                                           // 0x005bd2a8    56
                         mov.s              esi, ecx                                      // 0x005bd2a9    8bf1
                         and                eax, 0x0000ffff                               // 0x005bd2ab    25ffff0000
                         xor.s              ecx, ecx                                      // 0x005bd2b0    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x005bd2b2    668b0d5a50e800
                         shr                eax, 1                                        // 0x005bd2b9    d1e8
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x005bd2bb    89442404
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x005bd2bf    db442404
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005bd2c3    d9442424
                         {disp8} mov        al, byte ptr [esp + 0x30]                     // 0x005bd2c7    8a442430
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x005bd2cb    d80590a38a00
                         shr                ecx, 1                                        // 0x005bd2d1    d1e9
                         fmul               st, st(1)                                     // 0x005bd2d3    d8c9
                         test               al, al                                        // 0x005bd2d5    84c0
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x005bd2d7    894c240c
                         {disp8} je         _jmp_addr_0x005bd30d                          // 0x005bd2db    7430
                         call               _jmp_addr_0x007a1400                          // 0x005bd2dd    e81e411e00
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x005bd2e2    d84c2428
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x005bd2e6    89442404
                         {disp8} fiadd      dword ptr [esp + 0x0c]                        // 0x005bd2ea    da44240c
                         call               _jmp_addr_0x007a1400                          // 0x005bd2ee    e80d411e00
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x005bd2f3    d905e039e800
                         fadd.s             st(0), st(0)                                  // 0x005bd2f9    dcc0
                         push               ecx                                           // 0x005bd2fb    51
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x005bd2fc    8944240c
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x005bd300    8d542414
                         fstp               dword ptr [esp]                               // 0x005bd304    d91c24
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x005bd307    8d4c2408
                         {disp8} jmp        _jmp_addr_0x005bd364                          // 0x005bd30b    eb57
_jmp_addr_0x005bd30d:    call               _jmp_addr_0x007a1400                          // 0x005bd30d    e8ee401e00
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x005bd312    d84c2428
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x005bd316    89442404
                         {disp8} fiadd      dword ptr [esp + 0x0c]                        // 0x005bd31a    da44240c
                         call               _jmp_addr_0x007a1400                          // 0x005bd31e    e8dd401e00
                         {disp32} mov       edx, dword ptr [esi + 0x000034d0]             // 0x005bd323    8b96d0340000
                         push               edx                                           // 0x005bd329    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x005bd32a    8944240c
                         call               _jmp_addr_0x005bd250                          // 0x005bd32e    e81dffffff
                         {disp32} fld       dword ptr [esi + 0x000035bc]                  // 0x005bd333    d986bc350000
                         {disp32} fsub      dword ptr [esi + 0x000035b8]                  // 0x005bd339    d8a6b8350000
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x005bd33f    8d542414
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x005bd343    8d4c2408
                         fmulp              st(1), st                                     // 0x005bd347    dec9
                         {disp32} fadd      dword ptr [esi + 0x000035b8]                  // 0x005bd349    d886b8350000
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x005bd34f    d9442430
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x005bd353    d80d3cb28a00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x005bd359    d80590a38a00
                         fmulp              st(1), st                                     // 0x005bd35f    dec9
                         fstp               dword ptr [esp]                               // 0x005bd361    d91c24
_jmp_addr_0x005bd364:    call               _jmp_addr_0x0081b370                          // 0x005bd364    e807e02500
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005bd369    d9442410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005bd36d    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005bd371    8b4c2414
                         fstp               dword ptr [eax]                               // 0x005bd375    d918
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005bd377    8b542418
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x005bd37b    894804
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x005bd37e    895008
                         pop                esi                                           // 0x005bd381    5e
                         add                esp, 0x18                                     // 0x005bd382    83c418
                         ret                0x0014                                        // 0x005bd385    c21400
                         nop                                                              // 0x005bd388    90
                         nop                                                              // 0x005bd389    90
                         nop                                                              // 0x005bd38a    90
                         nop                                                              // 0x005bd38b    90
                         nop                                                              // 0x005bd38c    90
                         nop                                                              // 0x005bd38d    90
                         nop                                                              // 0x005bd38e    90
                         nop                                                              // 0x005bd38f    90
_jmp_addr_0x005bd390:    sub                esp, 0x20                                     // 0x005bd390    83ec20
                         push               esi                                           // 0x005bd393    56
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x005bd394    8b742428
                         push               0x1                                           // 0x005bd398    6a01
                         push               esi                                           // 0x005bd39a    56
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x005bd39b    8d542430
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x005bd39f    8d4c240c
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea0], 0x00ea9e40 // 0x005bd3a3    c705a09eea00409eea00
                         call               _jmp_addr_0x0081b450                          // 0x005bd3ad    e89ee02500
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005bd3b2    8b442428
                         test               al, 0x20                                      // 0x005bd3b6    a820
                         {disp8} je         _jmp_addr_0x005bd3c3                          // 0x005bd3b8    7409
                         xor.s              eax, eax                                      // 0x005bd3ba    33c0
                         pop                esi                                           // 0x005bd3bc    5e
                         add                esp, 0x20                                     // 0x005bd3bd    83c420
                         ret                0x0010                                        // 0x005bd3c0    c21000
_jmp_addr_0x005bd3c3:    test               eax, eax                                      // 0x005bd3c3    85c0
                         {disp8} je         _jmp_addr_0x005bd3e5                          // 0x005bd3c5    741e
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x005bd3c7    8b442434
                         test               eax, eax                                      // 0x005bd3cb    85c0
                         {disp8} jne        _jmp_addr_0x005bd3d8                          // 0x005bd3cd    7509
                         xor.s              eax, eax                                      // 0x005bd3cf    33c0
                         pop                esi                                           // 0x005bd3d1    5e
                         add                esp, 0x20                                     // 0x005bd3d2    83c420
                         ret                0x0010                                        // 0x005bd3d5    c21000
_jmp_addr_0x005bd3d8:    push               0x1                                           // 0x005bd3d8    6a01
                         mov.s              edx, esi                                      // 0x005bd3da    8bd6
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x005bd3dc    8d4c2408
                         call               _jmp_addr_0x0081b5f0                          // 0x005bd3e0    e80be22500
_jmp_addr_0x005bd3e5:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x005bd3e5    a15850e800
                         and                eax, 0x0000ffff                               // 0x005bd3ea    25ffff0000
                         shr                eax, 1                                        // 0x005bd3ef    d1e8
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x005bd3f1    89442428
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x005bd3f5    db442428
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x005bd3f9    d9442404
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]          // 0x005bd3fd    66a15a50e800
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x005bd403    8b4c242c
                         fsub               st, st(1)                                     // 0x005bd407    d8e1
                         shr                ax, 1                                         // 0x005bd409    66d1e8
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x005bd40c    8b542430
                         pop                esi                                           // 0x005bd410    5e
                         fdiv               st, st(1)                                     // 0x005bd411    d8f1
                         and                eax, 0x0000ffff                               // 0x005bd413    25ffff0000
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005bd418    89442424
                         mov                eax, 0x00000001                               // 0x005bd41c    b801000000
                         fstp               dword ptr [ecx]                               // 0x005bd421    d919
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x005bd423    db442424
                         {disp8} fsubr      dword ptr [esp + 0x04]                        // 0x005bd427    d86c2404
                         fdiv               st, st(1)                                     // 0x005bd42b    d8f1
                         fstp               dword ptr [edx]                               // 0x005bd42d    d91a
                         fstp               st(0)                                         // 0x005bd42f    ddd8
                         add                esp, 0x20                                     // 0x005bd431    83c420
                         ret                0x0010                                        // 0x005bd434    c21000
                         nop                                                              // 0x005bd437    90
                         nop                                                              // 0x005bd438    90
                         nop                                                              // 0x005bd439    90
                         nop                                                              // 0x005bd43a    90
                         nop                                                              // 0x005bd43b    90
                         nop                                                              // 0x005bd43c    90
                         nop                                                              // 0x005bd43d    90
                         nop                                                              // 0x005bd43e    90
                         nop                                                              // 0x005bd43f    90
_jmp_addr_0x005bd440:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]        // 0x005bd440    8b0d5850e800
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x005bd446    8b442408
                         xor.s              edx, edx                                      // 0x005bd44a    33d2
                         {disp32} mov       dx, word ptr [data_bytes + 0x4bf05a]          // 0x005bd44c    668b155a50e800
                         and                ecx, 0x0000ffff                               // 0x005bd453    81e1ffff0000
                         shr                ecx, 1                                        // 0x005bd459    d1e9
                         shr                edx, 1                                        // 0x005bd45b    d1ea
                         sub                eax, 0x00                                     // 0x005bd45d    83e800
                         {disp8} je         _jmp_addr_0x005bd48d                          // 0x005bd460    742b
                         dec                eax                                           // 0x005bd462    48
                         {disp8} je         _jmp_addr_0x005bd481                          // 0x005bd463    741c
                         dec                eax                                           // 0x005bd465    48
                         {disp8} je         _jmp_addr_0x005bd475                          // 0x005bd466    740d
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005bd468    8b442404
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005bd46c    8d0c49
                         mov                dword ptr [eax], ecx                          // 0x005bd46f    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x005bd471    895004
                         ret                                                              // 0x005bd474    c3
_jmp_addr_0x005bd475:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005bd475    8b442404
                         neg                edx                                           // 0x005bd479    f7da
                         mov                dword ptr [eax], ecx                          // 0x005bd47b    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x005bd47d    895004
                         ret                                                              // 0x005bd480    c3
_jmp_addr_0x005bd481:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005bd481    8b442404
                         neg                ecx                                           // 0x005bd485    f7d9
                         mov                dword ptr [eax], ecx                          // 0x005bd487    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x005bd489    895004
                         ret                                                              // 0x005bd48c    c3
_jmp_addr_0x005bd48d:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005bd48d    8b442404
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x005bd491    8d1452
                         mov                dword ptr [eax], ecx                          // 0x005bd494    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x005bd496    895004
                         ret                                                              // 0x005bd499    c3
                         call               dword ptr [__imp__RegCloseKey@4]              // 0x005bd49a    ff1504908a00
_jmp_addr_0x005bd4a0:    push               ecx                                           // 0x005bd4a0    51
                         push               ebx                                           // 0x005bd4a1    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x005bd4a2    8b5c240c
                         push               esi                                           // 0x005bd4a6    56
                         push               edi                                           // 0x005bd4a7    57
                         xor.s              edi, edi                                      // 0x005bd4a8    33ff
                         cmp.s              ebx, edi                                      // 0x005bd4aa    3bdf
                         mov.s              esi, ecx                                      // 0x005bd4ac    8bf1
                         {disp8} jne        _jmp_addr_0x005bd4bf                          // 0x005bd4ae    750f
                         {disp32} mov       ebx, dword ptr [esi + 0x00003494]             // 0x005bd4b0    8b9e94340000
                         cmp.s              ebx, edi                                      // 0x005bd4b6    3bdf
                         {disp8} jne        _jmp_addr_0x005bd4bf                          // 0x005bd4b8    7505
                         mov                ebx, 0x00000004                               // 0x005bd4ba    bb04000000
_jmp_addr_0x005bd4bf:    {disp32} mov       eax, dword ptr [esi + 0x00003490]             // 0x005bd4bf    8b8690340000
                         cmp.s              eax, ebx                                      // 0x005bd4c5    3bc3
                         {disp32} je        _jmp_addr_0x005bd996                          // 0x005bd4c7    0f84c9040000
                         cmp                dword ptr [esp + 0x18], edi                   // 0x005bd4cd    397c2418
                         {disp8} jne        _jmp_addr_0x005bd4e4                          // 0x005bd4d1    7511
                         test               al, 0x30                                      // 0x005bd4d3    a830
                         {disp8} je         _jmp_addr_0x005bd4e4                          // 0x005bd4d5    740d
                         pop                edi                                           // 0x005bd4d7    5f
                         {disp32} mov       dword ptr [esi + 0x00003494], ebx             // 0x005bd4d8    899e94340000
                         pop                esi                                           // 0x005bd4de    5e
                         pop                ebx                                           // 0x005bd4df    5b
                         pop                ecx                                           // 0x005bd4e0    59
                         ret                0x0008                                        // 0x005bd4e1    c20800
_jmp_addr_0x005bd4e4:    cmp                eax, 0x00000100                               // 0x005bd4e4    3d00010000
                         push               ebp                                           // 0x005bd4e9    55
                         {disp32} mov       dword ptr [esi + 0x00003494], edi             // 0x005bd4ea    89be94340000
                         {disp8} jg         _jmp_addr_0x005bd52e                          // 0x005bd4f0    7f3c
                         {disp8} je         _jmp_addr_0x005bd51f                          // 0x005bd4f2    742b
                         {disp8} lea        ebp, dword ptr [eax + -0x09]                  // 0x005bd4f4    8d68f7
                         cmp                ebp, 0x21                                     // 0x005bd4f7    83fd21
                         {disp8} ja         _jmp_addr_0x005bd53f                          // 0x005bd4fa    7743
                         xor.s              ecx, ecx                                      // 0x005bd4fc    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x005bd9ac]               // 0x005bd4fe    8a8dacd95b00
                         jmp                dword ptr [ecx*4 + 0x5bd9a0]                  // 0x005bd504    ff248da0d95b00
                         test               bl, 0x08                                      // 0x005bd50b    f6c308
                         {disp8} jne        _jmp_addr_0x005bd53f                          // 0x005bd50e    752f
                         test               bh, 0x01                                      // 0x005bd510    f6c701
                         {disp8} jne        _jmp_addr_0x005bd53f                          // 0x005bd513    752a
                         or                 eax, 0x20                                     // 0x005bd515    83c820
                         mov.s              ebx, eax                                      // 0x005bd518    8bd8
                         {disp32} jmp       _jmp_addr_0x005bd981                          // 0x005bd51a    e962040000
_jmp_addr_0x005bd51f:    test               bh, 0x01                                      // 0x005bd51f    f6c701
                         {disp8} jne        _jmp_addr_0x005bd53f                          // 0x005bd522    751b
                         mov                ebx, 0x00000120                               // 0x005bd524    bb20010000
                         {disp32} jmp       _jmp_addr_0x005bd981                          // 0x005bd529    e953040000
_jmp_addr_0x005bd52e:    cmp                eax, 0x00000120                               // 0x005bd52e    3d20010000
                         {disp8} jne        _jmp_addr_0x005bd53f                          // 0x005bd533    750a
                         {disp32} mov       dword ptr [esi + 0x00003490], 0x00000004      // 0x005bd535    c7869034000004000000
_jmp_addr_0x005bd53f:    {disp8} lea        eax, dword ptr [ebx + -0x04]                  // 0x005bd53f    8d43fc
                         cmp                eax, 0x000000fc                               // 0x005bd542    3dfc000000
                         {disp32} ja        _jmp_addr_0x005bd981                          // 0x005bd547    0f8734040000
                         xor.s              edx, edx                                      // 0x005bd54d    33d2
                         {disp32} mov       dl, byte ptr [eax + 0x005bd9e8]               // 0x005bd54f    8a90e8d95b00
                         jmp                dword ptr [edx*4 + 0x5bd9d0]                  // 0x005bd555    ff2495d0d95b00
                         {disp32} mov       eax, dword ptr [esi + 0x00003490]             // 0x005bd55c    8b8690340000
                         test               ah, 0x01                                      // 0x005bd562    f6c401
                         {disp8} jne        _jmp_addr_0x005bd59f                          // 0x005bd565    7538
                         {disp32} mov       eax, dword ptr [esi + 0x000034ec]             // 0x005bd567    8b86ec340000
                         push               edi                                           // 0x005bd56d    57
                         push               0x3f800000                                    // 0x005bd56e    680000803f
                         push               eax                                           // 0x005bd573    50
                         mov.s              ecx, esi                                      // 0x005bd574    8bce
                         {disp32} mov       dword ptr [esi + 0x000034f8], edi             // 0x005bd576    89bef8340000
                         mov                ebx, 0x00000110                               // 0x005bd57c    bb10010000
                         call               _jmp_addr_0x005b96d0                          // 0x005bd581    e84ac1ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000034f0]             // 0x005bd586    8b8ef0340000
                         push               edi                                           // 0x005bd58c    57
                         push               0x3f800000                                    // 0x005bd58d    680000803f
                         push               ecx                                           // 0x005bd592    51
                         mov.s              ecx, esi                                      // 0x005bd593    8bce
                         call               _jmp_addr_0x005b98d0                          // 0x005bd595    e836c3ffff
                         {disp32} jmp       _jmp_addr_0x005bd981                          // 0x005bd59a    e9e2030000
_jmp_addr_0x005bd59f:    mov                ebx, 0x00000100                               // 0x005bd59f    bb00010000
                         {disp32} jmp       _jmp_addr_0x005bd981                          // 0x005bd5a4    e9d8030000
                         cmp                dword ptr [esi + 0x00003490], 0x00000080      // 0x005bd5a9    81be9034000080000000
                         {disp32} je        _jmp_addr_0x005bd981                          // 0x005bd5b3    0f84c8030000
                         {disp32} fld       dword ptr [esi + 0x00003514]                  // 0x005bd5b9    d98614350000
                         {disp32} fsub      dword ptr [esi + 0x000034fc]                  // 0x005bd5bf    d8a6fc340000
                         {disp32} fld       dword ptr [esi + 0x00003544]                  // 0x005bd5c5    d98644350000
                         {disp32} fsub      dword ptr [esi + 0x00003500]                  // 0x005bd5cb    d8a600350000
                         fld                st(0)                                         // 0x005bd5d1    d9c0
                         fmul               st, st(1)                                     // 0x005bd5d3    d8c9
                         fld                st(2)                                         // 0x005bd5d5    d9c2
                         fmul               st, st(3)                                     // 0x005bd5d7    d8cb
                         faddp              st(1), st                                     // 0x005bd5d9    dec1
                         fsqrt                                                            // 0x005bd5db    d9fa
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005bd5dd    d95c2418
                         fstp               st(0)                                         // 0x005bd5e1    ddd8
                         fstp               st(0)                                         // 0x005bd5e3    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005bd5e5    d9442418
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x33f4]              // 0x005bd5e9    d81df4c38a00
                         fnstsw             ax                                            // 0x005bd5ef    dfe0
                         test               ah, 0x41                                      // 0x005bd5f1    f6c441
                         {disp8} jne        _jmp_addr_0x005bd62a                          // 0x005bd5f4    7534
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005bd5f6    d9442418
                         {disp32} fcomp     dword ptr [__real@3fc00000]                   // 0x005bd5fa    d81d4cb28a00
                         fnstsw             ax                                            // 0x005bd600    dfe0
                         test               ah, 0x41                                      // 0x005bd602    f6c441
                         {disp8} jne        _jmp_addr_0x005bd611                          // 0x005bd605    750a
                         {disp8} mov        dword ptr [esp + 0x18], 0x3fc00000            // 0x005bd607    c74424180000c03f
                         {disp8} jmp        _jmp_addr_0x005bd62a                          // 0x005bd60f    eb19
_jmp_addr_0x005bd611:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x005bd611    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x005bd615    d81db4a38a00
                         fnstsw             ax                                            // 0x005bd61b    dfe0
                         test               ah, 0x01                                      // 0x005bd61d    f6c401
                         {disp8} je         _jmp_addr_0x005bd62a                          // 0x005bd620    7408
                         {disp8} mov        dword ptr [esp + 0x18], 0x3f000000            // 0x005bd622    c74424180000003f
_jmp_addr_0x005bd62a:    {disp32} fld       dword ptr [esi + 0x00003514]                  // 0x005bd62a    d98614350000
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x005bd630    8b6c2418
                         {disp32} mov       dword ptr [esi + 0x00003670], edi             // 0x005bd634    89be70360000
                         {disp32} fst       dword ptr [esi + 0x00003518]                  // 0x005bd63a    d99618350000
                         {disp32} fst       dword ptr [esi + 0x00003514]                  // 0x005bd640    d99614350000
                         {disp32} mov       dword ptr [esi + 0x0000352c], edi             // 0x005bd646    89be2c350000
                         {disp32} fstp      dword ptr [esi + 0x00003530]                  // 0x005bd64c    d99e30350000
                         {disp32} mov       dword ptr [esi + 0x00003528], edi             // 0x005bd652    89be28350000
                         {disp32} mov       dword ptr [esi + 0x00003540], edi             // 0x005bd658    89be40350000
                         {disp32} mov       dword ptr [esi + 0x0000353c], edi             // 0x005bd65e    89be3c350000
                         {disp32} mov       dword ptr [esi + 0x00003524], edi             // 0x005bd664    89be24350000
                         {disp32} mov       dword ptr [esi + 0x00003538], edi             // 0x005bd66a    89be38350000
                         {disp32} mov       dword ptr [esi + 0x00003520], edi             // 0x005bd670    89be20350000
                         {disp32} mov       dword ptr [esi + 0x00003534], edi             // 0x005bd676    89be34350000
                         {disp32} mov       dword ptr [esi + 0x0000351c], edi             // 0x005bd67c    89be1c350000
                         {disp32} fld       dword ptr [esi + 0x00003544]                  // 0x005bd682    d98644350000
                         {disp32} fst       dword ptr [esi + 0x00003548]                  // 0x005bd688    d99648350000
                         push               0x1                                           // 0x005bd68e    6a01
                         {disp32} fst       dword ptr [esi + 0x00003544]                  // 0x005bd690    d99644350000
                         {disp32} mov       dword ptr [esi + 0x0000355c], edi             // 0x005bd696    89be5c350000
                         {disp32} fstp      dword ptr [esi + 0x00003560]                  // 0x005bd69c    d99e60350000
                         {disp32} mov       dword ptr [esi + 0x00003558], edi             // 0x005bd6a2    89be58350000
                         {disp32} mov       dword ptr [esi + 0x00003570], edi             // 0x005bd6a8    89be70350000
                         {disp32} mov       dword ptr [esi + 0x0000356c], edi             // 0x005bd6ae    89be6c350000
                         {disp32} mov       dword ptr [esi + 0x00003554], edi             // 0x005bd6b4    89be54350000
                         {disp32} mov       dword ptr [esi + 0x00003568], edi             // 0x005bd6ba    89be68350000
                         {disp32} mov       dword ptr [esi + 0x00003550], edi             // 0x005bd6c0    89be50350000
                         {disp32} mov       dword ptr [esi + 0x00003564], edi             // 0x005bd6c6    89be64350000
                         {disp32} mov       dword ptr [esi + 0x0000354c], edi             // 0x005bd6cc    89be4c350000
                         {disp32} mov       edx, dword ptr [esi + 0x000034fc]             // 0x005bd6d2    8b96fc340000
                         push               ebp                                           // 0x005bd6d8    55
                         push               edx                                           // 0x005bd6d9    52
                         mov.s              ecx, esi                                      // 0x005bd6da    8bce
                         call               _jmp_addr_0x005b96d0                          // 0x005bd6dc    e8efbfffff
                         {disp32} mov       eax, dword ptr [esi + 0x00003500]             // 0x005bd6e1    8b8600350000
                         push               0x1                                           // 0x005bd6e7    6a01
                         push               ebp                                           // 0x005bd6e9    55
                         push               eax                                           // 0x005bd6ea    50
                         mov.s              ecx, esi                                      // 0x005bd6eb    8bce
                         call               _jmp_addr_0x005b98d0                          // 0x005bd6ed    e8dec1ffff
                         {disp32} jmp       _jmp_addr_0x005bd981                          // 0x005bd6f2    e98a020000
                         {disp32} mov       edx, dword ptr [esi + 0x000035cc]             // 0x005bd6f7    8b96cc350000
                         {disp32} mov       eax, dword ptr [esi + 0x00003490]             // 0x005bd6fd    8b8690340000
                         and                edx, 0x03                                     // 0x005bd703    83e203
                         cmp                eax, 0x04                                     // 0x005bd706    83f804
                         {disp32} mov       dword ptr [esi + 0x000035cc], edx             // 0x005bd709    8996cc350000
                         {disp8} je         _jmp_addr_0x005bd718                          // 0x005bd70f    7407
_jmp_addr_0x005bd711:    mov.s              ebx, eax                                      // 0x005bd711    8bd8
                         {disp32} jmp       _jmp_addr_0x005bd981                          // 0x005bd713    e969020000
_jmp_addr_0x005bd718:    {disp32} fld       dword ptr [esi + 0x00003514]                  // 0x005bd718    d98614350000
                         {disp32} mov       dword ptr [esi + 0x00003670], edi             // 0x005bd71e    89be70360000
                         {disp32} fst       dword ptr [esi + 0x00003518]                  // 0x005bd724    d99618350000
                         {disp32} mov       dword ptr [esi + 0x0000352c], edi             // 0x005bd72a    89be2c350000
                         {disp32} fst       dword ptr [esi + 0x00003514]                  // 0x005bd730    d99614350000
                         {disp32} mov       dword ptr [esi + 0x00003528], edi             // 0x005bd736    89be28350000
                         {disp32} fstp      dword ptr [esi + 0x00003530]                  // 0x005bd73c    d99e30350000
                         {disp32} mov       dword ptr [esi + 0x00003540], edi             // 0x005bd742    89be40350000
                         {disp32} mov       dword ptr [esi + 0x0000353c], edi             // 0x005bd748    89be3c350000
                         {disp32} mov       dword ptr [esi + 0x00003524], edi             // 0x005bd74e    89be24350000
                         {disp32} mov       dword ptr [esi + 0x00003538], edi             // 0x005bd754    89be38350000
                         {disp32} mov       dword ptr [esi + 0x00003520], edi             // 0x005bd75a    89be20350000
                         {disp32} mov       dword ptr [esi + 0x00003534], edi             // 0x005bd760    89be34350000
                         {disp32} mov       dword ptr [esi + 0x0000351c], edi             // 0x005bd766    89be1c350000
                         {disp32} fld       dword ptr [esi + 0x00003544]                  // 0x005bd76c    d98644350000
                         {disp32} jmp       _jmp_addr_0x005bd939                          // 0x005bd772    e9c2010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00003490]             // 0x005bd777    8b8e90340000
                         and                ecx, 0x03                                     // 0x005bd77d    83e103
                         {disp8} jne        _jmp_addr_0x005bd795                          // 0x005bd780    7513
                         push               0x2                                           // 0x005bd782    6a02
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x005bd784    e8e70d1200
                         add                esp, 0x04                                     // 0x005bd789    83c404
                         mov.s              ecx, eax                                      // 0x005bd78c    8bc8
                         neg                ecx                                           // 0x005bd78e    f7d9
                         sbb.s              ecx, ecx                                      // 0x005bd790    1bc9
                         add                ecx, 0x2                                      // 0x005bd792    83c102
_jmp_addr_0x005bd795:    {disp32} fld       dword ptr [esi + 0x00003514]                  // 0x005bd795    d98614350000
                         {disp32} fcomp     dword ptr [esi + 0x000035ac]                  // 0x005bd79b    d89eac350000
                         fnstsw             ax                                            // 0x005bd7a1    dfe0
                         test               ah, 0x01                                      // 0x005bd7a3    f6c401
                         {disp8} jne        _jmp_addr_0x005bd7bb                          // 0x005bd7a6    7513
                         {disp32} fld       dword ptr [esi + 0x000035ac]                  // 0x005bd7a8    d986ac350000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x23d4]              // 0x005bd7ae    d81dd4b38a00
                         fnstsw             ax                                            // 0x005bd7b4    dfe0
                         test               ah, 0x41                                      // 0x005bd7b6    f6c441
                         {disp8} jne        _jmp_addr_0x005bd7c0                          // 0x005bd7b9    7505
_jmp_addr_0x005bd7bb:    mov                ecx, 0x00000001                               // 0x005bd7bb    b901000000
_jmp_addr_0x005bd7c0:    {disp32} fld       dword ptr [esi + 0x00003514]                  // 0x005bd7c0    d98614350000
                         {disp32} fcomp     dword ptr [esi + 0x000035ac]                  // 0x005bd7c6    d89eac350000
                         fnstsw             ax                                            // 0x005bd7cc    dfe0
                         test               ah, 0x41                                      // 0x005bd7ce    f6c441
                         {disp8} je         _jmp_addr_0x005bd7e6                          // 0x005bd7d1    7413
                         {disp32} fld       dword ptr [esi + 0x000035ac]                  // 0x005bd7d3    d986ac350000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1e9f0]             // 0x005bd7d9    d81df0798c00
                         fnstsw             ax                                            // 0x005bd7df    dfe0
                         test               ah, 0x01                                      // 0x005bd7e1    f6c401
                         {disp8} je         _jmp_addr_0x005bd7eb                          // 0x005bd7e4    7405
_jmp_addr_0x005bd7e6:    mov                ecx, 0x00000002                               // 0x005bd7e6    b902000000
_jmp_addr_0x005bd7eb:    {disp32} fld       dword ptr [esi + 0x00003670]                  // 0x005bd7eb    d98670360000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005bd7f1    d81d98a38a00
                         fnstsw             ax                                            // 0x005bd7f7    dfe0
                         test               ah, 0x40                                      // 0x005bd7f9    f6c440
                         {disp8} jne        _jmp_addr_0x005bd805                          // 0x005bd7fc    7507
                         mov                ecx, 0x00000001                               // 0x005bd7fe    b901000000
                         {disp8} jmp        _jmp_addr_0x005bd80a                          // 0x005bd803    eb05
_jmp_addr_0x005bd805:    cmp                ecx, 0x01                                     // 0x005bd805    83f901
                         {disp8} jne        _jmp_addr_0x005bd81d                          // 0x005bd808    7513
_jmp_addr_0x005bd80a:    {disp32} fld       dword ptr [esi + 0x000035ac]                  // 0x005bd80a    d986ac350000
                         mov                ebx, 0x00000019                               // 0x005bd810    bb19000000
                         {disp32} fsub      dword ptr [__real@3e4ccccd]                   // 0x005bd815    d82544b28a00
                         {disp8} jmp        _jmp_addr_0x005bd833                          // 0x005bd81b    eb16
_jmp_addr_0x005bd81d:    {disp32} fld       dword ptr [esi + 0x000035ac]                  // 0x005bd81d    d986ac350000
                         mov                ecx, 0x00000002                               // 0x005bd823    b902000000
                         {disp32} fadd      dword ptr [__real@3e4ccccd]                   // 0x005bd828    d80544b28a00
                         mov                ebx, 0x0000001a                               // 0x005bd82e    bb1a000000
_jmp_addr_0x005bd833:    {disp32} mov       eax, dword ptr [esi + 0x00003490]             // 0x005bd833    8b8690340000
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005bd839    d95c241c
                         test               al, 0x08                                      // 0x005bd83d    a808
                         {disp8} jne        _jmp_addr_0x005bd86e                          // 0x005bd83f    752d
                         {disp32} mov       ecx, dword ptr [esi + 0x000035b0]             // 0x005bd841    8b8eb0350000
                         push               0x1                                           // 0x005bd847    6a01
                         push               0x3f800000                                    // 0x005bd849    680000803f
                         push               ecx                                           // 0x005bd84e    51
                         mov.s              ecx, esi                                      // 0x005bd84f    8bce
                         call               _jmp_addr_0x005b98d0                          // 0x005bd851    e87ac0ffff
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x005bd856    8b54241c
                         push               0x1                                           // 0x005bd85a    6a01
                         push               0x3f800000                                    // 0x005bd85c    680000803f
                         push               edx                                           // 0x005bd861    52
                         mov.s              ecx, esi                                      // 0x005bd862    8bce
                         call               _jmp_addr_0x005b96d0                          // 0x005bd864    e867beffff
                         {disp32} jmp       _jmp_addr_0x005bd981                          // 0x005bd869    e913010000
_jmp_addr_0x005bd86e:    mov.s              edx, eax                                      // 0x005bd86e    8bd0
                         and                edx, 0x03                                     // 0x005bd870    83e203
                         cmp.s              edx, ecx                                      // 0x005bd873    3bd1
                         {disp32} je        _jmp_addr_0x005bd711                          // 0x005bd875    0f8496feffff
                         {disp32} mov       eax, dword ptr [esi + 0x000035b0]             // 0x005bd87b    8b86b0350000
                         push               0x1                                           // 0x005bd881    6a01
                         push               0x3f800000                                    // 0x005bd883    680000803f
                         push               eax                                           // 0x005bd888    50
                         mov.s              ecx, esi                                      // 0x005bd889    8bce
                         call               _jmp_addr_0x005b98d0                          // 0x005bd88b    e840c0ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005bd890    8b4c241c
                         push               0x1                                           // 0x005bd894    6a01
                         push               0x3f800000                                    // 0x005bd896    680000803f
                         push               ecx                                           // 0x005bd89b    51
                         mov.s              ecx, esi                                      // 0x005bd89c    8bce
                         call               _jmp_addr_0x005b96d0                          // 0x005bd89e    e82dbeffff
                         {disp32} mov       ebx, dword ptr [esi + 0x00003490]             // 0x005bd8a3    8b9e90340000
                         or                 ebx, 0x20                                     // 0x005bd8a9    83cb20
                         {disp32} mov       dword ptr [esi + 0x00003494], 0x00000008      // 0x005bd8ac    c7869434000008000000
                         {disp32} jmp       _jmp_addr_0x005bd981                          // 0x005bd8b6    e9c6000000
                         push               0x1                                           // 0x005bd8bb    6a01
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x005bd8bd    8d542414
                         push               edx                                           // 0x005bd8c1    52
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x005bd8c2    8d442420
                         push               eax                                           // 0x005bd8c6    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00003374]             // 0x005bd8c7    8d8e74330000
                         push               ecx                                           // 0x005bd8cd    51
                         mov.s              ecx, esi                                      // 0x005bd8ce    8bce
                         call               _jmp_addr_0x005bd390                          // 0x005bd8d0    e8bbfaffff
                         test               eax, eax                                      // 0x005bd8d5    85c0
                         {disp8} jne        _jmp_addr_0x005bd8e5                          // 0x005bd8d7    750c
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005bd8d9    d90598a38a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005bd8df    89442418
                         {disp8} jmp        _jmp_addr_0x005bd8e9                          // 0x005bd8e3    eb04
_jmp_addr_0x005bd8e5:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x005bd8e5    d9442410
_jmp_addr_0x005bd8e9:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005bd8e9    8b542418
                         mov.s              eax, edx                                      // 0x005bd8ed    8bc2
                         mov.s              ecx, edx                                      // 0x005bd8ef    8bca
                         {disp32} mov       dword ptr [esi + 0x00003518], edx             // 0x005bd8f1    899618350000
                         {disp32} mov       dword ptr [esi + 0x00003514], eax             // 0x005bd8f7    898614350000
                         {disp32} mov       dword ptr [esi + 0x00003530], ecx             // 0x005bd8fd    898e30350000
                         {disp32} mov       dword ptr [esi + 0x0000352c], edi             // 0x005bd903    89be2c350000
                         {disp32} mov       dword ptr [esi + 0x00003528], edi             // 0x005bd909    89be28350000
                         {disp32} mov       dword ptr [esi + 0x00003540], edi             // 0x005bd90f    89be40350000
                         {disp32} mov       dword ptr [esi + 0x0000353c], edi             // 0x005bd915    89be3c350000
                         {disp32} mov       dword ptr [esi + 0x00003524], edi             // 0x005bd91b    89be24350000
                         {disp32} mov       dword ptr [esi + 0x00003538], edi             // 0x005bd921    89be38350000
                         {disp32} mov       dword ptr [esi + 0x00003520], edi             // 0x005bd927    89be20350000
                         {disp32} mov       dword ptr [esi + 0x00003534], edi             // 0x005bd92d    89be34350000
                         {disp32} mov       dword ptr [esi + 0x0000351c], edi             // 0x005bd933    89be1c350000
_jmp_addr_0x005bd939:    {disp32} fst       dword ptr [esi + 0x00003548]                  // 0x005bd939    d99648350000
                         {disp32} fst       dword ptr [esi + 0x00003544]                  // 0x005bd93f    d99644350000
                         {disp32} fstp      dword ptr [esi + 0x00003560]                  // 0x005bd945    d99e60350000
                         {disp32} mov       dword ptr [esi + 0x0000355c], edi             // 0x005bd94b    89be5c350000
                         {disp32} mov       dword ptr [esi + 0x00003558], edi             // 0x005bd951    89be58350000
                         {disp32} mov       dword ptr [esi + 0x00003570], edi             // 0x005bd957    89be70350000
                         {disp32} mov       dword ptr [esi + 0x0000356c], edi             // 0x005bd95d    89be6c350000
                         {disp32} mov       dword ptr [esi + 0x00003554], edi             // 0x005bd963    89be54350000
                         {disp32} mov       dword ptr [esi + 0x00003568], edi             // 0x005bd969    89be68350000
                         {disp32} mov       dword ptr [esi + 0x00003550], edi             // 0x005bd96f    89be50350000
                         {disp32} mov       dword ptr [esi + 0x00003564], edi             // 0x005bd975    89be64350000
                         {disp32} mov       dword ptr [esi + 0x0000354c], edi             // 0x005bd97b    89be4c350000
_jmp_addr_0x005bd981:    cmp                dword ptr [esi + 0x00003490], ebx             // 0x005bd981    399e90340000
                         pop                ebp                                           // 0x005bd987    5d
                         {disp8} je         _jmp_addr_0x005bd990                          // 0x005bd988    7406
                         {disp32} mov       dword ptr [esi + 0x00003484], edi             // 0x005bd98a    89be84340000
_jmp_addr_0x005bd990:    {disp32} mov       dword ptr [esi + 0x00003490], ebx             // 0x005bd990    899e90340000
_jmp_addr_0x005bd996:    pop                edi                                           // 0x005bd996    5f
                         pop                esi                                           // 0x005bd997    5e
                         pop                ebx                                           // 0x005bd998    5b
                         pop                ecx                                           // 0x005bd999    59
                         ret                0x0008                                        // 0x005bd99a    c20800

// Snippet: db, [0x005bd99d, 0x005bd9a0)
.byte 0x8d, 0x49, 0x00            // 0x005bd99d

// Snippet: jmptbl, [0x005bd9a0, 0x005bd9ac)
.byte 0x0b, 0xd5, 0x5b, 0x00      // 0x005bd9a0
.byte 0x35, 0xd5, 0x5b, 0x00      // 0x005bd9a4
.byte 0x3f, 0xd5, 0x5b, 0x00      // 0x005bd9a8

// Snippet: ijmptbl, [0x005bd9ac, 0x005bd9ce)
.byte 0x00, 0x00, 0x02, 0x02      // 0x005bd9ac
.byte 0x02, 0x02, 0x02, 0x02      // 0x005bd9b0
.byte 0x02, 0x02, 0x02, 0x02      // 0x005bd9b4
.byte 0x02, 0x02, 0x02, 0x02      // 0x005bd9b8
.byte 0x02, 0x02, 0x02, 0x02      // 0x005bd9bc
.byte 0x02, 0x02, 0x02, 0x02      // 0x005bd9c0
.byte 0x02, 0x02, 0x02, 0x02      // 0x005bd9c4
.byte 0x02, 0x02, 0x02, 0x02      // 0x005bd9c8
.byte 0x01, 0x01                  // 0x005bd9cc

// Snippet: db, [0x005bd9ce, 0x005bd9d0)
.byte 0x8b, 0xff                  // 0x005bd9ce

// Snippet: jmptbl, [0x005bd9d0, 0x005bd9e8)
.byte 0xbb, 0xd8, 0x5b, 0x00      // 0x005bd9d0
.byte 0x77, 0xd7, 0x5b, 0x00      // 0x005bd9d4
.byte 0xf7, 0xd6, 0x5b, 0x00      // 0x005bd9d8
.byte 0xa9, 0xd5, 0x5b, 0x00      // 0x005bd9dc
.byte 0x5c, 0xd5, 0x5b, 0x00      // 0x005bd9e0
.byte 0x81, 0xd9, 0x5b, 0x00      // 0x005bd9e4

// Snippet: ijmptbl, [0x005bd9e8, 0x005bdae5)
.byte 0x00, 0x05, 0x05, 0x05      // 0x005bd9e8
.byte 0x01, 0x05, 0x05, 0x05      // 0x005bd9ec
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bd9f0
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bd9f4
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bd9f8
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bd9fc
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda00
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda04
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda08
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda0c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda10
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda14
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda18
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda1c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda20
.byte 0x02, 0x05, 0x05, 0x05      // 0x005bda24
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda28
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda2c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda30
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda34
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda38
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda3c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda40
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda44
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda48
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda4c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda50
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda54
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda58
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda5c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda60
.byte 0x03, 0x05, 0x05, 0x05      // 0x005bda64
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda68
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda6c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda70
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda74
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda78
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda7c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda80
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda84
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda88
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda8c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda90
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda94
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda98
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bda9c
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdaa0
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdaa4
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdaa8
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdaac
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdab0
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdab4
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdab8
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdabc
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdac0
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdac4
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdac8
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdacc
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdad0
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdad4
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdad8
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdadc
.byte 0x05, 0x05, 0x05, 0x05      // 0x005bdae0
.byte 0x04                        // 0x005bdae4

// Snippet: db, [0x005bdae5, 0x005bdaf0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005bdae5
.byte 0x90, 0x90, 0x90, 0x90      // 0x005bdae9
.byte 0x90, 0x90, 0x90            // 0x005bdaed

