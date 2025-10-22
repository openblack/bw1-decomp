.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?ApplyEffectsDueToPhysicalDestruction@Abode@@QAEXPAVObject@@PAVGPlayer@@@Z
.extern _jmp_addr_0x00428790
.extern _jmp_addr_0x0042a4b0
.extern @__ct__7LHPointFRC7LHPoint@12
.extern _jmp_addr_0x00454960
.extern _jmp_addr_0x00454aa0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0047f8d0
.extern _jmp_addr_0x0047fa80
.extern _jmp_addr_0x0047fac0
.extern _jmp_addr_0x00480a60
.extern _jmp_addr_0x00480d40
.extern _jmp_addr_0x00481390
.extern _jmp_addr_0x004813b0
.extern _jmp_addr_0x00481410
.extern _jmp_addr_0x00483670
.extern ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ
.extern _jmp_addr_0x00484ec0
.extern _jmp_addr_0x004851a0
.extern _jmp_addr_0x00486a00
.extern _jmp_addr_0x0048d520
.extern _jmp_addr_0x0048d930
.extern _jmp_addr_0x004907c0
.extern _jmp_addr_0x004cf060
.extern _jmp_addr_0x004ec590
.extern _jmp_addr_0x004ed250
.extern _jmp_addr_0x004eebd0
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern _jmp_addr_0x00617a10
.extern _jmp_addr_0x00618c40
.extern @GetAnim__9MorphableFll@16
.extern _jmp_addr_0x00646950
.extern _jmp_addr_0x0064a9f0
.extern _jmp_addr_0x0068e6e0
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x0071d8e0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ___RTDynamicCast
.extern _fprintf
.extern __CIasin
.extern ___nw__FUl
.extern _jmp_addr_0x007f6f00
.extern ??1FragMesh@@QAE@XZ
.extern _jmp_addr_0x007f7230
.extern _jmp_addr_0x007f7d40
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern _jmp_addr_0x007fab30
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0081f360
.extern _jmp_addr_0x0083a0e0
.extern _jmp_addr_0x00841260
.extern _jmp_addr_0x0085e490
.extern _jmp_addr_0x00863b00
.extern _jmp_addr_0x00865020
.extern _jmp_addr_0x00866a90
.extern _jmp_addr_0x00866d00
.extern _jmp_addr_0x00867400
.extern _jmp_addr_0x00867fe0

.globl _jmp_addr_0x00481930
.globl _jmp_addr_0x00481a40
.globl _jmp_addr_0x00482c90
.globl _jmp_addr_0x00482d40
.globl _jmp_addr_0x00483070
.globl _jmp_addr_0x00483160
.globl _jmp_addr_0x004831b0
.globl _jmp_addr_0x00483290

start_0x00481760_0x00483670:
// Snippet: asm, [0x00481760, 0x004835ea)
_jmp_addr_0x00481760:    sub                esp, 0x28                                            // 0x00481760    83ec28
                         push               ebx                                                  // 0x00481763    53
                         push               ebp                                                  // 0x00481764    55
                         push               esi                                                  // 0x00481765    56
                         mov.s              esi, ecx                                             // 0x00481766    8bf1
                         push               edi                                                  // 0x00481768    57
                         {disp32} lea       ebx, dword ptr [esi + 0x000053e8]                    // 0x00481769    8d9ee8530000
                         {disp32} lea       edi, dword ptr [esi + 0x000052a8]                    // 0x0048176f    8dbea8520000
                         {disp8} mov        dword ptr [esp + 0x18], ebx                          // 0x00481775    895c2418
                         {disp8} mov        dword ptr [esp + 0x14], edi                          // 0x00481779    897c2414
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000008                   // 0x0048177d    c744241c08000000
_jmp_addr_0x00481785:    mov                eax, dword ptr [ebx]                                 // 0x00481785    8b03
                         cmp                eax, 0x00002ee0                                      // 0x00481787    3de02e0000
                         {disp32} jge       _jmp_addr_0x004818a2                                 // 0x0048178c    0f8d10010000
                         {disp32} mov       ecx, dword ptr [esi + 0x000048b4]                    // 0x00481792    8b8eb4480000
                         add.s              ecx, eax                                             // 0x00481798    03c8
                         mov                dword ptr [ebx], ecx                                 // 0x0048179a    890b
                         {disp32} mov       ecx, dword ptr [esi + 0x00005178]                    // 0x0048179c    8b8e78510000
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                          // 0x004817a2    8d54242c
                         push               edx                                                  // 0x004817a6    52
                         {disp32} mov       edx, dword ptr [esi + 0x00000098]                    // 0x004817a7    8b9698000000
                         {disp8} lea        eax, dword ptr [esp + 0x24]                          // 0x004817ad    8d442424
                         push               eax                                                  // 0x004817b1    50
                         {disp32} mov       eax, dword ptr [esi + edx * 0x4 + 0x000000b4]        // 0x004817b2    8b8496b4000000
                         push               ecx                                                  // 0x004817b9    51
                         push               eax                                                  // 0x004817ba    50
                         mov.s              ecx, edi                                             // 0x004817bb    8bcf
                         call               _jmp_addr_0x00867400                                 // 0x004817bd    e83e5c3e00
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x004817c2    d9442424
                         {disp32} fsub      dword ptr [rdata_bytes + 0x2613c]                    // 0x004817c6    d8253cf18c00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]                    // 0x004817cc    8b8e98000000
                         push               0x1                                                  // 0x004817d2    6a01
                         push               0x0                                                  // 0x004817d4    6a00
                         push               0x0                                                  // 0x004817d6    6a00
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x004817d8    d95c2430
                         {disp32} mov       eax, dword ptr [esi + ecx * 0x4 + 0x000000b4]        // 0x004817dc    8b848eb4000000
                         push               0x0                                                  // 0x004817e3    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                          // 0x004817e5    8d54243c
                         push               edx                                                  // 0x004817e9    52
                         {disp32} mov       edx, dword ptr [esi + 0x00005178]                    // 0x004817ea    8b9678510000
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                          // 0x004817f0    8d4c2434
                         push               ecx                                                  // 0x004817f4    51
                         push               edx                                                  // 0x004817f5    52
                         push               eax                                                  // 0x004817f6    50
                         mov.s              ecx, edi                                             // 0x004817f7    8bcf
                         call               _jmp_addr_0x00865020                                 // 0x004817f9    e822383e00
                         test               eax, eax                                             // 0x004817fe    85c0
                         {disp32} je        _jmp_addr_0x0048189c                                 // 0x00481800    0f8496000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]                    // 0x00481806    8b8e98000000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x4 + 0x000000b4]        // 0x0048180c    8b948eb4000000
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x00481813    8d442410
                         push               eax                                                  // 0x00481817    50
                         push               edx                                                  // 0x00481818    52
                         mov.s              ecx, edi                                             // 0x00481819    8bcf
                         call               _jmp_addr_0x00866a90                                 // 0x0048181b    e870523e00
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x260b0]               // 0x00481820    a1b0f08c00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]                    // 0x00481825    8b8e98000000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x4 + 0x000000b4]        // 0x0048182b    8b948eb4000000
                         push               eax                                                  // 0x00481832    50
                         push               0x00c641a4                                           // 0x00481833    68a441c600
                         push               edx                                                  // 0x00481838    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x00481839    8d4c241c
                         call               _jmp_addr_0x00866d00                                 // 0x0048183d    e8be543e00
                         .byte              0x66, 0x81, 0x64, 0x24, 0x12, 0xc0, 0xff// and word ptr [esp + 0x12], -0x0040 // 0x00481842    6681642412c0ff
                         {disp32} mov       ebp, dword ptr [esi + 0x00005184]                    // 0x00481849    8bae84510000
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                          // 0x0048184f    8b4500
                         cmp                eax, 0x00000400                                      // 0x00481852    3d00040000
                         {disp8} jae        _jmp_addr_0x00481866                                 // 0x00481857    730d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x00481859    8b4c2410
                         {disp8} mov        dword ptr [ebp + eax * 0x4 + 0x08], ecx              // 0x0048185d    894c8508
                         {disp8} inc        dword ptr [ebp + 0x00]                               // 0x00481861    ff4500
                         {disp8} jmp        _jmp_addr_0x004818a2                                 // 0x00481864    eb3c
_jmp_addr_0x00481866:    xor.s              edi, edi                                             // 0x00481866    33ff
                         xor.s              ebx, ebx                                             // 0x00481868    33db
                         xor.s              ecx, ecx                                             // 0x0048186a    33c9
                         {disp8} lea        edx, dword ptr [ebp + 0x0a]                          // 0x0048186c    8d550a
_jmp_addr_0x0048186f:    xor.s              eax, eax                                             // 0x0048186f    33c0
                         mov                al, byte ptr [edx]                                   // 0x00481871    8a02
                         and                eax, 0x3f                                            // 0x00481873    83e03f
                         cmp.s              eax, edi                                             // 0x00481876    3bc7
                         {disp8} jle        _jmp_addr_0x0048187e                                 // 0x00481878    7e04
                         mov.s              edi, eax                                             // 0x0048187a    8bf8
                         mov.s              ebx, ecx                                             // 0x0048187c    8bd9
_jmp_addr_0x0048187e:    inc                ecx                                                  // 0x0048187e    41
                         add                edx, 0x04                                            // 0x0048187f    83c204
                         cmp                ecx, 0x00000400                                      // 0x00481882    81f900040000
                         .byte              0x72, 0xe5// {disp8} jb _jmp_addr_0x0048186f         // 0x00481888    72e5
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0048188a    8b542410
                         {disp8} mov        edi, dword ptr [esp + 0x14]                          // 0x0048188e    8b7c2414
                         {disp8} mov        dword ptr [ebp + ebx * 0x4 + 0x08], edx              // 0x00481892    89549d08
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                          // 0x00481896    8b5c2418
                         {disp8} jmp        _jmp_addr_0x004818a2                                 // 0x0048189a    eb06
