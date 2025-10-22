.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ??3@YAXPAX@Z
.extern @SetDest__8RPFollowFRC7Point2Dffff@28
.extern _jmp_addr_0x00864420
.extern @FillPosAndHeading__8RPFollowFR7Point2DRff@20
.extern @GetLength__9RouteNodeFP7RPAvoid@12
.extern ??_DRPlan@@QAEXXZ

.globl _jmp_addr_0x00864190
.globl _jmp_addr_0x008641f0
.globl _jmp_addr_0x008642c0

start_0x00864190_0x00864420:
// Snippet: asm, [0x00864190, 0x00864402)
_jmp_addr_0x00864190:    push               ebp                                           // 0x00864190    55
                         push               esi                                           // 0x00864191    56
                         mov.s              esi, ecx                                      // 0x00864192    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000640b8]             // 0x00864194    8b86b8400600
                         xor.s              ebp, ebp                                      // 0x0086419a    33ed
                         cmp.s              eax, ebp                                      // 0x0086419c    3bc5
                         {disp8} jle        _jmp_addr_0x008641db                          // 0x0086419e    7e3b
                         push               ebx                                           // 0x008641a0    53
                         push               edi                                           // 0x008641a1    57
                         {disp32} lea       ebx, dword ptr [esi + 0x00064090]             // 0x008641a2    8d9e90400600
_jmp_addr_0x008641a8:    mov                edi, dword ptr [ebx]                          // 0x008641a8    8b3b
                         test               edi, edi                                      // 0x008641aa    85ff
                         {disp8} je         _jmp_addr_0x008641be                          // 0x008641ac    7410
                         mov.s              ecx, edi                                      // 0x008641ae    8bcf
                         call               ??_DRPlan@@QAEXXZ                             // 0x008641b0    e83b9f0000
                         push               edi                                           // 0x008641b5    57
                         call               ??3@YAXPAX@Z                                  // 0x008641b6    e8ddacf4ff
                         add                esp, 0x04                                     // 0x008641bb    83c404
_jmp_addr_0x008641be:    {disp32} mov       eax, dword ptr [esi + 0x000640b8]             // 0x008641be    8b86b8400600
                         inc                ebp                                           // 0x008641c4    45
                         add                ebx, 0x04                                     // 0x008641c5    83c304
                         cmp.s              ebp, eax                                      // 0x008641c8    3be8
                         {disp8} jl         _jmp_addr_0x008641a8                          // 0x008641ca    7cdc
                         pop                edi                                           // 0x008641cc    5f
                         pop                ebx                                           // 0x008641cd    5b
                         {disp32} mov       dword ptr [esi + 0x000640b8], 0x00000000      // 0x008641ce    c786b840060000000000
                         pop                esi                                           // 0x008641d8    5e
                         pop                ebp                                           // 0x008641d9    5d
                         ret                                                              // 0x008641da    c3
_jmp_addr_0x008641db:    {disp32} mov       dword ptr [esi + 0x000640b8], ebp             // 0x008641db    89aeb8400600
                         pop                esi                                           // 0x008641e1    5e
                         pop                ebp                                           // 0x008641e2    5d
                         ret                                                              // 0x008641e3    c3
                         nop                                                              // 0x008641e4    90
                         nop                                                              // 0x008641e5    90
                         nop                                                              // 0x008641e6    90
                         nop                                                              // 0x008641e7    90
                         nop                                                              // 0x008641e8    90
                         nop                                                              // 0x008641e9    90
                         nop                                                              // 0x008641ea    90
                         nop                                                              // 0x008641eb    90
                         nop                                                              // 0x008641ec    90
                         nop                                                              // 0x008641ed    90
                         nop                                                              // 0x008641ee    90
                         nop                                                              // 0x008641ef    90
