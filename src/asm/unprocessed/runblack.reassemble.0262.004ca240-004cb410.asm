.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004c9fe0
.extern _jmp_addr_0x004cb410
.extern _jmp_addr_0x004e1e20
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x005c6740
.extern _StartScript__7GScriptFPc@4
.extern _jmp_addr_0x006f69f0
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern ??2@YAPAXI@Z
.extern ___nw__FUl

.globl _jmp_addr_0x004ca240
.globl _jmp_addr_0x004ca290
.globl _jmp_addr_0x004ca340
.globl _jmp_addr_0x004ca490
.globl _jmp_addr_0x004ca580
.globl _jmp_addr_0x004ca600
.globl _jmp_addr_0x004ca670
.globl @__ct__22CreatureHelpStackEntryFUlP16GameThingWithPosRC9MapCoords@20
.globl _globl_ct_0x004cb340
.globl _globl_ct_0x004cb370
.globl _globl_ct_0x004cb3a0
.globl _jmp_addr_0x004cb3c0

start_0x004ca240_0x004cb410:
// Snippet: asm, [0x004ca240, 0x004cb3f3)
_jmp_addr_0x004ca240:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004ca240    8b442404
                         lea                edx, dword ptr [eax + eax * 0x8]              // 0x004ca244    8d14c0
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x004ca247    8d0490
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x004ca24a    8b542408
                         push               edx                                           // 0x004ca24e    52
                         push               ecx                                           // 0x004ca24f    51
                         call               dword ptr [eax*8 + data_bytes + 0x13cac]      // 0x004ca250    ff14c5ac9c9d00
                         add                esp, 0x08                                     // 0x004ca257    83c408
                         ret                0x0010                                        // 0x004ca25a    c21000
                         nop                                                              // 0x004ca25d    90
                         nop                                                              // 0x004ca25e    90
                         nop                                                              // 0x004ca25f    90
                         push               esi                                           // 0x004ca260    56
                         add                ecx, 0x00000220                               // 0x004ca261    81c120020000
                         push               edi                                           // 0x004ca267    57
                         mov                edx, 0x0000002a                               // 0x004ca268    ba2a000000
                         xor.s              esi, esi                                      // 0x004ca26d    33f6
_jmp_addr_0x004ca26f:    mov                eax, dword ptr [ecx]                          // 0x004ca26f    8b01
                         cmp.s              eax, esi                                      // 0x004ca271    3bc6
                         {disp8} je         _jmp_addr_0x004ca281                          // 0x004ca273    740c
