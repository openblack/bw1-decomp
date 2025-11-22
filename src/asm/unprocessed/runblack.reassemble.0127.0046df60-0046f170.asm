.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0046c040
.extern ?ToggleLeftRight@CHand@@QAEXXZ
.extern _jmp_addr_0x0046d080
.extern _jmp_addr_0x0046d9d0
.extern _jmp_addr_0x0046dc30
.extern ?ThrowObject@CHand@@QAEXXZ
.extern _jmp_addr_0x0046de40
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x00563400
.extern _jmp_addr_0x00563410
.extern _jmp_addr_0x005b2d70
.extern _jmp_addr_0x005b3c60
.extern _jmp_addr_0x005b8e60
.extern _Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE
.extern _jmp_addr_0x007285e0
.extern _jmp_addr_0x00728620
.extern _jmp_addr_0x0074caf0
.extern _jmp_addr_0x007a1400
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _wcscpy
.extern _wcsncpy
.extern _jmp_addr_0x00800c30
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _CHAR2WCHAR__FPc
.extern _jmp_addr_0x0083a0e0

.globl _jmp_addr_0x0046df60
.globl _jmp_addr_0x0046e160
.globl _jmp_addr_0x0046e2f0
.globl _jmp_addr_0x0046e480
.globl _jmp_addr_0x0046e490
.globl _jmp_addr_0x0046e4b0
.globl ?GameTurnUpdate@CHand@@QAEXXZ
.globl _jmp_addr_0x0046e590
.globl _jmp_addr_0x0046e5d0
.globl _jmp_addr_0x0046e5f0
.globl _jmp_addr_0x0046e630
.globl _jmp_addr_0x0046e680
.globl _jmp_addr_0x0046e780
.globl _jmp_addr_0x0046e7b0
.globl _jmp_addr_0x0046e890
.globl _jmp_addr_0x0046e8c0
.globl _jmp_addr_0x0046e930
.globl _jmp_addr_0x0046eb10
.globl _jmp_addr_0x0046ecf0
.globl _jmp_addr_0x0046edb0
.globl _jmp_addr_0x0046ee30
.globl _jmp_addr_0x0046ee50
.globl _jmp_addr_0x0046ee60
.globl _jmp_addr_0x0046eed0
.globl _jmp_addr_0x0046efd0
.globl @GetDisplayText__10ControlKeyFPw@12
.globl _jmp_addr_0x0046f030
.globl _jmp_addr_0x0046f040
.globl _jmp_addr_0x0046f050

.globl _globl_ct_0x0046edc0
.globl _globl_ct_0x0046edf0
.globl _globl_ct_0x0046ee10
.globl _DrawTheHeldObject__9HandStateFv

start_0x0046df60_0x0046f170:
// Snippet: asm, [0x0046df60, 0x0046f150)
_jmp_addr_0x0046df60:    {disp32} fld       dword ptr [_near_clipping]                    // 0x0046df60    d905e039e800
                         sub                esp, 0x18                                     // 0x0046df66    83ec18
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0046df69    d80590a38a00
                         push               ebx                                           // 0x0046df6f    53
                         push               esi                                           // 0x0046df70    56
                         push               edi                                           // 0x0046df71    57
                         mov.s              esi, ecx                                      // 0x0046df72    8bf1
                         push               ecx                                           // 0x0046df74    51
                         fstp               dword ptr [esp]                               // 0x0046df75    d91c24
                         push               0x1                                           // 0x0046df78    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0046df7a    8d44241c
                         {disp32} lea       edi, dword ptr [esi + 0x0000485c]             // 0x0046df7e    8dbe5c480000
                         push               eax                                           // 0x0046df84    50
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0046df85    8d542418
                         mov.s              ecx, edi                                      // 0x0046df89    8bcf
                         call               _jmp_addr_0x00800c30                          // 0x0046df8b    e8a02c3900
                         mov.s              ebx, eax                                      // 0x0046df90    8bd8
                         test               ebx, ebx                                      // 0x0046df92    85db
                         {disp8} je         _jmp_addr_0x0046dfdf                          // 0x0046df94    7449
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046df96    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0046df9a    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0046dfa0    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0046dfa6    e855343300
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046dfab    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0046dfaf    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0046dfb5    89442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0046dfb9    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x0046dfbf    e83c343300
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0046dfc4    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0046dfc8    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x0046dfcc    c744242000000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0046dfd4    e8b7503900
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0046dfd9    d95c2410
                         {disp8} jmp        _jmp_addr_0x0046e026                          // 0x0046dfdd    eb47
_jmp_addr_0x0046dfdf:    {disp8} lea        ecx, dword ptr [esi + 0x78]                   // 0x0046dfdf    8d4e78
                         mov                edx, dword ptr [ecx]                          // 0x0046dfe2    8b11
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0046dfe4    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0046dfe7    8b4908
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0046dfea    89442410
                         cmp                dword ptr [esi + 0x00004878], 0x04            // 0x0046dfee    83be7848000004
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0046dff5    8954240c
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0046dff9    894c2414
                         {disp8} jne        _jmp_addr_0x0046e026                          // 0x0046dffd    7527
                         {disp32} mov       edx, dword ptr [esi + 0x0000488c]             // 0x0046dfff    8b968c480000
                         {disp32} mov       eax, dword ptr [edx + 0x00000104]             // 0x0046e005    8b8204010000
                         test               eax, eax                                      // 0x0046e00b    85c0
                         {disp8} je         _jmp_addr_0x0046e026                          // 0x0046e00d    7417
                         {disp32} mov       eax, dword ptr [esi + 0x00004838]             // 0x0046e00f    8b8638480000
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0046e015    8d54240c
                         push               eax                                           // 0x0046e019    50
                         mov.s              ecx, edi                                      // 0x0046e01a    8bcf
                         mov                ebx, 0x00000001                               // 0x0046e01c    bb01000000
                         call               _jmp_addr_0x0074caf0                          // 0x0046e021    e8caea2d00
_jmp_addr_0x0046e026:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e026    d9442410
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0046e02a    8b442410
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x0046e02e    d81d2cb28a00
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0046e034    8b54240c
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0046e038    8b4c2414
                         {disp32} mov       dword ptr [data_bytes + 0x34df34], eax        // 0x0046e03c    a3343fd100
                         {disp32} mov       dword ptr [data_bytes + 0x298644], eax        // 0x0046e041    a344e6c500
                         fnstsw             ax                                            // 0x0046e046    dfe0
                         {disp32} mov       dword ptr [data_bytes + 0x34df30], edx        // 0x0046e048    8915303fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34df38], ecx        // 0x0046e04e    890d383fd100
                         test               ah, 0x01                                      // 0x0046e054    f6c401
                         {disp32} mov       dword ptr [data_bytes + 0x298640], edx        // 0x0046e057    891540e6c500
                         {disp32} mov       dword ptr [data_bytes + 0x298648], ecx        // 0x0046e05d    890d48e6c500
                         {disp8} je         _jmp_addr_0x0046e069                          // 0x0046e063    7404
                         xor.s              edi, edi                                      // 0x0046e065    33ff
                         {disp8} jmp        _jmp_addr_0x0046e06d                          // 0x0046e067    eb04
_jmp_addr_0x0046e069:    {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x0046e069    8b7c2428
_jmp_addr_0x0046e06d:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0046e06d    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0046e073    e808e10d00
                         test               ebx, ebx                                      // 0x0046e078    85db
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdb8]        // 0x0046e07a    8b0db81dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdbc]        // 0x0046e080    8b15bc1dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]        // 0x0046e086    a1c01dea00
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0046e08b    894c2418
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046e08f    d9442418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0046e093    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0046e097    89442420
                         {disp8} je         _jmp_addr_0x0046e0ea                          // 0x0046e09b    744d
                         test               edi, edi                                      // 0x0046e09d    85ff
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x0046e09f    d864240c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046e0a3    d944241c
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0046e0a7    d8642410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0046e0ab    d9442420
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x0046e0af    d8642414
                         fld                st(0)                                         // 0x0046e0b3    d9c0
                         fmul               st, st(1)                                     // 0x0046e0b5    d8c9
                         fld                st(2)                                         // 0x0046e0b7    d9c2
                         fmul               st, st(3)                                     // 0x0046e0b9    d8cb
                         faddp              st(1), st                                     // 0x0046e0bb    dec1
                         fld                st(3)                                         // 0x0046e0bd    d9c3
                         fmul               st, st(4)                                     // 0x0046e0bf    d8cc
                         faddp              st(1), st                                     // 0x0046e0c1    dec1
                         fsqrt                                                            // 0x0046e0c3    d9fa
                         {disp8} fst        dword ptr [esp + 0x28]                        // 0x0046e0c5    d9542428
                         fstp               st(3)                                         // 0x0046e0c9    dddb
                         fstp               st(0)                                         // 0x0046e0cb    ddd8
                         fstp               st(0)                                         // 0x0046e0cd    ddd8
                         {disp8} je         _jmp_addr_0x0046e116                          // 0x0046e0cf    7445
                         fstp               st(0)                                         // 0x0046e0d1    ddd8
                         call               _jmp_addr_0x0046c040                          // 0x0046e0d3    e868dfffff
                         {disp32} fmul      dword ptr [esi + 0x00004834]                  // 0x0046e0d8    d88e34480000
                         {disp32} fmul      dword ptr [esi + 0x00000090]                  // 0x0046e0de    d88e90000000
                         {disp8} fsubr      dword ptr [esp + 0x28]                        // 0x0046e0e4    d86c2428
                         {disp8} jmp        _jmp_addr_0x0046e116                          // 0x0046e0e8    eb2c
_jmp_addr_0x0046e0ea:    {disp8} fsub       dword ptr [esi + 0x78]                        // 0x0046e0ea    d86678
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046e0ed    d944241c
                         {disp8} fsub       dword ptr [esi + 0x7c]                        // 0x0046e0f1    d8667c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0046e0f4    d9442420
                         {disp32} fsub      dword ptr [esi + 0x00000080]                  // 0x0046e0f8    d8a680000000
                         fld                st(0)                                         // 0x0046e0fe    d9c0
                         fmul               st, st(1)                                     // 0x0046e100    d8c9
                         fld                st(2)                                         // 0x0046e102    d9c2
                         fmul               st, st(3)                                     // 0x0046e104    d8cb
                         faddp              st(1), st                                     // 0x0046e106    dec1
                         fld                st(3)                                         // 0x0046e108    d9c3
                         fmul               st, st(4)                                     // 0x0046e10a    d8cc
                         faddp              st(1), st                                     // 0x0046e10c    dec1
                         fsqrt                                                            // 0x0046e10e    d9fa
                         fstp               st(3)                                         // 0x0046e110    dddb
                         fstp               st(0)                                         // 0x0046e112    ddd8
                         fstp               st(0)                                         // 0x0046e114    ddd8
_jmp_addr_0x0046e116:    {disp32} fcom      dword ptr [rdata_bytes + 0x22ea4]             // 0x0046e116    d815a4be8c00
                         fnstsw             ax                                            // 0x0046e11c    dfe0
                         test               ah, 0x41                                      // 0x0046e11e    f6c441
                         {disp8} jne        _jmp_addr_0x0046e145                          // 0x0046e121    7522
                         {disp32} fld       dword ptr [esi + 0x00004838]                  // 0x0046e123    d98638480000
                         fld                st(1)                                         // 0x0046e129    d9c1
                         fcompp                                                           // 0x0046e12b    ded9
                         fnstsw             ax                                            // 0x0046e12d    dfe0
                         test               ah, 0x01                                      // 0x0046e12f    f6c401
                         {disp8} jne        _jmp_addr_0x0046e14d                          // 0x0046e132    7519
                         fstp               st(0)                                         // 0x0046e134    ddd8
                         pop                edi                                           // 0x0046e136    5f
                         {disp32} fld       dword ptr [esi + 0x00004838]                  // 0x0046e137    d98638480000
                         pop                esi                                           // 0x0046e13d    5e
                         pop                ebx                                           // 0x0046e13e    5b
                         add                esp, 0x18                                     // 0x0046e13f    83c418
                         ret                0x0004                                        // 0x0046e142    c20400
_jmp_addr_0x0046e145:    fstp               st(0)                                         // 0x0046e145    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x22ea4]             // 0x0046e147    d905a4be8c00
_jmp_addr_0x0046e14d:    pop                edi                                           // 0x0046e14d    5f
                         pop                esi                                           // 0x0046e14e    5e
                         pop                ebx                                           // 0x0046e14f    5b
                         add                esp, 0x18                                     // 0x0046e150    83c418
                         ret                0x0004                                        // 0x0046e153    c20400
                         nop                                                              // 0x0046e156    90
                         nop                                                              // 0x0046e157    90
                         nop                                                              // 0x0046e158    90
                         nop                                                              // 0x0046e159    90
                         nop                                                              // 0x0046e15a    90
                         nop                                                              // 0x0046e15b    90
                         nop                                                              // 0x0046e15c    90
                         nop                                                              // 0x0046e15d    90
                         nop                                                              // 0x0046e15e    90
                         nop                                                              // 0x0046e15f    90
