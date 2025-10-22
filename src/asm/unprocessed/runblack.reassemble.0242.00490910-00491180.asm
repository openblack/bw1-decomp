.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004753f0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x00480c60
.extern _jmp_addr_0x00483070
.extern _jmp_addr_0x004831b0
.extern _jmp_addr_0x00483870
.extern _jmp_addr_0x004839d0
.extern _jmp_addr_0x00483ab0
.extern _jmp_addr_0x00483fe0
.extern _jmp_addr_0x00484920
.extern _jmp_addr_0x00484ac0
.extern _jmp_addr_0x00487ce0
.extern _jmp_addr_0x0048b970
.extern _jmp_addr_0x0048d250
.extern _jmp_addr_0x004908b0
.extern _jmp_addr_0x00491180
.extern _jmp_addr_0x00617970
.extern _jmp_addr_0x00617a10
.extern _jmp_addr_0x00617a80
.extern _jmp_addr_0x006182f0
.extern @GetAnim__9MorphableFll@16
.extern ?GameRand@GRand@@SAHJ@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _jmp_addr_0x007faaf0
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0085e490
.extern ?MoveAlongRoute@RPFollow@@QAEXXZ
.extern @FillPosAndHeading__8RPFollowFR7Point2DRff@20
.extern @GetLength__9RouteNodeFP7RPAvoid@12

.globl _jmp_addr_0x00490910
.globl _jmp_addr_0x00490950
.globl _jmp_addr_0x00490960

start_0x00490910_0x00491180:
// Snippet: asm, [0x00490910, 0x00491152)
_jmp_addr_0x00490910:    push               esi                                      // 0x00490910    56
                         mov.s              esi, ecx                                 // 0x00490911    8bf1
                         test               byte ptr [esi + 0x24], 0x10              // 0x00490913    f6462410
                         {disp8} je         _jmp_addr_0x0049091d                     // 0x00490917    7404
                         xor.s              eax, eax                                 // 0x00490919    33c0
                         pop                esi                                      // 0x0049091b    5e
                         ret                                                         // 0x0049091c    c3
_jmp_addr_0x0049091d:    mov                eax, dword ptr [esi]                     // 0x0049091d    8b06
                         mov.s              ecx, esi                                 // 0x0049091f    8bce
                         call               dword ptr [eax + 0x180]                  // 0x00490921    ff9080010000
                         test               eax, eax                                 // 0x00490927    85c0
                         {disp8} je         _jmp_addr_0x0049092f                     // 0x00490929    7404
                         xor.s              eax, eax                                 // 0x0049092b    33c0
                         pop                esi                                      // 0x0049092d    5e
                         ret                                                         // 0x0049092e    c3
_jmp_addr_0x0049092f:    mov.s              ecx, esi                                 // 0x0049092f    8bce
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ            // 0x00490931    e81a6ffeff
                         mov.s              ecx, eax                                 // 0x00490936    8bc8
                         call               _jmp_addr_0x004908b0                     // 0x00490938    e873ffffff
                         neg                eax                                      // 0x0049093d    f7d8
                         sbb.s              eax, eax                                 // 0x0049093f    1bc0
                         inc                eax                                      // 0x00490941    40
                         pop                esi                                      // 0x00490942    5e
                         ret                                                         // 0x00490943    c3
                         nop                                                         // 0x00490944    90
                         nop                                                         // 0x00490945    90
                         nop                                                         // 0x00490946    90
                         nop                                                         // 0x00490947    90
                         nop                                                         // 0x00490948    90
                         nop                                                         // 0x00490949    90
                         nop                                                         // 0x0049094a    90
                         nop                                                         // 0x0049094b    90
                         nop                                                         // 0x0049094c    90
                         nop                                                         // 0x0049094d    90
                         nop                                                         // 0x0049094e    90
                         nop                                                         // 0x0049094f    90
