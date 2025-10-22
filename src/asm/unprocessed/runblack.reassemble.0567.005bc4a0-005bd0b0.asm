.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.extern _jmp_addr_0x00428850
.extern _jmp_addr_0x0042acc0
.extern @SetPosition__6ZoomerFf@12
.extern _jmp_addr_0x005b96d0
.extern _jmp_addr_0x005b98d0
.extern _jmp_addr_0x005bb760
.extern _jmp_addr_0x005bb840
.extern _jmp_addr_0x005bb980
.extern _jmp_addr_0x005bd390
.extern _jmp_addr_0x005bd4a0
.extern _jmp_addr_0x005bf810
.extern _jmp_addr_0x005c2800
.extern _jmp_addr_0x007a1400
.extern ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z
.extern _jmp_addr_0x00839f10
.extern _jmp_addr_0x0083a020
.extern _jmp_addr_0x00860e00
.extern _jmp_addr_0x00861ee0

.globl _jmp_addr_0x005bc4a0
.globl _jmp_addr_0x005bc6c0
.globl _jmp_addr_0x005bc700
.globl _jmp_addr_0x005bc720
.globl _jmp_addr_0x005bc7c0
.globl _jmp_addr_0x005bc7d0
.globl _jmp_addr_0x005bcbc0
.globl _jmp_addr_0x005bcc20
.globl _jmp_addr_0x005bcd00

start_0x005bc4a0_0x005bd0b0:
// Snippet: asm, [0x005bc4a0, 0x005bd096)
_jmp_addr_0x005bc4a0:    sub                esp, 0x14                                            // 0x005bc4a0    83ec14
                         push               ebx                                                  // 0x005bc4a3    53
                         push               esi                                                  // 0x005bc4a4    56
                         mov.s              esi, ecx                                             // 0x005bc4a5    8bf1
                         {disp32} fld       dword ptr [esi + 0x000035dc]                         // 0x005bc4a7    d986dc350000
                         push               edi                                                  // 0x005bc4ad    57
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bc4ae    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bc4b4    dfe0
                         test               ah, 0x40                                             // 0x005bc4b6    f6c440
                         {disp32} je        _jmp_addr_0x005bc56b                                 // 0x005bc4b9    0f84ac000000
                         {disp8} mov        edi, dword ptr [esp + 0x24]                          // 0x005bc4bf    8b7c2424
                         fld                dword ptr [edi]                                      // 0x005bc4c3    d907
                         xor.s              ebx, ebx                                             // 0x005bc4c5    33db
                         {disp32} fst       dword ptr [esi + 0x000035e4]                         // 0x005bc4c7    d996e4350000
                         {disp32} mov       dword ptr [esi + 0x000035f8], ebx                    // 0x005bc4cd    899ef8350000
                         {disp32} fst       dword ptr [esi + 0x000035e0]                         // 0x005bc4d3    d996e0350000
                         {disp32} mov       dword ptr [esi + 0x000035f4], ebx                    // 0x005bc4d9    899ef4350000
                         {disp32} fstp      dword ptr [esi + 0x000035fc]                         // 0x005bc4df    d99efc350000
                         {disp32} mov       dword ptr [esi + 0x0000360c], ebx                    // 0x005bc4e5    899e0c360000
                         {disp32} mov       dword ptr [esi + 0x00003608], ebx                    // 0x005bc4eb    899e08360000
                         {disp32} mov       dword ptr [esi + 0x000035f0], ebx                    // 0x005bc4f1    899ef0350000
                         {disp32} mov       dword ptr [esi + 0x00003604], ebx                    // 0x005bc4f7    899e04360000
                         {disp32} mov       dword ptr [esi + 0x000035ec], ebx                    // 0x005bc4fd    899eec350000
                         {disp32} mov       dword ptr [esi + 0x00003600], ebx                    // 0x005bc503    899e00360000
                         {disp32} mov       dword ptr [esi + 0x000035e8], ebx                    // 0x005bc509    899ee8350000
                         {disp8} fld        dword ptr [edi + 0x04]                               // 0x005bc50f    d94704
                         {disp32} fst       dword ptr [esi + 0x00003614]                         // 0x005bc512    d99614360000
                         {disp32} mov       dword ptr [esi + 0x00003628], ebx                    // 0x005bc518    899e28360000
                         {disp32} fst       dword ptr [esi + 0x00003610]                         // 0x005bc51e    d99610360000
                         {disp32} mov       dword ptr [esi + 0x00003624], ebx                    // 0x005bc524    899e24360000
                         {disp32} fstp      dword ptr [esi + 0x0000362c]                         // 0x005bc52a    d99e2c360000
                         {disp32} mov       dword ptr [esi + 0x0000363c], ebx                    // 0x005bc530    899e3c360000
                         {disp32} mov       dword ptr [esi + 0x00003638], ebx                    // 0x005bc536    899e38360000
                         {disp32} mov       dword ptr [esi + 0x00003620], ebx                    // 0x005bc53c    899e20360000
                         {disp32} mov       dword ptr [esi + 0x00003634], ebx                    // 0x005bc542    899e34360000
                         {disp32} mov       dword ptr [esi + 0x0000361c], ebx                    // 0x005bc548    899e1c360000
                         {disp32} mov       dword ptr [esi + 0x00003630], ebx                    // 0x005bc54e    899e30360000
                         {disp32} mov       dword ptr [esi + 0x00003618], ebx                    // 0x005bc554    899e18360000
                         {disp8} mov        eax, dword ptr [edi + 0x08]                          // 0x005bc55a    8b4708
                         push               eax                                                  // 0x005bc55d    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00003640]                    // 0x005bc55e    8d8e40360000
                         call               @SetPosition__6ZoomerFf@12                           // 0x005bc564    e85755e8ff
                         {disp8} jmp        _jmp_addr_0x005bc5b6                                 // 0x005bc569    eb4b
_jmp_addr_0x005bc56b:    {disp8} mov        edi, dword ptr [esp + 0x24]                          // 0x005bc56b    8b7c2424
                         fld                dword ptr [edi]                                      // 0x005bc56f    d907
                         push               ebp                                                  // 0x005bc571    55
                         push               0x3f000000                                           // 0x005bc572    680000003f
                         xor.s              ebx, ebx                                             // 0x005bc577    33db
                         push               ebx                                                  // 0x005bc579    53
                         push               ecx                                                  // 0x005bc57a    51
                         {disp32} lea       ebp, dword ptr [esi + 0x000035e0]                    // 0x005bc57b    8daee0350000
                         fstp               dword ptr [esp]                                      // 0x005bc581    d91c24
                         mov.s              ecx, ebp                                             // 0x005bc584    8bcd
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20      // 0x005bc586    e8d5b7e4ff
                         {disp8} fld        dword ptr [edi + 0x04]                               // 0x005bc58b    d94704
                         push               0x3f000000                                           // 0x005bc58e    680000003f
                         push               ebx                                                  // 0x005bc593    53
                         push               ecx                                                  // 0x005bc594    51
                         fstp               dword ptr [esp]                                      // 0x005bc595    d91c24
                         {disp8} lea        ecx, dword ptr [ebp + 0x30]                          // 0x005bc598    8d4d30
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20      // 0x005bc59b    e8c0b7e4ff
                         {disp8} fld        dword ptr [edi + 0x08]                               // 0x005bc5a0    d94708
                         push               0x3f000000                                           // 0x005bc5a3    680000003f
                         push               ebx                                                  // 0x005bc5a8    53
                         push               ecx                                                  // 0x005bc5a9    51
                         fstp               dword ptr [esp]                                      // 0x005bc5aa    d91c24
                         {disp8} lea        ecx, dword ptr [ebp + 0x60]                          // 0x005bc5ad    8d4d60
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20      // 0x005bc5b0    e8abb7e4ff
                         pop                ebp                                                  // 0x005bc5b5    5d