_jmp_addr_0x0046e160:    sub                esp, 0x48                                     // 0x0046e160    83ec48
                         push               ebx                                           // 0x0046e163    53
                         push               esi                                           // 0x0046e164    56
                         {disp8} mov        esi, dword ptr [esp + 0x54]                   // 0x0046e165    8b742454
                         push               edi                                           // 0x0046e169    57
                         {disp8} mov        edi, dword ptr [esp + 0x5c]                   // 0x0046e16a    8b7c245c
                         mov.s              ebx, ecx                                      // 0x0046e16e    8bd9
                         mov.s              eax, edi                                      // 0x0046e170    8bc7
                         mov                ecx, dword ptr [eax]                          // 0x0046e172    8b08
                         {disp32} mov       dword ptr [data_bytes + 0x298680], ecx        // 0x0046e174    890d80e6c500
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0046e17a    8b5004
                         {disp32} mov       dword ptr [data_bytes + 0x298684], edx        // 0x0046e17d    891584e6c500
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046e183    8b4008
                         push               esi                                           // 0x0046e186    56
                         mov.s              ecx, ebx                                      // 0x0046e187    8bcb
                         {disp32} mov       dword ptr [data_bytes + 0x298688], eax        // 0x0046e189    a388e6c500
                         call               _jmp_addr_0x0046d080                          // 0x0046e18e    e8edeeffff
                         {disp32} fld       dword ptr [ebx + 0x00000084]                  // 0x0046e193    d98384000000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x0046e199    d805a0368c00
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x0046e19f    8b4c2460
                         fld                st(0)                                         // 0x0046e1a3    d9c0
                         fsin                                                             // 0x0046e1a5    d9fe
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0046e1a7    d95c2418
                         fcos                                                             // 0x0046e1ab    d9ff
                         fchs                                                             // 0x0046e1ad    d9e0
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0046e1af    d95c2420
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0046e1b3    d9442420
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0046e1b7    d84904
                         fchs                                                             // 0x0046e1ba    d9e0
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0046e1bc    d9442420
                         fmul               dword ptr [ecx]                               // 0x0046e1c0    d809
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046e1c2    d9442418
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0046e1c6    d84908
                         fsubp              st(1), st                                     // 0x0046e1c9    dee9
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0046e1cb    d95c2410
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046e1cf    d9442418
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0046e1d3    d84904
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0046e1d6    d95c2414
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0046e1da    d81598a38a00
                         fnstsw             ax                                            // 0x0046e1e0    dfe0
                         test               ah, 0x40                                      // 0x0046e1e2    f6c440
                         {disp8} je         _jmp_addr_0x0046e209                          // 0x0046e1e5    7422
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e1e7    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0046e1eb    d81d98a38a00
                         fnstsw             ax                                            // 0x0046e1f1    dfe0
                         test               ah, 0x40                                      // 0x0046e1f3    f6c440
                         {disp8} je         _jmp_addr_0x0046e209                          // 0x0046e1f6    7411
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046e1f8    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0046e1fc    d81d98a38a00
                         fnstsw             ax                                            // 0x0046e202    dfe0
                         test               ah, 0x40                                      // 0x0046e204    f6c440
                         {disp8} jne        _jmp_addr_0x0046e23f                          // 0x0046e207    7536