_jmp_addr_0x0048189c:    mov                dword ptr [ebx], 0x00002ee0                          // 0x0048189c    c703e02e0000
_jmp_addr_0x004818a2:    {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x004818a2    8b44241c
                         add                edi, 0x28                                            // 0x004818a6    83c728
                         add                ebx, 0x04                                            // 0x004818a9    83c304
                         dec                eax                                                  // 0x004818ac    48
                         {disp8} mov        dword ptr [esp + 0x14], edi                          // 0x004818ad    897c2414
                         {disp8} mov        dword ptr [esp + 0x18], ebx                          // 0x004818b1    895c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x004818b5    8944241c
                         {disp32} jne       _jmp_addr_0x00481785                                 // 0x004818b9    0f85c6feffff
                         pop                edi                                                  // 0x004818bf    5f
                         pop                esi                                                  // 0x004818c0    5e
                         pop                ebp                                                  // 0x004818c1    5d
                         pop                ebx                                                  // 0x004818c2    5b
                         add                esp, 0x28                                            // 0x004818c3    83c428
                         ret                                                                     // 0x004818c6    c3
                         nop                                                                     // 0x004818c7    90
                         nop                                                                     // 0x004818c8    90
                         nop                                                                     // 0x004818c9    90
                         nop                                                                     // 0x004818ca    90
                         nop                                                                     // 0x004818cb    90
                         nop                                                                     // 0x004818cc    90
                         nop                                                                     // 0x004818cd    90
                         nop                                                                     // 0x004818ce    90
                         nop                                                                     // 0x004818cf    90
_jmp_addr_0x004818d0:    push               ebx                                                  // 0x004818d0    53
                         push               edi                                                  // 0x004818d1    57
                         mov.s              edi, ecx                                             // 0x004818d2    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x000047b4]                    // 0x004818d4    8b87b4470000
                         xor.s              ebx, ebx                                             // 0x004818da    33db
                         test               eax, eax                                             // 0x004818dc    85c0
                         {disp8} jle        _jmp_addr_0x00481917                                 // 0x004818de    7e37
                         push               esi                                                  // 0x004818e0    56
                         {disp32} lea       esi, dword ptr [edi + 0x000046bc]                    // 0x004818e1    8db7bc460000
_jmp_addr_0x004818e7:    mov                ecx, dword ptr [esi]                                 // 0x004818e7    8b0e
                         {disp8} mov        edx, dword ptr [esi + -0x04]                         // 0x004818e9    8b56fc
                         xor.s              eax, eax                                             // 0x004818ec    33c0
                         {disp8} mov        al, byte ptr [esi + 0x04]                            // 0x004818ee    8a4604
                         push               eax                                                  // 0x004818f1    50
                         push               ecx                                                  // 0x004818f2    51
                         push               edx                                                  // 0x004818f3    52
                         mov.s              ecx, edi                                             // 0x004818f4    8bcf
                         call               _jmp_addr_0x00483290                                 // 0x004818f6    e895190000
                         {disp32} mov       eax, dword ptr [edi + 0x000047b4]                    // 0x004818fb    8b87b4470000
                         add                esi, 0x10                                            // 0x00481901    83c610
                         inc                ebx                                                  // 0x00481904    43
                         cmp.s              ebx, eax                                             // 0x00481905    3bd8
                         {disp8} jl         _jmp_addr_0x004818e7                                 // 0x00481907    7cde
                         pop                esi                                                  // 0x00481909    5e
                         {disp32} mov       dword ptr [edi + 0x000047b4], 0x00000000             // 0x0048190a    c787b447000000000000
                         pop                edi                                                  // 0x00481914    5f
                         pop                ebx                                                  // 0x00481915    5b
                         ret                                                                     // 0x00481916    c3
_jmp_addr_0x00481917:    {disp32} mov       dword ptr [edi + 0x000047b4], 0x00000000             // 0x00481917    c787b447000000000000
                         pop                edi                                                  // 0x00481921    5f
                         pop                ebx                                                  // 0x00481922    5b
                         ret                                                                     // 0x00481923    c3
                         nop                                                                     // 0x00481924    90
                         nop                                                                     // 0x00481925    90
                         nop                                                                     // 0x00481926    90
                         nop                                                                     // 0x00481927    90
                         nop                                                                     // 0x00481928    90
                         nop                                                                     // 0x00481929    90
                         nop                                                                     // 0x0048192a    90
                         nop                                                                     // 0x0048192b    90
                         nop                                                                     // 0x0048192c    90
                         nop                                                                     // 0x0048192d    90
                         nop                                                                     // 0x0048192e    90
                         nop                                                                     // 0x0048192f    90
_jmp_addr_0x00481930:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x00481930    8b442404
                         xor.s              dl, dl                                               // 0x00481934    32d2
                         test               eax, eax                                             // 0x00481936    85c0
                         {disp32} jle       _jmp_addr_0x00481a3b                                 // 0x00481938    0f8efd000000
                         push               ebx                                                  // 0x0048193e    53
                         push               ebp                                                  // 0x0048193f    55
                         push               esi                                                  // 0x00481940    56
                         push               edi                                                  // 0x00481941    57
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x00481942    89442414
_jmp_addr_0x00481946:    {disp32} mov       esi, dword ptr [ecx + 0x00005188]                    // 0x00481946    8bb188510000
                         inc                esi                                                  // 0x0048194c    46
                         mov.s              eax, esi                                             // 0x0048194d    8bc6
                         cmp                eax, 0x00000258                                      // 0x0048194f    3d58020000
                         {disp32} mov       dword ptr [ecx + 0x00005188], esi                    // 0x00481954    89b188510000
                         {disp32} jne       _jmp_addr_0x00481a24                                 // 0x0048195a    0f85c4000000
                         {disp32} mov       eax, dword ptr [ecx + 0x00005184]                    // 0x00481960    8b8184510000
                         xor.s              esi, esi                                             // 0x00481966    33f6
                         {disp32} mov       dword ptr [ecx + 0x00005188], esi                    // 0x00481968    89b188510000
                         mov                edi, dword ptr [eax]                                 // 0x0048196e    8b38
                         cmp.s              edi, esi                                             // 0x00481970    3bfe
                         {disp8} jbe        _jmp_addr_0x004819b3                                 // 0x00481972    763f
                         mov                ebp, 0x00000008                                      // 0x00481974    bd08000000
_jmp_addr_0x00481979:    {disp8} mov        dx, word ptr [eax + esi * 0x4 + 0x0a]                // 0x00481979    668b54b00a
                         mov.s              bl, dl                                               // 0x0048197e    8ada
                         and                bl, 0x3f                                             // 0x00481980    80e33f
                         cmp                bl, 0x3f                                             // 0x00481983    80fb3f
                         {disp8} jne        _jmp_addr_0x0048199a                                 // 0x00481986    7512
                         {disp8} lea        edx, dword ptr [edi + -0x01]                         // 0x00481988    8d57ff
                         mov                dword ptr [eax], edx                                 // 0x0048198b    8910
                         {disp8} mov        edx, dword ptr [eax + edx * 0x4 + 0x08]              // 0x0048198d    8b549008
                         mov                dword ptr [eax + ebp * 0x1], edx                     // 0x00481991    891428
                         dec                esi                                                  // 0x00481994    4e
                         sub                ebp, 0x04                                            // 0x00481995    83ed04
                         {disp8} jmp        _jmp_addr_0x004819a9                                 // 0x00481998    eb0f
_jmp_addr_0x0048199a:    {disp8} lea        ebx, dword ptr [edx + 0x01]                          // 0x0048199a    8d5a01
                         xor.s              bl, dl                                               // 0x0048199d    32da
                         and                ebx, 0x3f                                            // 0x0048199f    83e33f
                         xor.s              ebx, edx                                             // 0x004819a2    33da
                         {disp8} mov        word ptr [eax + esi * 0x4 + 0x0a], bx                // 0x004819a4    66895cb00a
_jmp_addr_0x004819a9:    mov                edi, dword ptr [eax]                                 // 0x004819a9    8b38
                         inc                esi                                                  // 0x004819ab    46
                         add                ebp, 0x04                                            // 0x004819ac    83c504
                         cmp.s              esi, edi                                             // 0x004819af    3bf7
                         .byte              0x72, 0xc6// {disp8} jb _jmp_addr_0x00481979         // 0x004819b1    72c6
_jmp_addr_0x004819b3:    {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x004819b3    8b5004
                         xor.s              ebp, ebp                                             // 0x004819b6    33ed
                         test               edx, edx                                             // 0x004819b8    85d2
                         {disp32} lea       edi, dword ptr [eax + 0x00001008]                    // 0x004819ba    8db808100000
                         {disp8} jbe        _jmp_addr_0x00481a22                                 // 0x004819c0    7660
                         {disp8} lea        esi, dword ptr [edi + 0x02]                          // 0x004819c2    8d7702
_jmp_addr_0x004819c5:    xor.s              ebx, ebx                                             // 0x004819c5    33db
                         mov                bx, word ptr [esi]                                   // 0x004819c7    668b1e
                         mov.s              dl, bl                                               // 0x004819ca    8ad3
                         and                dl, 0x3f                                             // 0x004819cc    80e23f
                         cmp                dl, 0x3f                                             // 0x004819cf    80fa3f
                         {disp8} jae        _jmp_addr_0x00481a14                                 // 0x004819d2    7340
                         {disp8} lea        edx, dword ptr [ebx + 0x01]                          // 0x004819d4    8d5301
                         xor.s              dl, bl                                               // 0x004819d7    32d3
                         and                edx, 0x3f                                            // 0x004819d9    83e23f
                         xor.s              edx, ebx                                             // 0x004819dc    33d3
                         mov                word ptr [esi], dx                                   // 0x004819de    668916
                         and                edx, 0x0000ffff                                      // 0x004819e1    81e2ffff0000
                         mov.s              ebx, edx                                             // 0x004819e7    8bda
                         shr                ebx, 8                                               // 0x004819e9    c1eb08
                         and                ebx, 0x07                                            // 0x004819ec    83e307
                         and                edx, 0x3f                                            // 0x004819ef    83e23f
                         cmp                edx, dword ptr [ebx * 0x4 + 0x008cf0b4]              // 0x004819f2    3b149db4f08c00
                         {disp8} jne        _jmp_addr_0x00481a14                                 // 0x004819f9    7519
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                          // 0x004819fb    8b5804
                         dec                ebx                                                  // 0x004819fe    4b
                         {disp8} mov        dword ptr [eax + 0x04], ebx                          // 0x004819ff    895804
                         mov.s              edx, ebx                                             // 0x00481a02    8bd3
                         {disp32} mov       edx, dword ptr [eax + edx * 0x4 + 0x00001008]        // 0x00481a04    8b949008100000
                         mov                dword ptr [edi], edx                                 // 0x00481a0b    8917
                         dec                ebp                                                  // 0x00481a0d    4d
                         sub                edi, 0x04                                            // 0x00481a0e    83ef04
                         sub                esi, 0x04                                            // 0x00481a11    83ee04
_jmp_addr_0x00481a14:    {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x00481a14    8b5004
                         add                esi, 0x04                                            // 0x00481a17    83c604
                         inc                ebp                                                  // 0x00481a1a    45
                         add                edi, 0x04                                            // 0x00481a1b    83c704
                         cmp.s              ebp, edx                                             // 0x00481a1e    3bea
                         .byte              0x72, 0xa3// {disp8} jb _jmp_addr_0x004819c5         // 0x00481a20    72a3
_jmp_addr_0x00481a22:    mov                dl, 0x01                                             // 0x00481a22    b201
_jmp_addr_0x00481a24:    dec                dword ptr [esp + 0x14]                               // 0x00481a24    ff4c2414
                         {disp32} jne       _jmp_addr_0x00481946                                 // 0x00481a28    0f8518ffffff
                         test               dl, dl                                               // 0x00481a2e    84d2
                         pop                edi                                                  // 0x00481a30    5f
                         pop                esi                                                  // 0x00481a31    5e
                         pop                ebp                                                  // 0x00481a32    5d
                         pop                ebx                                                  // 0x00481a33    5b
                         {disp8} je         _jmp_addr_0x00481a3b                                 // 0x00481a34    7405
                         mov                eax, dword ptr [ecx]                                 // 0x00481a36    8b01
                         call               dword ptr [eax + 0x10]                               // 0x00481a38    ff5010
_jmp_addr_0x00481a3b:    ret                0x0004                                               // 0x00481a3b    c20400
                         nop                                                                     // 0x00481a3e    90
                         nop                                                                     // 0x00481a3f    90
_jmp_addr_0x00481a40:    push               esi                                                  // 0x00481a40    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                          // 0x00481a41    8b742408
                         mov                eax, dword ptr [esi]                                 // 0x00481a45    8b06
                         push               edi                                                  // 0x00481a47    57
                         mov.s              edi, ecx                                             // 0x00481a48    8bf9
                         mov.s              ecx, esi                                             // 0x00481a4a    8bce
                         call               dword ptr [eax + 0x3c4]                              // 0x00481a4c    ff90c4030000
                         test               eax, eax                                             // 0x00481a52    85c0
                         {disp8} je         _jmp_addr_0x00481a60                                 // 0x00481a54    740a
                         pop                edi                                                  // 0x00481a56    5f
                         mov                eax, 0x00000001                                      // 0x00481a57    b801000000
                         pop                esi                                                  // 0x00481a5c    5e
                         ret                0x0004                                               // 0x00481a5d    c20400
_jmp_addr_0x00481a60:    {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x00481a60    8b4640
                         test               eax, eax                                             // 0x00481a63    85c0
                         {disp8} jne        _jmp_addr_0x00481a71                                 // 0x00481a65    750a
                         pop                edi                                                  // 0x00481a67    5f
                         mov                eax, 0x00000001                                      // 0x00481a68    b801000000
                         pop                esi                                                  // 0x00481a6d    5e
                         ret                0x0004                                               // 0x00481a6e    c20400
_jmp_addr_0x00481a71:    mov                edx, dword ptr [esi]                                 // 0x00481a71    8b16
                         mov.s              ecx, esi                                             // 0x00481a73    8bce
                         call               dword ptr [edx + 0x220]                              // 0x00481a75    ff9220020000
                         test               eax, eax                                             // 0x00481a7b    85c0
                         {disp32} jne       _jmp_addr_0x00481b06                                 // 0x00481a7d    0f8583000000
                         push               eax                                                  // 0x00481a83    50
                         push               0x009c8ec8                                           // 0x00481a84    68c88e9c00
                         push               0x009c7f50                                           // 0x00481a89    68507f9c00
                         push               eax                                                  // 0x00481a8e    50
                         push               esi                                                  // 0x00481a8f    56
                         call               ___RTDynamicCast                                     // 0x00481a90    e8843f3400
                         add                esp, 0x14                                            // 0x00481a95    83c414
                         test               eax, eax                                             // 0x00481a98    85c0
                         {disp8} jne        _jmp_addr_0x00481b06                                 // 0x00481a9a    756a
                         push               eax                                                  // 0x00481a9c    50
                         push               0x009d10b8                                           // 0x00481a9d    68b8109d00
                         push               0x009c7f50                                           // 0x00481aa2    68507f9c00
                         push               eax                                                  // 0x00481aa7    50
                         push               esi                                                  // 0x00481aa8    56
                         call               ___RTDynamicCast                                     // 0x00481aa9    e86b3f3400
                         add                esp, 0x14                                            // 0x00481aae    83c414
                         test               eax, eax                                             // 0x00481ab1    85c0
                         {disp8} jne        _jmp_addr_0x00481b06                                 // 0x00481ab3    7551
                         {disp32} fld       dword ptr [edi + 0x00000090]                         // 0x00481ab5    d98790000000
                         mov                eax, dword ptr [esi]                                 // 0x00481abb    8b06
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]                    // 0x00481abd    d80d402c8c00
                         mov.s              ecx, esi                                             // 0x00481ac3    8bce
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x00481ac5    d95c240c
                         call               dword ptr [eax + 0x42c]                              // 0x00481ac9    ff902c040000
                         {disp8} fcomp      dword ptr [esp + 0x0c]                               // 0x00481acf    d85c240c
                         fnstsw             ax                                                   // 0x00481ad3    dfe0
                         test               ah, 0x41                                             // 0x00481ad5    f6c441
                         {disp8} je         _jmp_addr_0x00481b06                                 // 0x00481ad8    742c
                         mov                edx, dword ptr [esi]                                 // 0x00481ada    8b16
                         mov.s              ecx, esi                                             // 0x00481adc    8bce
                         call               dword ptr [edx + 0x208]                              // 0x00481ade    ff9208020000
                         test               eax, eax                                             // 0x00481ae4    85c0
                         {disp8} jne        _jmp_addr_0x00481afc                                 // 0x00481ae6    7514
                         mov                eax, dword ptr [esi]                                 // 0x00481ae8    8b06
                         mov.s              ecx, esi                                             // 0x00481aea    8bce
                         call               dword ptr [eax + 0x7b0]                              // 0x00481aec    ff90b0070000
                         test               eax, eax                                             // 0x00481af2    85c0
                         {disp8} je         _jmp_addr_0x00481b06                                 // 0x00481af4    7410
                         test               byte ptr [esi + 0x25], 0x10                          // 0x00481af6    f6462510
                         {disp8} jne        _jmp_addr_0x00481b06                                 // 0x00481afa    750a
_jmp_addr_0x00481afc:    pop                edi                                                  // 0x00481afc    5f
                         mov                eax, 0x00000001                                      // 0x00481afd    b801000000
                         pop                esi                                                  // 0x00481b02    5e
                         ret                0x0004                                               // 0x00481b03    c20400
_jmp_addr_0x00481b06:    pop                edi                                                  // 0x00481b06    5f
                         xor.s              eax, eax                                             // 0x00481b07    33c0
                         pop                esi                                                  // 0x00481b09    5e
                         ret                0x0004                                               // 0x00481b0a    c20400
                         nop                                                                     // 0x00481b0d    90
                         nop                                                                     // 0x00481b0e    90
                         nop                                                                     // 0x00481b0f    90
_jmp_addr_0x00481b10:    push               esi                                                  // 0x00481b10    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                          // 0x00481b11    8b742408
                         {disp8} mov        eax, dword ptr [esi + 0x40]                          // 0x00481b15    8b4640
                         test               eax, eax                                             // 0x00481b18    85c0
                         {disp32} je        _jmp_addr_0x00481c25                                 // 0x00481b1a    0f8405010000
                         test               byte ptr [esi + 0x25], 0x40                          // 0x00481b20    f6462540
                         {disp32} jne       _jmp_addr_0x00481c25                                 // 0x00481b24    0f85fb000000
                         mov                eax, dword ptr [esi]                                 // 0x00481b2a    8b06
                         mov.s              ecx, esi                                             // 0x00481b2c    8bce
                         call               dword ptr [eax + 0x34]                               // 0x00481b2e    ff5034
                         test               eax, eax                                             // 0x00481b31    85c0
                         {disp32} jne       _jmp_addr_0x00481c25                                 // 0x00481b33    0f85ec000000
                         mov                edx, dword ptr [esi]                                 // 0x00481b39    8b16
                         mov.s              ecx, esi                                             // 0x00481b3b    8bce
                         call               dword ptr [edx + 0x220]                              // 0x00481b3d    ff9220020000
                         test               eax, eax                                             // 0x00481b43    85c0
                         {disp32} jne       _jmp_addr_0x00481c25                                 // 0x00481b45    0f85da000000
                         mov                eax, dword ptr [esi]                                 // 0x00481b4b    8b06
                         mov.s              ecx, esi                                             // 0x00481b4d    8bce
                         call               dword ptr [eax + 0x338]                              // 0x00481b4f    ff9038030000
                         test               eax, eax                                             // 0x00481b55    85c0
                         {disp32} jne       _jmp_addr_0x00481c25                                 // 0x00481b57    0f85c8000000
                         push               eax                                                  // 0x00481b5d    50
                         push               0x009c8ec8                                           // 0x00481b5e    68c88e9c00
                         push               0x009c7f50                                           // 0x00481b63    68507f9c00
                         push               eax                                                  // 0x00481b68    50
                         push               esi                                                  // 0x00481b69    56
                         call               ___RTDynamicCast                                     // 0x00481b6a    e8aa3e3400
                         add                esp, 0x14                                            // 0x00481b6f    83c414
                         test               eax, eax                                             // 0x00481b72    85c0
                         {disp32} jne       _jmp_addr_0x00481c25                                 // 0x00481b74    0f85ab000000
                         push               eax                                                  // 0x00481b7a    50
                         push               0x009d10b8                                           // 0x00481b7b    68b8109d00
                         push               0x009c7f50                                           // 0x00481b80    68507f9c00
                         push               eax                                                  // 0x00481b85    50
                         push               esi                                                  // 0x00481b86    56
                         call               ___RTDynamicCast                                     // 0x00481b87    e88d3e3400
                         add                esp, 0x14                                            // 0x00481b8c    83c414
                         test               eax, eax                                             // 0x00481b8f    85c0
                         {disp32} jne       _jmp_addr_0x00481c25                                 // 0x00481b91    0f858e000000
                         push               eax                                                  // 0x00481b97    50
                         push               0x009d10d8                                           // 0x00481b98    68d8109d00
                         push               0x009c7f50                                           // 0x00481b9d    68507f9c00
                         push               eax                                                  // 0x00481ba2    50
                         push               esi                                                  // 0x00481ba3    56
                         call               ___RTDynamicCast                                     // 0x00481ba4    e8703e3400
                         add                esp, 0x14                                            // 0x00481ba9    83c414
                         test               eax, eax                                             // 0x00481bac    85c0
                         {disp8} jne        _jmp_addr_0x00481c25                                 // 0x00481bae    7575
                         mov                edx, dword ptr [esi]                                 // 0x00481bb0    8b16
                         push               eax                                                  // 0x00481bb2    50
                         mov.s              ecx, esi                                             // 0x00481bb3    8bce
                         call               dword ptr [edx + 0x2c8]                              // 0x00481bb5    ff92c8020000
                         test               eax, eax                                             // 0x00481bbb    85c0
                         {disp32} jne       _jmp_addr_0x00481c48                                 // 0x00481bbd    0f8585000000
                         mov                eax, dword ptr [esi]                                 // 0x00481bc3    8b06
                         mov.s              ecx, esi                                             // 0x00481bc5    8bce
                         call               dword ptr [eax + 0x454]                              // 0x00481bc7    ff9054040000
                         test               eax, eax                                             // 0x00481bcd    85c0
                         {disp8} je         _jmp_addr_0x00481bec                                 // 0x00481bcf    741b
                         push               0x0                                                  // 0x00481bd1    6a00
                         push               0x009c9170                                           // 0x00481bd3    6870919c00
                         push               0x009c7f50                                           // 0x00481bd8    68507f9c00
                         push               0x0                                                  // 0x00481bdd    6a00
                         push               esi                                                  // 0x00481bdf    56
                         call               ___RTDynamicCast                                     // 0x00481be0    e8343e3400
                         add                esp, 0x14                                            // 0x00481be5    83c414
                         test               eax, eax                                             // 0x00481be8    85c0
                         {disp8} je         _jmp_addr_0x00481c48                                 // 0x00481bea    745c
_jmp_addr_0x00481bec:    mov                edx, dword ptr [esi]                                 // 0x00481bec    8b16
                         mov.s              ecx, esi                                             // 0x00481bee    8bce
                         call               dword ptr [edx + 0x3c4]                              // 0x00481bf0    ff92c4030000
                         test               eax, eax                                             // 0x00481bf6    85c0
                         {disp8} jne        _jmp_addr_0x00481c25                                 // 0x00481bf8    752b
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                          // 0x00481bfa    8b4e40
                         mov                eax, dword ptr [ecx]                                 // 0x00481bfd    8b01
                         call               dword ptr [eax + 0x1ac]                              // 0x00481bff    ff90ac010000
                         test               eax, eax                                             // 0x00481c05    85c0
                         {disp8} jne        _jmp_addr_0x00481c25                                 // 0x00481c07    751c
                         mov                edx, dword ptr [esi]                                 // 0x00481c09    8b16
                         mov.s              ecx, esi                                             // 0x00481c0b    8bce
                         call               dword ptr [edx + 0x208]                              // 0x00481c0d    ff9208020000
                         test               eax, eax                                             // 0x00481c13    85c0
                         {disp8} je         _jmp_addr_0x00481c2b                                 // 0x00481c15    7414
                         mov                eax, dword ptr [esi]                                 // 0x00481c17    8b06
                         mov.s              ecx, esi                                             // 0x00481c19    8bce
                         call               dword ptr [eax + 0x210]                              // 0x00481c1b    ff9010020000
                         test               eax, eax                                             // 0x00481c21    85c0
                         {disp8} je         _jmp_addr_0x00481c3f                                 // 0x00481c23    741a
_jmp_addr_0x00481c25:    xor.s              eax, eax                                             // 0x00481c25    33c0
                         pop                esi                                                  // 0x00481c27    5e
                         ret                0x0004                                               // 0x00481c28    c20400
_jmp_addr_0x00481c2b:    mov                edx, dword ptr [esi]                                 // 0x00481c2b    8b16
                         mov.s              ecx, esi                                             // 0x00481c2d    8bce
                         call               dword ptr [edx + 0x7b0]                              // 0x00481c2f    ff92b0070000
                         test               eax, eax                                             // 0x00481c35    85c0
                         {disp8} je         _jmp_addr_0x00481c25                                 // 0x00481c37    74ec
                         test               byte ptr [esi + 0x25], 0x10                          // 0x00481c39    f6462510
                         {disp8} jne        _jmp_addr_0x00481c25                                 // 0x00481c3d    75e6
_jmp_addr_0x00481c3f:    mov                eax, 0x00000001                                      // 0x00481c3f    b801000000
                         pop                esi                                                  // 0x00481c44    5e
                         ret                0x0004                                               // 0x00481c45    c20400
_jmp_addr_0x00481c48:    xor.s              eax, eax                                             // 0x00481c48    33c0
                         {disp8} mov        ax, word ptr [esi + 0x24]                            // 0x00481c4a    668b4624
                         not                ax                                                   // 0x00481c4e    66f7d0
                         pop                esi                                                  // 0x00481c51    5e
                         shr                eax, 0xc                                             // 0x00481c52    c1e80c
                         and                eax, 0x01                                            // 0x00481c55    83e001
                         ret                0x0004                                               // 0x00481c58    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x00481c5b    e819fcf7ff
_jmp_addr_0x00481c60:    sub                esp, 0x44                                            // 0x00481c60    83ec44
                         push               ebx                                                  // 0x00481c63    53
                         push               ebp                                                  // 0x00481c64    55
                         push               esi                                                  // 0x00481c65    56
                         {disp8} mov        esi, dword ptr [esp + 0x5c]                          // 0x00481c66    8b74245c
                         mov                eax, dword ptr [esi]                                 // 0x00481c6a    8b06
                         push               edi                                                  // 0x00481c6c    57
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x00481c6d    8d4c2424
                         push               ecx                                                  // 0x00481c71    51
                         mov.s              ecx, esi                                             // 0x00481c72    8bce
                         call               dword ptr [eax + 0x63c]                              // 0x00481c74    ff903c060000
                         mov                edx, dword ptr [esi]                                 // 0x00481c7a    8b16
                         mov.s              ecx, esi                                             // 0x00481c7c    8bce
                         call               dword ptr [edx + 0x608]                              // 0x00481c7e    ff9208060000
                         test               eax, eax                                             // 0x00481c84    85c0
                         {disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]               // 0x00481c86    8b0d34fee900
                         {disp8} jl         _jmp_addr_0x00481c92                                 // 0x00481c8c    7c04
                         cmp                eax, dword ptr [ecx]                                 // 0x00481c8e    3b01
                         {disp8} jl         _jmp_addr_0x00481c94                                 // 0x00481c90    7c02
_jmp_addr_0x00481c92:    xor.s              eax, eax                                             // 0x00481c92    33c0
_jmp_addr_0x00481c94:    {disp8} fld        dword ptr [esp + 0x5c]                               // 0x00481c94    d944245c
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]              // 0x00481c98    8b448104
                         {disp8} fmul       dword ptr [esp + 0x5c]                               // 0x00481c9c    d84c245c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x00481ca0    8b4804
                         test               ch, 0x01                                             // 0x00481ca3    f6c501
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00481ca6    d95c2410
                         {disp32} jne       _jmp_addr_0x00481dd4                                 // 0x00481caa    0f8524010000
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                          // 0x00481cb0    8b500c
                         test               edx, edx                                             // 0x00481cb3    85d2
                         {disp8} mov        dword ptr [esp + 0x14], edx                          // 0x00481cb5    89542414
                         {disp8} mov        dword ptr [esp + 0x60], 0x00000000                   // 0x00481cb9    c744246000000000
                         {disp32} jle       _jmp_addr_0x00481dd4                                 // 0x00481cc1    0f8e0d010000
                         {disp8} mov        eax, dword ptr [eax + 0x10]                          // 0x00481cc7    8b4010
                         {disp8} mov        ebp, dword ptr [esp + 0x58]                          // 0x00481cca    8b6c2458
                         {disp8} mov        dword ptr [esp + 0x5c], eax                          // 0x00481cce    8944245c
_jmp_addr_0x00481cd2:    {disp8} mov        ecx, dword ptr [esp + 0x5c]                          // 0x00481cd2    8b4c245c
                         mov                eax, dword ptr [ecx]                                 // 0x00481cd6    8b01
                         test               dword ptr [eax], 0x20000000                          // 0x00481cd8    f70000000020
                         {disp32} je        _jmp_addr_0x00481db8                                 // 0x00481cde    0f84d4000000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x00481ce4    8b4804
                         xor.s              ebx, ebx                                             // 0x00481ce7    33db
                         test               ecx, ecx                                             // 0x00481ce9    85c9
                         {disp8} mov        dword ptr [esp + 0x58], ecx                          // 0x00481ceb    894c2458
                         {disp32} jle       _jmp_addr_0x00481db8                                 // 0x00481cef    0f8ec3000000
                         {disp8} mov        edi, dword ptr [eax + 0x08]                          // 0x00481cf5    8b7808
_jmp_addr_0x00481cf8:    mov                eax, dword ptr [edi]                                 // 0x00481cf8    8b07
                         {disp8} mov        esi, dword ptr [eax + 0x10]                          // 0x00481cfa    8b7010
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                          // 0x00481cfd    8b4814
                         xor.s              edx, edx                                             // 0x00481d00    33d2
                         test               esi, esi                                             // 0x00481d02    85f6
                         {disp32} jle       _jmp_addr_0x00481da4                                 // 0x00481d04    0f8e9a000000
_jmp_addr_0x00481d0a:    {disp8} fld        dword ptr [esp + 0x30]                               // 0x00481d0a    d9442430
                         {disp8} fmul       dword ptr [ecx + 0x04]                               // 0x00481d0e    d84904
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x00481d11    d9442424
                         fmul               dword ptr [ecx]                                      // 0x00481d15    d809
                         faddp              st(1), st                                            // 0x00481d17    dec1
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x00481d19    d944243c
                         {disp8} fmul       dword ptr [ecx + 0x08]                               // 0x00481d1d    d84908
                         faddp              st(1), st                                            // 0x00481d20    dec1
                         {disp8} fadd       dword ptr [esp + 0x48]                               // 0x00481d22    d8442448
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x00481d26    d9442434
                         {disp8} fmul       dword ptr [ecx + 0x04]                               // 0x00481d2a    d84904
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x00481d2d    d9442428
                         fmul               dword ptr [ecx]                                      // 0x00481d31    d809
                         faddp              st(1), st                                            // 0x00481d33    dec1
                         {disp8} fld        dword ptr [esp + 0x40]                               // 0x00481d35    d9442440
                         {disp8} fmul       dword ptr [ecx + 0x08]                               // 0x00481d39    d84908
                         faddp              st(1), st                                            // 0x00481d3c    dec1
                         {disp8} fadd       dword ptr [esp + 0x4c]                               // 0x00481d3e    d844244c
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x00481d42    d95c241c
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x00481d46    d9442438
                         {disp8} fmul       dword ptr [ecx + 0x04]                               // 0x00481d4a    d84904
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x00481d4d    d944242c
                         fmul               dword ptr [ecx]                                      // 0x00481d51    d809
                         faddp              st(1), st                                            // 0x00481d53    dec1
                         {disp8} fld        dword ptr [esp + 0x44]                               // 0x00481d55    d9442444
                         {disp8} fmul       dword ptr [ecx + 0x08]                               // 0x00481d59    d84908
                         faddp              st(1), st                                            // 0x00481d5c    dec1
                         {disp8} fadd       dword ptr [esp + 0x50]                               // 0x00481d5e    d8442450
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00481d62    d95c2420
                         {disp8} fsub       dword ptr [ebp + 0x00]                               // 0x00481d66    d86500
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00481d69    d944241c
                         {disp8} fsub       dword ptr [ebp + 0x04]                               // 0x00481d6d    d86504
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x00481d70    d9442420
                         {disp8} fsub       dword ptr [ebp + 0x08]                               // 0x00481d74    d86508
                         fld                st(0)                                                // 0x00481d77    d9c0
                         fmul               st, st(1)                                            // 0x00481d79    d8c9
                         fld                st(2)                                                // 0x00481d7b    d9c2
                         fmul               st, st(3)                                            // 0x00481d7d    d8cb
                         faddp              st(1), st                                            // 0x00481d7f    dec1
                         fld                st(3)                                                // 0x00481d81    d9c3
                         fmul               st, st(4)                                            // 0x00481d83    d8cc
                         faddp              st(1), st                                            // 0x00481d85    dec1
                         {disp8} fcomp      dword ptr [esp + 0x10]                               // 0x00481d87    d85c2410
                         fstp               st(0)                                                // 0x00481d8b    ddd8
                         fnstsw             ax                                                   // 0x00481d8d    dfe0
                         fstp               st(0)                                                // 0x00481d8f    ddd8
                         test               ah, 0x01                                             // 0x00481d91    f6c401
                         fstp               st(0)                                                // 0x00481d94    ddd8
                         {disp8} jne        _jmp_addr_0x00481dde                                 // 0x00481d96    7546
                         add                ecx, 0x20                                            // 0x00481d98    83c120
                         inc                edx                                                  // 0x00481d9b    42
                         cmp.s              edx, esi                                             // 0x00481d9c    3bd6
                         {disp32} jl        _jmp_addr_0x00481d0a                                 // 0x00481d9e    0f8c66ffffff
_jmp_addr_0x00481da4:    {disp8} mov        eax, dword ptr [esp + 0x58]                          // 0x00481da4    8b442458
                         inc                ebx                                                  // 0x00481da8    43
                         add                edi, 0x04                                            // 0x00481da9    83c704
                         cmp.s              ebx, eax                                             // 0x00481dac    3bd8
                         {disp32} jl        _jmp_addr_0x00481cf8                                 // 0x00481dae    0f8c44ffffff
                         {disp8} mov        edx, dword ptr [esp + 0x14]                          // 0x00481db4    8b542414
_jmp_addr_0x00481db8:    {disp8} mov        eax, dword ptr [esp + 0x60]                          // 0x00481db8    8b442460
                         {disp8} mov        esi, dword ptr [esp + 0x5c]                          // 0x00481dbc    8b74245c
                         inc                eax                                                  // 0x00481dc0    40
                         add                esi, 0x04                                            // 0x00481dc1    83c604
                         cmp.s              eax, edx                                             // 0x00481dc4    3bc2
                         {disp8} mov        dword ptr [esp + 0x60], eax                          // 0x00481dc6    89442460
                         {disp8} mov        dword ptr [esp + 0x5c], esi                          // 0x00481dca    8974245c
                         {disp32} jl        _jmp_addr_0x00481cd2                                 // 0x00481dce    0f8cfefeffff
_jmp_addr_0x00481dd4:    pop                edi                                                  // 0x00481dd4    5f
                         pop                esi                                                  // 0x00481dd5    5e
                         pop                ebp                                                  // 0x00481dd6    5d
                         xor.s              eax, eax                                             // 0x00481dd7    33c0
                         pop                ebx                                                  // 0x00481dd9    5b
                         add                esp, 0x44                                            // 0x00481dda    83c444
                         ret                                                                     // 0x00481ddd    c3
_jmp_addr_0x00481dde:    pop                edi                                                  // 0x00481dde    5f
                         pop                esi                                                  // 0x00481ddf    5e
                         pop                ebp                                                  // 0x00481de0    5d
                         mov                eax, 0x00000001                                      // 0x00481de1    b801000000
                         pop                ebx                                                  // 0x00481de6    5b
                         add                esp, 0x44                                            // 0x00481de7    83c444
                         ret                                                                     // 0x00481dea    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x00481deb    e889faf7ff
                         sub                esp, 0x000000a8                                      // 0x00481df0    81eca8000000
                         push               ebx                                                  // 0x00481df6    53
                         push               ebp                                                  // 0x00481df7    55
                         push               esi                                                  // 0x00481df8    56
                         push               edi                                                  // 0x00481df9    57
                         mov.s              esi, ecx                                             // 0x00481dfa    8bf1
                         call               _jmp_addr_0x004907c0                                 // 0x00481dfc    e8bfe90000
                         {disp32} fild      dword ptr [esp + 0x000000bc]                         // 0x00481e01    db8424bc000000
                         {disp32} mov       eax, dword ptr [esi + 0x00004a90]                    // 0x00481e08    8b86904a0000
                         {disp32} mov       edi, dword ptr [esp + 0x000000bc]                    // 0x00481e0e    8bbc24bc000000
                         fld                st(0)                                                // 0x00481e15    d9c0
                         xor.s              ebp, ebp                                             // 0x00481e17    33ed
                         cmp.s              eax, ebp                                             // 0x00481e19    3bc5
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]                     // 0x00481e1b    d80d18c48a00
                         {disp32} mov       dword ptr [esi + 0x000057a8], ebp                    // 0x00481e21    89aea8570000
                         {disp32} mov       dword ptr [esi + 0x00005274], ebp                    // 0x00481e27    89ae74520000
                         {disp32} fstp      dword ptr [esi + 0x000048b8]                         // 0x00481e2d    d99eb8480000
                         {disp32} mov       dword ptr [esi + 0x000048b4], edi                    // 0x00481e33    89beb4480000
                         {disp8} je         _jmp_addr_0x00481e45                                 // 0x00481e39    740a
                         fstp               st(0)                                                // 0x00481e3b    ddd8
                         {disp32} mov       dword ptr [esi + 0x000048bc], edi                    // 0x00481e3d    89bebc480000
                         {disp8} jmp        _jmp_addr_0x00481e6c                                 // 0x00481e43    eb27
_jmp_addr_0x00481e45:    {disp32} fld       dword ptr [esi + 0x00000090]                         // 0x00481e45    d98690000000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x00481e4b    d80db4a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fac]                    // 0x00481e51    d80dacef8c00
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x26024]                    // 0x00481e57    d82d24f08c00
                         fmul               st, st(1)                                            // 0x00481e5d    d8c9
                         call               _jmp_addr_0x007a1400                                 // 0x00481e5f    e89cf53100
                         fstp               st(0)                                                // 0x00481e64    ddd8
                         {disp32} mov       dword ptr [esi + 0x000048bc], eax                    // 0x00481e66    8986bc480000