_jmp_addr_0x005bc5b6:    {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x005bc5b6    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                          // 0x005bc5ba    8b54242c
                         {disp8} mov        eax, dword ptr [esp + 0x30]                          // 0x005bc5be    8b442430
                         and                ecx, 0x000000ff                                      // 0x005bc5c2    81e1ff000000
                         {disp8} mov        dword ptr [esp + 0x24], ecx                          // 0x005bc5c8    894c2424
                         {disp8} fild       dword ptr [esp + 0x24]                               // 0x005bc5cc    db442424
                         {disp32} mov       dword ptr [esi + 0x00003674], edx                    // 0x005bc5d0    899674360000
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x005bc5d6    8d4c240c
                         push               ecx                                                  // 0x005bc5da    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x005bc5db    8d542414
                         {disp32} fstp      dword ptr [esi + 0x00003670]                         // 0x005bc5df    d99e70360000
                         push               edx                                                  // 0x005bc5e5    52
                         {disp8} lea        edx, dword ptr [esp + 0x24]                          // 0x005bc5e6    8d542424
                         mov.s              ecx, edi                                             // 0x005bc5ea    8bcf
                         {disp32} mov       dword ptr [esi + 0x00003678], eax                    // 0x005bc5ec    898678360000
                         {disp32} mov       byte ptr [esi + 0x000035a4], bl                      // 0x005bc5f2    889ea4350000
                         call               ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z     // 0x005bc5f8    e893cd2500
                         cmp.s              eax, ebx                                             // 0x005bc5fd    3bc3
                         {disp32} mov       byte ptr [esi + 0x000035a4], bl                      // 0x005bc5ff    889ea4350000
                         {disp8} je         _jmp_addr_0x005bc62e                                 // 0x005bc605    7427
                         {disp32} fld       dword ptr [_near_clipping]                           // 0x005bc607    d905e039e800
                         {disp32} fmul      dword ptr [__real@3f8ccccd]                          // 0x005bc60d    d80d30b28a00
                         {disp8} fcomp      dword ptr [esp + 0x0c]                               // 0x005bc613    d85c240c
                         fnstsw             ax                                                   // 0x005bc617    dfe0
                         test               ah, 0x41                                             // 0x005bc619    f6c441
                         {disp8} je         _jmp_addr_0x005bc62e                                 // 0x005bc61c    7410
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x005bc61e    8b4c2410
                         xor.s              eax, eax                                             // 0x005bc622    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]                 // 0x005bc624    66a15a50e800
                         cmp.s              ecx, eax                                             // 0x005bc62a    3bc8
                         {disp8} jle        _jmp_addr_0x005bc635                                 // 0x005bc62c    7e07
_jmp_addr_0x005bc62e:    {disp32} mov       byte ptr [esi + 0x000035a4], 0x01                    // 0x005bc62e    c686a435000001
_jmp_addr_0x005bc635:    push               0x1                                                  // 0x005bc635    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x005bc637    8d4c241c
                         push               ecx                                                  // 0x005bc63b    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x005bc63c    8d54241c
                         push               edx                                                  // 0x005bc640    52
                         push               edi                                                  // 0x005bc641    57
                         mov.s              ecx, esi                                             // 0x005bc642    8bce
                         call               _jmp_addr_0x005bd390                                 // 0x005bc644    e8470d0000
                         test               eax, eax                                             // 0x005bc649    85c0
                         {disp8} je         _jmp_addr_0x005bc684                                 // 0x005bc64b    7437
                         cmp                byte ptr [esi + 0x000035a4], bl                      // 0x005bc64d    389ea4350000
                         {disp8} jne        _jmp_addr_0x005bc684                                 // 0x005bc653    752f
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x005bc655    8b4c2418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x005bc659    8b442414
                         push               ebx                                                  // 0x005bc65d    53
                         {disp32} mov       dword ptr [esi + 0x000035b0], ecx                    // 0x005bc65e    898eb0350000
                         push               0x8                                                  // 0x005bc664    6a08
                         mov.s              ecx, esi                                             // 0x005bc666    8bce
                         {disp32} mov       dword ptr [esi + 0x000035ac], eax                    // 0x005bc668    8986ac350000
                         call               _jmp_addr_0x005bd4a0                                 // 0x005bc66e    e82d0e0000
                         push               edi                                                  // 0x005bc673    57
                         mov.s              ecx, esi                                             // 0x005bc674    8bce
                         call               _jmp_addr_0x005bc6c0                                 // 0x005bc676    e845000000
                         pop                edi                                                  // 0x005bc67b    5f
                         pop                esi                                                  // 0x005bc67c    5e
                         pop                ebx                                                  // 0x005bc67d    5b
                         add                esp, 0x14                                            // 0x005bc67e    83c414
                         ret                0x0010                                               // 0x005bc681    c21000
_jmp_addr_0x005bc684:    push               ebx                                                  // 0x005bc684    53
                         push               0x8                                                  // 0x005bc685    6a08
                         mov.s              ecx, esi                                             // 0x005bc687    8bce
                         {disp32} mov       dword ptr [esi + 0x000035ac], ebx                    // 0x005bc689    899eac350000
                         {disp32} mov       dword ptr [esi + 0x000035b0], 0x3f800000             // 0x005bc68f    c786b03500000000803f
                         call               _jmp_addr_0x005bd4a0                                 // 0x005bc699    e8020e0000
                         push               ebx                                                  // 0x005bc69e    53
                         mov.s              ecx, esi                                             // 0x005bc69f    8bce
                         call               _jmp_addr_0x005bc6c0                                 // 0x005bc6a1    e81a000000
                         pop                edi                                                  // 0x005bc6a6    5f
                         {disp32} mov       byte ptr [esi + 0x000035a4], 0x01                    // 0x005bc6a7    c686a435000001
                         pop                esi                                                  // 0x005bc6ae    5e
                         pop                ebx                                                  // 0x005bc6af    5b
                         add                esp, 0x14                                            // 0x005bc6b0    83c414
                         ret                0x0010                                               // 0x005bc6b3    c21000
                         nop                                                                     // 0x005bc6b6    90
                         nop                                                                     // 0x005bc6b7    90
                         nop                                                                     // 0x005bc6b8    90
                         nop                                                                     // 0x005bc6b9    90
                         nop                                                                     // 0x005bc6ba    90
                         nop                                                                     // 0x005bc6bb    90
                         nop                                                                     // 0x005bc6bc    90
                         nop                                                                     // 0x005bc6bd    90
                         nop                                                                     // 0x005bc6be    90
                         nop                                                                     // 0x005bc6bf    90
_jmp_addr_0x005bc6c0:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x005bc6c0    8b442404
                         test               eax, eax                                             // 0x005bc6c4    85c0
                         {disp32} mov       dword ptr [ecx + 0x000034c8], 0x00000000             // 0x005bc6c6    c781c834000000000000
                         {disp8} je         _jmp_addr_0x005bc6f4                                 // 0x005bc6d0    7422
                         push               esi                                                  // 0x005bc6d2    56
                         mov                esi, dword ptr [eax]                                 // 0x005bc6d3    8b30
                         {disp32} lea       edx, dword ptr [ecx + 0x00003498]                    // 0x005bc6d5    8d9198340000
                         mov                dword ptr [edx], esi                                 // 0x005bc6db    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                          // 0x005bc6dd    8b7004
                         {disp8} mov        dword ptr [edx + 0x04], esi                          // 0x005bc6e0    897204
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x005bc6e3    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax                          // 0x005bc6e6    894208
                         {disp32} mov       dword ptr [ecx + 0x000034c8], 0x00000001             // 0x005bc6e9    c781c834000001000000
                         pop                esi                                                  // 0x005bc6f3    5e
_jmp_addr_0x005bc6f4:    ret                0x0004                                               // 0x005bc6f4    c20400
                         nop                                                                     // 0x005bc6f7    90
                         nop                                                                     // 0x005bc6f8    90
                         nop                                                                     // 0x005bc6f9    90
                         nop                                                                     // 0x005bc6fa    90
                         nop                                                                     // 0x005bc6fb    90
                         nop                                                                     // 0x005bc6fc    90
                         nop                                                                     // 0x005bc6fd    90
                         nop                                                                     // 0x005bc6fe    90
                         nop                                                                     // 0x005bc6ff    90
_jmp_addr_0x005bc700:    push               esi                                                  // 0x005bc700    56
                         mov.s              esi, ecx                                             // 0x005bc701    8bf1
                         push               0x00ea1db8                                           // 0x005bc703    68b81dea00
                         call               _jmp_addr_0x005bc6c0                                 // 0x005bc708    e8b3ffffff
                         push               0x0                                                  // 0x005bc70d    6a00
                         mov.s              ecx, esi                                             // 0x005bc70f    8bce
                         call               _jmp_addr_0x005bc750                                 // 0x005bc711    e83a000000
                         pop                esi                                                  // 0x005bc716    5e
                         ret                                                                     // 0x005bc717    c3
                         nop                                                                     // 0x005bc718    90
                         nop                                                                     // 0x005bc719    90
                         nop                                                                     // 0x005bc71a    90
                         nop                                                                     // 0x005bc71b    90
                         nop                                                                     // 0x005bc71c    90
                         nop                                                                     // 0x005bc71d    90
                         nop                                                                     // 0x005bc71e    90
                         nop                                                                     // 0x005bc71f    90
_jmp_addr_0x005bc720:    push               esi                                                  // 0x005bc720    56
                         mov.s              esi, ecx                                             // 0x005bc721    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00003470]                    // 0x005bc723    8b8670340000
                         test               eax, eax                                             // 0x005bc729    85c0
                         {disp8} je         _jmp_addr_0x005bc741                                 // 0x005bc72b    7414
                         add                eax, 0x00003374                                      // 0x005bc72d    0574330000
                         push               eax                                                  // 0x005bc732    50
                         call               _jmp_addr_0x005bc6c0                                 // 0x005bc733    e888ffffff
                         push               0x0                                                  // 0x005bc738    6a00
                         mov.s              ecx, esi                                             // 0x005bc73a    8bce
                         call               _jmp_addr_0x005bc750                                 // 0x005bc73c    e80f000000
_jmp_addr_0x005bc741:    pop                esi                                                  // 0x005bc741    5e
                         ret                                                                     // 0x005bc742    c3
                         nop                                                                     // 0x005bc743    90
                         nop                                                                     // 0x005bc744    90
                         nop                                                                     // 0x005bc745    90
                         nop                                                                     // 0x005bc746    90
                         nop                                                                     // 0x005bc747    90
                         nop                                                                     // 0x005bc748    90
                         nop                                                                     // 0x005bc749    90
                         nop                                                                     // 0x005bc74a    90
                         nop                                                                     // 0x005bc74b    90
                         nop                                                                     // 0x005bc74c    90
                         nop                                                                     // 0x005bc74d    90
                         nop                                                                     // 0x005bc74e    90
                         nop                                                                     // 0x005bc74f    90
_jmp_addr_0x005bc750:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x005bc750    8b442404
                         test               eax, eax                                             // 0x005bc754    85c0
                         {disp32} mov       dword ptr [ecx + 0x000034cc], 0x00000000             // 0x005bc756    c781cc34000000000000
                         {disp8} je         _jmp_addr_0x005bc784                                 // 0x005bc760    7422
                         push               esi                                                  // 0x005bc762    56
                         mov                esi, dword ptr [eax]                                 // 0x005bc763    8b30
                         {disp32} lea       edx, dword ptr [ecx + 0x000034a4]                    // 0x005bc765    8d91a4340000
                         mov                dword ptr [edx], esi                                 // 0x005bc76b    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                          // 0x005bc76d    8b7004
                         {disp8} mov        dword ptr [edx + 0x04], esi                          // 0x005bc770    897204
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x005bc773    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax                          // 0x005bc776    894208
                         {disp32} mov       dword ptr [ecx + 0x000034cc], 0x00000001             // 0x005bc779    c781cc34000001000000
                         pop                esi                                                  // 0x005bc783    5e
_jmp_addr_0x005bc784:    ret                0x0004                                               // 0x005bc784    c20400
                         nop                                                                     // 0x005bc787    90
                         nop                                                                     // 0x005bc788    90
                         nop                                                                     // 0x005bc789    90
                         nop                                                                     // 0x005bc78a    90
                         nop                                                                     // 0x005bc78b    90
                         nop                                                                     // 0x005bc78c    90
                         nop                                                                     // 0x005bc78d    90
                         nop                                                                     // 0x005bc78e    90
                         nop                                                                     // 0x005bc78f    90
                         push               0x00ea1db8                                           // 0x005bc790    68b81dea00
                         call               _jmp_addr_0x005bc750                                 // 0x005bc795    e8b6ffffff
                         ret                                                                     // 0x005bc79a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                                 // 0x005bc79b    e85950e4ff
                         {disp32} mov       eax, dword ptr [ecx + 0x00003470]                    // 0x005bc7a0    8b8170340000
                         test               eax, eax                                             // 0x005bc7a6    85c0
                         {disp8} je         _jmp_addr_0x005bc7b5                                 // 0x005bc7a8    740b
                         add                eax, 0x00003374                                      // 0x005bc7aa    0574330000
                         push               eax                                                  // 0x005bc7af    50
                         call               _jmp_addr_0x005bc750                                 // 0x005bc7b0    e89bffffff
_jmp_addr_0x005bc7b5:    ret                                                                     // 0x005bc7b5    c3
                         nop                                                                     // 0x005bc7b6    90
                         nop                                                                     // 0x005bc7b7    90
                         nop                                                                     // 0x005bc7b8    90
                         nop                                                                     // 0x005bc7b9    90
                         nop                                                                     // 0x005bc7ba    90
                         nop                                                                     // 0x005bc7bb    90
                         nop                                                                     // 0x005bc7bc    90
                         nop                                                                     // 0x005bc7bd    90
                         nop                                                                     // 0x005bc7be    90
                         nop                                                                     // 0x005bc7bf    90
_jmp_addr_0x005bc7c0:    {disp32} mov       eax, dword ptr [_global]                             // 0x005bc7c0    a1203bcd00
                         {disp32} mov       eax, dword ptr [eax + 0x000003ac]                    // 0x005bc7c5    8b80ac030000
                         ret                                                                     // 0x005bc7cb    c3
                         nop                                                                     // 0x005bc7cc    90
                         nop                                                                     // 0x005bc7cd    90
                         nop                                                                     // 0x005bc7ce    90
                         nop                                                                     // 0x005bc7cf    90
_jmp_addr_0x005bc7d0:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x005bc7d0    8b442404
                         sub                esp, 0x30                                            // 0x005bc7d4    83ec30
                         test               eax, eax                                             // 0x005bc7d7    85c0
                         push               ebx                                                  // 0x005bc7d9    53
                         mov.s              ebx, ecx                                             // 0x005bc7da    8bd9
                         {disp32} fld       dword ptr [ebx + 0x0000348c]                         // 0x005bc7dc    d9838c340000
                         {disp8} je         _jmp_addr_0x005bc81a                                 // 0x005bc7e2    7436
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bc7e4    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bc7ea    dfe0
                         test               ah, 0x01                                             // 0x005bc7ec    f6c401
                         {disp8} je         _jmp_addr_0x005bc84e                                 // 0x005bc7ef    745d
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x005bc7f1    d944243c
                         {disp32} fadd      dword ptr [ebx + 0x0000348c]                         // 0x005bc7f5    d8838c340000
                         {disp32} fst       dword ptr [ebx + 0x0000348c]                         // 0x005bc7fb    d9938c340000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bc801    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bc807    dfe0
                         test               ah, 0x41                                             // 0x005bc809    f6c441
                         {disp8} jne        _jmp_addr_0x005bc84e                                 // 0x005bc80c    7540
                         {disp32} mov       dword ptr [ebx + 0x0000348c], 0x3f800000             // 0x005bc80e    c7838c3400000000803f
                         {disp8} jmp        _jmp_addr_0x005bc84e                                 // 0x005bc818    eb34
_jmp_addr_0x005bc81a:    {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bc81a    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bc820    dfe0
                         test               ah, 0x41                                             // 0x005bc822    f6c441
                         {disp8} jne        _jmp_addr_0x005bc84e                                 // 0x005bc825    7527
                         {disp32} fld       dword ptr [ebx + 0x0000348c]                         // 0x005bc827    d9838c340000
                         {disp8} fsub       dword ptr [esp + 0x3c]                               // 0x005bc82d    d864243c
                         {disp32} fst       dword ptr [ebx + 0x0000348c]                         // 0x005bc831    d9938c340000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bc837    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bc83d    dfe0
                         test               ah, 0x01                                             // 0x005bc83f    f6c401
                         {disp8} je         _jmp_addr_0x005bc84e                                 // 0x005bc842    740a
                         {disp32} mov       dword ptr [ebx + 0x0000348c], 0x00000000             // 0x005bc844    c7838c34000000000000
_jmp_addr_0x005bc84e:    {disp32} fld       dword ptr [ebx + 0x0000348c]                         // 0x005bc84e    d9838c340000
                         {disp8} mov        eax, dword ptr [ebx + 0x24]                          // 0x005bc854    8b4324
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bc857    d81d98a38a00
                         push               ebp                                                  // 0x005bc85d    55
                         {disp8} mov        ebp, dword ptr [eax + 0x7c]                          // 0x005bc85e    8b687c
                         push               esi                                                  // 0x005bc861    56
                         {disp8} mov        esi, dword ptr [eax + 0x04]                          // 0x005bc862    8b7004
                         fnstsw             ax                                                   // 0x005bc865    dfe0
                         push               edi                                                  // 0x005bc867    57
                         {disp8} mov        dword ptr [esp + 0x44], esi                          // 0x005bc868    89742444
                         test               ah, 0x41                                             // 0x005bc86c    f6c441
                         {disp32} jne       _jmp_addr_0x005bcaa2                                 // 0x005bc86f    0f852d020000
                         test               ebp, ebp                                             // 0x005bc875    85ed
                         {disp32} je        _jmp_addr_0x005bcaa2                                 // 0x005bc877    0f8425020000
                         {disp32} fld       dword ptr [ebx + 0x0000348c]                         // 0x005bc87d    d9838c340000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bc883    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bc889    dfe0
                         test               ah, 0x01                                             // 0x005bc88b    f6c401
                         {disp8} jne        _jmp_addr_0x005bc8f8                                 // 0x005bc88e    7568
                         {disp32} fld       dword ptr [ebx + 0x00003478]                         // 0x005bc890    d98378340000
                         {disp32} fmul      dword ptr [__real@447a0000]                          // 0x005bc896    d80d28b28a00
                         call               _jmp_addr_0x007a1400                                 // 0x005bc89c    e85f4b1e00
                         cdq                                                                     // 0x005bc8a1    99
                         idiv               dword ptr [ebp + 0x00]                               // 0x005bc8a2    f77d00
                         {disp8} mov        eax, dword ptr [ebx + 0x28]                          // 0x005bc8a5    8b4328
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028b0]                    // 0x005bc8a8    8b8bb0280000
                         push               0x0                                                  // 0x005bc8ae    6a00
                         push               0x0                                                  // 0x005bc8b0    6a00
                         push               eax                                                  // 0x005bc8b2    50
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                          // 0x005bc8b3    8b4314
                         push               edx                                                  // 0x005bc8b6    52
                         push               ecx                                                  // 0x005bc8b7    51
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028b4]                    // 0x005bc8b8    8b8bb4280000
                         {disp8} mov        dword ptr [esp + 0x58], edx                          // 0x005bc8be    89542458
                         {disp32} mov       edx, dword ptr [ebx + 0x000028ac]                    // 0x005bc8c2    8b93ac280000
                         push               edx                                                  // 0x005bc8c8    52
                         push               eax                                                  // 0x005bc8c9    50
                         push               ecx                                                  // 0x005bc8ca    51
                         mov.s              ecx, ebp                                             // 0x005bc8cb    8bcd
                         call               _jmp_addr_0x00860e00                                 // 0x005bc8cd    e82e452a00
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                          // 0x005bc8d2    8b44244c
                         test               eax, eax                                             // 0x005bc8d6    85c0
                         {disp32} je        _jmp_addr_0x005bcb0a                                 // 0x005bc8d8    0f842c020000
                         mov.s              ecx, ebx                                             // 0x005bc8de    8bcb
                         call               _jmp_addr_0x005bc7c0                                 // 0x005bc8e0    e8dbfeffff
                         {disp8} fild       dword ptr [esp + 0x44]                               // 0x005bc8e5    db442444
                         push               eax                                                  // 0x005bc8e9    50
                         push               ecx                                                  // 0x005bc8ea    51
                         {disp8} fidiv      dword ptr [ebp + 0x00]                               // 0x005bc8eb    da7500
                         fstp               dword ptr [esp]                                      // 0x005bc8ee    d91c24
                         push               0x1f                                                 // 0x005bc8f1    6a1f
                         {disp32} jmp       _jmp_addr_0x005bcb03                                 // 0x005bc8f3    e90b020000