_jmp_addr_0x0046e209:    fld                st(0)                                         // 0x0046e209    d9c0
                         fmul               st, st(1)                                     // 0x0046e20b    d8c9
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e20d    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0046e211    d84c2410
                         faddp              st(1), st                                     // 0x0046e215    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046e217    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0046e21b    d84c2414
                         faddp              st(1), st                                     // 0x0046e21f    dec1
                         fsqrt                                                            // 0x0046e221    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0046e223    d83d90a38a00
                         fld                st(0)                                         // 0x0046e229    d9c0
                         fmulp              st(2), st                                     // 0x0046e22b    deca
                         fld                st(0)                                         // 0x0046e22d    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0046e22f    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0046e233    d95c2410
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0046e237    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0046e23b    d95c2414
_jmp_addr_0x0046e23f:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046e23f    d9442414
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x0046e243    8d542424
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0046e247    d84904
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e24a    d9442410
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0046e24e    d84908
                         fsubp              st(1), st                                     // 0x0046e251    dee9
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0046e253    d95c2418
                         fld                st(0)                                         // 0x0046e257    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0046e259    d84908
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046e25c    d9442414
                         fmul               dword ptr [ecx]                               // 0x0046e260    d809
                         fsubp              st(1), st                                     // 0x0046e262    dee9
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0046e264    d95c241c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e268    d9442410
                         fmul               dword ptr [ecx]                               // 0x0046e26c    d809
                         fld                st(1)                                         // 0x0046e26e    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0046e270    d84904
                         fsubp              st(1), st                                     // 0x0046e273    dee9
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0046e275    d95c2420
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0046e279    d95c2424
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e27d    d9442410
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0046e281    d95c2428
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046e285    d9442414
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0046e289    d95c242c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046e28d    d9442418
                         fchs                                                             // 0x0046e291    d9e0
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0046e293    d95c2430
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046e297    d944241c
                         fchs                                                             // 0x0046e29b    d9e0
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0046e29d    d95c2434
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0046e2a1    d9442420
                         fchs                                                             // 0x0046e2a5    d9e0
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0046e2a7    d95c2438
                         fld                dword ptr [ecx]                               // 0x0046e2ab    d901
                         fchs                                                             // 0x0046e2ad    d9e0
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0046e2af    d95c243c
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0046e2b3    d94104
                         fchs                                                             // 0x0046e2b6    d9e0
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0046e2b8    d95c2440
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0046e2bc    d94108
                         mov.s              ecx, esi                                      // 0x0046e2bf    8bce
                         fchs                                                             // 0x0046e2c1    d9e0
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x0046e2c3    d95c2444
                         call               _jmp_addr_0x0046d9d0                          // 0x0046e2c7    e804f7ffff
                         mov                ecx, dword ptr [edi]                          // 0x0046e2cc    8b0f
                         {disp8} mov        dword ptr [esi + 0x24], ecx                   // 0x0046e2ce    894e24
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x0046e2d1    8b5704
                         {disp8} mov        dword ptr [esi + 0x28], edx                   // 0x0046e2d4    895628
                         {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x0046e2d7    8b4708
                         pop                edi                                           // 0x0046e2da    5f
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x0046e2db    89462c
                         pop                esi                                           // 0x0046e2de    5e
                         pop                ebx                                           // 0x0046e2df    5b
                         add                esp, 0x48                                     // 0x0046e2e0    83c448
                         ret                0x000c                                        // 0x0046e2e3    c20c00
                         nop                                                              // 0x0046e2e6    90
                         nop                                                              // 0x0046e2e7    90
                         nop                                                              // 0x0046e2e8    90
                         nop                                                              // 0x0046e2e9    90
                         nop                                                              // 0x0046e2ea    90
                         nop                                                              // 0x0046e2eb    90
                         nop                                                              // 0x0046e2ec    90
                         nop                                                              // 0x0046e2ed    90
                         nop                                                              // 0x0046e2ee    90
                         nop                                                              // 0x0046e2ef    90
_jmp_addr_0x0046e2f0:    sub                esp, 0x48                                     // 0x0046e2f0    83ec48
                         push               esi                                           // 0x0046e2f3    56
                         push               edi                                           // 0x0046e2f4    57
                         {disp8} mov        edi, dword ptr [esp + 0x54]                   // 0x0046e2f5    8b7c2454
                         mov.s              esi, ecx                                      // 0x0046e2f9    8bf1
                         push               edi                                           // 0x0046e2fb    57
                         call               _jmp_addr_0x0046d080                          // 0x0046e2fc    e87fedffff
                         {disp32} fld       dword ptr [esi + 0x00000084]                  // 0x0046e301    d98684000000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]             // 0x0046e307    d805a0368c00
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                   // 0x0046e30d    8b4c245c
                         fld                st(0)                                         // 0x0046e311    d9c0
                         fsin                                                             // 0x0046e313    d9fe
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0046e315    d95c2414
                         fcos                                                             // 0x0046e319    d9ff
                         fchs                                                             // 0x0046e31b    d9e0
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0046e31d    d95c241c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046e321    d944241c
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0046e325    d84904
                         fchs                                                             // 0x0046e328    d9e0
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046e32a    d944241c
                         fmul               dword ptr [ecx]                               // 0x0046e32e    d809
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046e330    d9442414
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0046e334    d84908
                         fsubp              st(1), st                                     // 0x0046e337    dee9
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0046e339    d95c240c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046e33d    d9442414
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0046e341    d84904
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0046e344    d95c2410
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0046e348    d81598a38a00
                         fnstsw             ax                                            // 0x0046e34e    dfe0
                         test               ah, 0x40                                      // 0x0046e350    f6c440
                         {disp8} je         _jmp_addr_0x0046e377                          // 0x0046e353    7422
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046e355    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0046e359    d81d98a38a00
                         fnstsw             ax                                            // 0x0046e35f    dfe0
                         test               ah, 0x40                                      // 0x0046e361    f6c440
                         {disp8} je         _jmp_addr_0x0046e377                          // 0x0046e364    7411
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e366    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0046e36a    d81d98a38a00
                         fnstsw             ax                                            // 0x0046e370    dfe0
                         test               ah, 0x40                                      // 0x0046e372    f6c440
                         {disp8} jne        _jmp_addr_0x0046e3ad                          // 0x0046e375    7536
_jmp_addr_0x0046e377:    fld                st(0)                                         // 0x0046e377    d9c0
                         fmul               st, st(1)                                     // 0x0046e379    d8c9
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046e37b    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0046e37f    d84c240c
                         faddp              st(1), st                                     // 0x0046e383    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e385    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0046e389    d84c2410
                         faddp              st(1), st                                     // 0x0046e38d    dec1
                         fsqrt                                                            // 0x0046e38f    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0046e391    d83d90a38a00
                         fld                st(0)                                         // 0x0046e397    d9c0
                         fmulp              st(2), st                                     // 0x0046e399    deca
                         fld                st(0)                                         // 0x0046e39b    d9c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0046e39d    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0046e3a1    d95c240c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0046e3a5    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0046e3a9    d95c2410
_jmp_addr_0x0046e3ad:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e3ad    d9442410
                         {disp32} mov       eax, dword ptr [esi + 0x0000484c]             // 0x0046e3b1    8b864c480000
                         test               eax, eax                                      // 0x0046e3b7    85c0
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0046e3b9    d84904
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046e3bc    d944240c
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0046e3c0    d84908
                         fsubp              st(1), st                                     // 0x0046e3c3    dee9
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0046e3c5    d95c2414
                         fld                st(0)                                         // 0x0046e3c9    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0046e3cb    d84908
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e3ce    d9442410
                         fmul               dword ptr [ecx]                               // 0x0046e3d2    d809
                         fsubp              st(1), st                                     // 0x0046e3d4    dee9
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0046e3d6    d95c2418
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046e3da    d944240c
                         fmul               dword ptr [ecx]                               // 0x0046e3de    d809
                         fld                st(1)                                         // 0x0046e3e0    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0046e3e2    d84904
                         fsubp              st(1), st                                     // 0x0046e3e5    dee9
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0046e3e7    d95c241c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0046e3eb    d95c2420
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0046e3ef    d944240c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0046e3f3    d95c2424
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0046e3f7    d9442410
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0046e3fb    d95c2428
                         fld                dword ptr [ecx]                               // 0x0046e3ff    d901
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0046e401    d95c242c
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0046e405    d94104
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0046e408    d95c2430
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0046e40c    d94108
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0046e40f    d95c2434
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0046e413    d9442414
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0046e417    d95c2438
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0046e41b    d9442418
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0046e41f    d95c243c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0046e423    d944241c
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0046e427    d95c2440
                         {disp8} jne        _jmp_addr_0x0046e457                          // 0x0046e42b    752a
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0046e42d    d9442438
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0046e431    d80d78b68a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0046e437    d95c2438
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0046e43b    d944243c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0046e43f    d80d78b68a00
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0046e445    d95c243c
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x0046e449    d9442440
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0046e44d    d80d78b68a00
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0046e453    d95c2440
_jmp_addr_0x0046e457:    {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0046e457    8d542420
                         mov.s              ecx, edi                                      // 0x0046e45b    8bcf
                         call               _jmp_addr_0x0046d9d0                          // 0x0046e45d    e86ef5ffff
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x0046e462    8b442458
                         mov                ecx, dword ptr [eax]                          // 0x0046e466    8b08
                         {disp8} mov        dword ptr [edi + 0x24], ecx                   // 0x0046e468    894f24
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0046e46b    8b5004
                         {disp8} mov        dword ptr [edi + 0x28], edx                   // 0x0046e46e    895728
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046e471    8b4008
                         {disp8} mov        dword ptr [edi + 0x2c], eax                   // 0x0046e474    89472c
                         pop                edi                                           // 0x0046e477    5f
                         pop                esi                                           // 0x0046e478    5e
                         add                esp, 0x48                                     // 0x0046e479    83c448
                         ret                0x000c                                        // 0x0046e47c    c20c00
                         nop                                                              // 0x0046e47f    90
_jmp_addr_0x0046e480:    {disp32} mov       edx, dword ptr [ecx + 0x00004908]             // 0x0046e480    8b9108490000
                         xor.s              eax, eax                                      // 0x0046e486    33c0
                         test               edx, edx                                      // 0x0046e488    85d2
                         sete               al                                            // 0x0046e48a    0f94c0
                         ret                                                              // 0x0046e48d    c3
                         nop                                                              // 0x0046e48e    90
                         nop                                                              // 0x0046e48f    90
_jmp_addr_0x0046e490:    cmp                dword ptr [ecx + 0x00004878], 0x03            // 0x0046e490    83b97848000003
                         {disp8} jne        _jmp_addr_0x0046e4a4                          // 0x0046e497    750b
                         {disp32} mov       ecx, dword ptr [ecx + 0x00004888]             // 0x0046e499    8b8988480000
                         {disp32} jmp       _jmp_addr_0x005b8e60                          // 0x0046e49f    e9bca91400
_jmp_addr_0x0046e4a4:    ret                                                              // 0x0046e4a4    c3
                         nop                                                              // 0x0046e4a5    90
                         nop                                                              // 0x0046e4a6    90
                         nop                                                              // 0x0046e4a7    90
                         nop                                                              // 0x0046e4a8    90
                         nop                                                              // 0x0046e4a9    90
                         nop                                                              // 0x0046e4aa    90
                         nop                                                              // 0x0046e4ab    90
                         nop                                                              // 0x0046e4ac    90
                         nop                                                              // 0x0046e4ad    90
                         nop                                                              // 0x0046e4ae    90
                         nop                                                              // 0x0046e4af    90
_jmp_addr_0x0046e4b0:    push               esi                                           // 0x0046e4b0    56
                         mov.s              esi, ecx                                      // 0x0046e4b1    8bf1
                         cmp                dword ptr [esi + 0x00004878], 0x04            // 0x0046e4b3    83be7848000004
                         {disp8} jne        _jmp_addr_0x0046e4d5                          // 0x0046e4ba    7519
                         {disp32} mov       ecx, dword ptr [esi + 0x0000488c]             // 0x0046e4bc    8b8e8c480000
                         call               _jmp_addr_0x005b3c60                          // 0x0046e4c2    e899571400
                         test               al, al                                        // 0x0046e4c7    84c0
                         {disp8} je         _jmp_addr_0x0046e4d5                          // 0x0046e4c9    740a
                         {disp32} mov       eax, dword ptr [esi + 0x000049b4]             // 0x0046e4cb    8b86b4490000
                         test               eax, eax                                      // 0x0046e4d1    85c0
                         {disp8} jne        _jmp_addr_0x0046e4d7                          // 0x0046e4d3    7502
_jmp_addr_0x0046e4d5:    xor.s              eax, eax                                      // 0x0046e4d5    33c0
_jmp_addr_0x0046e4d7:    pop                esi                                           // 0x0046e4d7    5e
                         ret                                                              // 0x0046e4d8    c3
                         nop                                                              // 0x0046e4d9    90
                         nop                                                              // 0x0046e4da    90
                         nop                                                              // 0x0046e4db    90
                         nop                                                              // 0x0046e4dc    90
                         nop                                                              // 0x0046e4dd    90
                         nop                                                              // 0x0046e4de    90
                         nop                                                              // 0x0046e4df    90
?GameTurnUpdate@CHand@@QAEXXZ:
                                sub                esp, 0x08                                     // 0x0046e4e0    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33ba38]        // 0x0046e4e3    a1381ad000
                         push               esi                                           // 0x0046e4e8    56
                         push               edi                                           // 0x0046e4e9    57
                         xor.s              edi, edi                                      // 0x0046e4ea    33ff
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0046e4ec    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x0046e4f0    897c240c
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x0046e4f4    df6c2408
                         mov.s              esi, ecx                                      // 0x0046e4f8    8bf1
                         push               ecx                                           // 0x0046e4fa    51
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0046e4fb    d80db0a38a00
                         fstp               dword ptr [esp]                               // 0x0046e501    d91c24
                         call               _jmp_addr_0x005b2d70                          // 0x0046e504    e867481400
                         {disp32} mov       ecx, dword ptr [esi + 0x00004904]             // 0x0046e509    8b8e04490000
                         add                esp, 0x04                                     // 0x0046e50f    83c404
                         cmp.s              ecx, edi                                      // 0x0046e512    3bcf
                         {disp8} je         _jmp_addr_0x0046e53d                          // 0x0046e514    7427
                         mov                edx, dword ptr [ecx]                          // 0x0046e516    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x0046e518    ff522c
                         cmp                eax, 0x01                                     // 0x0046e51b    83f801
                         {disp8} je         _jmp_addr_0x0046e529                          // 0x0046e51e    7409
                         mov.s              ecx, esi                                      // 0x0046e520    8bce
                         call               ?ThrowObject@CHand@@QAEXXZ                    // 0x0046e522    e8a9f8ffff
                         {disp8} jmp        _jmp_addr_0x0046e53d                          // 0x0046e527    eb14
_jmp_addr_0x0046e529:    {disp32} mov       ecx, dword ptr [esi + 0x00004904]             // 0x0046e529    8b8e04490000
                         mov                eax, dword ptr [ecx]                          // 0x0046e52f    8b01
                         call               dword ptr [eax + 0x58c]                       // 0x0046e531    ff908c050000
                         {disp32} mov       dword ptr [esi + 0x0000490c], eax             // 0x0046e537    89860c490000
_jmp_addr_0x0046e53d:    {disp32} mov       ecx, dword ptr [esi + 0x000048fc]             // 0x0046e53d    8b8efc480000
                         cmp.s              ecx, edi                                      // 0x0046e543    3bcf
                         {disp8} je         _jmp_addr_0x0046e55d                          // 0x0046e545    7416
                         mov                edx, dword ptr [ecx]                          // 0x0046e547    8b11
                         call               dword ptr [edx + 0x2c]                        // 0x0046e549    ff522c
                         cmp                eax, 0x01                                     // 0x0046e54c    83f801
                         {disp8} je         _jmp_addr_0x0046e55d                          // 0x0046e54f    740c
                         {disp32} mov       dword ptr [esi + 0x000048fc], edi             // 0x0046e551    89befc480000
                         {disp32} mov       dword ptr [esi + 0x000048f8], edi             // 0x0046e557    89bef8480000
_jmp_addr_0x0046e55d:    {disp32} mov       ecx, dword ptr [esi + 0x000049b4]             // 0x0046e55d    8b8eb4490000
                         cmp.s              ecx, edi                                      // 0x0046e563    3bcf
                         {disp8} je         _jmp_addr_0x0046e582                          // 0x0046e565    741b
                         mov                eax, dword ptr [ecx]                          // 0x0046e567    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x0046e569    ff502c
                         test               eax, eax                                      // 0x0046e56c    85c0
                         {disp8} jne        _jmp_addr_0x0046e582                          // 0x0046e56e    7512
                         {disp32} mov       dword ptr [esi + 0x000049b4], edi             // 0x0046e570    89beb4490000
                         {disp32} mov       dword ptr [esi + 0x000049b8], edi             // 0x0046e576    89beb8490000
                         {disp32} mov       dword ptr [esi + 0x000049bc], edi             // 0x0046e57c    89bebc490000
_jmp_addr_0x0046e582:    mov.s              ecx, esi                                      // 0x0046e582    8bce
                         call               _jmp_addr_0x0046e640                          // 0x0046e584    e8b7000000
                         pop                edi                                           // 0x0046e589    5f
                         pop                esi                                           // 0x0046e58a    5e
                         add                esp, 0x08                                     // 0x0046e58b    83c408
                         ret                                                              // 0x0046e58e    c3
                         nop                                                              // 0x0046e58f    90
_jmp_addr_0x0046e590:    {disp32} mov       edx, dword ptr [ecx + 0x00004904]             // 0x0046e590    8b9104490000
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0046e596    8b442404
                         cmp.s              eax, edx                                      // 0x0046e59a    3bc2
                         {disp8} je         _jmp_addr_0x0046e5be                          // 0x0046e59c    7420
                         test               edx, edx                                      // 0x0046e59e    85d2
                         {disp8} jne        _jmp_addr_0x0046e5ac                          // 0x0046e5a0    750a
                         push               edx                                           // 0x0046e5a2    52
                         push               eax                                           // 0x0046e5a3    50
                         call               _jmp_addr_0x0046dc30                          // 0x0046e5a4    e887f6ffff
                         ret                0x0004                                        // 0x0046e5a9    c20400
_jmp_addr_0x0046e5ac:    test               eax, eax                                      // 0x0046e5ac    85c0
                         {disp8} je         _jmp_addr_0x0046e5b9                          // 0x0046e5ae    7409
                         push               eax                                           // 0x0046e5b0    50
                         call               _jmp_addr_0x0046de40                          // 0x0046e5b1    e88af8ffff
                         ret                0x0004                                        // 0x0046e5b6    c20400
_jmp_addr_0x0046e5b9:    call               ?ThrowObject@CHand@@QAEXXZ                    // 0x0046e5b9    e812f8ffff
_jmp_addr_0x0046e5be:    ret                0x0004                                        // 0x0046e5be    c20400
                         nop                                                              // 0x0046e5c1    90
                         nop                                                              // 0x0046e5c2    90
                         nop                                                              // 0x0046e5c3    90
                         nop                                                              // 0x0046e5c4    90
                         nop                                                              // 0x0046e5c5    90
                         nop                                                              // 0x0046e5c6    90
                         nop                                                              // 0x0046e5c7    90
                         nop                                                              // 0x0046e5c8    90
                         nop                                                              // 0x0046e5c9    90
                         nop                                                              // 0x0046e5ca    90
                         nop                                                              // 0x0046e5cb    90
                         nop                                                              // 0x0046e5cc    90
                         nop                                                              // 0x0046e5cd    90
                         nop                                                              // 0x0046e5ce    90
                         nop                                                              // 0x0046e5cf    90
_jmp_addr_0x0046e5d0:    {disp32} mov       eax, dword ptr [ecx + 0x0000489c]             // 0x0046e5d0    8b819c480000
                         ret                                                              // 0x0046e5d6    c3
                         nop                                                              // 0x0046e5d7    90
                         nop                                                              // 0x0046e5d8    90
                         nop                                                              // 0x0046e5d9    90
                         nop                                                              // 0x0046e5da    90
                         nop                                                              // 0x0046e5db    90
                         nop                                                              // 0x0046e5dc    90
                         nop                                                              // 0x0046e5dd    90
                         nop                                                              // 0x0046e5de    90
                         nop                                                              // 0x0046e5df    90
_DrawTheHeldObject__9HandStateFv:
                         ret                                                              // 0x0046e5e0    c3
                         nop                                                              // 0x0046e5e1    90
                         nop                                                              // 0x0046e5e2    90
                         nop                                                              // 0x0046e5e3    90
                         nop                                                              // 0x0046e5e4    90
                         nop                                                              // 0x0046e5e5    90
                         nop                                                              // 0x0046e5e6    90
                         nop                                                              // 0x0046e5e7    90
                         nop                                                              // 0x0046e5e8    90
                         nop                                                              // 0x0046e5e9    90
                         nop                                                              // 0x0046e5ea    90
                         nop                                                              // 0x0046e5eb    90
                         nop                                                              // 0x0046e5ec    90
                         nop                                                              // 0x0046e5ed    90
                         nop                                                              // 0x0046e5ee    90
                         nop                                                              // 0x0046e5ef    90
_jmp_addr_0x0046e5f0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0046e5f0    8b442404
                         test               eax, eax                                      // 0x0046e5f4    85c0
                         push               esi                                           // 0x0046e5f6    56
                         mov.s              esi, ecx                                      // 0x0046e5f7    8bf1
                         {disp8} je         _jmp_addr_0x0046e62b                          // 0x0046e5f9    7430
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0046e5fb    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00205b80]             // 0x0046e601    8b89805b2000
                         test               ecx, ecx                                      // 0x0046e607    85c9
                         {disp8} je         _jmp_addr_0x0046e62b                          // 0x0046e609    7420
                         push               eax                                           // 0x0046e60b    50
                         call               dword ptr [rdata_bytes + 0x63c]               // 0x0046e60c    ff153c968a00
                         test               eax, eax                                      // 0x0046e612    85c0
                         {disp8} je         _jmp_addr_0x0046e62b                          // 0x0046e614    7415
                         {disp32} mov       edx, dword ptr [eax + 0x0000081c]             // 0x0046e616    8b901c080000
                         cmp                edx, dword ptr [esi + 0x0000484c]             // 0x0046e61c    3b964c480000
                         {disp8} jne        _jmp_addr_0x0046e62b                          // 0x0046e622    7507
                         mov.s              ecx, esi                                      // 0x0046e624    8bce
                         call               ?ToggleLeftRight@CHand@@QAEXXZ                // 0x0046e626    e835dcffff
_jmp_addr_0x0046e62b:    pop                esi                                           // 0x0046e62b    5e
                         ret                0x0004                                        // 0x0046e62c    c20400
                         nop                                                              // 0x0046e62f    90
_jmp_addr_0x0046e630:    ret                                                              // 0x0046e630    c3
                         nop                                                              // 0x0046e631    90
                         nop                                                              // 0x0046e632    90
                         nop                                                              // 0x0046e633    90
                         nop                                                              // 0x0046e634    90
                         nop                                                              // 0x0046e635    90
                         nop                                                              // 0x0046e636    90
                         nop                                                              // 0x0046e637    90
                         nop                                                              // 0x0046e638    90
                         nop                                                              // 0x0046e639    90
                         nop                                                              // 0x0046e63a    90
                         nop                                                              // 0x0046e63b    90
                         nop                                                              // 0x0046e63c    90
                         nop                                                              // 0x0046e63d    90
                         nop                                                              // 0x0046e63e    90
                         nop                                                              // 0x0046e63f    90
_jmp_addr_0x0046e640:    push               esi                                           // 0x0046e640    56
                         mov.s              esi, ecx                                      // 0x0046e641    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00004950]             // 0x0046e643    8b8e50490000
                         test               ecx, ecx                                      // 0x0046e649    85c9
                         {disp8} je         _jmp_addr_0x0046e66f                          // 0x0046e64b    7422
                         mov                eax, dword ptr [ecx]                          // 0x0046e64d    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x0046e64f    ff502c
                         cmp                eax, 0x01                                     // 0x0046e652    83f801
                         {disp8} je         _jmp_addr_0x0046e66f                          // 0x0046e655    7418
                         {disp32} mov       ecx, dword ptr [esi + 0x0000494c]             // 0x0046e657    8b8e4c490000
                         {disp32} mov       dword ptr [esi + 0x00004950], 0x00000000      // 0x0046e65d    c7865049000000000000
                         mov                edx, dword ptr [ecx]                          // 0x0046e667    8b11
                         call               dword ptr [edx + 0x118]                       // 0x0046e669    ff9218010000
_jmp_addr_0x0046e66f:    pop                esi                                           // 0x0046e66f    5e
                         ret                                                              // 0x0046e670    c3
                         nop                                                              // 0x0046e671    90
                         nop                                                              // 0x0046e672    90
                         nop                                                              // 0x0046e673    90
                         nop                                                              // 0x0046e674    90
                         nop                                                              // 0x0046e675    90
                         nop                                                              // 0x0046e676    90
                         nop                                                              // 0x0046e677    90
                         nop                                                              // 0x0046e678    90
                         nop                                                              // 0x0046e679    90
                         nop                                                              // 0x0046e67a    90
                         nop                                                              // 0x0046e67b    90
                         nop                                                              // 0x0046e67c    90
                         nop                                                              // 0x0046e67d    90
                         nop                                                              // 0x0046e67e    90
                         nop                                                              // 0x0046e67f    90
_jmp_addr_0x0046e680:    push               esi                                           // 0x0046e680    56
                         push               edi                                           // 0x0046e681    57
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4e3ec0]        // 0x0046e682    8b3dc09eea00
                         cmp                edi, 0x01                                     // 0x0046e688    83ff01
                         mov.s              esi, ecx                                      // 0x0046e68b    8bf1
                         {disp8} jg         _jmp_addr_0x0046e694                          // 0x0046e68d    7f05
                         mov                edi, 0x00000001                               // 0x0046e68f    bf01000000