_jmp_addr_0x00481e6c:    cmp                dword ptr [esi + 0x00005730], ebp                    // 0x00481e6c    39ae30570000
                         {disp8} je         _jmp_addr_0x00481e82                                 // 0x00481e72    740e
                         {disp32} mov       eax, dword ptr [esi + 0x000048bc]                    // 0x00481e74    8b86bc480000
                         shl                eax, 1                                               // 0x00481e7a    d1e0
                         {disp32} mov       dword ptr [esi + 0x000048bc], eax                    // 0x00481e7c    8986bc480000
_jmp_addr_0x00481e82:    cmp                dword ptr [data_bytes + 0x29e20c], ebp               // 0x00481e82    392d0c42c600
                         {disp8} je         _jmp_addr_0x00481eb9                                 // 0x00481e88    742f
                         {disp32} mov       eax, dword ptr [esi + 0x00004b30]                    // 0x00481e8a    8b86304b0000
                         cmp.s              eax, ebp                                             // 0x00481e90    3bc5
                         {disp8} je         _jmp_addr_0x00481eb9                                 // 0x00481e92    7425
                         {disp32} mov       ebx, dword ptr [esi + eax * 0x4 + 0x00004b60]        // 0x00481e94    8b9c86604b0000
                         add.s              ebx, edi                                             // 0x00481e9b    03df
                         mov.s              ecx, ebx                                             // 0x00481e9d    8bcb
                         cmp                ecx, 0x000004b0                                      // 0x00481e9f    81f9b0040000
                         {disp32} mov       dword ptr [esi + eax * 0x4 + 0x00004b60], ebx        // 0x00481ea5    899c86604b0000
                         {disp8} jbe        _jmp_addr_0x00481eb9                                 // 0x00481eac    760b
                         {disp32} mov       dword ptr [esi + eax * 0x4 + 0x00004b60], 0x000004b0 // 0x00481eae    c78486604b0000b0040000
_jmp_addr_0x00481eb9:    cmp                dword ptr [esi + 0x0000528c], ebp                    // 0x00481eb9    39ae8c520000
                         {disp32} je        _jmp_addr_0x00481fc0                                 // 0x00481ebf    0f84fb000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x00481ec5    8b8e34480000
                         cmp.s              ecx, ebp                                             // 0x00481ecb    3bcd
                         {disp32} je        _jmp_addr_0x00481fc0                                 // 0x00481ecd    0f84ed000000
                         {disp32} mov       edx, dword ptr [_game]                               // 0x00481ed3    8b155c19d000
                         xor.s              eax, eax                                             // 0x00481ed9    33c0
                         {disp32} mov       al, byte ptr [edx + 0x00205a59]                      // 0x00481edb    8a82595a2000
                         lea                edi, dword ptr [eax + eax * 0x4]                     // 0x00481ee1    8d3c80
                         lea                edi, dword ptr [eax + edi * 0x8]                     // 0x00481ee4    8d3cf8
                         lea                eax, dword ptr [eax + edi * 0x2]                     // 0x00481ee7    8d0478
                         shl                eax, 5                                               // 0x00481eea    c1e005
                         cmp                ecx, dword ptr [eax + edx * 0x1 + 0x00000a64]        // 0x00481eed    3b8c10640a0000
                         {disp32} jne       _jmp_addr_0x00481fc0                                 // 0x00481ef4    0f85c6000000
                         {disp32} fld       dword ptr [esi + 0x00000084]                         // 0x00481efa    d98684000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000080]                    // 0x00481f00    8b8680000000
                         fld                st(0)                                                // 0x00481f06    d9c0
                         {disp8} mov        ecx, dword ptr [esi + 0x78]                          // 0x00481f08    8b4e78
                         fcos                                                                    // 0x00481f0b    d9ff
                         {disp8} mov        edx, dword ptr [esi + 0x7c]                          // 0x00481f0d    8b567c
                         {disp32} mov       dword ptr [esp + 0x000000ac], eax                    // 0x00481f10    898424ac000000
                         {disp32} mov       eax, dword ptr [esi + 0x00004b30]                    // 0x00481f17    8b86304b0000
                         {disp32} mov       dword ptr [esp + 0x000000a4], ecx                    // 0x00481f1d    898c24a4000000
                         xor.s              ecx, ecx                                             // 0x00481f24    33c9
                         cmp.s              eax, ebp                                             // 0x00481f26    3bc5
                         {disp32} mov       dword ptr [esp + 0x000000a8], edx                    // 0x00481f28    899424a8000000
                         {disp32} fstp      dword ptr [esp + 0x000000a0]                         // 0x00481f2f    d99c24a0000000
                         fsin                                                                    // 0x00481f36    d9fe
                         {disp32} fst       dword ptr [esp + 0x00000088]                         // 0x00481f38    d9942488000000
                         fchs                                                                    // 0x00481f3f    d9e0
                         {disp32} fstp      dword ptr [esp + 0x00000098]                         // 0x00481f41    d99c2498000000
                         {disp8} jle        _jmp_addr_0x00481fc0                                 // 0x00481f48    7e76
                         {disp32} lea       edx, dword ptr [esi + 0x00004b34]                    // 0x00481f4a    8d96344b0000
                         {disp32} lea       eax, dword ptr [esi + 0x00004dac]                    // 0x00481f50    8d86ac4d0000
_jmp_addr_0x00481f56:    cmp                dword ptr [edx], 0x02                                // 0x00481f56    833a02
                         {disp8} jne        _jmp_addr_0x00481faf                                 // 0x00481f59    7554
                         {disp32} fld       dword ptr [esp + 0x000000a0]                         // 0x00481f5b    d98424a0000000
                         {disp8} fmul       dword ptr [eax + -0x08]                              // 0x00481f62    d848f8
                         {disp32} fld       dword ptr [esp + 0x00000098]                         // 0x00481f65    d9842498000000
                         fmul               dword ptr [eax]                                      // 0x00481f6c    d808
                         faddp              st(1), st                                            // 0x00481f6e    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000a4]                         // 0x00481f70    d88424a4000000
                         {disp32} fstp      dword ptr [eax + 0x00000088]                         // 0x00481f77    d99888000000
                         {disp32} fld       dword ptr [esp + 0x000000a8]                         // 0x00481f7d    d98424a8000000
                         {disp8} fadd       dword ptr [eax + -0x04]                              // 0x00481f84    d840fc
                         {disp32} fstp      dword ptr [eax + 0x0000008c]                         // 0x00481f87    d9988c000000
                         {disp32} fld       dword ptr [esp + 0x00000088]                         // 0x00481f8d    d9842488000000
                         {disp8} fmul       dword ptr [eax + -0x08]                              // 0x00481f94    d848f8
                         {disp32} fld       dword ptr [esp + 0x000000a0]                         // 0x00481f97    d98424a0000000
                         fmul               dword ptr [eax]                                      // 0x00481f9e    d808
                         faddp              st(1), st                                            // 0x00481fa0    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000ac]                         // 0x00481fa2    d88424ac000000
                         {disp32} fstp      dword ptr [eax + 0x00000090]                         // 0x00481fa9    d99890000000
_jmp_addr_0x00481faf:    {disp32} mov       edi, dword ptr [esi + 0x00004b30]                    // 0x00481faf    8bbe304b0000
                         inc                ecx                                                  // 0x00481fb5    41
                         add                edx, 0x04                                            // 0x00481fb6    83c204
                         add                eax, 0x0c                                            // 0x00481fb9    83c00c
                         cmp.s              ecx, edi                                             // 0x00481fbc    3bcf
                         {disp8} jl         _jmp_addr_0x00481f56                                 // 0x00481fbe    7c96
_jmp_addr_0x00481fc0:    {disp32} mov       ecx, dword ptr [esi + 0x00005798]                    // 0x00481fc0    8b8e98570000
                         neg                ecx                                                  // 0x00481fc6    f7d9
                         sbb.s              ecx, ecx                                             // 0x00481fc8    1bc9
                         and                ecx, 0x31                                            // 0x00481fca    83e131
                         inc                ecx                                                  // 0x00481fcd    41
                         push               ecx                                                  // 0x00481fce    51
                         mov.s              ecx, esi                                             // 0x00481fcf    8bce
                         call               _jmp_addr_0x00481930                                 // 0x00481fd1    e85af9ffff
                         mov.s              ecx, esi                                             // 0x00481fd6    8bce
                         call               _jmp_addr_0x00618c40                                 // 0x00481fd8    e8636c1900
                         mov.s              ecx, esi                                             // 0x00481fdd    8bce
                         {disp32} mov       dword ptr [esi + 0x00005268], ebp                    // 0x00481fdf    89ae68520000
                         call               _jmp_addr_0x00481410                                 // 0x00481fe5    e826f4ffff
                         mov.s              ecx, esi                                             // 0x00481fea    8bce
                         call               _jmp_addr_0x00481760                                 // 0x00481fec    e86ff7ffff
                         {disp32} mov       edi, dword ptr [esi + 0x00005468]                    // 0x00481ff1    8bbe68540000
                         {disp32} mov       edx, dword ptr [esi + 0x000048b4]                    // 0x00481ff7    8b96b4480000
                         sub.s              edi, edx                                             // 0x00481ffd    2bfa
                         mov.s              eax, edi                                             // 0x00481fff    8bc7
                         cmp.s              eax, ebp                                             // 0x00482001    3bc5
                         {disp32} mov       dword ptr [esi + 0x00005468], edi                    // 0x00482003    89be68540000
                         {disp8} jg         _jmp_addr_0x00482062                                 // 0x00482009    7f57
                         {disp32} mov       eax, dword ptr [esi + 0x00005470]                    // 0x0048200b    8b8670540000
                         sub.s              eax, ebp                                             // 0x00482011    2bc5
                         {disp8} je         _jmp_addr_0x0048204e                                 // 0x00482013    7439
                         dec                eax                                                  // 0x00482015    48
                         {disp8} je         _jmp_addr_0x00482042                                 // 0x00482016    742a
                         dec                eax                                                  // 0x00482018    48
                         {disp8} jne        _jmp_addr_0x00482062                                 // 0x00482019    7547
                         {disp32} mov       eax, dword ptr [esi + 0x0000546c]                    // 0x0048201b    8b866c540000
                         push               eax                                                  // 0x00482021    50
                         {disp32} mov       dword ptr [esi + 0x00005470], ebp                    // 0x00482022    89ae70540000
                         call               ?LocalRand@GRand@@SAIJ@Z                             // 0x00482028    e843c52500
                         {disp32} mov       ecx, dword ptr [esi + 0x0000546c]                    // 0x0048202d    8b8e6c540000
                         sar                ecx, 1                                               // 0x00482033    d1f9
                         add                esp, 0x04                                            // 0x00482035    83c404
                         add.s              eax, ecx                                             // 0x00482038    03c1
                         {disp32} mov       dword ptr [esi + 0x00005468], eax                    // 0x0048203a    898668540000
                         {disp8} jmp        _jmp_addr_0x00482062                                 // 0x00482040    eb20
_jmp_addr_0x00482042:    {disp32} mov       dword ptr [esi + 0x00005470], 0x00000002             // 0x00482042    c7867054000002000000
                         {disp8} jmp        _jmp_addr_0x00482058                                 // 0x0048204c    eb0a
_jmp_addr_0x0048204e:    {disp32} mov       dword ptr [esi + 0x00005470], 0x00000001             // 0x0048204e    c7867054000001000000
_jmp_addr_0x00482058:    {disp32} mov       dword ptr [esi + 0x00005468], 0x000000c8             // 0x00482058    c78668540000c8000000
_jmp_addr_0x00482062:    {disp32} fld       dword ptr [esi + 0x000048b0]                         // 0x00482062    d986b0480000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x33f4]                     // 0x00482068    d81df4c38a00
                         fnstsw             ax                                                   // 0x0048206e    dfe0
                         test               ah, 0x41                                             // 0x00482070    f6c441
                         {disp32} jne       _jmp_addr_0x004821f0                                 // 0x00482073    0f8577010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x00482079    8b8e34480000
                         mov                edx, dword ptr [ecx]                                 // 0x0048207f    8b11
                         call               dword ptr [edx + 0x1c]                               // 0x00482081    ff521c
                         test               eax, eax                                             // 0x00482084    85c0
                         {disp8} je         _jmp_addr_0x004820b2                                 // 0x00482086    742a
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x00482088    8b8e34480000
                         call               _jmp_addr_0x004cf060                                 // 0x0048208e    e8cdcf0400
                         cmp.s              eax, ebp                                             // 0x00482093    3bc5
                         {disp8} je         _jmp_addr_0x004820c9                                 // 0x00482095    7432
                         add                eax, 0x000000c8                                      // 0x00482097    05c8000000
                         mov                ecx, dword ptr [eax]                                 // 0x0048209c    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x0048209e    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004820a1    8b4008
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                          // 0x004820a4    894c241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                          // 0x004820a8    89542420
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x004820ac    89442424
                         {disp8} jmp        _jmp_addr_0x004820c9                                 // 0x004820b0    eb17
_jmp_addr_0x004820b2:    {disp8} lea        ecx, dword ptr [esi + 0x78]                          // 0x004820b2    8d4e78
                         mov                edx, dword ptr [ecx]                                 // 0x004820b5    8b11
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                          // 0x004820b7    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x004820ba    8b4908
                         {disp8} mov        dword ptr [esp + 0x1c], edx                          // 0x004820bd    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x004820c1    89442420
                         {disp8} mov        dword ptr [esp + 0x24], ecx                          // 0x004820c5    894c2424
_jmp_addr_0x004820c9:    {disp8} fld        dword ptr [esp + 0x1c]                               // 0x004820c9    d944241c
                         mov.s              ecx, esi                                             // 0x004820cd    8bce
                         {disp8} fsub       dword ptr [esi + 0x78]                               // 0x004820cf    d86678
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x004820d2    d95c2410
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x004820d6    d9442420
                         {disp8} fsub       dword ptr [esi + 0x7c]                               // 0x004820da    d8667c
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x004820dd    d95c2414
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x004820e1    d9442424
                         {disp32} fsub      dword ptr [esi + 0x00000080]                         // 0x004820e5    d8a680000000
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x004820eb    d95c2418
                         call               _jmp_addr_0x0047fa80                                 // 0x004820ef    e88cd9ffff
                         {disp32} fmul      dword ptr [esi + 0x000048b0]                         // 0x004820f4    d88eb0480000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]                    // 0x004820fa    d80d402c8c00
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00482100    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00482104    d81d98a38a00
                         fnstsw             ax                                                   // 0x0048210a    dfe0
                         test               ah, 0x40                                             // 0x0048210c    f6c440
                         {disp8} je         _jmp_addr_0x00482133                                 // 0x0048210f    7422
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00482111    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00482115    d81d98a38a00
                         fnstsw             ax                                                   // 0x0048211b    dfe0
                         test               ah, 0x40                                             // 0x0048211d    f6c440
                         {disp8} je         _jmp_addr_0x00482133                                 // 0x00482120    7411
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482122    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00482126    d81d98a38a00
                         fnstsw             ax                                                   // 0x0048212c    dfe0
                         test               ah, 0x40                                             // 0x0048212e    f6c440
                         {disp8} jne        _jmp_addr_0x00482171                                 // 0x00482131    753e
_jmp_addr_0x00482133:    {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482133    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x00482137    d84c2418
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0048213b    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x0048213f    d84c2414
                         faddp              st(1), st                                            // 0x00482143    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00482145    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00482149    d84c2410
                         faddp              st(1), st                                            // 0x0048214d    dec1
                         fsqrt                                                                   // 0x0048214f    d9fa
                         fdivp              st(1), st                                            // 0x00482151    def9
                         fld                st(0)                                                // 0x00482153    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00482155    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00482159    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0048215d    d9442414
                         fmul               st, st(1)                                            // 0x00482161    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00482163    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482167    d9442418
                         fmul               st, st(1)                                            // 0x0048216b    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x0048216d    d95c2418
_jmp_addr_0x00482171:    {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x00482171    8d542410
                         fstp               st(0)                                                // 0x00482175    ddd8
                         push               edx                                                  // 0x00482177    52
                         mov.s              ecx, esi                                             // 0x00482178    8bce
                         call               _jmp_addr_0x004813b0                                 // 0x0048217a    e831f2ffff
                         push               eax                                                  // 0x0048217f    50
                         mov.s              ecx, esi                                             // 0x00482180    8bce
                         call               _jmp_addr_0x0047fac0                                 // 0x00482182    e839d9ffff
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00482187    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26148]                    // 0x0048218b    d80d48f18c00
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x00482191    d95c242c
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00482195    d9442414
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                          // 0x00482199    8b44242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26148]                    // 0x0048219d    d80d48f18c00
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x004821a3    8944241c
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x004821a7    d95c2430
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x004821ab    d9442418
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                          // 0x004821af    8b4c2430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26148]                    // 0x004821b3    d80d48f18c00
                         {disp8} mov        dword ptr [esp + 0x20], ecx                          // 0x004821b9    894c2420
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x004821bd    d95c2434
                         {disp32} fld       dword ptr [esi + 0x000048b0]                         // 0x004821c1    d986b0480000
                         {disp8} mov        edx, dword ptr [esp + 0x34]                          // 0x004821c7    8b542434
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26000]                    // 0x004821cb    d80d00f08c00
                         {disp8} mov        dword ptr [esp + 0x24], edx                          // 0x004821d1    89542424
                         {disp32} fst       dword ptr [esi + 0x000048b0]                         // 0x004821d5    d996b0480000
                         {disp32} fcomp     dword ptr [__real@3e999999]                          // 0x004821db    d81d3cb28a00
                         fnstsw             ax                                                   // 0x004821e1    dfe0
                         test               ah, 0x01                                             // 0x004821e3    f6c401
                         {disp8} je         _jmp_addr_0x00482208                                 // 0x004821e6    7420
                         {disp32} mov       dword ptr [esi + 0x000048b0], ebp                    // 0x004821e8    89aeb0480000
                         {disp8} jmp        _jmp_addr_0x00482208                                 // 0x004821ee    eb18
