.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.globl _globl_ct_0x00606240
.globl _jmp_addr_0x00606380
.globl _jmp_addr_0x006063d0
.globl _jmp_addr_0x006065d0
.globl _jmp_addr_0x00606800
.globl _jmp_addr_0x00606870
.globl _jmp_addr_0x00606880
.globl @__ct__4MistFRC9MapCoordsfUlf@24
.globl ?ToBeDeleted@Mist@@UAEXH@Z
.globl ?GetDistanceFromObject@Mist@@UAEMPBUMapCoords@@@Z
.globl ?GetScriptObjectType@Mist@@UAEIXZ
.globl ?Save@Mist@@UAEIAAVGameOSFile@@@Z
.globl ?Load@Mist@@UAEIAAVGameOSFile@@@Z
.globl ?ResolveLoad@Mist@@UAEXXZ

_globl_ct_0x00606240:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00606240    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00606246    b001
                         test               al, cl                                        // 0x00606248    84c8
                         {disp8} jne        .Lbl_addr_0x00606254                          // 0x0060624a    7508
                         or.s               cl, al                                        // 0x0060624c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0060624e    880d34c9fa00
.Lbl_addr_0x00606254:    {disp32} jmp       .Lbl_addr_0x00606260                          // 0x00606254    e907000000
                         nop                                                              // 0x00606259    90
                         nop                                                              // 0x0060625a    90
                         nop                                                              // 0x0060625b    90
                         nop                                                              // 0x0060625c    90
                         nop                                                              // 0x0060625d    90
                         nop                                                              // 0x0060625e    90
                         nop                                                              // 0x0060625f    90
.Lbl_addr_0x00606260:    push               0x00407870                                    // 0x00606260    6870784000
                         call               _atexit                                       // 0x00606265    e827f51b00
                         pop                ecx                                           // 0x0060626a    59
                         ret                                                              // 0x0060626b    c3
                         nop                                                              // 0x0060626c    90
                         nop                                                              // 0x0060626d    90
                         nop                                                              // 0x0060626e    90
                         nop                                                              // 0x0060626f    90
@__ct__4MistFRC9MapCoordsfUlf@24:    push               ebx                                           // 0x00606270    53
                         push               esi                                           // 0x00606271    56
                         push               edi                                           // 0x00606272    57
                         mov.s              esi, ecx                                      // 0x00606273    8bf1
                         call               ??0GameThing@@QAE@XZ                          // 0x00606275    e89697f6ff
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x0060627a    8d7e14
                         mov.s              ecx, edi                                      // 0x0060627d    8bcf
                         call               ??0MapCoords@@QAE@XZ                     // 0x0060627f    e8dcb8e3ff
                         xor.s              ebx, ebx                                      // 0x00606284    33db
                         {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x00606286    895e20
                         mov.s              ecx, esi                                      // 0x00606289    8bce
                         mov                dword ptr [esi], 0x008c31a0                   // 0x0060628b    c706a0318c00
                         call               ?SetToZero@GameThingWithPos@@QAEXXZ           // 0x00606291    e83aa3f6ff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00606296    8b442410
                         mov                ecx, dword ptr [eax]                          // 0x0060629a    8b08
                         mov                dword ptr [edi], ecx                          // 0x0060629c    890f
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0060629e    8b5004
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x006062a1    8b4c2418
                         {disp8} mov        dword ptr [edi + 0x04], edx                   // 0x006062a5    895704
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006062a8    8b4008
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006062ab    8b542414
                         {disp8} mov        dword ptr [edi + 0x08], eax                   // 0x006062af    894708
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x006062b2    8b44241c
                         {disp8} mov        dword ptr [esi + 0x28], ebx                   // 0x006062b6    895e28
                         {disp8} mov        dword ptr [esi + 0x50], ebx                   // 0x006062b9    895e50
                         {disp8} mov        dword ptr [esi + 0x34], eax                   // 0x006062bc    894634
                         {disp8} mov        dword ptr [esi + 0x30], ecx                   // 0x006062bf    894e30
                         mov                dword ptr [esi], 0x008eb640                   // 0x006062c2    c70640b68e00
                         {disp8} mov        dword ptr [esi + 0x2c], edx                   // 0x006062c8    89562c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006062cb    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205c24]             // 0x006062d1    8b91245c2000
                         {disp32} lea       eax, dword ptr [ecx + 0x00205c24]             // 0x006062d7    8d81245c2000
                         {disp8} mov        dword ptr [esi + 0x50], edx                   // 0x006062dd    895650
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x006062e0    8b4804
                         mov                dword ptr [eax], esi                          // 0x006062e3    8930
                         inc                ecx                                           // 0x006062e5    41
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x006062e6    894804
                         {disp8} mov        dword ptr [esi + 0x28], ebx                   // 0x006062e9    895e28
                         and                byte ptr [esi + 0x4c], -0x02                  // 0x006062ec    80664cfe
                         pop                edi                                           // 0x006062f0    5f
                         mov.s              eax, esi                                      // 0x006062f1    8bc6
                         pop                esi                                           // 0x006062f3    5e
                         pop                ebx                                           // 0x006062f4    5b
                         ret                0x0010                                        // 0x006062f5    c21000
                         nop                                                              // 0x006062f8    90
                         nop                                                              // 0x006062f9    90
                         nop                                                              // 0x006062fa    90
                         nop                                                              // 0x006062fb    90
                         nop                                                              // 0x006062fc    90
                         nop                                                              // 0x006062fd    90
                         nop                                                              // 0x006062fe    90
                         nop                                                              // 0x006062ff    90
?ToBeDeleted@Mist@@UAEXH@Z:
                         push               esi                                           // 0x00606300    56
                         mov.s              esi, ecx                                      // 0x00606301    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00606303    8b4e28
                         test               ecx, ecx                                      // 0x00606306    85c9
                         {disp8} je         .Lbl_addr_0x00606316                          // 0x00606308    740c
                         mov                eax, dword ptr [ecx]                          // 0x0060630a    8b01
                         call               dword ptr [eax + 4]                           // 0x0060630c    ff5004
                         {disp8} mov        dword ptr [esi + 0x28], 0x00000000            // 0x0060630f    c7462800000000
.Lbl_addr_0x00606316:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00606316    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205c24]             // 0x0060631c    8b81245c2000
                         cmp.s              eax, esi                                      // 0x00606322    3bc6
                         {disp32} lea       edx, dword ptr [ecx + 0x00205c24]             // 0x00606324    8d91245c2000
                         {disp8} jne        .Lbl_addr_0x00606333                          // 0x0060632a    7507
                         {disp8} mov        eax, dword ptr [esi + 0x50]                   // 0x0060632c    8b4650
                         mov                dword ptr [edx], eax                          // 0x0060632f    8902
                         {disp8} jmp        .Lbl_addr_0x0060635a                          // 0x00606331    eb27
.Lbl_addr_0x00606333:    test               eax, eax                                      // 0x00606333    85c0
                         {disp8} je         .Lbl_addr_0x00606364                          // 0x00606335    742d