_jmp_addr_0x0046e694:    {disp32} mov       eax, dword ptr [esi + 0x0000494c]             // 0x0046e694    8b864c490000
                         test               eax, eax                                      // 0x0046e69a    85c0
                         {disp32} je        _jmp_addr_0x0046e743                          // 0x0046e69c    0f84a1000000
                         {disp32} mov       al, byte ptr [esi + 0x00004954]               // 0x0046e6a2    8a8654490000
                         test               al, al                                        // 0x0046e6a8    84c0
                         {disp8} je         _jmp_addr_0x0046e6d4                          // 0x0046e6aa    7428
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]             // 0x0046e6ac    8b8e98000000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x4 + 0x000000b4] // 0x0046e6b2    8b948eb4000000
                         push               0x0                                           // 0x0046e6b9    6a00
                         {disp32} lea       eax, dword ptr [esi + 0x00004964]             // 0x0046e6bb    8d8664490000
                         push               eax                                           // 0x0046e6c1    50
                         {disp32} mov       eax, dword ptr [esi + 0x000047f0]             // 0x0046e6c2    8b86f0470000
                         push               edx                                           // 0x0046e6c8    52
                         push               eax                                           // 0x0046e6c9    50
                         call               _jmp_addr_0x0083a0e0                          // 0x0046e6ca    e811ba3c00
                         add                esp, 0x10                                     // 0x0046e6cf    83c410
                         {disp8} jmp        _jmp_addr_0x0046e6ed                          // 0x0046e6d2    eb19
_jmp_addr_0x0046e6d4:    {disp8} lea        ecx, dword ptr [esi + 0x78]                   // 0x0046e6d4    8d4e78
                         mov                eax, dword ptr [ecx]                          // 0x0046e6d7    8b01
                         {disp32} lea       edx, dword ptr [esi + 0x00004964]             // 0x0046e6d9    8d9664490000
                         mov                dword ptr [edx], eax                          // 0x0046e6df    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x0046e6e1    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0046e6e4    8b4908
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0046e6e7    894204
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0046e6ea    894a08
_jmp_addr_0x0046e6ed:    {disp32} mov       ecx, dword ptr [esi + 0x00004950]             // 0x0046e6ed    8b8e50490000
                         test               ecx, ecx                                      // 0x0046e6f3    85c9
                         {disp8} je         _jmp_addr_0x0046e705                          // 0x0046e6f5    740e
                         mov                edx, dword ptr [ecx]                          // 0x0046e6f7    8b11
                         call               dword ptr [edx + 0x12c]                       // 0x0046e6f9    ff922c010000
                         {disp32} fstp      dword ptr [esi + 0x00004988]                  // 0x0046e6ff    d99e88490000
_jmp_addr_0x0046e705:    {disp32} mov       ecx, dword ptr [esi + 0x0000494c]             // 0x0046e705    8b8e4c490000
                         {disp32} fld       dword ptr [esi + 0x00004834]                  // 0x0046e70b    d98634480000
                         mov                eax, dword ptr [ecx]                          // 0x0046e711    8b01
                         push               ecx                                           // 0x0046e713    51
                         fstp               dword ptr [esp]                               // 0x0046e714    d91c24
                         call               dword ptr [eax + 0x11c]                       // 0x0046e717    ff901c010000
                         test               edi, edi                                      // 0x0046e71d    85ff
                         {disp8} jle        _jmp_addr_0x0046e743                          // 0x0046e71f    7e22
                         {disp32} mov       ecx, dword ptr [esi + 0x0000494c]             // 0x0046e721    8b8e4c490000
                         mov                edx, dword ptr [ecx]                          // 0x0046e727    8b11
                         push               edi                                           // 0x0046e729    57
                         {disp32} lea       eax, dword ptr [esi + 0x00004958]             // 0x0046e72a    8d8658490000
                         push               eax                                           // 0x0046e730    50
                         call               dword ptr [edx + 0xfc]                        // 0x0046e731    ff92fc000000
                         cmp                eax, 0x05                                     // 0x0046e737    83f805
                         {disp8} jne        _jmp_addr_0x0046e743                          // 0x0046e73a    7507
                         mov.s              ecx, esi                                      // 0x0046e73c    8bce
                         call               _jmp_addr_0x0046e780                          // 0x0046e73e    e83d000000
_jmp_addr_0x0046e743:    {disp32} mov       ecx, dword ptr [esi + 0x0000494c]             // 0x0046e743    8b8e4c490000
                         test               ecx, ecx                                      // 0x0046e749    85c9
                         {disp8} je         _jmp_addr_0x0046e770                          // 0x0046e74b    7423
                         {disp32} mov       esi, dword ptr [esi + 0x00004950]             // 0x0046e74d    8bb650490000
                         test               esi, esi                                      // 0x0046e753    85f6
                         {disp8} je         _jmp_addr_0x0046e761                          // 0x0046e755    740a
                         {disp32} mov       al, byte ptr [esi + 0x00000090]               // 0x0046e757    8a8690000000
                         test               al, al                                        // 0x0046e75d    84c0
                         {disp8} je         _jmp_addr_0x0046e770                          // 0x0046e75f    740f
_jmp_addr_0x0046e761:    mov                edx, dword ptr [ecx]                          // 0x0046e761    8b11
                         push               0x0                                           // 0x0046e763    6a00
                         push               0x3f800000                                    // 0x0046e765    680000803f
                         call               dword ptr [edx + 0x104]                       // 0x0046e76a    ff9204010000
_jmp_addr_0x0046e770:    pop                edi                                           // 0x0046e770    5f
                         pop                esi                                           // 0x0046e771    5e
                         ret                                                              // 0x0046e772    c3
                         nop                                                              // 0x0046e773    90
                         nop                                                              // 0x0046e774    90
                         nop                                                              // 0x0046e775    90
                         nop                                                              // 0x0046e776    90
                         nop                                                              // 0x0046e777    90
                         nop                                                              // 0x0046e778    90
                         nop                                                              // 0x0046e779    90
                         nop                                                              // 0x0046e77a    90
                         nop                                                              // 0x0046e77b    90
                         nop                                                              // 0x0046e77c    90
                         nop                                                              // 0x0046e77d    90
                         nop                                                              // 0x0046e77e    90
                         nop                                                              // 0x0046e77f    90
_jmp_addr_0x0046e780:    push               esi                                           // 0x0046e780    56
                         mov.s              esi, ecx                                      // 0x0046e781    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x0000494c]             // 0x0046e783    8b8e4c490000
                         push               edi                                           // 0x0046e789    57
                         xor.s              edi, edi                                      // 0x0046e78a    33ff
                         cmp.s              ecx, edi                                      // 0x0046e78c    3bcf
                         {disp8} je         _jmp_addr_0x0046e797                          // 0x0046e78e    7407
                         mov                eax, dword ptr [ecx]                          // 0x0046e790    8b01
                         push               0x1                                           // 0x0046e792    6a01
                         call               dword ptr [eax + 4]                           // 0x0046e794    ff5004
_jmp_addr_0x0046e797:    {disp32} mov       dword ptr [esi + 0x0000494c], edi             // 0x0046e797    89be4c490000
                         {disp32} mov       dword ptr [esi + 0x00004950], edi             // 0x0046e79d    89be50490000
                         pop                edi                                           // 0x0046e7a3    5f
                         pop                esi                                           // 0x0046e7a4    5e
                         ret                                                              // 0x0046e7a5    c3
                         nop                                                              // 0x0046e7a6    90
                         nop                                                              // 0x0046e7a7    90
                         nop                                                              // 0x0046e7a8    90
                         nop                                                              // 0x0046e7a9    90
                         nop                                                              // 0x0046e7aa    90
                         nop                                                              // 0x0046e7ab    90
                         nop                                                              // 0x0046e7ac    90
                         nop                                                              // 0x0046e7ad    90
                         nop                                                              // 0x0046e7ae    90
                         nop                                                              // 0x0046e7af    90
_jmp_addr_0x0046e7b0:    sub                esp, 0x18                                     // 0x0046e7b0    83ec18
                         push               esi                                           // 0x0046e7b3    56
                         push               edi                                           // 0x0046e7b4    57
                         mov.s              esi, ecx                                      // 0x0046e7b5    8bf1
                         call               _jmp_addr_0x0046e780                          // 0x0046e7b7    e8c4ffffff
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x0046e7bc    8b7c2424
                         mov.s              ecx, edi                                      // 0x0046e7c0    8bcf
                         call               _jmp_addr_0x007285e0                          // 0x0046e7c2    e8199e2b00
                         test               eax, eax                                      // 0x0046e7c7    85c0
                         {disp32} je        _jmp_addr_0x0046e887                          // 0x0046e7c9    0f84b8000000
                         push               0x0                                           // 0x0046e7cf    6a00
                         push               0x3f800000                                    // 0x0046e7d1    680000803f
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046e7d6    8d4c2410
                         push               ecx                                           // 0x0046e7da    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0046e7db    8d542420
                         push               edx                                           // 0x0046e7df    52
                         push               eax                                           // 0x0046e7e0    50
                         push               0x0                                           // 0x0046e7e1    6a00
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x0046e7e3    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0046e7eb    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x0046e7f3    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x0046e7fb    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0046e803    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x0046e80b    c744243400000000
                         call               _Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE                          // 0x0046e813    e8f8002200
                         add                esp, 0x18                                     // 0x0046e818    83c418
                         test               eax, eax                                      // 0x0046e81b    85c0
                         {disp32} mov       dword ptr [esi + 0x0000494c], eax             // 0x0046e81d    89864c490000
                         {disp8} je         _jmp_addr_0x0046e887                          // 0x0046e823    7462
                         push               ebx                                           // 0x0046e825    53
                         mov.s              ecx, edi                                      // 0x0046e826    8bcf
                         {disp32} mov       dword ptr [esi + 0x00004950], edi             // 0x0046e828    89be50490000
                         call               _jmp_addr_0x00728620                          // 0x0046e82e    e8ed9d2b00
                         {disp32} mov       ecx, dword ptr [esi + 0x0000494c]             // 0x0046e833    8b8e4c490000
                         {disp32} mov       byte ptr [esi + 0x00004954], al               // 0x0046e839    888654490000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0046e83f    8b155c19d000
                         mov                edi, dword ptr [ecx]                          // 0x0046e845    8b39
                         xor.s              eax, eax                                      // 0x0046e847    33c0
                         {disp32} mov       al, byte ptr [edx + 0x00205a59]               // 0x0046e849    8a82595a2000
                         lea                ebx, dword ptr [eax + eax * 0x4]              // 0x0046e84f    8d1c80
                         lea                ebx, dword ptr [eax + ebx * 0x8]              // 0x0046e852    8d1cd8
                         lea                eax, dword ptr [eax + ebx * 0x2]              // 0x0046e855    8d0458
                         shl                eax, 5                                        // 0x0046e858    c1e005
                         {disp8} lea        edx, dword ptr [eax + edx * 0x1 + 0x18]       // 0x0046e85b    8d541018
                         push               edx                                           // 0x0046e85f    52
                         call               dword ptr [edi + 0x20]                        // 0x0046e860    ff5720
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0046e863    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0046e869    e8e26f0e00
                         {disp32} mov       eax, dword ptr [eax + 0x000003a0]             // 0x0046e86e    8b80a0030000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000494c]             // 0x0046e874    8b8e4c490000
                         mov                edx, dword ptr [ecx]                          // 0x0046e87a    8b11
                         add                eax, 0x78                                     // 0x0046e87c    83c078
                         push               eax                                           // 0x0046e87f    50
                         call               dword ptr [edx + 0x124]                       // 0x0046e880    ff9224010000
                         pop                ebx                                           // 0x0046e886    5b