_jmp_addr_0x004821f0:    {disp8} mov        dword ptr [esp + 0x24], 0x00000000                   // 0x004821f0    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x004821f8    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000                   // 0x00482200    c744241c00000000
_jmp_addr_0x00482208:    {disp32} mov       al, byte ptr [esi + 0x000048ac]                      // 0x00482208    8a86ac480000
                         test               al, al                                               // 0x0048220e    84c0
                         {disp32} je        _jmp_addr_0x0048248e                                 // 0x00482210    0f8478020000
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00482216    d944241c
                         mov.s              ecx, esi                                             // 0x0048221a    8bce
                         {disp32} fsub      dword ptr [esi + 0x000048a0]                         // 0x0048221c    d8a6a0480000
                         mov                bl, 0x01                                             // 0x00482222    b301
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x00482224    d9442420
                         {disp32} fsub      dword ptr [esi + 0x000048a4]                         // 0x00482228    d8a6a4480000
                         {disp8} fstp       dword ptr [esp + 0x44]                               // 0x0048222e    d95c2444
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x00482232    d9442424
                         {disp32} fsub      dword ptr [esi + 0x000048a8]                         // 0x00482236    d8a6a8480000
                         {disp8} fstp       dword ptr [esp + 0x48]                               // 0x0048223c    d95c2448
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26110]                    // 0x00482240    d80d10f18c00
                         {disp8} fld        dword ptr [esp + 0x44]                               // 0x00482246    d9442444
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26110]                    // 0x0048224a    d80d10f18c00
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x00482250    d95c2430
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x00482254    d9442448
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26110]                    // 0x00482258    d80d10f18c00
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x0048225e    d95c2434
                         {disp32} fadd      dword ptr [esi + 0x000048a0]                         // 0x00482262    d886a0480000
                         {disp32} fstp      dword ptr [esi + 0x000048a0]                         // 0x00482268    d99ea0480000
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x0048226e    d9442430
                         {disp32} fadd      dword ptr [esi + 0x000048a4]                         // 0x00482272    d886a4480000
                         {disp32} fstp      dword ptr [esi + 0x000048a4]                         // 0x00482278    d99ea4480000
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x0048227e    d9442434
                         {disp32} fadd      dword ptr [esi + 0x000048a8]                         // 0x00482282    d886a8480000
                         {disp32} fstp      dword ptr [esi + 0x000048a8]                         // 0x00482288    d99ea8480000
                         {disp32} fld       dword ptr [esi + 0x000048b8]                         // 0x0048228e    d986b8480000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x00482294    d80d04c48a00
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0048229a    d95c2428
                         call               _jmp_addr_0x0047fa80                                 // 0x0048229e    e8ddd7ffff
                         {disp32} fmul      dword ptr [_rdata_float0p5]                          // 0x004822a3    d80db4a38a00
                         {disp32} lea       edx, dword ptr [esi + 0x00004874]                    // 0x004822a9    8d9674480000
                         mov                ebp, 0x00000002                                      // 0x004822af    bd02000000
                         fld                st(0)                                                // 0x004822b4    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e788]                    // 0x004822b6    d80d88778c00
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x004822bc    d95c2438
                         fld                st(0)                                                // 0x004822c0    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e4]                     // 0x004822c2    d80de4b68a00
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x004822c8    d95c243c
                         {disp8} fdivr      dword ptr [esp + 0x28]                               // 0x004822cc    d87c2428
_jmp_addr_0x004822d0:    {disp8} lea        ecx, dword ptr [edx + -0x04]                         // 0x004822d0    8d4afc
                         mov                edi, 0x0000000a                                      // 0x004822d3    bf0a000000
_jmp_addr_0x004822d8:    {disp32} fld       dword ptr [esi + 0x000048a0]                         // 0x004822d8    d986a0480000
                         {disp32} mov       eax, dword ptr [esi + 0x000048a4]                    // 0x004822de    8b86a4480000
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x004822e4    d9442438
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x004822e8    89442420
                         {disp8} fmul       dword ptr [edx + 0x14]                               // 0x004822ec    d84a14
                         {disp32} mov       eax, dword ptr [esi + 0x000048a8]                    // 0x004822ef    8b86a8480000
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x004822f5    d9442438
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x004822f9    89442424
                         {disp8} fmul       dword ptr [edx + 0x18]                               // 0x004822fd    d84a18
                         {disp8} fstp       dword ptr [esp + 0x44]                               // 0x00482300    d95c2444
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x00482304    d9442438
                         {disp8} fmul       dword ptr [edx + 0x1c]                               // 0x00482308    d84a1c
                         {disp8} fstp       dword ptr [esp + 0x48]                               // 0x0048230b    d95c2448
                         faddp              st(1), st                                            // 0x0048230f    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x00482311    d9442420
                         {disp8} fadd       dword ptr [esp + 0x44]                               // 0x00482315    d8442444
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00482319    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x0048231d    d9442424
                         {disp8} fadd       dword ptr [esp + 0x48]                               // 0x00482321    d8442448
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x00482325    d95c2424
                         fld                dword ptr [ecx]                                      // 0x00482329    d901
                         {disp8} fld        dword ptr [ecx + 0x04]                               // 0x0048232b    d94104
                         {disp8} fld        dword ptr [ecx + 0x08]                               // 0x0048232e    d94108
                         fld                st(0)                                                // 0x00482331    d9c0
                         fmul               st, st(1)                                            // 0x00482333    d8c9
                         fld                st(2)                                                // 0x00482335    d9c2
                         fmul               st, st(3)                                            // 0x00482337    d8cb
                         faddp              st(1), st                                            // 0x00482339    dec1
                         fld                st(3)                                                // 0x0048233b    d9c3
                         fmul               st, st(4)                                            // 0x0048233d    d8cc
                         faddp              st(1), st                                            // 0x0048233f    dec1
                         fstp               st(3)                                                // 0x00482341    dddb
                         fstp               st(0)                                                // 0x00482343    ddd8
                         fstp               st(0)                                                // 0x00482345    ddd8
                         {disp32} fcom      dword ptr [rdata_bytes + 0x26144]                    // 0x00482347    d81544f18c00
                         fnstsw             ax                                                   // 0x0048234d    dfe0
                         test               ah, 0x41                                             // 0x0048234f    f6c441
                         {disp8} jne        _jmp_addr_0x00482370                                 // 0x00482352    751c
                         fsqrt                                                                   // 0x00482354    d9fa
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x235c]                     // 0x00482356    d83d5cb38a00
                         fld                st(0)                                                // 0x0048235c    d9c0
                         fmul               dword ptr [ecx]                                      // 0x0048235e    d809
                         fstp               dword ptr [ecx]                                      // 0x00482360    d919
                         fld                st(0)                                                // 0x00482362    d9c0
                         fmul               dword ptr [edx]                                      // 0x00482364    d80a
                         fstp               dword ptr [edx]                                      // 0x00482366    d91a
                         {disp8} fmul       dword ptr [edx + 0x04]                               // 0x00482368    d84a04
                         {disp8} fstp       dword ptr [edx + 0x04]                               // 0x0048236b    d95a04
                         {disp8} jmp        _jmp_addr_0x00482372                                 // 0x0048236e    eb02
_jmp_addr_0x00482370:    fstp               st(0)                                                // 0x00482370    ddd8
_jmp_addr_0x00482372:    dec                edi                                                  // 0x00482372    4f
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x00482373    d944243c
                         fmul               dword ptr [ecx]                                      // 0x00482377    d809
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x00482379    d944243c
                         {disp8} fmul       dword ptr [ecx + 0x04]                               // 0x0048237d    d84904
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x00482380    d95c2430
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x00482384    d944243c
                         {disp8} fmul       dword ptr [ecx + 0x08]                               // 0x00482388    d84908
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x0048238b    d95c2434
                         fxch               st(1)                                                // 0x0048238f    d9c9
                         fsub               st, st(1)                                            // 0x00482391    d8e1
                         fxch               st(1)                                                // 0x00482393    d9c9
                         fstp               st(0)                                                // 0x00482395    ddd8
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x00482397    d9442420
                         {disp8} fsub       dword ptr [esp + 0x30]                               // 0x0048239b    d8642430
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0048239f    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x004823a3    d9442424
                         {disp8} fsub       dword ptr [esp + 0x34]                               // 0x004823a7    d8642434
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x004823ab    d95c2424
                         fmul               st, st(1)                                            // 0x004823af    d8c9
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x004823b1    d9442420
                         fmul               st, st(2)                                            // 0x004823b5    d8ca
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x004823b7    d95c2414
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x004823bb    d9442424
                         fmul               st, st(2)                                            // 0x004823bf    d8ca
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x004823c1    d95c2418
                         fadd               dword ptr [ecx]                                      // 0x004823c5    d801
                         fstp               dword ptr [ecx]                                      // 0x004823c7    d919
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x004823c9    d9442414
                         {disp8} fadd       dword ptr [ecx + 0x04]                               // 0x004823cd    d84104
                         {disp8} fstp       dword ptr [ecx + 0x04]                               // 0x004823d0    d95904
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x004823d3    d9442418
                         {disp8} fadd       dword ptr [ecx + 0x08]                               // 0x004823d7    d84108
                         {disp8} fstp       dword ptr [ecx + 0x08]                               // 0x004823da    d95908
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x004823dd    d9442428
                         fmul               dword ptr [ecx]                                      // 0x004823e1    d809
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x004823e3    d9442428
                         {disp8} fmul       dword ptr [ecx + 0x04]                               // 0x004823e7    d84904
                         {disp8} fstp       dword ptr [esp + 0x54]                               // 0x004823ea    d95c2454
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x004823ee    d9442428
                         {disp8} fmul       dword ptr [ecx + 0x08]                               // 0x004823f2    d84908
                         {disp8} fstp       dword ptr [esp + 0x58]                               // 0x004823f5    d95c2458
                         {disp8} fadd       dword ptr [edx + 0x14]                               // 0x004823f9    d84214
                         {disp8} fstp       dword ptr [edx + 0x14]                               // 0x004823fc    d95a14
                         {disp8} fld        dword ptr [esp + 0x54]                               // 0x004823ff    d9442454
                         {disp8} fadd       dword ptr [edx + 0x18]                               // 0x00482403    d84218
                         {disp8} fstp       dword ptr [edx + 0x18]                               // 0x00482406    d95a18
                         {disp8} fld        dword ptr [esp + 0x58]                               // 0x00482409    d9442458
                         {disp8} fadd       dword ptr [edx + 0x1c]                               // 0x0048240d    d8421c
                         {disp8} fstp       dword ptr [edx + 0x1c]                               // 0x00482410    d95a1c
                         {disp32} jne       _jmp_addr_0x004822d8                                 // 0x00482413    0f85bffeffff
                         {disp8} fld        dword ptr [edx + 0x14]                               // 0x00482419    d94214
                         {disp8} fld        dword ptr [edx + 0x18]                               // 0x0048241c    d94218
                         {disp8} fld        dword ptr [edx + 0x1c]                               // 0x0048241f    d9421c
                         fld                st(0)                                                // 0x00482422    d9c0
                         fmul               st, st(1)                                            // 0x00482424    d8c9
                         fld                st(2)                                                // 0x00482426    d9c2
                         fmul               st, st(3)                                            // 0x00482428    d8cb
                         faddp              st(1), st                                            // 0x0048242a    dec1
                         fld                st(3)                                                // 0x0048242c    d9c3
                         fmul               st, st(4)                                            // 0x0048242e    d8cc
                         faddp              st(1), st                                            // 0x00482430    dec1
                         fsqrt                                                                   // 0x00482432    d9fa
                         fstp               st(3)                                                // 0x00482434    dddb
                         fstp               st(0)                                                // 0x00482436    ddd8
                         fstp               st(0)                                                // 0x00482438    ddd8
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x33f4]                     // 0x0048243a    d81df4c38a00
                         fnstsw             ax                                                   // 0x00482440    dfe0
                         test               ah, 0x41                                             // 0x00482442    f6c441
                         {disp8} je         _jmp_addr_0x00482473                                 // 0x00482445    742c
                         fld                dword ptr [ecx]                                      // 0x00482447    d901
                         fld                dword ptr [edx]                                      // 0x00482449    d902
                         {disp8} fld        dword ptr [edx + 0x04]                               // 0x0048244b    d94204
                         fld                st(0)                                                // 0x0048244e    d9c0
                         fmul               st, st(1)                                            // 0x00482450    d8c9
                         fld                st(2)                                                // 0x00482452    d9c2
                         fmul               st, st(3)                                            // 0x00482454    d8cb
                         faddp              st(1), st                                            // 0x00482456    dec1
                         fld                st(3)                                                // 0x00482458    d9c3
                         fmul               st, st(4)                                            // 0x0048245a    d8cc
                         faddp              st(1), st                                            // 0x0048245c    dec1
                         fsqrt                                                                   // 0x0048245e    d9fa
                         fstp               st(3)                                                // 0x00482460    dddb
                         fstp               st(0)                                                // 0x00482462    ddd8
                         fstp               st(0)                                                // 0x00482464    ddd8
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x33f4]                     // 0x00482466    d81df4c38a00
                         fnstsw             ax                                                   // 0x0048246c    dfe0
                         test               ah, 0x41                                             // 0x0048246e    f6c441
                         {disp8} jne        _jmp_addr_0x00482475                                 // 0x00482471    7502
_jmp_addr_0x00482473:    xor.s              bl, bl                                               // 0x00482473    32db
_jmp_addr_0x00482475:    add                edx, 0x0c                                            // 0x00482475    83c20c
                         dec                ebp                                                  // 0x00482478    4d
                         {disp32} jne       _jmp_addr_0x004822d0                                 // 0x00482479    0f8551feffff
                         test               bl, bl                                               // 0x0048247f    84db
                         fstp               st(0)                                                // 0x00482481    ddd8
                         {disp8} je         _jmp_addr_0x0048248c                                 // 0x00482483    7407
                         {disp32} mov       byte ptr [esi + 0x000048ac], 0x00                    // 0x00482485    c686ac48000000
_jmp_addr_0x0048248c:    xor.s              ebp, ebp                                             // 0x0048248c    33ed
_jmp_addr_0x0048248e:    cmp                dword ptr [esi + 0x000047bc], ebp                    // 0x0048248e    39aebc470000
                         mov.s              ecx, esi                                             // 0x00482494    8bce
                         {disp8} je         _jmp_addr_0x004824aa                                 // 0x00482496    7412
                         call               _jmp_addr_0x004ec590                                 // 0x00482498    e8f3a00600
                         pop                edi                                                  // 0x0048249d    5f
                         pop                esi                                                  // 0x0048249e    5e
                         pop                ebp                                                  // 0x0048249f    5d
                         pop                ebx                                                  // 0x004824a0    5b
                         add                esp, 0x000000a8                                      // 0x004824a1    81c4a8000000
                         ret                0x0004                                               // 0x004824a7    c20400
_jmp_addr_0x004824aa:    call               _jmp_addr_0x004818d0                                 // 0x004824aa    e821f4ffff
                         mov.s              ecx, esi                                             // 0x004824af    8bce
                         call               _jmp_addr_0x00480d40                                 // 0x004824b1    e88ae8ffff
                         {disp32} mov       eax, dword ptr [esi + 0x00005738]                    // 0x004824b6    8b8638570000
                         cmp.s              eax, ebp                                             // 0x004824bc    3bc5
                         {disp8} je         _jmp_addr_0x0048251e                                 // 0x004824be    745e
                         push               0x0                                                  // 0x004824c0    6a00
                         push               eax                                                  // 0x004824c2    50
                         mov.s              ecx, esi                                             // 0x004824c3    8bce
                         call               @GetAnim__9MorphableFll@16                           // 0x004824c5    e886711900
                         {disp32} mov       edx, dword ptr [esi + 0x00005730]                    // 0x004824ca    8b9630570000
                         test               edx, edx                                             // 0x004824d0    85d2
                         mov.s              ecx, eax                                             // 0x004824d2    8bc8
                         {disp32} mov       eax, dword ptr [esi + 0x000048bc]                    // 0x004824d4    8b86bc480000
                         {disp8} je         _jmp_addr_0x004824e1                                 // 0x004824da    7405
                         cdq                                                                     // 0x004824dc    99
                         sub.s              eax, edx                                             // 0x004824dd    2bc2
                         sar                eax, 1                                               // 0x004824df    d1f8
_jmp_addr_0x004824e1:    {disp32} mov       edx, dword ptr [esi + 0x00005734]                    // 0x004824e1    8b9634570000
                         mov                ecx, dword ptr [ecx]                                 // 0x004824e7    8b09
                         lea                edi, dword ptr [eax + edx * 0x1]                     // 0x004824e9    8d3c10
                         cmp.s              edi, ecx                                             // 0x004824ec    3bf9
                         {disp8} jl         _jmp_addr_0x004824f8                                 // 0x004824ee    7c08
                         sub.s              ecx, edx                                             // 0x004824f0    2bca
                         mov                bl, 0x01                                             // 0x004824f2    b301
                         mov.s              eax, ecx                                             // 0x004824f4    8bc1
                         {disp8} jmp        _jmp_addr_0x004824fa                                 // 0x004824f6    eb02
_jmp_addr_0x004824f8:    xor.s              bl, bl                                               // 0x004824f8    32db
_jmp_addr_0x004824fa:    {disp32} mov       ecx, dword ptr [esi + 0x00005738]                    // 0x004824fa    8b8e38570000
                         push               eax                                                  // 0x00482500    50
                         push               edx                                                  // 0x00482501    52
                         push               ecx                                                  // 0x00482502    51
                         mov.s              ecx, esi                                             // 0x00482503    8bce
                         call               _jmp_addr_0x00617a10                                 // 0x00482505    e806551900
                         test               bl, bl                                               // 0x0048250a    84db
                         {disp32} mov       dword ptr [esi + 0x00005734], eax                    // 0x0048250c    898634570000
                         {disp8} je         _jmp_addr_0x0048251e                                 // 0x00482512    740a
                         {disp32} mov       dword ptr [esi + 0x00005738], 0x00000000             // 0x00482514    c7863857000000000000
_jmp_addr_0x0048251e:    {disp32} lea       eax, dword ptr [esi + 0x000047e0]                    // 0x0048251e    8d86e0470000
                         mov                ecx, 0x00000004                                      // 0x00482524    b904000000
                         xor.s              ebx, ebx                                             // 0x00482529    33db
_jmp_addr_0x0048252b:    {disp8} mov        dword ptr [eax + -0x20], ebx                         // 0x0048252b    8958e0
                         mov                dword ptr [eax], ebx                                 // 0x0048252e    8918
                         add                eax, 0x04                                            // 0x00482530    83c004
                         dec                ecx                                                  // 0x00482533    49
                         {disp8} jne        _jmp_addr_0x0048252b                                 // 0x00482534    75f5
                         {disp32} mov       ecx, dword ptr [esi + 0x000048cc]                    // 0x00482536    8b8ecc480000
                         cmp.s              ecx, ebx                                             // 0x0048253c    3bcb
                         {disp8} je         _jmp_addr_0x0048254f                                 // 0x0048253e    740f
                         mov                edx, dword ptr [ecx]                                 // 0x00482540    8b11
                         call               dword ptr [edx + 0x2c]                               // 0x00482542    ff522c
                         test               eax, eax                                             // 0x00482545    85c0
                         {disp8} jne        _jmp_addr_0x0048254f                                 // 0x00482547    7506
                         {disp32} mov       dword ptr [esi + 0x000048cc], ebx                    // 0x00482549    899ecc480000
_jmp_addr_0x0048254f:    {disp32} mov       ecx, dword ptr [esi + 0x000048d0]                    // 0x0048254f    8b8ed0480000
                         cmp.s              ecx, ebx                                             // 0x00482555    3bcb
                         {disp8} je         _jmp_addr_0x00482568                                 // 0x00482557    740f
                         mov                eax, dword ptr [ecx]                                 // 0x00482559    8b01
                         call               dword ptr [eax + 0x2c]                               // 0x0048255b    ff502c
                         test               eax, eax                                             // 0x0048255e    85c0
                         {disp8} jne        _jmp_addr_0x00482568                                 // 0x00482560    7506
                         {disp32} mov       dword ptr [esi + 0x000048d0], ebx                    // 0x00482562    899ed0480000
