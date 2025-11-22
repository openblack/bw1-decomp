.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??$WriteIt@I@GameOSFile@@QAEXAAI@Z
.extern ??$ReadIt@H@GameOSFile@@QAEXAAH@Z
.extern ??$ReadIt@H@GameOSFile@@QAEXAAI@Z
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x0043dc00
.extern _jmp_addr_0x004640a0
.extern _jmp_addr_0x004e94f0
.extern _jmp_addr_0x004e9590
.extern _jmp_addr_0x0050e7e0
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern ??0GameThing@@QAE@XZ
.extern _jmp_addr_0x0056fa80
.extern ?Save@GameThing@@QAEIAAVGGameOSFile@@@Z
.extern ?Load@GameThing@@QAEIAAVGGameOSFile@@@Z
.extern ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z
.extern ?ConvertAngle3DToGame@GUtils@@SAIM@Z
.extern _jmp_addr_0x0074e1d0
.extern _jmp_addr_0x0074e200
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _sprintf
.extern ??2@YAPAXI@Z

.globl _jmp_addr_0x0050d1c0
.globl _jmp_addr_0x0050d2a0
.globl _jmp_addr_0x0050d460
.globl _jmp_addr_0x0050d490
.globl _jmp_addr_0x0050d4b0
.globl _jmp_addr_0x0050d5a0
.globl _jmp_addr_0x0050d5f0
.globl _jmp_addr_0x0050d600
.globl _jmp_addr_0x0050dd50
.globl _jmp_addr_0x0050dda0
.globl _jmp_addr_0x0050e020
.globl _jmp_addr_0x0050e340
.globl _jmp_addr_0x0050e3e0

.globl _globl_ct_0x0050e2e0
.globl _globl_ct_0x0050e310
.globl ?Save@DanceGroup@@UAEIAAVGameOSFile@@@Z
.globl ?Load@DanceGroup@@UAEIAAVGameOSFile@@@Z
.globl ?GetSaveType@DanceKeyAction@@UAEIXZ
.globl ?GetDebugText@DanceKeyAction@@UAEPADXZ
.globl ??_GDanceKeyAction@@UAEPAXI@Z

start_0x0050d1c0_0x0050e7e0:
// Snippet: asm, [0x0050d1c0, 0x0050e773)
_jmp_addr_0x0050d1c0:    sub                esp, 0x18                                     // 0x0050d1c0    83ec18
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0050d1c3    d9442424
                         push               esi                                           // 0x0050d1c7    56
                         mov.s              esi, ecx                                      // 0x0050d1c8    8bf1
                         call               _jmp_addr_0x007a1400                          // 0x0050d1ca    e831422900
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0050d1cf    8b542424
                         shl                edx, 8                                        // 0x0050d1d3    c1e208
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0050d1d6    89442404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0050d1da    c744240800000000
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x0050d1e2    df6c2404
                         lea                ecx, dword ptr [edx + eax * 0x1]              // 0x0050d1e6    8d0c02
                         shl                ecx, 3                                        // 0x0050d1e9    c1e103
                         {disp8} fsubr      dword ptr [esp + 0x28]                        // 0x0050d1ec    d86c2428
                         inc                eax                                           // 0x0050d1f0    40
                         cmp                eax, 0x00000100                               // 0x0050d1f1    3d00010000
                         {disp32} fild      dword ptr [ecx + 0x00cadb70]                  // 0x0050d1f6    db8170dbca00
                         {disp32} fild      dword ptr [ecx + 0x00cadb74]                  // 0x0050d1fc    db8174dbca00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0050d202    d95c2410
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x0050d20a   // 0x0050d206    7202
                         xor.s              eax, eax                                      // 0x0050d208    33c0
_jmp_addr_0x0050d20a:    add.s              eax, edx                                      // 0x0050d20a    03c2
                         shl                eax, 3                                        // 0x0050d20c    c1e003
                         {disp32} fild      dword ptr [eax + 0x00cadb70]                  // 0x0050d20f    db8070dbca00
                         {disp32} fild      dword ptr [eax + 0x00cadb74]                  // 0x0050d215    db8074dbca00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0050d21b    d95c2418
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0050d21f    d90590a38a00
                         fsub               st, st(3)                                     // 0x0050d225    d8e3
                         {disp8} fst        dword ptr [esp + 0x28]                        // 0x0050d227    d9542428
                         fmul               st, st(2)                                     // 0x0050d22b    d8ca
                         fxch               st(1)                                         // 0x0050d22d    d9c9
                         fmul               st, st(3)                                     // 0x0050d22f    d8cb
                         faddp              st(1), st                                     // 0x0050d231    dec1
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0050d233    d95c2404
                         fstp               st(0)                                         // 0x0050d237    ddd8
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0050d239    d9442428
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0050d23d    d84c2410
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0050d241    d9442418
                         fmul               st, st(2)                                     // 0x0050d245    d8ca
                         faddp              st(1), st                                     // 0x0050d247    dec1
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0050d249    d95c2408
                         fstp               st(0)                                         // 0x0050d24d    ddd8
                         {disp8} fld        dword ptr [esi + 0x58]                        // 0x0050d24f    d94658
                         pop                esi                                           // 0x0050d252    5e
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x0050d253    d9542424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0050d257    d81d98a38a00
                         fnstsw             ax                                            // 0x0050d25d    dfe0
                         test               ah, 0x40                                      // 0x0050d25f    f6c440
                         {disp8} je         _jmp_addr_0x0050d27b                          // 0x0050d262    7417
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0050d264    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x00]                   // 0x0050d268    8b4c2400
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0050d26c    8b542404
                         mov                dword ptr [eax], ecx                          // 0x0050d270    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0050d272    895004
                         add                esp, 0x18                                     // 0x0050d275    83c418
                         ret                0x000c                                        // 0x0050d278    c20c00
_jmp_addr_0x0050d27b:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0050d27b    8b442424
                         push               eax                                           // 0x0050d27f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0050d280    8d4c2404
                         push               ecx                                           // 0x0050d284    51
                         call               _jmp_addr_0x0050d320                          // 0x0050d285    e896000000
                         mov.s              ecx, eax                                      // 0x0050d28a    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0050d28c    8b442424
                         mov                dword ptr [eax], ecx                          // 0x0050d290    8908
                         add                esp, 0x08                                     // 0x0050d292    83c408
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0050d295    895004
                         add                esp, 0x18                                     // 0x0050d298    83c418
                         ret                0x000c                                        // 0x0050d29b    c20c00
                         nop                                                              // 0x0050d29e    90
                         nop                                                              // 0x0050d29f    90
_jmp_addr_0x0050d2a0:    sub                esp, 0x08                                     // 0x0050d2a0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0050d2a3    8b442410
                         push               esi                                           // 0x0050d2a7    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0050d2a8    8b742410
                         fild               dword ptr [esi]                               // 0x0050d2ac    db06
                         push               eax                                           // 0x0050d2ae    50
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0050d2af    8d4c2408
                         push               ecx                                           // 0x0050d2b3    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2b4bc]             // 0x0050d2b4    d80dbc448d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x0050d2ba    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0050d2c0    d95c240c
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0050d2c4    db4604
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2b4bc]             // 0x0050d2c7    d80dbc448d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x0050d2cd    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0050d2d3    d95c2410
                         call               _jmp_addr_0x0050d320                          // 0x0050d2d7    e844000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0050d2dc    8944240c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0050d2e0    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0050d2e4    d80d08c48a00
                         add                esp, 0x08                                     // 0x0050d2ea    83c408
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x0050d2ed    89542408
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x2b4bc]             // 0x0050d2f1    d835bc448d00
                         call               _jmp_addr_0x007a1400                          // 0x0050d2f7    e804412900
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0050d2fc    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x0050d300    d80d08c48a00
                         mov                dword ptr [esi], eax                          // 0x0050d306    8906
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x2b4bc]             // 0x0050d308    d835bc448d00
                         call               _jmp_addr_0x007a1400                          // 0x0050d30e    e8ed402900
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0050d313    894604
                         pop                esi                                           // 0x0050d316    5e
                         add                esp, 0x08                                     // 0x0050d317    83c408
                         ret                                                              // 0x0050d31a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0050d31b    e85945efff
_jmp_addr_0x0050d320:    sub                esp, 0x0c                                     // 0x0050d320    83ec0c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0050d323    8b442410
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0050d327    d94004
                         mov                ecx, dword ptr [eax]                          // 0x0050d32a    8b08
                         fld                st(0)                                         // 0x0050d32c    d9c0
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0050d32e    894c2410
                         fmul               st, st(1)                                     // 0x0050d332    d8c9
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0050d334    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0050d338    d84c2410
                         faddp              st(1), st                                     // 0x0050d33c    dec1
                         fsqrt                                                            // 0x0050d33e    d9fa
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x0050d340    d95c2400
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0050d344    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0050d348    d81d98a38a00
                         fnstsw             ax                                            // 0x0050d34e    dfe0
                         test               ah, 0x40                                      // 0x0050d350    f6c440
                         {disp8} je         _jmp_addr_0x0050d372                          // 0x0050d353    741d
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0050d355    d81d98a38a00
                         fnstsw             ax                                            // 0x0050d35b    dfe0
                         test               ah, 0x41                                      // 0x0050d35d    f6c441
                         {disp8} jne        _jmp_addr_0x0050d36a                          // 0x0050d360    7508
                         {disp32} fld       dword ptr [rdata_bytes + 0x1e8d8]             // 0x0050d362    d905d8788c00
                         {disp8} jmp        _jmp_addr_0x0050d3e3                          // 0x0050d368    eb79
_jmp_addr_0x0050d36a:    {disp32} fld       dword ptr [rdata_bytes + 0x2b5e0]             // 0x0050d36a    d905e0458d00
                         {disp8} jmp        _jmp_addr_0x0050d3e3                          // 0x0050d370    eb71
_jmp_addr_0x0050d372:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0050d372    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0050d376    d81d98a38a00
                         fnstsw             ax                                            // 0x0050d37c    dfe0
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0050d37e    d81598a38a00
                         test               ah, 0x41                                      // 0x0050d384    f6c441
                         fnstsw             ax                                            // 0x0050d387    dfe0
                         {disp8} jne        _jmp_addr_0x0050d3bb                          // 0x0050d389    7530
                         test               ah, 0x40                                      // 0x0050d38b    f6c440
                         {disp8} je         _jmp_addr_0x0050d39a                          // 0x0050d38e    740a
                         fstp               st(0)                                         // 0x0050d390    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0050d392    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x0050d3e3                          // 0x0050d398    eb49