_jmp_addr_0x004ca275:    {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x004ca275    8b7804
                         {disp8} mov        dword ptr [edi + 0x14], esi                   // 0x004ca278    897714
                         mov                eax, dword ptr [eax]                          // 0x004ca27b    8b00
                         cmp.s              eax, esi                                      // 0x004ca27d    3bc6
                         {disp8} jne        _jmp_addr_0x004ca275                          // 0x004ca27f    75f4
_jmp_addr_0x004ca281:    add                ecx, 0x8                                      // 0x004ca281    83c108
                         dec                edx                                           // 0x004ca284    4a
                         {disp8} jne        _jmp_addr_0x004ca26f                          // 0x004ca285    75e8
                         pop                edi                                           // 0x004ca287    5f
                         pop                esi                                           // 0x004ca288    5e
                         ret                                                              // 0x004ca289    c3
                         call               dword ptr [__imp__ShellExecuteA@4]            // 0x004ca28a    ff15ac978a00
_jmp_addr_0x004ca290:    sub                esp, 0x08                                     // 0x004ca290    83ec08
                         push               esi                                           // 0x004ca293    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004ca294    8b742410
                         {disp32} mov       eax, dword ptr [ecx + esi * 0x8 + 0x00000220] // 0x004ca298    8b84f120020000
                         test               eax, eax                                      // 0x004ca29f    85c0
                         push               edi                                           // 0x004ca2a1    57
                         {disp32} je        _jmp_addr_0x004ca32f                          // 0x004ca2a2    0f8487000000
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x004ca2a8    8b542418
_jmp_addr_0x004ca2ac:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x004ca2ac    8b4804
                         cmp                dword ptr [ecx], edx                          // 0x004ca2af    3911
                         {disp8} je         _jmp_addr_0x004ca2c6                          // 0x004ca2b1    7413
                         mov                eax, dword ptr [eax]                          // 0x004ca2b3    8b00
                         test               eax, eax                                      // 0x004ca2b5    85c0
                         {disp8} jne        _jmp_addr_0x004ca2ac                          // 0x004ca2b7    75f3
                         pop                edi                                           // 0x004ca2b9    5f
                         mov                eax, 0x00000001                               // 0x004ca2ba    b801000000
                         pop                esi                                           // 0x004ca2bf    5e
                         add                esp, 0x08                                     // 0x004ca2c0    83c408
                         ret                0x0008                                        // 0x004ca2c3    c20800
_jmp_addr_0x004ca2c6:    {disp32} mov       eax, dword ptr [_game]                        // 0x004ca2c6    a15c19d000
                         {disp32} mov       edi, dword ptr [eax + 0x00205a40]             // 0x004ca2cb    8bb8405a2000
                         xor.s              edx, edx                                      // 0x004ca2d1    33d2
                         mov                eax, 0x000003e8                               // 0x004ca2d3    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x004ca2d8    f735381ad000
                         {disp8} mov        ecx, dword ptr [ecx + 0x14]                   // 0x004ca2de    8b4914
                         push               ebx                                           // 0x004ca2e1    53
                         sub.s              edi, ecx                                      // 0x004ca2e2    2bf9
                         xor.s              edx, edx                                      // 0x004ca2e4    33d2
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x004ca2e6    c744241000000000
                         mov.s              ebx, eax                                      // 0x004ca2ee    8bd8
                         mov.s              eax, edi                                      // 0x004ca2f0    8bc7
                         div                ebx                                           // 0x004ca2f2    f7f3
                         cmp                esi, 0x29                                     // 0x004ca2f4    83fe29
                         pop                ebx                                           // 0x004ca2f7    5b
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x004ca2f8    89442408
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x004ca2fc    df6c2408
                         {disp8} jne        _jmp_addr_0x004ca30a                          // 0x004ca300    7508
                         {disp32} fld       dword ptr [rdata_bytes + 0x26e4]              // 0x004ca302    d905e4b68a00
                         {disp8} jmp        _jmp_addr_0x004ca310                          // 0x004ca308    eb06
_jmp_addr_0x004ca30a:    {disp32} fld       dword ptr [rdata_bytes + 0x1a6a8]             // 0x004ca30a    d905a8368c00
_jmp_addr_0x004ca310:    test               ecx, ecx                                      // 0x004ca310    85c9
                         {disp8} je         _jmp_addr_0x004ca32b                          // 0x004ca312    7417
                         fxch               st(1)                                         // 0x004ca314    d9c9
                         fcomp              st(1)                                         // 0x004ca316    d8d9
                         fnstsw             ax                                            // 0x004ca318    dfe0
                         fstp               st(0)                                         // 0x004ca31a    ddd8
                         test               ah, 0x01                                      // 0x004ca31c    f6c401
                         {disp8} je         _jmp_addr_0x004ca32f                          // 0x004ca31f    740e
                         pop                edi                                           // 0x004ca321    5f
                         xor.s              eax, eax                                      // 0x004ca322    33c0
                         pop                esi                                           // 0x004ca324    5e
                         add                esp, 0x08                                     // 0x004ca325    83c408
                         ret                0x0008                                        // 0x004ca328    c20800
_jmp_addr_0x004ca32b:    fstp               st(0)                                         // 0x004ca32b    ddd8
                         fstp               st(0)                                         // 0x004ca32d    ddd8
_jmp_addr_0x004ca32f:    pop                edi                                           // 0x004ca32f    5f
                         mov                eax, 0x00000001                               // 0x004ca330    b801000000
                         pop                esi                                           // 0x004ca335    5e
                         add                esp, 0x08                                     // 0x004ca336    83c408
                         ret                0x0008                                        // 0x004ca339    c20800
                         nop                                                              // 0x004ca33c    90
                         nop                                                              // 0x004ca33d    90
                         nop                                                              // 0x004ca33e    90
                         nop                                                              // 0x004ca33f    90
_jmp_addr_0x004ca340:    sub                esp, 0x08                                     // 0x004ca340    83ec08
                         push               ebx                                           // 0x004ca343    53
                         push               ebp                                           // 0x004ca344    55
                         push               esi                                           // 0x004ca345    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x004ca346    8b742418
                         mov.s              ebx, ecx                                      // 0x004ca34a    8bd9
                         {disp32} mov       eax, dword ptr [ebx + esi * 0x8 + 0x00000220] // 0x004ca34c    8b84f320020000
                         test               eax, eax                                      // 0x004ca353    85c0
                         push               edi                                           // 0x004ca355    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x004ca356    8b7c2420
                         {disp8} je         _jmp_addr_0x004ca37a                          // 0x004ca35a    741e
_jmp_addr_0x004ca35c:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x004ca35c    8b4804
                         cmp                dword ptr [ecx], edi                          // 0x004ca35f    3939
                         {disp8} je         _jmp_addr_0x004ca3af                          // 0x004ca361    744c
                         lea                edx, dword ptr [esi + esi * 0x8]              // 0x004ca363    8d14f6
                         lea                edx, dword ptr [esi + edx * 0x4]              // 0x004ca366    8d1496
                         {disp32} mov       ebp, dword ptr [edx * 0x8 + 0x009d9ccc]       // 0x004ca369    8b2cd5cc9c9d00
                         test               ebp, ebp                                      // 0x004ca370    85ed
                         {disp8} jne        _jmp_addr_0x004ca3af                          // 0x004ca372    753b
                         mov                eax, dword ptr [eax]                          // 0x004ca374    8b00
                         test               eax, eax                                      // 0x004ca376    85c0
                         {disp8} jne        _jmp_addr_0x004ca35c                          // 0x004ca378    75e2
_jmp_addr_0x004ca37a:    push               0x0000019b                                    // 0x004ca37a    689b010000
                         push               0x009dd060                                    // 0x004ca37f    6860d09d00
                         push               0x1c                                          // 0x004ca384    6a1c
                         call               ___nw__FUl                                    // 0x004ca386    e805143100
                         add                esp, 0x0c                                     // 0x004ca38b    83c40c
                         test               eax, eax                                      // 0x004ca38e    85c0
                         {disp32} je        _jmp_addr_0x004ca42f                          // 0x004ca390    0f8499000000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x004ca396    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x004ca39a    8b542424
                         push               ecx                                           // 0x004ca39e    51
                         push               edx                                           // 0x004ca39f    52
                         push               edi                                           // 0x004ca3a0    57
                         mov.s              ecx, eax                                      // 0x004ca3a1    8bc8
                         call               @__ct__22CreatureHelpStackEntryFUlP16GameThingWithPosRC9MapCoords@20                          // 0x004ca3a3    e848030000
                         mov.s              edi, eax                                      // 0x004ca3a8    8bf8
                         {disp32} jmp       _jmp_addr_0x004ca431                          // 0x004ca3aa    e982000000
_jmp_addr_0x004ca3af:    {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x004ca3af    8b4114
                         test               eax, eax                                      // 0x004ca3b2    85c0
                         {disp8} je         _jmp_addr_0x004ca3fa                          // 0x004ca3b4    7444
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004ca3b6    8b155c19d000
                         {disp32} mov       esi, dword ptr [edx + 0x00205a40]             // 0x004ca3bc    8bb2405a2000
                         sub.s              esi, eax                                      // 0x004ca3c2    2bf0
                         xor.s              edx, edx                                      // 0x004ca3c4    33d2
                         mov                eax, 0x000003e8                               // 0x004ca3c6    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]             // 0x004ca3cb    f735381ad000
                         xor.s              edx, edx                                      // 0x004ca3d1    33d2
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x004ca3d3    c744241400000000
                         mov.s              ebx, eax                                      // 0x004ca3db    8bd8
                         mov.s              eax, esi                                      // 0x004ca3dd    8bc6
                         div                ebx                                           // 0x004ca3df    f7f3
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x004ca3e1    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x004ca3e5    df6c2410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1a6a8]             // 0x004ca3e9    d81da8368c00
                         fnstsw             ax                                            // 0x004ca3ef    dfe0
                         test               ah, 0x41                                      // 0x004ca3f1    f6c441
                         {disp32} jne       _jmp_addr_0x004ca47f                          // 0x004ca3f4    0f8585000000
_jmp_addr_0x004ca3fa:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x004ca3fa    8b442424
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x004ca3fe    894104
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x004ca401    8b442428
                         test               eax, eax                                      // 0x004ca405    85c0
                         mov                dword ptr [ecx], edi                          // 0x004ca407    8939
                         {disp8} je         _jmp_addr_0x004ca41e                          // 0x004ca409    7413
                         mov                esi, dword ptr [eax]                          // 0x004ca40b    8b30
                         {disp8} lea        edx, dword ptr [ecx + 0x08]                   // 0x004ca40d    8d5108
                         mov                dword ptr [edx], esi                          // 0x004ca410    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x004ca412    8b7004
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x004ca415    897204
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x004ca418    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x004ca41b    894208
_jmp_addr_0x004ca41e:    pop                edi                                           // 0x004ca41e    5f
                         pop                esi                                           // 0x004ca41f    5e
                         pop                ebp                                           // 0x004ca420    5d
                         {disp8} mov        dword ptr [ecx + 0x18], 0x00000001            // 0x004ca421    c7411801000000
                         pop                ebx                                           // 0x004ca428    5b
                         add                esp, 0x08                                     // 0x004ca429    83c408
                         ret                0x0010                                        // 0x004ca42c    c21000
_jmp_addr_0x004ca42f:    xor.s              edi, edi                                      // 0x004ca42f    33ff
_jmp_addr_0x004ca431:    test               edi, edi                                      // 0x004ca431    85ff
                         {disp8} je         _jmp_addr_0x004ca47f                          // 0x004ca433    744a
                         push               0x8                                           // 0x004ca435    6a08
                         call               ??2@YAPAXI@Z                                  // 0x004ca437    e8b2c02f00
                         add                esp, 0x04                                     // 0x004ca43c    83c404
                         test               eax, eax                                      // 0x004ca43f    85c0
                         {disp8} je         _jmp_addr_0x004ca47f                          // 0x004ca441    743c
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x004ca443    897804
                         mov                dword ptr [eax], 0x00000000                   // 0x004ca446    c70000000000
                         {disp32} mov       ecx, dword ptr [ebx + esi * 0x8 + 0x00000220] // 0x004ca44c    8b8cf320020000
                         test               ecx, ecx                                      // 0x004ca453    85c9
                         {disp8} je         _jmp_addr_0x004ca467                          // 0x004ca455    7410
_jmp_addr_0x004ca457:    mov.s              edx, ecx                                      // 0x004ca457    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x004ca459    8b09
                         test               ecx, ecx                                      // 0x004ca45b    85c9
                         {disp8} jne        _jmp_addr_0x004ca457                          // 0x004ca45d    75f8
                         test               edx, edx                                      // 0x004ca45f    85d2
                         {disp8} je         _jmp_addr_0x004ca467                          // 0x004ca461    7404
                         mov                dword ptr [edx], eax                          // 0x004ca463    8902
                         {disp8} jmp        _jmp_addr_0x004ca46e                          // 0x004ca465    eb07
_jmp_addr_0x004ca467:    {disp32} mov       dword ptr [ebx + esi * 0x8 + 0x00000220], eax // 0x004ca467    8984f320020000
_jmp_addr_0x004ca46e:    {disp32} mov       ecx, dword ptr [ebx + esi * 0x8 + 0x00000224] // 0x004ca46e    8b8cf324020000
                         {disp32} lea       eax, dword ptr [ebx + esi * 0x8 + 0x00000224] // 0x004ca475    8d84f324020000
                         inc                ecx                                           // 0x004ca47c    41
                         mov                dword ptr [eax], ecx                          // 0x004ca47d    8908
_jmp_addr_0x004ca47f:    pop                edi                                           // 0x004ca47f    5f
                         pop                esi                                           // 0x004ca480    5e
                         pop                ebp                                           // 0x004ca481    5d
                         pop                ebx                                           // 0x004ca482    5b
                         add                esp, 0x08                                     // 0x004ca483    83c408
                         ret                0x0010                                        // 0x004ca486    c21000
                         nop                                                              // 0x004ca489    90
                         nop                                                              // 0x004ca48a    90
                         nop                                                              // 0x004ca48b    90
                         nop                                                              // 0x004ca48c    90
                         nop                                                              // 0x004ca48d    90
                         nop                                                              // 0x004ca48e    90
                         nop                                                              // 0x004ca48f    90
_jmp_addr_0x004ca490:    push               ebx                                           // 0x004ca490    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x004ca491    8b5c2408
                         push               esi                                           // 0x004ca495    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004ca496    8b742410
                         push               edi                                           // 0x004ca49a    57
                         mov.s              edi, ecx                                      // 0x004ca49b    8bf9
                         {disp32} mov       eax, dword ptr [edi + ebx * 0x8 + 0x00000220] // 0x004ca49d    8b84df20020000
                         test               eax, eax                                      // 0x004ca4a4    85c0
                         {disp8} je         _jmp_addr_0x004ca4b5                          // 0x004ca4a6    740d
_jmp_addr_0x004ca4a8:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x004ca4a8    8b4804
                         cmp                dword ptr [ecx], esi                          // 0x004ca4ab    3931
                         {disp8} je         _jmp_addr_0x004ca4dd                          // 0x004ca4ad    742e
                         mov                eax, dword ptr [eax]                          // 0x004ca4af    8b00
                         test               eax, eax                                      // 0x004ca4b1    85c0
                         {disp8} jne        _jmp_addr_0x004ca4a8                          // 0x004ca4b3    75f3
_jmp_addr_0x004ca4b5:    push               0x000001ac                                    // 0x004ca4b5    68ac010000
                         push               0x009dd060                                    // 0x004ca4ba    6860d09d00
                         push               0x1c                                          // 0x004ca4bf    6a1c
                         call               ___nw__FUl                                    // 0x004ca4c1    e8ca123100
                         add                esp, 0x0c                                     // 0x004ca4c6    83c40c
                         test               eax, eax                                      // 0x004ca4c9    85c0
                         {disp8} je         _jmp_addr_0x004ca4f8                          // 0x004ca4cb    742b
                         push               0x0                                           // 0x004ca4cd    6a00
                         push               0x0                                           // 0x004ca4cf    6a00
                         push               esi                                           // 0x004ca4d1    56
                         mov.s              ecx, eax                                      // 0x004ca4d2    8bc8
                         call               @__ct__22CreatureHelpStackEntryFUlP16GameThingWithPosRC9MapCoords@20                          // 0x004ca4d4    e817020000
                         mov.s              esi, eax                                      // 0x004ca4d9    8bf0
                         {disp8} jmp        _jmp_addr_0x004ca4fa                          // 0x004ca4db    eb1d
_jmp_addr_0x004ca4dd:    {disp32} mov       eax, dword ptr [_game]                        // 0x004ca4dd    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00205a40]             // 0x004ca4e2    8b90405a2000
                         pop                edi                                           // 0x004ca4e8    5f
                         pop                esi                                           // 0x004ca4e9    5e
                         {disp8} mov        dword ptr [ecx + 0x14], edx                   // 0x004ca4ea    895114
                         {disp8} mov        dword ptr [ecx + 0x18], 0x00000000            // 0x004ca4ed    c7411800000000
                         pop                ebx                                           // 0x004ca4f4    5b
                         ret                0x0008                                        // 0x004ca4f5    c20800
_jmp_addr_0x004ca4f8:    xor.s              esi, esi                                      // 0x004ca4f8    33f6
_jmp_addr_0x004ca4fa:    test               esi, esi                                      // 0x004ca4fa    85f6
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004ca4fc    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x004ca501    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x004ca507    894e14
                         {disp8} mov        dword ptr [esi + 0x18], 0x00000000            // 0x004ca50a    c7461800000000
                         {disp8} je         _jmp_addr_0x004ca572                          // 0x004ca511    745f
                         push               0x8                                           // 0x004ca513    6a08
                         call               ??2@YAPAXI@Z                                  // 0x004ca515    e8d4bf2f00
                         add                esp, 0x04                                     // 0x004ca51a    83c404
                         test               eax, eax                                      // 0x004ca51d    85c0
                         {disp8} je         _jmp_addr_0x004ca572                          // 0x004ca51f    7451
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x004ca521    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x004ca524    c70000000000
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x8 + 0x00000220] // 0x004ca52a    8b8cdf20020000
                         test               ecx, ecx                                      // 0x004ca531    85c9
                         {disp8} je         _jmp_addr_0x004ca55a                          // 0x004ca533    7425