_jmp_addr_0x00490950:    {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00490950    8b442404
                         {disp32} mov       dword ptr [ecx + 0x000010cc], eax        // 0x00490954    8981cc100000
                         ret                0x0004                                   // 0x0049095a    c20400
                         nop                                                         // 0x0049095d    90
                         nop                                                         // 0x0049095e    90
                         nop                                                         // 0x0049095f    90
_jmp_addr_0x00490960:    sub                esp, 0x60                                // 0x00490960    83ec60
                         push               ebx                                      // 0x00490963    53
                         push               ebp                                      // 0x00490964    55
                         push               esi                                      // 0x00490965    56
                         mov.s              esi, ecx                                 // 0x00490966    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00005190]        // 0x00490968    8b8690510000
                         cmp                eax, 0x03                                // 0x0049096e    83f803
                         push               edi                                      // 0x00490971    57
                         mov                edi, 0x00000001                          // 0x00490972    bf01000000
                         {disp32} ja        _jmp_addr_0x00490ba9                     // 0x00490977    0f872c020000
                         jmp                dword ptr [eax*4 + 0x491154]             // 0x0049097d    ff248554114900
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x00490984    8b8e98510000
                         {disp32} mov       eax, dword ptr [ecx + 0x00064054]        // 0x0049098a    8b8154400600
                         cmp                eax, 0x03                                // 0x00490990    83f803
                         {disp32} je        _jmp_addr_0x00490a73                     // 0x00490993    0f84da000000
                         cmp                eax, 0x04                                // 0x00490999    83f804
                         {disp32} je        _jmp_addr_0x00490a73                     // 0x0049099c    0f84d1000000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000573c]        // 0x004909a2    8b8e3c570000
                         {disp32} mov       eax, dword ptr [esi + 0x000048bc]        // 0x004909a8    8b86bc480000
                         sub.s              ecx, eax                                 // 0x004909ae    2bc8
                         {disp32} mov       dword ptr [esi + 0x0000573c], ecx        // 0x004909b0    898e3c570000
                         {disp32} jns       _jmp_addr_0x00490ba9                     // 0x004909b6    0f89ed010000
                         {disp32} mov       eax, dword ptr [esi + 0x00005740]        // 0x004909bc    8b8640570000
                         xor.s              ebp, ebp                                 // 0x004909c2    33ed
                         cmp.s              eax, ebp                                 // 0x004909c4    3bc5
                         {disp8} je         _jmp_addr_0x004909de                     // 0x004909c6    7416
                         push               0x000022d8                               // 0x004909c8    68d8220000
                         push               0x009d1094                               // 0x004909cd    6894109d00
                         push               0x3                                      // 0x004909d2    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                  // 0x004909d4    e837db2400
                         add                esp, 0x0c                                // 0x004909d9    83c40c
                         {disp8} jmp        _jmp_addr_0x004909e0                     // 0x004909dc    eb02
_jmp_addr_0x004909de:    xor.s              eax, eax                                 // 0x004909de    33c0
_jmp_addr_0x004909e0:    sub.s              eax, ebp                                 // 0x004909e0    2bc5
                         {disp32} mov       dword ptr [esi + 0x00005740], edi        // 0x004909e2    89be40570000
                         {disp8} je         _jmp_addr_0x00490a4e                     // 0x004909e8    7464
                         dec                eax                                      // 0x004909ea    48
                         {disp8} je         _jmp_addr_0x00490a31                     // 0x004909eb    7444
                         dec                eax                                      // 0x004909ed    48
                         {disp32} jne       _jmp_addr_0x00490bab                     // 0x004909ee    0f85b7010000
                         push               ebp                                      // 0x004909f4    55
                         push               0x3f                                     // 0x004909f5    6a3f
                         mov.s              ecx, esi                                 // 0x004909f7    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x004909f9    e8528c1800
                         test               eax, eax                                 // 0x004909fe    85c0
                         {disp32} je        _jmp_addr_0x00490bab                     // 0x00490a00    0f84a5010000
                         push               0x000022ef                               // 0x00490a06    68ef220000
                         push               0x009d1094                               // 0x00490a0b    6894109d00
                         push               0x2                                      // 0x00490a10    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                  // 0x00490a12    e8f9da2400
                         add                esp, 0x0c                                // 0x00490a17    83c40c
                         {disp32} mov       dword ptr [esi + 0x0000522c], eax        // 0x00490a1a    89862c520000
                         {disp32} mov       dword ptr [esi + 0x000047d0], ebp        // 0x00490a20    89aed0470000
                         {disp32} mov       dword ptr [esi + 0x00005190], edi        // 0x00490a26    89be90510000
                         {disp32} jmp       _jmp_addr_0x00490bab                     // 0x00490a2c    e97a010000
_jmp_addr_0x00490a31:    push               0x000007d0                               // 0x00490a31    68d0070000
                         push               0x16                                     // 0x00490a36    6a16
                         mov.s              ecx, esi                                 // 0x00490a38    8bce
                         call               _jmp_addr_0x00480c60                     // 0x00490a3a    e82102ffff
                         {disp32} mov       dword ptr [esi + 0x0000573c], 0x00000bb8 // 0x00490a3f    c7863c570000b80b0000
                         {disp32} jmp       _jmp_addr_0x00490bab                     // 0x00490a49    e95d010000
_jmp_addr_0x00490a4e:    mov.s              ecx, esi                                 // 0x00490a4e    8bce
                         call               _jmp_addr_0x00483070                     // 0x00490a50    e81b26ffff
                         push               edi                                      // 0x00490a55    57
                         {disp32} lea       ecx, dword ptr [esi + 0x00005748]        // 0x00490a56    8d8e48570000
                         push               ecx                                      // 0x00490a5c    51
                         mov.s              ecx, esi                                 // 0x00490a5d    8bce
                         call               _jmp_addr_0x00484920                     // 0x00490a5f    e8bc3effff
                         {disp32} mov       dword ptr [esi + 0x0000573c], 0x00001770 // 0x00490a64    c7863c57000070170000
                         {disp32} jmp       _jmp_addr_0x00490bab                     // 0x00490a6e    e938010000
_jmp_addr_0x00490a73:    push               ecx                                      // 0x00490a73    51
                         {disp32} mov       ecx, dword ptr [ecx + 0x00064070]        // 0x00490a74    8b8970400600
                         call               @GetLength__9RouteNodeFP7RPAvoid@12      // 0x00490a7a    e821873d00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1c840]        // 0x00490a7f    d81540588c00
                         fnstsw             ax                                       // 0x00490a85    dfe0
                         test               ah, 0x01                                 // 0x00490a87    f6c401
                         {disp8} je         _jmp_addr_0x00490a94                     // 0x00490a8a    7408
                         fstp               st(0)                                    // 0x00490a8c    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1c840]        // 0x00490a8e    d90540588c00
_jmp_addr_0x00490a94:    {disp32} mov       edx, dword ptr [esi + 0x00005198]        // 0x00490a94    8b9698510000
                         {disp32} fld       dword ptr [edx + 0x00064040]             // 0x00490a9a    d98240400600
                         {disp8} mov        ecx, dword ptr [esi + 0x7c]              // 0x00490aa0    8b4e7c
                         fld                st(0)                                    // 0x00490aa3    d9c0
                         {disp8} lea        eax, dword ptr [esi + 0x78]              // 0x00490aa5    8d4678
                         fsin                                                        // 0x00490aa8    d9fe
                         {disp8} lea        edx, dword ptr [esp + 0x28]              // 0x00490aaa    8d542428
                         push               edx                                      // 0x00490aae    52
                         {disp8} mov        dword ptr [esp + 0x30], ecx              // 0x00490aaf    894c2430
                         push               eax                                      // 0x00490ab3    50
                         mov.s              ecx, esi                                 // 0x00490ab4    8bce
                         fmul               st, st(2)                                // 0x00490ab6    d8ca
                         {disp8} fstp       dword ptr [esp + 0x30]                   // 0x00490ab8    d95c2430
                         fcos                                                        // 0x00490abc    d9ff
                         fmulp              st(1), st                                // 0x00490abe    dec9
                         fchs                                                        // 0x00490ac0    d9e0
                         {disp8} fld        dword ptr [esp + 0x30]                   // 0x00490ac2    d9442430
                         fadd               dword ptr [eax]                          // 0x00490ac6    d800
                         {disp8} fstp       dword ptr [esp + 0x30]                   // 0x00490ac8    d95c2430
                         {disp8} fadd       dword ptr [eax + 0x08]                   // 0x00490acc    d84008
                         {disp8} fstp       dword ptr [esp + 0x38]                   // 0x00490acf    d95c2438
                         call               _jmp_addr_0x00483ab0                     // 0x00490ad3    e8d82fffff
                         {disp32} mov       dword ptr [esi + 0x00005190], eax        // 0x00490ad8    898690510000
                         {disp32} jmp       _jmp_addr_0x00490ba9                     // 0x00490ade    e9c6000000
                         push               0x0                                      // 0x00490ae3    6a00
                         push               0x3f                                     // 0x00490ae5    6a3f
                         mov.s              ecx, esi                                 // 0x00490ae7    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00490ae9    e8628b1800
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00490aee    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00490af4    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00490afa    8986c0470000
                         mov                ebp, dword ptr [eax]                     // 0x00490b00    8b28
                         lea                ebx, dword ptr [edx + ecx * 0x1]         // 0x00490b02    8d1c0a
                         cmp.s              ebx, ebp                                 // 0x00490b05    3bdd
                         {disp32} jl        _jmp_addr_0x00490ba9                     // 0x00490b07    0f8c9c000000
                         push               ecx                                      // 0x00490b0d    51
                         push               edx                                      // 0x00490b0e    52
                         push               0x3f                                     // 0x00490b0f    6a3f
                         mov.s              ecx, esi                                 // 0x00490b11    8bce
                         call               _jmp_addr_0x00617a80                     // 0x00490b13    e8686f1800
                         {disp32} mov       dword ptr [esi + 0x00005190], 0x00000000 // 0x00490b18    c7869051000000000000
                         {disp32} mov       dword ptr [esi + 0x0000573c], 0x00000bb8 // 0x00490b22    c7863c570000b80b0000
                         {disp8} jmp        _jmp_addr_0x00490ba9                     // 0x00490b2c    eb7b
                         {disp32} mov       ecx, dword ptr [esi + 0x0000573c]        // 0x00490b2e    8b8e3c570000
                         {disp32} mov       eax, dword ptr [esi + 0x000048bc]        // 0x00490b34    8b86bc480000
                         sub.s              ecx, eax                                 // 0x00490b3a    2bc8
                         {disp32} mov       dword ptr [esi + 0x0000573c], ecx        // 0x00490b3c    898e3c570000
                         {disp8} jns        _jmp_addr_0x00490ba9                     // 0x00490b42    7965
                         {disp32} mov       dword ptr [esi + 0x00005190], 0x00000003 // 0x00490b44    c7869051000003000000
                         {disp8} jmp        _jmp_addr_0x00490ba9                     // 0x00490b4e    eb59
                         {disp32} mov       eax, dword ptr [esi + 0x0000518c]        // 0x00490b50    8b868c510000
                         test               eax, eax                                 // 0x00490b56    85c0
                         {disp8} je         _jmp_addr_0x00490ba9                     // 0x00490b58    744f
                         push               0x0                                      // 0x00490b5a    6a00
                         push               0x000000d2                               // 0x00490b5c    68d2000000
                         mov.s              ecx, esi                                 // 0x00490b61    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00490b63    e8e88a1800
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00490b68    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00490b6e    8b96d0470000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00490b74    8986c0470000
                         mov                ebp, dword ptr [eax]                     // 0x00490b7a    8b28
                         lea                ebx, dword ptr [edx + ecx * 0x1]         // 0x00490b7c    8d1c0a
                         cmp.s              ebx, ebp                                 // 0x00490b7f    3bdd
                         {disp8} jl         _jmp_addr_0x00490ba9                     // 0x00490b81    7c26
                         push               ecx                                      // 0x00490b83    51
                         push               edx                                      // 0x00490b84    52
                         push               0x000000d2                               // 0x00490b85    68d2000000
                         mov.s              ecx, esi                                 // 0x00490b8a    8bce
                         call               _jmp_addr_0x00617a80                     // 0x00490b8c    e8ef6e1800
                         xor.s              eax, eax                                 // 0x00490b91    33c0
                         {disp32} mov       dword ptr [esi + 0x00005190], eax        // 0x00490b93    898690510000
                         {disp32} mov       dword ptr [esi + 0x0000573c], 0x00000bb8 // 0x00490b99    c7863c570000b80b0000
                         {disp32} mov       dword ptr [esi + 0x00005744], eax        // 0x00490ba3    898644570000
_jmp_addr_0x00490ba9:    xor.s              ebp, ebp                                 // 0x00490ba9    33ed
_jmp_addr_0x00490bab:    {disp32} mov       eax, dword ptr [esi + 0x00005190]        // 0x00490bab    8b8690510000
                         mov                ebx, 0x00000006                          // 0x00490bb1    bb06000000
                         cmp.s              eax, ebx                                 // 0x00490bb6    3bc3
                         {disp32} ja        _jmp_addr_0x00490c7d                     // 0x00490bb8    0f87bf000000
                         jmp                dword ptr [eax*4 + 0x491164]             // 0x00490bbe    ff248564114900
                         mov.s              ecx, esi                                 // 0x00490bc5    8bce
                         call               _jmp_addr_0x0048d250                     // 0x00490bc7    e884c6ffff
                         pop                edi                                      // 0x00490bcc    5f
                         pop                esi                                      // 0x00490bcd    5e
                         pop                ebp                                      // 0x00490bce    5d
                         pop                ebx                                      // 0x00490bcf    5b
                         add                esp, 0x60                                // 0x00490bd0    83c460
                         ret                                                         // 0x00490bd3    c3
                         push               ebp                                      // 0x00490bd4    55
                         push               0x3f                                     // 0x00490bd5    6a3f
                         mov.s              ecx, esi                                 // 0x00490bd7    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00490bd9    e8728a1800
                         {disp32} mov       ecx, dword ptr [esi + 0x000048bc]        // 0x00490bde    8b8ebc480000
                         {disp32} mov       edx, dword ptr [esi + 0x000047d0]        // 0x00490be4    8b96d0470000
                         push               ecx                                      // 0x00490bea    51
                         push               edx                                      // 0x00490beb    52
                         push               0x3f                                     // 0x00490bec    6a3f
                         mov.s              ecx, esi                                 // 0x00490bee    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00490bf0    8986c0470000
                         call               _jmp_addr_0x00617a10                     // 0x00490bf6    e8156e1800
                         pop                edi                                      // 0x00490bfb    5f
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax        // 0x00490bfc    8986d0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000 // 0x00490c02    c786e04700000000803f
                         pop                esi                                      // 0x00490c0c    5e
                         pop                ebp                                      // 0x00490c0d    5d
                         pop                ebx                                      // 0x00490c0e    5b
                         add                esp, 0x60                                // 0x00490c0f    83c460
                         ret                                                         // 0x00490c12    c3
                         mov.s              ecx, esi                                 // 0x00490c13    8bce
                         call               _jmp_addr_0x00483070                     // 0x00490c15    e85624ffff
                         {disp32} lea       eax, dword ptr [esi + 0x00005748]        // 0x00490c1a    8d8648570000
                         push               eax                                      // 0x00490c20    50
                         mov.s              ecx, esi                                 // 0x00490c21    8bce
                         call               _jmp_addr_0x00484ac0                     // 0x00490c23    e8983effff
                         push               edi                                      // 0x00490c28    57
                         mov.s              ecx, esi                                 // 0x00490c29    8bce
                         call               _jmp_addr_0x00487ce0                     // 0x00490c2b    e8b070ffff
                         pop                edi                                      // 0x00490c30    5f
                         pop                esi                                      // 0x00490c31    5e
                         pop                ebp                                      // 0x00490c32    5d
                         pop                ebx                                      // 0x00490c33    5b
                         add                esp, 0x60                                // 0x00490c34    83c460
                         ret                                                         // 0x00490c37    c3
                         mov.s              ecx, esi                                 // 0x00490c38    8bce
                         call               _jmp_addr_0x0048b970                     // 0x00490c3a    e831adffff
                         test               eax, eax                                 // 0x00490c3f    85c0
                         {disp8} je         _jmp_addr_0x00490c7d                     // 0x00490c41    743a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004840]        // 0x00490c43    8b8e40480000
                         {disp32} mov       edx, dword ptr [esi + 0x00005198]        // 0x00490c49    8b9698510000
                         {disp32} mov       dword ptr [esi + 0x00000084], ecx        // 0x00490c4f    898e84000000
                         {disp32} mov       eax, dword ptr [edx + 0x0006408c]        // 0x00490c55    8b828c400600
                         cmp.s              eax, ebp                                 // 0x00490c5b    3bc5
                         {disp8} je         _jmp_addr_0x00490c85                     // 0x00490c5d    7426
                         cmp                dword ptr [eax + 0x68], ebp              // 0x00490c5f    396868
                         {disp8} je         _jmp_addr_0x00490c85                     // 0x00490c62    7421
                         {disp32} mov       dword ptr [esi + 0x00005190], ebx        // 0x00490c64    899e90510000
                         {disp32} mov       dword ptr [esi + 0x000047d4], ebp        // 0x00490c6a    89aed4470000
                         {disp32} mov       dword ptr [esi + 0x000047d0], ebp        // 0x00490c70    89aed0470000
                         mov.s              ecx, esi                                 // 0x00490c76    8bce
                         call               _jmp_addr_0x00491180                     // 0x00490c78    e803050000
_jmp_addr_0x00490c7d:    pop                edi                                      // 0x00490c7d    5f
                         pop                esi                                      // 0x00490c7e    5e
                         pop                ebp                                      // 0x00490c7f    5d
                         pop                ebx                                      // 0x00490c80    5b
                         add                esp, 0x60                                // 0x00490c81    83c460
                         ret                                                         // 0x00490c84    c3
_jmp_addr_0x00490c85:    pop                edi                                      // 0x00490c85    5f
                         {disp32} mov       dword ptr [esi + 0x00005190], ebp        // 0x00490c86    89ae90510000
                         pop                esi                                      // 0x00490c8c    5e
                         pop                ebp                                      // 0x00490c8d    5d
                         pop                ebx                                      // 0x00490c8e    5b
                         add                esp, 0x60                                // 0x00490c8f    83c460
                         ret                                                         // 0x00490c92    c3
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00490c93    8b8698510000
                         {disp32} fld       dword ptr [esi + 0x00004840]             // 0x00490c99    d98640480000
                         {disp32} fsub      dword ptr [eax + 0x00064040]             // 0x00490c9f    d8a040400600
                         push               ecx                                      // 0x00490ca5    51
                         fstp               dword ptr [esp]                          // 0x00490ca6    d91c24
                         call               _jmp_addr_0x007faaf0                     // 0x00490ca9    e8429e3600
                         fabs                                                        // 0x00490cae    d9e1
                         add                esp, 0x04                                // 0x00490cb0    83c404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26164]        // 0x00490cb3    d81d64f18c00
                         fnstsw             ax                                       // 0x00490cb9    dfe0
                         test               ah, 0x41                                 // 0x00490cbb    f6c441
                         {disp32} jne       _jmp_addr_0x00490e0b                     // 0x00490cbe    0f8547010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x00490cc4    8b8e98510000
                         {disp32} mov       dword ptr [ecx + 0x00064034], ebp        // 0x00490cca    89a934400600
                         {disp32} mov       edx, dword ptr [esi + 0x00004840]        // 0x00490cd0    8b9640480000
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00490cd6    8b8698510000
                         {disp32} mov       dword ptr [esi + 0x00000084], edx        // 0x00490cdc    899684000000
                         {disp32} mov       dword ptr [esi + 0x00004838], ebp        // 0x00490ce2    89ae38480000
                         {disp32} mov       dword ptr [eax + 0x00064038], ebp        // 0x00490ce8    89a838400600
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x00490cee    8b8e98510000
                         {disp32} mov       edx, dword ptr [ecx + 0x00064038]        // 0x00490cf4    8b9138400600
                         push               edx                                      // 0x00490cfa    52
                         {disp32} lea       eax, dword ptr [ecx + 0x00064040]        // 0x00490cfb    8d8140400600
                         push               eax                                      // 0x00490d01    50
                         {disp32} lea       edx, dword ptr [ecx + 0x0006402c]        // 0x00490d02    8d912c400600
                         push               edx                                      // 0x00490d08    52
                         call               @FillPosAndHeading__8RPFollowFR7Point2DRff@20                     // 0x00490d09    e8923e3d00
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00490d0e    8b8698510000
                         {disp32} fld       dword ptr [eax + 0x00064030]             // 0x00490d14    d98030400600
                         {disp8} lea        edi, dword ptr [esi + 0x78]              // 0x00490d1a    8d7e78
                         {disp32} fld       dword ptr [eax + 0x0006402c]             // 0x00490d1d    d9802c400600
                         {disp8} mov        dword ptr [edi + 0x04], ebp              // 0x00490d23    896f04
                         fstp               dword ptr [edi]                          // 0x00490d26    d91f
                         {disp8} fstp       dword ptr [edi + 0x08]                   // 0x00490d28    d95f08
                         fld                dword ptr [edi]                          // 0x00490d2b    d907
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x00490d2d    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x00490d33    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x00490d39    e8c2063100
                         {disp8} fld        dword ptr [edi + 0x08]                   // 0x00490d3e    d94708
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]         // 0x00490d41    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x00490d47    8944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]         // 0x00490d4b    d80d04c48a00
                         call               _jmp_addr_0x007a1400                     // 0x00490d51    e8aa063100
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]              // 0x00490d56    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x00490d5a    89442420
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000       // 0x00490d5e    c744242400000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z                   // 0x00490d66    e825233700
                         {disp8} fstp       dword ptr [esi + 0x7c]                   // 0x00490d6b    d95e7c
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00490d6e    8b8698510000
                         {disp32} mov       ecx, dword ptr [eax + 0x00064070]        // 0x00490d74    8b8870400600
                         push               eax                                      // 0x00490d7a    50
                         call               @GetLength__9RouteNodeFP7RPAvoid@12      // 0x00490d7b    e820843d00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1c840]        // 0x00490d80    d81540588c00
                         fnstsw             ax                                       // 0x00490d86    dfe0
                         test               ah, 0x01                                 // 0x00490d88    f6c401
                         {disp8} je         _jmp_addr_0x00490d95                     // 0x00490d8b    7408
                         fstp               st(0)                                    // 0x00490d8d    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1c840]        // 0x00490d8f    d90540588c00