_jmp_addr_0x0046e887:    pop                edi                                           // 0x0046e887    5f
                         pop                esi                                           // 0x0046e888    5e
                         add                esp, 0x18                                     // 0x0046e889    83c418
                         ret                0x0004                                        // 0x0046e88c    c20400
                         nop                                                              // 0x0046e88f    90
_jmp_addr_0x0046e890:    push               esi                                           // 0x0046e890    56
                         mov.s              esi, ecx                                      // 0x0046e891    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x0000494c]             // 0x0046e893    8b8e4c490000
                         test               ecx, ecx                                      // 0x0046e899    85c9
                         {disp8} je         _jmp_addr_0x0046e8a5                          // 0x0046e89b    7408
                         mov                eax, dword ptr [ecx]                          // 0x0046e89d    8b01
                         call               dword ptr [eax + 0x118]                       // 0x0046e89f    ff9018010000
_jmp_addr_0x0046e8a5:    {disp32} mov       dword ptr [esi + 0x00004950], 0x00000000      // 0x0046e8a5    c7865049000000000000
                         pop                esi                                           // 0x0046e8af    5e
                         ret                                                              // 0x0046e8b0    c3
                         nop                                                              // 0x0046e8b1    90
                         nop                                                              // 0x0046e8b2    90
                         nop                                                              // 0x0046e8b3    90
                         nop                                                              // 0x0046e8b4    90
                         nop                                                              // 0x0046e8b5    90
                         nop                                                              // 0x0046e8b6    90
                         nop                                                              // 0x0046e8b7    90
                         nop                                                              // 0x0046e8b8    90
                         nop                                                              // 0x0046e8b9    90
                         nop                                                              // 0x0046e8ba    90
                         nop                                                              // 0x0046e8bb    90
                         nop                                                              // 0x0046e8bc    90
                         nop                                                              // 0x0046e8bd    90
                         nop                                                              // 0x0046e8be    90
                         nop                                                              // 0x0046e8bf    90
_jmp_addr_0x0046e8c0:    push               esi                                           // 0x0046e8c0    56
                         push               edi                                           // 0x0046e8c1    57
                         mov.s              esi, ecx                                      // 0x0046e8c2    8bf1
                         call               _jmp_addr_0x0046e780                          // 0x0046e8c4    e8b7feffff
                         {disp32} mov       ecx, dword ptr [esi + 0x0000482c]             // 0x0046e8c9    8b8e2c480000
                         mov                eax, dword ptr [ecx]                          // 0x0046e8cf    8b01
                         xor.s              edi, edi                                      // 0x0046e8d1    33ff
                         push               edi                                           // 0x0046e8d3    57
                         call               dword ptr [eax + 0x234]                       // 0x0046e8d4    ff9034020000
                         {disp32} mov       dword ptr [esi + 0x00004904], edi             // 0x0046e8da    89be04490000
                         {disp32} mov       dword ptr [esi + 0x000048fc], edi             // 0x0046e8e0    89befc480000
                         {disp32} mov       dword ptr [esi + 0x000049b4], edi             // 0x0046e8e6    89beb4490000
                         {disp32} mov       dword ptr [esi + 0x000049b8], edi             // 0x0046e8ec    89beb8490000
                         {disp32} mov       dword ptr [esi + 0x000049bc], edi             // 0x0046e8f2    89bebc490000
                         {disp32} mov       dword ptr [esi + 0x000048f8], edi             // 0x0046e8f8    89bef8480000
                         {disp32} mov       dword ptr [esi + 0x00004900], edi             // 0x0046e8fe    89be00490000
                         mov                eax, 0x00000001                               // 0x0046e904    b801000000
                         {disp32} mov       dword ptr [esi + 0x0000499c], edi             // 0x0046e909    89be9c490000
                         {disp32} mov       dword ptr [esi + 0x000049c0], edi             // 0x0046e90f    89bec0490000
                         pop                edi                                           // 0x0046e915    5f
                         {disp32} mov       dword ptr [esi + 0x00004878], eax             // 0x0046e916    898678480000
                         {disp32} mov       dword ptr [esi + 0x00004840], eax             // 0x0046e91c    898640480000
                         pop                esi                                           // 0x0046e922    5e
                         ret                                                              // 0x0046e923    c3
                         nop                                                              // 0x0046e924    90
                         nop                                                              // 0x0046e925    90
                         nop                                                              // 0x0046e926    90
                         nop                                                              // 0x0046e927    90
                         nop                                                              // 0x0046e928    90
                         nop                                                              // 0x0046e929    90
                         nop                                                              // 0x0046e92a    90
                         nop                                                              // 0x0046e92b    90
                         nop                                                              // 0x0046e92c    90
                         nop                                                              // 0x0046e92d    90
                         nop                                                              // 0x0046e92e    90
                         nop                                                              // 0x0046e92f    90
_jmp_addr_0x0046e930:    push               ebx                                           // 0x0046e930    53
                         push               ebp                                           // 0x0046e931    55
                         push               esi                                           // 0x0046e932    56
                         push               edi                                           // 0x0046e933    57
                         mov.s              edi, ecx                                      // 0x0046e934    8bf9
                         call               _jmp_addr_0x0046e780                          // 0x0046e936    e845feffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0046e93b    a194c9be00
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0046e940    8b742414
                         xor.s              ebp, ebp                                      // 0x0046e944    33ed
                         cmp.s              eax, ebp                                      // 0x0046e946    3bc5
                         {disp32} lea       ebx, dword ptr [edi + 0x00004878]             // 0x0046e948    8d9f78480000
                         {disp8} je         _jmp_addr_0x0046e97b                          // 0x0046e94e    742b
                         push               ebp                                           // 0x0046e950    55
                         push               0x4                                           // 0x0046e951    6a04
                         push               ebx                                           // 0x0046e953    53
                         mov.s              ecx, esi                                      // 0x0046e954    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0046e956    e885df3400
                         cmp                eax, 0x03                                     // 0x0046e95b    83f803
                         {disp8} jne        _jmp_addr_0x0046e966                          // 0x0046e95e    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0046e960    892d94c9be00
_jmp_addr_0x0046e966:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046e966    8b8e14020000
                         xor.s              eax, eax                                      // 0x0046e96c    33c0
                         mov                al, byte ptr [ebx]                            // 0x0046e96e    8a03
                         add                eax, 0x04                                     // 0x0046e970    83c004
                         add.s              ecx, eax                                      // 0x0046e973    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046e975    898e14020000
_jmp_addr_0x0046e97b:    {disp32} lea       ecx, dword ptr [edi + 0x00004904]             // 0x0046e97b    8d8f04490000
                         push               ecx                                           // 0x0046e981    51
                         mov.s              ecx, esi                                      // 0x0046e982    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0046e984    e8f7370f00
                         cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0046e989    392d94c9be00
                         {disp32} lea       ebx, dword ptr [edi + 0x0000490c]             // 0x0046e98f    8d9f0c490000
                         {disp8} je         _jmp_addr_0x0046e9c2                          // 0x0046e995    742b
                         push               ebp                                           // 0x0046e997    55
                         push               0x4                                           // 0x0046e998    6a04
                         push               ebx                                           // 0x0046e99a    53
                         mov.s              ecx, esi                                      // 0x0046e99b    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0046e99d    e83edf3400
                         cmp                eax, 0x03                                     // 0x0046e9a2    83f803
                         {disp8} jne        _jmp_addr_0x0046e9ad                          // 0x0046e9a5    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0046e9a7    892d94c9be00
_jmp_addr_0x0046e9ad:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0046e9ad    8b8614020000
                         xor.s              edx, edx                                      // 0x0046e9b3    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0046e9b5    8a13
                         add                edx, 0x04                                     // 0x0046e9b7    83c204
                         add.s              eax, edx                                      // 0x0046e9ba    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0046e9bc    898614020000
_jmp_addr_0x0046e9c2:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0046e9c2    392d94c9be00
                         {disp32} lea       ebx, dword ptr [edi + 0x00004910]             // 0x0046e9c8    8d9f10490000
                         {disp8} je         _jmp_addr_0x0046e9fb                          // 0x0046e9ce    742b
                         push               ebp                                           // 0x0046e9d0    55
                         push               0x4                                           // 0x0046e9d1    6a04
                         push               ebx                                           // 0x0046e9d3    53
                         mov.s              ecx, esi                                      // 0x0046e9d4    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0046e9d6    e805df3400
                         cmp                eax, 0x03                                     // 0x0046e9db    83f803
                         {disp8} jne        _jmp_addr_0x0046e9e6                          // 0x0046e9de    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0046e9e0    892d94c9be00
_jmp_addr_0x0046e9e6:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046e9e6    8b8e14020000
                         xor.s              eax, eax                                      // 0x0046e9ec    33c0
                         mov                al, byte ptr [ebx]                            // 0x0046e9ee    8a03
                         add                eax, 0x04                                     // 0x0046e9f0    83c004
                         add.s              ecx, eax                                      // 0x0046e9f3    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046e9f5    898e14020000
_jmp_addr_0x0046e9fb:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0046e9fb    392d94c9be00
                         {disp32} lea       ebx, dword ptr [edi + 0x00004914]             // 0x0046ea01    8d9f14490000
                         {disp8} je         _jmp_addr_0x0046ea34                          // 0x0046ea07    742b
                         push               ebp                                           // 0x0046ea09    55
                         push               0x4                                           // 0x0046ea0a    6a04
                         push               ebx                                           // 0x0046ea0c    53
                         mov.s              ecx, esi                                      // 0x0046ea0d    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0046ea0f    e8ccde3400
                         cmp                eax, 0x03                                     // 0x0046ea14    83f803
                         {disp8} jne        _jmp_addr_0x0046ea1f                          // 0x0046ea17    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0046ea19    892d94c9be00
_jmp_addr_0x0046ea1f:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0046ea1f    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0046ea25    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0046ea27    8a0b
                         add                ecx, 0x4                                      // 0x0046ea29    83c104
                         add.s              eax, ecx                                      // 0x0046ea2c    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0046ea2e    898614020000
_jmp_addr_0x0046ea34:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0046ea34    392d94c9be00
                         {disp32} lea       ebx, dword ptr [edi + 0x00004944]             // 0x0046ea3a    8d9f44490000
                         {disp8} je         _jmp_addr_0x0046ea6d                          // 0x0046ea40    742b
                         push               ebp                                           // 0x0046ea42    55
                         push               0x4                                           // 0x0046ea43    6a04
                         push               ebx                                           // 0x0046ea45    53
                         mov.s              ecx, esi                                      // 0x0046ea46    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0046ea48    e893de3400
                         cmp                eax, 0x03                                     // 0x0046ea4d    83f803
                         {disp8} jne        _jmp_addr_0x0046ea58                          // 0x0046ea50    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0046ea52    892d94c9be00
_jmp_addr_0x0046ea58:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0046ea58    8b8614020000
                         xor.s              edx, edx                                      // 0x0046ea5e    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0046ea60    8a13
                         add                edx, 0x04                                     // 0x0046ea62    83c204
                         add.s              eax, edx                                      // 0x0046ea65    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0046ea67    898614020000
_jmp_addr_0x0046ea6d:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0046ea6d    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x78]                   // 0x0046ea73    8d5f78
                         {disp8} je         _jmp_addr_0x0046eaa3                          // 0x0046ea76    742b
                         push               ebp                                           // 0x0046ea78    55
                         push               0xc                                           // 0x0046ea79    6a0c
                         push               ebx                                           // 0x0046ea7b    53
                         mov.s              ecx, esi                                      // 0x0046ea7c    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0046ea7e    e85dde3400
                         cmp                eax, 0x03                                     // 0x0046ea83    83f803
                         {disp8} jne        _jmp_addr_0x0046ea8e                          // 0x0046ea86    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0046ea88    892d94c9be00
_jmp_addr_0x0046ea8e:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046ea8e    8b8e14020000
                         xor.s              eax, eax                                      // 0x0046ea94    33c0
                         mov                al, byte ptr [ebx]                            // 0x0046ea96    8a03
                         add                eax, 0x0c                                     // 0x0046ea98    83c00c
                         add.s              ecx, eax                                      // 0x0046ea9b    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046ea9d    898e14020000