_jmp_addr_0x005bc8f8:    test               esi, esi                                             // 0x005bc8f8    85f6
                         {disp32} je        _jmp_addr_0x005bcb0a                                 // 0x005bc8fa    0f840a020000
                         {disp32} fld       dword ptr [ebx + 0x00003478]                         // 0x005bc900    d98378340000
                         {disp32} fmul      dword ptr [__real@447a0000]                          // 0x005bc906    d80d28b28a00
                         call               _jmp_addr_0x007a1400                                 // 0x005bc90c    e8ef4a1e00
                         {disp32} mov       edi, dword ptr [ebx + 0x000028b8]                    // 0x005bc911    8bbbb8280000
                         cdq                                                                     // 0x005bc917    99
                         idiv               dword ptr [esi]                                      // 0x005bc918    f73e
                         {disp8} mov        eax, dword ptr [ebx + 0x0c]                          // 0x005bc91a    8b430c
                         {disp32} mov       esi, dword ptr [ebx + 0x000028b4]                    // 0x005bc91d    8bb3b4280000
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x005bc923    8d0c40
                         shl                ecx, 4                                               // 0x005bc926    c1e104
                         mov.s              eax, ecx                                             // 0x005bc929    8bc1
                         shr                ecx, 2                                               // 0x005bc92b    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x005bc92e    f3a5
                         push               0x0                                                  // 0x005bc930    6a00
                         mov.s              ecx, eax                                             // 0x005bc932    8bc8
                         and                ecx, 0x03                                            // 0x005bc934    83e103
                         rep movsb                                                               // 0x005bc937    f3a4
                         {disp8} mov        ecx, dword ptr [ebx + 0x28]                          // 0x005bc939    8b4b28
                         {disp32} mov       eax, dword ptr [ebx + 0x000028ac]                    // 0x005bc93c    8b83ac280000
                         {disp8} mov        edi, dword ptr [esp + 0x48]                          // 0x005bc942    8b7c2448
                         push               0x0                                                  // 0x005bc946    6a00
                         push               ecx                                                  // 0x005bc948    51
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                          // 0x005bc949    8b4b14
                         push               edx                                                  // 0x005bc94c    52
                         {disp32} mov       edx, dword ptr [ebx + 0x000028b0]                    // 0x005bc94d    8b93b0280000
                         push               edx                                                  // 0x005bc953    52
                         {disp32} mov       edx, dword ptr [ebx + 0x000028b4]                    // 0x005bc954    8b93b4280000
                         push               eax                                                  // 0x005bc95a    50
                         push               ecx                                                  // 0x005bc95b    51
                         push               edx                                                  // 0x005bc95c    52
                         mov.s              ecx, edi                                             // 0x005bc95d    8bcf
                         call               _jmp_addr_0x00860e00                                 // 0x005bc95f    e89c442a00
                         {disp32} fld       dword ptr [ebx + 0x00003478]                         // 0x005bc964    d98378340000
                         {disp32} fmul      dword ptr [__real@447a0000]                          // 0x005bc96a    d80d28b28a00
                         call               _jmp_addr_0x007a1400                                 // 0x005bc970    e88b4a1e00
                         cdq                                                                     // 0x005bc975    99
                         idiv               dword ptr [ebp + 0x00]                               // 0x005bc976    f77d00
                         {disp8} mov        eax, dword ptr [ebx + 0x28]                          // 0x005bc979    8b4328
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028b0]                    // 0x005bc97c    8b8bb0280000
                         push               0x0                                                  // 0x005bc982    6a00
                         push               0x0                                                  // 0x005bc984    6a00
                         push               eax                                                  // 0x005bc986    50
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                          // 0x005bc987    8b4314
                         push               edx                                                  // 0x005bc98a    52
                         push               ecx                                                  // 0x005bc98b    51
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028b8]                    // 0x005bc98c    8b8bb8280000
                         {disp8} mov        dword ptr [esp + 0x58], edx                          // 0x005bc992    89542458
                         {disp32} mov       edx, dword ptr [ebx + 0x000028ac]                    // 0x005bc996    8b93ac280000
                         push               edx                                                  // 0x005bc99c    52
                         push               eax                                                  // 0x005bc99d    50
                         push               ecx                                                  // 0x005bc99e    51
                         mov.s              ecx, ebp                                             // 0x005bc99f    8bcd
                         call               _jmp_addr_0x00860e00                                 // 0x005bc9a1    e85a442a00
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                          // 0x005bc9a6    8b4314
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028b4]                    // 0x005bc9a9    8b8bb4280000
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x005bc9af    8d542410
                         push               edx                                                  // 0x005bc9b3    52
                         push               eax                                                  // 0x005bc9b4    50
                         push               ecx                                                  // 0x005bc9b5    51
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000                   // 0x005bc9b6    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000                   // 0x005bc9be    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000                   // 0x005bc9c6    c744244000000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000                   // 0x005bc9ce    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000                   // 0x005bc9d6    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000                   // 0x005bc9de    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000                   // 0x005bc9e6    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000                   // 0x005bc9ee    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x005bc9f6    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3f800000                   // 0x005bc9fe    c744243c0000803f
                         {disp8} mov        dword ptr [esp + 0x2c], 0x3f800000                   // 0x005bca06    c744242c0000803f
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3f800000                   // 0x005bca0e    c744241c0000803f
                         call               _jmp_addr_0x00839f10                                 // 0x005bca16    e8f5d42700
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                          // 0x005bca1b    8b4314
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028b8]                    // 0x005bca1e    8b8bb8280000
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x005bca24    8d54241c
                         push               edx                                                  // 0x005bca28    52
                         push               eax                                                  // 0x005bca29    50
                         push               ecx                                                  // 0x005bca2a    51
                         call               _jmp_addr_0x00839f10                                 // 0x005bca2b    e8e0d42700
                         {disp32} mov       eax, dword ptr [ebx + 0x000028b4]                    // 0x005bca30    8b83b4280000
                         add                esp, 0x18                                            // 0x005bca36    83c418
                         {disp8} mov        ecx, dword ptr [ebx + 0x0c]                          // 0x005bca39    8b4b0c
                         {disp32} mov       esi, dword ptr [ebx + 0x000028b8]                    // 0x005bca3c    8bb3b8280000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005bca42    8d0c49
                         shl                ecx, 2                                               // 0x005bca45    c1e102
                         xor.s              edx, edx                                             // 0x005bca48    33d2
                         test               ecx, ecx                                             // 0x005bca4a    85c9
                         {disp8} jle        _jmp_addr_0x005bca72                                 // 0x005bca4c    7e24