_jmp_addr_0x008641f0:    push               esi                                           // 0x008641f0    56
                         mov.s              esi, ecx                                      // 0x008641f1    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00064054]             // 0x008641f3    8b8e54400600
                         mov.s              eax, ecx                                      // 0x008641f9    8bc1
                         sub                eax, 0x00                                     // 0x008641fb    83e800
                         {disp32} je        _jmp_addr_0x008642b0                          // 0x008641fe    0f84ac000000
                         dec                eax                                           // 0x00864204    48
                         {disp32} je        _jmp_addr_0x008642b0                          // 0x00864205    0f84a5000000
                         sub                eax, 0x02                                     // 0x0086420b    83e802
                         {disp32} je        _jmp_addr_0x008642b0                          // 0x0086420e    0f849c000000
                         {disp32} mov       eax, dword ptr [esi + 0x000640bc]             // 0x00864214    8b86bc400600
                         dec                ecx                                           // 0x0086421a    49
                         {disp32} mov       dword ptr [esi + 0x00064054], ecx             // 0x0086421b    898e54400600
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x00064090] // 0x00864221    8b8c8690400600
                         push               edi                                           // 0x00864228    57
                         {disp8} mov        edi, dword ptr [ecx + 0x50]                   // 0x00864229    8b7950
                         mov.s              ecx, esi                                      // 0x0086422c    8bce
                         call               _jmp_addr_0x00864190                          // 0x0086422e    e85dffffff
                         {disp32} mov       eax, dword ptr [esi + 0x00064058]             // 0x00864233    8b8658400600
                         test               eax, eax                                      // 0x00864239    85c0
                         {disp8} je         _jmp_addr_0x00864290                          // 0x0086423b    7453
                         {disp32} mov       eax, dword ptr [esi + 0x00064084]             // 0x0086423d    8b8684400600
                         {disp32} mov       ecx, dword ptr [esi + 0x0006404c]             // 0x00864243    8b8e4c400600
                         xor.s              edx, edx                                      // 0x00864249    33d2
                         cmp                edi, 0x04                                     // 0x0086424b    83ff04
                         setne              dl                                            // 0x0086424e    0f95c2
                         push               eax                                           // 0x00864251    50
                         {disp32} mov       eax, dword ptr [esi + 0x0006407c]             // 0x00864252    8b867c400600
                         push               ecx                                           // 0x00864258    51
                         {disp32} lea       ecx, dword ptr [esi + 0x00064074]             // 0x00864259    8d8e74400600
                         {disp32} mov       dword ptr [esi + 0x00064058], 0x00000000      // 0x0086425f    c7865840060000000000
                         inc                edx                                           // 0x00864269    42
                         mov.s              edi, edx                                      // 0x0086426a    8bfa
                         {disp32} mov       edx, dword ptr [esi + 0x00064080]             // 0x0086426c    8b9680400600
                         push               edx                                           // 0x00864272    52
                         push               eax                                           // 0x00864273    50
                         push               ecx                                           // 0x00864274    51
                         mov.s              ecx, esi                                      // 0x00864275    8bce
                         call               @SetDest__8RPFollowFRC7Point2Dffff@28         // 0x00864277    e8f4f8ffff
                         {disp32} mov       eax, dword ptr [esi + 0x00064060]             // 0x0086427c    8b8660400600
                         push               edi                                           // 0x00864282    57
                         push               eax                                           // 0x00864283    50
                         call               dword ptr [esi + 0x64064]                     // 0x00864284    ff9664400600
                         add                esp, 0x08                                     // 0x0086428a    83c408
                         pop                edi                                           // 0x0086428d    5f
                         pop                esi                                           // 0x0086428e    5e
                         ret                                                              // 0x0086428f    c3
_jmp_addr_0x00864290:    {disp32} mov       eax, dword ptr [esi + 0x00064060]             // 0x00864290    8b8660400600
                         xor.s              edx, edx                                      // 0x00864296    33d2
                         cmp                edi, 0x04                                     // 0x00864298    83ff04
                         setne              dl                                            // 0x0086429b    0f95c2
                         dec                edx                                           // 0x0086429e    4a
                         and                edx, 0x03                                     // 0x0086429f    83e203
                         mov.s              edi, edx                                      // 0x008642a2    8bfa
                         push               edi                                           // 0x008642a4    57
                         push               eax                                           // 0x008642a5    50
                         call               dword ptr [esi + 0x64064]                     // 0x008642a6    ff9664400600
                         add                esp, 0x08                                     // 0x008642ac    83c408
                         pop                edi                                           // 0x008642af    5f