_jmp_addr_0x0046eaa3:    {disp32} lea       ecx, dword ptr [edi + 0x0000494c]             // 0x0046eaa3    8d8f4c490000
                         push               ecx                                           // 0x0046eaa9    51
                         mov.s              ecx, esi                                      // 0x0046eaaa    8bce
                         call               _jmp_addr_0x00563400                          // 0x0046eaac    e84f490f00
                         {disp32} lea       edx, dword ptr [edi + 0x00004950]             // 0x0046eab1    8d9750490000
                         push               edx                                           // 0x0046eab7    52
                         mov.s              ecx, esi                                      // 0x0046eab8    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0046eaba    e8c1360f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0046eabf    a194c9be00
                         add                edi, 0x00004954                               // 0x0046eac4    81c754490000
                         cmp.s              eax, ebp                                      // 0x0046eaca    3bc5
                         {disp8} je         _jmp_addr_0x0046eaf7                          // 0x0046eacc    7429
                         push               ebp                                           // 0x0046eace    55
                         push               0x1                                           // 0x0046eacf    6a01
                         push               edi                                           // 0x0046ead1    57
                         mov.s              ecx, esi                                      // 0x0046ead2    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0046ead4    e807de3400
                         cmp                eax, 0x03                                     // 0x0046ead9    83f803
                         {disp8} jne        _jmp_addr_0x0046eae4                          // 0x0046eadc    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0046eade    892d94c9be00
_jmp_addr_0x0046eae4:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046eae4    8b8e14020000
                         xor.s              eax, eax                                      // 0x0046eaea    33c0
                         mov                al, byte ptr [edi]                            // 0x0046eaec    8a07
                         inc                eax                                           // 0x0046eaee    40
                         add.s              ecx, eax                                      // 0x0046eaef    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046eaf1    898e14020000
_jmp_addr_0x0046eaf7:    pop                edi                                           // 0x0046eaf7    5f
                         pop                esi                                           // 0x0046eaf8    5e
                         pop                ebp                                           // 0x0046eaf9    5d
                         mov                eax, 0x00000001                               // 0x0046eafa    b801000000
                         pop                ebx                                           // 0x0046eaff    5b
                         ret                0x0004                                        // 0x0046eb00    c20400
                         nop                                                              // 0x0046eb03    90
                         nop                                                              // 0x0046eb04    90
                         nop                                                              // 0x0046eb05    90
                         nop                                                              // 0x0046eb06    90
                         nop                                                              // 0x0046eb07    90
                         nop                                                              // 0x0046eb08    90
                         nop                                                              // 0x0046eb09    90
                         nop                                                              // 0x0046eb0a    90
                         nop                                                              // 0x0046eb0b    90
                         nop                                                              // 0x0046eb0c    90
                         nop                                                              // 0x0046eb0d    90
                         nop                                                              // 0x0046eb0e    90
                         nop                                                              // 0x0046eb0f    90
_jmp_addr_0x0046eb10:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0046eb10    a190c9be00
                         push               ebx                                           // 0x0046eb15    53
                         push               ebp                                           // 0x0046eb16    55
                         push               esi                                           // 0x0046eb17    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0046eb18    8b742410
                         xor.s              ebp, ebp                                      // 0x0046eb1c    33ed
                         cmp.s              eax, ebp                                      // 0x0046eb1e    3bc5
                         push               edi                                           // 0x0046eb20    57
                         mov.s              edi, ecx                                      // 0x0046eb21    8bf9
                         {disp8} je         _jmp_addr_0x0046eb56                          // 0x0046eb23    7431
                         push               ebp                                           // 0x0046eb25    55
                         push               0x4                                           // 0x0046eb26    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x00004878]             // 0x0046eb28    8d9f78480000
                         push               ebx                                           // 0x0046eb2e    53
                         mov.s              ecx, esi                                      // 0x0046eb2f    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0046eb31    e8eadd3400
                         cmp                eax, 0x03                                     // 0x0046eb36    83f803
                         {disp8} jne        _jmp_addr_0x0046eb41                          // 0x0046eb39    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0046eb3b    892d90c9be00
_jmp_addr_0x0046eb41:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046eb41    8b8e14020000
                         xor.s              eax, eax                                      // 0x0046eb47    33c0
                         mov                al, byte ptr [ebx]                            // 0x0046eb49    8a03
                         add                eax, 0x04                                     // 0x0046eb4b    83c004
                         add.s              ecx, eax                                      // 0x0046eb4e    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046eb50    898e14020000
_jmp_addr_0x0046eb56:    {disp32} mov       ecx, dword ptr [edi + 0x00004904]             // 0x0046eb56    8b8f04490000
                         push               ecx                                           // 0x0046eb5c    51
                         mov.s              ecx, esi                                      // 0x0046eb5d    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0046eb5f    e8ac320f00
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0046eb64    392d90c9be00
                         {disp32} je        _jmp_addr_0x0046ec8a                          // 0x0046eb6a    0f841a010000
                         push               ebp                                           // 0x0046eb70    55
                         push               0x4                                           // 0x0046eb71    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x0000490c]             // 0x0046eb73    8d9f0c490000
                         push               ebx                                           // 0x0046eb79    53
                         mov.s              ecx, esi                                      // 0x0046eb7a    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0046eb7c    e89fdd3400
                         cmp                eax, 0x03                                     // 0x0046eb81    83f803
                         {disp8} jne        _jmp_addr_0x0046eb8c                          // 0x0046eb84    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0046eb86    892d90c9be00
_jmp_addr_0x0046eb8c:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046eb8c    8b8e14020000
                         xor.s              edx, edx                                      // 0x0046eb92    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0046eb94    8a13
                         add                edx, 0x04                                     // 0x0046eb96    83c204
                         add.s              ecx, edx                                      // 0x0046eb99    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046eb9b    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0046eba1    392d90c9be00
                         {disp32} je        _jmp_addr_0x0046ec8a                          // 0x0046eba7    0f84dd000000
                         push               ebp                                           // 0x0046ebad    55
                         push               0x4                                           // 0x0046ebae    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x00004910]             // 0x0046ebb0    8d9f10490000
                         push               ebx                                           // 0x0046ebb6    53
                         mov.s              ecx, esi                                      // 0x0046ebb7    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0046ebb9    e862dd3400
                         cmp                eax, 0x03                                     // 0x0046ebbe    83f803
                         {disp8} jne        _jmp_addr_0x0046ebc9                          // 0x0046ebc1    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0046ebc3    892d90c9be00
_jmp_addr_0x0046ebc9:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046ebc9    8b8e14020000
                         xor.s              eax, eax                                      // 0x0046ebcf    33c0
                         mov                al, byte ptr [ebx]                            // 0x0046ebd1    8a03
                         add                eax, 0x04                                     // 0x0046ebd3    83c004
                         add.s              ecx, eax                                      // 0x0046ebd6    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046ebd8    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0046ebde    392d90c9be00
                         {disp32} je        _jmp_addr_0x0046ec8a                          // 0x0046ebe4    0f84a0000000
                         push               ebp                                           // 0x0046ebea    55
                         push               0x4                                           // 0x0046ebeb    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x00004914]             // 0x0046ebed    8d9f14490000
                         push               ebx                                           // 0x0046ebf3    53
                         mov.s              ecx, esi                                      // 0x0046ebf4    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0046ebf6    e825dd3400
                         cmp                eax, 0x03                                     // 0x0046ebfb    83f803
                         {disp8} jne        _jmp_addr_0x0046ec06                          // 0x0046ebfe    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0046ec00    892d90c9be00
_jmp_addr_0x0046ec06:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0046ec06    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0046ec0c    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0046ec0e    8a0b
                         add                ecx, 0x4                                      // 0x0046ec10    83c104
                         add.s              edx, ecx                                      // 0x0046ec13    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0046ec15    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0046ec1b    392d90c9be00
                         {disp8} je         _jmp_addr_0x0046ec8a                          // 0x0046ec21    7467
                         push               ebp                                           // 0x0046ec23    55
                         push               0x4                                           // 0x0046ec24    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x00004944]             // 0x0046ec26    8d9f44490000
                         push               ebx                                           // 0x0046ec2c    53
                         mov.s              ecx, esi                                      // 0x0046ec2d    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0046ec2f    e8ecdc3400
                         cmp                eax, 0x03                                     // 0x0046ec34    83f803
                         {disp8} jne        _jmp_addr_0x0046ec3f                          // 0x0046ec37    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0046ec39    892d90c9be00
_jmp_addr_0x0046ec3f:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046ec3f    8b8e14020000
                         xor.s              edx, edx                                      // 0x0046ec45    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0046ec47    8a13
                         add                edx, 0x04                                     // 0x0046ec49    83c204
                         add.s              ecx, edx                                      // 0x0046ec4c    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046ec4e    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0046ec54    392d90c9be00
                         {disp8} je         _jmp_addr_0x0046ec8a                          // 0x0046ec5a    742e
                         push               ebp                                           // 0x0046ec5c    55
                         push               0xc                                           // 0x0046ec5d    6a0c
                         {disp8} lea        ebx, dword ptr [edi + 0x78]                   // 0x0046ec5f    8d5f78
                         push               ebx                                           // 0x0046ec62    53
                         mov.s              ecx, esi                                      // 0x0046ec63    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0046ec65    e8b6dc3400
                         cmp                eax, 0x03                                     // 0x0046ec6a    83f803
                         {disp8} jne        _jmp_addr_0x0046ec75                          // 0x0046ec6d    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0046ec6f    892d90c9be00
_jmp_addr_0x0046ec75:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046ec75    8b8e14020000
                         xor.s              eax, eax                                      // 0x0046ec7b    33c0
                         mov                al, byte ptr [ebx]                            // 0x0046ec7d    8a03
                         add                eax, 0x0c                                     // 0x0046ec7f    83c00c
                         add.s              ecx, eax                                      // 0x0046ec82    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046ec84    898e14020000
_jmp_addr_0x0046ec8a:    {disp32} lea       ecx, dword ptr [edi + 0x0000494c]             // 0x0046ec8a    8d8f4c490000
                         push               ecx                                           // 0x0046ec90    51
                         mov.s              ecx, esi                                      // 0x0046ec91    8bce
                         call               _jmp_addr_0x00563410                          // 0x0046ec93    e878470f00
                         {disp32} mov       edx, dword ptr [edi + 0x00004950]             // 0x0046ec98    8b9750490000
                         push               edx                                           // 0x0046ec9e    52
                         mov.s              ecx, esi                                      // 0x0046ec9f    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0046eca1    e86a310f00
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0046eca6    392d90c9be00
                         {disp8} je         _jmp_addr_0x0046ecdd                          // 0x0046ecac    742f
                         push               ebp                                           // 0x0046ecae    55
                         push               0x1                                           // 0x0046ecaf    6a01
                         add                edi, 0x00004954                               // 0x0046ecb1    81c754490000
                         push               edi                                           // 0x0046ecb7    57
                         mov.s              ecx, esi                                      // 0x0046ecb8    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0046ecba    e861dc3400
                         cmp                eax, 0x03                                     // 0x0046ecbf    83f803
                         {disp8} jne        _jmp_addr_0x0046ecca                          // 0x0046ecc2    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0046ecc4    892d90c9be00
_jmp_addr_0x0046ecca:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0046ecca    8b8e14020000
                         xor.s              eax, eax                                      // 0x0046ecd0    33c0
                         mov                al, byte ptr [edi]                            // 0x0046ecd2    8a07
                         inc                eax                                           // 0x0046ecd4    40
                         add.s              ecx, eax                                      // 0x0046ecd5    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0046ecd7    898e14020000
_jmp_addr_0x0046ecdd:    pop                edi                                           // 0x0046ecdd    5f
                         pop                esi                                           // 0x0046ecde    5e
                         pop                ebp                                           // 0x0046ecdf    5d
                         mov                eax, 0x00000001                               // 0x0046ece0    b801000000
                         pop                ebx                                           // 0x0046ece5    5b
                         ret                0x0004                                        // 0x0046ece6    c20400
                         nop                                                              // 0x0046ece9    90
                         nop                                                              // 0x0046ecea    90
                         nop                                                              // 0x0046eceb    90
                         nop                                                              // 0x0046ecec    90
                         nop                                                              // 0x0046eced    90
                         nop                                                              // 0x0046ecee    90
                         nop                                                              // 0x0046ecef    90
_jmp_addr_0x0046ecf0:    push               ecx                                           // 0x0046ecf0    51
                         push               ebx                                           // 0x0046ecf1    53
                         push               esi                                           // 0x0046ecf2    56
                         mov.s              esi, ecx                                      // 0x0046ecf3    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00004878]             // 0x0046ecf5    8b8678480000
                         xor.s              ebx, ebx                                      // 0x0046ecfb    33db
                         cmp                eax, 0x04                                     // 0x0046ecfd    83f804
                         {disp8} jne        _jmp_addr_0x0046ed14                          // 0x0046ed00    7512
                         cmp                dword ptr [esi + 0x00004904], ebx             // 0x0046ed02    399e04490000
                         {disp8} jne        _jmp_addr_0x0046ed14                          // 0x0046ed08    750a
                         {disp32} mov       dword ptr [esi + 0x00004878], 0x00000001      // 0x0046ed0a    c7867848000001000000
_jmp_addr_0x0046ed14:    {disp32} mov       eax, dword ptr [esi + 0x00004878]             // 0x0046ed14    8b8678480000
                         cmp                eax, 0x04                                     // 0x0046ed1a    83f804
                         {disp8} je         _jmp_addr_0x0046ed36                          // 0x0046ed1d    7417
                         cmp                eax, 0x08                                     // 0x0046ed1f    83f808
                         {disp32} jne       _jmp_addr_0x0046edab                          // 0x0046ed22    0f8583000000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000489c]             // 0x0046ed28    8b8e9c480000
                         mov                eax, dword ptr [ecx]                          // 0x0046ed2e    8b01
                         call               dword ptr [eax]                               // 0x0046ed30    ff10
                         pop                esi                                           // 0x0046ed32    5e
                         pop                ebx                                           // 0x0046ed33    5b
                         pop                ecx                                           // 0x0046ed34    59
                         ret                                                              // 0x0046ed35    c3