_jmp_addr_0x005bca4e:    fld                dword ptr [esi]                                      // 0x005bca4e    d906
                         inc                edx                                                  // 0x005bca50    42
                         fsub               dword ptr [eax]                                      // 0x005bca51    d820
                         add                eax, 0x04                                            // 0x005bca53    83c004
                         add                esi, 0x04                                            // 0x005bca56    83c604
                         {disp32} fmul      dword ptr [ebx + 0x0000348c]                         // 0x005bca59    d88b8c340000
                         {disp8} fadd       dword ptr [eax + -0x04]                              // 0x005bca5f    d840fc
                         {disp8} fstp       dword ptr [eax + -0x04]                              // 0x005bca62    d958fc
                         {disp8} mov        ecx, dword ptr [ebx + 0x0c]                          // 0x005bca65    8b4b0c
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x005bca68    8d0c49
                         shl                ecx, 2                                               // 0x005bca6b    c1e102
                         cmp.s              edx, ecx                                             // 0x005bca6e    3bd1
                         {disp8} jl         _jmp_addr_0x005bca4e                                 // 0x005bca70    7cdc
_jmp_addr_0x005bca72:    {disp8} mov        eax, dword ptr [ebx + 0x14]                          // 0x005bca72    8b4314
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028b4]                    // 0x005bca75    8b8bb4280000
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x005bca7b    8d542410
                         push               edx                                                  // 0x005bca7f    52
                         push               eax                                                  // 0x005bca80    50
                         push               ecx                                                  // 0x005bca81    51
                         call               _jmp_addr_0x0083a020                                 // 0x005bca82    e899d52700
                         {disp8} mov        eax, dword ptr [esp + 0x58]                          // 0x005bca87    8b442458
                         add                esp, 0x0c                                            // 0x005bca8b    83c40c
                         test               eax, eax                                             // 0x005bca8e    85c0
                         {disp8} je         _jmp_addr_0x005bcb0a                                 // 0x005bca90    7478
                         mov.s              ecx, ebx                                             // 0x005bca92    8bcb
                         call               _jmp_addr_0x005bc7c0                                 // 0x005bca94    e827fdffff
                         {disp8} fild       dword ptr [esp + 0x44]                               // 0x005bca99    db442444
                         push               eax                                                  // 0x005bca9d    50
                         fidiv              dword ptr [edi]                                      // 0x005bca9e    da37
                         {disp8} jmp        _jmp_addr_0x005bcafd                                 // 0x005bcaa0    eb5b