_jmp_addr_0x0050d39a:    {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0050d39a    d81598a38a00
                         {disp8} fdiv       dword ptr [esp + 0x10]                        // 0x0050d3a0    d8742410
                         fnstsw             ax                                            // 0x0050d3a4    dfe0
                         fld1                                                             // 0x0050d3a6    d9e8
                         test               ah, 0x41                                      // 0x0050d3a8    f6c441
                         {disp8} jne        _jmp_addr_0x0050d3b1                          // 0x0050d3ab    7504
                         fpatan                                                           // 0x0050d3ad    d9f3
                         {disp8} jmp        _jmp_addr_0x0050d3e3                          // 0x0050d3af    eb32
_jmp_addr_0x0050d3b1:    fpatan                                                           // 0x0050d3b1    d9f3
                         {disp32} fadd      qword ptr [rdata_bytes + 0x2b5d8]             // 0x0050d3b3    dc05d8458d00
                         {disp8} jmp        _jmp_addr_0x0050d3e3                          // 0x0050d3b9    eb28
_jmp_addr_0x0050d3bb:    test               ah, 0x40                                      // 0x0050d3bb    f6c440
                         {disp8} je         _jmp_addr_0x0050d3ca                          // 0x0050d3be    740a
                         fstp               st(0)                                         // 0x0050d3c0    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1a6a0]             // 0x0050d3c2    d905a0368c00
                         {disp8} jmp        _jmp_addr_0x0050d3e3                          // 0x0050d3c8    eb19
_jmp_addr_0x0050d3ca:    {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0050d3ca    d81598a38a00
                         {disp8} fdiv       dword ptr [esp + 0x10]                        // 0x0050d3d0    d8742410
                         fld1                                                             // 0x0050d3d4    d9e8
                         fpatan                                                           // 0x0050d3d6    d9f3
                         {disp32} fadd      qword ptr [rdata_bytes + 0x2b5d0]             // 0x0050d3d8    dc05d0458d00
                         fnstsw             ax                                            // 0x0050d3de    dfe0
                         test               ah, 0x41                                      // 0x0050d3e0    f6c441
_jmp_addr_0x0050d3e3:    {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0050d3e3    d8442414
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x0050d3e7    d9542410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0050d3eb    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0050d3f1    d9442410
                         fnstsw             ax                                            // 0x0050d3f5    dfe0
                         test               ah, 0x01                                      // 0x0050d3f7    f6c401
                         {disp8} je         _jmp_addr_0x0050d404                          // 0x0050d3fa    7408
                         {disp32} fadd      dword ptr [__real@40c90fdb]                   // 0x0050d3fc    d80510b28a00
                         {disp8} jmp        _jmp_addr_0x0050d41b                          // 0x0050d402    eb17
_jmp_addr_0x0050d404:    {disp32} fcomp     dword ptr [__real@40c90fdb]                   // 0x0050d404    d81d10b28a00
                         fnstsw             ax                                            // 0x0050d40a    dfe0
                         test               ah, 0x41                                      // 0x0050d40c    f6c441
                         {disp8} jne        _jmp_addr_0x0050d41f                          // 0x0050d40f    750e
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0050d411    d9442410
                         {disp32} fsub      dword ptr [__real@40c90fdb]                   // 0x0050d415    d82510b28a00
_jmp_addr_0x0050d41b:    {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0050d41b    d95c2410
_jmp_addr_0x0050d41f:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0050d41f    8b542410
                         push               edx                                           // 0x0050d423    52
                         call               ?ConvertAngle3DToGame@GUtils@@SAIM@Z          // 0x0050d424    e807082400
                         {disp32} fild      dword ptr [eax * 0x4 + _cos_lookup_table]     // 0x0050d429    db0485141ec300
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x0050d430    d84c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x0050d434    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0050d43a    d95c2408
                         {disp32} fild      dword ptr [eax * 0x4 + _sin_lookup_table]     // 0x0050d43e    db04851416c300
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0050d445    8b442408
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x0050d449    d84c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x0050d44d    d80d1cc48a00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0050d453    d95c240c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0050d457    8b54240c
                         add                esp, 0x10                                     // 0x0050d45b    83c410
                         ret                                                              // 0x0050d45e    c3
                         nop                                                              // 0x0050d45f    90
_jmp_addr_0x0050d460:    sub                esp, 0x0c                                     // 0x0050d460    83ec0c
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0050d463    8d442400
                         push               eax                                           // 0x0050d467    50
                         call               _jmp_addr_0x0050d510                          // 0x0050d468    e8a3000000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0050d46d    8b542410
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0050d471    8d4c2400
                         push               ecx                                           // 0x0050d475    51
                         push               edx                                           // 0x0050d476    52
                         call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                               // 0x0050d477    e8c4fd2300
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0050d47c    89442418
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x0050d480    db442418
                         add                esp, 0x14                                     // 0x0050d484    83c414
                         ret                0x0004                                        // 0x0050d487    c20400
                         call               dword ptr [__imp__CoFileTimeToDosDateTime@4]  // 0x0050d48a    ff1578998a00
_jmp_addr_0x0050d490:    {disp8} mov        eax, dword ptr [ecx + 0x1c]                   // 0x0050d490    8b411c
                         xor.s              edx, edx                                      // 0x0050d493    33d2
                         test               eax, eax                                      // 0x0050d495    85c0
                         {disp8} je         _jmp_addr_0x0050d4a9                          // 0x0050d497    7410
_jmp_addr_0x0050d499:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0050d499    8b4804
                         {disp32} mov       byte ptr [ecx + 0x000000dc], dl               // 0x0050d49c    8891dc000000
                         mov                eax, dword ptr [eax]                          // 0x0050d4a2    8b00
                         inc                edx                                           // 0x0050d4a4    42
                         test               eax, eax                                      // 0x0050d4a5    85c0
                         {disp8} jne        _jmp_addr_0x0050d499                          // 0x0050d4a7    75f0
_jmp_addr_0x0050d4a9:    ret                                                              // 0x0050d4a9    c3
                         call               dword ptr [__imp__RegSetValueExA@4]           // 0x0050d4aa    ff1514908a00
_jmp_addr_0x0050d4b0:    {disp32} mov       eax, dword ptr [ecx + 0x00000174]             // 0x0050d4b0    8b8174010000
                         push               ebx                                           // 0x0050d4b6    53
                         xor.s              ebx, ebx                                      // 0x0050d4b7    33db
                         test               eax, eax                                      // 0x0050d4b9    85c0
                         {disp8} jbe        _jmp_addr_0x0050d505                          // 0x0050d4bb    7648
                         push               esi                                           // 0x0050d4bd    56
                         push               edi                                           // 0x0050d4be    57
                         {disp32} lea       edi, dword ptr [ecx + 0x000000f4]             // 0x0050d4bf    8db9f4000000
_jmp_addr_0x0050d4c5:    {disp8} mov        eax, dword ptr [ecx + 0x18]                   // 0x0050d4c5    8b4118
                         {disp8} mov        edx, dword ptr [eax + 0x7c]                   // 0x0050d4c8    8b507c
                         mov                esi, dword ptr [edi]                          // 0x0050d4cb    8b37
                         add                eax, 0x78                                     // 0x0050d4cd    83c078
                         test               edx, edx                                      // 0x0050d4d0    85d2
                         {disp8} jbe        _jmp_addr_0x0050d4eb                          // 0x0050d4d2    7617
                         mov                eax, dword ptr [eax]                          // 0x0050d4d4    8b00
                         test               eax, eax                                      // 0x0050d4d6    85c0
                         {disp8} je         _jmp_addr_0x0050d4eb                          // 0x0050d4d8    7411
                         cmp.s              esi, edx                                      // 0x0050d4da    3bf2
                         {disp8} jge        _jmp_addr_0x0050d4eb                          // 0x0050d4dc    7d0d
                         test               esi, esi                                      // 0x0050d4de    85f6
                         {disp8} jle        _jmp_addr_0x0050d4e7                          // 0x0050d4e0    7e05
_jmp_addr_0x0050d4e2:    dec                esi                                           // 0x0050d4e2    4e
                         mov                eax, dword ptr [eax]                          // 0x0050d4e3    8b00
                         {disp8} jne        _jmp_addr_0x0050d4e2                          // 0x0050d4e5    75fb
_jmp_addr_0x0050d4e7:    test               eax, eax                                      // 0x0050d4e7    85c0
                         {disp8} jne        _jmp_addr_0x0050d4ef                          // 0x0050d4e9    7504
_jmp_addr_0x0050d4eb:    xor.s              eax, eax                                      // 0x0050d4eb    33c0
                         {disp8} jmp        _jmp_addr_0x0050d4f2                          // 0x0050d4ed    eb03
_jmp_addr_0x0050d4ef:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0050d4ef    8b4004
_jmp_addr_0x0050d4f2:    {disp8} mov        byte ptr [eax + 0x74], bl                     // 0x0050d4f2    885874
                         {disp32} mov       eax, dword ptr [ecx + 0x00000174]             // 0x0050d4f5    8b8174010000
                         inc                ebx                                           // 0x0050d4fb    43
                         add                edi, 0x04                                     // 0x0050d4fc    83c704
                         cmp.s              ebx, eax                                      // 0x0050d4ff    3bd8
                         .byte              0x72, 0xc2// {disp8} jb _jmp_addr_0x0050d4c5  // 0x0050d501    72c2
                         pop                edi                                           // 0x0050d503    5f
                         pop                esi                                           // 0x0050d504    5e
_jmp_addr_0x0050d505:    pop                ebx                                           // 0x0050d505    5b
                         ret                                                              // 0x0050d506    c3
                         nop                                                              // 0x0050d507    90
                         nop                                                              // 0x0050d508    90
                         nop                                                              // 0x0050d509    90
                         nop                                                              // 0x0050d50a    90
                         nop                                                              // 0x0050d50b    90
                         nop                                                              // 0x0050d50c    90
                         nop                                                              // 0x0050d50d    90
                         nop                                                              // 0x0050d50e    90
                         nop                                                              // 0x0050d50f    90
_jmp_addr_0x0050d510:    sub                esp, 0x0c                                     // 0x0050d510    83ec0c
                         push               esi                                           // 0x0050d513    56
                         mov.s              esi, ecx                                      // 0x0050d514    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x0050d516    8b4e18
                         mov                eax, dword ptr [ecx]                          // 0x0050d519    8b01
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x0050d51b    8d542404
                         push               edx                                           // 0x0050d51f    52
                         call               dword ptr [eax + 0x100]                       // 0x0050d520    ff9000010000
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x0050d526    8b4648
                         push               eax                                           // 0x0050d529    50
                         call               _jmp_addr_0x0074e1d0                          // 0x0050d52a    e8a10c2400
                         add                dword ptr [esp + 0x08], eax                   // 0x0050d52f    01442408
                         {disp8} mov        ecx, dword ptr [esi + 0x4c]                   // 0x0050d533    8b4e4c
                         push               ecx                                           // 0x0050d536    51
                         call               _jmp_addr_0x0074e200                          // 0x0050d537    e8c40c2400
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0050d53c    8b4c2410
                         {disp8} mov        esi, dword ptr [esi + 0x70]                   // 0x0050d540    8b7670
                         add.s              ecx, eax                                      // 0x0050d543    03c8
                         add                esp, 0x08                                     // 0x0050d545    83c408
                         test               esi, esi                                      // 0x0050d548    85f6
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x0050d54a    894c2408
                         {disp8} je         _jmp_addr_0x0050d574                          // 0x0050d54e    7424
_jmp_addr_0x0050d550:    {disp8} mov        edx, dword ptr [esi + 0x48]                   // 0x0050d550    8b5648
                         push               edx                                           // 0x0050d553    52
                         call               _jmp_addr_0x0074e1d0                          // 0x0050d554    e8770c2400
                         add                dword ptr [esp + 0x08], eax                   // 0x0050d559    01442408
                         {disp8} mov        eax, dword ptr [esi + 0x4c]                   // 0x0050d55d    8b464c
                         push               eax                                           // 0x0050d560    50
                         call               _jmp_addr_0x0074e200                          // 0x0050d561    e89a0c2400
                         add                dword ptr [esp + 0x10], eax                   // 0x0050d566    01442410
                         {disp8} mov        esi, dword ptr [esi + 0x70]                   // 0x0050d56a    8b7670
                         add                esp, 0x08                                     // 0x0050d56d    83c408
                         test               esi, esi                                      // 0x0050d570    85f6
                         {disp8} jne        _jmp_addr_0x0050d550                          // 0x0050d572    75dc
_jmp_addr_0x0050d574:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0050d574    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0050d578    8b542404
                         mov.s              ecx, eax                                      // 0x0050d57c    8bc8
                         mov                dword ptr [ecx], edx                          // 0x0050d57e    8911
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0050d580    8b542408
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0050d584    895104
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0050d587    8b54240c
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0050d58b    895108
                         pop                esi                                           // 0x0050d58e    5e
                         add                esp, 0x0c                                     // 0x0050d58f    83c40c
                         ret                0x0004                                        // 0x0050d592    c20400
                         nop                                                              // 0x0050d595    90
                         nop                                                              // 0x0050d596    90
                         nop                                                              // 0x0050d597    90
                         nop                                                              // 0x0050d598    90
                         nop                                                              // 0x0050d599    90
                         nop                                                              // 0x0050d59a    90
                         nop                                                              // 0x0050d59b    90
                         nop                                                              // 0x0050d59c    90
                         nop                                                              // 0x0050d59d    90
                         nop                                                              // 0x0050d59e    90
                         nop                                                              // 0x0050d59f    90
_jmp_addr_0x0050d5a0:    {disp8} mov        eax, dword ptr [ecx + 0x18]                   // 0x0050d5a0    8b4118
                         {disp8} fld        dword ptr [eax + 0x28]                        // 0x0050d5a3    d94028
                         {disp32} jmp       _jmp_addr_0x007a1400                          // 0x0050d5a6    e9553e2900
                         nop                                                              // 0x0050d5ab    90
                         nop                                                              // 0x0050d5ac    90
                         nop                                                              // 0x0050d5ad    90
                         nop                                                              // 0x0050d5ae    90
                         nop                                                              // 0x0050d5af    90
                         xor.s              eax, eax                                      // 0x0050d5b0    33c0
                         ret                0x0008                                        // 0x0050d5b2    c20800
                         nop                                                              // 0x0050d5b5    90
                         nop                                                              // 0x0050d5b6    90
                         nop                                                              // 0x0050d5b7    90
                         nop                                                              // 0x0050d5b8    90
                         nop                                                              // 0x0050d5b9    90
                         nop                                                              // 0x0050d5ba    90
                         nop                                                              // 0x0050d5bb    90
                         nop                                                              // 0x0050d5bc    90
                         nop                                                              // 0x0050d5bd    90
                         nop                                                              // 0x0050d5be    90
                         nop                                                              // 0x0050d5bf    90
                         xor.s              eax, eax                                      // 0x0050d5c0    33c0
                         ret                0x0008                                        // 0x0050d5c2    c20800
                         nop                                                              // 0x0050d5c5    90
                         nop                                                              // 0x0050d5c6    90
                         nop                                                              // 0x0050d5c7    90
                         nop                                                              // 0x0050d5c8    90
                         nop                                                              // 0x0050d5c9    90
                         nop                                                              // 0x0050d5ca    90
                         nop                                                              // 0x0050d5cb    90
                         nop                                                              // 0x0050d5cc    90
                         nop                                                              // 0x0050d5cd    90
                         nop                                                              // 0x0050d5ce    90
                         nop                                                              // 0x0050d5cf    90
                         {disp8} mov        edx, dword ptr [ecx + 0x40]                   // 0x0050d5d0    8b5140
                         xor.s              eax, eax                                      // 0x0050d5d3    33c0
                         test               edx, edx                                      // 0x0050d5d5    85d2
                         sete               al                                            // 0x0050d5d7    0f94c0
                         ret                0x0008                                        // 0x0050d5da    c20800
                         nop                                                              // 0x0050d5dd    90
                         nop                                                              // 0x0050d5de    90
                         nop                                                              // 0x0050d5df    90
                         mov                eax, 0x00000001                               // 0x0050d5e0    b801000000
                         ret                0x0008                                        // 0x0050d5e5    c20800
                         nop                                                              // 0x0050d5e8    90
                         nop                                                              // 0x0050d5e9    90
                         nop                                                              // 0x0050d5ea    90
                         nop                                                              // 0x0050d5eb    90
                         nop                                                              // 0x0050d5ec    90
                         nop                                                              // 0x0050d5ed    90
                         nop                                                              // 0x0050d5ee    90
                         nop                                                              // 0x0050d5ef    90
_jmp_addr_0x0050d5f0:    {disp8} mov        eax, dword ptr [ecx + 0x18]                   // 0x0050d5f0    8b4118
                         add                eax, 0x14                                     // 0x0050d5f3    83c014
                         ret                                                              // 0x0050d5f6    c3
                         nop                                                              // 0x0050d5f7    90
                         nop                                                              // 0x0050d5f8    90
                         nop                                                              // 0x0050d5f9    90
                         nop                                                              // 0x0050d5fa    90
                         nop                                                              // 0x0050d5fb    90
                         nop                                                              // 0x0050d5fc    90
                         nop                                                              // 0x0050d5fd    90
                         nop                                                              // 0x0050d5fe    90
                         nop                                                              // 0x0050d5ff    90
_jmp_addr_0x0050d600:    {disp8} mov        eax, dword ptr [ecx + 0x18]                   // 0x0050d600    8b4118
                         {disp8} mov        ecx, dword ptr [eax + 0x7c]                   // 0x0050d603    8b487c
                         add                eax, 0x78                                     // 0x0050d606    83c078
                         test               ecx, ecx                                      // 0x0050d609    85c9
                         {disp8} jbe        _jmp_addr_0x0050d628                          // 0x0050d60b    761b
                         mov                eax, dword ptr [eax]                          // 0x0050d60d    8b00
                         test               eax, eax                                      // 0x0050d60f    85c0
                         {disp8} je         _jmp_addr_0x0050d628                          // 0x0050d611    7415
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0050d613    8b542404
                         cmp.s              edx, ecx                                      // 0x0050d617    3bd1
                         {disp8} jge        _jmp_addr_0x0050d628                          // 0x0050d619    7d0d
                         test               edx, edx                                      // 0x0050d61b    85d2
                         {disp8} jle        _jmp_addr_0x0050d624                          // 0x0050d61d    7e05
_jmp_addr_0x0050d61f:    dec                edx                                           // 0x0050d61f    4a
                         mov                eax, dword ptr [eax]                          // 0x0050d620    8b00
                         {disp8} jne        _jmp_addr_0x0050d61f                          // 0x0050d622    75fb
_jmp_addr_0x0050d624:    test               eax, eax                                      // 0x0050d624    85c0
                         {disp8} jne        _jmp_addr_0x0050d62d                          // 0x0050d626    7505
_jmp_addr_0x0050d628:    xor.s              eax, eax                                      // 0x0050d628    33c0
                         ret                0x0004                                        // 0x0050d62a    c20400
_jmp_addr_0x0050d62d:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0050d62d    8b4004
                         ret                0x0004                                        // 0x0050d630    c20400
                         nop                                                              // 0x0050d633    90
                         nop                                                              // 0x0050d634    90
                         nop                                                              // 0x0050d635    90
                         nop                                                              // 0x0050d636    90
                         nop                                                              // 0x0050d637    90
                         nop                                                              // 0x0050d638    90
                         nop                                                              // 0x0050d639    90
                         nop                                                              // 0x0050d63a    90
                         nop                                                              // 0x0050d63b    90
                         nop                                                              // 0x0050d63c    90
                         nop                                                              // 0x0050d63d    90
                         nop                                                              // 0x0050d63e    90
                         nop                                                              // 0x0050d63f    90
?Save@DanceGroup@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x0050d640    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0050d641    8b742408
                         push               edi                                           // 0x0050d645    57
                         mov.s              edi, ecx                                      // 0x0050d646    8bf9
                         push               esi                                           // 0x0050d648    56
                         call               ?Save@GameThing@@QAEIAAVGGameOSFile@@@Z       // 0x0050d649    e892250600
                         test               eax, eax                                      // 0x0050d64e    85c0
                         {disp32} je        _jmp_addr_0x0050d9ab                          // 0x0050d650    0f8455030000
                         {disp8} mov        eax, dword ptr [edi + 0x14]                   // 0x0050d656    8b4714
                         push               ebx                                           // 0x0050d659    53
                         push               ebp                                           // 0x0050d65a    55
                         push               eax                                           // 0x0050d65b    50
                         mov.s              ecx, esi                                      // 0x0050d65c    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0050d65e    e8ad470500
                         {disp8} mov        ecx, dword ptr [edi + 0x18]                   // 0x0050d663    8b4f18
                         push               ecx                                           // 0x0050d666    51
                         mov.s              ecx, esi                                      // 0x0050d667    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0050d669    e8a2470500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050d66e    a190c9be00
                         test               eax, eax                                      // 0x0050d673    85c0
                         {disp32} je        _jmp_addr_0x0050d8dc                          // 0x0050d675    0f8461020000
                         {disp8} mov        edx, dword ptr [edi + 0x20]                   // 0x0050d67b    8b5720
                         {disp8} lea        eax, dword ptr [edi + 0x20]                   // 0x0050d67e    8d4720
                         push               eax                                           // 0x0050d681    50
                         mov.s              ecx, esi                                      // 0x0050d682    8bce
                         xor.s              ebp, ebp                                      // 0x0050d684    33ed
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0050d686    89542418
                         call               ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0050d68a    e871a0efff
                         {disp8} mov        ebx, dword ptr [edi + 0x1c]                   // 0x0050d68f    8b5f1c
                         test               ebx, ebx                                      // 0x0050d692    85db
                         {disp8} je         _jmp_addr_0x0050d6bd                          // 0x0050d694    7427
_jmp_addr_0x0050d696:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0050d696    8b442414
                         inc                ebp                                           // 0x0050d69a    45
                         cmp.s              ebp, eax                                      // 0x0050d69b    3be8
                         {disp8} jg         _jmp_addr_0x0050d6d0                          // 0x0050d69d    7f31
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050d69f    a190c9be00
                         test               eax, eax                                      // 0x0050d6a4    85c0
                         {disp32} je        _jmp_addr_0x0050d8dc                          // 0x0050d6a6    0f8430020000
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x0050d6ac    8b4304
                         push               eax                                           // 0x0050d6af    50
                         mov.s              ecx, esi                                      // 0x0050d6b0    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0050d6b2    e859470500
                         mov                ebx, dword ptr [ebx]                          // 0x0050d6b7    8b1b
                         test               ebx, ebx                                      // 0x0050d6b9    85db
                         {disp8} jne        _jmp_addr_0x0050d696                          // 0x0050d6bb    75d9
_jmp_addr_0x0050d6bd:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050d6bd    a190c9be00
                         test               eax, eax                                      // 0x0050d6c2    85c0
                         {disp32} je        _jmp_addr_0x0050d8dc                          // 0x0050d6c4    0f8412020000
                         cmp                ebp, dword ptr [esp + 0x14]                   // 0x0050d6ca    3b6c2414
                         {disp8} je         _jmp_addr_0x0050d6df                          // 0x0050d6ce    740f
_jmp_addr_0x0050d6d0:    {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0050d6d0    c70590c9be0000000000
                         {disp32} jmp       _jmp_addr_0x0050d8dc                          // 0x0050d6da    e9fd010000
_jmp_addr_0x0050d6df:    push               0x0                                           // 0x0050d6df    6a00
                         push               0x4                                           // 0x0050d6e1    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x24]                   // 0x0050d6e3    8d5f24
                         push               ebx                                           // 0x0050d6e6    53
                         mov.s              ecx, esi                                      // 0x0050d6e7    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050d6e9    e832f22a00
                         cmp                eax, 0x03                                     // 0x0050d6ee    83f803
                         {disp8} jne        _jmp_addr_0x0050d6fd                          // 0x0050d6f1    750a
                         xor.s              ebp, ebp                                      // 0x0050d6f3    33ed
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0050d6f5    892d90c9be00
                         {disp8} jmp        _jmp_addr_0x0050d6ff                          // 0x0050d6fb    eb02
_jmp_addr_0x0050d6fd:    xor.s              ebp, ebp                                      // 0x0050d6fd    33ed
_jmp_addr_0x0050d6ff:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0050d6ff    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0050d705    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0050d707    8a0b
                         add                ecx, 0x4                                      // 0x0050d709    83c104
                         add.s              edx, ecx                                      // 0x0050d70c    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0050d70e    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0050d714    392d90c9be00
                         {disp32} je        _jmp_addr_0x0050d8dc                          // 0x0050d71a    0f84bc010000
                         push               ebp                                           // 0x0050d720    55
                         push               0x4                                           // 0x0050d721    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x3c]                   // 0x0050d723    8d5f3c
                         push               ebx                                           // 0x0050d726    53
                         mov.s              ecx, esi                                      // 0x0050d727    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050d729    e8f2f12a00
                         cmp                eax, 0x03                                     // 0x0050d72e    83f803
                         {disp8} jne        _jmp_addr_0x0050d739                          // 0x0050d731    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0050d733    892d90c9be00
_jmp_addr_0x0050d739:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050d739    8b8e14020000
                         xor.s              edx, edx                                      // 0x0050d73f    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0050d741    8a13
                         add                edx, 0x04                                     // 0x0050d743    83c204
                         add.s              ecx, edx                                      // 0x0050d746    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050d748    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0050d74e    392d90c9be00
                         {disp32} je        _jmp_addr_0x0050d8dc                          // 0x0050d754    0f8482010000
                         push               ebp                                           // 0x0050d75a    55
                         push               0x4                                           // 0x0050d75b    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x40]                   // 0x0050d75d    8d5f40
                         push               ebx                                           // 0x0050d760    53
                         mov.s              ecx, esi                                      // 0x0050d761    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050d763    e8b8f12a00
                         cmp                eax, 0x03                                     // 0x0050d768    83f803
                         {disp8} jne        _jmp_addr_0x0050d773                          // 0x0050d76b    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0050d76d    892d90c9be00
_jmp_addr_0x0050d773:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050d773    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050d779    33c0
                         mov                al, byte ptr [ebx]                            // 0x0050d77b    8a03
                         add                eax, 0x04                                     // 0x0050d77d    83c004
                         add.s              ecx, eax                                      // 0x0050d780    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050d782    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0050d788    392d90c9be00
                         {disp32} je        _jmp_addr_0x0050d8dc                          // 0x0050d78e    0f8448010000
                         push               ebp                                           // 0x0050d794    55
                         push               0x4                                           // 0x0050d795    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x44]                   // 0x0050d797    8d5f44
                         push               ebx                                           // 0x0050d79a    53
                         mov.s              ecx, esi                                      // 0x0050d79b    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050d79d    e87ef12a00
                         cmp                eax, 0x03                                     // 0x0050d7a2    83f803
                         {disp8} jne        _jmp_addr_0x0050d7ad                          // 0x0050d7a5    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0050d7a7    892d90c9be00
_jmp_addr_0x0050d7ad:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0050d7ad    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0050d7b3    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0050d7b5    8a0b
                         add                ecx, 0x4                                      // 0x0050d7b7    83c104
                         add.s              edx, ecx                                      // 0x0050d7ba    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0050d7bc    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0050d7c2    392d90c9be00
                         {disp32} je        _jmp_addr_0x0050d8dc                          // 0x0050d7c8    0f840e010000
                         push               ebp                                           // 0x0050d7ce    55
                         push               0x8                                           // 0x0050d7cf    6a08
                         {disp8} lea        ebx, dword ptr [edi + 0x48]                   // 0x0050d7d1    8d5f48
                         push               ebx                                           // 0x0050d7d4    53
                         mov.s              ecx, esi                                      // 0x0050d7d5    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050d7d7    e844f12a00
                         cmp                eax, 0x03                                     // 0x0050d7dc    83f803
                         {disp8} jne        _jmp_addr_0x0050d7e7                          // 0x0050d7df    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0050d7e1    892d90c9be00
_jmp_addr_0x0050d7e7:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050d7e7    8b8e14020000
                         xor.s              edx, edx                                      // 0x0050d7ed    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0050d7ef    8a13
                         add                edx, 0x08                                     // 0x0050d7f1    83c208
                         add.s              ecx, edx                                      // 0x0050d7f4    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050d7f6    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0050d7fc    392d90c9be00
                         {disp32} je        _jmp_addr_0x0050d8dc                          // 0x0050d802    0f84d4000000
                         push               ebp                                           // 0x0050d808    55
                         push               0x4                                           // 0x0050d809    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x50]                   // 0x0050d80b    8d5f50
                         push               ebx                                           // 0x0050d80e    53
                         mov.s              ecx, esi                                      // 0x0050d80f    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050d811    e80af12a00
                         cmp                eax, 0x03                                     // 0x0050d816    83f803
                         {disp8} jne        _jmp_addr_0x0050d821                          // 0x0050d819    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0050d81b    892d90c9be00
_jmp_addr_0x0050d821:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050d821    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050d827    33c0
                         mov                al, byte ptr [ebx]                            // 0x0050d829    8a03
                         add                eax, 0x04                                     // 0x0050d82b    83c004
                         add.s              ecx, eax                                      // 0x0050d82e    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050d830    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0050d836    392d90c9be00
                         {disp32} je        _jmp_addr_0x0050d8dc                          // 0x0050d83c    0f849a000000
                         push               ebp                                           // 0x0050d842    55
                         push               0x4                                           // 0x0050d843    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x54]                   // 0x0050d845    8d5f54
                         push               ebx                                           // 0x0050d848    53
                         mov.s              ecx, esi                                      // 0x0050d849    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050d84b    e8d0f02a00
                         cmp                eax, 0x03                                     // 0x0050d850    83f803
                         {disp8} jne        _jmp_addr_0x0050d85b                          // 0x0050d853    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0050d855    892d90c9be00
_jmp_addr_0x0050d85b:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0050d85b    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0050d861    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0050d863    8a0b
                         add                ecx, 0x4                                      // 0x0050d865    83c104
                         add.s              edx, ecx                                      // 0x0050d868    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0050d86a    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0050d870    392d90c9be00
                         {disp8} je         _jmp_addr_0x0050d8dc                          // 0x0050d876    7464
                         push               ebp                                           // 0x0050d878    55
                         push               0x4                                           // 0x0050d879    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x58]                   // 0x0050d87b    8d5f58
                         push               ebx                                           // 0x0050d87e    53
                         mov.s              ecx, esi                                      // 0x0050d87f    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050d881    e89af02a00
                         cmp                eax, 0x03                                     // 0x0050d886    83f803
                         {disp8} jne        _jmp_addr_0x0050d891                          // 0x0050d889    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0050d88b    892d90c9be00
_jmp_addr_0x0050d891:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050d891    8b8e14020000
                         xor.s              edx, edx                                      // 0x0050d897    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0050d899    8a13
                         add                edx, 0x04                                     // 0x0050d89b    83c204
                         add.s              ecx, edx                                      // 0x0050d89e    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050d8a0    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0050d8a6    392d90c9be00
                         {disp8} je         _jmp_addr_0x0050d8dc                          // 0x0050d8ac    742e
                         push               ebp                                           // 0x0050d8ae    55
                         push               0x10                                          // 0x0050d8af    6a10
                         {disp8} lea        ebx, dword ptr [edi + 0x5c]                   // 0x0050d8b1    8d5f5c
                         push               ebx                                           // 0x0050d8b4    53
                         mov.s              ecx, esi                                      // 0x0050d8b5    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050d8b7    e864f02a00
                         cmp                eax, 0x03                                     // 0x0050d8bc    83f803
                         {disp8} jne        _jmp_addr_0x0050d8c7                          // 0x0050d8bf    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0050d8c1    892d90c9be00
_jmp_addr_0x0050d8c7:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050d8c7    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050d8cd    33c0
                         mov                al, byte ptr [ebx]                            // 0x0050d8cf    8a03
                         add                eax, 0x10                                     // 0x0050d8d1    83c010
                         add.s              ecx, eax                                      // 0x0050d8d4    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050d8d6    898e14020000
_jmp_addr_0x0050d8dc:    {disp8} lea        ecx, dword ptr [edi + 0x6c]                   // 0x0050d8dc    8d4f6c
                         push               ecx                                           // 0x0050d8df    51
                         mov.s              ecx, esi                                      // 0x0050d8e0    8bce
                         call               _jmp_addr_0x0043dc00                          // 0x0050d8e2    e81903f3ff
                         {disp8} mov        edx, dword ptr [edi + 0x70]                   // 0x0050d8e7    8b5770
                         push               edx                                           // 0x0050d8ea    52
                         mov.s              ecx, esi                                      // 0x0050d8eb    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0050d8ed    e81e450500
                         {disp8} lea        eax, dword ptr [edi + 0x74]                   // 0x0050d8f2    8d4774
                         push               eax                                           // 0x0050d8f5    50
                         mov.s              ecx, esi                                      // 0x0050d8f6    8bce
                         call               _jmp_addr_0x0050dd50                          // 0x0050d8f8    e853040000
                         {disp8} lea        ecx, dword ptr [edi + 0x78]                   // 0x0050d8fd    8d4f78
                         push               ecx                                           // 0x0050d900    51
                         mov.s              ecx, esi                                      // 0x0050d901    8bce
                         call               ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0050d903    e8f89defff
                         {disp8} lea        edx, dword ptr [edi + 0x7c]                   // 0x0050d908    8d577c
                         push               edx                                           // 0x0050d90b    52
                         mov.s              ecx, esi                                      // 0x0050d90c    8bce
                         call               _jmp_addr_0x004640a0                          // 0x0050d90e    e88d67f5ff
                         {disp32} lea       eax, dword ptr [edi + 0x00000080]             // 0x0050d913    8d8780000000
                         push               eax                                           // 0x0050d919    50
                         mov.s              ecx, esi                                      // 0x0050d91a    8bce
                         call               _jmp_addr_0x004e94f0                          // 0x0050d91c    e8cfbbfdff
                         {disp32} lea       ecx, dword ptr [edi + 0x00000084]             // 0x0050d921    8d8f84000000
                         push               ecx                                           // 0x0050d927    51
                         mov.s              ecx, esi                                      // 0x0050d928    8bce
                         call               _jmp_addr_0x004640a0                          // 0x0050d92a    e87167f5ff
                         {disp32} lea       edx, dword ptr [edi + 0x00000088]             // 0x0050d92f    8d9788000000
                         push               edx                                           // 0x0050d935    52
                         mov.s              ecx, esi                                      // 0x0050d936    8bce
                         call               _jmp_addr_0x0050dda0                          // 0x0050d938    e863040000
                         {disp32} lea       eax, dword ptr [edi + 0x00000094]             // 0x0050d93d    8d8794000000
                         push               eax                                           // 0x0050d943    50
                         mov.s              ecx, esi                                      // 0x0050d944    8bce
                         call               _jmp_addr_0x0050dda0                          // 0x0050d946    e855040000
                         {disp32} lea       ecx, dword ptr [edi + 0x000000a0]             // 0x0050d94b    8d8fa0000000
                         push               ecx                                           // 0x0050d951    51
                         mov.s              ecx, esi                                      // 0x0050d952    8bce
                         call               _jmp_addr_0x0050ddf0                          // 0x0050d954    e897040000
                         {disp32} lea       edx, dword ptr [edi + 0x000000a4]             // 0x0050d959    8d97a4000000
                         push               edx                                           // 0x0050d95f    52
                         mov.s              ecx, esi                                      // 0x0050d960    8bce
                         call               ??$WriteIt@I@GameOSFile@@QAEXAAI@Z            // 0x0050d962    e8999defff
                         {disp32} lea       eax, dword ptr [edi + 0x000000a8]             // 0x0050d967    8d87a8000000
                         push               eax                                           // 0x0050d96d    50
                         mov.s              ecx, esi                                      // 0x0050d96e    8bce
                         call               _jmp_addr_0x0050de40                          // 0x0050d970    e8cb040000
                         {disp32} lea       ecx, dword ptr [edi + 0x000000e8]             // 0x0050d975    8d8fe8000000
                         push               ecx                                           // 0x0050d97b    51
                         mov.s              ecx, esi                                      // 0x0050d97c    8bce
                         call               _jmp_addr_0x0050de90                          // 0x0050d97e    e80d050000
                         {disp32} lea       edx, dword ptr [edi + 0x000000f4]             // 0x0050d983    8d97f4000000
                         push               edx                                           // 0x0050d989    52
                         mov.s              ecx, esi                                      // 0x0050d98a    8bce
                         call               _jmp_addr_0x0050dee0                          // 0x0050d98c    e84f050000
                         add                edi, 0x00000178                               // 0x0050d991    81c778010000
                         push               edi                                           // 0x0050d997    57
                         mov.s              ecx, esi                                      // 0x0050d998    8bce
                         call               _jmp_addr_0x0050dfd0                          // 0x0050d99a    e831060000
                         pop                ebp                                           // 0x0050d99f    5d
                         pop                ebx                                           // 0x0050d9a0    5b
                         pop                edi                                           // 0x0050d9a1    5f
                         mov                eax, 0x00000001                               // 0x0050d9a2    b801000000
                         pop                esi                                           // 0x0050d9a7    5e
                         ret                0x0004                                        // 0x0050d9a8    c20400
_jmp_addr_0x0050d9ab:    pop                edi                                           // 0x0050d9ab    5f
                         xor.s              eax, eax                                      // 0x0050d9ac    33c0
                         pop                esi                                           // 0x0050d9ae    5e
                         ret                0x0004                                        // 0x0050d9af    c20400
                         nop                                                              // 0x0050d9b2    90
                         nop                                                              // 0x0050d9b3    90
                         nop                                                              // 0x0050d9b4    90
                         nop                                                              // 0x0050d9b5    90
                         nop                                                              // 0x0050d9b6    90
                         nop                                                              // 0x0050d9b7    90
                         nop                                                              // 0x0050d9b8    90
                         nop                                                              // 0x0050d9b9    90
                         nop                                                              // 0x0050d9ba    90
                         nop                                                              // 0x0050d9bb    90
                         nop                                                              // 0x0050d9bc    90
                         nop                                                              // 0x0050d9bd    90
                         nop                                                              // 0x0050d9be    90
                         nop                                                              // 0x0050d9bf    90
?Load@DanceGroup@@UAEIAAVGameOSFile@@@Z:
                         push               ecx                                           // 0x0050d9c0    51
                         push               esi                                           // 0x0050d9c1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0050d9c2    8b74240c
                         push               edi                                           // 0x0050d9c6    57
                         mov.s              edi, ecx                                      // 0x0050d9c7    8bf9
                         push               esi                                           // 0x0050d9c9    56
                         call               ?Load@GameThing@@QAEIAAVGGameOSFile@@@Z       // 0x0050d9ca    e821230600
                         test               eax, eax                                      // 0x0050d9cf    85c0
                         {disp32} je        _jmp_addr_0x0050dd3e                          // 0x0050d9d1    0f8467030000
                         push               ebx                                           // 0x0050d9d7    53
                         push               ebp                                           // 0x0050d9d8    55
                         {disp8} lea        eax, dword ptr [edi + 0x14]                   // 0x0050d9d9    8d4714
                         push               eax                                           // 0x0050d9dc    50
                         mov.s              ecx, esi                                      // 0x0050d9dd    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0050d9df    e89c470500
                         {disp8} lea        ecx, dword ptr [edi + 0x18]                   // 0x0050d9e4    8d4f18
                         push               ecx                                           // 0x0050d9e7    51
                         mov.s              ecx, esi                                      // 0x0050d9e8    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0050d9ea    e891470500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0050d9ef    a194c9be00
                         xor.s              ebp, ebp                                      // 0x0050d9f4    33ed
                         cmp.s              eax, ebp                                      // 0x0050d9f6    3bc5
                         {disp8} je         _jmp_addr_0x0050da34                          // 0x0050d9f8    743a
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0050d9fa    8d542418
                         push               edx                                           // 0x0050d9fe    52
                         mov.s              ecx, esi                                      // 0x0050d9ff    8bce
                         call               ??$ReadIt@H@GameOSFile@@QAEXAAH@Z             // 0x0050da01    e84a9defff
                         cmp                dword ptr [esp + 0x18], ebp                   // 0x0050da06    396c2418
                         {disp8} jle        _jmp_addr_0x0050da34                          // 0x0050da0a    7e28
                         {disp8} lea        ebx, dword ptr [edi + 0x1c]                   // 0x0050da0c    8d5f1c
_jmp_addr_0x0050da0f:    {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0050da0f    8d442410
                         push               eax                                           // 0x0050da13    50
                         mov.s              ecx, esi                                      // 0x0050da14    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0050da16    e865470500
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0050da1b    8b4c2410
                         push               ecx                                           // 0x0050da1f    51
                         mov.s              ecx, ebx                                      // 0x0050da20    8bcb
                         call               _jmp_addr_0x0050e280                          // 0x0050da22    e859080000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0050da27    8b442418
                         dec                eax                                           // 0x0050da2b    48
                         cmp.s              eax, ebp                                      // 0x0050da2c    3bc5
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0050da2e    89442418
                         {disp8} jg         _jmp_addr_0x0050da0f                          // 0x0050da32    7fdb
_jmp_addr_0x0050da34:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050da34    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x24]                   // 0x0050da3a    8d5f24
                         {disp8} je         _jmp_addr_0x0050da6a                          // 0x0050da3d    742b
                         push               ebp                                           // 0x0050da3f    55
                         push               0x4                                           // 0x0050da40    6a04
                         push               ebx                                           // 0x0050da42    53
                         mov.s              ecx, esi                                      // 0x0050da43    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050da45    e896ee2a00
                         cmp                eax, 0x03                                     // 0x0050da4a    83f803
                         {disp8} jne        _jmp_addr_0x0050da55                          // 0x0050da4d    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050da4f    892d94c9be00
_jmp_addr_0x0050da55:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0050da55    8b8614020000
                         xor.s              edx, edx                                      // 0x0050da5b    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0050da5d    8a13
                         add                edx, 0x04                                     // 0x0050da5f    83c204
                         add.s              eax, edx                                      // 0x0050da62    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0050da64    898614020000
_jmp_addr_0x0050da6a:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050da6a    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x3c]                   // 0x0050da70    8d5f3c
                         {disp8} je         _jmp_addr_0x0050daa0                          // 0x0050da73    742b
                         push               ebp                                           // 0x0050da75    55
                         push               0x4                                           // 0x0050da76    6a04
                         push               ebx                                           // 0x0050da78    53
                         mov.s              ecx, esi                                      // 0x0050da79    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050da7b    e860ee2a00
                         cmp                eax, 0x03                                     // 0x0050da80    83f803
                         {disp8} jne        _jmp_addr_0x0050da8b                          // 0x0050da83    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050da85    892d94c9be00
_jmp_addr_0x0050da8b:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050da8b    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050da91    33c0
                         mov                al, byte ptr [ebx]                            // 0x0050da93    8a03
                         add                eax, 0x04                                     // 0x0050da95    83c004
                         add.s              ecx, eax                                      // 0x0050da98    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050da9a    898e14020000
_jmp_addr_0x0050daa0:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050daa0    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x40]                   // 0x0050daa6    8d5f40
                         {disp8} je         _jmp_addr_0x0050dad6                          // 0x0050daa9    742b
                         push               ebp                                           // 0x0050daab    55
                         push               0x4                                           // 0x0050daac    6a04
                         push               ebx                                           // 0x0050daae    53
                         mov.s              ecx, esi                                      // 0x0050daaf    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050dab1    e82aee2a00
                         cmp                eax, 0x03                                     // 0x0050dab6    83f803
                         {disp8} jne        _jmp_addr_0x0050dac1                          // 0x0050dab9    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050dabb    892d94c9be00
_jmp_addr_0x0050dac1:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0050dac1    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0050dac7    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0050dac9    8a0b
                         add                ecx, 0x4                                      // 0x0050dacb    83c104
                         add.s              eax, ecx                                      // 0x0050dace    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0050dad0    898614020000
_jmp_addr_0x0050dad6:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050dad6    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x44]                   // 0x0050dadc    8d5f44
                         {disp8} je         _jmp_addr_0x0050db0c                          // 0x0050dadf    742b
                         push               ebp                                           // 0x0050dae1    55
                         push               0x4                                           // 0x0050dae2    6a04
                         push               ebx                                           // 0x0050dae4    53
                         mov.s              ecx, esi                                      // 0x0050dae5    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050dae7    e8f4ed2a00
                         cmp                eax, 0x03                                     // 0x0050daec    83f803
                         {disp8} jne        _jmp_addr_0x0050daf7                          // 0x0050daef    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050daf1    892d94c9be00
_jmp_addr_0x0050daf7:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0050daf7    8b8614020000
                         xor.s              edx, edx                                      // 0x0050dafd    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0050daff    8a13
                         add                edx, 0x04                                     // 0x0050db01    83c204
                         add.s              eax, edx                                      // 0x0050db04    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0050db06    898614020000
_jmp_addr_0x0050db0c:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050db0c    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x48]                   // 0x0050db12    8d5f48
                         {disp8} je         _jmp_addr_0x0050db42                          // 0x0050db15    742b
                         push               ebp                                           // 0x0050db17    55
                         push               0x8                                           // 0x0050db18    6a08
                         push               ebx                                           // 0x0050db1a    53
                         mov.s              ecx, esi                                      // 0x0050db1b    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050db1d    e8beed2a00
                         cmp                eax, 0x03                                     // 0x0050db22    83f803
                         {disp8} jne        _jmp_addr_0x0050db2d                          // 0x0050db25    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050db27    892d94c9be00
_jmp_addr_0x0050db2d:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050db2d    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050db33    33c0
                         mov                al, byte ptr [ebx]                            // 0x0050db35    8a03
                         add                eax, 0x08                                     // 0x0050db37    83c008
                         add.s              ecx, eax                                      // 0x0050db3a    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050db3c    898e14020000
_jmp_addr_0x0050db42:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050db42    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x50]                   // 0x0050db48    8d5f50
                         {disp8} je         _jmp_addr_0x0050db78                          // 0x0050db4b    742b
                         push               ebp                                           // 0x0050db4d    55
                         push               0x4                                           // 0x0050db4e    6a04
                         push               ebx                                           // 0x0050db50    53
                         mov.s              ecx, esi                                      // 0x0050db51    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050db53    e888ed2a00
                         cmp                eax, 0x03                                     // 0x0050db58    83f803
                         {disp8} jne        _jmp_addr_0x0050db63                          // 0x0050db5b    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050db5d    892d94c9be00