_jmp_addr_0x004ca535:    mov.s              edx, ecx                                      // 0x004ca535    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x004ca537    8b09
                         test               ecx, ecx                                      // 0x004ca539    85c9
                         {disp8} jne        _jmp_addr_0x004ca535                          // 0x004ca53b    75f8
                         test               edx, edx                                      // 0x004ca53d    85d2
                         {disp8} je         _jmp_addr_0x004ca55a                          // 0x004ca53f    7419
                         mov                dword ptr [edx], eax                          // 0x004ca541    8902
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x8 + 0x00000224] // 0x004ca543    8b8cdf24020000
                         {disp32} lea       eax, dword ptr [edi + ebx * 0x8 + 0x00000224] // 0x004ca54a    8d84df24020000
                         pop                edi                                           // 0x004ca551    5f
                         inc                ecx                                           // 0x004ca552    41
                         pop                esi                                           // 0x004ca553    5e
                         mov                dword ptr [eax], ecx                          // 0x004ca554    8908
                         pop                ebx                                           // 0x004ca556    5b
                         ret                0x0008                                        // 0x004ca557    c20800
_jmp_addr_0x004ca55a:    {disp32} mov       ecx, dword ptr [edi + ebx * 0x8 + 0x00000224] // 0x004ca55a    8b8cdf24020000
                         {disp32} mov       dword ptr [edi + ebx * 0x8 + 0x00000220], eax // 0x004ca561    8984df20020000
                         {disp32} lea       eax, dword ptr [edi + ebx * 0x8 + 0x00000224] // 0x004ca568    8d84df24020000
                         inc                ecx                                           // 0x004ca56f    41
                         mov                dword ptr [eax], ecx                          // 0x004ca570    8908
_jmp_addr_0x004ca572:    pop                edi                                           // 0x004ca572    5f
                         pop                esi                                           // 0x004ca573    5e
                         pop                ebx                                           // 0x004ca574    5b
                         ret                0x0008                                        // 0x004ca575    c20800
                         nop                                                              // 0x004ca578    90
                         nop                                                              // 0x004ca579    90
                         nop                                                              // 0x004ca57a    90
                         nop                                                              // 0x004ca57b    90
                         nop                                                              // 0x004ca57c    90
                         nop                                                              // 0x004ca57d    90
                         nop                                                              // 0x004ca57e    90
                         nop                                                              // 0x004ca57f    90
_jmp_addr_0x004ca580:    push               ebx                                           // 0x004ca580    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x004ca581    8b5c2408
                         push               ebp                                           // 0x004ca585    55
                         push               esi                                           // 0x004ca586    56
                         push               edi                                           // 0x004ca587    57
                         mov.s              edi, ecx                                      // 0x004ca588    8bf9
_jmp_addr_0x004ca58a:    {disp32} mov       eax, dword ptr [edi + ebx * 0x8 + 0x00000220] // 0x004ca58a    8b84df20020000
                         test               eax, eax                                      // 0x004ca591    85c0
                         {disp8} je         _jmp_addr_0x004ca5f3                          // 0x004ca593    745e
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x004ca595    8b4804
                         xor.s              ebp, ebp                                      // 0x004ca598    33ed
                         test               eax, eax                                      // 0x004ca59a    85c0
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x004ca59c    894c2414
                         {disp8} je         _jmp_addr_0x004ca5e4                          // 0x004ca5a0    7442
_jmp_addr_0x004ca5a2:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x004ca5a2    8b542414
                         cmp                dword ptr [eax + 0x04], edx                   // 0x004ca5a6    395004
                         mov                esi, dword ptr [eax]                          // 0x004ca5a9    8b30
                         {disp8} jne        _jmp_addr_0x004ca5dc                          // 0x004ca5ab    752f
                         cmp                eax, dword ptr [edi + ebx * 0x8 + 0x00000220] // 0x004ca5ad    3b84df20020000
                         {disp8} jne        _jmp_addr_0x004ca5bf                          // 0x004ca5b4    7509
                         {disp32} mov       dword ptr [edi + ebx * 0x8 + 0x00000220], esi // 0x004ca5b6    89b4df20020000
                         {disp8} jmp        _jmp_addr_0x004ca5c2                          // 0x004ca5bd    eb03
_jmp_addr_0x004ca5bf:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x004ca5bf    897500
_jmp_addr_0x004ca5c2:    {disp32} mov       edx, dword ptr [edi + ebx * 0x8 + 0x00000224] // 0x004ca5c2    8b94df24020000
                         dec                edx                                           // 0x004ca5c9    4a
                         push               eax                                           // 0x004ca5ca    50
                         {disp32} mov       dword ptr [edi + ebx * 0x8 + 0x00000224], edx // 0x004ca5cb    8994df24020000
                         call               ??3@YAXPAX@Z                                  // 0x004ca5d2    e8c1482e00
                         add                esp, 0x04                                     // 0x004ca5d7    83c404
                         {disp8} jmp        _jmp_addr_0x004ca5de                          // 0x004ca5da    eb02
_jmp_addr_0x004ca5dc:    mov.s              ebp, eax                                      // 0x004ca5dc    8be8
_jmp_addr_0x004ca5de:    test               esi, esi                                      // 0x004ca5de    85f6
                         mov.s              eax, esi                                      // 0x004ca5e0    8bc6
                         {disp8} jne        _jmp_addr_0x004ca5a2                          // 0x004ca5e2    75be
_jmp_addr_0x004ca5e4:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ca5e4    8b442414
                         push               eax                                           // 0x004ca5e8    50
                         call               ??3@YAXPAX@Z                                  // 0x004ca5e9    e8aa482e00
                         add                esp, 0x04                                     // 0x004ca5ee    83c404
                         {disp8} jmp        _jmp_addr_0x004ca58a                          // 0x004ca5f1    eb97
_jmp_addr_0x004ca5f3:    pop                edi                                           // 0x004ca5f3    5f
                         pop                esi                                           // 0x004ca5f4    5e
                         pop                ebp                                           // 0x004ca5f5    5d
                         pop                ebx                                           // 0x004ca5f6    5b
                         ret                0x0004                                        // 0x004ca5f7    c20400
                         call               dword ptr [rdata_bytes + 0x9a0]               // 0x004ca5fa    ff15a0998a00
_jmp_addr_0x004ca600:    push               ecx                                           // 0x004ca600    51
                         push               ebx                                           // 0x004ca601    53
                         push               ebp                                           // 0x004ca602    55
                         push               esi                                           // 0x004ca603    56
                         push               edi                                           // 0x004ca604    57
                         mov.s              edi, ecx                                      // 0x004ca605    8bf9
                         {disp8} mov        dword ptr [esp + 0x10], 0x0000002a            // 0x004ca607    c74424102a000000
_jmp_addr_0x004ca60f:    mov                eax, dword ptr [edi]                          // 0x004ca60f    8b07
                         test               eax, eax                                      // 0x004ca611    85c0
                         {disp8} je         _jmp_addr_0x004ca654                          // 0x004ca613    743f
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x004ca615    8b6804
                         xor.s              ebx, ebx                                      // 0x004ca618    33db
                         test               eax, eax                                      // 0x004ca61a    85c0
                         {disp8} je         _jmp_addr_0x004ca649                          // 0x004ca61c    742b
_jmp_addr_0x004ca61e:    cmp                dword ptr [eax + 0x04], ebp                   // 0x004ca61e    396804
                         mov                esi, dword ptr [eax]                          // 0x004ca621    8b30
                         {disp8} jne        _jmp_addr_0x004ca641                          // 0x004ca623    751c
                         cmp                eax, dword ptr [edi]                          // 0x004ca625    3b07
                         {disp8} jne        _jmp_addr_0x004ca62d                          // 0x004ca627    7504
                         mov                dword ptr [edi], esi                          // 0x004ca629    8937
                         {disp8} jmp        _jmp_addr_0x004ca62f                          // 0x004ca62b    eb02