_jmp_addr_0x00482568:    mov.s              ecx, esi                                             // 0x00482568    8bce
                         call               _jmp_addr_0x004851a0                                 // 0x0048256a    e8312c0000
                         mov.s              ecx, esi                                             // 0x0048256f    8bce
                         call               _jmp_addr_0x00486a00                                 // 0x00482571    e88a440000
                         mov.s              ecx, esi                                             // 0x00482576    8bce
                         call               _jmp_addr_0x00482d90                                 // 0x00482578    e813080000
                         mov.s              ecx, esi                                             // 0x0048257d    8bce
                         call               _jmp_addr_0x004ec590                                 // 0x0048257f    e80ca00600
                         {disp32} fld       dword ptr [esi + 0x00000090]                         // 0x00482584    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26138]                    // 0x0048258a    d80d38f18c00
                         {disp32} mov       eax, dword ptr [esi + 0x00005044]                    // 0x00482590    8b8644500000
                         cmp.s              eax, ebx                                             // 0x00482596    3bc3
                         fld                st(0)                                                // 0x00482598    d9c0
                         fmul               st, st(1)                                            // 0x0048259a    d8c9
                         {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x0048259c    d95c244c
                         fstp               st(0)                                                // 0x004825a0    ddd8
                         {disp32} je        _jmp_addr_0x00482b53                                 // 0x004825a2    0f84ab050000
                         {disp32} lea       ebx, dword ptr [esi + 0x00004f54]                    // 0x004825a8    8d9e544f0000
                         {disp8} mov        dword ptr [esp + 0x3c], ebx                          // 0x004825ae    895c243c
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000008                   // 0x004825b2    c744243808000000
_jmp_addr_0x004825ba:    {disp8} mov        eax, dword ptr [ebx + 0x10]                          // 0x004825ba    8b4310
                         {disp32} mov       edx, dword ptr [esi + 0x00005178]                    // 0x004825bd    8b9678510000
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x004825c3    8d0c40
                         shl                ecx, 4                                               // 0x004825c6    c1e104
                         {disp8} lea        eax, dword ptr [ecx + edx * 0x1 + 0x24]              // 0x004825c9    8d441124
                         mov                ecx, dword ptr [eax]                                 // 0x004825cd    8b08
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                          // 0x004825cf    894c241c
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x004825d3    d944241c
                         fsub               dword ptr [ebx]                                      // 0x004825d7    d823
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x004825d9    8b5004
                         {disp8} mov        dword ptr [esp + 0x20], edx                          // 0x004825dc    89542420
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004825e0    8b4008
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x004825e3    d95c2410
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x004825e7    d9442420
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x004825eb    89442424
                         {disp8} fsub       dword ptr [ebx + 0x04]                               // 0x004825ef    d86304
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x004825f2    d95c2414
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x004825f6    d9442424
                         {disp8} fsub       dword ptr [ebx + 0x08]                               // 0x004825fa    d86308
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x004825fd    d95c2418
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00482601    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00482605    d84c2410
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482609    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0048260d    d84c2418
                         faddp              st(1), st                                            // 0x00482611    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00482613    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x00482617    d84c2414
                         faddp              st(1), st                                            // 0x0048261b    dec1
                         {disp8} fcomp      dword ptr [esp + 0x4c]                               // 0x0048261d    d85c244c
                         fnstsw             ax                                                   // 0x00482621    dfe0
                         test               ah, 0x41                                             // 0x00482623    f6c441
                         {disp32} jne       _jmp_addr_0x00482b3b                                 // 0x00482626    0f850f050000
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x0048262c    8b54241c
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00482630    d944241c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                          // 0x00482634    8b442420
                         {disp32} fmul      dword ptr [__real@3dcccccd]                          // 0x00482638    d80d2cb28a00
                         mov.s              ecx, ebx                                             // 0x0048263e    8bcb
                         mov                dword ptr [ecx], edx                                 // 0x00482640    8911
                         {disp8} mov        edx, dword ptr [esp + 0x24]                          // 0x00482642    8b542424
                         {disp8} mov        dword ptr [ecx + 0x04], eax                          // 0x00482646    894104
                         {disp8} mov        dword ptr [ecx + 0x08], edx                          // 0x00482649    895108
                         call               _jmp_addr_0x007a1400                                 // 0x0048264c    e8afed3100
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x00482651    d9442424
                         {disp32} fmul      dword ptr [__real@3dcccccd]                          // 0x00482655    d80d2cb28a00
                         mov.s              edi, eax                                             // 0x0048265b    8bf8
                         call               _jmp_addr_0x007a1400                                 // 0x0048265d    e89eed3100
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x00482662    8b0d5c19d000
                         cmp                edi, dword ptr [ecx + 0x000059c8]                    // 0x00482668    3bb9c8590000
                         {disp8} jae        _jmp_addr_0x0048267a                                 // 0x0048266e    730a
                         {disp32} mov       edx, dword ptr [ecx + 0x000059c4]                    // 0x00482670    8b91c4590000
                         cmp.s              eax, edx                                             // 0x00482676    3bc2
                         .byte              0x72, 0x4// {disp8} jb _jmp_addr_0x0048267e          // 0x00482678    7204
_jmp_addr_0x0048267a:    xor.s              eax, eax                                             // 0x0048267a    33c0
                         {disp8} jmp        _jmp_addr_0x0048268a                                 // 0x0048267c    eb0c
_jmp_addr_0x0048267e:    imul               edi, edx                                             // 0x0048267e    0faffa
                         add.s              edi, eax                                             // 0x00482681    03f8
                         {disp32} lea       eax, dword ptr [ecx + edi * 0x8 + 0x000059fc]        // 0x00482683    8d84f9fc590000
_jmp_addr_0x0048268a:    {disp8} mov        edi, dword ptr [eax + 0x04]                          // 0x0048268a    8b7804
                         test               edi, edi                                             // 0x0048268d    85ff
                         mov                ecx, 0x00000001                                      // 0x0048268f    b901000000
                         {disp8} jne        _jmp_addr_0x0048269a                                 // 0x00482694    7504
                         mov                edi, dword ptr [eax]                                 // 0x00482696    8b38
                         xor.s              ecx, ecx                                             // 0x00482698    33c9
_jmp_addr_0x0048269a:    test               edi, edi                                             // 0x0048269a    85ff
                         {disp8} mov        dword ptr [esp + 0x44], ecx                          // 0x0048269c    894c2444
                         {disp8} mov        dword ptr [esp + 0x48], eax                          // 0x004826a0    89442448
                         {disp32} je        _jmp_addr_0x00482b3b                                 // 0x004826a4    0f8491040000
_jmp_addr_0x004826aa:    push               edi                                                  // 0x004826aa    57
                         mov.s              ecx, esi                                             // 0x004826ab    8bce
                         call               _jmp_addr_0x00481b10                                 // 0x004826ad    e85ef4ffff
                         test               eax, eax                                             // 0x004826b2    85c0
                         {disp32} je        _jmp_addr_0x00482b07                                 // 0x004826b4    0f844d040000
                         {disp8} lea        ebp, dword ptr [edi + 0x14]                          // 0x004826ba    8d6f14
                         mov.s              ecx, ebp                                             // 0x004826bd    8bcd
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x004826bf    e8cc093800
                         fstp               st(0)                                                // 0x004826c4    ddd8
                         {disp8} fild       dword ptr [ebp + 0x00]                               // 0x004826c6    db4500
                         mov                eax, dword ptr [edi]                                 // 0x004826c9    8b07
                         push               0x0                                                  // 0x004826cb    6a00
                         mov.s              ecx, edi                                             // 0x004826cd    8bcf
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x004826cf    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x004826d5    d95c2430
                         {disp8} fild       dword ptr [ebp + 0x04]                               // 0x004826d9    db4504
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x004826dc    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x004826e2    d95c2438
                         call               dword ptr [eax + 0x2c8]                              // 0x004826e6    ff90c8020000
                         test               eax, eax                                             // 0x004826ec    85c0
                         {disp32} jne       _jmp_addr_0x00482a36                                 // 0x004826ee    0f8542030000
                         mov                edx, dword ptr [edi]                                 // 0x004826f4    8b17
                         mov.s              ecx, edi                                             // 0x004826f6    8bcf
                         call               dword ptr [edx + 0x454]                              // 0x004826f8    ff9254040000
                         test               eax, eax                                             // 0x004826fe    85c0
                         {disp32} jne       _jmp_addr_0x00482a36                                 // 0x00482700    0f8530030000
                         mov                eax, dword ptr [edi]                                 // 0x00482706    8b07
                         mov.s              ecx, edi                                             // 0x00482708    8bcf
                         call               dword ptr [eax + 0x208]                              // 0x0048270a    ff9008020000
                         test               eax, eax                                             // 0x00482710    85c0
                         {disp32} je        _jmp_addr_0x0048292a                                 // 0x00482712    0f8412020000
                         {disp8} mov        ecx, dword ptr [ebx + 0x0c]                          // 0x00482718    8b4b0c
                         mov                edx, dword ptr [edi]                                 // 0x0048271b    8b17
                         {disp8} mov        dword ptr [esp + 0x28], ecx                          // 0x0048271d    894c2428
                         mov.s              ecx, edi                                             // 0x00482721    8bcf
                         call               dword ptr [edx + 0x64]                               // 0x00482723    ff5264
                         {disp8} fadd       dword ptr [esp + 0x28]                               // 0x00482726    d8442428
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0048272a    d944242c
                         fsub               dword ptr [ebx]                                      // 0x0048272e    d823
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x00482730    d9442434
                         {disp8} fsub       dword ptr [ebx + 0x08]                               // 0x00482734    d86308
                         fld                st(1)                                                // 0x00482737    d9c1
                         fmul               st, st(2)                                            // 0x00482739    d8ca
                         fld                st(1)                                                // 0x0048273b    d9c1
                         fmul               st, st(2)                                            // 0x0048273d    d8ca
                         faddp              st(1), st                                            // 0x0048273f    dec1
                         fld                st(3)                                                // 0x00482741    d9c3
                         fmul               st, st(4)                                            // 0x00482743    d8cc
                         fcompp                                                                  // 0x00482745    ded9
                         fstp               st(0)                                                // 0x00482747    ddd8
                         fnstsw             ax                                                   // 0x00482749    dfe0
                         fstp               st(0)                                                // 0x0048274b    ddd8
                         test               ah, 0x41                                             // 0x0048274d    f6c441
                         fstp               st(0)                                                // 0x00482750    ddd8
                         {disp32} jne       _jmp_addr_0x00482b07                                 // 0x00482752    0f85af030000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                          // 0x00482758    8b442428
                         push               edi                                                  // 0x0048275c    57
                         push               eax                                                  // 0x0048275d    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x0048275e    8d4c2424
                         push               ecx                                                  // 0x00482762    51
                         call               _jmp_addr_0x00481c60                                 // 0x00482763    e8f8f4ffff
                         add                esp, 0x0c                                            // 0x00482768    83c40c
                         test               eax, eax                                             // 0x0048276b    85c0
                         {disp32} je        _jmp_addr_0x00482b07                                 // 0x0048276d    0f8494030000
                         push               0x0                                                  // 0x00482773    6a00
                         push               0x009c7fa0                                           // 0x00482775    68a07f9c00
                         push               0x009c7f50                                           // 0x0048277a    68507f9c00
                         push               0x0                                                  // 0x0048277f    6a00
                         push               edi                                                  // 0x00482781    57
                         call               ___RTDynamicCast                                     // 0x00482782    e892323400
                         mov.s              ebp, eax                                             // 0x00482787    8be8
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00482789    8b8634480000
                         add                esp, 0x14                                            // 0x0048278f    83c414
                         test               eax, eax                                             // 0x00482792    85c0
                         {disp32} je        _jmp_addr_0x00482b07                                 // 0x00482794    0f846d030000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                          // 0x0048279a    8b5500
                         push               eax                                                  // 0x0048279d    50
                         mov.s              ecx, ebp                                             // 0x0048279e    8bcd
                         call               dword ptr [edx + 0x38c]                              // 0x004827a0    ff928c030000
                         test               eax, eax                                             // 0x004827a6    85c0
                         {disp32} je        _jmp_addr_0x00482b07                                 // 0x004827a8    0f8459030000
                         {disp32} mov       eax, dword ptr [ebp + 0x00000090]                    // 0x004827ae    8b8590000000
                         test               eax, eax                                             // 0x004827b4    85c0
                         {disp8} jne        _jmp_addr_0x004827e5                                 // 0x004827b6    752d
                         push               0x00000865                                           // 0x004827b8    6865080000
                         push               0x009d1094                                           // 0x004827bd    6894109d00
                         push               0x28                                                 // 0x004827c2    6a28
                         call               ___nw__FUl                                           // 0x004827c4    e8c78f3500
                         add                esp, 0x0c                                            // 0x004827c9    83c40c
                         test               eax, eax                                             // 0x004827cc    85c0
                         {disp8} je         _jmp_addr_0x004827dd                                 // 0x004827ce    740d
                         {disp8} mov        ecx, dword ptr [ebp + 0x40]                          // 0x004827d0    8b4d40
                         push               ecx                                                  // 0x004827d3    51
                         mov.s              ecx, eax                                             // 0x004827d4    8bc8
                         call               _jmp_addr_0x007f6f00                                 // 0x004827d6    e825473700
                         {disp8} jmp        _jmp_addr_0x004827df                                 // 0x004827db    eb02
_jmp_addr_0x004827dd:    xor.s              eax, eax                                             // 0x004827dd    33c0
_jmp_addr_0x004827df:    {disp32} mov       dword ptr [ebp + 0x00000090], eax                    // 0x004827df    898590000000
_jmp_addr_0x004827e5:    {disp8} fld        dword ptr [esp + 0x10]                               // 0x004827e5    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004827e9    d81d98a38a00
                         fnstsw             ax                                                   // 0x004827ef    dfe0
                         test               ah, 0x40                                             // 0x004827f1    f6c440
                         {disp8} je         _jmp_addr_0x00482820                                 // 0x004827f4    742a
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x004827f6    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004827fa    d81d98a38a00
                         fnstsw             ax                                                   // 0x00482800    dfe0
                         test               ah, 0x40                                             // 0x00482802    f6c440
                         {disp8} je         _jmp_addr_0x00482820                                 // 0x00482805    7419
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482807    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0048280b    d81d98a38a00
                         fnstsw             ax                                                   // 0x00482811    dfe0
                         test               ah, 0x40                                             // 0x00482813    f6c440
                         {disp8} je         _jmp_addr_0x00482820                                 // 0x00482816    7408
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x00482818    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x00482866                                 // 0x0048281e    eb46
_jmp_addr_0x00482820:    {disp8} fld        dword ptr [esp + 0x10]                               // 0x00482820    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00482824    d84c2410
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482828    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x0048282c    d84c2418
                         faddp              st(1), st                                            // 0x00482830    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00482832    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x00482836    d84c2414
                         faddp              st(1), st                                            // 0x0048283a    dec1
                         fsqrt                                                                   // 0x0048283c    d9fa
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x0048283e    d90590a38a00
                         fdiv               st, st(1)                                            // 0x00482844    d8f1
                         fld                st(0)                                                // 0x00482846    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00482848    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0048284c    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00482850    d9442414
                         fmul               st, st(1)                                            // 0x00482854    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00482856    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x0048285a    d9442418
                         fmul               st, st(1)                                            // 0x0048285e    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00482860    d95c2418
                         fstp               st(0)                                                // 0x00482864    ddd8
_jmp_addr_0x00482866:    {disp32} fmul      dword ptr [rdata_bytes + 0x2414]                     // 0x00482866    d80d14b48a00
                         {disp8} mov        edx, dword ptr [ebx + 0x0c]                          // 0x0048286c    8b530c
                         push               ebp                                                  // 0x0048286f    55
                         push               edx                                                  // 0x00482870    52
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ea44]                    // 0x00482871    d80d447a8c00
                         {disp8} lea        eax, dword ptr [esp + 0x64]                          // 0x00482877    8d442464
                         push               eax                                                  // 0x0048287b    50
                         fld                st(0)                                                // 0x0048287c    d9c0
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                          // 0x0048287e    8d4c2428
                         {disp8} fmul       dword ptr [esp + 0x1c]                               // 0x00482882    d84c241c
                         push               ecx                                                  // 0x00482886    51
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000090]                    // 0x00482887    8b8d90000000
                         {disp8} fstp       dword ptr [esp + 0x6c]                               // 0x0048288d    d95c246c
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x00482891    d9442424
                         fmul               st, st(1)                                            // 0x00482895    d8c9
                         {disp8} fstp       dword ptr [esp + 0x70]                               // 0x00482897    d95c2470
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x0048289b    d9442428
                         fmul               st, st(1)                                            // 0x0048289f    d8c9
                         {disp8} fstp       dword ptr [esp + 0x74]                               // 0x004828a1    d95c2474
                         fstp               st(0)                                                // 0x004828a5    ddd8
                         call               _jmp_addr_0x007f7d40                                 // 0x004828a7    e894543700
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000090]                    // 0x004828ac    8b8d90000000
                         call               _jmp_addr_0x007f7230                                 // 0x004828b2    e879493700
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x004828b7    d81d90a38a00
                         fnstsw             ax                                                   // 0x004828bd    dfe0
                         test               ah, 0x40                                             // 0x004828bf    f6c440
                         {disp8} je         _jmp_addr_0x004828f1                                 // 0x004828c2    742d
                         {disp32} mov       ebx, dword ptr [ebp + 0x00000090]                    // 0x004828c4    8b9d90000000
                         test               ebx, ebx                                             // 0x004828ca    85db
                         {disp8} je         _jmp_addr_0x004828de                                 // 0x004828cc    7410
                         mov.s              ecx, ebx                                             // 0x004828ce    8bcb
                         call               ??1FragMesh@@QAE@XZ                                  // 0x004828d0    e80b483700
                         push               ebx                                                  // 0x004828d5    53
                         call               ??3@YAXPAX@Z                                         // 0x004828d6    e8bdc53200
                         add                esp, 0x04                                            // 0x004828db    83c404
_jmp_addr_0x004828de:    {disp8} mov        ebx, dword ptr [esp + 0x3c]                          // 0x004828de    8b5c243c
                         {disp32} mov       dword ptr [ebp + 0x00000090], 0x00000000             // 0x004828e2    c7859000000000000000
                         {disp32} jmp       _jmp_addr_0x00482b07                                 // 0x004828ec    e916020000
_jmp_addr_0x004828f1:    {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x004828f1    8b8e34480000
                         test               ecx, ecx                                             // 0x004828f7    85c9
                         {disp8} je         _jmp_addr_0x00482914                                 // 0x004828f9    7419
                         mov                edx, dword ptr [ecx]                                 // 0x004828fb    8b11
                         call               dword ptr [edx + 0x1c]                               // 0x004828fd    ff521c
                         push               eax                                                  // 0x00482900    50
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00482901    8b8634480000
                         push               eax                                                  // 0x00482907    50
                         mov.s              ecx, ebp                                             // 0x00482908    8bcd
                         call               ?ApplyEffectsDueToPhysicalDestruction@Abode@@QAEXPAVObject@@PAVGPlayer@@@Z                                 // 0x0048290a    e8313df8ff
                         {disp32} jmp       _jmp_addr_0x00482b07                                 // 0x0048290f    e9f3010000
_jmp_addr_0x00482914:    xor.s              eax, eax                                             // 0x00482914    33c0
                         push               eax                                                  // 0x00482916    50
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00482917    8b8634480000
                         push               eax                                                  // 0x0048291d    50
                         mov.s              ecx, ebp                                             // 0x0048291e    8bcd
                         call               ?ApplyEffectsDueToPhysicalDestruction@Abode@@QAEXPAVObject@@PAVGPlayer@@@Z                                 // 0x00482920    e81b3df8ff
                         {disp32} jmp       _jmp_addr_0x00482b07                                 // 0x00482925    e9dd010000
_jmp_addr_0x0048292a:    mov                edx, dword ptr [edi]                                 // 0x0048292a    8b17
                         mov.s              ecx, edi                                             // 0x0048292c    8bcf
                         call               dword ptr [edx + 0x7b0]                              // 0x0048292e    ff92b0070000
                         test               eax, eax                                             // 0x00482934    85c0
                         {disp32} je        _jmp_addr_0x00482b07                                 // 0x00482936    0f84cb010000
                         test               byte ptr [edi + 0x25], 0x10                          // 0x0048293c    f6472510
                         {disp32} jne       _jmp_addr_0x00482b07                                 // 0x00482940    0f85c1010000
                         {disp8} mov        eax, dword ptr [ebx + 0x0c]                          // 0x00482946    8b430c
                         mov                edx, dword ptr [edi]                                 // 0x00482949    8b17
                         mov.s              ecx, edi                                             // 0x0048294b    8bcf
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x0048294d    89442428
                         call               dword ptr [edx + 0x64]                               // 0x00482951    ff5264
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x00482954    d9442428
                         {disp32} fmul      dword ptr [__real@3e999999]                          // 0x00482958    d80d3cb28a00
                         faddp              st(1), st                                            // 0x0048295e    dec1
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x00482960    d944242c
                         fsub               dword ptr [ebx]                                      // 0x00482964    d823
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x00482966    d9442434
                         {disp8} fsub       dword ptr [ebx + 0x08]                               // 0x0048296a    d86308
                         fld                st(0)                                                // 0x0048296d    d9c0
                         fmul               st, st(1)                                            // 0x0048296f    d8c9
                         fld                st(2)                                                // 0x00482971    d9c2
                         fmul               st, st(3)                                            // 0x00482973    d8cb
                         faddp              st(1), st                                            // 0x00482975    dec1
                         fld                st(3)                                                // 0x00482977    d9c3
                         fmul               st, st(4)                                            // 0x00482979    d8cc
                         fcompp                                                                  // 0x0048297b    ded9
                         fstp               st(0)                                                // 0x0048297d    ddd8
                         fnstsw             ax                                                   // 0x0048297f    dfe0
                         fstp               st(0)                                                // 0x00482981    ddd8
                         test               ah, 0x41                                             // 0x00482983    f6c441
                         fstp               st(0)                                                // 0x00482986    ddd8
                         {disp32} jne       _jmp_addr_0x00482b07                                 // 0x00482988    0f8579010000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                          // 0x0048298e    8b442428
                         push               edi                                                  // 0x00482992    57
                         push               eax                                                  // 0x00482993    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x00482994    8d4c2424
                         push               ecx                                                  // 0x00482998    51
                         call               _jmp_addr_0x00481c60                                 // 0x00482999    e8c2f2ffff
                         add                esp, 0x0c                                            // 0x0048299e    83c40c
                         test               eax, eax                                             // 0x004829a1    85c0
                         {disp32} je        _jmp_addr_0x00482b07                                 // 0x004829a3    0f845e010000
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x004829a9    d9442410
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x004829ad    8b8e34480000
                         test               ecx, ecx                                             // 0x004829b3    85c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26140]                    // 0x004829b5    d80d40f18c00
                         {disp8} mov        dword ptr [esp + 0x68], 0x00000000                   // 0x004829bb    c744246800000000
                         {disp8} mov        dword ptr [esp + 0x6c], 0x00000000                   // 0x004829c3    c744246c00000000
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x004829cb    d95c2410
                         {disp8} mov        dword ptr [esp + 0x70], 0x00000000                   // 0x004829cf    c744247000000000
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x004829d7    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26140]                    // 0x004829db    d80d40f18c00
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x004829e1    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x004829e5    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26140]                    // 0x004829e9    d80d40f18c00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x004829ef    d95c2418
                         {disp8} je         _jmp_addr_0x00482a12                                 // 0x004829f3    741d
                         mov                edx, dword ptr [ecx]                                 // 0x004829f5    8b11
                         call               dword ptr [edx + 0x1c]                               // 0x004829f7    ff521c
                         test               eax, eax                                             // 0x004829fa    85c0
                         {disp8} je         _jmp_addr_0x00482a12                                 // 0x004829fc    7414
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x004829fe    8b8e34480000
                         mov                eax, dword ptr [ecx]                                 // 0x00482a04    8b01
                         call               dword ptr [eax + 0x1c]                               // 0x00482a06    ff501c
                         mov.s              ecx, eax                                             // 0x00482a09    8bc8
                         call               _jmp_addr_0x0064a9f0                                 // 0x00482a0b    e8e07f1c00
                         {disp8} jmp        _jmp_addr_0x00482a14                                 // 0x00482a10    eb02
_jmp_addr_0x00482a12:    xor.s              eax, eax                                             // 0x00482a12    33c0
_jmp_addr_0x00482a14:    mov                edx, dword ptr [edi]                                 // 0x00482a14    8b17
                         push               eax                                                  // 0x00482a16    50
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00482a17    8b8634480000
                         push               0x1                                                  // 0x00482a1d    6a01
                         push               eax                                                  // 0x00482a1f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x74]                          // 0x00482a20    8d4c2474
                         push               ecx                                                  // 0x00482a24    51
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x00482a25    8d442420
                         push               eax                                                  // 0x00482a29    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000c4]                    // 0x00482a2a    8d8c24c4000000
                         {disp32} jmp       _jmp_addr_0x00482afe                                 // 0x00482a31    e9c8000000
