.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??0MapCoords@@QAE@XZ
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0047a880
.extern _jmp_addr_0x00480c60
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x00484310
.extern _jmp_addr_0x00484360
.extern _jmp_addr_0x00484830
.extern _jmp_addr_0x004848c0
.extern _jmp_addr_0x004848f0
.extern _jmp_addr_0x00484920
.extern _jmp_addr_0x00484ae0
.extern _jmp_addr_0x00484b00
.extern _jmp_addr_0x004f00e0
.extern _jmp_addr_0x00506d70
.extern _jmp_addr_0x00506e10
.extern _jmp_addr_0x00507000
.extern _jmp_addr_0x0050d460
.extern _jmp_addr_0x0050d600
.extern ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z
.extern @GetLHPoint__9MapCoordsCFv@12
.extern _jmp_addr_0x006e8160
.extern _jmp_addr_0x0074cd50
.extern _jmp_addr_0x0074d360
.extern _jmp_addr_0x0074d380
.extern ?ConvertAngle3DToGame@GUtils@@SAIM@Z
.extern _jmp_addr_0x0074e2b0
.extern _jmp_addr_0x007a1400
.extern ___RTDynamicCast
.extern _jmp_addr_0x007faa50
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

start_0x00504700_0x00504cd0:
// Snippet: asm, [0x00504700, 0x00504c73)
                         sub                esp, 0x44                                     // 0x00504700    83ec44
                         push               ebx                                           // 0x00504703    53
                         push               esi                                           // 0x00504704    56
                         mov.s              esi, ecx                                      // 0x00504705    8bf1
                         push               edi                                           // 0x00504707    57
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00504708    8d4c2420
                         call               ??0MapCoords@@QAE@XZ                          // 0x0050470c    e84fd4f3ff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000d8]             // 0x00504711    8b8ed8000000
                         {disp8} mov        edx, dword ptr [ecx + 0x18]                   // 0x00504717    8b5118
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0050471a    8d442420
                         push               eax                                           // 0x0050471e    50
                         add                edx, 0x14                                     // 0x0050471f    83c214
                         push               edx                                           // 0x00504722    52
                         mov.s              ecx, esi                                      // 0x00504723    8bce
                         call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z                          // 0x00504725    e896b20e00
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0050472a    8d442420
                         push               eax                                           // 0x0050472e    50
                         {disp8} lea        ebx, dword ptr [esi + 0x14]                   // 0x0050472f    8d5e14
                         push               ebx                                           // 0x00504732    53
                         call               _jmp_addr_0x0074cd50                          // 0x00504733    e818862400
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00504738    d95c2418
                         {disp32} mov       ecx, dword ptr [esi + 0x000000d8]             // 0x0050473c    8b8ed8000000
                         {disp8} mov        eax, dword ptr [ecx + 0x5c]                   // 0x00504742    8b415c
                         add                eax, -0x22                                    // 0x00504745    83c0de
                         add                esp, 0x08                                     // 0x00504748    83c408
                         cmp                eax, 0x06                                     // 0x0050474b    83f806
                         {disp8} ja         _jmp_addr_0x0050479e                          // 0x0050474e    774e
                         jmp                dword ptr [eax*4 + 0x504c74]                  // 0x00504750    ff2485744c5000
                         mov.s              ecx, esi                                      // 0x00504757    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00504759    e8f230f7ff
                         mov.s              ecx, eax                                      // 0x0050475e    8bc8
                         call               _jmp_addr_0x00484ae0                          // 0x00504760    e87b03f8ff
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x00504765    8b9660010000
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                   // 0x0050476b    8b4a58
                         call               _jmp_addr_0x004848c0                          // 0x0050476e    e84d01f8ff
                         {disp8} jmp        _jmp_addr_0x005047c8                          // 0x00504773    eb53
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00504775    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x0050477b    8b4858
                         call               _jmp_addr_0x004848f0                          // 0x0050477e    e86d01f8ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00504783    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x00504789    8b4958
                         call               _jmp_addr_0x004848c0                          // 0x0050478c    e82f01f8ff
                         {disp8} jmp        _jmp_addr_0x005047c8                          // 0x00504791    eb35
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x00504793    8b9660010000
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                   // 0x00504799    8b4a58
                         {disp8} jmp        _jmp_addr_0x005047b5                          // 0x0050479c    eb17