_jmp_addr_0x004ca62d:    mov                dword ptr [ebx], esi                          // 0x004ca62d    8933
_jmp_addr_0x004ca62f:    {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x004ca62f    8b5704
                         dec                edx                                           // 0x004ca632    4a
                         push               eax                                           // 0x004ca633    50
                         {disp8} mov        dword ptr [edi + 0x04], edx                   // 0x004ca634    895704
                         call               ??3@YAXPAX@Z                                  // 0x004ca637    e85c482e00
                         add                esp, 0x04                                     // 0x004ca63c    83c404
                         {disp8} jmp        _jmp_addr_0x004ca643                          // 0x004ca63f    eb02
_jmp_addr_0x004ca641:    mov.s              ebx, eax                                      // 0x004ca641    8bd8
_jmp_addr_0x004ca643:    test               esi, esi                                      // 0x004ca643    85f6
                         mov.s              eax, esi                                      // 0x004ca645    8bc6
                         {disp8} jne        _jmp_addr_0x004ca61e                          // 0x004ca647    75d5
_jmp_addr_0x004ca649:    push               ebp                                           // 0x004ca649    55
                         call               ??3@YAXPAX@Z                                  // 0x004ca64a    e849482e00
                         add                esp, 0x04                                     // 0x004ca64f    83c404
                         {disp8} jmp        _jmp_addr_0x004ca60f                          // 0x004ca652    ebbb
_jmp_addr_0x004ca654:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ca654    8b442410
                         add                edi, 0x08                                     // 0x004ca658    83c708
                         dec                eax                                           // 0x004ca65b    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x004ca65c    89442410
                         {disp8} jne        _jmp_addr_0x004ca60f                          // 0x004ca660    75ad
                         pop                edi                                           // 0x004ca662    5f
                         pop                esi                                           // 0x004ca663    5e
                         pop                ebp                                           // 0x004ca664    5d
                         pop                ebx                                           // 0x004ca665    5b
                         pop                ecx                                           // 0x004ca666    59
                         ret                                                              // 0x004ca667    c3
                         nop                                                              // 0x004ca668    90
                         nop                                                              // 0x004ca669    90
                         nop                                                              // 0x004ca66a    90
                         nop                                                              // 0x004ca66b    90
                         nop                                                              // 0x004ca66c    90
                         nop                                                              // 0x004ca66d    90
                         nop                                                              // 0x004ca66e    90
                         nop                                                              // 0x004ca66f    90
_jmp_addr_0x004ca670:    {disp32} mov       eax, dword ptr [_game]                        // 0x004ca670    a15c19d000
                         push               ebx                                           // 0x004ca675    53
                         push               esi                                           // 0x004ca676    56
                         push               edi                                           // 0x004ca677    57
                         mov.s              edi, ecx                                      // 0x004ca678    8bf9
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x004ca67a    8b885c002500
                         call               _jmp_addr_0x005c6740                          // 0x004ca680    e8bbc00f00
                         test               eax, eax                                      // 0x004ca685    85c0
                         {disp8} jne        _jmp_addr_0x004ca6de                          // 0x004ca687    7555
                         xor.s              ecx, ecx                                      // 0x004ca689    33c9
                         {disp32} lea       edx, dword ptr [edi + 0x00000220]             // 0x004ca68b    8d9720020000
_jmp_addr_0x004ca691:    mov                eax, dword ptr [edx]                          // 0x004ca691    8b02
                         test               eax, eax                                      // 0x004ca693    85c0
                         {disp8} je         _jmp_addr_0x004ca6a7                          // 0x004ca695    7410
_jmp_addr_0x004ca697:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x004ca697    8b7004
                         {disp8} mov        ebx, dword ptr [esi + 0x18]                   // 0x004ca69a    8b5e18
                         test               ebx, ebx                                      // 0x004ca69d    85db
                         {disp8} jne        _jmp_addr_0x004ca6b4                          // 0x004ca69f    7513
                         mov                eax, dword ptr [eax]                          // 0x004ca6a1    8b00
                         test               eax, eax                                      // 0x004ca6a3    85c0
                         {disp8} jne        _jmp_addr_0x004ca697                          // 0x004ca6a5    75f0
_jmp_addr_0x004ca6a7:    inc                ecx                                           // 0x004ca6a7    41
                         add                edx, 0x08                                     // 0x004ca6a8    83c208
                         cmp                ecx, 0x2a                                     // 0x004ca6ab    83f92a
                         .byte              0x72, 0xe1// {disp8} jb _jmp_addr_0x004ca691  // 0x004ca6ae    72e1
                         pop                edi                                           // 0x004ca6b0    5f
                         pop                esi                                           // 0x004ca6b1    5e
                         pop                ebx                                           // 0x004ca6b2    5b
                         ret                                                              // 0x004ca6b3    c3
_jmp_addr_0x004ca6b4:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x004ca6b4    8b4604
                         push               0x0                                           // 0x004ca6b7    6a00
                         {disp8} lea        edx, dword ptr [esi + 0x08]                   // 0x004ca6b9    8d5608
                         push               edx                                           // 0x004ca6bc    52
                         mov                edx, dword ptr [esi]                          // 0x004ca6bd    8b16
                         push               eax                                           // 0x004ca6bf    50
                         push               edx                                           // 0x004ca6c0    52
                         push               ecx                                           // 0x004ca6c1    51
                         mov.s              ecx, edi                                      // 0x004ca6c2    8bcf
                         call               _jmp_addr_0x004c9fe0                          // 0x004ca6c4    e817f9ffff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004ca6c9    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x004ca6ce    8b88405a2000
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x004ca6d4    894e14
                         {disp8} mov        dword ptr [esi + 0x18], 0x00000000            // 0x004ca6d7    c7461800000000
_jmp_addr_0x004ca6de:    pop                edi                                           // 0x004ca6de    5f
                         pop                esi                                           // 0x004ca6df    5e
                         pop                ebx                                           // 0x004ca6e0    5b
                         ret                                                              // 0x004ca6e1    c3
                         nop                                                              // 0x004ca6e2    90
                         nop                                                              // 0x004ca6e3    90
                         nop                                                              // 0x004ca6e4    90
                         nop                                                              // 0x004ca6e5    90
                         nop                                                              // 0x004ca6e6    90
                         nop                                                              // 0x004ca6e7    90
                         nop                                                              // 0x004ca6e8    90
                         nop                                                              // 0x004ca6e9    90
                         nop                                                              // 0x004ca6ea    90
                         nop                                                              // 0x004ca6eb    90
                         nop                                                              // 0x004ca6ec    90
                         nop                                                              // 0x004ca6ed    90
                         nop                                                              // 0x004ca6ee    90
                         nop                                                              // 0x004ca6ef    90
@__ct__22CreatureHelpStackEntryFUlP16GameThingWithPosRC9MapCoords@20:    mov.s              eax, ecx                                      // 0x004ca6f0    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004ca6f2    8b4c2404
                         xor.s              edx, edx                                      // 0x004ca6f6    33d2
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x004ca6f8    895008
                         {disp8} mov        dword ptr [eax + 0x0c], edx                   // 0x004ca6fb    89500c
                         {disp8} mov        dword ptr [eax + 0x10], edx                   // 0x004ca6fe    895010
                         mov                dword ptr [eax], ecx                          // 0x004ca701    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x004ca703    8b4c2408
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x004ca707    894804
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x004ca70a    8b4c240c
                         cmp.s              ecx, edx                                      // 0x004ca70e    3bca
                         {disp8} je         _jmp_addr_0x004ca725                          // 0x004ca710    7413
                         push               esi                                           // 0x004ca712    56
                         mov                esi, dword ptr [ecx]                          // 0x004ca713    8b31
                         {disp8} mov        dword ptr [eax + 0x08], esi                   // 0x004ca715    897008
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x004ca718    8b7104
                         {disp8} mov        dword ptr [eax + 0x0c], esi                   // 0x004ca71b    89700c
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x004ca71e    8b4908
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x004ca721    894810
                         pop                esi                                           // 0x004ca724    5e
_jmp_addr_0x004ca725:    {disp8} mov        dword ptr [eax + 0x14], edx                   // 0x004ca725    895014
                         {disp8} mov        dword ptr [eax + 0x18], 0x00000001            // 0x004ca728    c7401801000000
                         ret                0x000c                                        // 0x004ca72f    c20c00
                         nop                                                              // 0x004ca732    90
                         nop                                                              // 0x004ca733    90
                         nop                                                              // 0x004ca734    90
                         nop                                                              // 0x004ca735    90
                         nop                                                              // 0x004ca736    90
                         nop                                                              // 0x004ca737    90
                         nop                                                              // 0x004ca738    90
                         nop                                                              // 0x004ca739    90
                         nop                                                              // 0x004ca73a    90
                         nop                                                              // 0x004ca73b    90
                         nop                                                              // 0x004ca73c    90
                         nop                                                              // 0x004ca73d    90
                         nop                                                              // 0x004ca73e    90
                         nop                                                              // 0x004ca73f    90
                         sub                esp, 0x08                                     // 0x004ca740    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ca743    8b442410
                         add                eax, 0x000001ce                               // 0x004ca747    05ce010000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004ca74c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004ca750    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004ca758    df6c2400
                         push               0x2                                           // 0x004ca75c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ca75e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004ca762    8b4c2414
                         push               ecx                                           // 0x004ca766    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004ca767    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004ca76d    e82ec42200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004ca772    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004ca778    8b8a90002500
                         push               0x009dd084                                    // 0x004ca77e    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004ca783    e8880f2200
                         add                esp, 0x08                                     // 0x004ca788    83c408
                         ret                                                              // 0x004ca78b    c3
                         nop                                                              // 0x004ca78c    90
                         nop                                                              // 0x004ca78d    90
                         nop                                                              // 0x004ca78e    90
                         nop                                                              // 0x004ca78f    90
                         sub                esp, 0x08                                     // 0x004ca790    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ca793    8b442410
                         add                eax, 0x0000020b                               // 0x004ca797    050b020000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004ca79c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004ca7a0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004ca7a8    df6c2400
                         push               0x2                                           // 0x004ca7ac    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ca7ae    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004ca7b2    8b4c2414
                         push               ecx                                           // 0x004ca7b6    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004ca7b7    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004ca7bd    e8dec32200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004ca7c2    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004ca7c8    8b8a90002500
                         push               0x009dd084                                    // 0x004ca7ce    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004ca7d3    e8380f2200
                         add                esp, 0x08                                     // 0x004ca7d8    83c408
                         ret                                                              // 0x004ca7db    c3
                         nop                                                              // 0x004ca7dc    90
                         nop                                                              // 0x004ca7dd    90
                         nop                                                              // 0x004ca7de    90
                         nop                                                              // 0x004ca7df    90
                         sub                esp, 0x08                                     // 0x004ca7e0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ca7e3    8b442410
                         add                eax, 0x00000298                               // 0x004ca7e7    0598020000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004ca7ec    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004ca7f0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004ca7f8    df6c2400
                         push               0x2                                           // 0x004ca7fc    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ca7fe    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004ca802    8b4c2414
                         push               ecx                                           // 0x004ca806    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004ca807    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004ca80d    e88ec32200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004ca812    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004ca818    8b8a90002500
                         push               0x009dd084                                    // 0x004ca81e    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004ca823    e8e80e2200
                         add                esp, 0x08                                     // 0x004ca828    83c408
                         ret                                                              // 0x004ca82b    c3
                         nop                                                              // 0x004ca82c    90
                         nop                                                              // 0x004ca82d    90
                         nop                                                              // 0x004ca82e    90
                         nop                                                              // 0x004ca82f    90
                         sub                esp, 0x08                                     // 0x004ca830    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ca833    8b442410
                         add                eax, 0x000002c0                               // 0x004ca837    05c0020000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004ca83c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004ca840    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004ca848    df6c2400
                         push               0x2                                           // 0x004ca84c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ca84e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004ca852    8b4c2414
                         push               ecx                                           // 0x004ca856    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004ca857    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004ca85d    e83ec32200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004ca862    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004ca868    8b8a90002500
                         push               0x009dd084                                    // 0x004ca86e    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004ca873    e8980e2200
                         add                esp, 0x08                                     // 0x004ca878    83c408
                         ret                                                              // 0x004ca87b    c3
                         nop                                                              // 0x004ca87c    90
                         nop                                                              // 0x004ca87d    90
                         nop                                                              // 0x004ca87e    90
                         nop                                                              // 0x004ca87f    90
                         sub                esp, 0x08                                     // 0x004ca880    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ca883    8b442410
                         add                eax, 0x000002e8                               // 0x004ca887    05e8020000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004ca88c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004ca890    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004ca898    df6c2400
                         push               0x2                                           // 0x004ca89c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ca89e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004ca8a2    8b4c2414
                         push               ecx                                           // 0x004ca8a6    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004ca8a7    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004ca8ad    e8eec22200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004ca8b2    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004ca8b8    8b8a90002500
                         push               0x009dd084                                    // 0x004ca8be    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004ca8c3    e8480e2200
                         add                esp, 0x08                                     // 0x004ca8c8    83c408
                         ret                                                              // 0x004ca8cb    c3
                         nop                                                              // 0x004ca8cc    90
                         nop                                                              // 0x004ca8cd    90
                         nop                                                              // 0x004ca8ce    90
                         nop                                                              // 0x004ca8cf    90
                         sub                esp, 0x08                                     // 0x004ca8d0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004ca8d3    8b442410
                         add                eax, 0x00000310                               // 0x004ca8d7    0510030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004ca8dc    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004ca8e0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004ca8e8    df6c2400
                         push               0x2                                           // 0x004ca8ec    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ca8ee    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004ca8f2    8b4c2414
                         push               ecx                                           // 0x004ca8f6    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004ca8f7    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004ca8fd    e89ec22200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004ca902    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004ca908    8b8a90002500
                         push               0x009dd084                                    // 0x004ca90e    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004ca913    e8f80d2200
                         add                esp, 0x08                                     // 0x004ca918    83c408
                         ret                                                              // 0x004ca91b    c3
                         nop                                                              // 0x004ca91c    90
                         nop                                                              // 0x004ca91d    90
                         nop                                                              // 0x004ca91e    90
                         nop                                                              // 0x004ca91f    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004ca920    8b442408
                         sub                esp, 0x08                                     // 0x004ca924    83ec08
                         test               eax, eax                                      // 0x004ca927    85c0
                         {disp8} jbe        _jmp_addr_0x004ca96c                          // 0x004ca929    7641
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004ca92b    8b0d105cd900
                         add                eax, 0x0000036c                               // 0x004ca931    056c030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004ca936    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004ca93a    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004ca942    df6c2400
                         push               0x2                                           // 0x004ca946    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ca948    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ca94c    8b442414
                         push               eax                                           // 0x004ca950    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004ca951    e84ac22200
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004ca956    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250090]             // 0x004ca95c    8b8990002500
                         push               0x009dd084                                    // 0x004ca962    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004ca967    e8a40d2200