_jmp_addr_0x00482a36:    mov                edx, dword ptr [edi]                                 // 0x00482a36    8b17
                         mov.s              ecx, edi                                             // 0x00482a38    8bcf
                         call               dword ptr [edx + 0x64]                               // 0x00482a3a    ff5264
                         {disp8} fld        dword ptr [ebx + 0x0c]                               // 0x00482a3d    d9430c
                         {disp32} fmul      dword ptr [__real@3e999999]                          // 0x00482a40    d80d3cb28a00
                         faddp              st(1), st                                            // 0x00482a46    dec1
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x00482a48    d944242c
                         fsub               dword ptr [ebx]                                      // 0x00482a4c    d823
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x00482a4e    d9442434
                         {disp8} fsub       dword ptr [ebx + 0x08]                               // 0x00482a52    d86308
                         fld                st(0)                                                // 0x00482a55    d9c0
                         fmul               st, st(1)                                            // 0x00482a57    d8c9
                         fld                st(2)                                                // 0x00482a59    d9c2
                         fmul               st, st(3)                                            // 0x00482a5b    d8cb
                         faddp              st(1), st                                            // 0x00482a5d    dec1
                         fld                st(3)                                                // 0x00482a5f    d9c3
                         fmul               st, st(4)                                            // 0x00482a61    d8cc
                         fcompp                                                                  // 0x00482a63    ded9
                         fstp               st(0)                                                // 0x00482a65    ddd8
                         fnstsw             ax                                                   // 0x00482a67    dfe0
                         fstp               st(0)                                                // 0x00482a69    ddd8
                         test               ah, 0x41                                             // 0x00482a6b    f6c441
                         fstp               st(0)                                                // 0x00482a6e    ddd8
                         {disp32} jne       _jmp_addr_0x00482b07                                 // 0x00482a70    0f8591000000
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00482a76    d9442410
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x00482a7a    8b8e34480000
                         test               ecx, ecx                                             // 0x00482a80    85c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26140]                    // 0x00482a82    d80d40f18c00
                         {disp8} mov        dword ptr [esp + 0x74], 0x00000000                   // 0x00482a88    c744247400000000
                         {disp8} mov        dword ptr [esp + 0x78], 0x00000000                   // 0x00482a90    c744247800000000
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00482a98    d95c2410
                         {disp8} mov        dword ptr [esp + 0x7c], 0x00000000                   // 0x00482a9c    c744247c00000000
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00482aa4    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26140]                    // 0x00482aa8    d80d40f18c00
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00482aae    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482ab2    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26140]                    // 0x00482ab6    d80d40f18c00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00482abc    d95c2418
                         {disp8} je         _jmp_addr_0x00482adf                                 // 0x00482ac0    741d
                         mov                eax, dword ptr [ecx]                                 // 0x00482ac2    8b01
                         call               dword ptr [eax + 0x1c]                               // 0x00482ac4    ff501c
                         test               eax, eax                                             // 0x00482ac7    85c0
                         {disp8} je         _jmp_addr_0x00482adf                                 // 0x00482ac9    7414
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x00482acb    8b8e34480000
                         mov                edx, dword ptr [ecx]                                 // 0x00482ad1    8b11
                         call               dword ptr [edx + 0x1c]                               // 0x00482ad3    ff521c
                         mov.s              ecx, eax                                             // 0x00482ad6    8bc8
                         call               _jmp_addr_0x0064a9f0                                 // 0x00482ad8    e8137f1c00
                         {disp8} jmp        _jmp_addr_0x00482ae1                                 // 0x00482add    eb02
_jmp_addr_0x00482adf:    xor.s              eax, eax                                             // 0x00482adf    33c0
_jmp_addr_0x00482ae1:    mov                edx, dword ptr [edi]                                 // 0x00482ae1    8b17
                         push               eax                                                  // 0x00482ae3    50
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00482ae4    8b8634480000
                         push               0x1                                                  // 0x00482aea    6a01
                         push               eax                                                  // 0x00482aec    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000080]                    // 0x00482aed    8d8c2480000000
                         push               ecx                                                  // 0x00482af4    51
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x00482af5    8d442420
                         push               eax                                                  // 0x00482af9    50
                         {disp8} lea        ecx, dword ptr [esp + 0x64]                          // 0x00482afa    8d4c2464
_jmp_addr_0x00482afe:    push               ecx                                                  // 0x00482afe    51
                         mov.s              ecx, edi                                             // 0x00482aff    8bcf
                         call               dword ptr [edx + 0x784]                              // 0x00482b01    ff9284070000
_jmp_addr_0x00482b07:    {disp8} mov        ebp, dword ptr [esp + 0x48]                          // 0x00482b07    8b6c2448
                         mov                edx, dword ptr [edi]                                 // 0x00482b0b    8b17
                         push               ebp                                                  // 0x00482b0d    55
                         mov.s              ecx, edi                                             // 0x00482b0e    8bcf
                         call               dword ptr [edx + 0x53c]                              // 0x00482b10    ff923c050000
                         mov.s              edi, eax                                             // 0x00482b16    8bf8
                         test               edi, edi                                             // 0x00482b18    85ff
                         {disp32} jne       _jmp_addr_0x004826aa                                 // 0x00482b1a    0f858afbffff
                         {disp8} mov        eax, dword ptr [esp + 0x44]                          // 0x00482b20    8b442444
                         test               eax, eax                                             // 0x00482b24    85c0
                         {disp8} je         _jmp_addr_0x00482b3b                                 // 0x00482b26    7413
                         {disp8} mov        edi, dword ptr [ebp + 0x00]                          // 0x00482b28    8b7d00
                         test               edi, edi                                             // 0x00482b2b    85ff
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000                   // 0x00482b2d    c744244400000000
                         {disp32} jne       _jmp_addr_0x004826aa                                 // 0x00482b35    0f856ffbffff
_jmp_addr_0x00482b3b:    {disp8} mov        eax, dword ptr [esp + 0x38]                          // 0x00482b3b    8b442438
                         add                ebx, 0x14                                            // 0x00482b3f    83c314
                         dec                eax                                                  // 0x00482b42    48
                         {disp8} mov        dword ptr [esp + 0x3c], ebx                          // 0x00482b43    895c243c
                         {disp8} mov        dword ptr [esp + 0x38], eax                          // 0x00482b47    89442438
                         {disp32} jne       _jmp_addr_0x004825ba                                 // 0x00482b4b    0f8569faffff
                         xor.s              ebx, ebx                                             // 0x00482b51    33db
_jmp_addr_0x00482b53:    {disp32} mov       ecx, dword ptr [esi + 0x000048d0]                    // 0x00482b53    8b8ed0480000
                         cmp.s              ecx, ebx                                             // 0x00482b59    3bcb
                         {disp8} je         _jmp_addr_0x00482bc4                                 // 0x00482b5b    7467
                         mov                eax, dword ptr [ecx]                                 // 0x00482b5d    8b01
                         call               dword ptr [eax + 0x34]                               // 0x00482b5f    ff5034
                         test               eax, eax                                             // 0x00482b62    85c0
                         {disp8} je         _jmp_addr_0x00482bc4                                 // 0x00482b64    745e
                         {disp32} mov       ecx, dword ptr [esi + 0x000048d0]                    // 0x00482b66    8b8ed0480000
                         mov                edx, dword ptr [ecx]                                 // 0x00482b6c    8b11
                         call               dword ptr [edx + 0xa4]                               // 0x00482b6e    ff92a4000000
                         mov.s              edi, eax                                             // 0x00482b74    8bf8
                         cmp                dword ptr [esi + 0x00005230], ebx                    // 0x00482b76    399e30520000
                         {disp32} mov       eax, dword ptr [esi + 0x000051c8]                    // 0x00482b7c    8b86c8510000
                         {disp8} je         _jmp_addr_0x00482b8c                                 // 0x00482b82    7408
                         push               eax                                                  // 0x00482b84    50
                         mov.s              ecx, esi                                             // 0x00482b85    8bce
                         call               _jmp_addr_0x00481390                                 // 0x00482b87    e804e8ffff
_jmp_addr_0x00482b8c:    push               eax                                                  // 0x00482b8c    50
                         mov.s              ecx, edi                                             // 0x00482b8d    8bcf
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x00482b8f    e8bc4cffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]                    // 0x00482b94    8b8e98000000
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x4 + 0x000000b4]        // 0x00482b9a    8b948eb4000000
                         add                eax, 0x78                                            // 0x00482ba1    83c078
                         push               eax                                                  // 0x00482ba4    50
                         push               edx                                                  // 0x00482ba5    52
                         mov.s              ecx, esi                                             // 0x00482ba6    8bce
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ                // 0x00482ba8    e803170000
                         push               eax                                                  // 0x00482bad    50
                         call               _jmp_addr_0x0083a0e0                                 // 0x00482bae    e82d753b00
                         add                esp, 0x10                                            // 0x00482bb3    83c410
                         mov.s              ecx, edi                                             // 0x00482bb6    8bcf
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x00482bb8    e8934cffff
                         mov.s              ecx, eax                                             // 0x00482bbd    8bc8
                         call               _jmp_addr_0x004ec590                                 // 0x00482bbf    e8cc990600
_jmp_addr_0x00482bc4:    cmp                dword ptr [esi + 0x000057ac], ebx                    // 0x00482bc4    399eac570000
                         {disp8} je         _jmp_addr_0x00482bfa                                 // 0x00482bca    742e
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00482bcc    8b8634480000
                         push               eax                                                  // 0x00482bd2    50
                         call               _jmp_addr_0x00646950                                 // 0x00482bd3    e8783d1c00
                         add                esp, 0x04                                            // 0x00482bd8    83c404
                         cmp.s              eax, ebx                                             // 0x00482bdb    3bc3
                         {disp8} je         _jmp_addr_0x00482bfa                                 // 0x00482bdd    741b
                         {disp32} lea       ecx, dword ptr [eax + 0x00000178]                    // 0x00482bdf    8d8878010000
                         push               ecx                                                  // 0x00482be5    51
                         add                eax, 0x000000c8                                      // 0x00482be6    05c8000000
                         push               eax                                                  // 0x00482beb    50
                         mov.s              ecx, esi                                             // 0x00482bec    8bce
                         call               _jmp_addr_0x0047f8d0                                 // 0x00482bee    e8ddccffff
                         mov.s              ecx, esi                                             // 0x00482bf3    8bce
                         call               _jmp_addr_0x00483160                                 // 0x00482bf5    e866050000
_jmp_addr_0x00482bfa:    {disp32} fld       dword ptr [esi + 0x00005228]                         // 0x00482bfa    d98628520000
                         {disp32} mov       eax, dword ptr [esi + 0x000057b4]                    // 0x00482c00    8b86b4570000
                         cmp.s              eax, ebx                                             // 0x00482c06    3bc3
                         {disp32} fld       dword ptr [data_bytes + 0xa6f0]                      // 0x00482c08    d905f0069d00
                         {disp32} fmul      dword ptr [esi + 0x00000090]                         // 0x00482c0e    d88e90000000
                         {disp32} mov       edx, dword ptr [esi + 0x0000482c]                    // 0x00482c14    8b962c480000
                         push               ecx                                                  // 0x00482c1a    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]                    // 0x00482c1b    d80d402c8c00
                         fstp               dword ptr [esp]                                      // 0x00482c21    d91c24
                         push               ecx                                                  // 0x00482c24    51
                         {disp32} fmul      dword ptr [data_bytes + 0xa6f0]                      // 0x00482c25    d80df0069d00
                         fstp               dword ptr [esp]                                      // 0x00482c2b    d91c24
                         {disp8} je         _jmp_addr_0x00482c5a                                 // 0x00482c2e    742a
                         sub                esp, 0x0c                                            // 0x00482c30    83ec0c
                         add                edx, 0x38                                            // 0x00482c33    83c238
                         mov.s              ecx, esp                                             // 0x00482c36    8bcc
                         push               edx                                                  // 0x00482c38    52
                         call               @__ct__7LHPointFRC7LHPoint@12                        // 0x00482c39    e882a3fcff
                         {disp32} mov       eax, dword ptr [esi + 0x000057b4]                    // 0x00482c3e    8b86b4570000
                         push               eax                                                  // 0x00482c44    50
                         call               _jmp_addr_0x00454aa0                                 // 0x00482c45    e8561efdff
                         add                esp, 0x18                                            // 0x00482c4a    83c418
                         pop                edi                                                  // 0x00482c4d    5f
                         pop                esi                                                  // 0x00482c4e    5e
                         pop                ebp                                                  // 0x00482c4f    5d
                         pop                ebx                                                  // 0x00482c50    5b
                         add                esp, 0x000000a8                                      // 0x00482c51    81c4a8000000
                         ret                0x0004                                               // 0x00482c57    c20400
_jmp_addr_0x00482c5a:    sub                esp, 0x0c                                            // 0x00482c5a    83ec0c
                         add                edx, 0x38                                            // 0x00482c5d    83c238
                         mov.s              ecx, esp                                             // 0x00482c60    8bcc
                         push               edx                                                  // 0x00482c62    52
                         call               @__ct__7LHPointFRC7LHPoint@12                        // 0x00482c63    e858a3fcff
                         push               0x3                                                  // 0x00482c68    6a03
                         call               _jmp_addr_0x00454960                                 // 0x00482c6a    e8f11cfdff
                         add                esp, 0x18                                            // 0x00482c6f    83c418
                         cmp.s              eax, ebx                                             // 0x00482c72    3bc3
                         {disp32} mov       dword ptr [esi + 0x000057b4], eax                    // 0x00482c74    8986b4570000
                         {disp8} je         _jmp_addr_0x00482c7f                                 // 0x00482c7a    7403
                         {disp8} mov        dword ptr [eax + 0x24], ebx                          // 0x00482c7c    895824
_jmp_addr_0x00482c7f:    pop                edi                                                  // 0x00482c7f    5f
                         pop                esi                                                  // 0x00482c80    5e
                         pop                ebp                                                  // 0x00482c81    5d
                         pop                ebx                                                  // 0x00482c82    5b
                         add                esp, 0x000000a8                                      // 0x00482c83    81c4a8000000
                         ret                0x0004                                               // 0x00482c89    c20400
                         nop                                                                     // 0x00482c8c    90
                         nop                                                                     // 0x00482c8d    90
                         nop                                                                     // 0x00482c8e    90
                         nop                                                                     // 0x00482c8f    90
_jmp_addr_0x00482c90:    {disp32} mov       eax, dword ptr [data_bytes + 0x30dc70]               // 0x00482c90    a1703ccd00
                         test               eax, eax                                             // 0x00482c95    85c0
                         push               esi                                                  // 0x00482c97    56
                         push               edi                                                  // 0x00482c98    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                          // 0x00482c99    8b7c240c
                         mov.s              esi, ecx                                             // 0x00482c9d    8bf1
                         {disp8} je         _jmp_addr_0x00482d06                                 // 0x00482c9f    7465
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00482ca1    8b8634480000
                         test               eax, eax                                             // 0x00482ca7    85c0
                         {disp8} je         _jmp_addr_0x00482cb1                                 // 0x00482ca9    7406
                         test               byte ptr [eax + 0x24], 0x10                          // 0x00482cab    f6402410
                         {disp8} jne        _jmp_addr_0x00482d06                                 // 0x00482caf    7555
_jmp_addr_0x00482cb1:    {disp8} fld        dword ptr [edi + 0x08]                               // 0x00482cb1    d94708
                         {disp32} mov       eax, dword ptr [_game]                               // 0x00482cb4    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x002502d0]                    // 0x00482cb9    8b88d0022500
                         sub                esp, 0x08                                            // 0x00482cbf    83ec08
                         fstp               qword ptr [esp]                                      // 0x00482cc2    dd1c24
                         sub                esp, 0x08                                            // 0x00482cc5    83ec08
                         {disp8} fld        dword ptr [edi + 0x04]                               // 0x00482cc8    d94704
                         sub                esp, 0x08                                            // 0x00482ccb    83ec08
                         {disp8} fstp       qword ptr [esp + 0x08]                               // 0x00482cce    dd5c2408
                         fld                dword ptr [edi]                                      // 0x00482cd2    d907
                         fstp               qword ptr [esp]                                      // 0x00482cd4    dd1c24
                         push               0x009d10fc                                           // 0x00482cd7    68fc109d00
                         push               ecx                                                  // 0x00482cdc    51
                         call               _fprintf                                             // 0x00482cdd    e8ce403400
                         add                esp, 0x20                                            // 0x00482ce2    83c420
                         call               dword ptr [__imp__GetCurrentStackString__YAPADXZ@4]  // 0x00482ce5    ff1554938a00
                         {disp32} mov       edx, dword ptr [_game]                               // 0x00482ceb    8b155c19d000
                         push               eax                                                  // 0x00482cf1    50
                         {disp32} mov       eax, dword ptr [edx + 0x002502d0]                    // 0x00482cf2    8b82d0022500
                         push               0x009d10f0                                           // 0x00482cf8    68f0109d00
                         push               eax                                                  // 0x00482cfd    50
                         call               _fprintf                                             // 0x00482cfe    e8ad403400
                         add                esp, 0x0c                                            // 0x00482d03    83c40c
_jmp_addr_0x00482d06:    {disp32} mov       eax, dword ptr [data_bytes + 0x29e210]               // 0x00482d06    a11042c600
                         test               eax, eax                                             // 0x00482d0b    85c0
                         {disp8} jne        _jmp_addr_0x00482d1f                                 // 0x00482d0d    7510
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00482d0f    8b8634480000
                         test               eax, eax                                             // 0x00482d15    85c0
                         {disp8} je         _jmp_addr_0x00482d1f                                 // 0x00482d17    7406
                         test               byte ptr [eax + 0x24], 0x10                          // 0x00482d19    f6402410
                         {disp8} jne        _jmp_addr_0x00482d35                                 // 0x00482d1d    7516
_jmp_addr_0x00482d1f:    mov                ecx, dword ptr [edi]                                 // 0x00482d1f    8b0f
                         add                esi, 0x000048c0                                      // 0x00482d21    81c6c0480000
                         mov                dword ptr [esi], ecx                                 // 0x00482d27    890e
                         {disp8} mov        edx, dword ptr [edi + 0x04]                          // 0x00482d29    8b5704
                         {disp8} mov        dword ptr [esi + 0x04], edx                          // 0x00482d2c    895604
                         {disp8} mov        eax, dword ptr [edi + 0x08]                          // 0x00482d2f    8b4708
                         {disp8} mov        dword ptr [esi + 0x08], eax                          // 0x00482d32    894608
_jmp_addr_0x00482d35:    pop                edi                                                  // 0x00482d35    5f
                         pop                esi                                                  // 0x00482d36    5e
                         ret                0x0004                                               // 0x00482d37    c20400
                         call               dword ptr [rdata_bytes + 0xa8]                       // 0x00482d3a    ff15a8908a00
_jmp_addr_0x00482d40:    {disp32} fld       dword ptr [ecx + 0x000048c0]                         // 0x00482d40    d981c0480000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00482d46    d81d98a38a00
                         fnstsw             ax                                                   // 0x00482d4c    dfe0
                         test               ah, 0x40                                             // 0x00482d4e    f6c440
                         {disp8} je         _jmp_addr_0x00482d7c                                 // 0x00482d51    7429
                         {disp32} fld       dword ptr [ecx + 0x000048c4]                         // 0x00482d53    d981c4480000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00482d59    d81d98a38a00
                         fnstsw             ax                                                   // 0x00482d5f    dfe0
                         test               ah, 0x40                                             // 0x00482d61    f6c440
                         {disp8} je         _jmp_addr_0x00482d7c                                 // 0x00482d64    7416
                         {disp32} fld       dword ptr [ecx + 0x000048c8]                         // 0x00482d66    d981c8480000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00482d6c    d81d98a38a00
                         fnstsw             ax                                                   // 0x00482d72    dfe0
                         test               ah, 0x40                                             // 0x00482d74    f6c440
                         {disp8} je         _jmp_addr_0x00482d7c                                 // 0x00482d77    7403
                         xor.s              eax, eax                                             // 0x00482d79    33c0
                         ret                                                                     // 0x00482d7b    c3
_jmp_addr_0x00482d7c:    mov                eax, 0x00000001                                      // 0x00482d7c    b801000000
                         ret                                                                     // 0x00482d81    c3
                         nop                                                                     // 0x00482d82    90
                         nop                                                                     // 0x00482d83    90
                         nop                                                                     // 0x00482d84    90
                         nop                                                                     // 0x00482d85    90
                         nop                                                                     // 0x00482d86    90
                         nop                                                                     // 0x00482d87    90
                         nop                                                                     // 0x00482d88    90
                         nop                                                                     // 0x00482d89    90
                         nop                                                                     // 0x00482d8a    90
                         nop                                                                     // 0x00482d8b    90
                         nop                                                                     // 0x00482d8c    90
                         nop                                                                     // 0x00482d8d    90
                         nop                                                                     // 0x00482d8e    90
                         nop                                                                     // 0x00482d8f    90
_jmp_addr_0x00482d90:    sub                esp, 0x24                                            // 0x00482d90    83ec24
                         push               esi                                                  // 0x00482d93    56
                         mov.s              esi, ecx                                             // 0x00482d94    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00004994]                    // 0x00482d96    8b8694490000
                         cmp                eax, 0x13                                            // 0x00482d9c    83f813
                         push               edi                                                  // 0x00482d9f    57
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000                   // 0x00482da0    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00482da8    c744240c00000000
                         {disp8} je         _jmp_addr_0x00482db7                                 // 0x00482db0    7405
                         cmp                eax, 0x14                                            // 0x00482db2    83f814
                         {disp8} jne        _jmp_addr_0x00482dff                                 // 0x00482db5    7548
_jmp_addr_0x00482db7:    {disp32} mov       eax, dword ptr [esi + 0x000048cc]                    // 0x00482db7    8b86cc480000
                         test               eax, eax                                             // 0x00482dbd    85c0
                         {disp8} je         _jmp_addr_0x00482dff                                 // 0x00482dbf    743e
                         {disp8} lea        edi, dword ptr [eax + 0x14]                          // 0x00482dc1    8d7814
                         {disp8} mov        eax, dword ptr [edi + 0x08]                          // 0x00482dc4    8b4708
                         mov.s              ecx, edi                                             // 0x00482dc7    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x00482dc9    89442410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00482dcd    e8be023800
                         {disp8} fadd       dword ptr [esp + 0x10]                               // 0x00482dd2    d8442410
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                          // 0x00482dd6    8d4c2414
                         push               ecx                                                  // 0x00482dda    51
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x00482ddb    d95c241c
                         mov.s              ecx, esi                                             // 0x00482ddf    8bce
                         fild               dword ptr [edi]                                      // 0x00482de1    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00482de3    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00482de9    d95c2418
                         {disp8} fild       dword ptr [edi + 0x04]                               // 0x00482ded    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x00482df0    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00482df6    d95c2420
                         call               _jmp_addr_0x00482c90                                 // 0x00482dfa    e891feffff