.Lbl_addr_0x00606337:    {disp8} mov        ecx, dword ptr [eax + 0x50]                   // 0x00606337    8b4850
                         cmp.s              ecx, esi                                      // 0x0060633a    3bce
                         {disp8} je         .Lbl_addr_0x00606354                          // 0x0060633c    7416
                         mov.s              eax, ecx                                      // 0x0060633e    8bc1
                         test               eax, eax                                      // 0x00606340    85c0
                         {disp8} jne        .Lbl_addr_0x00606337                          // 0x00606342    75f3
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00606344    8b542408
                         push               edx                                           // 0x00606348    52
                         mov.s              ecx, esi                                      // 0x00606349    8bce
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x0060634b    e8b09af6ff
                         pop                esi                                           // 0x00606350    5e
                         ret                0x0004                                        // 0x00606351    c20400
.Lbl_addr_0x00606354:    {disp8} mov        ecx, dword ptr [esi + 0x50]                   // 0x00606354    8b4e50
                         {disp8} mov        dword ptr [eax + 0x50], ecx                   // 0x00606357    894850
.Lbl_addr_0x0060635a:    dec                dword ptr [edx + 0x04]                        // 0x0060635a    ff4a04
                         {disp8} mov        dword ptr [esi + 0x50], 0x00000000            // 0x0060635d    c7465000000000