_jmp_addr_0x004ca96c:    add                esp, 0x08                                     // 0x004ca96c    83c408
                         ret                                                              // 0x004ca96f    c3
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004ca970    8b442408
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x004ca974    8d0cc0
                         shl                ecx, 3                                        // 0x004ca977    c1e103
                         sub.s              ecx, eax                                      // 0x004ca97a    2bc8
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00cc6734]       // 0x004ca97c    8b048d3467cc00
                         sub                esp, 0x08                                     // 0x004ca983    83ec08
                         test               eax, eax                                      // 0x004ca986    85c0
                         {disp8} je         _jmp_addr_0x004ca9c5                          // 0x004ca988    743b
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004ca98a    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004ca990    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004ca994    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004ca99c    df6c2400
                         push               0x2                                           // 0x004ca9a0    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ca9a2    d95c2414
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x004ca9a6    8b542414
                         push               edx                                           // 0x004ca9aa    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004ca9ab    e8f0c12200
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004ca9b0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004ca9b5    8b8890002500
                         push               0x009dd084                                    // 0x004ca9bb    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004ca9c0    e84b0d2200
_jmp_addr_0x004ca9c5:    add                esp, 0x08                                     // 0x004ca9c5    83c408
                         ret                                                              // 0x004ca9c8    c3
                         nop                                                              // 0x004ca9c9    90
                         nop                                                              // 0x004ca9ca    90
                         nop                                                              // 0x004ca9cb    90
                         nop                                                              // 0x004ca9cc    90
                         nop                                                              // 0x004ca9cd    90
                         nop                                                              // 0x004ca9ce    90
                         nop                                                              // 0x004ca9cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004ca9d0    8b442408
                         sub                esp, 0x08                                     // 0x004ca9d4    83ec08
                         test               eax, eax                                      // 0x004ca9d7    85c0
                         {disp8} jbe        _jmp_addr_0x004caa1c                          // 0x004ca9d9    7641
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004ca9db    8b0d105cd900
                         add                eax, 0x00000372                               // 0x004ca9e1    0572030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004ca9e6    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004ca9ea    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004ca9f2    df6c2400
                         push               0x2                                           // 0x004ca9f6    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004ca9f8    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004ca9fc    8b442414
                         push               eax                                           // 0x004caa00    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004caa01    e89ac12200
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004caa06    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250090]             // 0x004caa0c    8b8990002500
                         push               0x009dd084                                    // 0x004caa12    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004caa17    e8f40c2200
_jmp_addr_0x004caa1c:    add                esp, 0x08                                     // 0x004caa1c    83c408
                         ret                                                              // 0x004caa1f    c3
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004caa20    8b442408
                         lea                ecx, dword ptr [eax + eax * 0x8]              // 0x004caa24    8d0cc0
                         shl                ecx, 3                                        // 0x004caa27    c1e103
                         sub.s              ecx, eax                                      // 0x004caa2a    2bc8
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00cc6730]       // 0x004caa2c    8b048d3067cc00
                         sub                esp, 0x08                                     // 0x004caa33    83ec08
                         test               eax, eax                                      // 0x004caa36    85c0
                         {disp8} je         _jmp_addr_0x004caa75                          // 0x004caa38    743b
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004caa3a    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004caa40    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004caa44    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004caa4c    df6c2400
                         push               0x2                                           // 0x004caa50    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004caa52    d95c2414
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x004caa56    8b542414
                         push               edx                                           // 0x004caa5a    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004caa5b    e840c12200
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004caa60    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004caa65    8b8890002500
                         push               0x009dd084                                    // 0x004caa6b    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004caa70    e89b0c2200
_jmp_addr_0x004caa75:    add                esp, 0x08                                     // 0x004caa75    83c408
                         ret                                                              // 0x004caa78    c3
                         nop                                                              // 0x004caa79    90
                         nop                                                              // 0x004caa7a    90
                         nop                                                              // 0x004caa7b    90
                         nop                                                              // 0x004caa7c    90
                         nop                                                              // 0x004caa7d    90
                         nop                                                              // 0x004caa7e    90
                         nop                                                              // 0x004caa7f    90
                         sub                esp, 0x08                                     // 0x004caa80    83ec08
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004caa83    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x004caa89    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x004caa8b    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x004caa91    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x004caa94    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x004caa97    8d0450
                         shl                eax, 5                                        // 0x004caa9a    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x004caa9d    8b8c08640a0000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000164]             // 0x004caaa4    8b8964010000
                         add                ecx, 0x00002ad8                               // 0x004caaaa    81c1d82a0000
                         call               _jmp_addr_0x004e1e20                          // 0x004caab0    e86b730100
                         {disp8} mov        dword ptr [eax + 0x3c], 0x00000001            // 0x004caab5    c7403c01000000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004caabc    8b0d105cd900
                         call               _jmp_addr_0x006f69f0                          // 0x004caac2    e829bf2200
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004caac7    8b4c2410
                         add                ecx, 0x00000270                               // 0x004caacb    81c170020000
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x004caad1    894c2400
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004caad5    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004caadb    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004caae3    df6c2400
                         push               0x2                                           // 0x004caae7    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004caae9    d95c2414
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x004caaed    8b542414
                         push               edx                                           // 0x004caaf1    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004caaf2    e8a9c02200
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004caaf7    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004caafc    8b8890002500
                         push               0x009dd0a4                                    // 0x004cab02    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cab07    e8040c2200
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004cab0c    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x004cab12    e869840800
                         test               eax, eax                                      // 0x004cab17    85c0
                         {disp8} jne        _jmp_addr_0x004cab2f                          // 0x004cab19    7514
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x004cab1b    8b4c240c
                         {disp32} mov       edx, dword ptr [ecx + 0x00000164]             // 0x004cab1f    8b9164010000
                         {disp32} mov       dword ptr [edx + 0x00001c2c], 0x00000001      // 0x004cab25    c7822c1c000001000000