_jmp_addr_0x00490d95:    {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00490d95    8b8698510000
                         {disp32} fld       dword ptr [eax + 0x00064040]             // 0x00490d9b    d98040400600
                         {disp32} mov       ebx, dword ptr [esi + 0x00005220]        // 0x00490da1    8b9e20520000
                         cmp.s              ebx, ebp                                 // 0x00490da7    3bdd
                         fld                st(0)                                    // 0x00490da9    d9c0
                         fsin                                                        // 0x00490dab    d9fe
                         {disp8} mov        ecx, dword ptr [edi + 0x04]              // 0x00490dad    8b4f04
                         {disp8} mov        dword ptr [esp + 0x2c], ecx              // 0x00490db0    894c242c
                         fmul               st, st(2)                                // 0x00490db4    d8ca
                         {disp8} fstp       dword ptr [esp + 0x28]                   // 0x00490db6    d95c2428
                         fcos                                                        // 0x00490dba    d9ff
                         fmulp              st(1), st                                // 0x00490dbc    dec9
                         fchs                                                        // 0x00490dbe    d9e0
                         {disp8} fld        dword ptr [esp + 0x28]                   // 0x00490dc0    d9442428
                         fadd               dword ptr [edi]                          // 0x00490dc4    d807
                         {disp8} fstp       dword ptr [esp + 0x28]                   // 0x00490dc6    d95c2428
                         {disp8} fadd       dword ptr [edi + 0x08]                   // 0x00490dca    d84708
                         {disp8} fstp       dword ptr [esp + 0x30]                   // 0x00490dcd    d95c2430
                         {disp8} je         _jmp_addr_0x00490de3                     // 0x00490dd1    7410
                         mov.s              ecx, ebx                                 // 0x00490dd3    8bcb
                         call               _jmp_addr_0x0085e490                     // 0x00490dd5    e8b6d63c00
                         push               ebx                                      // 0x00490dda    53
                         call               ??3@YAXPAX@Z                             // 0x00490ddb    e8b8e03100
                         add                esp, 0x04                                // 0x00490de0    83c404
_jmp_addr_0x00490de3:    mov.s              ecx, esi                                 // 0x00490de3    8bce
                         {disp32} mov       dword ptr [esi + 0x00005220], ebp        // 0x00490de5    89ae20520000
                         call               _jmp_addr_0x0048d250                     // 0x00490deb    e860c4ffff
                         {disp8} lea        edx, dword ptr [esp + 0x28]              // 0x00490df0    8d542428
                         push               edx                                      // 0x00490df4    52
                         push               edi                                      // 0x00490df5    57
                         mov.s              ecx, esi                                 // 0x00490df6    8bce
                         call               _jmp_addr_0x00483ab0                     // 0x00490df8    e8b32cffff
                         pop                edi                                      // 0x00490dfd    5f
                         {disp32} mov       dword ptr [esi + 0x00005190], eax        // 0x00490dfe    898690510000
                         pop                esi                                      // 0x00490e04    5e
                         pop                ebp                                      // 0x00490e05    5d
                         pop                ebx                                      // 0x00490e06    5b
                         add                esp, 0x60                                // 0x00490e07    83c460
                         ret                                                         // 0x00490e0a    c3
_jmp_addr_0x00490e0b:    {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00490e0b    8b8698510000
                         {disp32} fld       dword ptr [eax + 0x00064040]             // 0x00490e11    d98040400600
                         push               ecx                                      // 0x00490e17    51
                         {disp32} fsub      dword ptr [esi + 0x00004840]             // 0x00490e18    d8a640480000
                         fstp               dword ptr [esp]                          // 0x00490e1e    d91c24
                         call               _jmp_addr_0x007faaf0                     // 0x00490e21    e8ca9c3600
                         {disp32} fadd      dword ptr [esi + 0x00000084]             // 0x00490e26    d88684000000
                         fstp               dword ptr [esp]                          // 0x00490e2c    d91c24
                         call               _jmp_addr_0x007faaf0                     // 0x00490e2f    e8bc9c3600
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x00490e34    8b8e98510000
                         {disp32} fstp      dword ptr [esi + 0x00000084]             // 0x00490e3a    d99e84000000
                         {disp32} mov       edx, dword ptr [ecx + 0x00064040]        // 0x00490e40    8b9140400600
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d0]        // 0x00490e46    8b8ed0470000
                         {disp32} mov       eax, dword ptr [esi + 0x00005220]        // 0x00490e4c    8b8620520000
                         {disp32} mov       dword ptr [esi + 0x00004840], edx        // 0x00490e52    899640480000
                         {disp32} mov       edx, dword ptr [esi + 0x000048b4]        // 0x00490e58    8b96b4480000
                         {disp8} mov        dword ptr [esp + 0x14], ecx              // 0x00490e5e    894c2414
                         add.s              ecx, edx                                 // 0x00490e62    03ca
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax        // 0x00490e64    8986c0470000
                         {disp32} mov       dword ptr [esi + 0x000047e0], 0x3f800000 // 0x00490e6a    c786e04700000000803f
                         mov                edx, dword ptr [eax]                     // 0x00490e74    8b10
                         add                esp, 0x04                                // 0x00490e76    83c404
                         cmp.s              ecx, edx                                 // 0x00490e79    3bca
                         {disp32} jl        _jmp_addr_0x00490f15                     // 0x00490e7b    0f8c94000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00004840]        // 0x00490e81    8b8e40480000
                         {disp8} fild       dword ptr [esp + 0x10]                   // 0x00490e87    db442410
                         {disp32} mov       dword ptr [esi + 0x00000084], ecx        // 0x00490e8b    898e84000000
                         push               ebp                                      // 0x00490e91    55
                         fidiv              dword ptr [eax]                          // 0x00490e92    da30
                         push               edi                                      // 0x00490e94    57
                         mov.s              ecx, esi                                 // 0x00490e95    8bce
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00490e97    d95c2418
                         call               @GetAnim__9MorphableFll@16               // 0x00490e9b    e8b0871800
                         cmp                dword ptr [esi + 0x0000521c], 0x02       // 0x00490ea0    83be1c52000002
                         {disp32} mov       dword ptr [esi + 0x000047c4], eax        // 0x00490ea7    8986c4470000
                         {disp8} jne        _jmp_addr_0x00490eb7                     // 0x00490ead    7508
                         fild               dword ptr [eax]                          // 0x00490eaf    db00
                         {disp8} fmul       dword ptr [esp + 0x10]                   // 0x00490eb1    d84c2410
                         {disp8} jmp        _jmp_addr_0x00490ec3                     // 0x00490eb5    eb0c
_jmp_addr_0x00490eb7:    {disp8} fld        dword ptr [esp + 0x10]                   // 0x00490eb7    d9442410
                         {disp32} fsub      dword ptr [_rdata_float0p5]              // 0x00490ebb    d825b4a38a00
                         fimul              dword ptr [eax]                          // 0x00490ec1    da08
_jmp_addr_0x00490ec3:    call               _jmp_addr_0x007a1400                     // 0x00490ec3    e838053100
                         {disp32} mov       edi, dword ptr [esi + 0x00005220]        // 0x00490ec8    8bbe20520000
                         cmp.s              edi, ebp                                 // 0x00490ece    3bfd
                         {disp32} mov       edx, dword ptr [esi + 0x00004844]        // 0x00490ed0    8b9644480000
                         {disp32} mov       dword ptr [esi + 0x000047d4], eax        // 0x00490ed6    8986d4470000
                         {disp32} mov       dword ptr [esi + 0x00004838], edx        // 0x00490edc    899638480000
                         {disp32} mov       dword ptr [esi + 0x00005190], ebx        // 0x00490ee2    899e90510000
                         {disp8} je         _jmp_addr_0x00490efa                     // 0x00490ee8    7410
                         mov.s              ecx, edi                                 // 0x00490eea    8bcf
                         call               _jmp_addr_0x0085e490                     // 0x00490eec    e89fd53c00
                         push               edi                                      // 0x00490ef1    57
                         call               ??3@YAXPAX@Z                             // 0x00490ef2    e8a1df3100
                         add                esp, 0x04                                // 0x00490ef7    83c404
_jmp_addr_0x00490efa:    mov.s              ecx, esi                                 // 0x00490efa    8bce
                         {disp32} mov       dword ptr [esi + 0x00005220], ebp        // 0x00490efc    89ae20520000
                         {disp32} mov       dword ptr [esi + 0x00005190], ebx        // 0x00490f02    899e90510000
                         call               _jmp_addr_0x00491180                     // 0x00490f08    e873020000
                         pop                edi                                      // 0x00490f0d    5f
                         pop                esi                                      // 0x00490f0e    5e
                         pop                ebp                                      // 0x00490f0f    5d
                         pop                ebx                                      // 0x00490f10    5b
                         add                esp, 0x60                                // 0x00490f11    83c460
                         ret                                                         // 0x00490f14    c3
_jmp_addr_0x00490f15:    push               ebp                                      // 0x00490f15    55
                         push               0xb                                      // 0x00490f16    6a0b
                         mov.s              ecx, esi                                 // 0x00490f18    8bce
                         call               @GetAnim__9MorphableFll@16               // 0x00490f1a    e831871800
                         {disp32} mov       edi, dword ptr [esi + 0x000047d0]        // 0x00490f1f    8bbed0470000
                         {disp32} mov       ebx, dword ptr [esi + 0x000047c0]        // 0x00490f25    8b9ec0470000
                         mov.s              ecx, eax                                 // 0x00490f2b    8bc8
                         mov.s              eax, edi                                 // 0x00490f2d    8bc7
                         imul               eax, dword ptr [ecx]                     // 0x00490f2f    0faf01
                         cdq                                                         // 0x00490f32    99
                         idiv               dword ptr [ebx]                          // 0x00490f33    f73b
                         mov.s              ebp, eax                                 // 0x00490f35    8be8
                         {disp32} mov       eax, dword ptr [esi + 0x000048b4]        // 0x00490f37    8b86b4480000
                         lea                edx, dword ptr [edi + eax * 0x1]         // 0x00490f3d    8d1407
                         {disp32} mov       dword ptr [esi + 0x000047d0], edx        // 0x00490f40    8996d0470000
                         mov                eax, dword ptr [ecx]                     // 0x00490f46    8b01
                         imul               eax, edx                                 // 0x00490f48    0fafc2
                         cdq                                                         // 0x00490f4b    99
                         idiv               dword ptr [ebx]                          // 0x00490f4c    f73b
                         mov.s              ecx, esi                                 // 0x00490f4e    8bce
                         push               eax                                      // 0x00490f50    50
                         push               ebp                                      // 0x00490f51    55
                         push               0xb                                      // 0x00490f52    6a0b
                         call               _jmp_addr_0x00617970                     // 0x00490f54    e8176a1800
                         {disp32} fld       dword ptr [esi + 0x00000084]             // 0x00490f59    d98684000000
                         fld                st(0)                                    // 0x00490f5f    d9c0
                         {disp32} mov       eax, dword ptr [esi + 0x000047c0]        // 0x00490f61    8b86c0470000
                         fcos                                                        // 0x00490f67    d9ff
                         {disp8} fstp       dword ptr [esp + 0x60]                   // 0x00490f69    d95c2460
                         fsin                                                        // 0x00490f6d    d9fe
                         fld                st(0)                                    // 0x00490f6f    d9c0
                         fchs                                                        // 0x00490f71    d9e0
                         {disp32} fild      dword ptr [esi + 0x000048b4]             // 0x00490f73    db86b4480000
                         {disp32} fmul      dword ptr [esi + 0x00000094]             // 0x00490f79    d88e94000000
                         fidiv              dword ptr [eax]                          // 0x00490f7f    da30
                         fld                st(0)                                    // 0x00490f81    d9c0
                         {disp8} fmul       dword ptr [eax + 0x10]                   // 0x00490f83    d84810
                         {disp8} fstp       dword ptr [esp + 0x28]                   // 0x00490f86    d95c2428
                         {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x00490f8a    8b4c2428
                         fld                st(0)                                    // 0x00490f8e    d9c0
                         {disp8} mov        dword ptr [esp + 0x1c], ecx              // 0x00490f90    894c241c
                         {disp8} fmul       dword ptr [eax + 0x14]                   // 0x00490f94    d84814
                         {disp8} fstp       dword ptr [esp + 0x2c]                   // 0x00490f97    d95c242c
                         {disp8} mov        edx, dword ptr [esp + 0x2c]              // 0x00490f9b    8b54242c
                         {disp8} fmul       dword ptr [eax + 0x18]                   // 0x00490f9f    d84818
                         {disp8} mov        dword ptr [esp + 0x20], edx              // 0x00490fa2    89542420
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000       // 0x00490fa6    c744242000000000
                         {disp8} fstp       dword ptr [esp + 0x30]                   // 0x00490fae    d95c2430
                         {disp8} fld        dword ptr [esp + 0x60]                   // 0x00490fb2    d9442460
                         {disp8} mov        eax, dword ptr [esp + 0x30]              // 0x00490fb6    8b442430
                         {disp8} fmul       dword ptr [esp + 0x28]                   // 0x00490fba    d84c2428
                         {disp8} mov        dword ptr [esp + 0x24], eax              // 0x00490fbe    89442424
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x00490fc2    8b8698510000
                         fxch               st(1)                                    // 0x00490fc8    d9c9
                         {disp8} fmul       dword ptr [esp + 0x30]                   // 0x00490fca    d84c2430
                         {disp32} mov       ecx, dword ptr [eax + 0x0006408c]        // 0x00490fce    8b888c400600
                         test               ecx, ecx                                 // 0x00490fd4    85c9
                         faddp              st(1), st                                // 0x00490fd6    dec1
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00490fd8    d95c241c
                         {disp8} fmul       dword ptr [esp + 0x28]                   // 0x00490fdc    d84c2428
                         {disp8} fld        dword ptr [esp + 0x60]                   // 0x00490fe0    d9442460
                         {disp8} fmul       dword ptr [esp + 0x24]                   // 0x00490fe4    d84c2424
                         faddp              st(1), st                                // 0x00490fe8    dec1
                         {disp8} fstp       dword ptr [esp + 0x24]                   // 0x00490fea    d95c2424
                         {disp32} je        _jmp_addr_0x00491134                     // 0x00490fee    0f8440010000
                         {disp8} mov        edx, dword ptr [ecx + 0x68]              // 0x00490ff4    8b5168
                         test               edx, edx                                 // 0x00490ff7    85d2
                         {disp32} je        _jmp_addr_0x00491134                     // 0x00490ff9    0f8435010000
                         {disp32} fld       dword ptr [eax + 0x00064030]             // 0x00490fff    d98030400600
                         {disp8} lea        ecx, dword ptr [esp + 0x34]              // 0x00491005    8d4c2434
                         {disp32} fld       dword ptr [eax + 0x0006402c]             // 0x00491009    d9802c400600
                         push               ecx                                      // 0x0049100f    51
                         {disp8} fstp       dword ptr [esp + 0x38]                   // 0x00491010    d95c2438
                         mov.s              ecx, esi                                 // 0x00491014    8bce
                         {disp8} fstp       dword ptr [esp + 0x40]                   // 0x00491016    d95c2440
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000       // 0x0049101a    c744243c00000000
                         call               _jmp_addr_0x006182f0                     // 0x00491022    e8c9721800
                         {disp8} lea        edi, dword ptr [esi + 0x78]              // 0x00491027    8d7e78
                         push               edi                                      // 0x0049102a    57
                         call               _jmp_addr_0x00483870                     // 0x0049102b    e84028ffff
                         add                esp, 0x04                                // 0x00491030    83c404
                         test               eax, eax                                 // 0x00491033    85c0
                         {disp32} jne       _jmp_addr_0x004910f1                     // 0x00491035    0f85b6000000
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x0049103b    8b8698510000
                         {disp32} mov       edx, dword ptr [eax + 0x00064080]        // 0x00491041    8b9080400600
                         {disp32} fld       dword ptr [eax + 0x00064078]             // 0x00491047    d98078400600
                         {disp32} mov       ecx, dword ptr [eax + 0x0006407c]        // 0x0049104d    8b887c400600
                         {disp32} fld       dword ptr [eax + 0x00064074]             // 0x00491053    d98074400600
                         {disp8} mov        dword ptr [esp + 0x18], edx              // 0x00491059    89542418
                         {disp32} mov       edx, dword ptr [eax + 0x00064084]        // 0x0049105d    8b9084400600
                         mov                eax, dword ptr [edi]                     // 0x00491063    8b07
                         {disp8} mov        dword ptr [esp + 0x28], eax              // 0x00491065    89442428
                         {disp8} lea        eax, dword ptr [esp + 0x28]              // 0x00491069    8d442428
                         {disp8} mov        dword ptr [esp + 0x14], ecx              // 0x0049106d    894c2414
                         {disp8} mov        ecx, dword ptr [edi + 0x04]              // 0x00491071    8b4f04
                         {disp8} mov        dword ptr [esp + 0x10], edx              // 0x00491074    89542410
                         {disp8} mov        edx, dword ptr [edi + 0x08]              // 0x00491078    8b5708
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x0049107b    d95c241c
                         push               eax                                      // 0x0049107f    50
                         push               edi                                      // 0x00491080    57
                         {disp8} fstp       dword ptr [esp + 0x2c]                   // 0x00491081    d95c242c
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000       // 0x00491085    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x34], ecx              // 0x0049108d    894c2434
                         {disp8} mov        dword ptr [esp + 0x38], edx              // 0x00491091    89542438
                         call               _jmp_addr_0x004839d0                     // 0x00491095    e83629ffff
                         add                esp, 0x08                                // 0x0049109a    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x28]              // 0x0049109d    8d4c2428
                         push               ecx                                      // 0x004910a1    51
                         mov.s              ecx, esi                                 // 0x004910a2    8bce
                         call               _jmp_addr_0x006182f0                     // 0x004910a4    e847721800
                         mov.s              ecx, esi                                 // 0x004910a9    8bce
                         call               _jmp_addr_0x004831b0                     // 0x004910ab    e80021ffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]              // 0x004910b0    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x004910b4    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x004910b8    8b4c2418
                         push               edx                                      // 0x004910bc    52
                         push               eax                                      // 0x004910bd    50
                         push               ecx                                      // 0x004910be    51
                         {disp8} lea        edx, dword ptr [esp + 0x28]              // 0x004910bf    8d542428
                         push               edx                                      // 0x004910c3    52
                         mov.s              ecx, esi                                 // 0x004910c4    8bce
                         call               _jmp_addr_0x00483fe0                     // 0x004910c6    e8152fffff
                         cmp                eax, 0x04                                // 0x004910cb    83f804
                         {disp32} je        _jmp_addr_0x00490c7d                     // 0x004910ce    0f84a9fbffff
                         {disp32} mov       esi, dword ptr [esi + 0x00004834]        // 0x004910d4    8bb634480000
                         test               esi, esi                                 // 0x004910da    85f6
                         {disp32} je        _jmp_addr_0x00490c7d                     // 0x004910dc    0f849bfbffff
                         mov.s              ecx, esi                                 // 0x004910e2    8bce
                         call               _jmp_addr_0x004753f0                     // 0x004910e4    e80743feff
                         pop                edi                                      // 0x004910e9    5f
                         pop                esi                                      // 0x004910ea    5e
                         pop                ebp                                      // 0x004910eb    5d
                         pop                ebx                                      // 0x004910ec    5b
                         add                esp, 0x60                                // 0x004910ed    83c460
                         ret                                                         // 0x004910f0    c3
_jmp_addr_0x004910f1:    {disp8} fld        dword ptr [esp + 0x1c]                   // 0x004910f1    d944241c
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]        // 0x004910f5    8b8698510000
                         {disp8} fmul       dword ptr [esp + 0x1c]                   // 0x004910fb    d84c241c
                         {disp8} fld        dword ptr [esp + 0x24]                   // 0x004910ff    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                   // 0x00491103    d84c2424
                         faddp              st(1), st                                // 0x00491107    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                   // 0x00491109    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                   // 0x0049110d    d84c2420
                         faddp              st(1), st                                // 0x00491111    dec1
                         fsqrt                                                       // 0x00491113    d9fa
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]         // 0x00491115    d80d14b48a00
                         {disp32} fstp      dword ptr [eax + 0x00064034]             // 0x0049111b    d99834400600
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]        // 0x00491121    8b8e98510000
                         call               ?MoveAlongRoute@RPFollow@@QAEXXZ         // 0x00491127    e864383d00
                         pop                edi                                      // 0x0049112c    5f
                         pop                esi                                      // 0x0049112d    5e
                         pop                ebp                                      // 0x0049112e    5d
                         pop                ebx                                      // 0x0049112f    5b
                         add                esp, 0x60                                // 0x00491130    83c460
                         ret                                                         // 0x00491133    c3