_jmp_addr_0x005bcaa2:    test               esi, esi                                             // 0x005bcaa2    85f6
                         {disp8} je         _jmp_addr_0x005bcb0a                                 // 0x005bcaa4    7464
                         {disp32} fld       dword ptr [ebx + 0x00003478]                         // 0x005bcaa6    d98378340000
                         {disp32} fmul      dword ptr [__real@447a0000]                          // 0x005bcaac    d80d28b28a00
                         call               _jmp_addr_0x007a1400                                 // 0x005bcab2    e849491e00
                         cdq                                                                     // 0x005bcab7    99
                         idiv               dword ptr [esi]                                      // 0x005bcab8    f73e
                         {disp8} mov        eax, dword ptr [ebx + 0x28]                          // 0x005bcaba    8b4328
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028b0]                    // 0x005bcabd    8b8bb0280000
                         push               0x0                                                  // 0x005bcac3    6a00
                         push               0x0                                                  // 0x005bcac5    6a00
                         push               eax                                                  // 0x005bcac7    50
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                          // 0x005bcac8    8b4314
                         push               edx                                                  // 0x005bcacb    52
                         push               ecx                                                  // 0x005bcacc    51
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028b4]                    // 0x005bcacd    8b8bb4280000
                         {disp8} mov        dword ptr [esp + 0x58], edx                          // 0x005bcad3    89542458
                         {disp32} mov       edx, dword ptr [ebx + 0x000028ac]                    // 0x005bcad7    8b93ac280000
                         push               edx                                                  // 0x005bcadd    52
                         push               eax                                                  // 0x005bcade    50
                         push               ecx                                                  // 0x005bcadf    51
                         mov.s              ecx, esi                                             // 0x005bcae0    8bce
                         call               _jmp_addr_0x00860e00                                 // 0x005bcae2    e819432a00
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                          // 0x005bcae7    8b44244c
                         test               eax, eax                                             // 0x005bcaeb    85c0
                         {disp8} je         _jmp_addr_0x005bcb0a                                 // 0x005bcaed    741b
                         mov.s              ecx, ebx                                             // 0x005bcaef    8bcb
                         call               _jmp_addr_0x005bc7c0                                 // 0x005bcaf1    e8cafcffff
                         {disp8} fild       dword ptr [esp + 0x44]                               // 0x005bcaf6    db442444
                         push               eax                                                  // 0x005bcafa    50
                         fidiv              dword ptr [esi]                                      // 0x005bcafb    da36
_jmp_addr_0x005bcafd:    push               ecx                                                  // 0x005bcafd    51
                         fstp               dword ptr [esp]                                      // 0x005bcafe    d91c24
                         push               0x1                                                  // 0x005bcb01    6a01
_jmp_addr_0x005bcb03:    mov.s              ecx, ebx                                             // 0x005bcb03    8bcb
                         call               _jmp_addr_0x005c2800                                 // 0x005bcb05    e8f65c0000
_jmp_addr_0x005bcb0a:    {disp8} mov        edx, dword ptr [ebx + 0x24]                          // 0x005bcb0a    8b5324
                         {disp8} mov        esi, dword ptr [edx + 0x10]                          // 0x005bcb0d    8b7210
                         test               esi, esi                                             // 0x005bcb10    85f6
                         {disp8} je         _jmp_addr_0x005bcb7a                                 // 0x005bcb12    7466
                         {disp32} fld       dword ptr [ebx + 0x00003478]                         // 0x005bcb14    d98378340000
                         {disp32} fmul      dword ptr [__real@447a0000]                          // 0x005bcb1a    d80d28b28a00
                         call               _jmp_addr_0x007a1400                                 // 0x005bcb20    e8db481e00
                         cdq                                                                     // 0x005bcb25    99
                         idiv               dword ptr [esi]                                      // 0x005bcb26    f73e
                         {disp32} mov       eax, dword ptr [ebx + 0x000028b0]                    // 0x005bcb28    8b83b0280000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000028ac]                    // 0x005bcb2e    8b8bac280000
                         push               0x0                                                  // 0x005bcb34    6a00
                         push               0x0                                                  // 0x005bcb36    6a00
                         push               edx                                                  // 0x005bcb38    52
                         push               eax                                                  // 0x005bcb39    50
                         {disp8} mov        eax, dword ptr [esi + 0x34]                          // 0x005bcb3a    8b4634
                         push               ecx                                                  // 0x005bcb3d    51
                         mov                ecx, dword ptr [eax]                                 // 0x005bcb3e    8b08
                         {disp8} mov        dword ptr [esp + 0x58], edx                          // 0x005bcb40    89542458
                         {disp8} mov        edx, dword ptr [ebx + 0x14]                          // 0x005bcb44    8b5314
                         push               edx                                                  // 0x005bcb47    52
                         {disp32} mov       edx, dword ptr [ebx + 0x000028b4]                    // 0x005bcb48    8b93b4280000
                         push               ecx                                                  // 0x005bcb4e    51
                         push               edx                                                  // 0x005bcb4f    52
                         mov.s              ecx, esi                                             // 0x005bcb50    8bce
                         call               _jmp_addr_0x00861ee0                                 // 0x005bcb52    e889532a00
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                          // 0x005bcb57    8b44244c
                         test               eax, eax                                             // 0x005bcb5b    85c0
                         {disp8} je         _jmp_addr_0x005bcb7a                                 // 0x005bcb5d    741b
                         mov.s              ecx, ebx                                             // 0x005bcb5f    8bcb
                         call               _jmp_addr_0x005bc7c0                                 // 0x005bcb61    e85afcffff
                         {disp8} fild       dword ptr [esp + 0x44]                               // 0x005bcb66    db442444
                         push               eax                                                  // 0x005bcb6a    50
                         push               ecx                                                  // 0x005bcb6b    51
                         fidiv              dword ptr [esi]                                      // 0x005bcb6c    da36
                         mov.s              ecx, ebx                                             // 0x005bcb6e    8bcb
                         fstp               dword ptr [esp]                                      // 0x005bcb70    d91c24
                         push               0x4                                                  // 0x005bcb73    6a04
                         call               _jmp_addr_0x005c2800                                 // 0x005bcb75    e8865c0000
_jmp_addr_0x005bcb7a:    {disp32} mov       eax, dword ptr [ebx + 0x00002c24]                    // 0x005bcb7a    8b83242c0000
                         test               eax, eax                                             // 0x005bcb80    85c0
                         pop                edi                                                  // 0x005bcb82    5f
                         pop                esi                                                  // 0x005bcb83    5e
                         pop                ebp                                                  // 0x005bcb84    5d
                         {disp8} je         _jmp_addr_0x005bcb8f                                 // 0x005bcb85    7408
                         {disp32} fld       dword ptr [rdata_bytes + 0x352d0]                    // 0x005bcb87    d905d0e28d00
                         {disp8} jmp        _jmp_addr_0x005bcb95                                 // 0x005bcb8d    eb06
_jmp_addr_0x005bcb8f:    {disp32} fld       dword ptr [rdata_bytes + 0x57c68]                    // 0x005bcb8f    d905680c9000
_jmp_addr_0x005bcb95:    {disp8} fmul       dword ptr [esp + 0x3c]                               // 0x005bcb95    d84c243c
                         fld                st(0)                                                // 0x005bcb99    d9c0
                         {disp32} fadd      dword ptr [ebx + 0x00003478]                         // 0x005bcb9b    d88378340000
                         {disp32} fstp      dword ptr [ebx + 0x00003478]                         // 0x005bcba1    d99b78340000
                         {disp32} fadd      dword ptr [ebx + 0x0000347c]                         // 0x005bcba7    d8837c340000
                         {disp32} fstp      dword ptr [ebx + 0x0000347c]                         // 0x005bcbad    d99b7c340000
                         pop                ebx                                                  // 0x005bcbb3    5b
                         add                esp, 0x30                                            // 0x005bcbb4    83c430
                         ret                0x000c                                               // 0x005bcbb7    c20c00
                         call               dword ptr [rdata_bytes + 0x5f0]                      // 0x005bcbba    ff15f0958a00