_jmp_addr_0x004cab2f:    add                esp, 0x08                                     // 0x004cab2f    83c408
                         ret                                                              // 0x004cab32    c3
                         nop                                                              // 0x004cab33    90
                         nop                                                              // 0x004cab34    90
                         nop                                                              // 0x004cab35    90
                         nop                                                              // 0x004cab36    90
                         nop                                                              // 0x004cab37    90
                         nop                                                              // 0x004cab38    90
                         nop                                                              // 0x004cab39    90
                         nop                                                              // 0x004cab3a    90
                         nop                                                              // 0x004cab3b    90
                         nop                                                              // 0x004cab3c    90
                         nop                                                              // 0x004cab3d    90
                         nop                                                              // 0x004cab3e    90
                         nop                                                              // 0x004cab3f    90
                         sub                esp, 0x08                                     // 0x004cab40    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cab43    8b442410
                         add                eax, 0x00000416                               // 0x004cab47    0516040000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cab4c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cab50    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cab58    df6c2400
                         push               0x2                                           // 0x004cab5c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cab5e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cab62    8b4c2414
                         push               ecx                                           // 0x004cab66    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cab67    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cab6d    e82ec02200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cab72    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cab78    8b8a90002500
                         push               0x009dd084                                    // 0x004cab7e    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cab83    e8880b2200
                         add                esp, 0x08                                     // 0x004cab88    83c408
                         ret                                                              // 0x004cab8b    c3
                         nop                                                              // 0x004cab8c    90
                         nop                                                              // 0x004cab8d    90
                         nop                                                              // 0x004cab8e    90
                         nop                                                              // 0x004cab8f    90
                         sub                esp, 0x08                                     // 0x004cab90    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cab93    8b442410
                         add                eax, 0x00000426                               // 0x004cab97    0526040000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cab9c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004caba0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004caba8    df6c2400
                         push               0x2                                           // 0x004cabac    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cabae    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cabb2    8b4c2414
                         push               ecx                                           // 0x004cabb6    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cabb7    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cabbd    e8debf2200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cabc2    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cabc8    8b8a90002500
                         push               0x009dd084                                    // 0x004cabce    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cabd3    e8380b2200
                         add                esp, 0x08                                     // 0x004cabd8    83c408
                         ret                                                              // 0x004cabdb    c3
                         nop                                                              // 0x004cabdc    90
                         nop                                                              // 0x004cabdd    90
                         nop                                                              // 0x004cabde    90
                         nop                                                              // 0x004cabdf    90
                         sub                esp, 0x08                                     // 0x004cabe0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cabe3    8b442410
                         add                eax, 0x0000043c                               // 0x004cabe7    053c040000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cabec    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cabf0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cabf8    df6c2400
                         push               0x2                                           // 0x004cabfc    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cabfe    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cac02    8b4c2414
                         push               ecx                                           // 0x004cac06    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cac07    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cac0d    e88ebf2200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cac12    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cac18    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cac1e    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cac23    e8e80a2200
                         add                esp, 0x08                                     // 0x004cac28    83c408
                         ret                                                              // 0x004cac2b    c3
                         nop                                                              // 0x004cac2c    90
                         nop                                                              // 0x004cac2d    90
                         nop                                                              // 0x004cac2e    90
                         nop                                                              // 0x004cac2f    90
                         ret                                                              // 0x004cac30    c3
                         nop                                                              // 0x004cac31    90
                         nop                                                              // 0x004cac32    90
                         nop                                                              // 0x004cac33    90
                         nop                                                              // 0x004cac34    90
                         nop                                                              // 0x004cac35    90
                         nop                                                              // 0x004cac36    90
                         nop                                                              // 0x004cac37    90
                         nop                                                              // 0x004cac38    90
                         nop                                                              // 0x004cac39    90
                         nop                                                              // 0x004cac3a    90
                         nop                                                              // 0x004cac3b    90
                         nop                                                              // 0x004cac3c    90
                         nop                                                              // 0x004cac3d    90
                         nop                                                              // 0x004cac3e    90
                         nop                                                              // 0x004cac3f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cac40    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cac45    8b8890002500
                         push               0x009dd0bc                                    // 0x004cac4b    68bcd09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cac50    e8bb0a2200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cac55    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cac59    c781c010000001000000
                         ret                                                              // 0x004cac63    c3
                         nop                                                              // 0x004cac64    90
                         nop                                                              // 0x004cac65    90
                         nop                                                              // 0x004cac66    90
                         nop                                                              // 0x004cac67    90
                         nop                                                              // 0x004cac68    90
                         nop                                                              // 0x004cac69    90
                         nop                                                              // 0x004cac6a    90
                         nop                                                              // 0x004cac6b    90
                         nop                                                              // 0x004cac6c    90
                         nop                                                              // 0x004cac6d    90
                         nop                                                              // 0x004cac6e    90
                         nop                                                              // 0x004cac6f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cac70    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cac75    8b8890002500
                         push               0x009dd0d4                                    // 0x004cac7b    68d4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cac80    e88b0a2200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cac85    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cac89    c781c010000001000000
                         ret                                                              // 0x004cac93    c3
                         nop                                                              // 0x004cac94    90
                         nop                                                              // 0x004cac95    90
                         nop                                                              // 0x004cac96    90
                         nop                                                              // 0x004cac97    90
                         nop                                                              // 0x004cac98    90
                         nop                                                              // 0x004cac99    90
                         nop                                                              // 0x004cac9a    90
                         nop                                                              // 0x004cac9b    90
                         nop                                                              // 0x004cac9c    90
                         nop                                                              // 0x004cac9d    90
                         nop                                                              // 0x004cac9e    90
                         nop                                                              // 0x004cac9f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004caca0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004caca5    8b8890002500
                         push               0x009dd0ec                                    // 0x004cacab    68ecd09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cacb0    e85b0a2200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cacb5    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cacb9    c781c010000001000000
                         ret                                                              // 0x004cacc3    c3
                         nop                                                              // 0x004cacc4    90
                         nop                                                              // 0x004cacc5    90
                         nop                                                              // 0x004cacc6    90
                         nop                                                              // 0x004cacc7    90
                         nop                                                              // 0x004cacc8    90
                         nop                                                              // 0x004cacc9    90
                         nop                                                              // 0x004cacca    90
                         nop                                                              // 0x004caccb    90
                         nop                                                              // 0x004caccc    90
                         nop                                                              // 0x004caccd    90
                         nop                                                              // 0x004cacce    90
                         nop                                                              // 0x004caccf    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cacd0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cacd5    8b8890002500
                         push               0x009dd104                                    // 0x004cacdb    6804d19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cace0    e82b0a2200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cace5    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cace9    c781c010000001000000
                         ret                                                              // 0x004cacf3    c3
                         nop                                                              // 0x004cacf4    90
                         nop                                                              // 0x004cacf5    90
                         nop                                                              // 0x004cacf6    90
                         nop                                                              // 0x004cacf7    90
                         nop                                                              // 0x004cacf8    90
                         nop                                                              // 0x004cacf9    90
                         nop                                                              // 0x004cacfa    90
                         nop                                                              // 0x004cacfb    90
                         nop                                                              // 0x004cacfc    90
                         nop                                                              // 0x004cacfd    90
                         nop                                                              // 0x004cacfe    90
                         nop                                                              // 0x004cacff    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cad00    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cad05    8b8890002500
                         push               0x009dd124                                    // 0x004cad0b    6824d19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cad10    e8fb092200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cad15    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cad19    c781c010000001000000
                         ret                                                              // 0x004cad23    c3
                         nop                                                              // 0x004cad24    90
                         nop                                                              // 0x004cad25    90
                         nop                                                              // 0x004cad26    90
                         nop                                                              // 0x004cad27    90
                         nop                                                              // 0x004cad28    90
                         nop                                                              // 0x004cad29    90
                         nop                                                              // 0x004cad2a    90
                         nop                                                              // 0x004cad2b    90
                         nop                                                              // 0x004cad2c    90
                         nop                                                              // 0x004cad2d    90
                         nop                                                              // 0x004cad2e    90
                         nop                                                              // 0x004cad2f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cad30    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cad35    8b8890002500
                         push               0x009dd140                                    // 0x004cad3b    6840d19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cad40    e8cb092200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cad45    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cad49    c781c010000001000000
                         ret                                                              // 0x004cad53    c3
                         nop                                                              // 0x004cad54    90
                         nop                                                              // 0x004cad55    90
                         nop                                                              // 0x004cad56    90
                         nop                                                              // 0x004cad57    90
                         nop                                                              // 0x004cad58    90
                         nop                                                              // 0x004cad59    90
                         nop                                                              // 0x004cad5a    90
                         nop                                                              // 0x004cad5b    90
                         nop                                                              // 0x004cad5c    90
                         nop                                                              // 0x004cad5d    90
                         nop                                                              // 0x004cad5e    90
                         nop                                                              // 0x004cad5f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cad60    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cad65    8b8890002500
                         push               0x009dd15c                                    // 0x004cad6b    685cd19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cad70    e89b092200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cad75    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cad79    c781c010000001000000
                         ret                                                              // 0x004cad83    c3
                         nop                                                              // 0x004cad84    90
                         nop                                                              // 0x004cad85    90
                         nop                                                              // 0x004cad86    90
                         nop                                                              // 0x004cad87    90
                         nop                                                              // 0x004cad88    90
                         nop                                                              // 0x004cad89    90
                         nop                                                              // 0x004cad8a    90
                         nop                                                              // 0x004cad8b    90
                         nop                                                              // 0x004cad8c    90
                         nop                                                              // 0x004cad8d    90
                         nop                                                              // 0x004cad8e    90
                         nop                                                              // 0x004cad8f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cad90    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cad95    8b8890002500
                         push               0x009dd174                                    // 0x004cad9b    6874d19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cada0    e86b092200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cada5    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cada9    c781c010000001000000
                         ret                                                              // 0x004cadb3    c3
                         nop                                                              // 0x004cadb4    90
                         nop                                                              // 0x004cadb5    90
                         nop                                                              // 0x004cadb6    90
                         nop                                                              // 0x004cadb7    90
                         nop                                                              // 0x004cadb8    90
                         nop                                                              // 0x004cadb9    90
                         nop                                                              // 0x004cadba    90
                         nop                                                              // 0x004cadbb    90
                         nop                                                              // 0x004cadbc    90
                         nop                                                              // 0x004cadbd    90
                         nop                                                              // 0x004cadbe    90
                         nop                                                              // 0x004cadbf    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cadc0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cadc5    8b8890002500
                         push               0x009dd184                                    // 0x004cadcb    6884d19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cadd0    e83b092200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cadd5    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cadd9    c781c010000001000000
                         ret                                                              // 0x004cade3    c3
                         nop                                                              // 0x004cade4    90
                         nop                                                              // 0x004cade5    90
                         nop                                                              // 0x004cade6    90
                         nop                                                              // 0x004cade7    90
                         nop                                                              // 0x004cade8    90
                         nop                                                              // 0x004cade9    90
                         nop                                                              // 0x004cadea    90
                         nop                                                              // 0x004cadeb    90
                         nop                                                              // 0x004cadec    90
                         nop                                                              // 0x004caded    90
                         nop                                                              // 0x004cadee    90
                         nop                                                              // 0x004cadef    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cadf0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cadf5    8b8890002500
                         push               0x009dd1a0                                    // 0x004cadfb    68a0d19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cae00    e80b092200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cae05    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cae09    c781c010000001000000
                         ret                                                              // 0x004cae13    c3
                         nop                                                              // 0x004cae14    90
                         nop                                                              // 0x004cae15    90
                         nop                                                              // 0x004cae16    90
                         nop                                                              // 0x004cae17    90
                         nop                                                              // 0x004cae18    90
                         nop                                                              // 0x004cae19    90
                         nop                                                              // 0x004cae1a    90
                         nop                                                              // 0x004cae1b    90
                         nop                                                              // 0x004cae1c    90
                         nop                                                              // 0x004cae1d    90
                         nop                                                              // 0x004cae1e    90
                         nop                                                              // 0x004cae1f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cae20    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cae25    8b8890002500
                         push               0x009dd1b8                                    // 0x004cae2b    68b8d19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cae30    e8db082200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cae35    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cae39    c781c010000001000000
                         ret                                                              // 0x004cae43    c3
                         nop                                                              // 0x004cae44    90
                         nop                                                              // 0x004cae45    90
                         nop                                                              // 0x004cae46    90
                         nop                                                              // 0x004cae47    90
                         nop                                                              // 0x004cae48    90
                         nop                                                              // 0x004cae49    90
                         nop                                                              // 0x004cae4a    90
                         nop                                                              // 0x004cae4b    90
                         nop                                                              // 0x004cae4c    90
                         nop                                                              // 0x004cae4d    90
                         nop                                                              // 0x004cae4e    90
                         nop                                                              // 0x004cae4f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cae50    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cae55    8b8890002500
                         push               0x009dd1d8                                    // 0x004cae5b    68d8d19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cae60    e8ab082200
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004cae65    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x000010c0], 0x00000001      // 0x004cae69    c781c010000001000000
                         ret                                                              // 0x004cae73    c3
                         nop                                                              // 0x004cae74    90
                         nop                                                              // 0x004cae75    90
                         nop                                                              // 0x004cae76    90
                         nop                                                              // 0x004cae77    90
                         nop                                                              // 0x004cae78    90
                         nop                                                              // 0x004cae79    90
                         nop                                                              // 0x004cae7a    90
                         nop                                                              // 0x004cae7b    90
                         nop                                                              // 0x004cae7c    90
                         nop                                                              // 0x004cae7d    90
                         nop                                                              // 0x004cae7e    90
                         nop                                                              // 0x004cae7f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004cae80    a15c19d000
                         cmp                dword ptr [eax + 0x00205a08], 0x01            // 0x004cae85    83b8085a200001
                         {disp8} jne        _jmp_addr_0x004caead                          // 0x004cae8c    751f
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004cae8e    8b8890002500
                         push               0x009dd218                                    // 0x004cae94    6818d29d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cae99    e872082200
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004cae9e    8b442404
                         {disp32} mov       dword ptr [eax + 0x000010c0], 0x00000001      // 0x004caea2    c780c010000001000000
                         ret                                                              // 0x004caeac    c3