_jmp_addr_0x0050db63:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0050db63    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0050db69    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0050db6b    8a0b
                         add                ecx, 0x4                                      // 0x0050db6d    83c104
                         add.s              eax, ecx                                      // 0x0050db70    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0050db72    898614020000
_jmp_addr_0x0050db78:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050db78    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x54]                   // 0x0050db7e    8d5f54
                         {disp8} je         _jmp_addr_0x0050dbae                          // 0x0050db81    742b
                         push               ebp                                           // 0x0050db83    55
                         push               0x4                                           // 0x0050db84    6a04
                         push               ebx                                           // 0x0050db86    53
                         mov.s              ecx, esi                                      // 0x0050db87    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050db89    e852ed2a00
                         cmp                eax, 0x03                                     // 0x0050db8e    83f803
                         {disp8} jne        _jmp_addr_0x0050db99                          // 0x0050db91    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050db93    892d94c9be00
_jmp_addr_0x0050db99:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0050db99    8b8614020000
                         xor.s              edx, edx                                      // 0x0050db9f    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0050dba1    8a13
                         add                edx, 0x04                                     // 0x0050dba3    83c204
                         add.s              eax, edx                                      // 0x0050dba6    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0050dba8    898614020000
_jmp_addr_0x0050dbae:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050dbae    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x58]                   // 0x0050dbb4    8d5f58
                         {disp8} je         _jmp_addr_0x0050dbe4                          // 0x0050dbb7    742b
                         push               ebp                                           // 0x0050dbb9    55
                         push               0x4                                           // 0x0050dbba    6a04
                         push               ebx                                           // 0x0050dbbc    53
                         mov.s              ecx, esi                                      // 0x0050dbbd    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050dbbf    e81ced2a00
                         cmp                eax, 0x03                                     // 0x0050dbc4    83f803
                         {disp8} jne        _jmp_addr_0x0050dbcf                          // 0x0050dbc7    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050dbc9    892d94c9be00