_jmp_addr_0x0050479e:    {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x0050479e    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x005047a4    8b4858
                         call               _jmp_addr_0x004848c0                          // 0x005047a7    e81401f8ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x005047ac    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x005047b2    8b4958
_jmp_addr_0x005047b5:    call               _jmp_addr_0x004848f0                          // 0x005047b5    e83601f8ff
                         mov.s              ecx, esi                                      // 0x005047ba    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x005047bc    e88f30f7ff
                         mov.s              ecx, eax                                      // 0x005047c1    8bc8
                         call               _jmp_addr_0x00484ae0                          // 0x005047c3    e81803f8ff
_jmp_addr_0x005047c8:    {disp32} mov       edi, dword ptr [esi + 0x000000d8]             // 0x005047c8    8bbed8000000
                         {disp8} mov        eax, dword ptr [edi + 0x5c]                   // 0x005047ce    8b475c
                         add                eax, -0x1f                                    // 0x005047d1    83c0e1
                         cmp                eax, 0x0b                                     // 0x005047d4    83f80b
                         {disp32} ja        _jmp_addr_0x00504bd4                          // 0x005047d7    0f87f7030000
                         jmp                dword ptr [eax*4 + 0x504c90]                  // 0x005047dd    ff2485904c5000
                         push               ebx                                           // 0x005047e4    53
                         mov.s              ecx, edi                                      // 0x005047e5    8bcf
                         call               _jmp_addr_0x0050d460                          // 0x005047e7    e8748c0000
                         call               _jmp_addr_0x007a1400                          // 0x005047ec    e80fcc2900
                         push               eax                                           // 0x005047f1    50
                         call               _jmp_addr_0x0074e2b0                          // 0x005047f2    e8b99a2400
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005047f7    d95c2410
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005047fb    8b542410
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x005047ff    8b8e60010000
                         add                esp, 0x04                                     // 0x00504805    83c404
                         push               edx                                           // 0x00504808    52
                         call               _jmp_addr_0x004f00e0                          // 0x00504809    e8d2b8feff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x0050480e    e9c1030000
                         push               ebx                                           // 0x00504813    53
                         mov.s              ecx, edi                                      // 0x00504814    8bcf
                         call               _jmp_addr_0x0050d460                          // 0x00504816    e8458c0000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2867c]             // 0x0050481b    d8057c168d00
                         call               _jmp_addr_0x007a1400                          // 0x00504821    e8dacb2900
                         mov.s              ecx, eax                                      // 0x00504826    8bc8
                         and                eax, 0x0000ffff                               // 0x00504828    25ffff0000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0050482d    8944240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00504831    db44240c
                         {disp32} fcom      dword ptr [rdata_bytes + 0x28678]             // 0x00504835    d81578168d00
                         fnstsw             ax                                            // 0x0050483b    dfe0
                         test               ah, 0x41                                      // 0x0050483d    f6c441
                         {disp8} jne        _jmp_addr_0x00504851                          // 0x00504840    750f
                         {disp32} fsub      dword ptr [rdata_bytes + 0x28678]             // 0x00504842    d82578168d00
                         call               _jmp_addr_0x007a1400                          // 0x00504848    e8b3cb2900
                         mov.s              ecx, eax                                      // 0x0050484d    8bc8
                         {disp8} jmp        _jmp_addr_0x00504853                          // 0x0050484f    eb02
_jmp_addr_0x00504851:    fstp               st(0)                                         // 0x00504851    ddd8
_jmp_addr_0x00504853:    push               ecx                                           // 0x00504853    51
                         call               _jmp_addr_0x0074e2b0                          // 0x00504854    e8579a2400
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00504859    d95c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0050485d    8b4c2410
                         add                esp, 0x04                                     // 0x00504861    83c404
                         push               ecx                                           // 0x00504864    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00504865    8b8e60010000
                         call               _jmp_addr_0x004f00e0                          // 0x0050486b    e870b8feff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504870    e95f030000
                         {disp8} mov        ecx, dword ptr [edi + 0x18]                   // 0x00504875    8b4f18
                         mov                edx, dword ptr [ecx]                          // 0x00504878    8b11
                         call               dword ptr [edx + 0x514]                       // 0x0050487a    ff9214050000
                         {disp8} fadd       dword ptr [edi + 0x64]                        // 0x00504880    d84764
                         call               _jmp_addr_0x007a1400                          // 0x00504883    e878cb2900
                         mov.s              ecx, eax                                      // 0x00504888    8bc8
                         and                eax, 0x0000ffff                               // 0x0050488a    25ffff0000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0050488f    8944240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00504893    db44240c
                         {disp32} fcom      dword ptr [__real@40c90fdb]                   // 0x00504897    d81510b28a00
                         fnstsw             ax                                            // 0x0050489d    dfe0
                         test               ah, 0x41                                      // 0x0050489f    f6c441
                         {disp8} jne        _jmp_addr_0x005048b3                          // 0x005048a2    750f
                         {disp32} fsub      dword ptr [__real@40c90fdb]                   // 0x005048a4    d82510b28a00
                         call               _jmp_addr_0x007a1400                          // 0x005048aa    e851cb2900
                         mov.s              ecx, eax                                      // 0x005048af    8bc8
                         {disp8} jmp        _jmp_addr_0x005048b5                          // 0x005048b1    eb02
_jmp_addr_0x005048b3:    fstp               st(0)                                         // 0x005048b3    ddd8
_jmp_addr_0x005048b5:    and                ecx, 0x0000ffff                               // 0x005048b5    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x005048bb    894c240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x005048bf    db44240c
                         push               ecx                                           // 0x005048c3    51
                         fstp               dword ptr [esp]                               // 0x005048c4    d91c24
                         call               ?ConvertAngle3DToGame@GUtils@@SAIM@Z          // 0x005048c7    e864932400
                         push               eax                                           // 0x005048cc    50
                         call               _jmp_addr_0x0074e2b0                          // 0x005048cd    e8de992400
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005048d2    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005048d6    8b4c2414
                         add                esp, 0x08                                     // 0x005048da    83c408
                         push               ecx                                           // 0x005048dd    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x005048de    8b8e60010000
                         call               _jmp_addr_0x004f00e0                          // 0x005048e4    e8f7b7feff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x005048e9    e9e6020000
                         {disp8} mov        edx, dword ptr [edi + 0x18]                   // 0x005048ee    8b5718
                         {disp32} fld       dword ptr [edx + 0x0000009c]                  // 0x005048f1    d9829c000000
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x005048f7    d80d28b28a00
                         call               _jmp_addr_0x007a1400                          // 0x005048fd    e8feca2900
                         push               eax                                           // 0x00504902    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00504903    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00504909    8b4858
                         call               _jmp_addr_0x00484830                          // 0x0050490c    e81ffff7ff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504911    e9be020000
                         {disp8} mov        ecx, dword ptr [edi + 0x60]                   // 0x00504916    8b4f60
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x00504919    8b9660010000
                         push               ecx                                           // 0x0050491f    51
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                   // 0x00504920    8b4a58
                         call               _jmp_addr_0x00484b00                          // 0x00504923    e8d801f8ff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504928    e9a7020000
                         push               0x000000cd                                    // 0x0050492d    68cd000000
                         mov.s              ecx, esi                                      // 0x00504932    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00504934    e8172ff7ff
                         mov.s              ecx, eax                                      // 0x00504939    8bc8
                         call               _jmp_addr_0x00484360                          // 0x0050493b    e820faf7ff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504940    e98f020000
                         {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00504945    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x0050494b    8b4858
                         push               0x000000da                                    // 0x0050494e    68da000000
                         call               _jmp_addr_0x00484b00                          // 0x00504953    e8a801f8ff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504958    e977020000
                         {disp8} mov        ecx, dword ptr [edi + 0x60]                   // 0x0050495d    8b4f60
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x00504960    8b9660010000
                         push               ecx                                           // 0x00504966    51
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                   // 0x00504967    8b4a58
                         call               _jmp_addr_0x00484310                          // 0x0050496a    e8a1f9f7ff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x0050496f    e960020000
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x00504974    8b4760
                         push               eax                                           // 0x00504977    50
                         mov.s              ecx, edi                                      // 0x00504978    8bcf
                         call               _jmp_addr_0x0050d600                          // 0x0050497a    e8818c0000
                         add                eax, 0x1c                                     // 0x0050497f    83c01c
                         mov                eax, dword ptr [eax]                          // 0x00504982    8b00
                         test               eax, eax                                      // 0x00504984    85c0
                         {disp8} je         _jmp_addr_0x0050498d                          // 0x00504986    7405
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00504988    8b4004
                         {disp8} jmp        _jmp_addr_0x0050498f                          // 0x0050498b    eb02
_jmp_addr_0x0050498d:    xor.s              eax, eax                                      // 0x0050498d    33c0
_jmp_addr_0x0050498f:    {disp8} fild       dword ptr [eax + 0x14]                        // 0x0050498f    db4014
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x00504992    c744243000000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x0050499a    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005049a0    d80d1cc48a00
                         fild               dword ptr [ebx]                               // 0x005049a6    db03
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005049a8    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005049ae    d80d1cc48a00
                         fsubp              st(1), st                                     // 0x005049b4    dee9
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005049b6    d95c242c
                         {disp8} fild       dword ptr [eax + 0x18]                        // 0x005049ba    db4018
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x005049bd    8d44242c
                         push               eax                                           // 0x005049c1    50
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005049c2    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005049c8    d80d1cc48a00
                         {disp8} fild       dword ptr [esi + 0x18]                        // 0x005049ce    db4618
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x005049d1    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x005049d7    d80d1cc48a00
                         fsubp              st(1), st                                     // 0x005049dd    dee9
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005049df    d95c2438
                         call               _jmp_addr_0x006e8160                          // 0x005049e3    e878371e00
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x005049e8    d81d2cb28a00
                         add                esp, 0x04                                     // 0x005049ee    83c404
                         fnstsw             ax                                            // 0x005049f1    dfe0
                         test               ah, 0x01                                      // 0x005049f3    f6c401
                         {disp8} je         _jmp_addr_0x00504a04                          // 0x005049f6    740c
                         pop                edi                                           // 0x005049f8    5f
                         pop                esi                                           // 0x005049f9    5e
                         mov                eax, 0x00000002                               // 0x005049fa    b802000000
                         pop                ebx                                           // 0x005049ff    5b
                         add                esp, 0x44                                     // 0x00504a00    83c444
                         ret                                                              // 0x00504a03    c3
_jmp_addr_0x00504a04:    {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00504a04    8d4c242c
                         push               ecx                                           // 0x00504a08    51
                         call               _jmp_addr_0x007faa50                          // 0x00504a09    e842602f00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00504a0e    d95c2410
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x00504a12    8b9660010000
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                   // 0x00504a18    8b4a58
                         add                esp, 0x04                                     // 0x00504a1b    83c404
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00504a1e    e8adf8f7ff
                         test               eax, eax                                      // 0x00504a23    85c0
                         {disp32} jne       _jmp_addr_0x00504bd4                          // 0x00504a25    0f85a9010000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00504a2b    8b44240c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00504a2f    8b8e60010000
                         push               eax                                           // 0x00504a35    50
                         call               _jmp_addr_0x004f00e0                          // 0x00504a36    e8a5b6feff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504a3b    e994010000
                         {disp8} mov        ecx, dword ptr [edi + 0x60]                   // 0x00504a40    8b4f60
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x00504a43    8b9660010000
                         push               0x000007d0                                    // 0x00504a49    68d0070000
                         push               ecx                                           // 0x00504a4e    51
                         {disp8} mov        ecx, dword ptr [edx + 0x58]                   // 0x00504a4f    8b4a58
                         call               _jmp_addr_0x00480c60                          // 0x00504a52    e809c2f7ff
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504a57    e978010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00504a5c    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00001c90]             // 0x00504a62    8b88901c0000
                         cmp                ecx, 0x03                                     // 0x00504a68    83f903
                         {disp32} ja        _jmp_addr_0x00504bd4                          // 0x00504a6b    0f8763010000
                         jmp                dword ptr [ecx*4 + 0x504cc0]                  // 0x00504a71    ff248dc04c5000
                         {disp32} mov       dword ptr [eax + 0x00000fb4], 0x00000000      // 0x00504a78    c780b40f000000000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00504a82    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]             // 0x00504a88    8b88b40f0000
                         {disp32} mov       edx, dword ptr [esi + 0x000000d8]             // 0x00504a8e    8b96d8000000
                         {disp8} mov        edx, dword ptr [edx + 0x60]                   // 0x00504a94    8b5260
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x00504a97    8d0c49
                         shl                ecx, 5                                        // 0x00504a9a    c1e105
                         {disp32} mov       dword ptr [ecx + eax * 0x1 + 0x00000fe0], edx // 0x00504a9d    899401e00f0000
                         mov.s              ecx, esi                                      // 0x00504aa4    8bce
                         call               _jmp_addr_0x00506d70                          // 0x00504aa6    e8c5220000
                         cmp                eax, 0x02                                     // 0x00504aab    83f802
                         {disp32} jne       _jmp_addr_0x00504bd4                          // 0x00504aae    0f8520010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00504ab4    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x00001c90], 0x00000001      // 0x00504aba    c780901c000001000000
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504ac4    e90b010000
                         mov.s              ecx, esi                                      // 0x00504ac9    8bce
                         call               _jmp_addr_0x00506e10                          // 0x00504acb    e840230000
                         cmp                eax, 0x02                                     // 0x00504ad0    83f802
                         {disp32} jne       _jmp_addr_0x00504bd4                          // 0x00504ad3    0f85fb000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00504ad9    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00001c90], eax             // 0x00504adf    8981901c0000
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504ae5    e9ea000000
                         mov.s              ecx, esi                                      // 0x00504aea    8bce
                         call               _jmp_addr_0x00507000                          // 0x00504aec    e80f250000
                         cmp                eax, 0x02                                     // 0x00504af1    83f802
                         {disp8} jne        _jmp_addr_0x00504b06                          // 0x00504af4    7510
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]             // 0x00504af6    8b9664010000
                         {disp32} mov       dword ptr [edx + 0x00001c90], 0x00000003      // 0x00504afc    c782901c000003000000
_jmp_addr_0x00504b06:    {disp32} mov       eax, dword ptr [esi + 0x000000d8]             // 0x00504b06    8b86d8000000
                         {disp8} mov        dword ptr [eax + 0x5c], 0x00000022            // 0x00504b0c    c7405c22000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x00504b13    8b8e64010000
                         {disp32} mov       dword ptr [ecx + 0x00001c90], 0x00000000      // 0x00504b19    c781901c000000000000
                         {disp32} jmp       _jmp_addr_0x00504bd4                          // 0x00504b23    e9ac000000
                         {disp8} fld        dword ptr [edi + 0x64]                        // 0x00504b28    d94764
                         call               _jmp_addr_0x007a1400                          // 0x00504b2b    e8d0c82900
                         mov                edx, dword ptr [ebx]                          // 0x00504b30    8b13
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                   // 0x00504b32    8b4b08
                         push               0x42480000                                    // 0x00504b35    6800004842
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00504b3a    89542418
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00504b3e    894c2420
                         mov.s              edi, eax                                      // 0x00504b42    8bf8
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00504b44    8b4304
                         push               edi                                           // 0x00504b47    57
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00504b48    89442420
                         call               _jmp_addr_0x0074d360                          // 0x00504b4c    e80f882400
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x00504b51    db44241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00504b55    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00504b5b    d80d1cc48a00
                         fadd               st, st(1)                                     // 0x00504b61    d8c1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x00504b63    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x2864c]             // 0x00504b69    d8354c168d00
                         call               _jmp_addr_0x007a1400                          // 0x00504b6f    e88cc82900
                         fstp               st(0)                                         // 0x00504b74    ddd8
                         push               0x42480000                                    // 0x00504b76    6800004842
                         push               edi                                           // 0x00504b7b    57
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00504b7c    89442424
                         call               _jmp_addr_0x0074d380                          // 0x00504b80    e8fb872400
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00504b85    db442428
                         add                esp, 0x10                                     // 0x00504b89    83c410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2864c]             // 0x00504b8c    d80d4c168d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x341c]              // 0x00504b92    d80d1cc48a00
                         fadd               st, st(1)                                     // 0x00504b98    d8c1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x00504b9a    d80d08c48a00
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x2864c]             // 0x00504ba0    d8354c168d00
                         call               _jmp_addr_0x007a1400                          // 0x00504ba6    e855c82900
                         fstp               st(0)                                         // 0x00504bab    ddd8
                         {disp8} lea        edx, dword ptr [esp + 0x44]                   // 0x00504bad    8d542444
                         push               edx                                           // 0x00504bb1    52
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00504bb2    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00504bb6    8944241c
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x00504bba    e881101000
                         push               0x0                                           // 0x00504bbf    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x00504bc1    8d442448
                         push               eax                                           // 0x00504bc5    50
                         mov.s              ecx, esi                                      // 0x00504bc6    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00504bc8    e8832cf7ff
                         mov.s              ecx, eax                                      // 0x00504bcd    8bc8
                         call               _jmp_addr_0x00484920                          // 0x00504bcf    e84cfdf7ff