_jmp_addr_0x004caead:    {disp8} mov        dword ptr [esp + 0x04], 0x457ff000            // 0x004caead    c744240400f07f45
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004caeb5    8b4c2404
                         push               0x2                                           // 0x004caeb9    6a02
                         push               ecx                                           // 0x004caebb    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004caebc    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004caec2    e8d9bc2200
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004caec7    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], 0x457ff000            // 0x004caecd    c744240400f07f45
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x004caed5    8b542404
                         push               0x2                                           // 0x004caed9    6a02
                         push               edx                                           // 0x004caedb    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004caedc    e8bfbc2200
                         {disp32} mov       eax, dword ptr [_game]                        // 0x004caee1    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x004caee6    8b8890002500
                         push               0x009dd1ec                                    // 0x004caeec    68ecd19d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004caef1    e81a082200
                         ret                                                              // 0x004caef6    c3
                         nop                                                              // 0x004caef7    90
                         nop                                                              // 0x004caef8    90
                         nop                                                              // 0x004caef9    90
                         nop                                                              // 0x004caefa    90
                         nop                                                              // 0x004caefb    90
                         nop                                                              // 0x004caefc    90
                         nop                                                              // 0x004caefd    90
                         nop                                                              // 0x004caefe    90
                         nop                                                              // 0x004caeff    90
                         sub                esp, 0x08                                     // 0x004caf00    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004caf03    8b442410
                         add                eax, 0x00000191                               // 0x004caf07    0591010000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004caf0c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004caf10    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004caf18    df6c2400
                         push               0x2                                           // 0x004caf1c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004caf1e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004caf22    8b4c2414
                         push               ecx                                           // 0x004caf26    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004caf27    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004caf2d    e86ebc2200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004caf32    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004caf38    8b8a90002500
                         push               0x009dd0a4                                    // 0x004caf3e    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004caf43    e8c8072200
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004caf48    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x004caf4e    e82d800800
                         test               eax, eax                                      // 0x004caf53    85c0
                         {disp8} jne        _jmp_addr_0x004caf6b                          // 0x004caf55    7514
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x004caf57    8b44240c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]             // 0x004caf5b    8b8864010000
                         {disp32} mov       dword ptr [ecx + 0x00001c2c], 0x00000001      // 0x004caf61    c7812c1c000001000000
_jmp_addr_0x004caf6b:    add                esp, 0x08                                     // 0x004caf6b    83c408
                         ret                                                              // 0x004caf6e    c3
                         nop                                                              // 0x004caf6f    90
                         sub                esp, 0x08                                     // 0x004caf70    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004caf73    8b442410
                         add                eax, 0x00000364                               // 0x004caf77    0564030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004caf7c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004caf80    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004caf88    df6c2400
                         push               0x2                                           // 0x004caf8c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004caf8e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004caf92    8b4c2414
                         push               ecx                                           // 0x004caf96    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004caf97    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004caf9d    e8febb2200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cafa2    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cafa8    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cafae    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cafb3    e858072200
                         add                esp, 0x08                                     // 0x004cafb8    83c408
                         ret                                                              // 0x004cafbb    c3
                         nop                                                              // 0x004cafbc    90
                         nop                                                              // 0x004cafbd    90
                         nop                                                              // 0x004cafbe    90
                         nop                                                              // 0x004cafbf    90
                         sub                esp, 0x08                                     // 0x004cafc0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cafc3    8b442410
                         add                eax, 0x00000436                               // 0x004cafc7    0536040000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cafcc    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cafd0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cafd8    df6c2400
                         push               0x2                                           // 0x004cafdc    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cafde    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cafe2    8b4c2414
                         push               ecx                                           // 0x004cafe6    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cafe7    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cafed    e8aebb2200
                         add                esp, 0x08                                     // 0x004caff2    83c408
                         ret                                                              // 0x004caff5    c3
                         nop                                                              // 0x004caff6    90
                         nop                                                              // 0x004caff7    90
                         nop                                                              // 0x004caff8    90
                         nop                                                              // 0x004caff9    90
                         nop                                                              // 0x004caffa    90
                         nop                                                              // 0x004caffb    90
                         nop                                                              // 0x004caffc    90
                         nop                                                              // 0x004caffd    90
                         nop                                                              // 0x004caffe    90
                         nop                                                              // 0x004cafff    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004cb000    8b442408
                         sub                esp, 0x08                                     // 0x004cb004    83ec08
                         test               eax, eax                                      // 0x004cb007    85c0
                         {disp8} jbe        _jmp_addr_0x004cb04c                          // 0x004cb009    7641
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb00b    8b0d105cd900
                         add                eax, 0x00000378                               // 0x004cb011    0578030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb016    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb01a    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb022    df6c2400
                         push               0x2                                           // 0x004cb026    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb028    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004cb02c    8b442414
                         push               eax                                           // 0x004cb030    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb031    e86abb2200
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x004cb036    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250090]             // 0x004cb03c    8b8990002500
                         push               0x009dd0a4                                    // 0x004cb042    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb047    e8c4062200
_jmp_addr_0x004cb04c:    add                esp, 0x08                                     // 0x004cb04c    83c408
                         ret                                                              // 0x004cb04f    c3
                         sub                esp, 0x08                                     // 0x004cb050    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cb053    8b442410
                         add                eax, 0x00000437                               // 0x004cb057    0537040000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb05c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb060    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb068    df6c2400
                         push               0x2                                           // 0x004cb06c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb06e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cb072    8b4c2414
                         push               ecx                                           // 0x004cb076    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb077    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb07d    e81ebb2200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cb082    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cb088    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cb08e    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb093    e878062200
                         add                esp, 0x08                                     // 0x004cb098    83c408
                         ret                                                              // 0x004cb09b    c3
                         nop                                                              // 0x004cb09c    90
                         nop                                                              // 0x004cb09d    90
                         nop                                                              // 0x004cb09e    90
                         nop                                                              // 0x004cb09f    90
                         sub                esp, 0x08                                     // 0x004cb0a0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cb0a3    8b442410
                         add                eax, 0x000003dd                               // 0x004cb0a7    05dd030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb0ac    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb0b0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb0b8    df6c2400
                         push               0x2                                           // 0x004cb0bc    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb0be    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cb0c2    8b4c2414
                         push               ecx                                           // 0x004cb0c6    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb0c7    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb0cd    e8ceba2200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cb0d2    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cb0d8    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cb0de    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb0e3    e828062200
                         add                esp, 0x08                                     // 0x004cb0e8    83c408
                         ret                                                              // 0x004cb0eb    c3
                         nop                                                              // 0x004cb0ec    90
                         nop                                                              // 0x004cb0ed    90
                         nop                                                              // 0x004cb0ee    90
                         nop                                                              // 0x004cb0ef    90
                         sub                esp, 0x08                                     // 0x004cb0f0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cb0f3    8b442410
                         add                eax, 0x000003f1                               // 0x004cb0f7    05f1030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb0fc    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb100    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb108    df6c2400
                         push               0x2                                           // 0x004cb10c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb10e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cb112    8b4c2414
                         push               ecx                                           // 0x004cb116    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb117    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb11d    e87eba2200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cb122    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cb128    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cb12e    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb133    e8d8052200
                         add                esp, 0x08                                     // 0x004cb138    83c408
                         ret                                                              // 0x004cb13b    c3
                         nop                                                              // 0x004cb13c    90
                         nop                                                              // 0x004cb13d    90
                         nop                                                              // 0x004cb13e    90
                         nop                                                              // 0x004cb13f    90
                         sub                esp, 0x08                                     // 0x004cb140    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cb143    8b442410
                         add                eax, 0x00000459                               // 0x004cb147    0559040000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb14c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb150    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb158    df6c2400
                         push               0x2                                           // 0x004cb15c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb15e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cb162    8b4c2414
                         push               ecx                                           // 0x004cb166    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb167    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb16d    e82eba2200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cb172    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cb178    8b8a90002500
                         push               0x009dd084                                    // 0x004cb17e    6884d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb183    e888052200
                         add                esp, 0x08                                     // 0x004cb188    83c408
                         ret                                                              // 0x004cb18b    c3
                         nop                                                              // 0x004cb18c    90
                         nop                                                              // 0x004cb18d    90
                         nop                                                              // 0x004cb18e    90
                         nop                                                              // 0x004cb18f    90
                         sub                esp, 0x08                                     // 0x004cb190    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cb193    8b442410
                         add                eax, 0x0000037e                               // 0x004cb197    057e030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb19c    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb1a0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb1a8    df6c2400
                         push               0x2                                           // 0x004cb1ac    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb1ae    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cb1b2    8b4c2414
                         push               ecx                                           // 0x004cb1b6    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb1b7    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb1bd    e8deb92200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cb1c2    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cb1c8    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cb1ce    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb1d3    e838052200
                         add                esp, 0x08                                     // 0x004cb1d8    83c408
                         ret                                                              // 0x004cb1db    c3
                         nop                                                              // 0x004cb1dc    90
                         nop                                                              // 0x004cb1dd    90
                         nop                                                              // 0x004cb1de    90
                         nop                                                              // 0x004cb1df    90
                         sub                esp, 0x08                                     // 0x004cb1e0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cb1e3    8b442410
                         add                eax, 0x00000384                               // 0x004cb1e7    0584030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb1ec    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb1f0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb1f8    df6c2400
                         push               0x2                                           // 0x004cb1fc    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb1fe    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cb202    8b4c2414
                         push               ecx                                           // 0x004cb206    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb207    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb20d    e88eb92200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cb212    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cb218    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cb21e    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb223    e8e8042200
                         add                esp, 0x08                                     // 0x004cb228    83c408
                         ret                                                              // 0x004cb22b    c3
                         nop                                                              // 0x004cb22c    90
                         nop                                                              // 0x004cb22d    90
                         nop                                                              // 0x004cb22e    90
                         nop                                                              // 0x004cb22f    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004cb230    8b442408
                         sub                esp, 0x08                                     // 0x004cb234    83ec08
                         cmp                eax, 0x07                                     // 0x004cb237    83f807
                         {disp8} jne        _jmp_addr_0x004cb24d                          // 0x004cb23a    7511
                         {disp8} mov        dword ptr [esp + 0x10], 0x45871000            // 0x004cb23c    c744241000108745
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cb244    8b442410
                         push               0x2                                           // 0x004cb248    6a02
                         push               eax                                           // 0x004cb24a    50
                         {disp8} jmp        _jmp_addr_0x004cb26d                          // 0x004cb24b    eb20