_jmp_addr_0x0050dbcf:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050dbcf    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050dbd5    33c0
                         mov                al, byte ptr [ebx]                            // 0x0050dbd7    8a03
                         add                eax, 0x04                                     // 0x0050dbd9    83c004
                         add.s              ecx, eax                                      // 0x0050dbdc    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050dbde    898e14020000
_jmp_addr_0x0050dbe4:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050dbe4    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x5c]                   // 0x0050dbea    8d5f5c
                         {disp8} je         _jmp_addr_0x0050dc1a                          // 0x0050dbed    742b
                         push               ebp                                           // 0x0050dbef    55
                         push               0x10                                          // 0x0050dbf0    6a10
                         push               ebx                                           // 0x0050dbf2    53
                         mov.s              ecx, esi                                      // 0x0050dbf3    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050dbf5    e8e6ec2a00
                         cmp                eax, 0x03                                     // 0x0050dbfa    83f803
                         {disp8} jne        _jmp_addr_0x0050dc05                          // 0x0050dbfd    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050dbff    892d94c9be00
_jmp_addr_0x0050dc05:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0050dc05    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0050dc0b    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0050dc0d    8a0b
                         add                ecx, 0x10                                     // 0x0050dc0f    83c110
                         add.s              eax, ecx                                      // 0x0050dc12    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0050dc14    898614020000
_jmp_addr_0x0050dc1a:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050dc1a    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x6c]                   // 0x0050dc20    8d5f6c
                         {disp8} je         _jmp_addr_0x0050dc50                          // 0x0050dc23    742b
                         push               ebp                                           // 0x0050dc25    55
                         push               0x4                                           // 0x0050dc26    6a04
                         push               ebx                                           // 0x0050dc28    53
                         mov.s              ecx, esi                                      // 0x0050dc29    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050dc2b    e8b0ec2a00
                         cmp                eax, 0x03                                     // 0x0050dc30    83f803
                         {disp8} jne        _jmp_addr_0x0050dc3b                          // 0x0050dc33    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050dc35    892d94c9be00
_jmp_addr_0x0050dc3b:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0050dc3b    8b8614020000
                         xor.s              edx, edx                                      // 0x0050dc41    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0050dc43    8a13
                         add                edx, 0x04                                     // 0x0050dc45    83c204
                         add.s              eax, edx                                      // 0x0050dc48    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0050dc4a    898614020000
_jmp_addr_0x0050dc50:    {disp8} lea        eax, dword ptr [edi + 0x70]                   // 0x0050dc50    8d4770
                         push               eax                                           // 0x0050dc53    50
                         mov.s              ecx, esi                                      // 0x0050dc54    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0050dc56    e825450500
                         cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0050dc5b    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x74]                   // 0x0050dc61    8d5f74
                         {disp8} je         _jmp_addr_0x0050dc8f                          // 0x0050dc64    7429
                         push               ebp                                           // 0x0050dc66    55
                         push               0x1                                           // 0x0050dc67    6a01
                         push               ebx                                           // 0x0050dc69    53
                         mov.s              ecx, esi                                      // 0x0050dc6a    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050dc6c    e86fec2a00
                         cmp                eax, 0x03                                     // 0x0050dc71    83f803
                         {disp8} jne        _jmp_addr_0x0050dc7c                          // 0x0050dc74    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0050dc76    892d94c9be00
_jmp_addr_0x0050dc7c:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0050dc7c    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0050dc82    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0050dc84    8a0b
                         inc                ecx                                           // 0x0050dc86    41
                         add.s              eax, ecx                                      // 0x0050dc87    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0050dc89    898614020000
_jmp_addr_0x0050dc8f:    {disp8} lea        edx, dword ptr [edi + 0x78]                   // 0x0050dc8f    8d5778
                         push               edx                                           // 0x0050dc92    52
                         mov.s              ecx, esi                                      // 0x0050dc93    8bce
                         call               ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0050dc95    e8069befff
                         {disp8} lea        eax, dword ptr [edi + 0x7c]                   // 0x0050dc9a    8d477c
                         push               eax                                           // 0x0050dc9d    50
                         mov.s              ecx, esi                                      // 0x0050dc9e    8bce
                         call               _jmp_addr_0x004e9590                          // 0x0050dca0    e8ebb8fdff
                         {disp32} lea       ecx, dword ptr [edi + 0x00000080]             // 0x0050dca5    8d8f80000000
                         push               ecx                                           // 0x0050dcab    51
                         mov.s              ecx, esi                                      // 0x0050dcac    8bce
                         call               ??$ReadIt@H@GameOSFile@@QAEXAAH@Z             // 0x0050dcae    e89d9aefff
                         {disp32} lea       edx, dword ptr [edi + 0x00000084]             // 0x0050dcb3    8d9784000000
                         push               edx                                           // 0x0050dcb9    52
                         mov.s              ecx, esi                                      // 0x0050dcba    8bce
                         call               _jmp_addr_0x004e9590                          // 0x0050dcbc    e8cfb8fdff
                         {disp32} lea       eax, dword ptr [edi + 0x00000088]             // 0x0050dcc1    8d8788000000
                         push               eax                                           // 0x0050dcc7    50
                         mov.s              ecx, esi                                      // 0x0050dcc8    8bce
                         call               _jmp_addr_0x0050e020                          // 0x0050dcca    e851030000
                         {disp32} lea       ecx, dword ptr [edi + 0x00000094]             // 0x0050dccf    8d8f94000000
                         push               ecx                                           // 0x0050dcd5    51
                         mov.s              ecx, esi                                      // 0x0050dcd6    8bce
                         call               _jmp_addr_0x0050e020                          // 0x0050dcd8    e843030000
                         {disp32} lea       edx, dword ptr [edi + 0x000000a0]             // 0x0050dcdd    8d97a0000000
                         push               edx                                           // 0x0050dce3    52
                         mov.s              ecx, esi                                      // 0x0050dce4    8bce
                         call               _jmp_addr_0x0050e070                          // 0x0050dce6    e885030000
                         {disp32} lea       eax, dword ptr [edi + 0x000000a4]             // 0x0050dceb    8d87a4000000
                         push               eax                                           // 0x0050dcf1    50
                         mov.s              ecx, esi                                      // 0x0050dcf2    8bce
                         call               ??$ReadIt@H@GameOSFile@@QAEXAAI@Z             // 0x0050dcf4    e8a79aefff
                         {disp32} lea       ecx, dword ptr [edi + 0x000000a8]             // 0x0050dcf9    8d8fa8000000
                         push               ecx                                           // 0x0050dcff    51
                         mov.s              ecx, esi                                      // 0x0050dd00    8bce
                         call               _jmp_addr_0x0050e0c0                          // 0x0050dd02    e8b9030000
                         {disp32} lea       edx, dword ptr [edi + 0x000000e8]             // 0x0050dd07    8d97e8000000
                         push               edx                                           // 0x0050dd0d    52
                         mov.s              ecx, esi                                      // 0x0050dd0e    8bce
                         call               _jmp_addr_0x0050e110                          // 0x0050dd10    e8fb030000
                         {disp32} lea       eax, dword ptr [edi + 0x000000f4]             // 0x0050dd15    8d87f4000000
                         push               eax                                           // 0x0050dd1b    50
                         mov.s              ecx, esi                                      // 0x0050dd1c    8bce
                         call               _jmp_addr_0x0050e160                          // 0x0050dd1e    e83d040000
                         add                edi, 0x00000178                               // 0x0050dd23    81c778010000
                         push               edi                                           // 0x0050dd29    57
                         mov.s              ecx, esi                                      // 0x0050dd2a    8bce
                         call               _jmp_addr_0x0050e230                          // 0x0050dd2c    e8ff040000
                         pop                ebp                                           // 0x0050dd31    5d
                         pop                ebx                                           // 0x0050dd32    5b
                         pop                edi                                           // 0x0050dd33    5f
                         mov                eax, 0x00000001                               // 0x0050dd34    b801000000
                         pop                esi                                           // 0x0050dd39    5e
                         pop                ecx                                           // 0x0050dd3a    59
                         ret                0x0004                                        // 0x0050dd3b    c20400
_jmp_addr_0x0050dd3e:    pop                edi                                           // 0x0050dd3e    5f
                         xor.s              eax, eax                                      // 0x0050dd3f    33c0
                         pop                esi                                           // 0x0050dd41    5e
                         pop                ecx                                           // 0x0050dd42    59
                         ret                0x0004                                        // 0x0050dd43    c20400
                         nop                                                              // 0x0050dd46    90
                         nop                                                              // 0x0050dd47    90
                         nop                                                              // 0x0050dd48    90
                         nop                                                              // 0x0050dd49    90
                         nop                                                              // 0x0050dd4a    90
                         nop                                                              // 0x0050dd4b    90
                         nop                                                              // 0x0050dd4c    90
                         nop                                                              // 0x0050dd4d    90
                         nop                                                              // 0x0050dd4e    90
                         nop                                                              // 0x0050dd4f    90
_jmp_addr_0x0050dd50:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050dd50    a190c9be00
                         test               eax, eax                                      // 0x0050dd55    85c0
                         push               esi                                           // 0x0050dd57    56
                         mov.s              esi, ecx                                      // 0x0050dd58    8bf1
                         {disp8} je         _jmp_addr_0x0050dd8e                          // 0x0050dd5a    7432
                         push               edi                                           // 0x0050dd5c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050dd5d    8b7c240c
                         push               0x0                                           // 0x0050dd61    6a00
                         push               0x1                                           // 0x0050dd63    6a01
                         push               edi                                           // 0x0050dd65    57
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050dd66    e8b5eb2a00
                         cmp                eax, 0x03                                     // 0x0050dd6b    83f803
                         {disp8} jne        _jmp_addr_0x0050dd7a                          // 0x0050dd6e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0050dd70    c70590c9be0000000000