_jmp_addr_0x005bcbc0:    push               esi                                                  // 0x005bcbc0    56
                         mov.s              esi, ecx                                             // 0x005bcbc1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00002f08]                    // 0x005bcbc3    8b86082f0000
                         test               eax, eax                                             // 0x005bcbc9    85c0
                         push               edi                                                  // 0x005bcbcb    57
                         {disp8} je         _jmp_addr_0x005bcc15                                 // 0x005bcbcc    7447
                         cmp                dword ptr [eax], 0x00                                // 0x005bcbce    833800
                         {disp8} je         _jmp_addr_0x005bcc15                                 // 0x005bcbd1    7442
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                          // 0x005bcbd3    8b4808
                         cmp                ecx, dword ptr [eax + 0x04]                          // 0x005bcbd6    3b4804
                         {disp8} jge        _jmp_addr_0x005bcc15                                 // 0x005bcbd9    7d3a
                         {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x005bcbdb    8b7c2410
_jmp_addr_0x005bcbdf:    mov                edx, dword ptr [eax]                                 // 0x005bcbdf    8b10
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x005bcbe1    d944240c
                         lea                ecx, dword ptr [ecx + ecx * 0x4]                     // 0x005bcbe5    8d0c89
                         fcomp              dword ptr [edx + ecx * 0x4]                          // 0x005bcbe8    d81c8a
                         lea                ecx, dword ptr [edx + ecx * 0x4]                     // 0x005bcbeb    8d0c8a
                         fnstsw             ax                                                   // 0x005bcbee    dfe0
                         test               ah, 0x41                                             // 0x005bcbf0    f6c441
                         {disp8} jne        _jmp_addr_0x005bcc15                                 // 0x005bcbf3    7520
                         push               0x1                                                  // 0x005bcbf5    6a01
                         push               edi                                                  // 0x005bcbf7    57
                         push               esi                                                  // 0x005bcbf8    56
                         call               _jmp_addr_0x0042acc0                                 // 0x005bcbf9    e8c2e0e6ff
                         {disp32} mov       eax, dword ptr [esi + 0x00002f08]                    // 0x005bcbfe    8b86082f0000
                         {disp8} inc        dword ptr [eax + 0x08]                               // 0x005bcc04    ff4008
                         {disp32} mov       eax, dword ptr [esi + 0x00002f08]                    // 0x005bcc07    8b86082f0000
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                          // 0x005bcc0d    8b4808
                         cmp                ecx, dword ptr [eax + 0x04]                          // 0x005bcc10    3b4804
                         {disp8} jl         _jmp_addr_0x005bcbdf                                 // 0x005bcc13    7cca
_jmp_addr_0x005bcc15:    pop                edi                                                  // 0x005bcc15    5f
                         pop                esi                                                  // 0x005bcc16    5e
                         ret                0x0008                                               // 0x005bcc17    c20800
                         call               dword ptr [__imp__CoFileTimeToDosDateTime@4]         // 0x005bcc1a    ff1578998a00
_jmp_addr_0x005bcc20:    push               edi                                                  // 0x005bcc20    57
                         {disp32} lea       edi, dword ptr [ecx + 0x00002f7c]                    // 0x005bcc21    8db97c2f0000
                         mov                ecx, 0x00000050                                      // 0x005bcc27    b950000000
                         xor.s              eax, eax                                             // 0x005bcc2c    33c0
                         rep stosd                                                               // 0x005bcc2e    f3ab
                         pop                edi                                                  // 0x005bcc30    5f
                         ret                                                                     // 0x005bcc31    c3
                         nop                                                                     // 0x005bcc32    90
                         nop                                                                     // 0x005bcc33    90
                         nop                                                                     // 0x005bcc34    90
                         nop                                                                     // 0x005bcc35    90
                         nop                                                                     // 0x005bcc36    90
                         nop                                                                     // 0x005bcc37    90
                         nop                                                                     // 0x005bcc38    90
                         nop                                                                     // 0x005bcc39    90
                         nop                                                                     // 0x005bcc3a    90
                         nop                                                                     // 0x005bcc3b    90
                         nop                                                                     // 0x005bcc3c    90
                         nop                                                                     // 0x005bcc3d    90
                         nop                                                                     // 0x005bcc3e    90
                         nop                                                                     // 0x005bcc3f    90
                         {disp8} fild       dword ptr [esp + 0x10]                               // 0x005bcc40    db442410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x005bcc44    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                          // 0x005bcc48    8b542404
                         push               esi                                                  // 0x005bcc4c    56
                         push               edi                                                  // 0x005bcc4d    57
                         push               0x00000200                                           // 0x005bcc4e    6800020000
                         push               0x00d14084                                           // 0x005bcc53    688440d100
                         mov.s              esi, ecx                                             // 0x005bcc58    8bf1
                         push               ecx                                                  // 0x005bcc5a    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x005bcc5b    8b4c241c
                         fstp               dword ptr [esp]                                      // 0x005bcc5f    d91c24
                         push               eax                                                  // 0x005bcc62    50
                         push               ecx                                                  // 0x005bcc63    51
                         push               0x0                                                  // 0x005bcc64    6a00
                         push               edx                                                  // 0x005bcc66    52
                         {disp32} lea       edi, dword ptr [esi + 0x00002f60]                    // 0x005bcc67    8dbe602f0000
                         push               edi                                                  // 0x005bcc6d    57
                         {disp32} lea       ecx, dword ptr [esi + 0x00002f10]                    // 0x005bcc6e    8d8e102f0000
                         call               _jmp_addr_0x00428850                                 // 0x005bcc74    e8d7bbe6ff
                         push               edi                                                  // 0x005bcc79    57
                         mov.s              ecx, esi                                             // 0x005bcc7a    8bce
                         call               _jmp_addr_0x005bf810                                 // 0x005bcc7c    e88f2b0000
                         pop                edi                                                  // 0x005bcc81    5f
                         xor.s              eax, eax                                             // 0x005bcc82    33c0
                         pop                esi                                                  // 0x005bcc84    5e
                         ret                0x0010                                               // 0x005bcc85    c21000
                         nop                                                                     // 0x005bcc88    90
                         nop                                                                     // 0x005bcc89    90
                         nop                                                                     // 0x005bcc8a    90
                         nop                                                                     // 0x005bcc8b    90
                         nop                                                                     // 0x005bcc8c    90
                         nop                                                                     // 0x005bcc8d    90
                         nop                                                                     // 0x005bcc8e    90
                         nop                                                                     // 0x005bcc8f    90
_jmp_addr_0x005bcc90:    push               esi                                                  // 0x005bcc90    56
                         mov.s              esi, ecx                                             // 0x005bcc91    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00002c24]                    // 0x005bcc93    8b86242c0000
                         test               eax, eax                                             // 0x005bcc99    85c0
                         push               0x1                                                  // 0x005bcc9b    6a01
                         push               0x3ecccccd                                           // 0x005bcc9d    68cdcccc3e
                         {disp8} je         _jmp_addr_0x005bccca                                 // 0x005bcca2    7426
                         push               0x3e19999a                                           // 0x005bcca4    689a99193e
                         call               _jmp_addr_0x005b96d0                                 // 0x005bcca9    e822caffff
                         push               0x1                                                  // 0x005bccae    6a01
                         push               0x3ecccccd                                           // 0x005bccb0    68cdcccc3e
                         push               0x0                                                  // 0x005bccb5    6a00
                         mov.s              ecx, esi                                             // 0x005bccb7    8bce
                         call               _jmp_addr_0x005b98d0                                 // 0x005bccb9    e812ccffff
                         {disp32} mov       dword ptr [esi + 0x000037e8], 0x00000001             // 0x005bccbe    c786e837000001000000
                         pop                esi                                                  // 0x005bccc8    5e
                         ret                                                                     // 0x005bccc9    c3
_jmp_addr_0x005bccca:    push               0xbe19999a                                           // 0x005bccca    689a9919be
                         mov.s              ecx, esi                                             // 0x005bcccf    8bce
                         call               _jmp_addr_0x005b96d0                                 // 0x005bccd1    e8fac9ffff
                         push               0x1                                                  // 0x005bccd6    6a01
                         push               0x3ecccccd                                           // 0x005bccd8    68cdcccc3e
                         push               0x3dcccccd                                           // 0x005bccdd    68cdcccc3d
                         mov.s              ecx, esi                                             // 0x005bcce2    8bce
                         call               _jmp_addr_0x005b98d0                                 // 0x005bcce4    e8e7cbffff
                         {disp32} mov       dword ptr [esi + 0x000037e8], 0x00000001             // 0x005bcce9    c786e837000001000000
                         pop                esi                                                  // 0x005bccf3    5e
                         ret                                                                     // 0x005bccf4    c3
                         nop                                                                     // 0x005bccf5    90
                         nop                                                                     // 0x005bccf6    90
                         nop                                                                     // 0x005bccf7    90
                         nop                                                                     // 0x005bccf8    90
                         nop                                                                     // 0x005bccf9    90
                         nop                                                                     // 0x005bccfa    90
                         nop                                                                     // 0x005bccfb    90
                         nop                                                                     // 0x005bccfc    90
                         nop                                                                     // 0x005bccfd    90
                         nop                                                                     // 0x005bccfe    90
                         nop                                                                     // 0x005bccff    90
_jmp_addr_0x005bcd00:    sub                esp, 0x1c                                            // 0x005bcd00    83ec1c
                         push               ebx                                                  // 0x005bcd03    53
                         push               ebp                                                  // 0x005bcd04    55
                         push               esi                                                  // 0x005bcd05    56
                         mov.s              esi, ecx                                             // 0x005bcd06    8bf1
                         xor.s              ebp, ebp                                             // 0x005bcd08    33ed
                         push               edi                                                  // 0x005bcd0a    57
                         {disp32} mov       dword ptr [esi + 0x000037e8], ebp                    // 0x005bcd0b    89aee8370000
                         call               _jmp_addr_0x005bb760                                 // 0x005bcd11    e84aeaffff
                         test               eax, eax                                             // 0x005bcd16    85c0
                         {disp32} je        _jmp_addr_0x005bce0c                                 // 0x005bcd18    0f84ee000000
                         cmp                dword ptr [data_bytes + 0x34fa9c], ebp               // 0x005bcd1e    392d9c5ad100
                         {disp32} je        _jmp_addr_0x005bce0c                                 // 0x005bcd24    0f84e2000000
                         call               dword ptr [__imp__GetTickCount@4]                    // 0x005bcd2a    ff15c4918a00
                         sub                eax, dword ptr [data_bytes + 0x34fa98]               // 0x005bcd30    2b05985ad100
                         {disp32} mov       ecx, dword ptr [esi + 0x00002efc]                    // 0x005bcd36    8b8efc2e0000
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x005bcd3c    89442424
                         {disp8} mov        dword ptr [esp + 0x28], ebp                          // 0x005bcd40    896c2428
                         {disp8} fild       qword ptr [esp + 0x24]                               // 0x005bcd44    df6c2424
                         {disp32} fmul      dword ptr [_rdata_float0p001]                        // 0x005bcd48    d80db0a38a00
                         {disp32} fstp      dword ptr [esi + 0x00002f70]                         // 0x005bcd4e    d99e702f0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34fa9c]               // 0x005bcd54    a19c5ad100
                         push               eax                                                  // 0x005bcd59    50
                         push               0x0000270c                                           // 0x005bcd5a    680c270000
                         push               ecx                                                  // 0x005bcd5f    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00002ef8]                    // 0x005bcd60    8b8ef82e0000
                         call               dword ptr [rdata_bytes + 0x6e0]                      // 0x005bcd66    ff15e0968a00
                         cmp.s              eax, ebp                                             // 0x005bcd6c    3bc5
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x005bcd6e    89442424
                         {disp8} jl         _jmp_addr_0x005bcde2                                 // 0x005bcd72    7c6e
                         {disp8} fild       dword ptr [esp + 0x24]                               // 0x005bcd74    db442424
                         {disp32} fmul      dword ptr [_rdata_float0p001]                        // 0x005bcd78    d80db0a38a00
                         {disp8} fst        dword ptr [esp + 0x24]                               // 0x005bcd7e    d9542424
                         {disp32} fstp      dword ptr [esi + 0x00002f70]                         // 0x005bcd82    d99e702f0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34fa9c]               // 0x005bcd88    a19c5ad100
                         cmp.s              eax, ebp                                             // 0x005bcd8d    3bc5
                         {disp8} je         _jmp_addr_0x005bcdd2                                 // 0x005bcd8f    7441
                         {disp32} mov       eax, dword ptr [data_bytes + 0x34fa94]               // 0x005bcd91    a1945ad100
                         cmp.s              eax, ebp                                             // 0x005bcd96    3bc5
                         {disp8} je         _jmp_addr_0x005bcdd2                                 // 0x005bcd98    7438
                         {disp32} fild      dword ptr [data_bytes + 0x34fa88]                    // 0x005bcd9a    db05885ad100
                         {disp32} mov       edx, dword ptr [data_bytes + 0x34fa8c]               // 0x005bcda0    8b158c5ad100
                         push               0x00000200                                           // 0x005bcda6    6800020000
                         push               0x00d14084                                           // 0x005bcdab    688440d100
                         push               ecx                                                  // 0x005bcdb0    51
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                          // 0x005bcdb1    8b4c243c
                         fstp               dword ptr [esp]                                      // 0x005bcdb5    d91c24
                         push               edx                                                  // 0x005bcdb8    52
                         push               eax                                                  // 0x005bcdb9    50
                         {disp8} mov        eax, dword ptr [esp + 0x38]                          // 0x005bcdba    8b442438
                         push               eax                                                  // 0x005bcdbe    50
                         push               ecx                                                  // 0x005bcdbf    51
                         {disp32} lea       edx, dword ptr [esi + 0x00002f60]                    // 0x005bcdc0    8d96602f0000
                         push               edx                                                  // 0x005bcdc6    52
                         {disp32} lea       ecx, dword ptr [esi + 0x00002f10]                    // 0x005bcdc7    8d8e102f0000
                         call               _jmp_addr_0x00428850                                 // 0x005bcdcd    e87ebae6ff
_jmp_addr_0x005bcdd2:    {disp32} lea       eax, dword ptr [esi + 0x00002f60]                    // 0x005bcdd2    8d86602f0000
                         push               eax                                                  // 0x005bcdd8    50
                         mov.s              ecx, esi                                             // 0x005bcdd9    8bce
                         call               _jmp_addr_0x005bf810                                 // 0x005bcddb    e8302a0000
                         {disp8} jmp        _jmp_addr_0x005bcdfc                                 // 0x005bcde0    eb1a
_jmp_addr_0x005bcde2:    {disp32} fld       dword ptr [esi + 0x00002f70]                         // 0x005bcde2    d986702f0000
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                          // 0x005bcde8    d81db4a38a00
                         fnstsw             ax                                                   // 0x005bcdee    dfe0
                         test               ah, 0x41                                             // 0x005bcdf0    f6c441
                         {disp8} jne        _jmp_addr_0x005bcdfc                                 // 0x005bcdf3    7507
                         mov.s              ecx, esi                                             // 0x005bcdf5    8bce
                         call               _jmp_addr_0x005bb840                                 // 0x005bcdf7    e844eaffff
_jmp_addr_0x005bcdfc:    {disp32} mov       ecx, dword ptr [esi + 0x00002f70]                    // 0x005bcdfc    8b8e702f0000
                         push               0x1                                                  // 0x005bce02    6a01
                         push               ecx                                                  // 0x005bce04    51
                         mov.s              ecx, esi                                             // 0x005bce05    8bce
                         call               _jmp_addr_0x005bcbc0                                 // 0x005bce07    e8b4fdffff
_jmp_addr_0x005bce0c:    {disp8} mov        dword ptr [esp + 0x24], ebp                          // 0x005bce0c    896c2424
                         xor.s              edi, edi                                             // 0x005bce10    33ff
                         mov                bl, 0x20                                             // 0x005bce12    b320
_jmp_addr_0x005bce14:    {disp32} mov       ecx, dword ptr [esi + edi * 0x4 + 0x00002f7c]        // 0x005bce14    8b8cbe7c2f0000
                         cmp.s              ecx, ebp                                             // 0x005bce1b    3bcd
                         {disp32} je        _jmp_addr_0x005bd078                                 // 0x005bce1d    0f8455020000
                         {disp8} mov        edx, dword ptr [esi + 0x24]                          // 0x005bce23    8b5624
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x005bce26    d9442430
                         mov                eax, dword ptr [edx + edi * 0x4]                     // 0x005bce2a    8b04ba
                         cmp.s              eax, ebp                                             // 0x005bce2d    3bc5
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000                   // 0x005bce2f    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x005bce37    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000                   // 0x005bce3f    c744241800000000
                         {disp8} je         _jmp_addr_0x005bce7e                                 // 0x005bce47    7435
                         {disp32} mov       edx, dword ptr [esi + 0x0000333c]                    // 0x005bce49    8b963c330000
                         fstp               st(0)                                                // 0x005bce4f    ddd8
                         fild               dword ptr [eax]                                      // 0x005bce51    db00
                         mov.s              eax, edi                                             // 0x005bce53    8bc7
                         shl                eax, 4                                               // 0x005bce55    c1e004
                         add.s              eax, edx                                             // 0x005bce58    03c2
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]                     // 0x005bce5a    d80d18c48a00
                         {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x005bce60    8b5008
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                          // 0x005bce63    8b400c
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x005bce66    89442418
                         {disp8} fdivr      dword ptr [esp + 0x30]                               // 0x005bce6a    d87c2430
                         {disp8} mov        dword ptr [esp + 0x20], edx                          // 0x005bce6e    89542420
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x005bce72    d9442418
                         {disp8} fsub       dword ptr [esp + 0x20]                               // 0x005bce76    d8642420
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x005bce7a    d95c241c
_jmp_addr_0x005bce7e:    {disp32} fld       dword ptr [esi + edi * 0x4 + 0x000030bc]             // 0x005bce7e    d984bebc300000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x005bce85    8d41ff
                         cmp                eax, 0x03                                            // 0x005bce88    83f803
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x005bce8b    d95c2414
                         {disp32} ja        _jmp_addr_0x005bd076                                 // 0x005bce8f    0f87e1010000
                         jmp                dword ptr [eax*4 + 0x5bd098]                         // 0x005bce95    ff248598d05b00
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x005bce9c    d9442414
                         fadd               st, st(1)                                            // 0x005bcea0    d8c1
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x005bcea2    d95c2410
                         fstp               st(0)                                                // 0x005bcea6    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bcea8    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bceac    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bceb2    dfe0
                         test               ah, 0x41                                             // 0x005bceb4    f6c441
                         {disp8} jne        _jmp_addr_0x005bced0                                 // 0x005bceb7    7517
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00002f7c], ebp        // 0x005bceb9    89acbe7c2f0000
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x000031fc], 0xbf800000 // 0x005bcec0    c784befc310000000080bf
                         {disp32} jmp       _jmp_addr_0x005bd078                                 // 0x005bcecb    e9a8010000