_jmp_addr_0x00504bd4:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00504bd4    d9442410
                         {disp32} fcomp     dword ptr [__real@3e4ccccd]                   // 0x00504bd8    d81d44b28a00
                         fnstsw             ax                                            // 0x00504bde    dfe0
                         test               ah, 0x41                                      // 0x00504be0    f6c441
                         {disp8} jne        _jmp_addr_0x00504c2f                          // 0x00504be3    754a
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00504be5    8b4c2428
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00504be9    894c2410
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00504bed    8d4c2420
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00504bf1    e89ae42f00
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x00504bf6    d8442410
                         push               0x0                                           // 0x00504bfa    6a00
                         push               0x3dcccccd                                    // 0x00504bfc    68cdcccc3d
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x00504c01    d95c2444
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00504c05    8d542440
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00504c09    db442428
                         push               edx                                           // 0x00504c0d    52
                         push               0x0                                           // 0x00504c0e    6a00
                         mov.s              ecx, esi                                      // 0x00504c10    8bce
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00504c12    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x00504c18    d95c2448
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x00504c1c    db442434
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00504c20    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x00504c26    d95c2450
                         call               _jmp_addr_0x0047a880                          // 0x00504c2a    e8515cf7ff
_jmp_addr_0x00504c2f:    {disp32} mov       eax, dword ptr [esi + 0x000000d8]             // 0x00504c2f    8b86d8000000
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x00504c35    8b4018
                         push               0x0                                           // 0x00504c38    6a00
                         push               0x00be6740                                    // 0x00504c3a    684067be00
                         push               0x00be6720                                    // 0x00504c3f    682067be00
                         push               0x0                                           // 0x00504c44    6a00
                         push               eax                                           // 0x00504c46    50
                         call               ___RTDynamicCast                              // 0x00504c47    e8cd0d2c00
                         add                esp, 0x14                                     // 0x00504c4c    83c414
                         test               eax, eax                                      // 0x00504c4f    85c0
                         {disp8} je         _jmp_addr_0x00504c6a                          // 0x00504c51    7417
                         dec                word ptr [esi + 0x58]                         // 0x00504c53    66ff4e58
                         cmp                word ptr [esi + 0x58], 0x00                   // 0x00504c57    66837e5800
                         {disp8} jne        _jmp_addr_0x00504c6a                          // 0x00504c5c    750c
                         pop                edi                                           // 0x00504c5e    5f
                         pop                esi                                           // 0x00504c5f    5e
                         mov                eax, 0x00000002                               // 0x00504c60    b802000000
                         pop                ebx                                           // 0x00504c65    5b
                         add                esp, 0x44                                     // 0x00504c66    83c444
                         ret                                                              // 0x00504c69    c3