_jmp_addr_0x0050dd7a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050dd7a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050dd80    33c0
                         mov                al, byte ptr [edi]                            // 0x0050dd82    8a07
                         pop                edi                                           // 0x0050dd84    5f
                         inc                eax                                           // 0x0050dd85    40
                         add.s              ecx, eax                                      // 0x0050dd86    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050dd88    898e14020000
_jmp_addr_0x0050dd8e:    pop                esi                                           // 0x0050dd8e    5e
                         ret                0x0004                                        // 0x0050dd8f    c20400
                         nop                                                              // 0x0050dd92    90
                         nop                                                              // 0x0050dd93    90
                         nop                                                              // 0x0050dd94    90
                         nop                                                              // 0x0050dd95    90
                         nop                                                              // 0x0050dd96    90
                         nop                                                              // 0x0050dd97    90
                         nop                                                              // 0x0050dd98    90
                         nop                                                              // 0x0050dd99    90
                         nop                                                              // 0x0050dd9a    90
                         nop                                                              // 0x0050dd9b    90
                         nop                                                              // 0x0050dd9c    90
                         nop                                                              // 0x0050dd9d    90
                         nop                                                              // 0x0050dd9e    90
                         nop                                                              // 0x0050dd9f    90
_jmp_addr_0x0050dda0:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050dda0    a190c9be00
                         test               eax, eax                                      // 0x0050dda5    85c0
                         push               esi                                           // 0x0050dda7    56
                         mov.s              esi, ecx                                      // 0x0050dda8    8bf1
                         {disp8} je         _jmp_addr_0x0050dde0                          // 0x0050ddaa    7434
                         push               edi                                           // 0x0050ddac    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050ddad    8b7c240c
                         push               0x0                                           // 0x0050ddb1    6a00
                         push               0xc                                           // 0x0050ddb3    6a0c
                         push               edi                                           // 0x0050ddb5    57
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050ddb6    e865eb2a00
                         cmp                eax, 0x03                                     // 0x0050ddbb    83f803
                         {disp8} jne        _jmp_addr_0x0050ddca                          // 0x0050ddbe    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0050ddc0    c70590c9be0000000000
_jmp_addr_0x0050ddca:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050ddca    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050ddd0    33c0
                         mov                al, byte ptr [edi]                            // 0x0050ddd2    8a07
                         pop                edi                                           // 0x0050ddd4    5f
                         add                eax, 0x0c                                     // 0x0050ddd5    83c00c
                         add.s              ecx, eax                                      // 0x0050ddd8    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050ddda    898e14020000
_jmp_addr_0x0050dde0:    pop                esi                                           // 0x0050dde0    5e
                         ret                0x0004                                        // 0x0050dde1    c20400
                         nop                                                              // 0x0050dde4    90
                         nop                                                              // 0x0050dde5    90
                         nop                                                              // 0x0050dde6    90
                         nop                                                              // 0x0050dde7    90
                         nop                                                              // 0x0050dde8    90
                         nop                                                              // 0x0050dde9    90
                         nop                                                              // 0x0050ddea    90
                         nop                                                              // 0x0050ddeb    90
                         nop                                                              // 0x0050ddec    90
                         nop                                                              // 0x0050dded    90
                         nop                                                              // 0x0050ddee    90
                         nop                                                              // 0x0050ddef    90
_jmp_addr_0x0050ddf0:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050ddf0    a190c9be00
                         test               eax, eax                                      // 0x0050ddf5    85c0
                         push               esi                                           // 0x0050ddf7    56
                         mov.s              esi, ecx                                      // 0x0050ddf8    8bf1
                         {disp8} je         _jmp_addr_0x0050de30                          // 0x0050ddfa    7434
                         push               edi                                           // 0x0050ddfc    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050ddfd    8b7c240c
                         push               0x0                                           // 0x0050de01    6a00
                         push               0x4                                           // 0x0050de03    6a04
                         push               edi                                           // 0x0050de05    57
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050de06    e815eb2a00
                         cmp                eax, 0x03                                     // 0x0050de0b    83f803
                         {disp8} jne        _jmp_addr_0x0050de1a                          // 0x0050de0e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0050de10    c70590c9be0000000000
_jmp_addr_0x0050de1a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050de1a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050de20    33c0
                         mov                al, byte ptr [edi]                            // 0x0050de22    8a07
                         pop                edi                                           // 0x0050de24    5f
                         add                eax, 0x04                                     // 0x0050de25    83c004
                         add.s              ecx, eax                                      // 0x0050de28    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050de2a    898e14020000
_jmp_addr_0x0050de30:    pop                esi                                           // 0x0050de30    5e
                         ret                0x0004                                        // 0x0050de31    c20400
                         nop                                                              // 0x0050de34    90
                         nop                                                              // 0x0050de35    90
                         nop                                                              // 0x0050de36    90
                         nop                                                              // 0x0050de37    90
                         nop                                                              // 0x0050de38    90
                         nop                                                              // 0x0050de39    90
                         nop                                                              // 0x0050de3a    90
                         nop                                                              // 0x0050de3b    90
                         nop                                                              // 0x0050de3c    90
                         nop                                                              // 0x0050de3d    90
                         nop                                                              // 0x0050de3e    90
                         nop                                                              // 0x0050de3f    90
_jmp_addr_0x0050de40:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050de40    a190c9be00
                         test               eax, eax                                      // 0x0050de45    85c0
                         push               esi                                           // 0x0050de47    56
                         mov.s              esi, ecx                                      // 0x0050de48    8bf1
                         {disp8} je         _jmp_addr_0x0050de80                          // 0x0050de4a    7434
                         push               edi                                           // 0x0050de4c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050de4d    8b7c240c
                         push               0x0                                           // 0x0050de51    6a00
                         push               0x40                                          // 0x0050de53    6a40
                         push               edi                                           // 0x0050de55    57
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050de56    e8c5ea2a00
                         cmp                eax, 0x03                                     // 0x0050de5b    83f803
                         {disp8} jne        _jmp_addr_0x0050de6a                          // 0x0050de5e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0050de60    c70590c9be0000000000
_jmp_addr_0x0050de6a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050de6a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050de70    33c0
                         mov                al, byte ptr [edi]                            // 0x0050de72    8a07
                         pop                edi                                           // 0x0050de74    5f
                         add                eax, 0x40                                     // 0x0050de75    83c040
                         add.s              ecx, eax                                      // 0x0050de78    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050de7a    898e14020000
_jmp_addr_0x0050de80:    pop                esi                                           // 0x0050de80    5e
                         ret                0x0004                                        // 0x0050de81    c20400
                         nop                                                              // 0x0050de84    90
                         nop                                                              // 0x0050de85    90
                         nop                                                              // 0x0050de86    90
                         nop                                                              // 0x0050de87    90
                         nop                                                              // 0x0050de88    90
                         nop                                                              // 0x0050de89    90
                         nop                                                              // 0x0050de8a    90
                         nop                                                              // 0x0050de8b    90
                         nop                                                              // 0x0050de8c    90
                         nop                                                              // 0x0050de8d    90
                         nop                                                              // 0x0050de8e    90
                         nop                                                              // 0x0050de8f    90
_jmp_addr_0x0050de90:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050de90    a190c9be00
                         test               eax, eax                                      // 0x0050de95    85c0
                         push               esi                                           // 0x0050de97    56
                         mov.s              esi, ecx                                      // 0x0050de98    8bf1
                         {disp8} je         _jmp_addr_0x0050ded0                          // 0x0050de9a    7434
                         push               edi                                           // 0x0050de9c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050de9d    8b7c240c
                         push               0x0                                           // 0x0050dea1    6a00
                         push               0xc                                           // 0x0050dea3    6a0c
                         push               edi                                           // 0x0050dea5    57
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050dea6    e875ea2a00
                         cmp                eax, 0x03                                     // 0x0050deab    83f803
                         {disp8} jne        _jmp_addr_0x0050deba                          // 0x0050deae    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0050deb0    c70590c9be0000000000
_jmp_addr_0x0050deba:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050deba    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050dec0    33c0
                         mov                al, byte ptr [edi]                            // 0x0050dec2    8a07
                         pop                edi                                           // 0x0050dec4    5f
                         add                eax, 0x0c                                     // 0x0050dec5    83c00c
                         add.s              ecx, eax                                      // 0x0050dec8    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050deca    898e14020000
_jmp_addr_0x0050ded0:    pop                esi                                           // 0x0050ded0    5e
                         ret                0x0004                                        // 0x0050ded1    c20400
                         nop                                                              // 0x0050ded4    90
                         nop                                                              // 0x0050ded5    90
                         nop                                                              // 0x0050ded6    90
                         nop                                                              // 0x0050ded7    90
                         nop                                                              // 0x0050ded8    90
                         nop                                                              // 0x0050ded9    90
                         nop                                                              // 0x0050deda    90
                         nop                                                              // 0x0050dedb    90
                         nop                                                              // 0x0050dedc    90
                         nop                                                              // 0x0050dedd    90
                         nop                                                              // 0x0050dede    90
                         nop                                                              // 0x0050dedf    90
_jmp_addr_0x0050dee0:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050dee0    a190c9be00
                         sub                esp, 0x08                                     // 0x0050dee5    83ec08
                         push               esi                                           // 0x0050dee8    56
                         push               edi                                           // 0x0050dee9    57
                         xor.s              edi, edi                                      // 0x0050deea    33ff
                         cmp.s              eax, edi                                      // 0x0050deec    3bc7
                         mov.s              esi, ecx                                      // 0x0050deee    8bf1
                         {disp8} jne        _jmp_addr_0x0050defc                          // 0x0050def0    750a
                         pop                edi                                           // 0x0050def2    5f
                         xor.s              eax, eax                                      // 0x0050def3    33c0
                         pop                esi                                           // 0x0050def5    5e
                         add                esp, 0x08                                     // 0x0050def6    83c408
                         ret                0x0004                                        // 0x0050def9    c20400
_jmp_addr_0x0050defc:    push               ebx                                           // 0x0050defc    53
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x0050defd    8b5c2418
                         push               ebp                                           // 0x0050df01    55
                         {disp32} mov       ebp, dword ptr [ebx + 0x00000080]             // 0x0050df02    8bab80000000
                         push               edi                                           // 0x0050df08    57
                         push               0x4                                           // 0x0050df09    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0050df0b    8d442424
                         push               eax                                           // 0x0050df0f    50
                         mov.s              ecx, esi                                      // 0x0050df10    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0050df12    897c241c
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x0050df16    896c2428
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050df1a    e801ea2a00
                         cmp                eax, 0x03                                     // 0x0050df1f    83f803
                         {disp8} jne        _jmp_addr_0x0050df2a                          // 0x0050df22    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], edi        // 0x0050df24    893d90c9be00
_jmp_addr_0x0050df2a:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0050df2a    8b44241c
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0050df2e    8b9614020000
                         mov.s              ecx, eax                                      // 0x0050df34    8bc8
                         and                ecx, 0x000000ff                               // 0x0050df36    81e1ff000000
                         add                ecx, 0x4                                      // 0x0050df3c    83c104
                         add.s              edx, ecx                                      // 0x0050df3f    03d1
                         {disp8} lea        edi, dword ptr [eax + -0x01]                  // 0x0050df41    8d78ff
                         test               edi, edi                                      // 0x0050df44    85ff
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0050df46    899614020000
                         {disp8} jl         _jmp_addr_0x0050dfbb                          // 0x0050df4c    7c6d
                         lea                ebx, dword ptr [ebx + edi * 0x4]              // 0x0050df4e    8d1cbb
_jmp_addr_0x0050df51:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0050df51    8b442410
                         inc                eax                                           // 0x0050df55    40
                         cmp.s              eax, ebp                                      // 0x0050df56    3bc5
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0050df58    89442410
                         {disp8} jg         _jmp_addr_0x0050dfb1                          // 0x0050df5c    7f53
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050df5e    a190c9be00
                         test               eax, eax                                      // 0x0050df63    85c0
                         {disp8} je         _jmp_addr_0x0050dfbb                          // 0x0050df65    7454
                         mov                edx, dword ptr [ebx]                          // 0x0050df67    8b13
                         push               0x0                                           // 0x0050df69    6a00
                         push               0x4                                           // 0x0050df6b    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0050df6d    8d44241c
                         push               eax                                           // 0x0050df71    50
                         mov.s              ecx, esi                                      // 0x0050df72    8bce
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x0050df74    89542420
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050df78    e8a3e92a00
                         cmp                eax, 0x03                                     // 0x0050df7d    83f803
                         {disp8} jne        _jmp_addr_0x0050df8c                          // 0x0050df80    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0050df82    c70590c9be0000000000