_jmp_addr_0x005bced0:    cmp                edi, 0x45                                            // 0x005bced0    83ff45
                         {disp8} jne        _jmp_addr_0x005bcedc                                 // 0x005bced3    7507
                         mov.s              ecx, esi                                             // 0x005bced5    8bce
                         call               _jmp_addr_0x005bcc90                                 // 0x005bced7    e8b4fdffff
_jmp_addr_0x005bcedc:    test               byte ptr [edi + esi * 0x1 + 0x00002e7c], bl          // 0x005bcedc    849c377c2e0000
                         {disp8} je         _jmp_addr_0x005bcef0                                 // 0x005bcee3    740b
                         {disp32} mov       eax, dword ptr [esi + 0x00003490]                    // 0x005bcee5    8b8690340000
                         test               ah, 0x01                                             // 0x005bceeb    f6c401
                         {disp8} jne        _jmp_addr_0x005bceff                                 // 0x005bceee    750f
_jmp_addr_0x005bcef0:    {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x005bcef0    8b4c2410
                         push               ebp                                                  // 0x005bcef4    55
                         push               ebp                                                  // 0x005bcef5    55
                         push               ecx                                                  // 0x005bcef6    51
                         push               edi                                                  // 0x005bcef7    57
                         mov.s              ecx, esi                                             // 0x005bcef8    8bce
                         call               _jmp_addr_0x005bb980                                 // 0x005bcefa    e881eaffff
_jmp_addr_0x005bceff:    test               byte ptr [edi + esi * 0x1 + 0x00002e7c], bl          // 0x005bceff    849c377c2e0000
                         {disp8} je         _jmp_addr_0x005bcf17                                 // 0x005bcf06    740f
                         {disp32} mov       eax, dword ptr [esi + 0x00003490]                    // 0x005bcf08    8b8690340000
                         test               ah, 0x01                                             // 0x005bcf0e    f6c401
                         {disp32} jne       _jmp_addr_0x005bd057                                 // 0x005bcf11    0f8540010000
_jmp_addr_0x005bcf17:    cmp                dword ptr [esp + 0x34], ebp                          // 0x005bcf17    396c2434
                         {disp32} je        _jmp_addr_0x005bd057                                 // 0x005bcf1b    0f8436010000
                         mov.s              ecx, esi                                             // 0x005bcf21    8bce
                         call               _jmp_addr_0x005bc7c0                                 // 0x005bcf23    e898f8ffff
                         {disp8} mov        edx, dword ptr [esp + 0x14]                          // 0x005bcf28    8b542414
                         push               eax                                                  // 0x005bcf2c    50
                         push               edx                                                  // 0x005bcf2d    52
                         {disp32} jmp       _jmp_addr_0x005bd04f                                 // 0x005bcf2e    e91c010000
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x005bcf33    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x005bcf37    d81d98a38a00
                         fnstsw             ax                                                   // 0x005bcf3d    dfe0
                         test               ah, 0x41                                             // 0x005bcf3f    f6c441
                         {disp8} je         _jmp_addr_0x005bcf72                                 // 0x005bcf42    742e
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x005bcf44    d9442414
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00002f7c], 0x00000001 // 0x005bcf48    c784be7c2f000001000000
                         fadd               st, st(1)                                            // 0x005bcf53    d8c1
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x005bcf55    d95c2410
                         fstp               st(0)                                                // 0x005bcf59    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bcf5b    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bcf5f    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bcf65    dfe0
                         test               ah, 0x41                                             // 0x005bcf67    f6c441
                         {disp32} jne       _jmp_addr_0x005bcff9                                 // 0x005bcf6a    0f8589000000
                         {disp8} jmp        _jmp_addr_0x005bcff1                                 // 0x005bcf70    eb7f