_jmp_addr_0x0046ed36:    push               edi                                           // 0x0046ed36    57
                         {disp32} mov       edi, dword ptr [esi + 0x00004904]             // 0x0046ed37    8bbe04490000
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x0046ed3d    8b4f1c
                         add                edi, 0x14                                     // 0x0046ed40    83c714
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0046ed43    894c240c
                         mov.s              ecx, edi                                      // 0x0046ed47    8bcf
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0046ed49    e842433900
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x0046ed4e    d844240c
                         {disp32} fstp      dword ptr [esi + 0x00004930]                  // 0x0046ed52    d99e30490000
                         fild               dword ptr [edi]                               // 0x0046ed58    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0046ed5a    d80da4a38a00
                         {disp32} fstp      dword ptr [esi + 0x0000492c]                  // 0x0046ed60    d99e2c490000
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x0046ed66    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0046ed69    d80da4a38a00
                         {disp32} fstp      dword ptr [esi + 0x00004934]                  // 0x0046ed6f    d99e34490000
                         {disp32} mov       dword ptr [esi + 0x00004940], ebx             // 0x0046ed75    899e40490000
                         {disp32} mov       dword ptr [esi + 0x0000493c], ebx             // 0x0046ed7b    899e3c490000
                         {disp32} mov       dword ptr [esi + 0x00004938], ebx             // 0x0046ed81    899e38490000
                         {disp32} mov       dword ptr [esi + 0x00004928], ebx             // 0x0046ed87    899e28490000
                         {disp32} mov       dword ptr [esi + 0x00004924], ebx             // 0x0046ed8d    899e24490000
                         {disp32} mov       dword ptr [esi + 0x00004920], ebx             // 0x0046ed93    899e20490000
                         {disp32} mov       edx, dword ptr [esi + 0x00004878]             // 0x0046ed99    8b9678480000
                         {disp32} mov       ecx, dword ptr [esi + edx * 0x4 + 0x0000487c] // 0x0046ed9f    8b8c967c480000
                         mov                eax, dword ptr [ecx]                          // 0x0046eda6    8b01
                         call               dword ptr [eax]                               // 0x0046eda8    ff10
                         pop                edi                                           // 0x0046edaa    5f
_jmp_addr_0x0046edab:    pop                esi                                           // 0x0046edab    5e
                         pop                ebx                                           // 0x0046edac    5b
                         pop                ecx                                           // 0x0046edad    59
                         ret                                                              // 0x0046edae    c3
                         nop                                                              // 0x0046edaf    90
_jmp_addr_0x0046edb0:    mov.s              eax, ecx                                      // 0x0046edb0    8bc1
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x0046edb2    c7400400000000
                         mov                dword ptr [eax], 0x00000000                   // 0x0046edb9    c70000000000
                         ret                                                              // 0x0046edbf    c3
_globl_ct_0x0046edc0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0046edc0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0046edc6    b001
                         test               al, cl                                        // 0x0046edc8    84c8
                         {disp8} jne        _jmp_addr_0x0046edd4                          // 0x0046edca    7508
                         or.s               cl, al                                        // 0x0046edcc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0046edce    880d34c9fa00
_jmp_addr_0x0046edd4:    {disp32} jmp       _jmp_addr_0x0046ede0                          // 0x0046edd4    e907000000
                         nop                                                              // 0x0046edd9    90
                         nop                                                              // 0x0046edda    90
                         nop                                                              // 0x0046eddb    90
                         nop                                                              // 0x0046eddc    90
                         nop                                                              // 0x0046eddd    90
                         nop                                                              // 0x0046edde    90
                         nop                                                              // 0x0046eddf    90
_jmp_addr_0x0046ede0:    push               0x00407870                                    // 0x0046ede0    6870784000
                         call               _atexit                                       // 0x0046ede5    e8a7693500
                         pop                ecx                                           // 0x0046edea    59
                         ret                                                              // 0x0046edeb    c3
                         nop                                                              // 0x0046edec    90
                         nop                                                              // 0x0046eded    90
                         nop                                                              // 0x0046edee    90
                         nop                                                              // 0x0046edef    90
_globl_ct_0x0046edf0:    {disp32} jmp       _jmp_addr_0x0046ee00                          // 0x0046edf0    e90b000000
                         nop                                                              // 0x0046edf5    90
                         nop                                                              // 0x0046edf6    90
                         nop                                                              // 0x0046edf7    90
                         nop                                                              // 0x0046edf8    90
                         nop                                                              // 0x0046edf9    90
                         nop                                                              // 0x0046edfa    90
                         nop                                                              // 0x0046edfb    90
                         nop                                                              // 0x0046edfc    90
                         nop                                                              // 0x0046edfd    90
                         nop                                                              // 0x0046edfe    90
                         nop                                                              // 0x0046edff    90
_jmp_addr_0x0046ee00:    {disp32} mov       dword ptr [data_bytes + 0x2988cc], 0xffffffff // 0x0046ee00    c705cce8c500ffffffff
                         ret                                                              // 0x0046ee0a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0046ee0b    e8692af9ff
_globl_ct_0x0046ee10:    {disp32} jmp       _jmp_addr_0x0046ee20                          // 0x0046ee10    e90b000000
                         nop                                                              // 0x0046ee15    90
                         nop                                                              // 0x0046ee16    90
                         nop                                                              // 0x0046ee17    90
                         nop                                                              // 0x0046ee18    90
                         nop                                                              // 0x0046ee19    90
                         nop                                                              // 0x0046ee1a    90
                         nop                                                              // 0x0046ee1b    90
                         nop                                                              // 0x0046ee1c    90
                         nop                                                              // 0x0046ee1d    90
                         nop                                                              // 0x0046ee1e    90
                         nop                                                              // 0x0046ee1f    90
_jmp_addr_0x0046ee20:    ret                                                              // 0x0046ee20    c3
                         nop                                                              // 0x0046ee21    90
                         nop                                                              // 0x0046ee22    90
                         nop                                                              // 0x0046ee23    90
                         nop                                                              // 0x0046ee24    90
                         nop                                                              // 0x0046ee25    90
                         nop                                                              // 0x0046ee26    90
                         nop                                                              // 0x0046ee27    90
                         nop                                                              // 0x0046ee28    90
                         nop                                                              // 0x0046ee29    90
                         nop                                                              // 0x0046ee2a    90
                         nop                                                              // 0x0046ee2b    90
                         nop                                                              // 0x0046ee2c    90
                         nop                                                              // 0x0046ee2d    90
                         nop                                                              // 0x0046ee2e    90
                         nop                                                              // 0x0046ee2f    90
_jmp_addr_0x0046ee30:    mov.s              eax, ecx                                      // 0x0046ee30    8bc1
                         mov                dword ptr [eax], 0x00000000                   // 0x0046ee32    c70000000000
                         {disp32} mov       dword ptr [eax + 0x00000084], 0x00000000      // 0x0046ee38    c7808400000000000000
                         ret                                                              // 0x0046ee42    c3
                         nop                                                              // 0x0046ee43    90
                         nop                                                              // 0x0046ee44    90
                         nop                                                              // 0x0046ee45    90
                         nop                                                              // 0x0046ee46    90
                         nop                                                              // 0x0046ee47    90
                         nop                                                              // 0x0046ee48    90
                         nop                                                              // 0x0046ee49    90
                         nop                                                              // 0x0046ee4a    90
                         nop                                                              // 0x0046ee4b    90
                         nop                                                              // 0x0046ee4c    90
                         nop                                                              // 0x0046ee4d    90
                         nop                                                              // 0x0046ee4e    90
                         nop                                                              // 0x0046ee4f    90
_jmp_addr_0x0046ee50:    ret                                                              // 0x0046ee50    c3
                         nop                                                              // 0x0046ee51    90
                         nop                                                              // 0x0046ee52    90
                         nop                                                              // 0x0046ee53    90
                         nop                                                              // 0x0046ee54    90
                         nop                                                              // 0x0046ee55    90
                         nop                                                              // 0x0046ee56    90
                         nop                                                              // 0x0046ee57    90
                         nop                                                              // 0x0046ee58    90
                         nop                                                              // 0x0046ee59    90
                         nop                                                              // 0x0046ee5a    90
                         nop                                                              // 0x0046ee5b    90
                         nop                                                              // 0x0046ee5c    90
                         nop                                                              // 0x0046ee5d    90
                         nop                                                              // 0x0046ee5e    90
                         nop                                                              // 0x0046ee5f    90
_jmp_addr_0x0046ee60:    sub                esp, 0x24                                     // 0x0046ee60    83ec24
                         push               ebx                                           // 0x0046ee63    53
                         {disp8} mov        ebx, dword ptr [esp + 0x34]                   // 0x0046ee64    8b5c2434
                         push               ebp                                           // 0x0046ee68    55
                         {disp8} mov        ebp, dword ptr [esp + 0x30]                   // 0x0046ee69    8b6c2430
                         push               esi                                           // 0x0046ee6d    56
                         {disp8} mov        esi, dword ptr [esp + 0x38]                   // 0x0046ee6e    8b742438
                         push               ebx                                           // 0x0046ee72    53
                         push               esi                                           // 0x0046ee73    56
                         push               ebp                                           // 0x0046ee74    55
                         mov                word ptr [esi], 0x0000                        // 0x0046ee75    66c7060000
                         call               dword ptr [__imp__GetKeyNameTextW@4]          // 0x0046ee7a    ff15d4978a00
                         cmp                word ptr [esi], 0x00                          // 0x0046ee80    66833e00
                         {disp8} jne        _jmp_addr_0x0046eec7                          // 0x0046ee84    7541
                         push               edi                                           // 0x0046ee86    57
                         xor.s              eax, eax                                      // 0x0046ee87    33c0
                         cmp                ebx, 0x20                                     // 0x0046ee89    83fb20
                         mov                ecx, 0x00000008                               // 0x0046ee8c    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x10]                   // 0x0046ee91    8d7c2410
                         rep stosd                                                        // 0x0046ee95    f3ab
                         stosb                                                            // 0x0046ee97    aa
                         pop                edi                                           // 0x0046ee98    5f
                         mov.s              eax, ebx                                      // 0x0046ee99    8bc3
                         {disp8} jl         _jmp_addr_0x0046eea2                          // 0x0046ee9b    7c05
                         mov                eax, 0x00000020                               // 0x0046ee9d    b820000000
_jmp_addr_0x0046eea2:    push               eax                                           // 0x0046eea2    50
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0046eea3    8d442410
                         push               eax                                           // 0x0046eea7    50
                         push               ebp                                           // 0x0046eea8    55
                         call               dword ptr [__imp__GetKeyNameTextA@4]          // 0x0046eea9    ff15d8978a00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046eeaf    8d4c240c
                         push               ebx                                           // 0x0046eeb3    53
                         push               ecx                                           // 0x0046eeb4    51
                         call               _CHAR2WCHAR__FPc                              // 0x0046eeb5    e8e6113c00
                         add                esp, 0x04                                     // 0x0046eeba    83c404
                         push               eax                                           // 0x0046eebd    50
                         push               esi                                           // 0x0046eebe    56
                         call               _wcsncpy                                      // 0x0046eebf    e861753500
                         add                esp, 0x0c                                     // 0x0046eec4    83c40c
_jmp_addr_0x0046eec7:    pop                esi                                           // 0x0046eec7    5e
                         pop                ebp                                           // 0x0046eec8    5d
                         pop                ebx                                           // 0x0046eec9    5b
                         add                esp, 0x24                                     // 0x0046eeca    83c424
                         ret                                                              // 0x0046eecd    c3
                         nop                                                              // 0x0046eece    90
                         nop                                                              // 0x0046eecf    90