.Lbl_addr_0x00606364:    {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00606364    8b542408
                         push               edx                                           // 0x00606368    52
                         mov.s              ecx, esi                                      // 0x00606369    8bce
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x0060636b    e8909af6ff
                         pop                esi                                           // 0x00606370    5e
                         ret                0x0004                                        // 0x00606371    c20400
                         nop                                                              // 0x00606374    90
                         nop                                                              // 0x00606375    90
                         nop                                                              // 0x00606376    90
                         nop                                                              // 0x00606377    90
                         nop                                                              // 0x00606378    90
                         nop                                                              // 0x00606379    90
                         nop                                                              // 0x0060637a    90
                         nop                                                              // 0x0060637b    90
                         nop                                                              // 0x0060637c    90
                         nop                                                              // 0x0060637d    90
                         nop                                                              // 0x0060637e    90
                         nop                                                              // 0x0060637f    90
_jmp_addr_0x00606380:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00606380    8b4c2418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00606384    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00606388    8b54240c
                         and                ecx, 0x000000ff                               // 0x0060638c    81e1ff000000
                         shl                ecx, 8                                        // 0x00606392    c1e108
                         push               eax                                           // 0x00606395    50
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00606396    8b442418
                         and                edx, 0x000000ff                               // 0x0060639a    81e2ff000000
                         add.s              ecx, edx                                      // 0x006063a0    03ca
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006063a2    8b542414
                         shl                ecx, 8                                        // 0x006063a6    c1e108
                         and                eax, 0x000000ff                               // 0x006063a9    25ff000000
                         add.s              ecx, eax                                      // 0x006063ae    03c8
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006063b0    8b44240c
                         shl                ecx, 8                                        // 0x006063b4    c1e108
                         and                edx, 0x000000ff                               // 0x006063b7    81e2ff000000
                         add.s              ecx, edx                                      // 0x006063bd    03ca
                         push               ecx                                           // 0x006063bf    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006063c0    8b4c240c
                         push               eax                                           // 0x006063c4    50
                         push               ecx                                           // 0x006063c5    51
                         call               _jmp_addr_0x006063d0                          // 0x006063c6    e805000000
                         add                esp, 0x10                                     // 0x006063cb    83c410
                         ret                                                              // 0x006063ce    c3
                         nop                                                              // 0x006063cf    90
_jmp_addr_0x006063d0:    push               esi                                           // 0x006063d0    56
                         push               edi                                           // 0x006063d1    57
                         push               0x30                                          // 0x006063d2    6a30
                         push               0x00bf41fc                                    // 0x006063d4    68fc41bf00
                         push               0x54                                          // 0x006063d9    6a54
                         call               ??2Base@@SAPAXIPBDI@Z                         // 0x006063db    e81003e3ff
                         add                esp, 0x0c                                     // 0x006063e0    83c40c
                         test               eax, eax                                      // 0x006063e3    85c0
                         {disp8} je         .Lbl_addr_0x00606418                          // 0x006063e5    7431
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x006063e7    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006063eb    8b542414
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x006063ef    8b7c240c
                         push               ecx                                           // 0x006063f3    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006063f4    8b4c2414
                         push               edx                                           // 0x006063f8    52
                         push               ecx                                           // 0x006063f9    51
                         push               edi                                           // 0x006063fa    57
                         mov.s              ecx, eax                                      // 0x006063fb    8bc8
                         call               @__ct__4MistFRC9MapCoordsfUlf@24              // 0x006063fd    e86efeffff
                         mov.s              esi, eax                                      // 0x00606402    8bf0
                         test               esi, esi                                      // 0x00606404    85f6
                         {disp8} je         .Lbl_addr_0x00606413                          // 0x00606406    740b
                         mov                edx, dword ptr [esi]                          // 0x00606408    8b16
                         push               edi                                           // 0x0060640a    57
                         mov.s              ecx, esi                                      // 0x0060640b    8bce
                         call               dword ptr [edx + 0x500]                       // 0x0060640d    ff9200050000
.Lbl_addr_0x00606413:    pop                edi                                           // 0x00606413    5f
                         mov.s              eax, esi                                      // 0x00606414    8bc6
                         pop                esi                                           // 0x00606416    5e
                         ret                                                              // 0x00606417    c3
.Lbl_addr_0x00606418:    pop                edi                                           // 0x00606418    5f
                         xor.s              eax, eax                                      // 0x00606419    33c0
                         pop                esi                                           // 0x0060641b    5e
                         ret                                                              // 0x0060641c    c3
                         nop                                                              // 0x0060641d    90
                         nop                                                              // 0x0060641e    90
                         nop                                                              // 0x0060641f    90
                         sub                esp, 0x10                                     // 0x00606420    83ec10
                         push               esi                                           // 0x00606423    56
                         mov.s              esi, ecx                                      // 0x00606424    8bf1
                         test               byte ptr [esi + 0x0a], 0x01                   // 0x00606426    f6460a01
                         {disp32} jne       .Lbl_addr_0x006064dd                          // 0x0060642a    0f85ad000000
                         mov                ecx, 0x00000007                               // 0x00606430    b907000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x00606435    e896502000
                         test               eax, eax                                      // 0x0060643a    85c0
                         {disp8} mov        dword ptr [esi + 0x28], eax                   // 0x0060643c    894628
                         {disp32} je        .Lbl_addr_0x006064dd                          // 0x0060643f    0f8498000000
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x00606445    8b461c
                         push               edi                                           // 0x00606448    57
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00606449    8d7e14
                         mov.s              ecx, edi                                      // 0x0060644c    8bcf
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0060644e    89442408
                         call               ?GetAltitude@LH3DIsland@@SIMABULH3DMapCoords@@@Z// 0x00606452    e839cc1f00
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x00606457    d8442408
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x0060645b    8b4e28
                         push               0x3f800000                                    // 0x0060645e    680000803f
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00606463    d95c2414
                         push               0x0                                           // 0x00606467    6a00
                         fild               dword ptr [edi]                               // 0x00606469    db07
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0060646b    8d542414
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060646f    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00606475    d95c2414
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00606479    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0060647c    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00606482    d95c241c
                         mov                eax, dword ptr [ecx]                          // 0x00606486    8b01
                         call               dword ptr [eax + 0x20]                        // 0x00606488    ff5020
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x0060648b    8b4e28
                         {disp8} mov        edx, dword ptr [esi + 0x2c]                   // 0x0060648e    8b562c
                         {disp32} mov       dword ptr [ecx + 0x00000088], edx             // 0x00606491    899188000000
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00606497    8b4e28
                         mov                eax, dword ptr [ecx]                          // 0x0060649a    8b01
                         {disp8} mov        edx, dword ptr [esi + 0x30]                   // 0x0060649c    8b5630
                         push               0x0                                           // 0x0060649f    6a00
                         call               dword ptr [eax + 0x2c]                        // 0x006064a1    ff502c
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x006064a4    8b4628
                         or                 dword ptr [eax + 0x80], 1                     // 0x006064a7    83888000000001
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x006064ae    8b4e30
                         {disp8} mov        edx, dword ptr [esi + 0x28]                   // 0x006064b1    8b5628
                         shr                ecx, 0x18                                     // 0x006064b4    c1e918
                         {disp32} mov       dword ptr [edx + 0x00000090], ecx             // 0x006064b7    898a90000000
                         cmp                dword ptr [esi + 0x34], 0x3f800000            // 0x006064bd    817e340000803f
                         pop                edi                                           // 0x006064c4    5f
                         {disp8} je         .Lbl_addr_0x006064dd                          // 0x006064c5    7416
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x006064c7    8b4628
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x006064ca    8b4e34
                         {disp32} mov       dword ptr [eax + 0x0000008c], ecx             // 0x006064cd    89888c000000
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006064d3    8b7628
                         or                 dword ptr [esi + 0x80], 2                     // 0x006064d6    838e8000000002
.Lbl_addr_0x006064dd:    pop                esi                                           // 0x006064dd    5e
                         add                esp, 0x10                                     // 0x006064de    83c410
                         ret                0x0004                                        // 0x006064e1    c20400
                         nop                                                              // 0x006064e4    90
                         nop                                                              // 0x006064e5    90
                         nop                                                              // 0x006064e6    90
                         nop                                                              // 0x006064e7    90
                         nop                                                              // 0x006064e8    90
                         nop                                                              // 0x006064e9    90
                         nop                                                              // 0x006064ea    90
                         nop                                                              // 0x006064eb    90
                         nop                                                              // 0x006064ec    90
                         nop                                                              // 0x006064ed    90
                         nop                                                              // 0x006064ee    90
                         nop                                                              // 0x006064ef    90
.Lbl_addr_0x006064f0:    sub                esp, 0x00000144                               // 0x006064f0    81ec44010000
                         push               ebx                                           // 0x006064f6    53
                         push               esi                                           // 0x006064f7    56
                         mov.s              esi, ecx                                      // 0x006064f8    8bf1
                         call               ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x006064fa    e8f199f6ff
                         mov.s              ebx, eax                                      // 0x006064ff    8bd8
                         test               ebx, ebx                                      // 0x00606501    85db
                         {disp32} je        .Lbl_addr_0x006065b5                          // 0x00606503    0f84ac000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000154]             // 0x00606509    8b842454010000
                         test               eax, eax                                      // 0x00606510    85c0
                         {disp8} je         .Lbl_addr_0x00606524                          // 0x00606512    7410
                         push               eax                                           // 0x00606514    50
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00606515    8d442418
                         push               eax                                           // 0x00606519    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0060651a    8d4e14
                         call               _jmp_addr_0x006055c0                          // 0x0060651d    e89ef0ffff
                         {disp8} jmp        .Lbl_addr_0x00606527                          // 0x00606522    eb03
.Lbl_addr_0x00606524:    {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x00606524    8d4614
.Lbl_addr_0x00606527:    mov                ecx, dword ptr [eax]                          // 0x00606527    8b08
                         {disp8} fld        dword ptr [esi + 0x1c]                        // 0x00606529    d9461c
                         {disp8} fld        dword ptr [esi + 0x34]                        // 0x0060652c    d94634
                         push               edi                                           // 0x0060652f    57
                         sub                esp, 0x08                                     // 0x00606530    83ec08
                         fstp               qword ptr [esp]                               // 0x00606533    dd1c24
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00606536    894c2414
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0060653a    8b5004
                         {disp8} fld        dword ptr [esi + 0x2c]                        // 0x0060653d    d9462c
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x00606540    8b4e30
                         sub                esp, 0x08                                     // 0x00606543    83ec08
                         fstp               qword ptr [esp]                               // 0x00606546    dd1c24
                         push               ecx                                           // 0x00606549    51
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0060654a    89542424
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0060654e    8b4008
                         sub                esp, 0x08                                     // 0x00606551    83ec08
                         {disp32} lea       edx, dword ptr [esp + 0x00000108]             // 0x00606554    8d942408010000
                         fstp               qword ptr [esp]                               // 0x0060655b    dd1c24
                         push               edx                                           // 0x0060655e    52
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x0060655f    8d4c242c
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00606563    89442434
                         call               ?ConvertToText@MapCoords@@QAEPADPAD@Z         // 0x00606567    e814c3ffff
                         push               eax                                           // 0x0060656c    50
                         push               0x0                                           // 0x0060656d    6a00
                         call               ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z                          // 0x0060656f    e8bceb1000
                         add                esp, 0x04                                     // 0x00606574    83c404
                         push               eax                                           // 0x00606577    50
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x00606578    8d442448
                         push               eax                                           // 0x0060657c    50
                         call               _sprintf                                      // 0x0060657d    e850f21b00
                         {disp32} mov       edx, dword ptr [esp + 0x0000017c]             // 0x00606582    8b94247c010000
                         or                 ecx, 0xffffffff                               // 0x00606589    83c9ff
                         xor.s              eax, eax                                      // 0x0060658c    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x4c]                   // 0x0060658e    8d7c244c
                         repne scasb                                                      // 0x00606592    f2ae
                         not                ecx                                           // 0x00606594    f7d1
                         dec                ecx                                           // 0x00606596    49
                         push               ecx                                           // 0x00606597    51
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x00606598    8d4c2450
                         push               ecx                                           // 0x0060659c    51
                         push               edx                                           // 0x0060659d    52
                         push               esi                                           // 0x0060659e    56
                         call               ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z  // 0x0060659f    e86c301100
                         add                esp, 0x38                                     // 0x006065a4    83c438
                         pop                edi                                           // 0x006065a7    5f
                         pop                esi                                           // 0x006065a8    5e
                         mov.s              eax, ebx                                      // 0x006065a9    8bc3
                         pop                ebx                                           // 0x006065ab    5b
                         add                esp, 0x00000144                               // 0x006065ac    81c444010000
                         ret                0x0008                                        // 0x006065b2    c20800
.Lbl_addr_0x006065b5:    pop                esi                                           // 0x006065b5    5e
                         mov.s              eax, ebx                                      // 0x006065b6    8bc3
                         pop                ebx                                           // 0x006065b8    5b
                         add                esp, 0x00000144                               // 0x006065b9    81c444010000
                         ret                0x0008                                        // 0x006065bf    c20800
                         nop                                                              // 0x006065c2    90
                         nop                                                              // 0x006065c3    90
                         nop                                                              // 0x006065c4    90
                         nop                                                              // 0x006065c5    90
                         nop                                                              // 0x006065c6    90
                         nop                                                              // 0x006065c7    90
                         nop                                                              // 0x006065c8    90
                         nop                                                              // 0x006065c9    90
                         nop                                                              // 0x006065ca    90
                         nop                                                              // 0x006065cb    90
                         nop                                                              // 0x006065cc    90
                         nop                                                              // 0x006065cd    90
                         nop                                                              // 0x006065ce    90
                         nop                                                              // 0x006065cf    90
_jmp_addr_0x006065d0:    {disp32} mov       eax, dword ptr [_game]                        // 0x006065d0    a15c19d000
                         push               esi                                           // 0x006065d5    56
                         {disp32} mov       esi, dword ptr [eax + 0x00205c24]             // 0x006065d6    8bb0245c2000
                         test               esi, esi                                      // 0x006065dc    85f6
                         {disp8} je         .Lbl_addr_0x0060660e                          // 0x006065de    742e
                         push               ebx                                           // 0x006065e0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x006065e1    8b5c240c
                         push               edi                                           // 0x006065e5    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x006065e6    8b7c2414
.Lbl_addr_0x006065ea:    push               edi                                           // 0x006065ea    57
                         push               ebx                                           // 0x006065eb    53
                         mov.s              ecx, esi                                      // 0x006065ec    8bce
                         call               .Lbl_addr_0x006064f0                          // 0x006065ee    e8fdfeffff
                         test               esi, esi                                      // 0x006065f3    85f6
                         {disp8} jne        .Lbl_addr_0x00606605                          // 0x006065f5    750e
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006065f7    8b0d5c19d000
                         {disp32} mov       esi, dword ptr [ecx + 0x00205c24]             // 0x006065fd    8bb1245c2000
                         {disp8} jmp        .Lbl_addr_0x00606608                          // 0x00606603    eb03
.Lbl_addr_0x00606605:    {disp8} mov        esi, dword ptr [esi + 0x50]                   // 0x00606605    8b7650
.Lbl_addr_0x00606608:    test               esi, esi                                      // 0x00606608    85f6
                         {disp8} jne        .Lbl_addr_0x006065ea                          // 0x0060660a    75de
                         pop                edi                                           // 0x0060660c    5f
                         pop                ebx                                           // 0x0060660d    5b
.Lbl_addr_0x0060660e:    pop                esi                                           // 0x0060660e    5e
                         ret                                                              // 0x0060660f    c3
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00606610    a15c19d000
                         push               esi                                           // 0x00606615    56
                         {disp32} mov       esi, dword ptr [eax + 0x00205c24]             // 0x00606616    8bb0245c2000
                         test               esi, esi                                      // 0x0060661c    85f6
                         {disp8} je         .Lbl_addr_0x00606658                          // 0x0060661e    7438
                         push               ebx                                           // 0x00606620    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x00606621    8b5c240c
                         push               edi                                           // 0x00606625    57
.Lbl_addr_0x00606626:    test               esi, esi                                      // 0x00606626    85f6
                         {disp8} jne        .Lbl_addr_0x00606638                          // 0x00606628    750e
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0060662a    8b0d5c19d000
                         {disp32} mov       edi, dword ptr [ecx + 0x00205c24]             // 0x00606630    8bb9245c2000
                         {disp8} jmp        .Lbl_addr_0x0060663b                          // 0x00606636    eb03
.Lbl_addr_0x00606638:    {disp8} mov        edi, dword ptr [esi + 0x50]                   // 0x00606638    8b7e50
.Lbl_addr_0x0060663b:    push               ebx                                           // 0x0060663b    53
                         mov.s              ecx, esi                                      // 0x0060663c    8bce
                         call               .Lbl_addr_0x00606700                          // 0x0060663e    e8bd000000
                         test               eax, eax                                      // 0x00606643    85c0
                         {disp8} je         .Lbl_addr_0x00606650                          // 0x00606645    7409
                         mov                edx, dword ptr [esi]                          // 0x00606647    8b16
                         push               0x0                                           // 0x00606649    6a00
                         mov.s              ecx, esi                                      // 0x0060664b    8bce
                         call               dword ptr [edx + 0xc]                         // 0x0060664d    ff520c
.Lbl_addr_0x00606650:    test               edi, edi                                      // 0x00606650    85ff
                         mov.s              esi, edi                                      // 0x00606652    8bf7
                         {disp8} jne        .Lbl_addr_0x00606626                          // 0x00606654    75d0
                         pop                edi                                           // 0x00606656    5f
                         pop                ebx                                           // 0x00606657    5b
.Lbl_addr_0x00606658:    pop                esi                                           // 0x00606658    5e
                         ret                                                              // 0x00606659    c3
                         call               dword ptr [rdata_bytes + 0x984]               // 0x0060665a    ff1584998a00
.Lbl_addr_0x00606660:    push               esi                                           // 0x00606660    56
                         mov.s              esi, ecx                                      // 0x00606661    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00606663    8b4e28
                         mov                eax, dword ptr [ecx]                          // 0x00606666    8b01
                         push               edi                                           // 0x00606668    57
                         call               dword ptr [eax + 0xf8]                        // 0x00606669    ff90f8000000
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x0060666f    8b4e28
                         mov                edx, dword ptr [ecx]                          // 0x00606672    8b11
                         mov.s              edi, eax                                      // 0x00606674    8bf8
                         call               dword ptr [edx + 0xf8]                        // 0x00606676    ff92f8000000
                         {disp8} fld        dword ptr [edi + 0x24]                        // 0x0060667c    d94724
                         {disp8} fld        dword ptr [eax + 0x2c]                        // 0x0060667f    d9402c
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00606682    8b4e28
                         fcompp                                                           // 0x00606685    ded9
                         fnstsw             ax                                            // 0x00606687    dfe0
                         test               ah, 0x01                                      // 0x00606689    f6c401
                         {disp8} je         .Lbl_addr_0x0060669f                          // 0x0060668c    7411
                         mov                eax, dword ptr [ecx]                          // 0x0060668e    8b01
                         call               dword ptr [eax + 0xf8]                        // 0x00606690    ff90f8000000
                         {disp8} fld        dword ptr [eax + 0x24]                        // 0x00606696    d94024
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00606699    d84e2c
                         pop                edi                                           // 0x0060669c    5f
                         pop                esi                                           // 0x0060669d    5e
                         ret                                                              // 0x0060669e    c3
.Lbl_addr_0x0060669f:    mov                edx, dword ptr [ecx]                          // 0x0060669f    8b11
                         call               dword ptr [edx + 0xf8]                        // 0x006066a1    ff92f8000000
                         {disp8} fld        dword ptr [eax + 0x2c]                        // 0x006066a7    d9402c
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x006066aa    d84e2c
                         pop                edi                                           // 0x006066ad    5f
                         pop                esi                                           // 0x006066ae    5e
                         ret                                                              // 0x006066af    c3
                         push               esi                                           // 0x006066b0    56
                         mov.s              esi, ecx                                      // 0x006066b1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x006066b3    8b4e28
                         mov                eax, dword ptr [ecx]                          // 0x006066b6    8b01
                         call               dword ptr [eax + 0xf8]                        // 0x006066b8    ff90f8000000
                         {disp8} fld        dword ptr [eax + 0x28]                        // 0x006066be    d94028
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x006066c1    d84e2c
                         pop                esi                                           // 0x006066c4    5e
                         fadd.s             st(0), st(0)                                  // 0x006066c5    dcc0
                         ret                                                              // 0x006066c7    c3
                         nop                                                              // 0x006066c8    90
                         nop                                                              // 0x006066c9    90
                         nop                                                              // 0x006066ca    90
                         nop                                                              // 0x006066cb    90
                         nop                                                              // 0x006066cc    90
                         nop                                                              // 0x006066cd    90
                         nop                                                              // 0x006066ce    90
                         nop                                                              // 0x006066cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006066d0    8b442404
                         push               eax                                           // 0x006066d4    50
                         call               .Lbl_addr_0x00606730                          // 0x006066d5    e856000000
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x006066da    d85c2408
                         fnstsw             ax                                            // 0x006066de    dfe0
                         test               ah, 0x41                                      // 0x006066e0    f6c441
                         {disp8} je         .Lbl_addr_0x006066ed                          // 0x006066e3    7408
                         mov                eax, 0x00000001                               // 0x006066e5    b801000000
                         ret                0x0008                                        // 0x006066ea    c20800
.Lbl_addr_0x006066ed:    xor.s              eax, eax                                      // 0x006066ed    33c0
                         ret                0x0008                                        // 0x006066ef    c20800
                         nop                                                              // 0x006066f2    90
                         nop                                                              // 0x006066f3    90
                         nop                                                              // 0x006066f4    90
                         nop                                                              // 0x006066f5    90
                         nop                                                              // 0x006066f6    90
                         nop                                                              // 0x006066f7    90
                         nop                                                              // 0x006066f8    90
                         nop                                                              // 0x006066f9    90
                         nop                                                              // 0x006066fa    90
                         nop                                                              // 0x006066fb    90
                         nop                                                              // 0x006066fc    90
                         nop                                                              // 0x006066fd    90
                         nop                                                              // 0x006066fe    90
                         nop                                                              // 0x006066ff    90
.Lbl_addr_0x00606700:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00606700    8b542404
                         mov                eax, dword ptr [ecx]                          // 0x00606704    8b01
                         push               edx                                           // 0x00606706    52
                         call               dword ptr [eax + 0x13c]                       // 0x00606707    ff903c010000
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                   // 0x0060670d    d81d98a38a00
                         fnstsw             ax                                            // 0x00606713    dfe0
                         test               ah, 0x41                                      // 0x00606715    f6c441
                         {disp8} je         .Lbl_addr_0x00606722                          // 0x00606718    7408
                         mov                eax, 0x00000001                               // 0x0060671a    b801000000
                         ret                0x0004                                        // 0x0060671f    c20400
.Lbl_addr_0x00606722:    xor.s              eax, eax                                      // 0x00606722    33c0
                         ret                0x0004                                        // 0x00606724    c20400
                         nop                                                              // 0x00606727    90
                         nop                                                              // 0x00606728    90
                         nop                                                              // 0x00606729    90
                         nop                                                              // 0x0060672a    90
                         nop                                                              // 0x0060672b    90
                         nop                                                              // 0x0060672c    90
                         nop                                                              // 0x0060672d    90
                         nop                                                              // 0x0060672e    90
                         nop                                                              // 0x0060672f    90
.Lbl_addr_0x00606730:    sub                esp, 0x08                                     // 0x00606730    83ec08
                         push               ebx                                           // 0x00606733    53
                         push               esi                                           // 0x00606734    56
                         push               edi                                           // 0x00606735    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00606736    8b7c2418
                         mov.s              ebx, ecx                                      // 0x0060673a    8bd9
                         {disp8} lea        eax, dword ptr [edi + 0x14]                   // 0x0060673c    8d4714
                         push               eax                                           // 0x0060673f    50
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]                   // 0x00606740    8d4b14
                         push               ecx                                           // 0x00606743    51
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x00606744    e827661400
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00606749    d95c2418
                         mov                edx, dword ptr [edi]                          // 0x0060674d    8b17
                         {disp8} mov        esi, dword ptr [edi + 0x40]                   // 0x0060674f    8b7740
                         add                esp, 0x08                                     // 0x00606752    83c408
                         mov.s              ecx, edi                                      // 0x00606755    8bcf
                         call               dword ptr [edx + 0x120]                       // 0x00606757    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0060675d    d95c240c
                         mov                eax, dword ptr [esi]                          // 0x00606761    8b06
                         mov.s              ecx, esi                                      // 0x00606763    8bce
                         call               dword ptr [eax + 0xf8]                        // 0x00606765    ff90f8000000
                         mov                edx, dword ptr [esi]                          // 0x0060676b    8b16
                         mov.s              ecx, esi                                      // 0x0060676d    8bce
                         mov.s              edi, eax                                      // 0x0060676f    8bf8
                         call               dword ptr [edx + 0xf8]                        // 0x00606771    ff92f8000000
                         {disp8} fld        dword ptr [edi + 0x24]                        // 0x00606777    d94724
                         {disp8} fld        dword ptr [eax + 0x2c]                        // 0x0060677a    d9402c
                         fcompp                                                           // 0x0060677d    ded9
                         fnstsw             ax                                            // 0x0060677f    dfe0
                         test               ah, 0x01                                      // 0x00606781    f6c401
                         {disp8} je         .Lbl_addr_0x00606795                          // 0x00606784    740f
                         mov                eax, dword ptr [esi]                          // 0x00606786    8b06
                         mov.s              ecx, esi                                      // 0x00606788    8bce
                         call               dword ptr [eax + 0xf8]                        // 0x0060678a    ff90f8000000
                         {disp8} fld        dword ptr [eax + 0x24]                        // 0x00606790    d94024
                         {disp8} jmp        .Lbl_addr_0x006067a2                          // 0x00606793    eb0d
.Lbl_addr_0x00606795:    mov                edx, dword ptr [esi]                          // 0x00606795    8b16
                         mov.s              ecx, esi                                      // 0x00606797    8bce
                         call               dword ptr [edx + 0xf8]                        // 0x00606799    ff92f8000000
                         {disp8} fld        dword ptr [eax + 0x2c]                        // 0x0060679f    d9402c
.Lbl_addr_0x006067a2:    {disp8} fstp       dword ptr [esp + 0x18]                        // 0x006067a2    d95c2418
                         mov.s              ecx, ebx                                      // 0x006067a6    8bcb
                         call               .Lbl_addr_0x00606660                          // 0x006067a8    e8b3feffff
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x006067ad    d9442418
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x006067b1    d84c240c
                         pop                edi                                           // 0x006067b5    5f
                         pop                esi                                           // 0x006067b6    5e
                         pop                ebx                                           // 0x006067b7    5b
                         faddp              st(1), st                                     // 0x006067b8    dec1
                         {disp8} fsubr      dword ptr [esp + 0x04]                        // 0x006067ba    d86c2404
                         add                esp, 0x08                                     // 0x006067be    83c408
                         ret                0x0004                                        // 0x006067c1    c20400
                         nop                                                              // 0x006067c4    90
                         nop                                                              // 0x006067c5    90
                         nop                                                              // 0x006067c6    90
                         nop                                                              // 0x006067c7    90
                         nop                                                              // 0x006067c8    90
                         nop                                                              // 0x006067c9    90
                         nop                                                              // 0x006067ca    90
                         nop                                                              // 0x006067cb    90
                         nop                                                              // 0x006067cc    90
                         nop                                                              // 0x006067cd    90
                         nop                                                              // 0x006067ce    90
                         nop                                                              // 0x006067cf    90
?GetDistanceFromObject@Mist@@UAEMPBUMapCoords@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006067d0    8b442404
                         push               esi                                           // 0x006067d4    56
                         mov.s              esi, ecx                                      // 0x006067d5    8bf1
                         push               eax                                           // 0x006067d7    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x006067d8    8d4e14
                         push               ecx                                           // 0x006067db    51
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x006067dc    e88f651400
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x006067e1    d95c2410
                         add                esp, 0x08                                     // 0x006067e5    83c408
                         mov.s              ecx, esi                                      // 0x006067e8    8bce
                         call               .Lbl_addr_0x00606660                          // 0x006067ea    e871feffff
                         {disp8} fsubr      dword ptr [esp + 0x08]                        // 0x006067ef    d86c2408
                         pop                esi                                           // 0x006067f3    5e
                         ret                0x0004                                        // 0x006067f4    c20400
                         nop                                                              // 0x006067f7    90
                         nop                                                              // 0x006067f8    90
                         nop                                                              // 0x006067f9    90
                         nop                                                              // 0x006067fa    90
                         nop                                                              // 0x006067fb    90
                         nop                                                              // 0x006067fc    90
                         nop                                                              // 0x006067fd    90
                         nop                                                              // 0x006067fe    90
                         nop                                                              // 0x006067ff    90
_jmp_addr_0x00606800:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x00606800    d9442414
                         push               esi                                           // 0x00606804    56
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x00606805    d80d14b48a00
                         mov.s              esi, ecx                                      // 0x0060680b    8bf1
                         {disp8} mov        al, byte ptr [esi + 0x4c]                     // 0x0060680d    8a464c
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00606810    8b4e28
                         or                 al, 1                                         // 0x00606813    0c01
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x00606815    d95e40
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00606818    d944240c
                         {disp8} mov        byte ptr [esi + 0x4c], al                     // 0x0060681c    88464c
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0060681f    8b442408
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x00606823    89462c
                         mov.s              edx, eax                                      // 0x00606826    8bd0
                         {disp8} mov        dword ptr [esi + 0x44], 0x00000000            // 0x00606828    c7464400000000
                         {disp32} mov       dword ptr [ecx + 0x00000088], edx             // 0x0060682f    899188000000
                         {disp8} fsub       dword ptr [esi + 0x2c]                        // 0x00606835    d8662c
                         {disp8} fdiv       dword ptr [esi + 0x40]                        // 0x00606838    d87640
                         {disp8} fstp       dword ptr [esi + 0x38]                        // 0x0060683b    d95e38
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0060683e    d9442410
                         call               __ftol                                        // 0x00606842    e8b9ab1900
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00606847    d9442414
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0060684b    d8642410
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x0060684f    8b4e28
                         {disp32} mov       dword ptr [ecx + 0x00000090], eax             // 0x00606852    898190000000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00606858    8b542410
                         {disp8} fdiv       dword ptr [esi + 0x40]                        // 0x0060685c    d87640
                         {disp8} mov        dword ptr [esi + 0x48], edx                   // 0x0060685f    895648
                         {disp8} fstp       dword ptr [esi + 0x3c]                        // 0x00606862    d95e3c
                         pop                esi                                           // 0x00606865    5e
                         ret                0x0014                                        // 0x00606866    c21400
                         nop                                                              // 0x00606869    90
                         nop                                                              // 0x0060686a    90
                         nop                                                              // 0x0060686b    90
                         nop                                                              // 0x0060686c    90
                         nop                                                              // 0x0060686d    90
                         nop                                                              // 0x0060686e    90
                         nop                                                              // 0x0060686f    90
_jmp_addr_0x00606870:    {disp8} fld        dword ptr [ecx + 0x44]                        // 0x00606870    d94144
                         {disp8} fdiv       dword ptr [ecx + 0x40]                        // 0x00606873    d87140
                         ret                                                              // 0x00606876    c3
                         nop                                                              // 0x00606877    90
                         nop                                                              // 0x00606878    90
                         nop                                                              // 0x00606879    90
                         nop                                                              // 0x0060687a    90
                         nop                                                              // 0x0060687b    90
                         nop                                                              // 0x0060687c    90
                         nop                                                              // 0x0060687d    90
                         nop                                                              // 0x0060687e    90
                         nop                                                              // 0x0060687f    90
_jmp_addr_0x00606880:    push               esi                                           // 0x00606880    56
                         mov.s              esi, ecx                                      // 0x00606881    8bf1
                         {disp8} mov        cl, byte ptr [esi + 0x4c]                     // 0x00606883    8a4e4c
                         test               cl, 0x01                                      // 0x00606886    f6c101
                         {disp8} je         .Lbl_addr_0x00606902                          // 0x00606889    7477
                         {disp8} fld        dword ptr [esi + 0x44]                        // 0x0060688b    d94644
                         {disp32} fadd      dword ptr [__real@4@3fff8000000000000000]                   // 0x0060688e    d80590a38a00
                         {disp8} fcom       dword ptr [esi + 0x40]                        // 0x00606894    d85640
                         fnstsw             ax                                            // 0x00606897    dfe0
                         test               ah, 0x41                                      // 0x00606899    f6c441
                         {disp8} jne        .Lbl_addr_0x006068a8                          // 0x0060689c    750a
                         and                cl, -0x02                                     // 0x0060689e    80e1fe
                         fstp               st(0)                                         // 0x006068a1    ddd8
                         {disp8} mov        byte ptr [esi + 0x4c], cl                     // 0x006068a3    884e4c
                         pop                esi                                           // 0x006068a6    5e
                         ret                                                              // 0x006068a7    c3
.Lbl_addr_0x006068a8:    {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x006068a8    8b4628
                         {disp8} fstp       dword ptr [esi + 0x44]                        // 0x006068ab    d95e44
                         {disp8} fld        dword ptr [esi + 0x38]                        // 0x006068ae    d94638
                         {disp8} fadd       dword ptr [esi + 0x2c]                        // 0x006068b1    d8462c
                         {disp8} fst        dword ptr [esi + 0x2c]                        // 0x006068b4    d9562c
                         {disp32} fstp      dword ptr [eax + 0x00000088]                  // 0x006068b7    d99888000000
                         {disp8} fld        dword ptr [esi + 0x3c]                        // 0x006068bd    d9463c
                         {disp8} fadd       dword ptr [esi + 0x48]                        // 0x006068c0    d84648
                         {disp8} fst        dword ptr [esi + 0x48]                        // 0x006068c3    d95648
                         {disp32} fcomp     dword ptr [__real@4@00000000000000000000]                   // 0x006068c6    d81d98a38a00
                         fnstsw             ax                                            // 0x006068cc    dfe0
                         test               ah, 0x01                                      // 0x006068ce    f6c401
                         {disp8} je         .Lbl_addr_0x006068da                          // 0x006068d1    7407
                         {disp8} mov        dword ptr [esi + 0x48], 0x00000000            // 0x006068d3    c7464800000000
.Lbl_addr_0x006068da:    {disp8} fld        dword ptr [esi + 0x48]                        // 0x006068da    d94648
                         {disp32} fcomp     dword ptr [__real@437f0000]                   // 0x006068dd    d81d70b28a00
                         fnstsw             ax                                            // 0x006068e3    dfe0
                         test               ah, 0x41                                      // 0x006068e5    f6c441
                         {disp8} jne        .Lbl_addr_0x006068f1                          // 0x006068e8    7507
                         {disp8} mov        dword ptr [esi + 0x48], 0x437f0000            // 0x006068ea    c7464800007f43
.Lbl_addr_0x006068f1:    {disp8} fld        dword ptr [esi + 0x48]                        // 0x006068f1    d94648
                         call               __ftol                                        // 0x006068f4    e807ab1900
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x006068f9    8b4e28
                         {disp32} mov       dword ptr [ecx + 0x00000090], eax             // 0x006068fc    898190000000
.Lbl_addr_0x00606902:    pop                esi                                           // 0x00606902    5e
                         ret                                                              // 0x00606903    c3
                         nop                                                              // 0x00606904    90
                         nop                                                              // 0x00606905    90
                         nop                                                              // 0x00606906    90
                         nop                                                              // 0x00606907    90
                         nop                                                              // 0x00606908    90
                         nop                                                              // 0x00606909    90
                         nop                                                              // 0x0060690a    90
                         nop                                                              // 0x0060690b    90
                         nop                                                              // 0x0060690c    90
                         nop                                                              // 0x0060690d    90
                         nop                                                              // 0x0060690e    90
                         nop                                                              // 0x0060690f    90
?GetScriptObjectType@Mist@@UAEIXZ:
                         mov                eax, 0x0000001d                               // 0x00606910    b81d000000
                         ret                                                              // 0x00606915    c3
                         nop                                                              // 0x00606916    90
                         nop                                                              // 0x00606917    90
                         nop                                                              // 0x00606918    90
                         nop                                                              // 0x00606919    90
                         nop                                                              // 0x0060691a    90
                         nop                                                              // 0x0060691b    90
                         nop                                                              // 0x0060691c    90
                         nop                                                              // 0x0060691d    90
                         nop                                                              // 0x0060691e    90
                         nop                                                              // 0x0060691f    90
?Save@Mist@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00606920    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00606921    8b742408
                         push               edi                                           // 0x00606925    57
                         mov.s              edi, ecx                                      // 0x00606926    8bf9
                         push               esi                                           // 0x00606928    56
                         call               ?Save@GameThingWithPos@@UAEIAAVGameOSFile@@@Z // 0x00606929    e8c29af6ff
                         test               eax, eax                                      // 0x0060692e    85c0
                         {disp32} je        .Lbl_addr_0x006069fa                          // 0x00606930    0f84c4000000
                         {disp32} mov       eax, dword ptr [_DAT_00bec990]                // 0x00606936    a190c9be00
                         test               eax, eax                                      // 0x0060693b    85c0
                         push               ebx                                           // 0x0060693d    53
                         {disp32} je        .Lbl_addr_0x006069ef                          // 0x0060693e    0f84ab000000
                         push               0x0                                           // 0x00606944    6a00
                         push               0x4                                           // 0x00606946    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x2c]                   // 0x00606948    8d5f2c
                         push               ebx                                           // 0x0060694b    53
                         mov.s              ecx, esi                                      // 0x0060694c    8bce
                         call               ?Write@LHOSFile@@QAEIPBXIPAI@Z                  // 0x0060694e    e8cd5f1b00
                         cmp                eax, 0x03                                     // 0x00606953    83f803
                         {disp8} jne        .Lbl_addr_0x00606962                          // 0x00606956    750a
                         {disp32} mov       dword ptr [_DAT_00bec990], 0x00000000         // 0x00606958    c70590c9be0000000000
.Lbl_addr_0x00606962:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00606962    8b8e14020000
                         xor.s              eax, eax                                      // 0x00606968    33c0
                         mov                al, byte ptr [ebx]                            // 0x0060696a    8a03
                         add                eax, 0x04                                     // 0x0060696c    83c004
                         add.s              ecx, eax                                      // 0x0060696f    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00606971    898e14020000
                         {disp32} mov       eax, dword ptr [_DAT_00bec990]                // 0x00606977    a190c9be00
                         test               eax, eax                                      // 0x0060697c    85c0
                         {disp8} je         .Lbl_addr_0x006069ef                          // 0x0060697e    746f
                         push               0x0                                           // 0x00606980    6a00
                         push               0x4                                           // 0x00606982    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x30]                   // 0x00606984    8d5f30
                         push               ebx                                           // 0x00606987    53
                         mov.s              ecx, esi                                      // 0x00606988    8bce
                         call               ?Write@LHOSFile@@QAEIPBXIPAI@Z                  // 0x0060698a    e8915f1b00
                         cmp                eax, 0x03                                     // 0x0060698f    83f803
                         {disp8} jne        .Lbl_addr_0x0060699e                          // 0x00606992    750a
                         {disp32} mov       dword ptr [_DAT_00bec990], 0x00000000         // 0x00606994    c70590c9be0000000000
.Lbl_addr_0x0060699e:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0060699e    8b9614020000
                         xor.s              ecx, ecx                                      // 0x006069a4    33c9
                         mov                cl, byte ptr [ebx]                            // 0x006069a6    8a0b
                         add                ecx, 0x4                                      // 0x006069a8    83c104
                         add.s              edx, ecx                                      // 0x006069ab    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x006069ad    899614020000
                         {disp32} mov       eax, dword ptr [_DAT_00bec990]                // 0x006069b3    a190c9be00
                         test               eax, eax                                      // 0x006069b8    85c0
                         {disp8} je         .Lbl_addr_0x006069ef                          // 0x006069ba    7433
                         push               0x0                                           // 0x006069bc    6a00
                         push               0x4                                           // 0x006069be    6a04
                         add                edi, 0x34                                     // 0x006069c0    83c734
                         push               edi                                           // 0x006069c3    57
                         mov.s              ecx, esi                                      // 0x006069c4    8bce
                         call               ?Write@LHOSFile@@QAEIPBXIPAI@Z                  // 0x006069c6    e8555f1b00
                         cmp                eax, 0x03                                     // 0x006069cb    83f803
                         {disp8} jne        .Lbl_addr_0x006069da                          // 0x006069ce    750a
                         {disp32} mov       dword ptr [_DAT_00bec990], 0x00000000         // 0x006069d0    c70590c9be0000000000
.Lbl_addr_0x006069da:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x006069da    8b8614020000
                         xor.s              edx, edx                                      // 0x006069e0    33d2
                         mov                dl, byte ptr [edi]                            // 0x006069e2    8a17
                         add                edx, 0x04                                     // 0x006069e4    83c204
                         add.s              eax, edx                                      // 0x006069e7    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x006069e9    898614020000
.Lbl_addr_0x006069ef:    pop                ebx                                           // 0x006069ef    5b
                         pop                edi                                           // 0x006069f0    5f
                         mov                eax, 0x00000001                               // 0x006069f1    b801000000
                         pop                esi                                           // 0x006069f6    5e
                         ret                0x0004                                        // 0x006069f7    c20400
.Lbl_addr_0x006069fa:    pop                edi                                           // 0x006069fa    5f
                         xor.s              eax, eax                                      // 0x006069fb    33c0
                         pop                esi                                           // 0x006069fd    5e
                         ret                0x0004                                        // 0x006069fe    c20400
                         nop                                                              // 0x00606a01    90
                         nop                                                              // 0x00606a02    90
                         nop                                                              // 0x00606a03    90
                         nop                                                              // 0x00606a04    90
                         nop                                                              // 0x00606a05    90
                         nop                                                              // 0x00606a06    90
                         nop                                                              // 0x00606a07    90
                         nop                                                              // 0x00606a08    90
                         nop                                                              // 0x00606a09    90
                         nop                                                              // 0x00606a0a    90
                         nop                                                              // 0x00606a0b    90
                         nop                                                              // 0x00606a0c    90
                         nop                                                              // 0x00606a0d    90
                         nop                                                              // 0x00606a0e    90
                         nop                                                              // 0x00606a0f    90
?Load@Mist@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x00606a10    53
                         push               esi                                           // 0x00606a11    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00606a12    8b74240c
                         mov.s              ebx, ecx                                      // 0x00606a16    8bd9
                         push               esi                                           // 0x00606a18    56
                         call               ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z // 0x00606a19    e8829af6ff
                         test               eax, eax                                      // 0x00606a1e    85c0
                         {disp32} je        .Lbl_addr_0x00606ae6                          // 0x00606a20    0f84c0000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00606a26    a194c9be00
                         test               eax, eax                                      // 0x00606a2b    85c0
                         push               edi                                           // 0x00606a2d    57
                         {disp8} lea        edi, dword ptr [ebx + 0x2c]                   // 0x00606a2e    8d7b2c
                         {disp8} je         .Lbl_addr_0x00606a63                          // 0x00606a31    7430
                         push               0x0                                           // 0x00606a33    6a00
                         push               0x4                                           // 0x00606a35    6a04
                         push               edi                                           // 0x00606a37    57
                         mov.s              ecx, esi                                      // 0x00606a38    8bce
                         call               ?Read@LHOSFile@@QAEIPAXIPAI@Z                   // 0x00606a3a    e8a15e1b00
                         cmp                eax, 0x03                                     // 0x00606a3f    83f803
                         {disp8} jne        .Lbl_addr_0x00606a4e                          // 0x00606a42    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00606a44    c70594c9be0000000000
.Lbl_addr_0x00606a4e:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00606a4e    8b8e14020000
                         xor.s              eax, eax                                      // 0x00606a54    33c0
                         mov                al, byte ptr [edi]                            // 0x00606a56    8a07
                         add                eax, 0x04                                     // 0x00606a58    83c004
                         add.s              ecx, eax                                      // 0x00606a5b    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00606a5d    898e14020000
.Lbl_addr_0x00606a63:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00606a63    a194c9be00
                         test               eax, eax                                      // 0x00606a68    85c0
                         {disp8} lea        edi, dword ptr [ebx + 0x30]                   // 0x00606a6a    8d7b30
                         {disp8} je         .Lbl_addr_0x00606a9f                          // 0x00606a6d    7430
                         push               0x0                                           // 0x00606a6f    6a00
                         push               0x4                                           // 0x00606a71    6a04
                         push               edi                                           // 0x00606a73    57
                         mov.s              ecx, esi                                      // 0x00606a74    8bce
                         call               ?Read@LHOSFile@@QAEIPAXIPAI@Z                   // 0x00606a76    e8655e1b00
                         cmp                eax, 0x03                                     // 0x00606a7b    83f803
                         {disp8} jne        .Lbl_addr_0x00606a8a                          // 0x00606a7e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00606a80    c70594c9be0000000000
.Lbl_addr_0x00606a8a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x00606a8a    8b8614020000
                         xor.s              ecx, ecx                                      // 0x00606a90    33c9
                         mov                cl, byte ptr [edi]                            // 0x00606a92    8a0f
                         add                ecx, 0x4                                      // 0x00606a94    83c104
                         add.s              eax, ecx                                      // 0x00606a97    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00606a99    898614020000
.Lbl_addr_0x00606a9f:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00606a9f    a194c9be00
                         test               eax, eax                                      // 0x00606aa4    85c0
                         {disp8} lea        edi, dword ptr [ebx + 0x34]                   // 0x00606aa6    8d7b34
                         {disp8} je         .Lbl_addr_0x00606adb                          // 0x00606aa9    7430
                         push               0x0                                           // 0x00606aab    6a00
                         push               0x4                                           // 0x00606aad    6a04
                         push               edi                                           // 0x00606aaf    57
                         mov.s              ecx, esi                                      // 0x00606ab0    8bce
                         call               ?Read@LHOSFile@@QAEIPAXIPAI@Z                   // 0x00606ab2    e8295e1b00
                         cmp                eax, 0x03                                     // 0x00606ab7    83f803
                         {disp8} jne        .Lbl_addr_0x00606ac6                          // 0x00606aba    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00606abc    c70594c9be0000000000
.Lbl_addr_0x00606ac6:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x00606ac6    8b8614020000
                         xor.s              edx, edx                                      // 0x00606acc    33d2
                         mov                dl, byte ptr [edi]                            // 0x00606ace    8a17
                         add                edx, 0x04                                     // 0x00606ad0    83c204
                         add.s              eax, edx                                      // 0x00606ad3    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00606ad5    898614020000
.Lbl_addr_0x00606adb:    pop                edi                                           // 0x00606adb    5f
                         pop                esi                                           // 0x00606adc    5e
                         mov                eax, 0x00000001                               // 0x00606add    b801000000
                         pop                ebx                                           // 0x00606ae2    5b
                         ret                0x0004                                        // 0x00606ae3    c20400
.Lbl_addr_0x00606ae6:    pop                esi                                           // 0x00606ae6    5e
                         xor.s              eax, eax                                      // 0x00606ae7    33c0
                         pop                ebx                                           // 0x00606ae9    5b
                         ret                0x0004                                        // 0x00606aea    c20400
                         nop                                                              // 0x00606aed    90
                         nop                                                              // 0x00606aee    90
                         nop                                                              // 0x00606aef    90
?ResolveLoad@Mist@@UAEXXZ:
                         mov                eax, dword ptr [ecx]                          // 0x00606af0    8b01
                         {disp8} lea        edx, dword ptr [ecx + 0x14]                   // 0x00606af2    8d5114
                         push               edx                                           // 0x00606af5    52
                         call               dword ptr [eax + 0x500]                       // 0x00606af6    ff9000050000
                         ret                                                              // 0x00606afc    c3
                         nop                                                              // 0x00606afd    90
                         nop                                                              // 0x00606afe    90
                         nop                                                              // 0x00606aff    90