_jmp_addr_0x00482dff:    mov.s              ecx, esi                                             // 0x00482dff    8bce
                         call               _jmp_addr_0x00482d40                                 // 0x00482e01    e83affffff
                         test               eax, eax                                             // 0x00482e06    85c0
                         mov                edi, 0x00000017                                      // 0x00482e08    bf17000000
                         {disp8} je         _jmp_addr_0x00482e1a                                 // 0x00482e0d    740b
                         mov.s              ecx, esi                                             // 0x00482e0f    8bce
                         call               _jmp_addr_0x00483670                                 // 0x00482e11    e85a080000
                         test               eax, eax                                             // 0x00482e16    85c0
                         {disp8} jne        _jmp_addr_0x00482e34                                 // 0x00482e18    751a
_jmp_addr_0x00482e1a:    cmp                dword ptr [esi + 0x00004994], edi                    // 0x00482e1a    39be94490000
                         {disp32} jne       _jmp_addr_0x00482fe2                                 // 0x00482e20    0f85bc010000
                         {disp32} mov       eax, dword ptr [esi + 0x0000528c]                    // 0x00482e26    8b868c520000
                         test               eax, eax                                             // 0x00482e2c    85c0
                         {disp32} je        _jmp_addr_0x00482fe2                                 // 0x00482e2e    0f84ae010000
_jmp_addr_0x00482e34:    mov.s              ecx, esi                                             // 0x00482e34    8bce
                         call               _jmp_addr_0x00483050                                 // 0x00482e36    e815020000
                         test               eax, eax                                             // 0x00482e3b    85c0
                         {disp8} je         _jmp_addr_0x00482e5e                                 // 0x00482e3d    741f
                         mov.s              ecx, esi                                             // 0x00482e3f    8bce
                         call               _jmp_addr_0x00483070                                 // 0x00482e41    e82a020000
                         {disp32} fld       dword ptr [esi + 0x00005748]                         // 0x00482e46    d98648570000
                         {disp32} mov       edx, dword ptr [esi + 0x0000574c]                    // 0x00482e4c    8b964c570000
                         {disp32} fld       dword ptr [esi + 0x00005750]                         // 0x00482e52    d98650570000
                         {disp8} mov        dword ptr [esp + 0x18], edx                          // 0x00482e58    89542418
                         {disp8} jmp        _jmp_addr_0x00482e99                                 // 0x00482e5c    eb3b
_jmp_addr_0x00482e5e:    cmp                dword ptr [esi + 0x00004994], edi                    // 0x00482e5e    39be94490000
                         {disp8} jne        _jmp_addr_0x00482e83                                 // 0x00482e64    751d
                         {disp32} mov       ecx, dword ptr [esi + 0x0000528c]                    // 0x00482e66    8b8e8c520000
                         call               _jmp_addr_0x004813b0                                 // 0x00482e6c    e83fe5ffff
                         fld                dword ptr [eax]                                      // 0x00482e71    d900
                         {disp8} fst        dword ptr [esp + 0x14]                               // 0x00482e73    d9542414
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x00482e77    8b4804
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x00482e7a    894c2418
                         {disp8} fld        dword ptr [eax + 0x08]                               // 0x00482e7e    d94008
                         {disp8} jmp        _jmp_addr_0x00482e99                                 // 0x00482e81    eb16
_jmp_addr_0x00482e83:    {disp32} mov       edx, dword ptr [esi + 0x000048c4]                    // 0x00482e83    8b96c4480000
                         {disp32} fld       dword ptr [esi + 0x000048c0]                         // 0x00482e89    d986c0480000
                         {disp32} fld       dword ptr [esi + 0x000048c8]                         // 0x00482e8f    d986c8480000
                         {disp8} mov        dword ptr [esp + 0x18], edx                          // 0x00482e95    89542418
_jmp_addr_0x00482e99:    {disp8} fld        dword ptr [esi + 0x78]                               // 0x00482e99    d94678
                         {disp32} mov       eax, dword ptr [esi + 0x00000080]                    // 0x00482e9c    8b8680000000
                         {disp8} fld        dword ptr [esi + 0x7c]                               // 0x00482ea2    d9467c
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x00482ea5    89442428
                         {disp32} fld       dword ptr [esi + 0x00000090]                         // 0x00482ea9    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]                    // 0x00482eaf    d80d402c8c00
                         fadd               st, st(1)                                            // 0x00482eb5    d8c1
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x00482eb7    d95c2424
                         fstp               st(0)                                                // 0x00482ebb    ddd8
                         fxch               st(2)                                                // 0x00482ebd    d9ca
                         fsub               st, st(2)                                            // 0x00482ebf    d8e2
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00482ec1    d95c2414
                         fxch               st(1)                                                // 0x00482ec5    d9c9
                         fstp               st(0)                                                // 0x00482ec7    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482ec9    d9442418
                         {disp8} fsub       dword ptr [esp + 0x24]                               // 0x00482ecd    d8642424
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00482ed1    d95c2418
                         {disp8} fsub       dword ptr [esp + 0x28]                               // 0x00482ed5    d8642428
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x00482ed9    d95c241c
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00482edd    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00482ee1    d81d98a38a00
                         fnstsw             ax                                                   // 0x00482ee7    dfe0
                         test               ah, 0x40                                             // 0x00482ee9    f6c440
                         {disp8} je         _jmp_addr_0x00482f10                                 // 0x00482eec    7422
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482eee    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00482ef2    d81d98a38a00
                         fnstsw             ax                                                   // 0x00482ef8    dfe0
                         test               ah, 0x40                                             // 0x00482efa    f6c440
                         {disp8} je         _jmp_addr_0x00482f10                                 // 0x00482efd    7411
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00482eff    d944241c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00482f03    d81d98a38a00
                         fnstsw             ax                                                   // 0x00482f09    dfe0
                         test               ah, 0x40                                             // 0x00482f0b    f6c440
                         {disp8} jne        _jmp_addr_0x00482f50                                 // 0x00482f0e    7540
_jmp_addr_0x00482f10:    {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482f10    d9442418
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x00482f14    d84c2418
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00482f18    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                               // 0x00482f1c    d84c241c
                         faddp              st(1), st                                            // 0x00482f20    dec1
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x00482f22    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x00482f26    d84c2414
                         faddp              st(1), st                                            // 0x00482f2a    dec1
                         fsqrt                                                                   // 0x00482f2c    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                          // 0x00482f2e    d83d90a38a00
                         fld                st(0)                                                // 0x00482f34    d9c0
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x00482f36    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x00482f3a    d95c2414
                         fld                st(0)                                                // 0x00482f3e    d9c0
                         {disp8} fmul       dword ptr [esp + 0x18]                               // 0x00482f40    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00482f44    d95c2418
                         {disp8} fmul       dword ptr [esp + 0x1c]                               // 0x00482f48    d84c241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x00482f4c    d95c241c
_jmp_addr_0x00482f50:    {disp8} fld        dword ptr [esp + 0x14]                               // 0x00482f50    d9442414
                         fabs                                                                    // 0x00482f54    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]                    // 0x00482f56    dc1dd8798c00
                         fnstsw             ax                                                   // 0x00482f5c    dfe0
                         test               ah, 0x41                                             // 0x00482f5e    f6c441
                         {disp8} jne        _jmp_addr_0x00482fd5                                 // 0x00482f61    7572
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00482f63    d944241c
                         fabs                                                                    // 0x00482f67    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]                    // 0x00482f69    dc1dd8798c00
                         fnstsw             ax                                                   // 0x00482f6f    dfe0
                         test               ah, 0x41                                             // 0x00482f71    f6c441
                         {disp8} jne        _jmp_addr_0x00482fd5                                 // 0x00482f74    755f
                         {disp32} mov       eax, dword ptr [esi + 0x00005220]                    // 0x00482f76    8b8620520000
                         test               eax, eax                                             // 0x00482f7c    85c0
                         {disp32} mov       ecx, dword ptr [esi + 0x00000084]                    // 0x00482f7e    8b8e84000000
                         {disp8} mov        dword ptr [esp + 0x08], ecx                          // 0x00482f84    894c2408
                         {disp8} je         _jmp_addr_0x00482fb8                                 // 0x00482f88    742e
                         {disp32} fld       dword ptr [esi + 0x00004840]                         // 0x00482f8a    d98640480000
                         push               ecx                                                  // 0x00482f90    51
                         {disp32} fsub      dword ptr [esi + 0x00000084]                         // 0x00482f91    d8a684000000
                         fstp               dword ptr [esp]                                      // 0x00482f97    d91c24
                         call               _jmp_addr_0x007faaf0                                 // 0x00482f9a    e8517b3700
                         {disp32} fimul     dword ptr [esi + 0x000047d0]                         // 0x00482f9f    da8ed0470000
                         {disp32} mov       edx, dword ptr [esi + 0x00005220]                    // 0x00482fa5    8b9620520000
                         add                esp, 0x04                                            // 0x00482fab    83c404
                         fidiv              dword ptr [edx]                                      // 0x00482fae    da32
                         {disp8} fadd       dword ptr [esp + 0x08]                               // 0x00482fb0    d8442408
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x00482fb4    d95c2408
_jmp_addr_0x00482fb8:    {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x00482fb8    8d442414
                         push               eax                                                  // 0x00482fbc    50
                         call               _jmp_addr_0x007faa50                                 // 0x00482fbd    e88e7a3700
                         {disp8} fsub       dword ptr [esp + 0x0c]                               // 0x00482fc2    d864240c
                         fstp               dword ptr [esp]                                      // 0x00482fc6    d91c24
                         call               _jmp_addr_0x007faaf0                                 // 0x00482fc9    e8227b3700
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x00482fce    d95c240c
                         add                esp, 0x04                                            // 0x00482fd2    83c404
_jmp_addr_0x00482fd5:    {disp8} fld        dword ptr [esp + 0x18]                               // 0x00482fd5    d9442418
                         call               __CIasin                                             // 0x00482fd9    e8e2433400
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x00482fde    d95c240c
_jmp_addr_0x00482fe2:    {disp32} mov       ecx, dword ptr [esi + 0x000048b8]                    // 0x00482fe2    8b8eb8480000
                         {disp32} mov       edx, dword ptr [esi + 0x00004858]                    // 0x00482fe8    8b9658480000
                         push               0x40490fdb                                           // 0x00482fee    68db0f4940
                         push               ecx                                                  // 0x00482ff3    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x00482ff4    8b4c2410
                         push               edx                                                  // 0x00482ff8    52
                         {disp32} lea       eax, dword ptr [esi + 0x00004860]                    // 0x00482ff9    8d8660480000
                         push               eax                                                  // 0x00482fff    50
                         push               ecx                                                  // 0x00483000    51
                         {disp32} lea       edx, dword ptr [esi + 0x00004864]                    // 0x00483001    8d9664480000
                         push               edx                                                  // 0x00483007    52
                         call               _jmp_addr_0x004eebd0                                 // 0x00483008    e8c3bb0600
                         {disp32} mov       eax, dword ptr [esi + 0x000048b8]                    // 0x0048300d    8b86b8480000
                         {disp32} mov       ecx, dword ptr [esi + 0x00004858]                    // 0x00483013    8b8e58480000
                         push               0x3fc90fdb                                           // 0x00483019    68db0fc93f
                         push               eax                                                  // 0x0048301e    50
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                          // 0x0048301f    8b44242c
                         push               ecx                                                  // 0x00483023    51
                         {disp32} lea       edx, dword ptr [esi + 0x00004868]                    // 0x00483024    8d9668480000
                         push               edx                                                  // 0x0048302a    52
                         push               eax                                                  // 0x0048302b    50
                         add                esi, 0x0000486c                                      // 0x0048302c    81c66c480000
                         push               esi                                                  // 0x00483032    56
                         call               _jmp_addr_0x004eebd0                                 // 0x00483033    e898bb0600
                         add                esp, 0x30                                            // 0x00483038    83c430
                         pop                edi                                                  // 0x0048303b    5f
                         pop                esi                                                  // 0x0048303c    5e
                         add                esp, 0x24                                            // 0x0048303d    83c424
                         ret                                                                     // 0x00483040    c3
                         nop                                                                     // 0x00483041    90
                         nop                                                                     // 0x00483042    90
                         nop                                                                     // 0x00483043    90
                         nop                                                                     // 0x00483044    90
                         nop                                                                     // 0x00483045    90
                         nop                                                                     // 0x00483046    90
                         nop                                                                     // 0x00483047    90
                         nop                                                                     // 0x00483048    90
                         nop                                                                     // 0x00483049    90
                         nop                                                                     // 0x0048304a    90
                         nop                                                                     // 0x0048304b    90
                         nop                                                                     // 0x0048304c    90
                         nop                                                                     // 0x0048304d    90
                         nop                                                                     // 0x0048304e    90
                         nop                                                                     // 0x0048304f    90
_jmp_addr_0x00483050:    {disp32} mov       edx, dword ptr [ecx + 0x00004994]                    // 0x00483050    8b9194490000
                         mov                eax, 0x00000001                                      // 0x00483056    b801000000
                         cmp.s              edx, eax                                             // 0x0048305b    3bd0
                         {disp8} jne        _jmp_addr_0x00483069                                 // 0x0048305d    750a
                         {disp32} mov       edx, dword ptr [ecx + 0x00005190]                    // 0x0048305f    8b9190510000
                         test               edx, edx                                             // 0x00483065    85d2
                         {disp8} je         _jmp_addr_0x0048306b                                 // 0x00483067    7402
_jmp_addr_0x00483069:    xor.s              eax, eax                                             // 0x00483069    33c0
_jmp_addr_0x0048306b:    ret                                                                     // 0x0048306b    c3
                         nop                                                                     // 0x0048306c    90
                         nop                                                                     // 0x0048306d    90
                         nop                                                                     // 0x0048306e    90
                         nop                                                                     // 0x0048306f    90
_jmp_addr_0x00483070:    sub                esp, 0x0c                                            // 0x00483070    83ec0c
                         push               esi                                                  // 0x00483073    56
                         mov.s              esi, ecx                                             // 0x00483074    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00005744]                    // 0x00483076    8b8e44570000
                         {disp32} mov       eax, dword ptr [esi + 0x000048bc]                    // 0x0048307c    8b86bc480000
                         sub.s              ecx, eax                                             // 0x00483082    2bc8
                         {disp32} mov       dword ptr [esi + 0x00005744], ecx                    // 0x00483084    898e44570000
                         {disp32} jns       _jmp_addr_0x00483152                                 // 0x0048308a    0f89c2000000
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]                    // 0x00483090    8b8698510000
                         {disp32} fld       dword ptr [eax + 0x00064074]                         // 0x00483096    d98074400600
                         xor.s              edx, edx                                             // 0x0048309c    33d2
                         {disp32} fld       dword ptr [eax + 0x00064074]                         // 0x0048309e    d98074400600
                         {disp32} mov       dword ptr [esi + 0x0000574c], edx                    // 0x004830a4    89964c570000
                         {disp32} fstp      dword ptr [esi + 0x00005748]                         // 0x004830aa    d99e48570000
                         {disp32} fstp      dword ptr [esi + 0x00005750]                         // 0x004830b0    d99e50570000
                         {disp32} mov       eax, dword ptr [esi + 0x00005198]                    // 0x004830b6    8b8698510000
                         {disp32} mov       ecx, dword ptr [eax + 0x000640bc]                    // 0x004830bc    8b88bc400600
                         cmp.s              ecx, edx                                             // 0x004830c2    3bca
                         {disp8} jl         _jmp_addr_0x004830fb                                 // 0x004830c4    7c35
                         cmp                ecx, dword ptr [eax + 0x000640b8]                    // 0x004830c6    3b88b8400600
                         {disp8} jge        _jmp_addr_0x004830fb                                 // 0x004830cc    7d2d
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x4 + 0x00064090]        // 0x004830ce    8b8c8890400600
                         {disp8} mov        eax, dword ptr [ecx + 0x68]                          // 0x004830d5    8b4168
                         cmp.s              eax, edx                                             // 0x004830d8    3bc2
                         {disp8} je         _jmp_addr_0x004830fb                                 // 0x004830da    741f
                         cmp                dword ptr [eax], edx                                 // 0x004830dc    3910
                         {disp8} je         _jmp_addr_0x004830fb                                 // 0x004830de    741b
                         {disp8} mov        eax, dword ptr [eax + 0x04]                          // 0x004830e0    8b4004
                         {disp8} fld        dword ptr [eax + 0x0c]                               // 0x004830e3    d9400c
                         {disp8} fld        dword ptr [eax + 0x08]                               // 0x004830e6    d94008
                         {disp32} mov       dword ptr [esi + 0x0000574c], edx                    // 0x004830e9    89964c570000
                         {disp32} fstp      dword ptr [esi + 0x00005748]                         // 0x004830ef    d99e48570000
                         {disp32} fstp      dword ptr [esi + 0x00005750]                         // 0x004830f5    d99e50570000
_jmp_addr_0x004830fb:    {disp32} fld       dword ptr [esi + 0x00005748]                         // 0x004830fb    d98648570000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x00483101    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x00483107    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x0048310d    e8eee23100
                         {disp32} fld       dword ptr [esi + 0x00005750]                         // 0x00483112    d98650570000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x00483118    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x0048311e    89442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x00483122    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x00483128    e8d3e23100
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                          // 0x0048312d    8d4c2404
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x00483131    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x00483135    c744240c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x0048313d    e84eff3700
                         {disp32} fstp      dword ptr [esi + 0x0000574c]                         // 0x00483142    d99e4c570000
                         {disp32} mov       dword ptr [esi + 0x00005744], 0x000007d0             // 0x00483148    c78644570000d0070000
_jmp_addr_0x00483152:    pop                esi                                                  // 0x00483152    5e
                         add                esp, 0x0c                                            // 0x00483153    83c40c
                         ret                                                                     // 0x00483156    c3
                         nop                                                                     // 0x00483157    90
                         nop                                                                     // 0x00483158    90
                         nop                                                                     // 0x00483159    90
                         nop                                                                     // 0x0048315a    90
                         nop                                                                     // 0x0048315b    90
                         nop                                                                     // 0x0048315c    90
                         nop                                                                     // 0x0048315d    90
                         nop                                                                     // 0x0048315e    90
                         nop                                                                     // 0x0048315f    90
_jmp_addr_0x00483160:    push               esi                                                  // 0x00483160    56
                         mov.s              esi, ecx                                             // 0x00483161    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000057a8]                    // 0x00483163    8b86a8570000
                         test               eax, eax                                             // 0x00483169    85c0
                         {disp8} jne        _jmp_addr_0x004831a0                                 // 0x0048316b    7533
                         {disp32} mov       eax, dword ptr [esi + 0x00000098]                    // 0x0048316d    8b8698000000
                         push               edi                                                  // 0x00483173    57
                         {disp32} mov       edi, dword ptr [esi + eax * 0x4 + 0x000000b4]        // 0x00483174    8bbc86b4000000
                         call               ?GetSafeBuffer@LH3DCreature@@QAEPAEXZ                // 0x0048317b    e830110000
                         {disp32} mov       ecx, dword ptr [esi + 0x000057a4]                    // 0x00483180    8b8ea4570000
                         push               eax                                                  // 0x00483186    50
                         push               edi                                                  // 0x00483187    57
                         call               _jmp_addr_0x00867fe0                                 // 0x00483188    e8534e3e00
                         {disp32} mov       eax, dword ptr [esi + 0x000057a4]                    // 0x0048318d    8b86a4570000
                         pop                edi                                                  // 0x00483193    5f
                         {disp32} mov       dword ptr [esi + 0x000057a8], 0x00000001             // 0x00483194    c786a857000001000000
                         pop                esi                                                  // 0x0048319e    5e
                         ret                                                                     // 0x0048319f    c3
_jmp_addr_0x004831a0:    {disp32} mov       eax, dword ptr [esi + 0x000057a4]                    // 0x004831a0    8b86a4570000
                         pop                esi                                                  // 0x004831a6    5e
                         ret                                                                     // 0x004831a7    c3
                         nop                                                                     // 0x004831a8    90
                         nop                                                                     // 0x004831a9    90
                         nop                                                                     // 0x004831aa    90
                         nop                                                                     // 0x004831ab    90
                         nop                                                                     // 0x004831ac    90
                         nop                                                                     // 0x004831ad    90
                         nop                                                                     // 0x004831ae    90
                         nop                                                                     // 0x004831af    90
_jmp_addr_0x004831b0:    sub                esp, 0x08                                            // 0x004831b0    83ec08
                         push               ebx                                                  // 0x004831b3    53
                         push               esi                                                  // 0x004831b4    56
                         mov.s              esi, ecx                                             // 0x004831b5    8bf1
                         {disp8} fld        dword ptr [esi + 0x78]                               // 0x004831b7    d94678
                         push               edi                                                  // 0x004831ba    57
                         xor.s              edi, edi                                             // 0x004831bb    33ff
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x004831bd    d95c240c
                         {disp32} fld       dword ptr [esi + 0x00000080]                         // 0x004831c1    d98680000000
                         {disp32} mov       dword ptr [esi + 0x00004860], edi                    // 0x004831c7    89be60480000
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x004831cd    d95c2410
                         {disp32} mov       dword ptr [esi + 0x00004864], edi                    // 0x004831d1    89be64480000
                         {disp32} mov       dword ptr [esi + 0x00004868], edi                    // 0x004831d7    89be68480000
                         {disp32} mov       dword ptr [esi + 0x0000486c], edi                    // 0x004831dd    89be6c480000
                         {disp32} mov       dword ptr [esi + 0x000049a0], edi                    // 0x004831e3    89bea0490000
                         {disp32} mov       dword ptr [esi + 0x0000522c], edi                    // 0x004831e9    89be2c520000
                         {disp32} mov       dword ptr [esi + 0x000049ac], edi                    // 0x004831ef    89beac490000
                         {disp32} mov       dword ptr [esi + 0x000049b0], edi                    // 0x004831f5    89beb0490000
                         {disp32} mov       dword ptr [esi + 0x000049b8], edi                    // 0x004831fb    89beb8490000
                         {disp32} mov       dword ptr [esi + 0x00005190], edi                    // 0x00483201    89be90510000
                         {disp32} mov       dword ptr [esi + 0x000047d0], edi                    // 0x00483207    89bed0470000
                         {disp32} mov       dword ptr [esi + 0x000047b4], edi                    // 0x0048320d    89beb4470000
                         {disp32} mov       dword ptr [esi + 0x0000519c], edi                    // 0x00483213    89be9c510000
                         call               _jmp_addr_0x00480a60                                 // 0x00483219    e842d8ffff
                         push               ecx                                                  // 0x0048321e    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00005198]                    // 0x0048321f    8b8e98510000
                         fstp               dword ptr [esp]                                      // 0x00483225    d91c24
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x00483228    8d442410
                         push               eax                                                  // 0x0048322c    50
                         call               _jmp_addr_0x00863b00                                 // 0x0048322d    e8ce083e00
                         {disp32} mov       ebx, dword ptr [esi + 0x00005220]                    // 0x00483232    8b9e20520000
                         cmp.s              ebx, edi                                             // 0x00483238    3bdf
                         {disp8} je         _jmp_addr_0x00483252                                 // 0x0048323a    7416
                         mov.s              ecx, ebx                                             // 0x0048323c    8bcb
                         call               _jmp_addr_0x0085e490                                 // 0x0048323e    e84db23d00
                         push               ebx                                                  // 0x00483243    53
                         call               ??3@YAXPAX@Z                                         // 0x00483244    e84fbc3200
                         add                esp, 0x04                                            // 0x00483249    83c404
                         {disp32} mov       dword ptr [esi + 0x00005220], edi                    // 0x0048324c    89be20520000