_jmp_addr_0x0046eed0:    sub                esp, 0x00000084                               // 0x0046eed0    81ec84000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000088]             // 0x0046eed6    8b842488000000
                         push               ebx                                           // 0x0046eedd    53
                         push               ebp                                           // 0x0046eede    55
                         push               esi                                           // 0x0046eedf    56
                         push               edi                                           // 0x0046eee0    57
                         {disp32} mov       edi, dword ptr [esp + 0x0000009c]             // 0x0046eee1    8bbc249c000000
                         mov.s              ebx, edi                                      // 0x0046eee8    8bdf
                         mov.s              esi, eax                                      // 0x0046eeea    8bf0
                         {disp32} mov       dword ptr [ecx + 0x00000084], edi             // 0x0046eeec    89b984000000
                         mov                dword ptr [ecx], eax                          // 0x0046eef2    8901
                         and                esi, 0x00000080                               // 0x0046eef4    81e680000000
                         and                ebx, 0x00000080                               // 0x0046eefa    81e380000000
                         {disp8} lea        ebp, dword ptr [ecx + 0x04]                   // 0x0046ef00    8d6904
                         {disp32} lea       edx, dword ptr [ecx + 0x00000088]             // 0x0046ef03    8d9188000000
                         or                 esi, 0x100                                    // 0x0046ef09    81ce00010000
                         or                 ebx, 0x100                                    // 0x0046ef0f    81cb00010000
                         and                edi, 0x7f                                     // 0x0046ef15    83e77f
                         and                eax, 0x7f                                     // 0x0046ef18    83e07f
                         shl                esi, 1                                        // 0x0046ef1b    d1e6
                         shl                ebx, 1                                        // 0x0046ef1d    d1e3
                         or.s               ebx, edi                                      // 0x0046ef1f    0bdf
                         or.s               esi, eax                                      // 0x0046ef21    0bf0
                         xor.s              eax, eax                                      // 0x0046ef23    33c0
                         mov                word ptr [edx], 0x0000                        // 0x0046ef25    66c7020000
                         {disp8} mov        word ptr [ebp + 0x00], 0x0000                 // 0x0046ef2a    66c745000000
                         push               0x10                                          // 0x0046ef30    6a10
                         mov                ecx, 0x00000020                               // 0x0046ef32    b920000000
                         mov.s              edi, ebp                                      // 0x0046ef37    8bfd
                         rep stosd                                                        // 0x0046ef39    f3ab
                         shl                esi, 0x10                                     // 0x0046ef3b    c1e610
                         mov.s              edi, edx                                      // 0x0046ef3e    8bfa
                         push               ebp                                           // 0x0046ef40    55
                         mov                ecx, 0x00000020                               // 0x0046ef41    b920000000
                         push               esi                                           // 0x0046ef46    56
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0046ef47    8954241c
                         shl                ebx, 0x10                                     // 0x0046ef4b    c1e310
                         rep stosd                                                        // 0x0046ef4e    f3ab
                         call               _jmp_addr_0x0046ee60                          // 0x0046ef50    e80bffffff
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x0046ef55    8b7c241c
                         push               0x10                                          // 0x0046ef59    6a10
                         push               edi                                           // 0x0046ef5b    57
                         push               ebx                                           // 0x0046ef5c    53
                         call               _jmp_addr_0x0046ee60                          // 0x0046ef5d    e8fefeffff
                         add                esp, 0x18                                     // 0x0046ef62    83c418
                         cmp                word ptr [ebp + 0x00], 0x00                   // 0x0046ef65    66837d0000
                         {disp8} jne        _jmp_addr_0x0046ef8e                          // 0x0046ef6a    7522
                         push               0x10                                          // 0x0046ef6c    6a10
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0046ef6e    8d442418
                         push               eax                                           // 0x0046ef72    50
                         push               esi                                           // 0x0046ef73    56
                         call               dword ptr [__imp__GetKeyNameTextA@4]          // 0x0046ef74    ff15d8978a00
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046ef7a    8d4c2414
                         push               ecx                                           // 0x0046ef7e    51
                         call               _CHAR2WCHAR__FPc                              // 0x0046ef7f    e81c113c00
                         push               eax                                           // 0x0046ef84    50
                         push               ebp                                           // 0x0046ef85    55
                         call               _wcscpy                                       // 0x0046ef86    e82b703500
                         add                esp, 0x0c                                     // 0x0046ef8b    83c40c
_jmp_addr_0x0046ef8e:    cmp                word ptr [edi], 0x00                          // 0x0046ef8e    66833f00
                         {disp8} jne        _jmp_addr_0x0046efb6                          // 0x0046ef92    7522
                         push               0x10                                          // 0x0046ef94    6a10
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0046ef96    8d542418
                         push               edx                                           // 0x0046ef9a    52
                         push               ebx                                           // 0x0046ef9b    53
                         call               dword ptr [__imp__GetKeyNameTextA@4]          // 0x0046ef9c    ff15d8978a00
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0046efa2    8d442414
                         push               eax                                           // 0x0046efa6    50
                         call               _CHAR2WCHAR__FPc                              // 0x0046efa7    e8f4103c00
                         push               eax                                           // 0x0046efac    50
                         push               edi                                           // 0x0046efad    57
                         call               _wcscpy                                       // 0x0046efae    e803703500
                         add                esp, 0x0c                                     // 0x0046efb3    83c40c
_jmp_addr_0x0046efb6:    pop                edi                                           // 0x0046efb6    5f
                         pop                esi                                           // 0x0046efb7    5e
                         pop                ebp                                           // 0x0046efb8    5d
                         pop                ebx                                           // 0x0046efb9    5b
                         add                esp, 0x00000084                               // 0x0046efba    81c484000000
                         ret                0x0008                                        // 0x0046efc0    c20800
                         nop                                                              // 0x0046efc3    90
                         nop                                                              // 0x0046efc4    90
                         nop                                                              // 0x0046efc5    90
                         nop                                                              // 0x0046efc6    90
                         nop                                                              // 0x0046efc7    90
                         nop                                                              // 0x0046efc8    90
                         nop                                                              // 0x0046efc9    90
                         nop                                                              // 0x0046efca    90
                         nop                                                              // 0x0046efcb    90
                         nop                                                              // 0x0046efcc    90
                         nop                                                              // 0x0046efcd    90
                         nop                                                              // 0x0046efce    90
                         nop                                                              // 0x0046efcf    90
_jmp_addr_0x0046efd0:    mov                edx, dword ptr [ecx]                          // 0x0046efd0    8b11
                         xor.s              eax, eax                                      // 0x0046efd2    33c0
                         test               edx, edx                                      // 0x0046efd4    85d2
                         setne              al                                            // 0x0046efd6    0f95c0
                         ret                                                              // 0x0046efd9    c3
                         call               dword ptr [__imp__DirectInputCreateA@4]       // 0x0046efda    ff1534908a00
@GetDisplayText__10ControlKeyFPw@12:    cmp                dword ptr [ecx], 0x00                         // 0x0046efe0    833900
                         {disp8} je         _jmp_addr_0x0046f027                          // 0x0046efe3    7442
                         {disp32} mov       eax, dword ptr [ecx + 0x00000084]             // 0x0046efe5    8b8184000000
                         test               eax, eax                                      // 0x0046efeb    85c0
                         {disp8} je         _jmp_addr_0x0046f010                          // 0x0046efed    7421
                         {disp8} lea        eax, dword ptr [ecx + 0x04]                   // 0x0046efef    8d4104
                         push               eax                                           // 0x0046eff2    50
                         add                ecx, 0x00000088                               // 0x0046eff3    81c188000000
                         push               ecx                                           // 0x0046eff9    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0046effa    8b4c240c
                         push               0x009cdfa8                                    // 0x0046effe    68a8df9c00
                         push               ecx                                           // 0x0046f003    51
                         call               dword ptr [rdata_bytes + 0x360]               // 0x0046f004    ff1560938a00
                         add                esp, 0x10                                     // 0x0046f00a    83c410
                         ret                0x0004                                        // 0x0046f00d    c20400
_jmp_addr_0x0046f010:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0046f010    8b542404
                         add                ecx, 0x4                                      // 0x0046f014    83c104
                         push               ecx                                           // 0x0046f017    51
                         push               0x009cd6c8                                    // 0x0046f018    68c8d69c00
                         push               edx                                           // 0x0046f01d    52
                         call               dword ptr [rdata_bytes + 0x360]               // 0x0046f01e    ff1560938a00
                         add                esp, 0x0c                                     // 0x0046f024    83c40c
_jmp_addr_0x0046f027:    ret                0x0004                                        // 0x0046f027    c20400
                         call               dword ptr [rdata_bytes + 0xc0]                // 0x0046f02a    ff15c0908a00
_jmp_addr_0x0046f030:    mov.s              eax, ecx                                      // 0x0046f030    8bc1
                         mov                dword ptr [eax], 0x00000000                   // 0x0046f032    c70000000000
                         ret                                                              // 0x0046f038    c3
                         nop                                                              // 0x0046f039    90
                         nop                                                              // 0x0046f03a    90
                         nop                                                              // 0x0046f03b    90
                         nop                                                              // 0x0046f03c    90
                         nop                                                              // 0x0046f03d    90
                         nop                                                              // 0x0046f03e    90
                         nop                                                              // 0x0046f03f    90
_jmp_addr_0x0046f040:    ret                                                              // 0x0046f040    c3
                         nop                                                              // 0x0046f041    90
                         nop                                                              // 0x0046f042    90
                         nop                                                              // 0x0046f043    90
                         nop                                                              // 0x0046f044    90
                         nop                                                              // 0x0046f045    90
                         nop                                                              // 0x0046f046    90
                         nop                                                              // 0x0046f047    90
                         nop                                                              // 0x0046f048    90
                         nop                                                              // 0x0046f049    90
                         nop                                                              // 0x0046f04a    90
                         nop                                                              // 0x0046f04b    90
                         nop                                                              // 0x0046f04c    90
                         nop                                                              // 0x0046f04d    90
                         nop                                                              // 0x0046f04e    90
                         nop                                                              // 0x0046f04f    90
_jmp_addr_0x0046f050:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0046f050    8b442404
                         cmp                eax, 0x05                                     // 0x0046f054    83f805
                         mov                dword ptr [ecx], eax                          // 0x0046f057    8901
                         {disp32} ja        _jmp_addr_0x0046f14d                          // 0x0046f059    0f87ee000000
                         jmp                dword ptr [eax*4 + 0x46f150]                  // 0x0046f05f    ff248550f14600
                         {disp8} mov        word ptr [ecx + 0x04], 0x0000                 // 0x0046f066    66c741040000
                         ret                0x0004                                        // 0x0046f06c    c20400
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a78 // 0x0046f06f    813dac7cd100780a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0046f079    a1a87cd100
                         {disp32} jbe       _jmp_addr_0x0046f13d                          // 0x0046f07e    0f86b9000000
                         {disp32} mov       edx, dword ptr [eax + 0x00007da8]             // 0x0046f084    8b90a87d0000
                         add                eax, 0x00007da0                               // 0x0046f08a    05a07d0000
                         push               edx                                           // 0x0046f08f    52
                         add                ecx, 0x4                                      // 0x0046f090    83c104
                         push               ecx                                           // 0x0046f093    51
                         call               _wcscpy                                       // 0x0046f094    e81d6f3500
                         add                esp, 0x08                                     // 0x0046f099    83c408
                         ret                0x0004                                        // 0x0046f09c    c20400
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a79 // 0x0046f09f    813dac7cd100790a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0046f0a9    a1a87cd100
                         {disp32} jbe       _jmp_addr_0x0046f13d                          // 0x0046f0ae    0f8689000000
                         {disp32} mov       edx, dword ptr [eax + 0x00007db4]             // 0x0046f0b4    8b90b47d0000
                         add                eax, 0x00007dac                               // 0x0046f0ba    05ac7d0000
                         push               edx                                           // 0x0046f0bf    52
                         add                ecx, 0x4                                      // 0x0046f0c0    83c104
                         push               ecx                                           // 0x0046f0c3    51
                         call               _wcscpy                                       // 0x0046f0c4    e8ed6e3500
                         add                esp, 0x08                                     // 0x0046f0c9    83c408
                         ret                0x0004                                        // 0x0046f0cc    c20400
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a7a // 0x0046f0cf    813dac7cd1007a0a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0046f0d9    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0046f13d                          // 0x0046f0de    765d
                         {disp32} mov       edx, dword ptr [eax + 0x00007dc0]             // 0x0046f0e0    8b90c07d0000
                         add                eax, 0x00007db8                               // 0x0046f0e6    05b87d0000
                         push               edx                                           // 0x0046f0eb    52
                         add                ecx, 0x4                                      // 0x0046f0ec    83c104
                         push               ecx                                           // 0x0046f0ef    51
                         call               _wcscpy                                       // 0x0046f0f0    e8c16e3500
                         add                esp, 0x08                                     // 0x0046f0f5    83c408
                         ret                0x0004                                        // 0x0046f0f8    c20400
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a7b // 0x0046f0fb    813dac7cd1007b0a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0046f105    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0046f13d                          // 0x0046f10a    7631
                         {disp32} mov       edx, dword ptr [eax + 0x00007dcc]             // 0x0046f10c    8b90cc7d0000
                         add                eax, 0x00007dc4                               // 0x0046f112    05c47d0000
                         push               edx                                           // 0x0046f117    52
                         add                ecx, 0x4                                      // 0x0046f118    83c104
                         push               ecx                                           // 0x0046f11b    51
                         call               _wcscpy                                       // 0x0046f11c    e8956e3500
                         add                esp, 0x08                                     // 0x0046f121    83c408
                         ret                0x0004                                        // 0x0046f124    c20400
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a7c // 0x0046f127    813dac7cd1007c0a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0046f131    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0046f13d                          // 0x0046f136    7605
                         add                eax, 0x00007dd0                               // 0x0046f138    05d07d0000
_jmp_addr_0x0046f13d:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0046f13d    8b5008
                         push               edx                                           // 0x0046f140    52
                         add                ecx, 0x4                                      // 0x0046f141    83c104
                         push               ecx                                           // 0x0046f144    51
                         call               _wcscpy                                       // 0x0046f145    e86c6e3500
                         add                esp, 0x08                                     // 0x0046f14a    83c408
_jmp_addr_0x0046f14d:    ret                0x0004                                        // 0x0046f14d    c20400

// Snippet: jmptbl, [0x0046f150, 0x0046f168)
.byte 0x66, 0xf0, 0x46, 0x00      // 0x0046f150
.byte 0x6f, 0xf0, 0x46, 0x00      // 0x0046f154
.byte 0xcf, 0xf0, 0x46, 0x00      // 0x0046f158
.byte 0xfb, 0xf0, 0x46, 0x00      // 0x0046f15c
.byte 0x27, 0xf1, 0x46, 0x00      // 0x0046f160
.byte 0x9f, 0xf0, 0x46, 0x00      // 0x0046f164

// Snippet: db, [0x0046f168, 0x0046f170)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0046f168
.byte 0x90, 0x90, 0x90, 0x90      // 0x0046f16c