_jmp_addr_0x0050df8c:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0050df8c    8b4c2414
                         {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0050df90    8b8614020000
                         and                ecx, 0x000000ff                               // 0x0050df96    81e1ff000000
                         add                ecx, 0x4                                      // 0x0050df9c    83c104
                         add.s              eax, ecx                                      // 0x0050df9f    03c1
                         dec                edi                                           // 0x0050dfa1    4f
                         sub                ebx, 0x04                                     // 0x0050dfa2    83eb04
                         test               edi, edi                                      // 0x0050dfa5    85ff
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0050dfa7    898614020000
                         {disp8} jl         _jmp_addr_0x0050dfbb                          // 0x0050dfad    7c0c
                         {disp8} jmp        _jmp_addr_0x0050df51                          // 0x0050dfaf    eba0
_jmp_addr_0x0050dfb1:    {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0050dfb1    c70590c9be0000000000
_jmp_addr_0x0050dfbb:    pop                ebp                                           // 0x0050dfbb    5d
                         pop                ebx                                           // 0x0050dfbc    5b
                         pop                edi                                           // 0x0050dfbd    5f
                         mov                eax, 0x00000001                               // 0x0050dfbe    b801000000
                         pop                esi                                           // 0x0050dfc3    5e
                         add                esp, 0x08                                     // 0x0050dfc4    83c408
                         ret                0x0004                                        // 0x0050dfc7    c20400
                         call               dword ptr [__imp__timeSetEvent@4]             // 0x0050dfca    ff1598988a00
_jmp_addr_0x0050dfd0:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0050dfd0    a190c9be00
                         test               eax, eax                                      // 0x0050dfd5    85c0
                         push               esi                                           // 0x0050dfd7    56
                         mov.s              esi, ecx                                      // 0x0050dfd8    8bf1
                         {disp8} je         _jmp_addr_0x0050e010                          // 0x0050dfda    7434
                         push               edi                                           // 0x0050dfdc    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050dfdd    8b7c240c
                         push               0x0                                           // 0x0050dfe1    6a00
                         push               0x4                                           // 0x0050dfe3    6a04
                         push               edi                                           // 0x0050dfe5    57
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0050dfe6    e835e92a00
                         cmp                eax, 0x03                                     // 0x0050dfeb    83f803
                         {disp8} jne        _jmp_addr_0x0050dffa                          // 0x0050dfee    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0050dff0    c70590c9be0000000000
_jmp_addr_0x0050dffa:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050dffa    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050e000    33c0
                         mov                al, byte ptr [edi]                            // 0x0050e002    8a07
                         pop                edi                                           // 0x0050e004    5f
                         add                eax, 0x04                                     // 0x0050e005    83c004
                         add.s              ecx, eax                                      // 0x0050e008    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050e00a    898e14020000
_jmp_addr_0x0050e010:    pop                esi                                           // 0x0050e010    5e
                         ret                0x0004                                        // 0x0050e011    c20400
                         nop                                                              // 0x0050e014    90
                         nop                                                              // 0x0050e015    90
                         nop                                                              // 0x0050e016    90
                         nop                                                              // 0x0050e017    90
                         nop                                                              // 0x0050e018    90
                         nop                                                              // 0x0050e019    90
                         nop                                                              // 0x0050e01a    90
                         nop                                                              // 0x0050e01b    90
                         nop                                                              // 0x0050e01c    90
                         nop                                                              // 0x0050e01d    90
                         nop                                                              // 0x0050e01e    90
                         nop                                                              // 0x0050e01f    90
_jmp_addr_0x0050e020:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0050e020    a194c9be00
                         test               eax, eax                                      // 0x0050e025    85c0
                         push               esi                                           // 0x0050e027    56
                         mov.s              esi, ecx                                      // 0x0050e028    8bf1
                         {disp8} je         _jmp_addr_0x0050e060                          // 0x0050e02a    7434
                         push               edi                                           // 0x0050e02c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050e02d    8b7c240c
                         push               0x0                                           // 0x0050e031    6a00
                         push               0xc                                           // 0x0050e033    6a0c
                         push               edi                                           // 0x0050e035    57
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050e036    e8a5e82a00
                         cmp                eax, 0x03                                     // 0x0050e03b    83f803
                         {disp8} jne        _jmp_addr_0x0050e04a                          // 0x0050e03e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0050e040    c70594c9be0000000000
_jmp_addr_0x0050e04a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050e04a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050e050    33c0
                         mov                al, byte ptr [edi]                            // 0x0050e052    8a07
                         pop                edi                                           // 0x0050e054    5f
                         add                eax, 0x0c                                     // 0x0050e055    83c00c
                         add.s              ecx, eax                                      // 0x0050e058    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050e05a    898e14020000
_jmp_addr_0x0050e060:    pop                esi                                           // 0x0050e060    5e
                         ret                0x0004                                        // 0x0050e061    c20400
                         nop                                                              // 0x0050e064    90
                         nop                                                              // 0x0050e065    90
                         nop                                                              // 0x0050e066    90
                         nop                                                              // 0x0050e067    90
                         nop                                                              // 0x0050e068    90
                         nop                                                              // 0x0050e069    90
                         nop                                                              // 0x0050e06a    90
                         nop                                                              // 0x0050e06b    90
                         nop                                                              // 0x0050e06c    90
                         nop                                                              // 0x0050e06d    90
                         nop                                                              // 0x0050e06e    90
                         nop                                                              // 0x0050e06f    90
_jmp_addr_0x0050e070:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0050e070    a194c9be00
                         test               eax, eax                                      // 0x0050e075    85c0
                         push               esi                                           // 0x0050e077    56
                         mov.s              esi, ecx                                      // 0x0050e078    8bf1
                         {disp8} je         _jmp_addr_0x0050e0b0                          // 0x0050e07a    7434
                         push               edi                                           // 0x0050e07c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050e07d    8b7c240c
                         push               0x0                                           // 0x0050e081    6a00
                         push               0x4                                           // 0x0050e083    6a04
                         push               edi                                           // 0x0050e085    57
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050e086    e855e82a00
                         cmp                eax, 0x03                                     // 0x0050e08b    83f803
                         {disp8} jne        _jmp_addr_0x0050e09a                          // 0x0050e08e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0050e090    c70594c9be0000000000
_jmp_addr_0x0050e09a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050e09a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050e0a0    33c0
                         mov                al, byte ptr [edi]                            // 0x0050e0a2    8a07
                         pop                edi                                           // 0x0050e0a4    5f
                         add                eax, 0x04                                     // 0x0050e0a5    83c004
                         add.s              ecx, eax                                      // 0x0050e0a8    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050e0aa    898e14020000
_jmp_addr_0x0050e0b0:    pop                esi                                           // 0x0050e0b0    5e
                         ret                0x0004                                        // 0x0050e0b1    c20400
                         nop                                                              // 0x0050e0b4    90
                         nop                                                              // 0x0050e0b5    90
                         nop                                                              // 0x0050e0b6    90
                         nop                                                              // 0x0050e0b7    90
                         nop                                                              // 0x0050e0b8    90
                         nop                                                              // 0x0050e0b9    90
                         nop                                                              // 0x0050e0ba    90
                         nop                                                              // 0x0050e0bb    90
                         nop                                                              // 0x0050e0bc    90
                         nop                                                              // 0x0050e0bd    90
                         nop                                                              // 0x0050e0be    90
                         nop                                                              // 0x0050e0bf    90
_jmp_addr_0x0050e0c0:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0050e0c0    a194c9be00
                         test               eax, eax                                      // 0x0050e0c5    85c0
                         push               esi                                           // 0x0050e0c7    56
                         mov.s              esi, ecx                                      // 0x0050e0c8    8bf1
                         {disp8} je         _jmp_addr_0x0050e100                          // 0x0050e0ca    7434
                         push               edi                                           // 0x0050e0cc    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050e0cd    8b7c240c
                         push               0x0                                           // 0x0050e0d1    6a00
                         push               0x40                                          // 0x0050e0d3    6a40
                         push               edi                                           // 0x0050e0d5    57
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050e0d6    e805e82a00
                         cmp                eax, 0x03                                     // 0x0050e0db    83f803
                         {disp8} jne        _jmp_addr_0x0050e0ea                          // 0x0050e0de    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0050e0e0    c70594c9be0000000000
_jmp_addr_0x0050e0ea:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050e0ea    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050e0f0    33c0
                         mov                al, byte ptr [edi]                            // 0x0050e0f2    8a07
                         pop                edi                                           // 0x0050e0f4    5f
                         add                eax, 0x40                                     // 0x0050e0f5    83c040
                         add.s              ecx, eax                                      // 0x0050e0f8    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050e0fa    898e14020000
_jmp_addr_0x0050e100:    pop                esi                                           // 0x0050e100    5e
                         ret                0x0004                                        // 0x0050e101    c20400
                         nop                                                              // 0x0050e104    90
                         nop                                                              // 0x0050e105    90
                         nop                                                              // 0x0050e106    90
                         nop                                                              // 0x0050e107    90
                         nop                                                              // 0x0050e108    90
                         nop                                                              // 0x0050e109    90
                         nop                                                              // 0x0050e10a    90
                         nop                                                              // 0x0050e10b    90
                         nop                                                              // 0x0050e10c    90
                         nop                                                              // 0x0050e10d    90
                         nop                                                              // 0x0050e10e    90
                         nop                                                              // 0x0050e10f    90
_jmp_addr_0x0050e110:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0050e110    a194c9be00
                         test               eax, eax                                      // 0x0050e115    85c0
                         push               esi                                           // 0x0050e117    56
                         mov.s              esi, ecx                                      // 0x0050e118    8bf1
                         {disp8} je         _jmp_addr_0x0050e150                          // 0x0050e11a    7434
                         push               edi                                           // 0x0050e11c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050e11d    8b7c240c
                         push               0x0                                           // 0x0050e121    6a00
                         push               0xc                                           // 0x0050e123    6a0c
                         push               edi                                           // 0x0050e125    57
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050e126    e8b5e72a00
                         cmp                eax, 0x03                                     // 0x0050e12b    83f803
                         {disp8} jne        _jmp_addr_0x0050e13a                          // 0x0050e12e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0050e130    c70594c9be0000000000
_jmp_addr_0x0050e13a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050e13a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050e140    33c0
                         mov                al, byte ptr [edi]                            // 0x0050e142    8a07
                         pop                edi                                           // 0x0050e144    5f
                         add                eax, 0x0c                                     // 0x0050e145    83c00c
                         add.s              ecx, eax                                      // 0x0050e148    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050e14a    898e14020000
_jmp_addr_0x0050e150:    pop                esi                                           // 0x0050e150    5e
                         ret                0x0004                                        // 0x0050e151    c20400
                         nop                                                              // 0x0050e154    90
                         nop                                                              // 0x0050e155    90
                         nop                                                              // 0x0050e156    90
                         nop                                                              // 0x0050e157    90
                         nop                                                              // 0x0050e158    90
                         nop                                                              // 0x0050e159    90
                         nop                                                              // 0x0050e15a    90
                         nop                                                              // 0x0050e15b    90
                         nop                                                              // 0x0050e15c    90
                         nop                                                              // 0x0050e15d    90
                         nop                                                              // 0x0050e15e    90
                         nop                                                              // 0x0050e15f    90
_jmp_addr_0x0050e160:    push               ecx                                           // 0x0050e160    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0050e161    a194c9be00
                         test               eax, eax                                      // 0x0050e166    85c0
                         push               esi                                           // 0x0050e168    56
                         mov.s              esi, ecx                                      // 0x0050e169    8bf1
                         {disp8} jne        _jmp_addr_0x0050e174                          // 0x0050e16b    7507
                         xor.s              eax, eax                                      // 0x0050e16d    33c0
                         pop                esi                                           // 0x0050e16f    5e
                         pop                ecx                                           // 0x0050e170    59
                         ret                0x0004                                        // 0x0050e171    c20400
_jmp_addr_0x0050e174:    push               0x0                                           // 0x0050e174    6a00
                         push               0x4                                           // 0x0050e176    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0050e178    8d44240c
                         push               eax                                           // 0x0050e17c    50
                         mov.s              ecx, esi                                      // 0x0050e17d    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050e17f    e85ce72a00
                         cmp                eax, 0x03                                     // 0x0050e184    83f803
                         {disp8} jne        _jmp_addr_0x0050e193                          // 0x0050e187    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0050e189    c70594c9be0000000000
_jmp_addr_0x0050e193:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0050e193    8b442404
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0050e197    8b9614020000
                         mov.s              ecx, eax                                      // 0x0050e19d    8bc8
                         and                ecx, 0x000000ff                               // 0x0050e19f    81e1ff000000
                         add                ecx, 0x4                                      // 0x0050e1a5    83c104
                         add.s              edx, ecx                                      // 0x0050e1a8    03d1
                         test               eax, eax                                      // 0x0050e1aa    85c0
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0050e1ac    899614020000
                         {disp8} jle        _jmp_addr_0x0050e21c                          // 0x0050e1b2    7e68
                         push               edi                                           // 0x0050e1b4    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0050e1b5    8b7c2410
_jmp_addr_0x0050e1b9:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0050e1b9    a194c9be00
                         test               eax, eax                                      // 0x0050e1be    85c0
                         {disp8} je         _jmp_addr_0x0050e1fb                          // 0x0050e1c0    7439
                         push               0x0                                           // 0x0050e1c2    6a00
                         push               0x4                                           // 0x0050e1c4    6a04
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0050e1c6    8d542418
                         push               edx                                           // 0x0050e1ca    52
                         mov.s              ecx, esi                                      // 0x0050e1cb    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050e1cd    e80ee72a00
                         cmp                eax, 0x03                                     // 0x0050e1d2    83f803
                         {disp8} jne        _jmp_addr_0x0050e1e1                          // 0x0050e1d5    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0050e1d7    c70594c9be0000000000
_jmp_addr_0x0050e1e1:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0050e1e1    8b442410
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050e1e5    8b8e14020000
                         and                eax, 0x000000ff                               // 0x0050e1eb    25ff000000
                         add                eax, 0x04                                     // 0x0050e1f0    83c004
                         add.s              ecx, eax                                      // 0x0050e1f3    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050e1f5    898e14020000
_jmp_addr_0x0050e1fb:    {disp32} mov       ecx, dword ptr [edi + 0x00000080]             // 0x0050e1fb    8b8f80000000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0050e201    8b542410
                         mov                dword ptr [edi + ecx * 0x4], edx              // 0x0050e205    89148f
                         {disp32} inc       dword ptr [edi + 0x00000080]                  // 0x0050e208    ff8780000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0050e20e    8b442408
                         dec                eax                                           // 0x0050e212    48
                         test               eax, eax                                      // 0x0050e213    85c0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0050e215    89442408
                         {disp8} jg         _jmp_addr_0x0050e1b9                          // 0x0050e219    7f9e
                         pop                edi                                           // 0x0050e21b    5f
_jmp_addr_0x0050e21c:    mov                eax, 0x00000001                               // 0x0050e21c    b801000000
                         pop                esi                                           // 0x0050e221    5e
                         pop                ecx                                           // 0x0050e222    59
                         ret                0x0004                                        // 0x0050e223    c20400
                         nop                                                              // 0x0050e226    90
                         nop                                                              // 0x0050e227    90
                         nop                                                              // 0x0050e228    90
                         nop                                                              // 0x0050e229    90
                         nop                                                              // 0x0050e22a    90
                         nop                                                              // 0x0050e22b    90
                         nop                                                              // 0x0050e22c    90
                         nop                                                              // 0x0050e22d    90
                         nop                                                              // 0x0050e22e    90
                         nop                                                              // 0x0050e22f    90
_jmp_addr_0x0050e230:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0050e230    a194c9be00
                         test               eax, eax                                      // 0x0050e235    85c0
                         push               esi                                           // 0x0050e237    56
                         mov.s              esi, ecx                                      // 0x0050e238    8bf1
                         {disp8} je         _jmp_addr_0x0050e270                          // 0x0050e23a    7434
                         push               edi                                           // 0x0050e23c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0050e23d    8b7c240c
                         push               0x0                                           // 0x0050e241    6a00
                         push               0x4                                           // 0x0050e243    6a04
                         push               edi                                           // 0x0050e245    57
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0050e246    e895e62a00
                         cmp                eax, 0x03                                     // 0x0050e24b    83f803
                         {disp8} jne        _jmp_addr_0x0050e25a                          // 0x0050e24e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0050e250    c70594c9be0000000000
_jmp_addr_0x0050e25a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0050e25a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0050e260    33c0
                         mov                al, byte ptr [edi]                            // 0x0050e262    8a07
                         pop                edi                                           // 0x0050e264    5f
                         add                eax, 0x04                                     // 0x0050e265    83c004
                         add.s              ecx, eax                                      // 0x0050e268    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0050e26a    898e14020000
_jmp_addr_0x0050e270:    pop                esi                                           // 0x0050e270    5e
                         ret                0x0004                                        // 0x0050e271    c20400
                         nop                                                              // 0x0050e274    90
                         nop                                                              // 0x0050e275    90
                         nop                                                              // 0x0050e276    90
                         nop                                                              // 0x0050e277    90
                         nop                                                              // 0x0050e278    90
                         nop                                                              // 0x0050e279    90
                         nop                                                              // 0x0050e27a    90
                         nop                                                              // 0x0050e27b    90
                         nop                                                              // 0x0050e27c    90
                         nop                                                              // 0x0050e27d    90
                         nop                                                              // 0x0050e27e    90
                         nop                                                              // 0x0050e27f    90
_jmp_addr_0x0050e280:    push               esi                                           // 0x0050e280    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0050e281    8b742408
                         test               esi, esi                                      // 0x0050e285    85f6
                         push               edi                                           // 0x0050e287    57
                         mov.s              edi, ecx                                      // 0x0050e288    8bf9
                         {disp8} je         _jmp_addr_0x0050e2d3                          // 0x0050e28a    7447
                         push               0x8                                           // 0x0050e28c    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0050e28e    e85b822b00
                         add                esp, 0x04                                     // 0x0050e293    83c404
                         test               eax, eax                                      // 0x0050e296    85c0
                         {disp8} je         _jmp_addr_0x0050e2d3                          // 0x0050e298    7439
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x0050e29a    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x0050e29d    c70000000000
                         mov                ecx, dword ptr [edi]                          // 0x0050e2a3    8b0f
                         test               ecx, ecx                                      // 0x0050e2a5    85c9
                         {disp8} je         _jmp_addr_0x0050e2c4                          // 0x0050e2a7    741b
_jmp_addr_0x0050e2a9:    mov.s              edx, ecx                                      // 0x0050e2a9    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x0050e2ab    8b09
                         test               ecx, ecx                                      // 0x0050e2ad    85c9
                         {disp8} jne        _jmp_addr_0x0050e2a9                          // 0x0050e2af    75f8
                         test               edx, edx                                      // 0x0050e2b1    85d2
                         {disp8} je         _jmp_addr_0x0050e2c4                          // 0x0050e2b3    740f
                         mov                dword ptr [edx], eax                          // 0x0050e2b5    8902
                         {disp8} inc        dword ptr [edi + 0x04]                        // 0x0050e2b7    ff4704
                         pop                edi                                           // 0x0050e2ba    5f
                         mov                eax, 0x00000001                               // 0x0050e2bb    b801000000
                         pop                esi                                           // 0x0050e2c0    5e
                         ret                0x0004                                        // 0x0050e2c1    c20400
_jmp_addr_0x0050e2c4:    mov                dword ptr [edi], eax                          // 0x0050e2c4    8907
                         {disp8} inc        dword ptr [edi + 0x04]                        // 0x0050e2c6    ff4704
                         pop                edi                                           // 0x0050e2c9    5f
                         mov                eax, 0x00000001                               // 0x0050e2ca    b801000000
                         pop                esi                                           // 0x0050e2cf    5e
                         ret                0x0004                                        // 0x0050e2d0    c20400
_jmp_addr_0x0050e2d3:    pop                edi                                           // 0x0050e2d3    5f
                         xor.s              eax, eax                                      // 0x0050e2d4    33c0
                         pop                esi                                           // 0x0050e2d6    5e
                         ret                0x0004                                        // 0x0050e2d7    c20400
                         call               dword ptr [__imp__sendto@4]                   // 0x0050e2da    ff15fc988a00
_globl_ct_0x0050e2e0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0050e2e0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0050e2e6    b001
                         test               al, cl                                        // 0x0050e2e8    84c8
                         {disp8} jne        _jmp_addr_0x0050e2f4                          // 0x0050e2ea    7508
                         or.s               cl, al                                        // 0x0050e2ec    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0050e2ee    880d34c9fa00
_jmp_addr_0x0050e2f4:    {disp32} jmp       _jmp_addr_0x0050e300                          // 0x0050e2f4    e907000000
                         nop                                                              // 0x0050e2f9    90
                         nop                                                              // 0x0050e2fa    90
                         nop                                                              // 0x0050e2fb    90
                         nop                                                              // 0x0050e2fc    90
                         nop                                                              // 0x0050e2fd    90
                         nop                                                              // 0x0050e2fe    90
                         nop                                                              // 0x0050e2ff    90
_jmp_addr_0x0050e300:    push               0x00407870                                    // 0x0050e300    6870784000
                         call               _atexit                                       // 0x0050e305    e887742b00
                         pop                ecx                                           // 0x0050e30a    59
                         ret                                                              // 0x0050e30b    c3
                         nop                                                              // 0x0050e30c    90
                         nop                                                              // 0x0050e30d    90
                         nop                                                              // 0x0050e30e    90
                         nop                                                              // 0x0050e30f    90
_globl_ct_0x0050e310:    {disp32} jmp       _jmp_addr_0x0050e320                          // 0x0050e310    e90b000000
                         nop                                                              // 0x0050e315    90
                         nop                                                              // 0x0050e316    90
                         nop                                                              // 0x0050e317    90
                         nop                                                              // 0x0050e318    90
                         nop                                                              // 0x0050e319    90
                         nop                                                              // 0x0050e31a    90
                         nop                                                              // 0x0050e31b    90
                         nop                                                              // 0x0050e31c    90
                         nop                                                              // 0x0050e31d    90
                         nop                                                              // 0x0050e31e    90
                         nop                                                              // 0x0050e31f    90
_jmp_addr_0x0050e320:    {disp32} fld       dword ptr [rdata_bytes + 0x2b5e8]             // 0x0050e320    d905e8458d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2b5e4]             // 0x0050e326    d80de4458d00
                         {disp32} fstp      dword ptr [data_bytes + 0x2ffed4]             // 0x0050e32c    d91dd45ecc00
                         ret                                                              // 0x0050e332    c3
                         nop                                                              // 0x0050e333    90
                         nop                                                              // 0x0050e334    90
                         nop                                                              // 0x0050e335    90
                         nop                                                              // 0x0050e336    90
                         nop                                                              // 0x0050e337    90
                         nop                                                              // 0x0050e338    90
                         nop                                                              // 0x0050e339    90
                         nop                                                              // 0x0050e33a    90
                         nop                                                              // 0x0050e33b    90
                         nop                                                              // 0x0050e33c    90
                         nop                                                              // 0x0050e33d    90
                         nop                                                              // 0x0050e33e    90
                         nop                                                              // 0x0050e33f    90
_jmp_addr_0x0050e340:    push               esi                                           // 0x0050e340    56
                         mov.s              esi, ecx                                      // 0x0050e341    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x0050e343    e8c8160600
                         xor.s              eax, eax                                      // 0x0050e348    33c0
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0050e34a    894614
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0050e34d    894618
                         {disp8} mov        dword ptr [esi + 0x30], eax                   // 0x0050e350    894630
                         {disp8} mov        dword ptr [esi + 0x38], eax                   // 0x0050e353    894638
                         {disp8} mov        dword ptr [esi + 0x34], eax                   // 0x0050e356    894634
                         {disp8} mov        dword ptr [esi + 0x3c], 0x00002710            // 0x0050e359    c7463c10270000
                         {disp8} mov        dword ptr [esi + 0x1c], eax                   // 0x0050e360    89461c
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x0050e363    894624
                         {disp8} mov        dword ptr [esi + 0x20], eax                   // 0x0050e366    894620
                         mov                dword ptr [esi], 0x008d45f0                   // 0x0050e369    c706f0458d00
                         mov.s              eax, esi                                      // 0x0050e36f    8bc6
                         pop                esi                                           // 0x0050e371    5e
                         ret                                                              // 0x0050e372    c3
                         nop                                                              // 0x0050e373    90
                         nop                                                              // 0x0050e374    90
                         nop                                                              // 0x0050e375    90
                         nop                                                              // 0x0050e376    90
                         nop                                                              // 0x0050e377    90
                         nop                                                              // 0x0050e378    90
                         nop                                                              // 0x0050e379    90
                         nop                                                              // 0x0050e37a    90
                         nop                                                              // 0x0050e37b    90
                         nop                                                              // 0x0050e37c    90
                         nop                                                              // 0x0050e37d    90
                         nop                                                              // 0x0050e37e    90
                         nop                                                              // 0x0050e37f    90
?GetSaveType@DanceKeyAction@@UAEIXZ:
                         mov                eax, 0x00000079                               // 0x0050e380    b879000000
                         ret                                                              // 0x0050e385    c3
                         nop                                                              // 0x0050e386    90
                         nop                                                              // 0x0050e387    90
                         nop                                                              // 0x0050e388    90
                         nop                                                              // 0x0050e389    90
                         nop                                                              // 0x0050e38a    90
                         nop                                                              // 0x0050e38b    90
                         nop                                                              // 0x0050e38c    90
                         nop                                                              // 0x0050e38d    90
                         nop                                                              // 0x0050e38e    90
                         nop                                                              // 0x0050e38f    90
?GetDebugText@DanceKeyAction@@UAEPADXZ:
                         mov                eax, 0x00be82f0                               // 0x0050e390    b8f082be00
                         ret                                                              // 0x0050e395    c3
                         nop                                                              // 0x0050e396    90
                         nop                                                              // 0x0050e397    90
                         nop                                                              // 0x0050e398    90
                         nop                                                              // 0x0050e399    90
                         nop                                                              // 0x0050e39a    90
                         nop                                                              // 0x0050e39b    90
                         nop                                                              // 0x0050e39c    90
                         nop                                                              // 0x0050e39d    90
                         nop                                                              // 0x0050e39e    90
                         nop                                                              // 0x0050e39f    90
??_GDanceKeyAction@@UAEPAXI@Z:
                         push               edi                                           // 0x0050e3a0    57
                         mov.s              edi, ecx                                      // 0x0050e3a1    8bf9
                         {disp8} mov        eax, dword ptr [edi + 0x14]                   // 0x0050e3a3    8b4714
                         test               eax, eax                                      // 0x0050e3a6    85c0
                         {disp8} je         _jmp_addr_0x0050e3be                          // 0x0050e3a8    7414
                         push               esi                                           // 0x0050e3aa    56
_jmp_addr_0x0050e3ab:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x0050e3ab    8b7004
                         push               eax                                           // 0x0050e3ae    50
                         call               ??3@YAXPAX@Z                                  // 0x0050e3af    e8e40a2a00
                         add                esp, 0x04                                     // 0x0050e3b4    83c404
                         test               esi, esi                                      // 0x0050e3b7    85f6
                         mov.s              eax, esi                                      // 0x0050e3b9    8bc6
                         {disp8} jne        _jmp_addr_0x0050e3ab                          // 0x0050e3bb    75ee
                         pop                esi                                           // 0x0050e3bd    5e
_jmp_addr_0x0050e3be:    mov.s              ecx, edi                                      // 0x0050e3be    8bcf
                         call               _jmp_addr_0x0056fa80                          // 0x0050e3c0    e8bb160600
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0050e3c5    f644240801
                         {disp8} je         _jmp_addr_0x0050e3d7                          // 0x0050e3ca    740b
                         push               0x58                                          // 0x0050e3cc    6a58
                         push               edi                                           // 0x0050e3ce    57
                         call               ??3Base@@SAXPAXK@Z                          // 0x0050e3cf    e89c85f2ff
                         add                esp, 0x08                                     // 0x0050e3d4    83c408
_jmp_addr_0x0050e3d7:    mov.s              eax, edi                                      // 0x0050e3d7    8bc7
                         pop                edi                                           // 0x0050e3d9    5f
                         ret                0x0004                                        // 0x0050e3da    c20400
                         nop                                                              // 0x0050e3dd    90
                         nop                                                              // 0x0050e3de    90
                         nop                                                              // 0x0050e3df    90
_jmp_addr_0x0050e3e0:    push               ebx                                           // 0x0050e3e0    53
                         push               ebp                                           // 0x0050e3e1    55
                         push               esi                                           // 0x0050e3e2    56
                         push               edi                                           // 0x0050e3e3    57
                         mov.s              ebx, ecx                                      // 0x0050e3e4    8bd9
                         call               ??0GameThing@@QAE@XZ                          // 0x0050e3e6    e825160600
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0050e3eb    8b442414
                         xor.s              ebp, ebp                                      // 0x0050e3ef    33ed
                         {disp8} mov        dword ptr [ebx + 0x14], ebp                   // 0x0050e3f1    896b14
                         {disp8} mov        dword ptr [ebx + 0x18], ebp                   // 0x0050e3f4    896b18
                         {disp8} mov        dword ptr [ebx + 0x30], ebp                   // 0x0050e3f7    896b30
                         {disp8} mov        dword ptr [ebx + 0x3c], 0x00002710            // 0x0050e3fa    c7433c10270000
                         {disp8} mov        dword ptr [ebx + 0x38], ebp                   // 0x0050e401    896b38
                         {disp8} mov        dword ptr [ebx + 0x34], ebp                   // 0x0050e404    896b34
                         mov                dword ptr [ebx], 0x008d45f0                   // 0x0050e407    c703f0458d00
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0050e40d    8b4804
                         xor.s              edi, edi                                      // 0x0050e410    33ff
                         cmp.s              ecx, ebp                                      // 0x0050e412    3bcd
                         {disp8} jbe        _jmp_addr_0x0050e464                          // 0x0050e414    764e
_jmp_addr_0x0050e416:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0050e416    8b542414
                         mov                eax, dword ptr [edx]                          // 0x0050e41a    8b02
                         cmp.s              eax, ebp                                      // 0x0050e41c    3bc5
                         mov.s              ecx, edi                                      // 0x0050e41e    8bcf
                         {disp8} je         _jmp_addr_0x0050e42e                          // 0x0050e420    740c
_jmp_addr_0x0050e422:    cmp.s              ecx, ebp                                      // 0x0050e422    3bcd
                         {disp8} je         _jmp_addr_0x0050e448                          // 0x0050e424    7422
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0050e426    8b4004
                         dec                ecx                                           // 0x0050e429    49
                         cmp.s              eax, ebp                                      // 0x0050e42a    3bc5
                         {disp8} jne        _jmp_addr_0x0050e422                          // 0x0050e42c    75f4
_jmp_addr_0x0050e42e:    xor.s              esi, esi                                      // 0x0050e42e    33f6
_jmp_addr_0x0050e430:    push               0x8                                           // 0x0050e430    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0050e432    e8b7802b00
                         add                esp, 0x04                                     // 0x0050e437    83c404
                         cmp.s              eax, ebp                                      // 0x0050e43a    3bc5
                         {disp8} je         _jmp_addr_0x0050e44c                          // 0x0050e43c    740e
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                   // 0x0050e43e    8b4b14
                         mov                dword ptr [eax], esi                          // 0x0050e441    8930
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0050e443    894804
                         {disp8} jmp        _jmp_addr_0x0050e44e                          // 0x0050e446    eb06
_jmp_addr_0x0050e448:    mov                esi, dword ptr [eax]                          // 0x0050e448    8b30
                         {disp8} jmp        _jmp_addr_0x0050e430                          // 0x0050e44a    ebe4
_jmp_addr_0x0050e44c:    xor.s              eax, eax                                      // 0x0050e44c    33c0
_jmp_addr_0x0050e44e:    {disp8} mov        esi, dword ptr [ebx + 0x18]                   // 0x0050e44e    8b7318
                         inc                esi                                           // 0x0050e451    46
                         {disp8} mov        dword ptr [ebx + 0x14], eax                   // 0x0050e452    894314
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0050e455    8b442414
                         {disp8} mov        dword ptr [ebx + 0x18], esi                   // 0x0050e459    897318
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0050e45c    8b4804
                         inc                edi                                           // 0x0050e45f    47
                         cmp.s              edi, ecx                                      // 0x0050e460    3bf9
                         .byte              0x72, 0xb2// {disp8} jb _jmp_addr_0x0050e416  // 0x0050e462    72b2
_jmp_addr_0x0050e464:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0050e464    8b4c2418
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x0050e468    8b74241c
                         {disp8} mov        dword ptr [ebx + 0x1c], ecx                   // 0x0050e46c    894b1c
                         {disp8} lea        edi, dword ptr [ebx + 0x20]                   // 0x0050e46f    8d7b20
                         mov                ecx, 0x0000000e                               // 0x0050e472    b90e000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0050e477    f3a5
                         pop                edi                                           // 0x0050e479    5f
                         pop                esi                                           // 0x0050e47a    5e
                         pop                ebp                                           // 0x0050e47b    5d
                         mov.s              eax, ebx                                      // 0x0050e47c    8bc3
                         pop                ebx                                           // 0x0050e47e    5b
                         ret                0x000c                                        // 0x0050e47f    c20c00
                         nop                                                              // 0x0050e482    90
                         nop                                                              // 0x0050e483    90
                         nop                                                              // 0x0050e484    90
                         nop                                                              // 0x0050e485    90
                         nop                                                              // 0x0050e486    90
                         nop                                                              // 0x0050e487    90
                         nop                                                              // 0x0050e488    90
                         nop                                                              // 0x0050e489    90
                         nop                                                              // 0x0050e48a    90
                         nop                                                              // 0x0050e48b    90
                         nop                                                              // 0x0050e48c    90
                         nop                                                              // 0x0050e48d    90
                         nop                                                              // 0x0050e48e    90
                         nop                                                              // 0x0050e48f    90
                         push               ebx                                           // 0x0050e490    53
                         mov.s              ebx, ecx                                      // 0x0050e491    8bd9
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x0050e493    8b431c
                         push               esi                                           // 0x0050e496    56
                         shl                eax, 6                                        // 0x0050e497    c1e006
                         push               edi                                           // 0x0050e49a    57
                         add                eax, 0x008d2874                               // 0x0050e49b    0574288d00
                         push               eax                                           // 0x0050e4a0    50
                         push               0x00be83b4                                    // 0x0050e4a1    68b483be00
                         push               0x00cc5dd4                                    // 0x0050e4a6    68d45dcc00
                         call               _sprintf                                      // 0x0050e4ab    e822732b00
                         {disp8} mov        esi, dword ptr [ebx + 0x14]                   // 0x0050e4b0    8b7314
                         add                esp, 0x0c                                     // 0x0050e4b3    83c40c
                         test               esi, esi                                      // 0x0050e4b6    85f6
                         {disp8} je         _jmp_addr_0x0050e4e7                          // 0x0050e4b8    742d
_jmp_addr_0x0050e4ba:    mov                ecx, dword ptr [esi]                          // 0x0050e4ba    8b0e
                         push               ecx                                           // 0x0050e4bc    51
                         or                 ecx, 0xffffffff                               // 0x0050e4bd    83c9ff
                         xor.s              eax, eax                                      // 0x0050e4c0    33c0
                         mov                edi, 0x00cc5dd4                               // 0x0050e4c2    bfd45dcc00
                         repne scasb                                                      // 0x0050e4c7    f2ae
                         not                ecx                                           // 0x0050e4c9    f7d1
                         dec                ecx                                           // 0x0050e4cb    49
                         add                ecx, 0x00cc5dd4                               // 0x0050e4cc    81c1d45dcc00
                         push               0x00be83ac                                    // 0x0050e4d2    68ac83be00
                         push               ecx                                           // 0x0050e4d7    51
                         call               _sprintf                                      // 0x0050e4d8    e8f5722b00
                         {disp8} mov        esi, dword ptr [esi + 0x04]                   // 0x0050e4dd    8b7604
                         add                esp, 0x0c                                     // 0x0050e4e0    83c40c
                         test               esi, esi                                      // 0x0050e4e3    85f6
                         {disp8} jne        _jmp_addr_0x0050e4ba                          // 0x0050e4e5    75d3
_jmp_addr_0x0050e4e7:    or                 ecx, 0xffffffff                               // 0x0050e4e7    83c9ff
                         xor.s              eax, eax                                      // 0x0050e4ea    33c0
                         mov                edi, 0x00cc5dd4                               // 0x0050e4ec    bfd45dcc00
                         repne scasb                                                      // 0x0050e4f1    f2ae
                         not                ecx                                           // 0x0050e4f3    f7d1
                         dec                ecx                                           // 0x0050e4f5    49
                         mov.s              edx, ecx                                      // 0x0050e4f6    8bd1
                         or                 ecx, 0xffffffff                               // 0x0050e4f8    83c9ff
                         add                edx, 0x00cc5dd4                               // 0x0050e4fb    81c2d45dcc00
                         mov                edi, 0x00be83a8                               // 0x0050e501    bfa883be00
                         repne scasb                                                      // 0x0050e506    f2ae
                         not                ecx                                           // 0x0050e508    f7d1
                         sub.s              edi, ecx                                      // 0x0050e50a    2bf9
                         mov.s              eax, ecx                                      // 0x0050e50c    8bc1
                         shr                ecx, 2                                        // 0x0050e50e    c1e902
                         mov.s              esi, edi                                      // 0x0050e511    8bf7
                         mov.s              edi, edx                                      // 0x0050e513    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0050e515    f3a5
                         mov.s              ecx, eax                                      // 0x0050e517    8bc8
                         and                ecx, 0x03                                     // 0x0050e519    83e103
                         rep movsb                                                        // 0x0050e51c    f3a4
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x0050e51e    8b431c
                         cmp                eax, 0x17                                     // 0x0050e521    83f817
                         {disp32} ja        _jmp_addr_0x0050e76a                          // 0x0050e524    0f8740020000
                         jmp                dword ptr [eax*4 + 0x50e774]                  // 0x0050e52a    ff248574e75000
                         {disp8} mov        ebx, dword ptr [ebx + 0x20]                   // 0x0050e531    8b5b20
                         mov.s              ecx, ebx                                      // 0x0050e534    8bcb
                         shl                ecx, 5                                        // 0x0050e536    c1e105
                         add.s              ecx, ebx                                      // 0x0050e539    03cb
                         {disp32} lea       edx, dword ptr [ecx * 0x4 + 0x008d47f8]       // 0x0050e53b    8d148df8478d00
                         push               edx                                           // 0x0050e542    52
                         push               0x00bdf378                                    // 0x0050e543    6878f3bd00
                         {disp32} jmp       _jmp_addr_0x0050e70c                          // 0x0050e548    e9bf010000
                         {disp8} fld        dword ptr [ebx + 0x24]                        // 0x0050e54d    d94324
                         sub                esp, 0x08                                     // 0x0050e550    83ec08
                         fstp               qword ptr [esp]                               // 0x0050e553    dd1c24
                         or                 ecx, 0xffffffff                               // 0x0050e556    83c9ff
                         {disp8} fld        dword ptr [ebx + 0x20]                        // 0x0050e559    d94320
                         sub                esp, 0x08                                     // 0x0050e55c    83ec08
                         xor.s              eax, eax                                      // 0x0050e55f    33c0
                         fstp               qword ptr [esp]                               // 0x0050e561    dd1c24
                         mov                edi, 0x00cc5dd4                               // 0x0050e564    bfd45dcc00
                         repne scasb                                                      // 0x0050e569    f2ae
                         not                ecx                                           // 0x0050e56b    f7d1
                         dec                ecx                                           // 0x0050e56d    49
                         add                ecx, 0x00cc5dd4                               // 0x0050e56e    81c1d45dcc00
                         push               0x00be8398                                    // 0x0050e574    689883be00
                         push               ecx                                           // 0x0050e579    51
                         call               _sprintf                                      // 0x0050e57a    e853722b00
                         add                esp, 0x18                                     // 0x0050e57f    83c418
                         pop                edi                                           // 0x0050e582    5f
                         pop                esi                                           // 0x0050e583    5e
                         mov                eax, 0x00cc5dd4                               // 0x0050e584    b8d45dcc00
                         pop                ebx                                           // 0x0050e589    5b
                         ret                                                              // 0x0050e58a    c3
                         {disp8} lea        esi, dword ptr [ebx + 0x30]                   // 0x0050e58b    8d7330
                         mov.s              ecx, esi                                      // 0x0050e58e    8bce
                         call               _jmp_addr_0x0050e7e0                          // 0x0050e590    e84b020000
                         push               eax                                           // 0x0050e595    50
                         mov                eax, dword ptr [esi]                          // 0x0050e596    8b06
                         shl                eax, 6                                        // 0x0050e598    c1e006
                         add                eax, 0x008d2e74                               // 0x0050e59b    05742e8d00
                         push               eax                                           // 0x0050e5a0    50
                         push               0x00be838c                                    // 0x0050e5a1    688c83be00
                         {disp32} jmp       _jmp_addr_0x0050e6ac                          // 0x0050e5a6    e901010000
                         {disp8} mov        eax, dword ptr [ebx + 0x20]                   // 0x0050e5ab    8b4320
                         test               eax, eax                                      // 0x0050e5ae    85c0
                         mov                eax, 0x00be8384                               // 0x0050e5b0    b88483be00
                         {disp8} jne        _jmp_addr_0x0050e5bc                          // 0x0050e5b5    7505
                         mov                eax, 0x00be8378                               // 0x0050e5b7    b87883be00
_jmp_addr_0x0050e5bc:    {disp8} mov        ecx, dword ptr [ebx + 0x28]                   // 0x0050e5bc    8b4b28
                         {disp8} mov        edx, dword ptr [ebx + 0x24]                   // 0x0050e5bf    8b5324
                         push               ecx                                           // 0x0050e5c2    51
                         push               edx                                           // 0x0050e5c3    52
                         push               eax                                           // 0x0050e5c4    50
                         or                 ecx, 0xffffffff                               // 0x0050e5c5    83c9ff
                         xor.s              eax, eax                                      // 0x0050e5c8    33c0
                         mov                edi, 0x00cc5dd4                               // 0x0050e5ca    bfd45dcc00
                         repne scasb                                                      // 0x0050e5cf    f2ae
                         not                ecx                                           // 0x0050e5d1    f7d1
                         dec                ecx                                           // 0x0050e5d3    49
                         add                ecx, 0x00cc5dd4                               // 0x0050e5d4    81c1d45dcc00
                         push               0x00be8354                                    // 0x0050e5da    685483be00
                         push               ecx                                           // 0x0050e5df    51
                         call               _sprintf                                      // 0x0050e5e0    e8ed712b00
                         add                esp, 0x14                                     // 0x0050e5e5    83c414
                         pop                edi                                           // 0x0050e5e8    5f
                         pop                esi                                           // 0x0050e5e9    5e
                         mov                eax, 0x00cc5dd4                               // 0x0050e5ea    b8d45dcc00
                         pop                ebx                                           // 0x0050e5ef    5b
                         ret                                                              // 0x0050e5f0    c3
                         {disp8} mov        eax, dword ptr [ebx + 0x24]                   // 0x0050e5f1    8b4324
                         {disp8} mov        ecx, dword ptr [ebx + 0x20]                   // 0x0050e5f4    8b4b20
                         push               eax                                           // 0x0050e5f7    50
                         push               ecx                                           // 0x0050e5f8    51
                         push               0x00be8348                                    // 0x0050e5f9    684883be00
                         {disp32} jmp       _jmp_addr_0x0050e6ac                          // 0x0050e5fe    e9a9000000
                         {disp8} mov        edx, dword ptr [ebx + 0x20]                   // 0x0050e603    8b5320
                         push               edx                                           // 0x0050e606    52
                         {disp32} jmp       _jmp_addr_0x0050e707                          // 0x0050e607    e9fb000000
                         {disp8} mov        eax, dword ptr [ebx + 0x20]                   // 0x0050e60c    8b4320
                         test               eax, eax                                      // 0x0050e60f    85c0
                         mov                eax, 0x009dd43c                               // 0x0050e611    b83cd49d00
                         {disp8} jne        _jmp_addr_0x0050e61d                          // 0x0050e616    7505
                         mov                eax, 0x009dd434                               // 0x0050e618    b834d49d00
_jmp_addr_0x0050e61d:    push               eax                                           // 0x0050e61d    50
                         push               0x00bdf378                                    // 0x0050e61e    6878f3bd00
                         {disp32} jmp       _jmp_addr_0x0050e70c                          // 0x0050e623    e9e4000000
                         {disp8} fld        dword ptr [ebx + 0x20]                        // 0x0050e628    d94320
                         sub                esp, 0x08                                     // 0x0050e62b    83ec08
                         fstp               qword ptr [esp]                               // 0x0050e62e    dd1c24
                         push               0x00be8340                                    // 0x0050e631    684083be00
                         {disp8} jmp        _jmp_addr_0x0050e6ac                          // 0x0050e636    eb74
                         {disp8} fld        dword ptr [ebx + 0x54]                        // 0x0050e638    d94354
                         sub                esp, 0x08                                     // 0x0050e63b    83ec08
                         fstp               qword ptr [esp]                               // 0x0050e63e    dd1c24
                         sub                esp, 0x08                                     // 0x0050e641    83ec08
                         {disp8} fld        dword ptr [ebx + 0x50]                        // 0x0050e644    d94350
                         sub                esp, 0x08                                     // 0x0050e647    83ec08
                         {disp8} fstp       qword ptr [esp + 0x08]                        // 0x0050e64a    dd5c2408
                         sub                esp, 0x08                                     // 0x0050e64e    83ec08
                         {disp8} fld        dword ptr [ebx + 0x4c]                        // 0x0050e651    d9434c
                         sub                esp, 0x08                                     // 0x0050e654    83ec08
                         {disp8} fstp       qword ptr [esp + 0x10]                        // 0x0050e657    dd5c2410
                         or                 ecx, 0xffffffff                               // 0x0050e65b    83c9ff
                         {disp8} fld        dword ptr [ebx + 0x48]                        // 0x0050e65e    d94348
                         sub                esp, 0x08                                     // 0x0050e661    83ec08
                         {disp8} fstp       qword ptr [esp + 0x10]                        // 0x0050e664    dd5c2410
                         xor.s              eax, eax                                      // 0x0050e668    33c0
                         {disp8} fld        dword ptr [ebx + 0x44]                        // 0x0050e66a    d94344
                         mov                edi, 0x00cc5dd4                               // 0x0050e66d    bfd45dcc00
                         {disp8} fstp       qword ptr [esp + 0x08]                        // 0x0050e672    dd5c2408
                         repne scasb                                                      // 0x0050e676    f2ae
                         {disp8} fld        dword ptr [ebx + 0x40]                        // 0x0050e678    d94340
                         fstp               qword ptr [esp]                               // 0x0050e67b    dd1c24
                         not                ecx                                           // 0x0050e67e    f7d1
                         dec                ecx                                           // 0x0050e680    49
                         add                ecx, 0x00cc5dd4                               // 0x0050e681    81c1d45dcc00
                         push               0x00be8314                                    // 0x0050e687    681483be00
                         push               ecx                                           // 0x0050e68c    51
                         call               _sprintf                                      // 0x0050e68d    e840712b00
                         add                esp, 0x38                                     // 0x0050e692    83c438
                         pop                edi                                           // 0x0050e695    5f
                         pop                esi                                           // 0x0050e696    5e
                         mov                eax, 0x00cc5dd4                               // 0x0050e697    b8d45dcc00
                         pop                ebx                                           // 0x0050e69c    5b
                         ret                                                              // 0x0050e69d    c3
                         {disp8} fld        dword ptr [ebx + 0x20]                        // 0x0050e69e    d94320
                         sub                esp, 0x08                                     // 0x0050e6a1    83ec08
                         fstp               qword ptr [esp]                               // 0x0050e6a4    dd1c24
                         push               0x00be830c                                    // 0x0050e6a7    680c83be00
_jmp_addr_0x0050e6ac:    or                 ecx, 0xffffffff                               // 0x0050e6ac    83c9ff
                         xor.s              eax, eax                                      // 0x0050e6af    33c0
                         mov                edi, 0x00cc5dd4                               // 0x0050e6b1    bfd45dcc00
                         repne scasb                                                      // 0x0050e6b6    f2ae
                         not                ecx                                           // 0x0050e6b8    f7d1
                         dec                ecx                                           // 0x0050e6ba    49
                         add                ecx, 0x00cc5dd4                               // 0x0050e6bb    81c1d45dcc00
                         push               ecx                                           // 0x0050e6c1    51
                         call               _sprintf                                      // 0x0050e6c2    e80b712b00
                         add                esp, 0x10                                     // 0x0050e6c7    83c410
                         pop                edi                                           // 0x0050e6ca    5f
                         pop                esi                                           // 0x0050e6cb    5e
                         mov                eax, 0x00cc5dd4                               // 0x0050e6cc    b8d45dcc00
                         pop                ebx                                           // 0x0050e6d1    5b
                         ret                                                              // 0x0050e6d2    c3
                         {disp8} mov        eax, dword ptr [ebx + 0x20]                   // 0x0050e6d3    8b4320
                         push               eax                                           // 0x0050e6d6    50
                         or                 ecx, 0xffffffff                               // 0x0050e6d7    83c9ff
                         xor.s              eax, eax                                      // 0x0050e6da    33c0
                         mov                edi, 0x00cc5dd4                               // 0x0050e6dc    bfd45dcc00
                         repne scasb                                                      // 0x0050e6e1    f2ae
                         not                ecx                                           // 0x0050e6e3    f7d1
                         dec                ecx                                           // 0x0050e6e5    49
                         add                ecx, 0x00cc5dd4                               // 0x0050e6e6    81c1d45dcc00
                         push               0x00be8304                                    // 0x0050e6ec    680483be00
                         push               ecx                                           // 0x0050e6f1    51
                         call               _sprintf                                      // 0x0050e6f2    e8db702b00
                         add                esp, 0x0c                                     // 0x0050e6f7    83c40c
                         pop                edi                                           // 0x0050e6fa    5f
                         pop                esi                                           // 0x0050e6fb    5e
                         mov                eax, 0x00cc5dd4                               // 0x0050e6fc    b8d45dcc00
                         pop                ebx                                           // 0x0050e701    5b
                         ret                                                              // 0x0050e702    c3
                         {disp8} mov        ecx, dword ptr [ebx + 0x20]                   // 0x0050e703    8b4b20
                         push               ecx                                           // 0x0050e706    51
_jmp_addr_0x0050e707:    push               0x00be8304                                    // 0x0050e707    680483be00
_jmp_addr_0x0050e70c:    or                 ecx, 0xffffffff                               // 0x0050e70c    83c9ff
                         xor.s              eax, eax                                      // 0x0050e70f    33c0
                         mov                edi, 0x00cc5dd4                               // 0x0050e711    bfd45dcc00
                         repne scasb                                                      // 0x0050e716    f2ae
                         not                ecx                                           // 0x0050e718    f7d1
                         dec                ecx                                           // 0x0050e71a    49
                         add                ecx, 0x00cc5dd4                               // 0x0050e71b    81c1d45dcc00
                         push               ecx                                           // 0x0050e721    51
                         call               _sprintf                                      // 0x0050e722    e8ab702b00
                         add                esp, 0x0c                                     // 0x0050e727    83c40c
                         pop                edi                                           // 0x0050e72a    5f
                         pop                esi                                           // 0x0050e72b    5e
                         mov                eax, 0x00cc5dd4                               // 0x0050e72c    b8d45dcc00
                         pop                ebx                                           // 0x0050e731    5b
                         ret                                                              // 0x0050e732    c3
                         {disp8} mov        eax, dword ptr [ebx + 0x20]                   // 0x0050e733    8b4320
                         test               eax, eax                                      // 0x0050e736    85c0
                         mov                eax, 0x009cfdb8                               // 0x0050e738    b8b8fd9c00
                         {disp8} jne        _jmp_addr_0x0050e744                          // 0x0050e73d    7505
                         mov                eax, 0x009cfdb0                               // 0x0050e73f    b8b0fd9c00
_jmp_addr_0x0050e744:    push               eax                                           // 0x0050e744    50
                         {disp8} jmp        _jmp_addr_0x0050e74c                          // 0x0050e745    eb05
                         push               0x00be8300                                    // 0x0050e747    680083be00
_jmp_addr_0x0050e74c:    or                 ecx, 0xffffffff                               // 0x0050e74c    83c9ff
                         xor.s              eax, eax                                      // 0x0050e74f    33c0
                         mov                edi, 0x00cc5dd4                               // 0x0050e751    bfd45dcc00
                         repne scasb                                                      // 0x0050e756    f2ae
                         not                ecx                                           // 0x0050e758    f7d1
                         dec                ecx                                           // 0x0050e75a    49
                         add                ecx, 0x00cc5dd4                               // 0x0050e75b    81c1d45dcc00
                         push               ecx                                           // 0x0050e761    51
                         call               _sprintf                                      // 0x0050e762    e86b702b00
                         add                esp, 0x08                                     // 0x0050e767    83c408
_jmp_addr_0x0050e76a:    pop                edi                                           // 0x0050e76a    5f
                         pop                esi                                           // 0x0050e76b    5e
                         mov                eax, 0x00cc5dd4                               // 0x0050e76c    b8d45dcc00
                         pop                ebx                                           // 0x0050e771    5b
                         ret                                                              // 0x0050e772    c3

// Snippet: db, [0x0050e773, 0x0050e774)
.byte 0x90                        // 0x0050e773

// Snippet: jmptbl, [0x0050e774, 0x0050e7d4)
.byte 0x31, 0xe5, 0x50, 0x00      // 0x0050e774
.byte 0x4d, 0xe5, 0x50, 0x00      // 0x0050e778
.byte 0x28, 0xe6, 0x50, 0x00      // 0x0050e77c
.byte 0x8b, 0xe5, 0x50, 0x00      // 0x0050e780
.byte 0x03, 0xe6, 0x50, 0x00      // 0x0050e784
.byte 0x47, 0xe7, 0x50, 0x00      // 0x0050e788
.byte 0xab, 0xe5, 0x50, 0x00      // 0x0050e78c
.byte 0xf1, 0xe5, 0x50, 0x00      // 0x0050e790
.byte 0x47, 0xe7, 0x50, 0x00      // 0x0050e794
.byte 0x47, 0xe7, 0x50, 0x00      // 0x0050e798
.byte 0x47, 0xe7, 0x50, 0x00      // 0x0050e79c
.byte 0x28, 0xe6, 0x50, 0x00      // 0x0050e7a0
.byte 0x03, 0xe6, 0x50, 0x00      // 0x0050e7a4
.byte 0x03, 0xe6, 0x50, 0x00      // 0x0050e7a8
.byte 0x0c, 0xe6, 0x50, 0x00      // 0x0050e7ac
.byte 0x47, 0xe7, 0x50, 0x00      // 0x0050e7b0
.byte 0x47, 0xe7, 0x50, 0x00      // 0x0050e7b4
.byte 0x03, 0xe6, 0x50, 0x00      // 0x0050e7b8
.byte 0x38, 0xe6, 0x50, 0x00      // 0x0050e7bc
.byte 0x9e, 0xe6, 0x50, 0x00      // 0x0050e7c0
.byte 0x33, 0xe7, 0x50, 0x00      // 0x0050e7c4
.byte 0xd3, 0xe6, 0x50, 0x00      // 0x0050e7c8
.byte 0x03, 0xe7, 0x50, 0x00      // 0x0050e7cc
.byte 0x33, 0xe7, 0x50, 0x00      // 0x0050e7d0

// Snippet: db, [0x0050e7d4, 0x0050e7e0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0050e7d4
.byte 0x90, 0x90, 0x90, 0x90      // 0x0050e7d8
.byte 0x90, 0x90, 0x90, 0x90      // 0x0050e7dc