_jmp_addr_0x00483252:    push               edi                                                  // 0x00483252    57
                         mov.s              ecx, esi                                             // 0x00483253    8bce
                         {disp32} mov       dword ptr [esi + 0x0000523c], edi                    // 0x00483255    89be3c520000
                         call               _jmp_addr_0x00484ec0                                 // 0x0048325b    e8601c0000
                         mov.s              ecx, esi                                             // 0x00483260    8bce
                         call               _jmp_addr_0x0048d520                                 // 0x00483262    e8b9a20000
                         mov.s              ecx, esi                                             // 0x00483267    8bce
                         call               _jmp_addr_0x004ec590                                 // 0x00483269    e822930600
                         mov.s              ecx, esi                                             // 0x0048326e    8bce
                         {disp32} mov       dword ptr [esi + 0x000048c8], edi                    // 0x00483270    89bec8480000
                         {disp32} mov       dword ptr [esi + 0x000048c4], edi                    // 0x00483276    89bec4480000
                         {disp32} mov       dword ptr [esi + 0x000048c0], edi                    // 0x0048327c    89bec0480000
                         call               _jmp_addr_0x0048d930                                 // 0x00483282    e8a9a60000
                         pop                edi                                                  // 0x00483287    5f
                         pop                esi                                                  // 0x00483288    5e
                         pop                ebx                                                  // 0x00483289    5b
                         add                esp, 0x08                                            // 0x0048328a    83c408
                         ret                                                                     // 0x0048328d    c3
                         nop                                                                     // 0x0048328e    90
                         nop                                                                     // 0x0048328f    90
_jmp_addr_0x00483290:    sub                esp, 0x48                                            // 0x00483290    83ec48
                         push               ebx                                                  // 0x00483293    53
                         push               ebp                                                  // 0x00483294    55
                         push               esi                                                  // 0x00483295    56
                         mov.s              esi, ecx                                             // 0x00483296    8bf1
                         {disp8} fld        dword ptr [esi + 0x78]                               // 0x00483298    d94678
                         push               edi                                                  // 0x0048329b    57
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x0048329c    d80d00c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x004832a2    e859e13100
                         {disp32} fld       dword ptr [esi + 0x00000080]                         // 0x004832a7    d98680000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x004832ad    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x004832b3    89442420
                         call               _jmp_addr_0x007a1400                                 // 0x004832b7    e844e13100
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x004832bc    8b0d5c19d000
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x004832c2    89442424
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000                   // 0x004832c6    c744242800000000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x004832ce    e8ad8e0c00
                         test               eax, eax                                             // 0x004832d3    85c0
                         {disp32} je        _jmp_addr_0x004835e0                                 // 0x004832d5    0f8405030000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x004832db    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ                  // 0x004832e1    e89a8e0c00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdb8]               // 0x004832e6    a1b81dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdbc]               // 0x004832eb    8b0dbc1dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc0]               // 0x004832f1    8b15c01dea00
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x004832f7    89442414
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x004832fb    d9442414
                         {disp8} fsub       dword ptr [esi + 0x78]                               // 0x004832ff    d86678
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x00483302    894c2418
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00483306    d9442418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                          // 0x0048330a    8954241c
                         {disp8} fsub       dword ptr [esi + 0x7c]                               // 0x0048330e    d8667c
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x00483311    d944241c
                         {disp32} fsub      dword ptr [esi + 0x00000080]                         // 0x00483315    d8a680000000
                         fld                st(0)                                                // 0x0048331b    d9c0
                         fmul               st, st(1)                                            // 0x0048331d    d8c9
                         fld                st(2)                                                // 0x0048331f    d9c2
                         fmul               st, st(3)                                            // 0x00483321    d8cb
                         faddp              st(1), st                                            // 0x00483323    dec1
                         fld                st(3)                                                // 0x00483325    d9c3
                         fmul               st, st(4)                                            // 0x00483327    d8cc
                         faddp              st(1), st                                            // 0x00483329    dec1
                         fsqrt                                                                   // 0x0048332b    d9fa
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0048332d    d95c2410
                         fstp               st(0)                                                // 0x00483331    ddd8
                         fstp               st(0)                                                // 0x00483333    ddd8
                         fstp               st(0)                                                // 0x00483335    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]                     // 0x00483337    d90578b48a00
                         {disp32} fsub      dword ptr [esi + 0x00000090]                         // 0x0048333d    d8a690000000
                         {disp32} fmul      dword ptr [__real@3fc00000]                          // 0x00483343    d80d4cb28a00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                          // 0x00483349    d80590a38a00
                         call               _jmp_addr_0x007a1400                                 // 0x0048334f    e8ace03100
                         mov                edi, 0x00000001                                      // 0x00483354    bf01000000
                         cmp.s              eax, edi                                             // 0x00483359    3bc7
                         mov                ebx, 0x00000003                                      // 0x0048335b    bb03000000
                         {disp8} jle        _jmp_addr_0x00483372                                 // 0x00483360    7e10
                         cmp.s              eax, ebx                                             // 0x00483362    3bc3
                         {disp8} jge        _jmp_addr_0x0048336c                                 // 0x00483364    7d06
                         {disp8} mov        dword ptr [esp + 0x44], eax                          // 0x00483366    89442444
                         {disp8} jmp        _jmp_addr_0x00483376                                 // 0x0048336a    eb0a
_jmp_addr_0x0048336c:    {disp8} mov        dword ptr [esp + 0x44], ebx                          // 0x0048336c    895c2444
                         {disp8} jmp        _jmp_addr_0x00483376                                 // 0x00483370    eb04
_jmp_addr_0x00483372:    {disp8} mov        dword ptr [esp + 0x44], edi                          // 0x00483372    897c2444
_jmp_addr_0x00483376:    {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x00483376    d90590a38a00
                         {disp32} fsub      dword ptr [esi + 0x0000009c]                         // 0x0048337c    d8a69c000000
                         {disp32} fmul      dword ptr [__real@3fc00000]                          // 0x00483382    d80d4cb28a00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                          // 0x00483388    d80590a38a00
                         call               _jmp_addr_0x007a1400                                 // 0x0048338e    e86de03100
                         cmp.s              eax, edi                                             // 0x00483393    3bc7
                         {disp8} jle        _jmp_addr_0x004833a7                                 // 0x00483395    7e10
                         cmp.s              eax, ebx                                             // 0x00483397    3bc3
                         {disp8} jge        _jmp_addr_0x004833a1                                 // 0x00483399    7d06
                         {disp8} mov        dword ptr [esp + 0x48], eax                          // 0x0048339b    89442448
                         {disp8} jmp        _jmp_addr_0x004833ab                                 // 0x0048339f    eb0a
_jmp_addr_0x004833a1:    {disp8} mov        dword ptr [esp + 0x48], ebx                          // 0x004833a1    895c2448
                         {disp8} jmp        _jmp_addr_0x004833ab                                 // 0x004833a5    eb04
_jmp_addr_0x004833a7:    {disp8} mov        dword ptr [esp + 0x48], edi                          // 0x004833a7    897c2448
_jmp_addr_0x004833ab:    {disp32} mov       eax, dword ptr [esi + 0x00004830]                    // 0x004833ab    8b8630480000
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                          // 0x004833b1    8d4c2420
                         push               ecx                                                  // 0x004833b5    51
                         {disp8} mov        dword ptr [esp + 0x50], eax                          // 0x004833b6    89442450
                         call               _jmp_addr_0x0071d8e0                                 // 0x004833ba    e821a52900
                         {disp8} mov        ebp, dword ptr [esp + 0x60]                          // 0x004833bf    8b6c2460
                         {disp32} mov       ecx, dword ptr [_global]                             // 0x004833c3    8b0d203bcd00
                         {disp8} mov        dword ptr [esp + 0x54], eax                          // 0x004833c9    89442454
                         {disp8} mov        al, byte ptr [esp + 0x68]                            // 0x004833cd    8a442468
                         add                esp, 0x04                                            // 0x004833d1    83c404
                         test               al, al                                               // 0x004833d4    84c0
                         {disp8} mov        dword ptr [esp + 0x54], ebp                          // 0x004833d6    896c2454
                         {disp8} je         _jmp_addr_0x004833e4                                 // 0x004833da    7408
                         {disp32} mov       edi, dword ptr [ecx + 0x000003b8]                    // 0x004833dc    8bb9b8030000
                         {disp8} jmp        _jmp_addr_0x004833ea                                 // 0x004833e2    eb06
_jmp_addr_0x004833e4:    {disp32} mov       edi, dword ptr [esi + 0x00005288]                    // 0x004833e4    8bbe88520000
_jmp_addr_0x004833ea:    test               al, al                                               // 0x004833ea    84c0
                         {disp8} jne        _jmp_addr_0x00483427                                 // 0x004833ec    7539
                         {disp32} mov       edx, dword ptr [_game]                               // 0x004833ee    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]                    // 0x004833f4    8b8290002500
                         {disp32} mov       ebx, dword ptr [eax + 0x00000084]                    // 0x004833fa    8b9884000000
                         test               ebx, ebx                                             // 0x00483400    85db
                         {disp8} jne        _jmp_addr_0x00483427                                 // 0x00483402    7523
                         xor.s              eax, eax                                             // 0x00483404    33c0
                         {disp32} mov       al, byte ptr [edx + 0x00205a59]                      // 0x00483406    8a82595a2000
                         lea                ebx, dword ptr [eax + eax * 0x4]                     // 0x0048340c    8d1c80
                         lea                ebx, dword ptr [eax + ebx * 0x8]                     // 0x0048340f    8d1cd8
                         lea                eax, dword ptr [eax + ebx * 0x2]                     // 0x00483412    8d0458
                         {disp32} mov       ebx, dword ptr [esi + 0x00004834]                    // 0x00483415    8b9e34480000
                         shl                eax, 5                                               // 0x0048341b    c1e005
                         cmp                ebx, dword ptr [eax + edx * 0x1 + 0x00000a64]        // 0x0048341e    3b9c10640a0000
                         {disp8} jne        _jmp_addr_0x0048346e                                 // 0x00483425    7547
_jmp_addr_0x00483427:    {disp8} mov        edx, dword ptr [esp + 0x60]                          // 0x00483427    8b542460
                         push               0x0                                                  // 0x0048342b    6a00
                         push               0x0                                                  // 0x0048342d    6a00
                         push               0x1                                                  // 0x0048342f    6a01
                         push               edi                                                  // 0x00483431    57
                         push               edx                                                  // 0x00483432    52
                         {disp8} mov        edx, dword ptr [esp + 0x24]                          // 0x00483433    8b542424
                         {disp8} lea        eax, dword ptr [esp + 0x58]                          // 0x00483437    8d442458
                         push               eax                                                  // 0x0048343b    50
                         {disp8} mov        eax, dword ptr [esi + 0x04]                          // 0x0048343c    8b4604
                         push               edx                                                  // 0x0048343f    52
                         push               eax                                                  // 0x00483440    50
                         call               _jmp_addr_0x0042a4b0                                 // 0x00483441    e86a70faff
                         test               eax, eax                                             // 0x00483446    85c0
                         {disp8} je         _jmp_addr_0x0048346e                                 // 0x00483448    7424
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                          // 0x0048344a    8b4e04
                         test               ecx, ecx                                             // 0x0048344d    85c9
                         {disp8} jne        _jmp_addr_0x0048346e                                 // 0x0048344f    751d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000080]                    // 0x00483451    8b8e80000000
                         {disp8} mov        edx, dword ptr [esi + 0x7c]                          // 0x00483457    8b567c
                         push               0x0                                                  // 0x0048345a    6a00
                         push               ecx                                                  // 0x0048345c    51
                         {disp8} mov        ecx, dword ptr [esi + 0x78]                          // 0x0048345d    8b4e78
                         push               edx                                                  // 0x00483460    52
                         push               ecx                                                  // 0x00483461    51
                         {disp32} mov       ecx, dword ptr [_global]                             // 0x00483462    8b0d203bcd00
                         push               eax                                                  // 0x00483468    50
                         call               _jmp_addr_0x00428790                                 // 0x00483469    e82253faff
_jmp_addr_0x0048346e:    {disp8} lea        eax, dword ptr [ebp + -0x03]                         // 0x0048346e    8d45fd
                         cmp                eax, 0x6a                                            // 0x00483471    83f86a
                         {disp8} ja         _jmp_addr_0x004834ae                                 // 0x00483474    7738
                         xor.s              edx, edx                                             // 0x00483476    33d2
                         {disp32} mov       dl, byte ptr [eax + 0x00483600]                      // 0x00483478    8a9000364800
                         jmp                dword ptr [edx*4 + 0x4835ec]                         // 0x0048347e    ff2495ec354800
                         push               0x3                                                  // 0x00483485    6a03
                         mov.s              ecx, esi                                             // 0x00483487    8bce
                         call               _jmp_addr_0x004ed250                                 // 0x00483489    e8c29d0600
                         {disp8} jmp        _jmp_addr_0x004834ae                                 // 0x0048348e    eb1e
                         push               0x6                                                  // 0x00483490    6a06
                         mov.s              ecx, esi                                             // 0x00483492    8bce
                         call               _jmp_addr_0x004ed250                                 // 0x00483494    e8b79d0600
                         {disp8} jmp        _jmp_addr_0x004834ae                                 // 0x00483499    eb13
                         push               0xc                                                  // 0x0048349b    6a0c
                         mov.s              ecx, esi                                             // 0x0048349d    8bce
                         call               _jmp_addr_0x004ed250                                 // 0x0048349f    e8ac9d0600
                         {disp8} jmp        _jmp_addr_0x004834ae                                 // 0x004834a4    eb08
                         push               ebp                                                  // 0x004834a6    55
                         mov.s              ecx, esi                                             // 0x004834a7    8bce
                         call               _jmp_addr_0x0068e6e0                                 // 0x004834a9    e832b22000
_jmp_addr_0x004834ae:    cmp                ebp, 0x03                                            // 0x004834ae    83fd03
                         {disp32} jl        _jmp_addr_0x004835e0                                 // 0x004834b1    0f8c29010000
                         cmp                ebp, 0x05                                            // 0x004834b7    83fd05
                         {disp32} jg        _jmp_addr_0x004835e0                                 // 0x004834ba    0f8f20010000
                         {disp32} mov       eax, dword ptr [esi + 0x000051cc]                    // 0x004834c0    8b86cc510000
                         {disp32} mov       ebx, dword ptr [esi + 0x000047f0]                    // 0x004834c6    8b9ef0470000
                         lea                edi, dword ptr [eax + eax * 0x2]                     // 0x004834cc    8d3c40
                         shl                edi, 4                                               // 0x004834cf    c1e704
                         push               eax                                                  // 0x004834d2    50
                         mov.s              ecx, esi                                             // 0x004834d3    8bce
                         add.s              edi, ebx                                             // 0x004834d5    03fb
                         call               _jmp_addr_0x00481390                                 // 0x004834d7    e8b4deffff
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x004834dc    8d0c40
                         shl                ecx, 4                                               // 0x004834df    c1e104
                         {disp8} fld        dword ptr [ecx + ebx * 0x1 + 0x28]                   // 0x004834e2    d9441928
                         add.s              ecx, ebx                                             // 0x004834e6    03cb
                         {disp8} fcomp      dword ptr [edi + 0x28]                               // 0x004834e8    d85f28
                         xor.s              ebx, ebx                                             // 0x004834eb    33db
                         fnstsw             ax                                                   // 0x004834ed    dfe0
                         test               ah, 0x01                                             // 0x004834ef    f6c401
                         {disp8} je         _jmp_addr_0x004834fb                                 // 0x004834f2    7407
                         mov                ebx, 0x00000001                                      // 0x004834f4    bb01000000
                         mov.s              edi, ecx                                             // 0x004834f9    8bf9
_jmp_addr_0x004834fb:    {disp8} mov        dword ptr [esp + 0x38], 0x00000000                   // 0x004834fb    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000                   // 0x00483503    c744243c00000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000                   // 0x0048350b    c744244000000000
                         {disp8} fld        dword ptr [edi + 0x18]                               // 0x00483513    d94718
                         {disp8} fld        dword ptr [edi + 0x0c]                               // 0x00483516    d9470c
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                          // 0x00483519    8d44242c
                         fld                dword ptr [edi]                                      // 0x0048351d    d907
                         push               eax                                                  // 0x0048351f    50
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x00483520    d95c2430
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                          // 0x00483524    8d4c243c
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x00483528    d95c2434
                         push               ecx                                                  // 0x0048352c    51
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x0048352d    d95c243c
                         call               _jmp_addr_0x00841260                                 // 0x00483531    e82add3b00
                         add                esp, 0x08                                            // 0x00483536    83c408
                         fstp               st(0)                                                // 0x00483539    ddd8
                         {disp8} lea        edx, dword ptr [esp + 0x5c]                          // 0x0048353b    8d54245c
                         push               edx                                                  // 0x0048353f    52
                         {disp8} lea        eax, dword ptr [esp + 0x64]                          // 0x00483540    8d442464
                         push               eax                                                  // 0x00483544    50
                         {disp8} lea        ecx, dword ptr [esp + 0x6c]                          // 0x00483545    8d4c246c
                         push               ecx                                                  // 0x00483549    51
                         mov.s              ecx, edi                                             // 0x0048354a    8bcf
                         call               _jmp_addr_0x007fab30                                 // 0x0048354c    e8df753700
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00483551    8b8634480000
                         xor.s              ecx, ecx                                             // 0x00483557    33c9
                         test               eax, eax                                             // 0x00483559    85c0
                         {disp8} je         _jmp_addr_0x00483566                                 // 0x0048355b    7409
                         {disp8} mov        edx, dword ptr [eax + 0x28]                          // 0x0048355d    8b5028
                         {disp32} mov       ecx, dword ptr [edx + 0x000001f4]                    // 0x00483560    8b8af4010000
_jmp_addr_0x00483566:    {disp8} fld        dword ptr [edi + 0x2c]                               // 0x00483566    d9472c
                         push               ebx                                                  // 0x00483569    53
                         {disp8} fld        dword ptr [edi + 0x28]                               // 0x0048356a    d94728
                         push               ecx                                                  // 0x0048356d    51
                         {disp8} fld        dword ptr [edi + 0x24]                               // 0x0048356e    d94724
                         push               ecx                                                  // 0x00483571    51
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x00483572    d95c2420
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x00483576    8d442420
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0048357a    d95c2424
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0048357e    d95c2428
                         {disp32} fld       dword ptr [esi + 0x00000090]                         // 0x00483582    d98690000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]                     // 0x00483588    d80d18b48a00
                         fstp               dword ptr [esp]                                      // 0x0048358e    d91c24
                         push               ecx                                                  // 0x00483591    51
                         {disp8} fld        dword ptr [esp + 0x74]                               // 0x00483592    d9442474
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1a6a0]                    // 0x00483596    d805a0368c00
                         fstp               dword ptr [esp]                                      // 0x0048359c    d91c24
                         push               eax                                                  // 0x0048359f    50
                         call               _jmp_addr_0x0081f360                                 // 0x004835a0    e8bbbd3900
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x004835a5    d944242c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x004835a9    d81d90a38a00
                         add                esp, 0x14                                            // 0x004835af    83c414
                         fnstsw             ax                                                   // 0x004835b2    dfe0
                         test               ah, 0x01                                             // 0x004835b4    f6c401
                         {disp8} je         _jmp_addr_0x004835e0                                 // 0x004835b7    7427
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x004835b9    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                          // 0x004835bd    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x004835c1    8b44241c
                         {disp32} mov       dword ptr [data_bytes + 0x4f39f0], 0x00000001        // 0x004835c5    c705f099eb0001000000
                         {disp32} mov       dword ptr [data_bytes + 0x4e3f40], ecx               // 0x004835cf    890d409fea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3f44], edx               // 0x004835d5    8915449fea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3f48], eax               // 0x004835db    a3489fea00
_jmp_addr_0x004835e0:    pop                edi                                                  // 0x004835e0    5f
                         pop                esi                                                  // 0x004835e1    5e
                         pop                ebp                                                  // 0x004835e2    5d
                         pop                ebx                                                  // 0x004835e3    5b
                         add                esp, 0x48                                            // 0x004835e4    83c448
                         ret                0x000c                                               // 0x004835e7    c20c00

// Snippet: db, [0x004835ea, 0x004835ec)
.byte 0x8b, 0xff                  // 0x004835ea

// Snippet: jmptbl, [0x004835ec, 0x00483600)
.byte 0x85, 0x34, 0x48, 0x00      // 0x004835ec
.byte 0x90, 0x34, 0x48, 0x00      // 0x004835f0
.byte 0x9b, 0x34, 0x48, 0x00      // 0x004835f4
.byte 0xa6, 0x34, 0x48, 0x00      // 0x004835f8
.byte 0xae, 0x34, 0x48, 0x00      // 0x004835fc

// Snippet: ijmptbl, [0x00483600, 0x0048366b)
.byte 0x00, 0x01, 0x02, 0x04      // 0x00483600
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483604
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483608
.byte 0x04, 0x04, 0x04, 0x04      // 0x0048360c
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483610
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483614
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483618
.byte 0x04, 0x04, 0x04, 0x04      // 0x0048361c
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483620
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483624
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483628
.byte 0x04, 0x04, 0x04, 0x04      // 0x0048362c
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483630
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483634
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483638
.byte 0x04, 0x04, 0x04, 0x04      // 0x0048363c
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483640
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483644
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483648
.byte 0x04, 0x04, 0x04, 0x04      // 0x0048364c
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483650
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483654
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483658
.byte 0x03, 0x03, 0x03, 0x03      // 0x0048365c
.byte 0x03, 0x03, 0x03, 0x03      // 0x00483660
.byte 0x03, 0x03, 0x03, 0x03      // 0x00483664
.byte 0x03, 0x03, 0x03            // 0x00483668

// Snippet: db, [0x0048366b, 0x00483670)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048366b
.byte 0x90                        // 0x0048366f