_jmp_addr_0x004cb24d:    add                eax, 0x00000451                               // 0x004cb24d    0551040000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb252    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb256    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb25e    df6c2400
                         push               0x2                                           // 0x004cb262    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb264    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cb268    8b4c2414
                         push               ecx                                           // 0x004cb26c    51
_jmp_addr_0x004cb26d:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb26d    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb273    e828b92200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cb278    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cb27e    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cb284    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb289    e882042200
                         add                esp, 0x08                                     // 0x004cb28e    83c408
                         ret                                                              // 0x004cb291    c3
                         nop                                                              // 0x004cb292    90
                         nop                                                              // 0x004cb293    90
                         nop                                                              // 0x004cb294    90
                         nop                                                              // 0x004cb295    90
                         nop                                                              // 0x004cb296    90
                         nop                                                              // 0x004cb297    90
                         nop                                                              // 0x004cb298    90
                         nop                                                              // 0x004cb299    90
                         nop                                                              // 0x004cb29a    90
                         nop                                                              // 0x004cb29b    90
                         nop                                                              // 0x004cb29c    90
                         nop                                                              // 0x004cb29d    90
                         nop                                                              // 0x004cb29e    90
                         nop                                                              // 0x004cb29f    90
                         sub                esp, 0x08                                     // 0x004cb2a0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cb2a3    8b442410
                         add                eax, 0x00000458                               // 0x004cb2a7    0558040000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb2ac    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb2b0    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb2b8    df6c2400
                         push               0x2                                           // 0x004cb2bc    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb2be    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cb2c2    8b4c2414
                         push               ecx                                           // 0x004cb2c6    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb2c7    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb2cd    e8ceb82200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cb2d2    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cb2d8    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cb2de    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb2e3    e828042200
                         add                esp, 0x08                                     // 0x004cb2e8    83c408
                         ret                                                              // 0x004cb2eb    c3
                         nop                                                              // 0x004cb2ec    90
                         nop                                                              // 0x004cb2ed    90
                         nop                                                              // 0x004cb2ee    90
                         nop                                                              // 0x004cb2ef    90
                         sub                esp, 0x08                                     // 0x004cb2f0    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004cb2f3    8b442410
                         add                eax, 0x00000448                               // 0x004cb2f7    0548040000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x004cb2fc    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x004cb300    c744240400000000
                         {disp8} fild       qword ptr [esp + 0x00]                        // 0x004cb308    df6c2400
                         push               0x2                                           // 0x004cb30c    6a02
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004cb30e    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004cb312    8b4c2414
                         push               ecx                                           // 0x004cb316    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x004cb317    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x004cb31d    e87eb82200
                         {disp32} mov       edx, dword ptr [_game]                        // 0x004cb322    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x004cb328    8b8a90002500
                         push               0x009dd0a4                                    // 0x004cb32e    68a4d09d00
                         call               _StartScript__7GScriptFPc@4                   // 0x004cb333    e8d8032200
                         add                esp, 0x08                                     // 0x004cb338    83c408
                         ret                                                              // 0x004cb33b    c3
                         nop                                                              // 0x004cb33c    90
                         nop                                                              // 0x004cb33d    90
                         nop                                                              // 0x004cb33e    90
                         nop                                                              // 0x004cb33f    90
_globl_ct_0x004cb340:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x004cb340    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x004cb346    b001
                         test               al, cl                                        // 0x004cb348    84c8
                         {disp8} jne        _jmp_addr_0x004cb354                          // 0x004cb34a    7508
                         or.s               cl, al                                        // 0x004cb34c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x004cb34e    880d34c9fa00
_jmp_addr_0x004cb354:    {disp32} jmp       _jmp_addr_0x004cb360                          // 0x004cb354    e907000000
                         nop                                                              // 0x004cb359    90
                         nop                                                              // 0x004cb35a    90
                         nop                                                              // 0x004cb35b    90
                         nop                                                              // 0x004cb35c    90
                         nop                                                              // 0x004cb35d    90
                         nop                                                              // 0x004cb35e    90
                         nop                                                              // 0x004cb35f    90
_jmp_addr_0x004cb360:    push               0x00407870                                    // 0x004cb360    6870784000
                         call               _atexit                                       // 0x004cb365    e827a42f00
                         pop                ecx                                           // 0x004cb36a    59
                         ret                                                              // 0x004cb36b    c3
                         nop                                                              // 0x004cb36c    90
                         nop                                                              // 0x004cb36d    90
                         nop                                                              // 0x004cb36e    90
                         nop                                                              // 0x004cb36f    90
_globl_ct_0x004cb370:    {disp32} jmp       _jmp_addr_0x004cb380                          // 0x004cb370    e90b000000
                         nop                                                              // 0x004cb375    90
                         nop                                                              // 0x004cb376    90
                         nop                                                              // 0x004cb377    90
                         nop                                                              // 0x004cb378    90
                         nop                                                              // 0x004cb379    90
                         nop                                                              // 0x004cb37a    90
                         nop                                                              // 0x004cb37b    90
                         nop                                                              // 0x004cb37c    90
                         nop                                                              // 0x004cb37d    90
                         nop                                                              // 0x004cb37e    90
                         nop                                                              // 0x004cb37f    90
_jmp_addr_0x004cb380:    {disp32} fld       dword ptr [rdata_bytes + 0x26424]             // 0x004cb380    d90524f48c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26420]             // 0x004cb386    d80d20f48c00
                         {disp32} fstp      dword ptr [data_bytes + 0x2bc918]             // 0x004cb38c    d91d1829c800
                         ret                                                              // 0x004cb392    c3
                         nop                                                              // 0x004cb393    90
                         nop                                                              // 0x004cb394    90
                         nop                                                              // 0x004cb395    90
                         nop                                                              // 0x004cb396    90
                         nop                                                              // 0x004cb397    90
                         nop                                                              // 0x004cb398    90
                         nop                                                              // 0x004cb399    90
                         nop                                                              // 0x004cb39a    90
                         nop                                                              // 0x004cb39b    90
                         nop                                                              // 0x004cb39c    90
                         nop                                                              // 0x004cb39d    90
                         nop                                                              // 0x004cb39e    90
                         nop                                                              // 0x004cb39f    90
_globl_ct_0x004cb3a0:    {disp32} jmp       _jmp_addr_0x004cb3b0                          // 0x004cb3a0    e90b000000
                         nop                                                              // 0x004cb3a5    90
                         nop                                                              // 0x004cb3a6    90
                         nop                                                              // 0x004cb3a7    90
                         nop                                                              // 0x004cb3a8    90
                         nop                                                              // 0x004cb3a9    90
                         nop                                                              // 0x004cb3aa    90
                         nop                                                              // 0x004cb3ab    90
                         nop                                                              // 0x004cb3ac    90
                         nop                                                              // 0x004cb3ad    90
                         nop                                                              // 0x004cb3ae    90
                         nop                                                              // 0x004cb3af    90
_jmp_addr_0x004cb3b0:    {disp32} mov       dword ptr [data_bytes + 0x2bc914], 0xffffffff // 0x004cb3b0    c7051429c800ffffffff
                         ret                                                              // 0x004cb3ba    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004cb3bb    e8b964f3ff
_jmp_addr_0x004cb3c0:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x004cb3c0    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x000001f4]             // 0x004cb3c3    8b80f4010000
                         cmp                eax, 0x04                                     // 0x004cb3c9    83f804
                         {disp8} ja         _jmp_addr_0x004cb3ee                          // 0x004cb3cc    7720
                         jmp                dword ptr [eax*4 + 0x4cb3f4]                  // 0x004cb3ce    ff2485f4b34c00
                         {disp32} jmp       _jmp_addr_0x004cb410                          // 0x004cb3d5    e936000000
                         {disp32} jmp       _jmp_addr_0x004cb410                          // 0x004cb3da    e931000000
                         {disp32} jmp       _jmp_addr_0x004cb410                          // 0x004cb3df    e92c000000
                         {disp32} jmp       _jmp_addr_0x004cb410                          // 0x004cb3e4    e927000000
                         {disp32} jmp       _jmp_addr_0x004cb410                          // 0x004cb3e9    e922000000
_jmp_addr_0x004cb3ee:    {disp32} jmp       _jmp_addr_0x004cb410                          // 0x004cb3ee    e91d000000

// Snippet: db, [0x004cb3f3, 0x004cb3f4)
.byte 0x90                        // 0x004cb3f3

// Snippet: jmptbl, [0x004cb3f4, 0x004cb408)
.byte 0xd5, 0xb3, 0x4c, 0x00      // 0x004cb3f4
.byte 0xda, 0xb3, 0x4c, 0x00      // 0x004cb3f8
.byte 0xdf, 0xb3, 0x4c, 0x00      // 0x004cb3fc
.byte 0xe4, 0xb3, 0x4c, 0x00      // 0x004cb400
.byte 0xe9, 0xb3, 0x4c, 0x00      // 0x004cb404

// Snippet: db, [0x004cb408, 0x004cb410)
.byte 0x90, 0x90, 0x90, 0x90      // 0x004cb408
.byte 0x90, 0x90, 0x90, 0x90      // 0x004cb40c