_jmp_addr_0x00504c6a:    pop                edi                                           // 0x00504c6a    5f
                         pop                esi                                           // 0x00504c6b    5e
                         xor.s              eax, eax                                      // 0x00504c6c    33c0
                         pop                ebx                                           // 0x00504c6e    5b
                         add                esp, 0x44                                     // 0x00504c6f    83c444
                         ret                                                              // 0x00504c72    c3

// Snippet: db, [0x00504c73, 0x00504c74)
.byte 0x90                        // 0x00504c73

// Snippet: jmptbl, [0x00504c74, 0x00504cd0)
.byte 0x57, 0x47, 0x50, 0x00      // 0x00504c74
.byte 0x9e, 0x47, 0x50, 0x00      // 0x00504c78
.byte 0x93, 0x47, 0x50, 0x00      // 0x00504c7c
.byte 0x9e, 0x47, 0x50, 0x00      // 0x00504c80
.byte 0x57, 0x47, 0x50, 0x00      // 0x00504c84
.byte 0x75, 0x47, 0x50, 0x00      // 0x00504c88
.byte 0x75, 0x47, 0x50, 0x00      // 0x00504c8c
.byte 0xe4, 0x47, 0x50, 0x00      // 0x00504c90
.byte 0x13, 0x48, 0x50, 0x00      // 0x00504c94
.byte 0x75, 0x48, 0x50, 0x00      // 0x00504c98
.byte 0xee, 0x48, 0x50, 0x00      // 0x00504c9c
.byte 0x16, 0x49, 0x50, 0x00      // 0x00504ca0
.byte 0x5d, 0x49, 0x50, 0x00      // 0x00504ca4
.byte 0x74, 0x49, 0x50, 0x00      // 0x00504ca8
.byte 0x40, 0x4a, 0x50, 0x00      // 0x00504cac
.byte 0x5c, 0x4a, 0x50, 0x00      // 0x00504cb0
.byte 0x28, 0x4b, 0x50, 0x00      // 0x00504cb4
.byte 0x2d, 0x49, 0x50, 0x00      // 0x00504cb8
.byte 0x45, 0x49, 0x50, 0x00      // 0x00504cbc
.byte 0x78, 0x4a, 0x50, 0x00      // 0x00504cc0
.byte 0xc9, 0x4a, 0x50, 0x00      // 0x00504cc4
.byte 0xea, 0x4a, 0x50, 0x00      // 0x00504cc8
.byte 0x06, 0x4b, 0x50, 0x00      // 0x00504ccc