_jmp_addr_0x008642b0:    pop                esi                                           // 0x008642b0    5e
                         ret                                                              // 0x008642b1    c3
                         nop                                                              // 0x008642b2    90
                         nop                                                              // 0x008642b3    90
                         nop                                                              // 0x008642b4    90
                         nop                                                              // 0x008642b5    90
                         nop                                                              // 0x008642b6    90
                         nop                                                              // 0x008642b7    90
                         nop                                                              // 0x008642b8    90
                         nop                                                              // 0x008642b9    90
                         nop                                                              // 0x008642ba    90
                         nop                                                              // 0x008642bb    90
                         nop                                                              // 0x008642bc    90
                         nop                                                              // 0x008642bd    90
                         nop                                                              // 0x008642be    90
                         nop                                                              // 0x008642bf    90
_jmp_addr_0x008642c0:    push               ecx                                           // 0x008642c0    51
                         push               esi                                           // 0x008642c1    56
                         mov.s              esi, ecx                                      // 0x008642c2    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00064054]             // 0x008642c4    8b8654400600
                         cmp                eax, 0x04                                     // 0x008642ca    83f804
                         {disp32} mov       dword ptr [esi + 0x00064088], 0x00000001      // 0x008642cd    c7868840060001000000
                         {disp32} ja        _jmp_addr_0x008643b7                          // 0x008642d7    0f87da000000
                         jmp                dword ptr [eax*4 + 0x864404]                  // 0x008642dd    ff248504448600
                         {disp32} mov       eax, dword ptr [esi + 0x00064090]             // 0x008642e4    8b8690400600
                         {disp32} mov       dword ptr [esi + 0x0006408c], eax             // 0x008642ea    89868c400600
                         {disp32} mov       dword ptr [esi + 0x000640b8], 0x00000000      // 0x008642f0    c786b840060000000000
                         {disp32} mov       dword ptr [esi + 0x00064054], 0x00000003      // 0x008642fa    c7865440060003000000
                         {disp8} mov        ecx, dword ptr [eax + 0x68]                   // 0x00864304    8b4868
                         mov                edx, dword ptr [ecx]                          // 0x00864307    8b11
                         {disp32} mov       dword ptr [esi + 0x00064070], edx             // 0x00864309    899670400600
                         {disp32} mov       dword ptr [esi + 0x00064038], 0x00000000      // 0x0086430f    c7863840060000000000
                         {disp8} mov        eax, dword ptr [eax + 0x68]                   // 0x00864319    8b4068
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086431c    8b4004
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0086431f    8b4808
                         add                eax, 0x08                                     // 0x00864322    83c008
                         {disp32} mov       dword ptr [esi + 0x00064044], ecx             // 0x00864325    898e44400600
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0086432b    8b5004
                         {disp32} mov       dword ptr [esi + 0x00064048], edx             // 0x0086432e    899648400600
                         {disp32} mov       eax, dword ptr [esi + 0x00064038]             // 0x00864334    8b8638400600
                         push               eax                                           // 0x0086433a    50
                         {disp32} lea       ecx, dword ptr [esi + 0x00064040]             // 0x0086433b    8d8e40400600
                         push               ecx                                           // 0x00864341    51
                         {disp32} lea       edx, dword ptr [esi + 0x0006402c]             // 0x00864342    8d962c400600
                         push               edx                                           // 0x00864348    52
                         mov.s              ecx, esi                                      // 0x00864349    8bce
                         call               @FillPosAndHeading__8RPFollowFR7Point2DRff@20 // 0x0086434b    e850080000
                         {disp32} mov       eax, dword ptr [esi + 0x00064068]             // 0x00864350    8b8668400600
                         test               eax, eax                                      // 0x00864356    85c0
                         {disp8} je         _jmp_addr_0x008643b7                          // 0x00864358    745d
                         {disp32} mov       ecx, dword ptr [esi + 0x00064070]             // 0x0086435a    8b8e70400600
                         push               esi                                           // 0x00864360    56
                         call               @GetLength__9RouteNodeFP7RPAvoid@12           // 0x00864361    e83a4e0000
                         {disp8} fst        dword ptr [esp + 0x04]                        // 0x00864366    d9542404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]             // 0x0086436a    d81d40588c00
                         fnstsw             ax                                            // 0x00864370    dfe0
                         test               ah, 0x01                                      // 0x00864372    f6c401
                         {disp8} je         _jmp_addr_0x0086437f                          // 0x00864375    7408
                         {disp8} mov        dword ptr [esp + 0x04], 0x3c23d70a            // 0x00864377    c74424040ad7233c