_jmp_addr_0x00491134:    {disp32} mov       ecx, dword ptr [esi + 0x00004840]        // 0x00491134    8b8e40480000
                         pop                edi                                      // 0x0049113a    5f
                         {disp32} mov       dword ptr [esi + 0x00000084], ecx        // 0x0049113b    898e84000000
                         {disp32} mov       dword ptr [esi + 0x00005190], 0x00000000 // 0x00491141    c7869051000000000000
                         pop                esi                                      // 0x0049114b    5e
                         pop                ebp                                      // 0x0049114c    5d
                         pop                ebx                                      // 0x0049114d    5b
                         add                esp, 0x60                                // 0x0049114e    83c460
                         ret                                                         // 0x00491151    c3

// Snippet: db, [0x00491152, 0x00491154)
.byte 0x8b, 0xff                  // 0x00491152

// Snippet: jmptbl, [0x00491154, 0x00491180)
.byte 0x84, 0x09, 0x49, 0x00      // 0x00491154
.byte 0xe3, 0x0a, 0x49, 0x00      // 0x00491158
.byte 0x2e, 0x0b, 0x49, 0x00      // 0x0049115c
.byte 0x50, 0x0b, 0x49, 0x00      // 0x00491160
.byte 0xc5, 0x0b, 0x49, 0x00      // 0x00491164
.byte 0xd4, 0x0b, 0x49, 0x00      // 0x00491168
.byte 0x13, 0x0c, 0x49, 0x00      // 0x0049116c
.byte 0x28, 0x0c, 0x49, 0x00      // 0x00491170
.byte 0x38, 0x0c, 0x49, 0x00      // 0x00491174
.byte 0x93, 0x0c, 0x49, 0x00      // 0x00491178
.byte 0x76, 0x0c, 0x49, 0x00      // 0x0049117c