_jmp_addr_0x005bcf72:    {disp8} fld        dword ptr [esp + 0x14]                               // 0x005bcf72    d9442414
                         {disp8} fcomp      dword ptr [esp + 0x18]                               // 0x005bcf76    d85c2418
                         fnstsw             ax                                                   // 0x005bcf7a    dfe0
                         test               ah, 0x01                                             // 0x005bcf7c    f6c401
                         {disp8} je         _jmp_addr_0x005bcfc9                                 // 0x005bcf7f    7448
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x005bcf81    d9442414
                         fadd               st, st(1)                                            // 0x005bcf85    d8c1
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x005bcf87    d95c2410
                         fstp               st(0)                                                // 0x005bcf8b    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bcf8d    d9442410
                         {disp8} fcomp      dword ptr [esp + 0x18]                               // 0x005bcf91    d85c2418
                         fnstsw             ax                                                   // 0x005bcf95    dfe0
                         test               ah, 0x01                                             // 0x005bcf97    f6c401
                         {disp8} jne        _jmp_addr_0x005bcff9                                 // 0x005bcf9a    755d
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bcf9c    d9442410
                         {disp8} fsub       dword ptr [esp + 0x20]                               // 0x005bcfa0    d8642420
                         {disp8} fdiv       dword ptr [esp + 0x1c]                               // 0x005bcfa4    d874241c
                         fld                st(0)                                                // 0x005bcfa8    d9c0
                         call               _jmp_addr_0x007a1400                                 // 0x005bcfaa    e851441e00
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x005bcfaf    89442410
                         {disp8} fild       dword ptr [esp + 0x10]                               // 0x005bcfb3    db442410
                         fsubr              st, st(1)                                            // 0x005bcfb7    d8e9
                         {disp8} fmul       dword ptr [esp + 0x1c]                               // 0x005bcfb9    d84c241c
                         {disp8} fadd       dword ptr [esp + 0x20]                               // 0x005bcfbd    d8442420
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x005bcfc1    d95c2410
                         fstp               st(0)                                                // 0x005bcfc5    ddd8
                         {disp8} jmp        _jmp_addr_0x005bcff9                                 // 0x005bcfc7    eb30
_jmp_addr_0x005bcfc9:    {disp8} fld        dword ptr [esp + 0x14]                               // 0x005bcfc9    d9442414
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00002f7c], 0x00000004 // 0x005bcfcd    c784be7c2f000004000000
                         fadd               st, st(1)                                            // 0x005bcfd8    d8c1
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x005bcfda    d95c2410
                         fstp               st(0)                                                // 0x005bcfde    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bcfe0    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x005bcfe4    d81d90a38a00
                         fnstsw             ax                                                   // 0x005bcfea    dfe0
                         test               ah, 0x41                                             // 0x005bcfec    f6c441
                         {disp8} jne        _jmp_addr_0x005bcff9                                 // 0x005bcfef    7508
_jmp_addr_0x005bcff1:    {disp8} mov        dword ptr [esp + 0x10], 0x3f800000                   // 0x005bcff1    c74424100000803f
_jmp_addr_0x005bcff9:    cmp                edi, 0x45                                            // 0x005bcff9    83ff45
                         {disp8} jne        _jmp_addr_0x005bd005                                 // 0x005bcffc    7507
                         mov.s              ecx, esi                                             // 0x005bcffe    8bce
                         call               _jmp_addr_0x005bcc90                                 // 0x005bd000    e88bfcffff
_jmp_addr_0x005bd005:    test               byte ptr [edi + esi * 0x1 + 0x00002e7c], bl          // 0x005bd005    849c377c2e0000
                         {disp8} je         _jmp_addr_0x005bd019                                 // 0x005bd00c    740b
                         {disp32} mov       eax, dword ptr [esi + 0x00003490]                    // 0x005bd00e    8b8690340000
                         test               ah, 0x01                                             // 0x005bd014    f6c401
                         {disp8} jne        _jmp_addr_0x005bd028                                 // 0x005bd017    750f
_jmp_addr_0x005bd019:    {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x005bd019    8b442410
                         push               ebp                                                  // 0x005bd01d    55
                         push               ebp                                                  // 0x005bd01e    55
                         push               eax                                                  // 0x005bd01f    50
                         push               edi                                                  // 0x005bd020    57
                         mov.s              ecx, esi                                             // 0x005bd021    8bce
                         call               _jmp_addr_0x005bb980                                 // 0x005bd023    e858e9ffff
_jmp_addr_0x005bd028:    test               byte ptr [edi + esi * 0x1 + 0x00002e7c], bl          // 0x005bd028    849c377c2e0000
                         {disp8} je         _jmp_addr_0x005bd03c                                 // 0x005bd02f    740b
                         {disp32} mov       eax, dword ptr [esi + 0x00003490]                    // 0x005bd031    8b8690340000
                         test               ah, 0x01                                             // 0x005bd037    f6c401
                         {disp8} jne        _jmp_addr_0x005bd057                                 // 0x005bd03a    751b
_jmp_addr_0x005bd03c:    cmp                dword ptr [esp + 0x34], ebp                          // 0x005bd03c    396c2434
                         {disp8} je         _jmp_addr_0x005bd057                                 // 0x005bd040    7415
                         mov.s              ecx, esi                                             // 0x005bd042    8bce
                         call               _jmp_addr_0x005bc7c0                                 // 0x005bd044    e877f7ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x005bd049    8b4c2414
                         push               eax                                                  // 0x005bd04d    50
                         push               ecx                                                  // 0x005bd04e    51
_jmp_addr_0x005bd04f:    push               edi                                                  // 0x005bd04f    57
                         mov.s              ecx, esi                                             // 0x005bd050    8bce
                         call               _jmp_addr_0x005c2800                                 // 0x005bd052    e8a9570000
_jmp_addr_0x005bd057:    {disp8} fld        dword ptr [esp + 0x10]                               // 0x005bd057    d9442410
                         {disp8} mov        eax, dword ptr [esp + 0x24]                          // 0x005bd05b    8b442424
                         {disp32} fstp      dword ptr [esi + edi * 0x4 + 0x000030bc]             // 0x005bd05f    d99cbebc300000
                         movsx              edx, byte ptr [edi + esi * 0x1 + 0x00002e7c]         // 0x005bd066    0fbe94377c2e0000
                         or.s               eax, edx                                             // 0x005bd06e    0bc2
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x005bd070    89442424
                         {disp8} jmp        _jmp_addr_0x005bd078                                 // 0x005bd074    eb02
_jmp_addr_0x005bd076:    fstp               st(0)                                                // 0x005bd076    ddd8
_jmp_addr_0x005bd078:    inc                edi                                                  // 0x005bd078    47
                         cmp                edi, 0x50                                            // 0x005bd079    83ff50
                         {disp32} jl        _jmp_addr_0x005bce14                                 // 0x005bd07c    0f8c92fdffff
                         {disp8} mov        eax, dword ptr [esp + 0x24]                          // 0x005bd082    8b442424
                         pop                edi                                                  // 0x005bd086    5f
                         {disp32} mov       dword ptr [esi + 0x000035d0], eax                    // 0x005bd087    8986d0350000
                         pop                esi                                                  // 0x005bd08d    5e
                         pop                ebp                                                  // 0x005bd08e    5d
                         pop                ebx                                                  // 0x005bd08f    5b
                         add                esp, 0x1c                                            // 0x005bd090    83c41c
                         ret                0x0008                                               // 0x005bd093    c20800

// Snippet: db, [0x005bd096, 0x005bd098)
.byte 0x8b, 0xff                  // 0x005bd096

// Snippet: jmptbl, [0x005bd098, 0x005bd0a8)
.byte 0x9c, 0xce, 0x5b, 0x00      // 0x005bd098
.byte 0x33, 0xcf, 0x5b, 0x00      // 0x005bd09c
.byte 0x33, 0xcf, 0x5b, 0x00      // 0x005bd0a0
.byte 0x9c, 0xce, 0x5b, 0x00      // 0x005bd0a4

// Snippet: db, [0x005bd0a8, 0x005bd0b0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005bd0a8
.byte 0x90, 0x90, 0x90, 0x90      // 0x005bd0ac