_jmp_addr_0x0086437f:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0086437f    8b442404
                         {disp32} mov       ecx, dword ptr [esi + 0x00064060]             // 0x00864383    8b8e60400600
                         push               eax                                           // 0x00864389    50
                         push               0x0                                           // 0x0086438a    6a00
                         push               ecx                                           // 0x0086438c    51
                         call               dword ptr [esi + 0x64068]                     // 0x0086438d    ff9668400600
                         add                esp, 0x0c                                     // 0x00864393    83c40c
                         {disp8} jmp        _jmp_addr_0x008643b7                          // 0x00864396    eb1f
                         {disp32} mov       edx, dword ptr [esi + 0x000640bc]             // 0x00864398    8b96bc400600
                         {disp32} mov       eax, dword ptr [esi + edx * 0x4 + 0x000640a4] // 0x0086439e    8b8496a4400600
                         push               eax                                           // 0x008643a5    50
                         mov.s              ecx, esi                                      // 0x008643a6    8bce
                         call               _jmp_addr_0x00864420                          // 0x008643a8    e873000000
                         {disp32} mov       dword ptr [esi + 0x00064054], 0x00000003      // 0x008643ad    c7865440060003000000
_jmp_addr_0x008643b7:    {disp32} mov       eax, dword ptr [esi + 0x000640b8]             // 0x008643b7    8b86b8400600
                         test               eax, eax                                      // 0x008643bd    85c0
                         {disp8} jne        _jmp_addr_0x008643ff                          // 0x008643bf    753e
                         {disp32} mov       eax, dword ptr [esi + 0x00064058]             // 0x008643c1    8b8658400600
                         test               eax, eax                                      // 0x008643c7    85c0
                         {disp8} je         _jmp_addr_0x008643ff                          // 0x008643c9    7434
                         {disp32} mov       ecx, dword ptr [esi + 0x00064084]             // 0x008643cb    8b8e84400600
                         {disp32} mov       edx, dword ptr [esi + 0x0006404c]             // 0x008643d1    8b964c400600
                         {disp32} mov       eax, dword ptr [esi + 0x00064080]             // 0x008643d7    8b8680400600
                         push               ecx                                           // 0x008643dd    51
                         {disp32} mov       ecx, dword ptr [esi + 0x0006407c]             // 0x008643de    8b8e7c400600
                         push               edx                                           // 0x008643e4    52
                         push               eax                                           // 0x008643e5    50
                         push               ecx                                           // 0x008643e6    51
                         {disp32} lea       edx, dword ptr [esi + 0x00064074]             // 0x008643e7    8d9674400600
                         push               edx                                           // 0x008643ed    52
                         mov.s              ecx, esi                                      // 0x008643ee    8bce
                         {disp32} mov       dword ptr [esi + 0x00064058], 0x00000000      // 0x008643f0    c7865840060000000000
                         call               @SetDest__8RPFollowFRC7Point2Dffff@28         // 0x008643fa    e871f7ffff
_jmp_addr_0x008643ff:    pop                esi                                           // 0x008643ff    5e
                         pop                ecx                                           // 0x00864400    59
                         ret                                                              // 0x00864401    c3

// Snippet: db, [0x00864402, 0x00864404)
.byte 0x8b, 0xff                  // 0x00864402

// Snippet: jmptbl, [0x00864404, 0x00864418)
.byte 0xff, 0x43, 0x86, 0x00      // 0x00864404
.byte 0xff, 0x43, 0x86, 0x00      // 0x00864408
.byte 0xe4, 0x42, 0x86, 0x00      // 0x0086440c
.byte 0xff, 0x43, 0x86, 0x00      // 0x00864410
.byte 0x98, 0x43, 0x86, 0x00      // 0x00864414

// Snippet: db, [0x00864418, 0x00864420)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00864418
.byte 0x90, 0x90, 0x90, 0x90      // 0x0086441c

