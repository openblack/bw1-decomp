.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x00479440
.extern _jmp_addr_0x004d7810
.extern _jmp_addr_0x004d7930
.extern _jmp_addr_0x004d8b50
.extern _jmp_addr_0x004de270
.extern _jmp_addr_0x004de370
.extern _jmp_addr_0x004de550
.extern _jmp_addr_0x004de620
.extern _jmp_addr_0x004de780
.extern _jmp_addr_0x004e3730
.extern _jmp_addr_0x004e3800
.extern _jmp_addr_0x004e9a70
.extern _jmp_addr_0x004f12b0
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern ___RTDynamicCast

.globl _jmp_addr_0x004d8df0
.globl _jmp_addr_0x004d8e10
.globl ?Initialise@CreatureBeliefs@@QAEXXZ
.globl _jmp_addr_0x004d99e0
.globl _jmp_addr_0x004d99f0
.globl _jmp_addr_0x004d9aa0
.globl _jmp_addr_0x004d9ab0
.globl _jmp_addr_0x004d9b60
.globl _jmp_addr_0x004d9ba0
.globl _jmp_addr_0x004d9c90
.globl _jmp_addr_0x004d9d40
.globl _jmp_addr_0x004d9d50
.globl _jmp_addr_0x004daab0
.globl _jmp_addr_0x004daaf0
.globl _jmp_addr_0x004dab30
.globl _jmp_addr_0x004dab70
.globl _jmp_addr_0x004dabb0
.globl _jmp_addr_0x004dac30
.globl _jmp_addr_0x004dac70
.globl _jmp_addr_0x004dacb0
.globl _jmp_addr_0x004dacf0
.globl _jmp_addr_0x004db070
.globl _jmp_addr_0x004db110
.globl @__ct__15CreatureDesiresFP8CreaturePC12CreatureInfo@16
.globl _jmp_addr_0x004dc070
.globl _jmp_addr_0x004dc210
.globl _jmp_addr_0x004dc260
.globl _jmp_addr_0x004dc2d0
.globl _jmp_addr_0x004dc2f0
.globl _jmp_addr_0x004dc370
.globl _jmp_addr_0x004dc3d0
.globl _jmp_addr_0x004dc430
.globl _jmp_addr_0x004dc500
.globl _jmp_addr_0x004dc510
.globl _jmp_addr_0x004dc5b0
.globl _jmp_addr_0x004dc600
.globl _jmp_addr_0x004dc680
.globl _jmp_addr_0x004dc760
.globl _jmp_addr_0x004dc880
.globl _jmp_addr_0x004dc8a0
.globl _jmp_addr_0x004dc920
.globl _jmp_addr_0x004dc970
.globl _jmp_addr_0x004dc9a0
.globl _jmp_addr_0x004dc9f0
.globl _jmp_addr_0x004dca60
.globl _jmp_addr_0x004dcd50
.globl _jmp_addr_0x004dcda0
.globl _jmp_addr_0x004dcdd0
.globl _jmp_addr_0x004dce20

.globl _globl_ct_0x004d9610
.globl _globl_ct_0x004d9640
.globl _globl_ct_0x004d9670
.globl _globl_ct_0x004db220
.globl _globl_ct_0x004db250
.globl _globl_ct_0x004db280
.globl _globl_ct_0x004db2a0
.globl _globl_ct_0x004db380
.globl _globl_ct_0x004db440
.globl _globl_ct_0x004db520
.globl _globl_ct_0x004db5e0
.globl ??_GCreatureBeliefAboutMobileObject@@UAEPAXI@Z
.globl ?GetBaseInfo@CreatureDesireDependency@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GCreatureDesireDependency@@UAEPAXI@Z
.globl ?GetBaseInfo@CreatureDesireForType@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GCreatureDesireForType@@UAEPAXI@Z
.globl ?GetBaseInfo@CreatureDevelopmentPhaseEntry@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GCreatureDevelopmentPhaseEntry@@UAEPAXI@Z
.globl ?GetBaseInfo@CreatureDevelopmentDurationEntry@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GCreatureDevelopmentDurationEntry@@UAEPAXI@Z
.globl ??_GCreatureDesires@@UAEPAXI@Z

start_0x004d8df0_0x004dcf20:
// Snippet: asm, [0x004d8df0, 0x004dcee8)
_jmp_addr_0x004d8df0:    {disp8} mov        dword ptr [ecx + 0x34], 0x00000001                   // 0x004d8df0    c7413401000000
                         {disp32} mov       eax, dword ptr [_game]                               // 0x004d8df7    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00205a40]                    // 0x004d8dfc    8b90405a2000
                         {disp8} mov        dword ptr [ecx + 0x38], edx                          // 0x004d8e02    895138
                         ret                                                                     // 0x004d8e05    c3
                         nop                                                                     // 0x004d8e06    90
                         nop                                                                     // 0x004d8e07    90
                         nop                                                                     // 0x004d8e08    90
                         nop                                                                     // 0x004d8e09    90
                         nop                                                                     // 0x004d8e0a    90
                         nop                                                                     // 0x004d8e0b    90
                         nop                                                                     // 0x004d8e0c    90
                         nop                                                                     // 0x004d8e0d    90
                         nop                                                                     // 0x004d8e0e    90
                         nop                                                                     // 0x004d8e0f    90
_jmp_addr_0x004d8e10:    sub                esp, 0x08                                            // 0x004d8e10    83ec08
                         push               esi                                                  // 0x004d8e13    56
                         mov.s              esi, ecx                                             // 0x004d8e14    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x30]                          // 0x004d8e16    8b4630
                         test               byte ptr [eax + 0x24], 0x02                          // 0x004d8e19    f6402402
                         mov                eax, 0x000003e8                                      // 0x004d8e1d    b8e8030000
                         {disp8} je         _jmp_addr_0x004d8e44                                 // 0x004d8e22    7420
                         xor.s              edx, edx                                             // 0x004d8e24    33d2
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x004d8e26    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000                   // 0x004d8e2c    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x004d8e34    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                               // 0x004d8e38    df6c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a8]                    // 0x004d8e3c    d80da8368c00
                         {disp8} jmp        _jmp_addr_0x004d8e62                                 // 0x004d8e42    eb1e
_jmp_addr_0x004d8e44:    xor.s              edx, edx                                             // 0x004d8e44    33d2
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x004d8e46    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000                   // 0x004d8e4c    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x004d8e54    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                               // 0x004d8e58    df6c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]                     // 0x004d8e5c    d80d14b48a00
_jmp_addr_0x004d8e62:    call               _jmp_addr_0x007a1400                                 // 0x004d8e62    e899852c00
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                          // 0x004d8e67    8b4e34
                         test               ecx, ecx                                             // 0x004d8e6a    85c9
                         {disp8} je         _jmp_addr_0x004d8e88                                 // 0x004d8e6c    741a
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x004d8e6e    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]                    // 0x004d8e74    8b91405a2000
                         sub                edx, dword ptr [esi + 0x38]                          // 0x004d8e7a    2b5638
                         cmp.s              edx, eax                                             // 0x004d8e7d    3bd0
                         {disp8} jbe        _jmp_addr_0x004d8e8f                                 // 0x004d8e7f    760e
                         {disp8} mov        dword ptr [esi + 0x34], 0x00000000                   // 0x004d8e81    c7463400000000
_jmp_addr_0x004d8e88:    xor.s              eax, eax                                             // 0x004d8e88    33c0
                         pop                esi                                                  // 0x004d8e8a    5e
                         add                esp, 0x08                                            // 0x004d8e8b    83c408
                         ret                                                                     // 0x004d8e8e    c3
_jmp_addr_0x004d8e8f:    mov                eax, 0x00000001                                      // 0x004d8e8f    b801000000
                         pop                esi                                                  // 0x004d8e94    5e
                         add                esp, 0x08                                            // 0x004d8e95    83c408
                         ret                                                                     // 0x004d8e98    c3
                         nop                                                                     // 0x004d8e99    90
                         nop                                                                     // 0x004d8e9a    90
                         nop                                                                     // 0x004d8e9b    90
                         nop                                                                     // 0x004d8e9c    90
                         nop                                                                     // 0x004d8e9d    90
                         nop                                                                     // 0x004d8e9e    90
                         nop                                                                     // 0x004d8e9f    90
?Initialise@CreatureBeliefs@@QAEXXZ:
                                       push               ecx                                                  // 0x004d8ea0    51
                         push               ebx                                                  // 0x004d8ea1    53
                         push               ebp                                                  // 0x004d8ea2    55
                         push               esi                                                  // 0x004d8ea3    56
                         push               edi                                                  // 0x004d8ea4    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x004d8ea5    894c2410
                         {disp8} lea        ebx, dword ptr [ecx + 0x30]                          // 0x004d8ea9    8d5930
                         mov                edi, 0x00000028                                      // 0x004d8eac    bf28000000
                         xor.s              ebp, ebp                                             // 0x004d8eb1    33ed
_jmp_addr_0x004d8eb3:    push               0x00000432                                           // 0x004d8eb3    6832040000
                         push               0x00bdf3cc                                           // 0x004d8eb8    68ccf3bd00
                         push               0x78                                                 // 0x004d8ebd    6a78
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d8ebf    e82cd8f5ff
                         mov.s              esi, eax                                             // 0x004d8ec4    8bf0
                         add                esp, 0x0c                                            // 0x004d8ec6    83c40c
                         cmp.s              esi, ebp                                             // 0x004d8ec9    3bf5
                         {disp8} je         _jmp_addr_0x004d8ee6                                 // 0x004d8ecb    7419
                         mov.s              ecx, esi                                             // 0x004d8ecd    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d8ecf    e83ce9ffff
                         mov.s              ecx, esi                                             // 0x004d8ed4    8bce
                         mov                dword ptr [esi], 0x008cfdb4                          // 0x004d8ed6    c706b4fd8c00
                         call               _jmp_addr_0x004d99f0                                 // 0x004d8edc    e80f0b0000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d8ee1    896e20
                         {disp8} jmp        _jmp_addr_0x004d8ee8                                 // 0x004d8ee4    eb02
_jmp_addr_0x004d8ee6:    xor.s              esi, esi                                             // 0x004d8ee6    33f6
_jmp_addr_0x004d8ee8:    push               esi                                                  // 0x004d8ee8    56
                         mov.s              ecx, ebx                                             // 0x004d8ee9    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d8eeb    e840eaffff
                         dec                edi                                                  // 0x004d8ef0    4f
                         {disp8} jne        _jmp_addr_0x004d8eb3                                 // 0x004d8ef1    75c0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004d8ef3    8b442410
                         {disp32} lea       ebx, dword ptr [eax + 0x00000240]                    // 0x004d8ef7    8d9840020000
                         mov                edi, 0x00000028                                      // 0x004d8efd    bf28000000
_jmp_addr_0x004d8f02:    push               0x00000437                                           // 0x004d8f02    6837040000
                         push               0x00bdf3cc                                           // 0x004d8f07    68ccf3bd00
                         push               0x68                                                 // 0x004d8f0c    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d8f0e    e8ddd7f5ff
                         mov.s              esi, eax                                             // 0x004d8f13    8bf0
                         add                esp, 0x0c                                            // 0x004d8f15    83c40c
                         cmp.s              esi, ebp                                             // 0x004d8f18    3bf5
                         {disp8} je         _jmp_addr_0x004d8f35                                 // 0x004d8f1a    7419
                         mov.s              ecx, esi                                             // 0x004d8f1c    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d8f1e    e8ede8ffff
                         mov.s              ecx, esi                                             // 0x004d8f23    8bce
                         mov                dword ptr [esi], 0x008cfbbc                          // 0x004d8f25    c706bcfb8c00
                         call               _jmp_addr_0x004d9aa0                                 // 0x004d8f2b    e8700b0000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d8f30    896e20
                         {disp8} jmp        _jmp_addr_0x004d8f37                                 // 0x004d8f33    eb02
_jmp_addr_0x004d8f35:    xor.s              esi, esi                                             // 0x004d8f35    33f6
_jmp_addr_0x004d8f37:    push               esi                                                  // 0x004d8f37    56
                         mov.s              ecx, ebx                                             // 0x004d8f38    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d8f3a    e8f1e9ffff
                         dec                edi                                                  // 0x004d8f3f    4f
                         {disp8} jne        _jmp_addr_0x004d8f02                                 // 0x004d8f40    75c0
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004d8f42    8b4c2410
                         {disp8} lea        ebx, dword ptr [ecx + 0x48]                          // 0x004d8f46    8d5948
                         mov                edi, 0x00000032                                      // 0x004d8f49    bf32000000
_jmp_addr_0x004d8f4e:    push               0x0000043c                                           // 0x004d8f4e    683c040000
                         push               0x00bdf3cc                                           // 0x004d8f53    68ccf3bd00
                         push               0x6c                                                 // 0x004d8f58    6a6c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d8f5a    e891d7f5ff
                         mov.s              esi, eax                                             // 0x004d8f5f    8bf0
                         add                esp, 0x0c                                            // 0x004d8f61    83c40c
                         cmp.s              esi, ebp                                             // 0x004d8f64    3bf5
                         {disp8} je         _jmp_addr_0x004d8f81                                 // 0x004d8f66    7419
                         mov.s              ecx, esi                                             // 0x004d8f68    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d8f6a    e8a1e8ffff
                         mov.s              ecx, esi                                             // 0x004d8f6f    8bce
                         mov                dword ptr [esi], 0x008cfd6c                          // 0x004d8f71    c7066cfd8c00
                         call               _jmp_addr_0x004d9b60                                 // 0x004d8f77    e8e40b0000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d8f7c    896e20
                         {disp8} jmp        _jmp_addr_0x004d8f83                                 // 0x004d8f7f    eb02
_jmp_addr_0x004d8f81:    xor.s              esi, esi                                             // 0x004d8f81    33f6
_jmp_addr_0x004d8f83:    push               esi                                                  // 0x004d8f83    56
                         mov.s              ecx, ebx                                             // 0x004d8f84    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d8f86    e8a5e9ffff
                         dec                edi                                                  // 0x004d8f8b    4f
                         {disp8} jne        _jmp_addr_0x004d8f4e                                 // 0x004d8f8c    75c0
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004d8f8e    8b542410
                         {disp8} lea        ebx, dword ptr [edx + 0x60]                          // 0x004d8f92    8d5a60
                         mov                edi, 0x00000014                                      // 0x004d8f95    bf14000000
_jmp_addr_0x004d8f9a:    push               0x00000441                                           // 0x004d8f9a    6841040000
                         push               0x00bdf3cc                                           // 0x004d8f9f    68ccf3bd00
                         push               0x68                                                 // 0x004d8fa4    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d8fa6    e845d7f5ff
                         mov.s              esi, eax                                             // 0x004d8fab    8bf0
                         add                esp, 0x0c                                            // 0x004d8fad    83c40c
                         cmp.s              esi, ebp                                             // 0x004d8fb0    3bf5
                         {disp8} je         _jmp_addr_0x004d8fcd                                 // 0x004d8fb2    7419
                         mov.s              ecx, esi                                             // 0x004d8fb4    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d8fb6    e855e8ffff
                         mov.s              ecx, esi                                             // 0x004d8fbb    8bce
                         mov                dword ptr [esi], 0x008cfc4c                          // 0x004d8fbd    c7064cfc8c00
                         call               _jmp_addr_0x004d9d40                                 // 0x004d8fc3    e8780d0000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d8fc8    896e20
                         {disp8} jmp        _jmp_addr_0x004d8fcf                                 // 0x004d8fcb    eb02
_jmp_addr_0x004d8fcd:    xor.s              esi, esi                                             // 0x004d8fcd    33f6
_jmp_addr_0x004d8fcf:    push               esi                                                  // 0x004d8fcf    56
                         mov.s              ecx, ebx                                             // 0x004d8fd0    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d8fd2    e859e9ffff
                         dec                edi                                                  // 0x004d8fd7    4f
                         {disp8} jne        _jmp_addr_0x004d8f9a                                 // 0x004d8fd8    75c0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004d8fda    8b442410
                         {disp8} lea        ebx, dword ptr [eax + 0x78]                          // 0x004d8fde    8d5878
                         mov                edi, 0x00000064                                      // 0x004d8fe1    bf64000000
_jmp_addr_0x004d8fe6:    push               0x00000446                                           // 0x004d8fe6    6846040000
                         push               0x00bdf3cc                                           // 0x004d8feb    68ccf3bd00
                         push               0x78                                                 // 0x004d8ff0    6a78
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d8ff2    e8f9d6f5ff
                         mov.s              esi, eax                                             // 0x004d8ff7    8bf0
                         add                esp, 0x0c                                            // 0x004d8ff9    83c40c
                         cmp.s              esi, ebp                                             // 0x004d8ffc    3bf5
                         {disp8} je         _jmp_addr_0x004d9019                                 // 0x004d8ffe    7419
                         mov.s              ecx, esi                                             // 0x004d9000    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d9002    e809e8ffff
                         mov.s              ecx, esi                                             // 0x004d9007    8bce
                         mov                dword ptr [esi], 0x008cfc94                          // 0x004d9009    c70694fc8c00
                         call               _jmp_addr_0x004d9c90                                 // 0x004d900f    e87c0c0000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d9014    896e20
                         {disp8} jmp        _jmp_addr_0x004d901b                                 // 0x004d9017    eb02
_jmp_addr_0x004d9019:    xor.s              esi, esi                                             // 0x004d9019    33f6
_jmp_addr_0x004d901b:    push               esi                                                  // 0x004d901b    56
                         mov.s              ecx, ebx                                             // 0x004d901c    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d901e    e80de9ffff
                         dec                edi                                                  // 0x004d9023    4f
                         {disp8} jne        _jmp_addr_0x004d8fe6                                 // 0x004d9024    75c0
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004d9026    8b4c2410
                         {disp32} lea       ebx, dword ptr [ecx + 0x00000090]                    // 0x004d902a    8d9990000000
                         mov                edi, 0x00000032                                      // 0x004d9030    bf32000000
_jmp_addr_0x004d9035:    push               0x0000044b                                           // 0x004d9035    684b040000
                         push               0x00bdf3cc                                           // 0x004d903a    68ccf3bd00
                         push               0x68                                                 // 0x004d903f    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9041    e8aad6f5ff
                         mov.s              esi, eax                                             // 0x004d9046    8bf0
                         add                esp, 0x0c                                            // 0x004d9048    83c40c
                         cmp.s              esi, ebp                                             // 0x004d904b    3bf5
                         {disp8} je         _jmp_addr_0x004d9068                                 // 0x004d904d    7419
                         mov.s              ecx, esi                                             // 0x004d904f    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d9051    e8bae7ffff
                         mov.s              ecx, esi                                             // 0x004d9056    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d9058    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d905e    e87d090000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d9063    896e20
                         {disp8} jmp        _jmp_addr_0x004d906a                                 // 0x004d9066    eb02
_jmp_addr_0x004d9068:    xor.s              esi, esi                                             // 0x004d9068    33f6
_jmp_addr_0x004d906a:    push               esi                                                  // 0x004d906a    56
                         mov.s              ecx, ebx                                             // 0x004d906b    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d906d    e8bee8ffff
                         dec                edi                                                  // 0x004d9072    4f
                         {disp8} jne        _jmp_addr_0x004d9035                                 // 0x004d9073    75c0
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004d9075    8b542410
                         {disp32} lea       ebx, dword ptr [edx + 0x000000a8]                    // 0x004d9079    8d9aa8000000
                         mov                edi, 0x00000064                                      // 0x004d907f    bf64000000
_jmp_addr_0x004d9084:    push               0x00000450                                           // 0x004d9084    6850040000
                         push               0x00bdf3cc                                           // 0x004d9089    68ccf3bd00
                         push               0x68                                                 // 0x004d908e    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9090    e85bd6f5ff
                         mov.s              esi, eax                                             // 0x004d9095    8bf0
                         add                esp, 0x0c                                            // 0x004d9097    83c40c
                         cmp.s              esi, ebp                                             // 0x004d909a    3bf5
                         {disp8} je         _jmp_addr_0x004d90b7                                 // 0x004d909c    7419
                         mov.s              ecx, esi                                             // 0x004d909e    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d90a0    e86be7ffff
                         mov.s              ecx, esi                                             // 0x004d90a5    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d90a7    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d90ad    e82e090000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d90b2    896e20
                         {disp8} jmp        _jmp_addr_0x004d90b9                                 // 0x004d90b5    eb02
_jmp_addr_0x004d90b7:    xor.s              esi, esi                                             // 0x004d90b7    33f6
_jmp_addr_0x004d90b9:    push               esi                                                  // 0x004d90b9    56
                         mov.s              ecx, ebx                                             // 0x004d90ba    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d90bc    e86fe8ffff
                         dec                edi                                                  // 0x004d90c1    4f
                         {disp8} jne        _jmp_addr_0x004d9084                                 // 0x004d90c2    75c0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004d90c4    8b442410
                         {disp32} lea       ebx, dword ptr [eax + 0x000000c0]                    // 0x004d90c8    8d98c0000000
                         mov                edi, 0x00000064                                      // 0x004d90ce    bf64000000
_jmp_addr_0x004d90d3:    push               0x00000455                                           // 0x004d90d3    6855040000
                         push               0x00bdf3cc                                           // 0x004d90d8    68ccf3bd00
                         push               0x78                                                 // 0x004d90dd    6a78
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d90df    e80cd6f5ff
                         mov.s              esi, eax                                             // 0x004d90e4    8bf0
                         add                esp, 0x0c                                            // 0x004d90e6    83c40c
                         cmp.s              esi, ebp                                             // 0x004d90e9    3bf5
                         {disp8} je         _jmp_addr_0x004d9106                                 // 0x004d90eb    7419
                         mov.s              ecx, esi                                             // 0x004d90ed    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d90ef    e81ce7ffff
                         mov.s              ecx, esi                                             // 0x004d90f4    8bce
                         mov                dword ptr [esi], 0x008cfcdc                          // 0x004d90f6    c706dcfc8c00
                         call               _jmp_addr_0x004d9ba0                                 // 0x004d90fc    e89f0a0000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d9101    896e20
                         {disp8} jmp        _jmp_addr_0x004d9108                                 // 0x004d9104    eb02
_jmp_addr_0x004d9106:    xor.s              esi, esi                                             // 0x004d9106    33f6
_jmp_addr_0x004d9108:    push               esi                                                  // 0x004d9108    56
                         mov.s              ecx, ebx                                             // 0x004d9109    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d910b    e820e8ffff
                         dec                edi                                                  // 0x004d9110    4f
                         {disp8} jne        _jmp_addr_0x004d90d3                                 // 0x004d9111    75c0
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004d9113    8b4c2410
                         {disp32} lea       ebx, dword ptr [ecx + 0x000000d8]                    // 0x004d9117    8d99d8000000
                         mov                edi, 0x00000064                                      // 0x004d911d    bf64000000
_jmp_addr_0x004d9122:    push               0x0000045a                                           // 0x004d9122    685a040000
                         push               0x00bdf3cc                                           // 0x004d9127    68ccf3bd00
                         push               0x68                                                 // 0x004d912c    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d912e    e8bdd5f5ff
                         mov.s              esi, eax                                             // 0x004d9133    8bf0
                         add                esp, 0x0c                                            // 0x004d9135    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9138    3bf5
                         {disp8} je         _jmp_addr_0x004d9155                                 // 0x004d913a    7419
                         mov.s              ecx, esi                                             // 0x004d913c    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d913e    e8cde6ffff
                         mov.s              ecx, esi                                             // 0x004d9143    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d9145    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d914b    e890080000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d9150    896e20
                         {disp8} jmp        _jmp_addr_0x004d9157                                 // 0x004d9153    eb02
_jmp_addr_0x004d9155:    xor.s              esi, esi                                             // 0x004d9155    33f6
_jmp_addr_0x004d9157:    push               esi                                                  // 0x004d9157    56
                         mov.s              ecx, ebx                                             // 0x004d9158    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d915a    e8d1e7ffff
                         dec                edi                                                  // 0x004d915f    4f
                         {disp8} jne        _jmp_addr_0x004d9122                                 // 0x004d9160    75c0
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004d9162    8b542410
                         {disp32} lea       ebx, dword ptr [edx + 0x000000f0]                    // 0x004d9166    8d9af0000000
                         mov                edi, 0x00000064                                      // 0x004d916c    bf64000000
_jmp_addr_0x004d9171:    push               0x0000045f                                           // 0x004d9171    685f040000
                         push               0x00bdf3cc                                           // 0x004d9176    68ccf3bd00
                         push               0x7c                                                 // 0x004d917b    6a7c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d917d    e86ed5f5ff
                         mov.s              esi, eax                                             // 0x004d9182    8bf0
                         add                esp, 0x0c                                            // 0x004d9184    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9187    3bf5
                         {disp8} je         _jmp_addr_0x004d91a7                                 // 0x004d9189    741c
                         mov.s              ecx, esi                                             // 0x004d918b    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d918d    e87ee6ffff
                         mov.s              ecx, esi                                             // 0x004d9192    8bce
                         mov                dword ptr [esi], 0x008cfd24                          // 0x004d9194    c70624fd8c00
                         call               _jmp_addr_0x004d9ab0                                 // 0x004d919a    e811090000
                         {disp8} mov        dword ptr [esi + 0x78], ebp                          // 0x004d919f    896e78
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d91a2    896e20
                         {disp8} jmp        _jmp_addr_0x004d91a9                                 // 0x004d91a5    eb02
_jmp_addr_0x004d91a7:    xor.s              esi, esi                                             // 0x004d91a7    33f6
_jmp_addr_0x004d91a9:    push               esi                                                  // 0x004d91a9    56
                         mov.s              ecx, ebx                                             // 0x004d91aa    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d91ac    e87fe7ffff
                         dec                edi                                                  // 0x004d91b1    4f
                         {disp8} jne        _jmp_addr_0x004d9171                                 // 0x004d91b2    75bd
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004d91b4    8b442410
                         {disp32} lea       ebx, dword ptr [eax + 0x00000108]                    // 0x004d91b8    8d9808010000
                         mov                edi, 0x0000001e                                      // 0x004d91be    bf1e000000
_jmp_addr_0x004d91c3:    push               0x00000464                                           // 0x004d91c3    6864040000
                         push               0x00bdf3cc                                           // 0x004d91c8    68ccf3bd00
                         push               0x68                                                 // 0x004d91cd    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d91cf    e81cd5f5ff
                         mov.s              esi, eax                                             // 0x004d91d4    8bf0
                         add                esp, 0x0c                                            // 0x004d91d6    83c40c
                         cmp.s              esi, ebp                                             // 0x004d91d9    3bf5
                         {disp8} je         _jmp_addr_0x004d91f6                                 // 0x004d91db    7419
                         mov.s              ecx, esi                                             // 0x004d91dd    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d91df    e82ce6ffff
                         mov.s              ecx, esi                                             // 0x004d91e4    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d91e6    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d91ec    e8ef070000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d91f1    896e20
                         {disp8} jmp        _jmp_addr_0x004d91f8                                 // 0x004d91f4    eb02
_jmp_addr_0x004d91f6:    xor.s              esi, esi                                             // 0x004d91f6    33f6
_jmp_addr_0x004d91f8:    push               esi                                                  // 0x004d91f8    56
                         mov.s              ecx, ebx                                             // 0x004d91f9    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d91fb    e830e7ffff
                         dec                edi                                                  // 0x004d9200    4f
                         {disp8} jne        _jmp_addr_0x004d91c3                                 // 0x004d9201    75c0
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004d9203    8b4c2410
                         {disp32} lea       ebx, dword ptr [ecx + 0x00000120]                    // 0x004d9207    8d9920010000
                         mov                edi, 0x00000064                                      // 0x004d920d    bf64000000
_jmp_addr_0x004d9212:    push               0x00000469                                           // 0x004d9212    6869040000
                         push               0x00bdf3cc                                           // 0x004d9217    68ccf3bd00
                         push               0x68                                                 // 0x004d921c    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d921e    e8cdd4f5ff
                         mov.s              esi, eax                                             // 0x004d9223    8bf0
                         add                esp, 0x0c                                            // 0x004d9225    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9228    3bf5
                         {disp8} je         _jmp_addr_0x004d9245                                 // 0x004d922a    7419
                         mov.s              ecx, esi                                             // 0x004d922c    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d922e    e8dde5ffff
                         mov.s              ecx, esi                                             // 0x004d9233    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d9235    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d923b    e8a0070000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d9240    896e20
                         {disp8} jmp        _jmp_addr_0x004d9247                                 // 0x004d9243    eb02
_jmp_addr_0x004d9245:    xor.s              esi, esi                                             // 0x004d9245    33f6
_jmp_addr_0x004d9247:    push               esi                                                  // 0x004d9247    56
                         mov.s              ecx, ebx                                             // 0x004d9248    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d924a    e8e1e6ffff
                         dec                edi                                                  // 0x004d924f    4f
                         {disp8} jne        _jmp_addr_0x004d9212                                 // 0x004d9250    75c0
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004d9252    8b542410
                         {disp32} lea       ebx, dword ptr [edx + 0x00000138]                    // 0x004d9256    8d9a38010000
                         mov                edi, 0x00000028                                      // 0x004d925c    bf28000000
_jmp_addr_0x004d9261:    push               0x0000046e                                           // 0x004d9261    686e040000
                         push               0x00bdf3cc                                           // 0x004d9266    68ccf3bd00
                         push               0x68                                                 // 0x004d926b    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d926d    e87ed4f5ff
                         mov.s              esi, eax                                             // 0x004d9272    8bf0
                         add                esp, 0x0c                                            // 0x004d9274    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9277    3bf5
                         {disp8} je         _jmp_addr_0x004d9294                                 // 0x004d9279    7419
                         mov.s              ecx, esi                                             // 0x004d927b    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d927d    e88ee5ffff
                         mov.s              ecx, esi                                             // 0x004d9282    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d9284    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d928a    e851070000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d928f    896e20
                         {disp8} jmp        _jmp_addr_0x004d9296                                 // 0x004d9292    eb02
_jmp_addr_0x004d9294:    xor.s              esi, esi                                             // 0x004d9294    33f6
_jmp_addr_0x004d9296:    push               esi                                                  // 0x004d9296    56
                         mov.s              ecx, ebx                                             // 0x004d9297    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d9299    e892e6ffff
                         dec                edi                                                  // 0x004d929e    4f
                         {disp8} jne        _jmp_addr_0x004d9261                                 // 0x004d929f    75c0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004d92a1    8b442410
                         {disp32} lea       ebx, dword ptr [eax + 0x00000150]                    // 0x004d92a5    8d9850010000
                         mov                edi, 0x00000064                                      // 0x004d92ab    bf64000000
_jmp_addr_0x004d92b0:    push               0x00000473                                           // 0x004d92b0    6873040000
                         push               0x00bdf3cc                                           // 0x004d92b5    68ccf3bd00
                         push               0x68                                                 // 0x004d92ba    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d92bc    e82fd4f5ff
                         mov.s              esi, eax                                             // 0x004d92c1    8bf0
                         add                esp, 0x0c                                            // 0x004d92c3    83c40c
                         cmp.s              esi, ebp                                             // 0x004d92c6    3bf5
                         {disp8} je         _jmp_addr_0x004d92e3                                 // 0x004d92c8    7419
                         mov.s              ecx, esi                                             // 0x004d92ca    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d92cc    e83fe5ffff
                         mov.s              ecx, esi                                             // 0x004d92d1    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d92d3    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d92d9    e802070000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d92de    896e20
                         {disp8} jmp        _jmp_addr_0x004d92e5                                 // 0x004d92e1    eb02
_jmp_addr_0x004d92e3:    xor.s              esi, esi                                             // 0x004d92e3    33f6
_jmp_addr_0x004d92e5:    push               esi                                                  // 0x004d92e5    56
                         mov.s              ecx, ebx                                             // 0x004d92e6    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d92e8    e843e6ffff
                         dec                edi                                                  // 0x004d92ed    4f
                         {disp8} jne        _jmp_addr_0x004d92b0                                 // 0x004d92ee    75c0
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004d92f0    8b4c2410
                         {disp32} lea       ebx, dword ptr [ecx + 0x00000168]                    // 0x004d92f4    8d9968010000
                         mov                edi, 0x00000064                                      // 0x004d92fa    bf64000000
_jmp_addr_0x004d92ff:    push               0x00000478                                           // 0x004d92ff    6878040000
                         push               0x00bdf3cc                                           // 0x004d9304    68ccf3bd00
                         push               0x68                                                 // 0x004d9309    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d930b    e8e0d3f5ff
                         mov.s              esi, eax                                             // 0x004d9310    8bf0
                         add                esp, 0x0c                                            // 0x004d9312    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9315    3bf5
                         {disp8} je         _jmp_addr_0x004d9332                                 // 0x004d9317    7419
                         mov.s              ecx, esi                                             // 0x004d9319    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d931b    e8f0e4ffff
                         mov.s              ecx, esi                                             // 0x004d9320    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d9322    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d9328    e8b3060000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d932d    896e20
                         {disp8} jmp        _jmp_addr_0x004d9334                                 // 0x004d9330    eb02
_jmp_addr_0x004d9332:    xor.s              esi, esi                                             // 0x004d9332    33f6
_jmp_addr_0x004d9334:    push               esi                                                  // 0x004d9334    56
                         mov.s              ecx, ebx                                             // 0x004d9335    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d9337    e8f4e5ffff
                         dec                edi                                                  // 0x004d933c    4f
                         {disp8} jne        _jmp_addr_0x004d92ff                                 // 0x004d933d    75c0
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004d933f    8b542410
                         {disp32} lea       ebx, dword ptr [edx + 0x00000180]                    // 0x004d9343    8d9a80010000
                         mov                edi, 0x00000064                                      // 0x004d9349    bf64000000
_jmp_addr_0x004d934e:    push               0x0000047d                                           // 0x004d934e    687d040000
                         push               0x00bdf3cc                                           // 0x004d9353    68ccf3bd00
                         push               0x68                                                 // 0x004d9358    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d935a    e891d3f5ff
                         mov.s              esi, eax                                             // 0x004d935f    8bf0
                         add                esp, 0x0c                                            // 0x004d9361    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9364    3bf5
                         {disp8} je         _jmp_addr_0x004d9381                                 // 0x004d9366    7419
                         mov.s              ecx, esi                                             // 0x004d9368    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d936a    e8a1e4ffff
                         mov.s              ecx, esi                                             // 0x004d936f    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d9371    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d9377    e864060000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d937c    896e20
                         {disp8} jmp        _jmp_addr_0x004d9383                                 // 0x004d937f    eb02
_jmp_addr_0x004d9381:    xor.s              esi, esi                                             // 0x004d9381    33f6
_jmp_addr_0x004d9383:    push               esi                                                  // 0x004d9383    56
                         mov.s              ecx, ebx                                             // 0x004d9384    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d9386    e8a5e5ffff
                         dec                edi                                                  // 0x004d938b    4f
                         {disp8} jne        _jmp_addr_0x004d934e                                 // 0x004d938c    75c0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004d938e    8b442410
                         {disp32} lea       ebx, dword ptr [eax + 0x00000198]                    // 0x004d9392    8d9898010000
                         mov                edi, 0x00000064                                      // 0x004d9398    bf64000000
_jmp_addr_0x004d939d:    push               0x00000482                                           // 0x004d939d    6882040000
                         push               0x00bdf3cc                                           // 0x004d93a2    68ccf3bd00
                         push               0x68                                                 // 0x004d93a7    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d93a9    e842d3f5ff
                         mov.s              esi, eax                                             // 0x004d93ae    8bf0
                         add                esp, 0x0c                                            // 0x004d93b0    83c40c
                         cmp.s              esi, ebp                                             // 0x004d93b3    3bf5
                         {disp8} je         _jmp_addr_0x004d93d0                                 // 0x004d93b5    7419
                         mov.s              ecx, esi                                             // 0x004d93b7    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d93b9    e852e4ffff
                         mov.s              ecx, esi                                             // 0x004d93be    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d93c0    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d93c6    e815060000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d93cb    896e20
                         {disp8} jmp        _jmp_addr_0x004d93d2                                 // 0x004d93ce    eb02
_jmp_addr_0x004d93d0:    xor.s              esi, esi                                             // 0x004d93d0    33f6
_jmp_addr_0x004d93d2:    push               esi                                                  // 0x004d93d2    56
                         mov.s              ecx, ebx                                             // 0x004d93d3    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d93d5    e856e5ffff
                         dec                edi                                                  // 0x004d93da    4f
                         {disp8} jne        _jmp_addr_0x004d939d                                 // 0x004d93db    75c0
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004d93dd    8b4c2410
                         {disp32} lea       ebx, dword ptr [ecx + 0x000001b0]                    // 0x004d93e1    8d99b0010000
                         mov                edi, 0x00000064                                      // 0x004d93e7    bf64000000
_jmp_addr_0x004d93ec:    push               0x00000487                                           // 0x004d93ec    6887040000
                         push               0x00bdf3cc                                           // 0x004d93f1    68ccf3bd00
                         push               0x68                                                 // 0x004d93f6    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d93f8    e8f3d2f5ff
                         mov.s              esi, eax                                             // 0x004d93fd    8bf0
                         add                esp, 0x0c                                            // 0x004d93ff    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9402    3bf5
                         {disp8} je         _jmp_addr_0x004d941f                                 // 0x004d9404    7419
                         mov.s              ecx, esi                                             // 0x004d9406    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d9408    e803e4ffff
                         mov.s              ecx, esi                                             // 0x004d940d    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d940f    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d9415    e8c6050000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d941a    896e20
                         {disp8} jmp        _jmp_addr_0x004d9421                                 // 0x004d941d    eb02
_jmp_addr_0x004d941f:    xor.s              esi, esi                                             // 0x004d941f    33f6
_jmp_addr_0x004d9421:    push               esi                                                  // 0x004d9421    56
                         mov.s              ecx, ebx                                             // 0x004d9422    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d9424    e807e5ffff
                         dec                edi                                                  // 0x004d9429    4f
                         {disp8} jne        _jmp_addr_0x004d93ec                                 // 0x004d942a    75c0
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004d942c    8b542410
                         {disp32} lea       ebx, dword ptr [edx + 0x000001c8]                    // 0x004d9430    8d9ac8010000
                         mov                edi, 0x00000064                                      // 0x004d9436    bf64000000
_jmp_addr_0x004d943b:    push               0x0000048c                                           // 0x004d943b    688c040000
                         push               0x00bdf3cc                                           // 0x004d9440    68ccf3bd00
                         push               0x68                                                 // 0x004d9445    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9447    e8a4d2f5ff
                         mov.s              esi, eax                                             // 0x004d944c    8bf0
                         add                esp, 0x0c                                            // 0x004d944e    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9451    3bf5
                         {disp8} je         _jmp_addr_0x004d946e                                 // 0x004d9453    7419
                         mov.s              ecx, esi                                             // 0x004d9455    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d9457    e8b4e3ffff
                         mov.s              ecx, esi                                             // 0x004d945c    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d945e    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d9464    e877050000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d9469    896e20
                         {disp8} jmp        _jmp_addr_0x004d9470                                 // 0x004d946c    eb02
_jmp_addr_0x004d946e:    xor.s              esi, esi                                             // 0x004d946e    33f6
_jmp_addr_0x004d9470:    push               esi                                                  // 0x004d9470    56
                         mov.s              ecx, ebx                                             // 0x004d9471    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d9473    e8b8e4ffff
                         dec                edi                                                  // 0x004d9478    4f
                         {disp8} jne        _jmp_addr_0x004d943b                                 // 0x004d9479    75c0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004d947b    8b442410
                         {disp32} lea       ebx, dword ptr [eax + 0x000001e0]                    // 0x004d947f    8d98e0010000
                         mov                edi, 0x00000064                                      // 0x004d9485    bf64000000
_jmp_addr_0x004d948a:    push               0x00000491                                           // 0x004d948a    6891040000
                         push               0x00bdf3cc                                           // 0x004d948f    68ccf3bd00
                         push               0x68                                                 // 0x004d9494    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9496    e855d2f5ff
                         mov.s              esi, eax                                             // 0x004d949b    8bf0
                         add                esp, 0x0c                                            // 0x004d949d    83c40c
                         cmp.s              esi, ebp                                             // 0x004d94a0    3bf5
                         {disp8} je         _jmp_addr_0x004d94bd                                 // 0x004d94a2    7419
                         mov.s              ecx, esi                                             // 0x004d94a4    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d94a6    e865e3ffff
                         mov.s              ecx, esi                                             // 0x004d94ab    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d94ad    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d94b3    e828050000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d94b8    896e20
                         {disp8} jmp        _jmp_addr_0x004d94bf                                 // 0x004d94bb    eb02
_jmp_addr_0x004d94bd:    xor.s              esi, esi                                             // 0x004d94bd    33f6
_jmp_addr_0x004d94bf:    push               esi                                                  // 0x004d94bf    56
                         mov.s              ecx, ebx                                             // 0x004d94c0    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d94c2    e869e4ffff
                         dec                edi                                                  // 0x004d94c7    4f
                         {disp8} jne        _jmp_addr_0x004d948a                                 // 0x004d94c8    75c0
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004d94ca    8b4c2410
                         {disp32} lea       ebx, dword ptr [ecx + 0x000001f8]                    // 0x004d94ce    8d99f8010000
                         mov                edi, 0x00000064                                      // 0x004d94d4    bf64000000
_jmp_addr_0x004d94d9:    push               0x00000496                                           // 0x004d94d9    6896040000
                         push               0x00bdf3cc                                           // 0x004d94de    68ccf3bd00
                         push               0x68                                                 // 0x004d94e3    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d94e5    e806d2f5ff
                         mov.s              esi, eax                                             // 0x004d94ea    8bf0
                         add                esp, 0x0c                                            // 0x004d94ec    83c40c
                         cmp.s              esi, ebp                                             // 0x004d94ef    3bf5
                         {disp8} je         _jmp_addr_0x004d950c                                 // 0x004d94f1    7419
                         mov.s              ecx, esi                                             // 0x004d94f3    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d94f5    e816e3ffff
                         mov.s              ecx, esi                                             // 0x004d94fa    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d94fc    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d9502    e8d9040000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d9507    896e20
                         {disp8} jmp        _jmp_addr_0x004d950e                                 // 0x004d950a    eb02
_jmp_addr_0x004d950c:    xor.s              esi, esi                                             // 0x004d950c    33f6
_jmp_addr_0x004d950e:    push               esi                                                  // 0x004d950e    56
                         mov.s              ecx, ebx                                             // 0x004d950f    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d9511    e81ae4ffff
                         dec                edi                                                  // 0x004d9516    4f
                         {disp8} jne        _jmp_addr_0x004d94d9                                 // 0x004d9517    75c0
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004d9519    8b542410
                         push               0x0000049b                                           // 0x004d951d    689b040000
                         push               0x00bdf3cc                                           // 0x004d9522    68ccf3bd00
                         push               0x4c                                                 // 0x004d9527    6a4c
                         {disp32} lea       edi, dword ptr [edx + 0x00000210]                    // 0x004d9529    8dba10020000
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d952f    e8bcd1f5ff
                         mov.s              esi, eax                                             // 0x004d9534    8bf0
                         add                esp, 0x0c                                            // 0x004d9536    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9539    3bf5
                         {disp8} je         _jmp_addr_0x004d9556                                 // 0x004d953b    7419
                         mov.s              ecx, esi                                             // 0x004d953d    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d953f    e8cce2ffff
                         mov.s              ecx, esi                                             // 0x004d9544    8bce
                         mov                dword ptr [esi], 0x008cfc04                          // 0x004d9546    c70604fc8c00
                         call               _jmp_addr_0x004d9d50                                 // 0x004d954c    e8ff070000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d9551    896e20
                         {disp8} jmp        _jmp_addr_0x004d9558                                 // 0x004d9554    eb02
_jmp_addr_0x004d9556:    xor.s              esi, esi                                             // 0x004d9556    33f6
_jmp_addr_0x004d9558:    push               esi                                                  // 0x004d9558    56
                         mov.s              ecx, edi                                             // 0x004d9559    8bcf
                         call               _jmp_addr_0x004d7930                                 // 0x004d955b    e8d0e3ffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004d9560    8b442410
                         {disp32} lea       ebx, dword ptr [eax + 0x00000228]                    // 0x004d9564    8d9828020000
                         mov                edi, 0x00000064                                      // 0x004d956a    bf64000000
_jmp_addr_0x004d956f:    push               0x000004a0                                           // 0x004d956f    68a0040000
                         push               0x00bdf3cc                                           // 0x004d9574    68ccf3bd00
                         push               0x68                                                 // 0x004d9579    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d957b    e870d1f5ff
                         mov.s              esi, eax                                             // 0x004d9580    8bf0
                         add                esp, 0x0c                                            // 0x004d9582    83c40c
                         cmp.s              esi, ebp                                             // 0x004d9585    3bf5
                         {disp8} je         _jmp_addr_0x004d95a2                                 // 0x004d9587    7419
                         mov.s              ecx, esi                                             // 0x004d9589    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d958b    e880e2ffff
                         mov.s              ecx, esi                                             // 0x004d9590    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d9592    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d9598    e843040000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d959d    896e20
                         {disp8} jmp        _jmp_addr_0x004d95a4                                 // 0x004d95a0    eb02
_jmp_addr_0x004d95a2:    xor.s              esi, esi                                             // 0x004d95a2    33f6
_jmp_addr_0x004d95a4:    push               esi                                                  // 0x004d95a4    56
                         mov.s              ecx, ebx                                             // 0x004d95a5    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d95a7    e884e3ffff
                         dec                edi                                                  // 0x004d95ac    4f
                         {disp8} jne        _jmp_addr_0x004d956f                                 // 0x004d95ad    75c0
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004d95af    8b4c2410
                         {disp32} lea       ebx, dword ptr [ecx + 0x00000258]                    // 0x004d95b3    8d9958020000
                         mov                edi, 0x00000014                                      // 0x004d95b9    bf14000000
_jmp_addr_0x004d95be:    push               0x000004a5                                           // 0x004d95be    68a5040000
                         push               0x00bdf3cc                                           // 0x004d95c3    68ccf3bd00
                         push               0x68                                                 // 0x004d95c8    6a68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d95ca    e821d1f5ff
                         mov.s              esi, eax                                             // 0x004d95cf    8bf0
                         add                esp, 0x0c                                            // 0x004d95d1    83c40c
                         cmp.s              esi, ebp                                             // 0x004d95d4    3bf5
                         {disp8} je         _jmp_addr_0x004d95f1                                 // 0x004d95d6    7419
                         mov.s              ecx, esi                                             // 0x004d95d8    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d95da    e831e2ffff
                         mov.s              ecx, esi                                             // 0x004d95df    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d95e1    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d95e7    e8f4030000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                          // 0x004d95ec    896e20
                         {disp8} jmp        _jmp_addr_0x004d95f3                                 // 0x004d95ef    eb02
_jmp_addr_0x004d95f1:    xor.s              esi, esi                                             // 0x004d95f1    33f6
_jmp_addr_0x004d95f3:    push               esi                                                  // 0x004d95f3    56
                         mov.s              ecx, ebx                                             // 0x004d95f4    8bcb
                         call               _jmp_addr_0x004d7930                                 // 0x004d95f6    e835e3ffff
                         dec                edi                                                  // 0x004d95fb    4f
                         {disp8} jne        _jmp_addr_0x004d95be                                 // 0x004d95fc    75c0
                         pop                edi                                                  // 0x004d95fe    5f
                         pop                esi                                                  // 0x004d95ff    5e
                         pop                ebp                                                  // 0x004d9600    5d
                         pop                ebx                                                  // 0x004d9601    5b
                         pop                ecx                                                  // 0x004d9602    59
                         ret                                                                     // 0x004d9603    c3
                         nop                                                                     // 0x004d9604    90
                         nop                                                                     // 0x004d9605    90
                         nop                                                                     // 0x004d9606    90
                         nop                                                                     // 0x004d9607    90
                         nop                                                                     // 0x004d9608    90
                         nop                                                                     // 0x004d9609    90
                         nop                                                                     // 0x004d960a    90
                         nop                                                                     // 0x004d960b    90
                         nop                                                                     // 0x004d960c    90
                         nop                                                                     // 0x004d960d    90
                         nop                                                                     // 0x004d960e    90
                         nop                                                                     // 0x004d960f    90
_globl_ct_0x004d9610:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                         // 0x004d9610    8a0d34c9fa00
                         mov                al, 0x01                                             // 0x004d9616    b001
                         test               al, cl                                               // 0x004d9618    84c8
                         {disp8} jne        _jmp_addr_0x004d9624                                 // 0x004d961a    7508
                         or.s               cl, al                                               // 0x004d961c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                         // 0x004d961e    880d34c9fa00
_jmp_addr_0x004d9624:    {disp32} jmp       _jmp_addr_0x004d9630                                 // 0x004d9624    e907000000
                         nop                                                                     // 0x004d9629    90
                         nop                                                                     // 0x004d962a    90
                         nop                                                                     // 0x004d962b    90
                         nop                                                                     // 0x004d962c    90
                         nop                                                                     // 0x004d962d    90
                         nop                                                                     // 0x004d962e    90
                         nop                                                                     // 0x004d962f    90
_jmp_addr_0x004d9630:    push               0x00407870                                           // 0x004d9630    6870784000
                         call               _atexit                                              // 0x004d9635    e857c12e00
                         pop                ecx                                                  // 0x004d963a    59
                         ret                                                                     // 0x004d963b    c3
                         nop                                                                     // 0x004d963c    90
                         nop                                                                     // 0x004d963d    90
                         nop                                                                     // 0x004d963e    90
                         nop                                                                     // 0x004d963f    90
_globl_ct_0x004d9640:    {disp32} jmp       _jmp_addr_0x004d9650                                 // 0x004d9640    e90b000000
                         nop                                                                     // 0x004d9645    90
                         nop                                                                     // 0x004d9646    90
                         nop                                                                     // 0x004d9647    90
                         nop                                                                     // 0x004d9648    90
                         nop                                                                     // 0x004d9649    90
                         nop                                                                     // 0x004d964a    90
                         nop                                                                     // 0x004d964b    90
                         nop                                                                     // 0x004d964c    90
                         nop                                                                     // 0x004d964d    90
                         nop                                                                     // 0x004d964e    90
                         nop                                                                     // 0x004d964f    90
_jmp_addr_0x004d9650:    {disp32} fld       dword ptr [rdata_bytes + 0x26e80]                    // 0x004d9650    d90580fe8c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e7c]                    // 0x004d9656    d80d7cfe8c00
                         {disp32} fstp      dword ptr [data_bytes + 0x2be39c]                    // 0x004d965c    d91d9c43c800
                         ret                                                                     // 0x004d9662    c3
                         nop                                                                     // 0x004d9663    90
                         nop                                                                     // 0x004d9664    90
                         nop                                                                     // 0x004d9665    90
                         nop                                                                     // 0x004d9666    90
                         nop                                                                     // 0x004d9667    90
                         nop                                                                     // 0x004d9668    90
                         nop                                                                     // 0x004d9669    90
                         nop                                                                     // 0x004d966a    90
                         nop                                                                     // 0x004d966b    90
                         nop                                                                     // 0x004d966c    90
                         nop                                                                     // 0x004d966d    90
                         nop                                                                     // 0x004d966e    90
                         nop                                                                     // 0x004d966f    90
_globl_ct_0x004d9670:    {disp32} jmp       _jmp_addr_0x004d9680                                 // 0x004d9670    e90b000000
                         nop                                                                     // 0x004d9675    90
                         nop                                                                     // 0x004d9676    90
                         nop                                                                     // 0x004d9677    90
                         nop                                                                     // 0x004d9678    90
                         nop                                                                     // 0x004d9679    90
                         nop                                                                     // 0x004d967a    90
                         nop                                                                     // 0x004d967b    90
                         nop                                                                     // 0x004d967c    90
                         nop                                                                     // 0x004d967d    90
                         nop                                                                     // 0x004d967e    90
                         nop                                                                     // 0x004d967f    90
_jmp_addr_0x004d9680:    {disp32} mov       dword ptr [data_bytes + 0x2be398], 0xffffffff        // 0x004d9680    c7059843c800ffffffff
                         ret                                                                     // 0x004d968a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x004d968b    e8e981f2ff
_jmp_addr_0x004d9690:    push               ebx                                                  // 0x004d9690    53
                         push               esi                                                  // 0x004d9691    56
                         push               edi                                                  // 0x004d9692    57
                         push               0x1f                                                 // 0x004d9693    6a1f
                         push               0x00bdf3f8                                           // 0x004d9695    68f8f3bd00
                         push               0xc                                                  // 0x004d969a    6a0c
                         mov.s              esi, ecx                                             // 0x004d969c    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d969e    e84dd0f5ff
                         xor.s              edi, edi                                             // 0x004d96a3    33ff
                         add                esp, 0x0c                                            // 0x004d96a5    83c40c
                         cmp.s              eax, edi                                             // 0x004d96a8    3bc7
                         {disp8} je         _jmp_addr_0x004d96bc                                 // 0x004d96aa    7410
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d96ac    897804
                         mov                dword ptr [eax], 0x008cf67c                          // 0x004d96af    c7007cf68c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d96b5    897808
                         mov.s              ebx, eax                                             // 0x004d96b8    8bd8
                         {disp8} jmp        _jmp_addr_0x004d96be                                 // 0x004d96ba    eb02
_jmp_addr_0x004d96bc:    xor.s              ebx, ebx                                             // 0x004d96bc    33db
_jmp_addr_0x004d96be:    mov                eax, dword ptr [esi]                                 // 0x004d96be    8b06
                         push               edi                                                  // 0x004d96c0    57
                         mov.s              ecx, esi                                             // 0x004d96c1    8bce
                         call               dword ptr [eax + 0x24]                               // 0x004d96c3    ff5024
                         push               0x20                                                 // 0x004d96c6    6a20
                         push               0x00bdf3f8                                           // 0x004d96c8    68f8f3bd00
                         push               0xc                                                  // 0x004d96cd    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d96cf    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d96d1    e81ad0f5ff
                         add                esp, 0x0c                                            // 0x004d96d6    83c40c
                         cmp.s              eax, edi                                             // 0x004d96d9    3bc7
                         {disp8} je         _jmp_addr_0x004d96ed                                 // 0x004d96db    7410
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d96dd    897804
                         mov                dword ptr [eax], 0x008cf644                          // 0x004d96e0    c70044f68c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d96e6    897808
                         mov.s              ebx, eax                                             // 0x004d96e9    8bd8
                         {disp8} jmp        _jmp_addr_0x004d96ef                                 // 0x004d96eb    eb02
_jmp_addr_0x004d96ed:    xor.s              ebx, ebx                                             // 0x004d96ed    33db
_jmp_addr_0x004d96ef:    mov                edx, dword ptr [esi]                                 // 0x004d96ef    8b16
                         push               0x1                                                  // 0x004d96f1    6a01
                         mov.s              ecx, esi                                             // 0x004d96f3    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d96f5    ff5224
                         push               0x21                                                 // 0x004d96f8    6a21
                         push               0x00bdf3f8                                           // 0x004d96fa    68f8f3bd00
                         push               0xc                                                  // 0x004d96ff    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d9701    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9703    e8e8cff5ff
                         add                esp, 0x0c                                            // 0x004d9708    83c40c
                         cmp.s              eax, edi                                             // 0x004d970b    3bc7
                         {disp8} je         _jmp_addr_0x004d971f                                 // 0x004d970d    7410
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d970f    897804
                         mov                dword ptr [eax], 0x008cf60c                          // 0x004d9712    c7000cf68c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9718    897808
                         mov.s              ebx, eax                                             // 0x004d971b    8bd8
                         {disp8} jmp        _jmp_addr_0x004d9721                                 // 0x004d971d    eb02
_jmp_addr_0x004d971f:    xor.s              ebx, ebx                                             // 0x004d971f    33db
_jmp_addr_0x004d9721:    mov                eax, dword ptr [esi]                                 // 0x004d9721    8b06
                         push               0x2                                                  // 0x004d9723    6a02
                         mov.s              ecx, esi                                             // 0x004d9725    8bce
                         call               dword ptr [eax + 0x24]                               // 0x004d9727    ff5024
                         push               0x22                                                 // 0x004d972a    6a22
                         push               0x00bdf3f8                                           // 0x004d972c    68f8f3bd00
                         push               0xc                                                  // 0x004d9731    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d9733    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9735    e8b6cff5ff
                         add                esp, 0x0c                                            // 0x004d973a    83c40c
                         cmp.s              eax, edi                                             // 0x004d973d    3bc7
                         {disp8} je         _jmp_addr_0x004d9751                                 // 0x004d973f    7410
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9741    897804
                         mov                dword ptr [eax], 0x008cf5d4                          // 0x004d9744    c700d4f58c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d974a    897808
                         mov.s              ebx, eax                                             // 0x004d974d    8bd8
                         {disp8} jmp        _jmp_addr_0x004d9753                                 // 0x004d974f    eb02
_jmp_addr_0x004d9751:    xor.s              ebx, ebx                                             // 0x004d9751    33db
_jmp_addr_0x004d9753:    mov                edx, dword ptr [esi]                                 // 0x004d9753    8b16
                         push               0x3                                                  // 0x004d9755    6a03
                         mov.s              ecx, esi                                             // 0x004d9757    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d9759    ff5224
                         push               0x23                                                 // 0x004d975c    6a23
                         push               0x00bdf3f8                                           // 0x004d975e    68f8f3bd00
                         push               0xc                                                  // 0x004d9763    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d9765    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9767    e884cff5ff
                         add                esp, 0x0c                                            // 0x004d976c    83c40c
                         cmp.s              eax, edi                                             // 0x004d976f    3bc7
                         {disp8} je         _jmp_addr_0x004d9783                                 // 0x004d9771    7410
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9773    897804
                         mov                dword ptr [eax], 0x008cf59c                          // 0x004d9776    c7009cf58c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d977c    897808
                         mov.s              ebx, eax                                             // 0x004d977f    8bd8
                         {disp8} jmp        _jmp_addr_0x004d9785                                 // 0x004d9781    eb02
_jmp_addr_0x004d9783:    xor.s              ebx, ebx                                             // 0x004d9783    33db
_jmp_addr_0x004d9785:    mov                eax, dword ptr [esi]                                 // 0x004d9785    8b06
                         push               0x4                                                  // 0x004d9787    6a04
                         mov.s              ecx, esi                                             // 0x004d9789    8bce
                         call               dword ptr [eax + 0x24]                               // 0x004d978b    ff5024
                         push               0x24                                                 // 0x004d978e    6a24
                         push               0x00bdf3f8                                           // 0x004d9790    68f8f3bd00
                         push               0xc                                                  // 0x004d9795    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d9797    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9799    e852cff5ff
                         add                esp, 0x0c                                            // 0x004d979e    83c40c
                         cmp.s              eax, edi                                             // 0x004d97a1    3bc7
                         {disp8} je         _jmp_addr_0x004d97b5                                 // 0x004d97a3    7410
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d97a5    897804
                         mov                dword ptr [eax], 0x008cf564                          // 0x004d97a8    c70064f58c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d97ae    897808
                         mov.s              ebx, eax                                             // 0x004d97b1    8bd8
                         {disp8} jmp        _jmp_addr_0x004d97b7                                 // 0x004d97b3    eb02
_jmp_addr_0x004d97b5:    xor.s              ebx, ebx                                             // 0x004d97b5    33db
_jmp_addr_0x004d97b7:    mov                edx, dword ptr [esi]                                 // 0x004d97b7    8b16
                         push               0x5                                                  // 0x004d97b9    6a05
                         mov.s              ecx, esi                                             // 0x004d97bb    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d97bd    ff5224
                         push               0x25                                                 // 0x004d97c0    6a25
                         push               0x00bdf3f8                                           // 0x004d97c2    68f8f3bd00
                         push               0xc                                                  // 0x004d97c7    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d97c9    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d97cb    e820cff5ff
                         add                esp, 0x0c                                            // 0x004d97d0    83c40c
                         cmp.s              eax, edi                                             // 0x004d97d3    3bc7
                         {disp8} je         _jmp_addr_0x004d97e5                                 // 0x004d97d5    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d97d7    897804
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d97da    897808
                         mov                dword ptr [eax], 0x008cf52c                          // 0x004d97dd    c7002cf58c00
                         mov.s              edi, eax                                             // 0x004d97e3    8bf8
_jmp_addr_0x004d97e5:    mov                eax, dword ptr [esi]                                 // 0x004d97e5    8b06
                         push               0x6                                                  // 0x004d97e7    6a06
                         mov.s              ecx, esi                                             // 0x004d97e9    8bce
                         call               dword ptr [eax + 0x24]                               // 0x004d97eb    ff5024
                         mov                dword ptr [eax], edi                                 // 0x004d97ee    8938
                         pop                edi                                                  // 0x004d97f0    5f
                         pop                esi                                                  // 0x004d97f1    5e
                         pop                ebx                                                  // 0x004d97f2    5b
                         ret                                                                     // 0x004d97f3    c3
                         nop                                                                     // 0x004d97f4    90
                         nop                                                                     // 0x004d97f5    90
                         nop                                                                     // 0x004d97f6    90
                         nop                                                                     // 0x004d97f7    90
                         nop                                                                     // 0x004d97f8    90
                         nop                                                                     // 0x004d97f9    90
                         nop                                                                     // 0x004d97fa    90
                         nop                                                                     // 0x004d97fb    90
                         nop                                                                     // 0x004d97fc    90
                         nop                                                                     // 0x004d97fd    90
                         nop                                                                     // 0x004d97fe    90
                         nop                                                                     // 0x004d97ff    90
_jmp_addr_0x004d9800:    push               ebx                                                  // 0x004d9800    53
                         push               ebp                                                  // 0x004d9801    55
                         push               esi                                                  // 0x004d9802    56
                         push               edi                                                  // 0x004d9803    57
                         push               0x2b                                                 // 0x004d9804    6a2b
                         push               0x00bdf3f8                                           // 0x004d9806    68f8f3bd00
                         push               0xc                                                  // 0x004d980b    6a0c
                         mov.s              edi, ecx                                             // 0x004d980d    8bf9
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d980f    e8dccef5ff
                         mov.s              esi, eax                                             // 0x004d9814    8bf0
                         xor.s              ebp, ebp                                             // 0x004d9816    33ed
                         add                esp, 0x0c                                            // 0x004d9818    83c40c
                         cmp.s              esi, ebp                                             // 0x004d981b    3bf5
                         {disp8} je         _jmp_addr_0x004d983a                                 // 0x004d981d    741b
                         mov                eax, dword ptr [edi]                                 // 0x004d981f    8b07
                         push               ebp                                                  // 0x004d9821    55
                         mov.s              ecx, edi                                             // 0x004d9822    8bcf
                         call               dword ptr [eax + 0x20]                               // 0x004d9824    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d9827    8b4008
                         {disp8} mov        dword ptr [esi + 0x04], ebp                          // 0x004d982a    896e04
                         mov                dword ptr [esi], 0x008cf67c                          // 0x004d982d    c7067cf68c00
                         {disp8} mov        dword ptr [esi + 0x08], eax                          // 0x004d9833    894608
                         mov.s              ebx, esi                                             // 0x004d9836    8bde
                         {disp8} jmp        _jmp_addr_0x004d983c                                 // 0x004d9838    eb02
_jmp_addr_0x004d983a:    xor.s              ebx, ebx                                             // 0x004d983a    33db
_jmp_addr_0x004d983c:    {disp8} mov        esi, dword ptr [esp + 0x14]                          // 0x004d983c    8b742414
                         mov                edx, dword ptr [esi]                                 // 0x004d9840    8b16
                         push               ebp                                                  // 0x004d9842    55
                         mov.s              ecx, esi                                             // 0x004d9843    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d9845    ff5224
                         push               0x2c                                                 // 0x004d9848    6a2c
                         push               0x00bdf3f8                                           // 0x004d984a    68f8f3bd00
                         push               0xc                                                  // 0x004d984f    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d9851    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9853    e898cef5ff
                         mov.s              ebx, eax                                             // 0x004d9858    8bd8
                         add                esp, 0x0c                                            // 0x004d985a    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d985d    3bdd
                         {disp8} je         _jmp_addr_0x004d987b                                 // 0x004d985f    741a
                         mov                eax, dword ptr [edi]                                 // 0x004d9861    8b07
                         push               0x1                                                  // 0x004d9863    6a01
                         mov.s              ecx, edi                                             // 0x004d9865    8bcf
                         call               dword ptr [eax + 0x20]                               // 0x004d9867    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d986a    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d986d    896b04
                         mov                dword ptr [ebx], 0x008cf644                          // 0x004d9870    c70344f68c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d9876    894308
                         {disp8} jmp        _jmp_addr_0x004d987d                                 // 0x004d9879    eb02
_jmp_addr_0x004d987b:    xor.s              ebx, ebx                                             // 0x004d987b    33db
_jmp_addr_0x004d987d:    mov                edx, dword ptr [esi]                                 // 0x004d987d    8b16
                         push               0x1                                                  // 0x004d987f    6a01
                         mov.s              ecx, esi                                             // 0x004d9881    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d9883    ff5224
                         push               0x2d                                                 // 0x004d9886    6a2d
                         push               0x00bdf3f8                                           // 0x004d9888    68f8f3bd00
                         push               0xc                                                  // 0x004d988d    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d988f    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9891    e85acef5ff
                         mov.s              ebx, eax                                             // 0x004d9896    8bd8
                         add                esp, 0x0c                                            // 0x004d9898    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d989b    3bdd
                         {disp8} je         _jmp_addr_0x004d98b9                                 // 0x004d989d    741a
                         mov                eax, dword ptr [edi]                                 // 0x004d989f    8b07
                         push               0x2                                                  // 0x004d98a1    6a02
                         mov.s              ecx, edi                                             // 0x004d98a3    8bcf
                         call               dword ptr [eax + 0x20]                               // 0x004d98a5    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d98a8    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d98ab    896b04
                         mov                dword ptr [ebx], 0x008cf60c                          // 0x004d98ae    c7030cf68c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d98b4    894308
                         {disp8} jmp        _jmp_addr_0x004d98bb                                 // 0x004d98b7    eb02
_jmp_addr_0x004d98b9:    xor.s              ebx, ebx                                             // 0x004d98b9    33db
_jmp_addr_0x004d98bb:    mov                edx, dword ptr [esi]                                 // 0x004d98bb    8b16
                         push               0x2                                                  // 0x004d98bd    6a02
                         mov.s              ecx, esi                                             // 0x004d98bf    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d98c1    ff5224
                         push               0x2e                                                 // 0x004d98c4    6a2e
                         push               0x00bdf3f8                                           // 0x004d98c6    68f8f3bd00
                         push               0xc                                                  // 0x004d98cb    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d98cd    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d98cf    e81ccef5ff
                         mov.s              ebx, eax                                             // 0x004d98d4    8bd8
                         add                esp, 0x0c                                            // 0x004d98d6    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d98d9    3bdd
                         {disp8} je         _jmp_addr_0x004d98f7                                 // 0x004d98db    741a
                         mov                eax, dword ptr [edi]                                 // 0x004d98dd    8b07
                         push               0x3                                                  // 0x004d98df    6a03
                         mov.s              ecx, edi                                             // 0x004d98e1    8bcf
                         call               dword ptr [eax + 0x20]                               // 0x004d98e3    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d98e6    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d98e9    896b04
                         mov                dword ptr [ebx], 0x008cf5d4                          // 0x004d98ec    c703d4f58c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d98f2    894308
                         {disp8} jmp        _jmp_addr_0x004d98f9                                 // 0x004d98f5    eb02
_jmp_addr_0x004d98f7:    xor.s              ebx, ebx                                             // 0x004d98f7    33db
_jmp_addr_0x004d98f9:    mov                edx, dword ptr [esi]                                 // 0x004d98f9    8b16
                         push               0x3                                                  // 0x004d98fb    6a03
                         mov.s              ecx, esi                                             // 0x004d98fd    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d98ff    ff5224
                         push               0x2f                                                 // 0x004d9902    6a2f
                         push               0x00bdf3f8                                           // 0x004d9904    68f8f3bd00
                         push               0xc                                                  // 0x004d9909    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d990b    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d990d    e8decdf5ff
                         mov.s              ebx, eax                                             // 0x004d9912    8bd8
                         add                esp, 0x0c                                            // 0x004d9914    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d9917    3bdd
                         {disp8} je         _jmp_addr_0x004d9935                                 // 0x004d9919    741a
                         mov                eax, dword ptr [edi]                                 // 0x004d991b    8b07
                         push               0x4                                                  // 0x004d991d    6a04
                         mov.s              ecx, edi                                             // 0x004d991f    8bcf
                         call               dword ptr [eax + 0x20]                               // 0x004d9921    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d9924    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d9927    896b04
                         mov                dword ptr [ebx], 0x008cf59c                          // 0x004d992a    c7039cf58c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d9930    894308
                         {disp8} jmp        _jmp_addr_0x004d9937                                 // 0x004d9933    eb02
_jmp_addr_0x004d9935:    xor.s              ebx, ebx                                             // 0x004d9935    33db
_jmp_addr_0x004d9937:    mov                edx, dword ptr [esi]                                 // 0x004d9937    8b16
                         push               0x4                                                  // 0x004d9939    6a04
                         mov.s              ecx, esi                                             // 0x004d993b    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d993d    ff5224
                         push               0x30                                                 // 0x004d9940    6a30
                         push               0x00bdf3f8                                           // 0x004d9942    68f8f3bd00
                         push               0xc                                                  // 0x004d9947    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d9949    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d994b    e8a0cdf5ff
                         mov.s              ebx, eax                                             // 0x004d9950    8bd8
                         add                esp, 0x0c                                            // 0x004d9952    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d9955    3bdd
                         {disp8} je         _jmp_addr_0x004d9973                                 // 0x004d9957    741a
                         mov                eax, dword ptr [edi]                                 // 0x004d9959    8b07
                         push               0x5                                                  // 0x004d995b    6a05
                         mov.s              ecx, edi                                             // 0x004d995d    8bcf
                         call               dword ptr [eax + 0x20]                               // 0x004d995f    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d9962    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d9965    896b04
                         mov                dword ptr [ebx], 0x008cf564                          // 0x004d9968    c70364f58c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d996e    894308
                         {disp8} jmp        _jmp_addr_0x004d9975                                 // 0x004d9971    eb02
_jmp_addr_0x004d9973:    xor.s              ebx, ebx                                             // 0x004d9973    33db
_jmp_addr_0x004d9975:    mov                edx, dword ptr [esi]                                 // 0x004d9975    8b16
                         push               0x5                                                  // 0x004d9977    6a05
                         mov.s              ecx, esi                                             // 0x004d9979    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d997b    ff5224
                         push               0x31                                                 // 0x004d997e    6a31
                         push               0x00bdf3f8                                           // 0x004d9980    68f8f3bd00
                         push               0xc                                                  // 0x004d9985    6a0c
                         mov                dword ptr [eax], ebx                                 // 0x004d9987    8918
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9989    e862cdf5ff
                         mov.s              ebx, eax                                             // 0x004d998e    8bd8
                         add                esp, 0x0c                                            // 0x004d9990    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d9993    3bdd
                         {disp8} je         _jmp_addr_0x004d99c1                                 // 0x004d9995    742a
                         mov                eax, dword ptr [edi]                                 // 0x004d9997    8b07
                         push               0x6                                                  // 0x004d9999    6a06
                         mov.s              ecx, edi                                             // 0x004d999b    8bcf
                         call               dword ptr [eax + 0x20]                               // 0x004d999d    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d99a0    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d99a3    896b04
                         mov                dword ptr [ebx], 0x008cf52c                          // 0x004d99a6    c7032cf58c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d99ac    894308
                         mov                edx, dword ptr [esi]                                 // 0x004d99af    8b16
                         push               0x6                                                  // 0x004d99b1    6a06
                         mov.s              ecx, esi                                             // 0x004d99b3    8bce
                         call               dword ptr [edx + 0x24]                               // 0x004d99b5    ff5224
                         pop                edi                                                  // 0x004d99b8    5f
                         pop                esi                                                  // 0x004d99b9    5e
                         pop                ebp                                                  // 0x004d99ba    5d
                         mov                dword ptr [eax], ebx                                 // 0x004d99bb    8918
                         pop                ebx                                                  // 0x004d99bd    5b
                         ret                0x0004                                               // 0x004d99be    c20400
_jmp_addr_0x004d99c1:    mov                edx, dword ptr [esi]                                 // 0x004d99c1    8b16
                         push               0x6                                                  // 0x004d99c3    6a06
                         mov.s              ecx, esi                                             // 0x004d99c5    8bce
                         xor.s              ebx, ebx                                             // 0x004d99c7    33db
                         call               dword ptr [edx + 0x24]                               // 0x004d99c9    ff5224
                         pop                edi                                                  // 0x004d99cc    5f
                         pop                esi                                                  // 0x004d99cd    5e
                         pop                ebp                                                  // 0x004d99ce    5d
                         mov                dword ptr [eax], ebx                                 // 0x004d99cf    8918
                         pop                ebx                                                  // 0x004d99d1    5b
                         ret                0x0004                                               // 0x004d99d2    c20400
                         nop                                                                     // 0x004d99d5    90
                         nop                                                                     // 0x004d99d6    90
                         nop                                                                     // 0x004d99d7    90
                         nop                                                                     // 0x004d99d8    90
                         nop                                                                     // 0x004d99d9    90
                         nop                                                                     // 0x004d99da    90
                         nop                                                                     // 0x004d99db    90
                         nop                                                                     // 0x004d99dc    90
                         nop                                                                     // 0x004d99dd    90
                         nop                                                                     // 0x004d99de    90
                         nop                                                                     // 0x004d99df    90
_jmp_addr_0x004d99e0:    {disp32} jmp       _jmp_addr_0x004d9690                                 // 0x004d99e0    e9abfcffff
                         nop                                                                     // 0x004d99e5    90
                         nop                                                                     // 0x004d99e6    90
                         nop                                                                     // 0x004d99e7    90
                         nop                                                                     // 0x004d99e8    90
                         nop                                                                     // 0x004d99e9    90
                         nop                                                                     // 0x004d99ea    90
                         nop                                                                     // 0x004d99eb    90
                         nop                                                                     // 0x004d99ec    90
                         nop                                                                     // 0x004d99ed    90
                         nop                                                                     // 0x004d99ee    90
                         nop                                                                     // 0x004d99ef    90
_jmp_addr_0x004d99f0:    push               esi                                                  // 0x004d99f0    56
                         push               edi                                                  // 0x004d99f1    57
                         mov.s              esi, ecx                                             // 0x004d99f2    8bf1
                         call               _jmp_addr_0x004d9690                                 // 0x004d99f4    e897fcffff
                         push               0x3e                                                 // 0x004d99f9    6a3e
                         push               0x00bdf3f8                                           // 0x004d99fb    68f8f3bd00
                         push               0xc                                                  // 0x004d9a00    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9a02    e8e9ccf5ff
                         xor.s              edi, edi                                             // 0x004d9a07    33ff
                         add                esp, 0x0c                                            // 0x004d9a09    83c40c
                         cmp.s              eax, edi                                             // 0x004d9a0c    3bc7
                         {disp8} je         _jmp_addr_0x004d9a1e                                 // 0x004d9a0e    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9a10    897804
                         mov                dword ptr [eax], 0x008cf6ec                          // 0x004d9a13    c700ecf68c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9a19    897808
                         {disp8} jmp        _jmp_addr_0x004d9a20                                 // 0x004d9a1c    eb02
_jmp_addr_0x004d9a1e:    xor.s              eax, eax                                             // 0x004d9a1e    33c0
_jmp_addr_0x004d9a20:    push               0x3f                                                 // 0x004d9a20    6a3f
                         push               0x00bdf3f8                                           // 0x004d9a22    68f8f3bd00
                         push               0xc                                                  // 0x004d9a27    6a0c
                         {disp8} mov        dword ptr [esi + 0x68], eax                          // 0x004d9a29    894668
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9a2c    e8bfccf5ff
                         add                esp, 0x0c                                            // 0x004d9a31    83c40c
                         cmp.s              eax, edi                                             // 0x004d9a34    3bc7
                         {disp8} je         _jmp_addr_0x004d9a46                                 // 0x004d9a36    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9a38    897804
                         mov                dword ptr [eax], 0x008cf724                          // 0x004d9a3b    c70024f78c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9a41    897808
                         {disp8} jmp        _jmp_addr_0x004d9a48                                 // 0x004d9a44    eb02
_jmp_addr_0x004d9a46:    xor.s              eax, eax                                             // 0x004d9a46    33c0
_jmp_addr_0x004d9a48:    push               0x40                                                 // 0x004d9a48    6a40
                         push               0x00bdf3f8                                           // 0x004d9a4a    68f8f3bd00
                         push               0xc                                                  // 0x004d9a4f    6a0c
                         {disp8} mov        dword ptr [esi + 0x6c], eax                          // 0x004d9a51    89466c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9a54    e897ccf5ff
                         add                esp, 0x0c                                            // 0x004d9a59    83c40c
                         cmp.s              eax, edi                                             // 0x004d9a5c    3bc7
                         {disp8} je         _jmp_addr_0x004d9a6e                                 // 0x004d9a5e    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9a60    897804
                         mov                dword ptr [eax], 0x008cf75c                          // 0x004d9a63    c7005cf78c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9a69    897808
                         {disp8} jmp        _jmp_addr_0x004d9a70                                 // 0x004d9a6c    eb02
_jmp_addr_0x004d9a6e:    xor.s              eax, eax                                             // 0x004d9a6e    33c0
_jmp_addr_0x004d9a70:    push               0x41                                                 // 0x004d9a70    6a41
                         push               0x00bdf3f8                                           // 0x004d9a72    68f8f3bd00
                         push               0xc                                                  // 0x004d9a77    6a0c
                         {disp8} mov        dword ptr [esi + 0x70], eax                          // 0x004d9a79    894670
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9a7c    e86fccf5ff
                         add                esp, 0x0c                                            // 0x004d9a81    83c40c
                         cmp.s              eax, edi                                             // 0x004d9a84    3bc7
                         {disp8} je         _jmp_addr_0x004d9a9a                                 // 0x004d9a86    7412
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9a88    897804
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9a8b    897808
                         mov                dword ptr [eax], 0x008cf794                          // 0x004d9a8e    c70094f78c00
                         pop                edi                                                  // 0x004d9a94    5f
                         {disp8} mov        dword ptr [esi + 0x74], eax                          // 0x004d9a95    894674
                         pop                esi                                                  // 0x004d9a98    5e
                         ret                                                                     // 0x004d9a99    c3
_jmp_addr_0x004d9a9a:    {disp8} mov        dword ptr [esi + 0x74], edi                          // 0x004d9a9a    897e74
                         pop                edi                                                  // 0x004d9a9d    5f
                         pop                esi                                                  // 0x004d9a9e    5e
                         ret                                                                     // 0x004d9a9f    c3
_jmp_addr_0x004d9aa0:    {disp32} jmp       _jmp_addr_0x004d9690                                 // 0x004d9aa0    e9ebfbffff
                         nop                                                                     // 0x004d9aa5    90
                         nop                                                                     // 0x004d9aa6    90
                         nop                                                                     // 0x004d9aa7    90
                         nop                                                                     // 0x004d9aa8    90
                         nop                                                                     // 0x004d9aa9    90
                         nop                                                                     // 0x004d9aaa    90
                         nop                                                                     // 0x004d9aab    90
                         nop                                                                     // 0x004d9aac    90
                         nop                                                                     // 0x004d9aad    90
                         nop                                                                     // 0x004d9aae    90
                         nop                                                                     // 0x004d9aaf    90
_jmp_addr_0x004d9ab0:    push               esi                                                  // 0x004d9ab0    56
                         push               edi                                                  // 0x004d9ab1    57
                         mov.s              esi, ecx                                             // 0x004d9ab2    8bf1
                         call               _jmp_addr_0x004d9690                                 // 0x004d9ab4    e8d7fbffff
                         push               0x4e                                                 // 0x004d9ab9    6a4e
                         push               0x00bdf3f8                                           // 0x004d9abb    68f8f3bd00
                         push               0xc                                                  // 0x004d9ac0    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9ac2    e829ccf5ff
                         xor.s              edi, edi                                             // 0x004d9ac7    33ff
                         add                esp, 0x0c                                            // 0x004d9ac9    83c40c
                         cmp.s              eax, edi                                             // 0x004d9acc    3bc7
                         {disp8} je         _jmp_addr_0x004d9ade                                 // 0x004d9ace    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9ad0    897804
                         mov                dword ptr [eax], 0x008cfb3c                          // 0x004d9ad3    c7003cfb8c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9ad9    897808
                         {disp8} jmp        _jmp_addr_0x004d9ae0                                 // 0x004d9adc    eb02
_jmp_addr_0x004d9ade:    xor.s              eax, eax                                             // 0x004d9ade    33c0
_jmp_addr_0x004d9ae0:    push               0x4f                                                 // 0x004d9ae0    6a4f
                         push               0x00bdf3f8                                           // 0x004d9ae2    68f8f3bd00
                         push               0xc                                                  // 0x004d9ae7    6a0c
                         {disp8} mov        dword ptr [esi + 0x68], eax                          // 0x004d9ae9    894668
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9aec    e8ffcbf5ff
                         add                esp, 0x0c                                            // 0x004d9af1    83c40c
                         cmp.s              eax, edi                                             // 0x004d9af4    3bc7
                         {disp8} je         _jmp_addr_0x004d9b06                                 // 0x004d9af6    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9af8    897804
                         mov                dword ptr [eax], 0x008cfb04                          // 0x004d9afb    c70004fb8c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9b01    897808
                         {disp8} jmp        _jmp_addr_0x004d9b08                                 // 0x004d9b04    eb02
_jmp_addr_0x004d9b06:    xor.s              eax, eax                                             // 0x004d9b06    33c0
_jmp_addr_0x004d9b08:    push               0x50                                                 // 0x004d9b08    6a50
                         push               0x00bdf3f8                                           // 0x004d9b0a    68f8f3bd00
                         push               0xc                                                  // 0x004d9b0f    6a0c
                         {disp8} mov        dword ptr [esi + 0x6c], eax                          // 0x004d9b11    89466c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9b14    e8d7cbf5ff
                         add                esp, 0x0c                                            // 0x004d9b19    83c40c
                         cmp.s              eax, edi                                             // 0x004d9b1c    3bc7
                         {disp8} je         _jmp_addr_0x004d9b2e                                 // 0x004d9b1e    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9b20    897804
                         mov                dword ptr [eax], 0x008cfacc                          // 0x004d9b23    c700ccfa8c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9b29    897808
                         {disp8} jmp        _jmp_addr_0x004d9b30                                 // 0x004d9b2c    eb02
_jmp_addr_0x004d9b2e:    xor.s              eax, eax                                             // 0x004d9b2e    33c0
_jmp_addr_0x004d9b30:    push               0x51                                                 // 0x004d9b30    6a51
                         push               0x00bdf3f8                                           // 0x004d9b32    68f8f3bd00
                         push               0xc                                                  // 0x004d9b37    6a0c
                         {disp8} mov        dword ptr [esi + 0x70], eax                          // 0x004d9b39    894670
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9b3c    e8afcbf5ff
                         add                esp, 0x0c                                            // 0x004d9b41    83c40c
                         cmp.s              eax, edi                                             // 0x004d9b44    3bc7
                         {disp8} je         _jmp_addr_0x004d9b5a                                 // 0x004d9b46    7412
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9b48    897804
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9b4b    897808
                         mov                dword ptr [eax], 0x008cfa94                          // 0x004d9b4e    c70094fa8c00
                         pop                edi                                                  // 0x004d9b54    5f
                         {disp8} mov        dword ptr [esi + 0x74], eax                          // 0x004d9b55    894674
                         pop                esi                                                  // 0x004d9b58    5e
                         ret                                                                     // 0x004d9b59    c3
_jmp_addr_0x004d9b5a:    {disp8} mov        dword ptr [esi + 0x74], edi                          // 0x004d9b5a    897e74
                         pop                edi                                                  // 0x004d9b5d    5f
                         pop                esi                                                  // 0x004d9b5e    5e
                         ret                                                                     // 0x004d9b5f    c3
_jmp_addr_0x004d9b60:    push               esi                                                  // 0x004d9b60    56
                         mov.s              esi, ecx                                             // 0x004d9b61    8bf1
                         call               _jmp_addr_0x004d9690                                 // 0x004d9b63    e828fbffff
                         push               0x58                                                 // 0x004d9b68    6a58
                         push               0x00bdf3f8                                           // 0x004d9b6a    68f8f3bd00
                         push               0xc                                                  // 0x004d9b6f    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9b71    e87acbf5ff
                         xor.s              ecx, ecx                                             // 0x004d9b76    33c9
                         add                esp, 0x0c                                            // 0x004d9b78    83c40c
                         cmp.s              eax, ecx                                             // 0x004d9b7b    3bc1
                         {disp8} je         _jmp_addr_0x004d9b90                                 // 0x004d9b7d    7411
                         {disp8} mov        dword ptr [eax + 0x04], ecx                          // 0x004d9b7f    894804
                         mov                dword ptr [eax], 0x008cfa5c                          // 0x004d9b82    c7005cfa8c00
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x004d9b88    894808
                         {disp8} mov        dword ptr [esi + 0x68], eax                          // 0x004d9b8b    894668
                         pop                esi                                                  // 0x004d9b8e    5e
                         ret                                                                     // 0x004d9b8f    c3
_jmp_addr_0x004d9b90:    xor.s              eax, eax                                             // 0x004d9b90    33c0
                         {disp8} mov        dword ptr [esi + 0x68], eax                          // 0x004d9b92    894668
                         pop                esi                                                  // 0x004d9b95    5e
                         ret                                                                     // 0x004d9b96    c3
                         nop                                                                     // 0x004d9b97    90
                         nop                                                                     // 0x004d9b98    90
                         nop                                                                     // 0x004d9b99    90
                         nop                                                                     // 0x004d9b9a    90
                         nop                                                                     // 0x004d9b9b    90
                         nop                                                                     // 0x004d9b9c    90
                         nop                                                                     // 0x004d9b9d    90
                         nop                                                                     // 0x004d9b9e    90
                         nop                                                                     // 0x004d9b9f    90
_jmp_addr_0x004d9ba0:    push               esi                                                  // 0x004d9ba0    56
                         push               edi                                                  // 0x004d9ba1    57
                         mov.s              esi, ecx                                             // 0x004d9ba2    8bf1
                         call               _jmp_addr_0x004d9690                                 // 0x004d9ba4    e8e7faffff
                         push               0x5f                                                 // 0x004d9ba9    6a5f
                         push               0x00bdf3f8                                           // 0x004d9bab    68f8f3bd00
                         push               0xc                                                  // 0x004d9bb0    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9bb2    e839cbf5ff
                         xor.s              edi, edi                                             // 0x004d9bb7    33ff
                         add                esp, 0x0c                                            // 0x004d9bb9    83c40c
                         cmp.s              eax, edi                                             // 0x004d9bbc    3bc7
                         {disp8} je         _jmp_addr_0x004d9bce                                 // 0x004d9bbe    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9bc0    897804
                         mov                dword ptr [eax], 0x008cf4f4                          // 0x004d9bc3    c700f4f48c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9bc9    897808
                         {disp8} jmp        _jmp_addr_0x004d9bd0                                 // 0x004d9bcc    eb02
_jmp_addr_0x004d9bce:    xor.s              eax, eax                                             // 0x004d9bce    33c0
_jmp_addr_0x004d9bd0:    push               0x60                                                 // 0x004d9bd0    6a60
                         push               0x00bdf3f8                                           // 0x004d9bd2    68f8f3bd00
                         push               0xc                                                  // 0x004d9bd7    6a0c
                         {disp8} mov        dword ptr [esi + 0x68], eax                          // 0x004d9bd9    894668
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9bdc    e80fcbf5ff
                         add                esp, 0x0c                                            // 0x004d9be1    83c40c
                         cmp.s              eax, edi                                             // 0x004d9be4    3bc7
                         {disp8} je         _jmp_addr_0x004d9bf6                                 // 0x004d9be6    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9be8    897804
                         mov                dword ptr [eax], 0x008cf4bc                          // 0x004d9beb    c700bcf48c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9bf1    897808
                         {disp8} jmp        _jmp_addr_0x004d9bf8                                 // 0x004d9bf4    eb02
_jmp_addr_0x004d9bf6:    xor.s              eax, eax                                             // 0x004d9bf6    33c0
_jmp_addr_0x004d9bf8:    push               0x61                                                 // 0x004d9bf8    6a61
                         push               0x00bdf3f8                                           // 0x004d9bfa    68f8f3bd00
                         push               0xc                                                  // 0x004d9bff    6a0c
                         {disp8} mov        dword ptr [esi + 0x6c], eax                          // 0x004d9c01    89466c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9c04    e8e7caf5ff
                         add                esp, 0x0c                                            // 0x004d9c09    83c40c
                         cmp.s              eax, edi                                             // 0x004d9c0c    3bc7
                         {disp8} je         _jmp_addr_0x004d9c1e                                 // 0x004d9c0e    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9c10    897804
                         mov                dword ptr [eax], 0x008cf484                          // 0x004d9c13    c70084f48c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9c19    897808
                         {disp8} jmp        _jmp_addr_0x004d9c20                                 // 0x004d9c1c    eb02
_jmp_addr_0x004d9c1e:    xor.s              eax, eax                                             // 0x004d9c1e    33c0
_jmp_addr_0x004d9c20:    push               0x62                                                 // 0x004d9c20    6a62
                         push               0x00bdf3f8                                           // 0x004d9c22    68f8f3bd00
                         push               0xc                                                  // 0x004d9c27    6a0c
                         {disp8} mov        dword ptr [esi + 0x70], eax                          // 0x004d9c29    894670
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9c2c    e8bfcaf5ff
                         add                esp, 0x0c                                            // 0x004d9c31    83c40c
                         cmp.s              eax, edi                                             // 0x004d9c34    3bc7
                         {disp8} je         _jmp_addr_0x004d9c4a                                 // 0x004d9c36    7412
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9c38    897804
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9c3b    897808
                         mov                dword ptr [eax], 0x008cf44c                          // 0x004d9c3e    c7004cf48c00
                         pop                edi                                                  // 0x004d9c44    5f
                         {disp8} mov        dword ptr [esi + 0x74], eax                          // 0x004d9c45    894674
                         pop                esi                                                  // 0x004d9c48    5e
                         ret                                                                     // 0x004d9c49    c3
_jmp_addr_0x004d9c4a:    {disp8} mov        dword ptr [esi + 0x74], edi                          // 0x004d9c4a    897e74
                         pop                edi                                                  // 0x004d9c4d    5f
                         pop                esi                                                  // 0x004d9c4e    5e
                         ret                                                                     // 0x004d9c4f    c3
_jmp_addr_0x004d9c50:    push               esi                                                  // 0x004d9c50    56
                         mov.s              esi, ecx                                             // 0x004d9c51    8bf1
                         call               _jmp_addr_0x004d9690                                 // 0x004d9c53    e838faffff
                         push               0x69                                                 // 0x004d9c58    6a69
                         push               0x00bdf3f8                                           // 0x004d9c5a    68f8f3bd00
                         push               0xc                                                  // 0x004d9c5f    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9c61    e88acaf5ff
                         xor.s              ecx, ecx                                             // 0x004d9c66    33c9
                         add                esp, 0x0c                                            // 0x004d9c68    83c40c
                         cmp.s              eax, ecx                                             // 0x004d9c6b    3bc1
                         {disp8} je         _jmp_addr_0x004d9c80                                 // 0x004d9c6d    7411
                         {disp8} mov        dword ptr [eax + 0x04], ecx                          // 0x004d9c6f    894804
                         mov                dword ptr [eax], 0x008cfa24                          // 0x004d9c72    c70024fa8c00
                         {disp8} mov        dword ptr [eax + 0x08], ecx                          // 0x004d9c78    894808
                         {disp8} mov        dword ptr [esi + 0x68], eax                          // 0x004d9c7b    894668
                         pop                esi                                                  // 0x004d9c7e    5e
                         ret                                                                     // 0x004d9c7f    c3
_jmp_addr_0x004d9c80:    xor.s              eax, eax                                             // 0x004d9c80    33c0
                         {disp8} mov        dword ptr [esi + 0x68], eax                          // 0x004d9c82    894668
                         pop                esi                                                  // 0x004d9c85    5e
                         ret                                                                     // 0x004d9c86    c3
                         nop                                                                     // 0x004d9c87    90
                         nop                                                                     // 0x004d9c88    90
                         nop                                                                     // 0x004d9c89    90
                         nop                                                                     // 0x004d9c8a    90
                         nop                                                                     // 0x004d9c8b    90
                         nop                                                                     // 0x004d9c8c    90
                         nop                                                                     // 0x004d9c8d    90
                         nop                                                                     // 0x004d9c8e    90
                         nop                                                                     // 0x004d9c8f    90
_jmp_addr_0x004d9c90:    push               esi                                                  // 0x004d9c90    56
                         push               edi                                                  // 0x004d9c91    57
                         mov.s              esi, ecx                                             // 0x004d9c92    8bf1
                         call               _jmp_addr_0x004d9690                                 // 0x004d9c94    e8f7f9ffff
                         push               0x70                                                 // 0x004d9c99    6a70
                         push               0x00bdf3f8                                           // 0x004d9c9b    68f8f3bd00
                         push               0xc                                                  // 0x004d9ca0    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9ca2    e849caf5ff
                         xor.s              edi, edi                                             // 0x004d9ca7    33ff
                         add                esp, 0x0c                                            // 0x004d9ca9    83c40c
                         cmp.s              eax, edi                                             // 0x004d9cac    3bc7
                         {disp8} je         _jmp_addr_0x004d9cbe                                 // 0x004d9cae    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9cb0    897804
                         mov                dword ptr [eax], 0x008cf9ec                          // 0x004d9cb3    c700ecf98c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9cb9    897808
                         {disp8} jmp        _jmp_addr_0x004d9cc0                                 // 0x004d9cbc    eb02
_jmp_addr_0x004d9cbe:    xor.s              eax, eax                                             // 0x004d9cbe    33c0
_jmp_addr_0x004d9cc0:    push               0x71                                                 // 0x004d9cc0    6a71
                         push               0x00bdf3f8                                           // 0x004d9cc2    68f8f3bd00
                         push               0xc                                                  // 0x004d9cc7    6a0c
                         {disp8} mov        dword ptr [esi + 0x68], eax                          // 0x004d9cc9    894668
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9ccc    e81fcaf5ff
                         add                esp, 0x0c                                            // 0x004d9cd1    83c40c
                         cmp.s              eax, edi                                             // 0x004d9cd4    3bc7
                         {disp8} je         _jmp_addr_0x004d9ce6                                 // 0x004d9cd6    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9cd8    897804
                         mov                dword ptr [eax], 0x008cf484                          // 0x004d9cdb    c70084f48c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9ce1    897808
                         {disp8} jmp        _jmp_addr_0x004d9ce8                                 // 0x004d9ce4    eb02
_jmp_addr_0x004d9ce6:    xor.s              eax, eax                                             // 0x004d9ce6    33c0
_jmp_addr_0x004d9ce8:    push               0x72                                                 // 0x004d9ce8    6a72
                         push               0x00bdf3f8                                           // 0x004d9cea    68f8f3bd00
                         push               0xc                                                  // 0x004d9cef    6a0c
                         {disp8} mov        dword ptr [esi + 0x6c], eax                          // 0x004d9cf1    89466c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9cf4    e8f7c9f5ff
                         add                esp, 0x0c                                            // 0x004d9cf9    83c40c
                         cmp.s              eax, edi                                             // 0x004d9cfc    3bc7
                         {disp8} je         _jmp_addr_0x004d9d0e                                 // 0x004d9cfe    740e
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9d00    897804
                         mov                dword ptr [eax], 0x008cf44c                          // 0x004d9d03    c7004cf48c00
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9d09    897808
                         {disp8} jmp        _jmp_addr_0x004d9d10                                 // 0x004d9d0c    eb02
_jmp_addr_0x004d9d0e:    xor.s              eax, eax                                             // 0x004d9d0e    33c0
_jmp_addr_0x004d9d10:    push               0x73                                                 // 0x004d9d10    6a73
                         push               0x00bdf3f8                                           // 0x004d9d12    68f8f3bd00
                         push               0xc                                                  // 0x004d9d17    6a0c
                         {disp8} mov        dword ptr [esi + 0x70], eax                          // 0x004d9d19    894670
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9d1c    e8cfc9f5ff
                         add                esp, 0x0c                                            // 0x004d9d21    83c40c
                         cmp.s              eax, edi                                             // 0x004d9d24    3bc7
                         {disp8} je         _jmp_addr_0x004d9d3a                                 // 0x004d9d26    7412
                         {disp8} mov        dword ptr [eax + 0x04], edi                          // 0x004d9d28    897804
                         {disp8} mov        dword ptr [eax + 0x08], edi                          // 0x004d9d2b    897808
                         mov                dword ptr [eax], 0x008cf9b4                          // 0x004d9d2e    c700b4f98c00
                         pop                edi                                                  // 0x004d9d34    5f
                         {disp8} mov        dword ptr [esi + 0x74], eax                          // 0x004d9d35    894674
                         pop                esi                                                  // 0x004d9d38    5e
                         ret                                                                     // 0x004d9d39    c3
_jmp_addr_0x004d9d3a:    {disp8} mov        dword ptr [esi + 0x74], edi                          // 0x004d9d3a    897e74
                         pop                edi                                                  // 0x004d9d3d    5f
                         pop                esi                                                  // 0x004d9d3e    5e
                         ret                                                                     // 0x004d9d3f    c3
_jmp_addr_0x004d9d40:    {disp32} jmp       _jmp_addr_0x004d9690                                 // 0x004d9d40    e94bf9ffff
                         nop                                                                     // 0x004d9d45    90
                         nop                                                                     // 0x004d9d46    90
                         nop                                                                     // 0x004d9d47    90
                         nop                                                                     // 0x004d9d48    90
                         nop                                                                     // 0x004d9d49    90
                         nop                                                                     // 0x004d9d4a    90
                         nop                                                                     // 0x004d9d4b    90
                         nop                                                                     // 0x004d9d4c    90
                         nop                                                                     // 0x004d9d4d    90
                         nop                                                                     // 0x004d9d4e    90
                         nop                                                                     // 0x004d9d4f    90
_jmp_addr_0x004d9d50:    ret                                                                     // 0x004d9d50    c3
                         nop                                                                     // 0x004d9d51    90
                         nop                                                                     // 0x004d9d52    90
                         nop                                                                     // 0x004d9d53    90
                         nop                                                                     // 0x004d9d54    90
                         nop                                                                     // 0x004d9d55    90
                         nop                                                                     // 0x004d9d56    90
                         nop                                                                     // 0x004d9d57    90
                         nop                                                                     // 0x004d9d58    90
                         nop                                                                     // 0x004d9d59    90
                         nop                                                                     // 0x004d9d5a    90
                         nop                                                                     // 0x004d9d5b    90
                         nop                                                                     // 0x004d9d5c    90
                         nop                                                                     // 0x004d9d5d    90
                         nop                                                                     // 0x004d9d5e    90
                         nop                                                                     // 0x004d9d5f    90
                         push               ebx                                                  // 0x004d9d60    53
                         push               ebp                                                  // 0x004d9d61    55
                         push               esi                                                  // 0x004d9d62    56
                         push               edi                                                  // 0x004d9d63    57
                         push               0x00000089                                           // 0x004d9d64    6889000000
                         push               0x00bdf3f8                                           // 0x004d9d69    68f8f3bd00
                         push               0x68                                                 // 0x004d9d6e    6a68
                         mov.s              edi, ecx                                             // 0x004d9d70    8bf9
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9d72    e879c9f5ff
                         mov.s              esi, eax                                             // 0x004d9d77    8bf0
                         xor.s              ebx, ebx                                             // 0x004d9d79    33db
                         add                esp, 0x0c                                            // 0x004d9d7b    83c40c
                         cmp.s              esi, ebx                                             // 0x004d9d7e    3bf3
                         {disp8} je         _jmp_addr_0x004d9d9b                                 // 0x004d9d80    7419
                         mov.s              ecx, esi                                             // 0x004d9d82    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004d9d84    e887daffff
                         mov.s              ecx, esi                                             // 0x004d9d89    8bce
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004d9d8b    c70674fb8c00
                         call               _jmp_addr_0x004d99e0                                 // 0x004d9d91    e84afcffff
                         {disp8} mov        dword ptr [esi + 0x20], ebx                          // 0x004d9d96    895e20
                         {disp8} jmp        _jmp_addr_0x004d9d9d                                 // 0x004d9d99    eb02
_jmp_addr_0x004d9d9b:    xor.s              esi, esi                                             // 0x004d9d9b    33f6
_jmp_addr_0x004d9d9d:    mov                eax, dword ptr [edi]                                 // 0x004d9d9d    8b07
                         mov.s              ecx, edi                                             // 0x004d9d9f    8bcf
                         xor.s              ebp, ebp                                             // 0x004d9da1    33ed
                         call               dword ptr [eax + 0x1c]                               // 0x004d9da3    ff501c
                         test               eax, eax                                             // 0x004d9da6    85c0
                         {disp8} jbe        _jmp_addr_0x004d9dcb                                 // 0x004d9da8    7621
                         {disp8} lea        ebx, dword ptr [esi + 0x4c]                          // 0x004d9daa    8d5e4c
_jmp_addr_0x004d9dad:    mov                ecx, dword ptr [ebx]                                 // 0x004d9dad    8b0b
                         test               ecx, ecx                                             // 0x004d9daf    85c9
                         {disp8} je         _jmp_addr_0x004d9dba                                 // 0x004d9db1    7407
                         mov                edx, dword ptr [ecx]                                 // 0x004d9db3    8b11
                         push               0x1                                                  // 0x004d9db5    6a01
                         call               dword ptr [edx + 4]                                  // 0x004d9db7    ff5204
_jmp_addr_0x004d9dba:    mov                eax, dword ptr [edi]                                 // 0x004d9dba    8b07
                         mov.s              ecx, edi                                             // 0x004d9dbc    8bcf
                         inc                ebp                                                  // 0x004d9dbe    45
                         add                ebx, 0x04                                            // 0x004d9dbf    83c304
                         call               dword ptr [eax + 0x1c]                               // 0x004d9dc2    ff501c
                         cmp.s              ebp, eax                                             // 0x004d9dc5    3be8
                         .byte              0x72, 0xe4// {disp8} jb _jmp_addr_0x004d9dad         // 0x004d9dc7    72e4
                         xor.s              ebx, ebx                                             // 0x004d9dc9    33db
_jmp_addr_0x004d9dcb:    {disp8} mov        ecx, dword ptr [edi + 0x04]                          // 0x004d9dcb    8b4f04
                         {disp8} mov        dword ptr [esi + 0x04], ecx                          // 0x004d9dce    894e04
                         {disp8} mov        edx, dword ptr [edi + 0x08]                          // 0x004d9dd1    8b5708
                         {disp8} mov        dword ptr [esi + 0x08], edx                          // 0x004d9dd4    895608
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                          // 0x004d9dd7    8b470c
                         {disp8} mov        dword ptr [esi + 0x0c], eax                          // 0x004d9dda    89460c
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                          // 0x004d9ddd    8b4f10
                         {disp8} mov        dword ptr [esi + 0x10], ecx                          // 0x004d9de0    894e10
                         {disp8} mov        edx, dword ptr [edi + 0x14]                          // 0x004d9de3    8b5714
                         {disp8} mov        dword ptr [esi + 0x14], edx                          // 0x004d9de6    895614
                         {disp8} mov        eax, dword ptr [edi + 0x18]                          // 0x004d9de9    8b4718
                         {disp8} mov        dword ptr [esi + 0x18], eax                          // 0x004d9dec    894618
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                          // 0x004d9def    8b4f1c
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                          // 0x004d9df2    894e1c
                         {disp8} mov        edx, dword ptr [edi + 0x20]                          // 0x004d9df5    8b5720
                         {disp8} mov        dword ptr [esi + 0x20], edx                          // 0x004d9df8    895620
                         {disp8} lea        eax, dword ptr [edi + 0x24]                          // 0x004d9dfb    8d4724
                         mov                edx, dword ptr [eax]                                 // 0x004d9dfe    8b10
                         {disp8} lea        ecx, dword ptr [esi + 0x24]                          // 0x004d9e00    8d4e24
                         mov                dword ptr [ecx], edx                                 // 0x004d9e03    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x004d9e05    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                          // 0x004d9e08    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d9e0b    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                          // 0x004d9e0e    894108
                         {disp8} mov        ecx, dword ptr [edi + 0x30]                          // 0x004d9e11    8b4f30
                         {disp8} mov        dword ptr [esi + 0x30], ecx                          // 0x004d9e14    894e30
                         {disp8} mov        edx, dword ptr [edi + 0x34]                          // 0x004d9e17    8b5734
                         {disp8} mov        dword ptr [esi + 0x34], edx                          // 0x004d9e1a    895634
                         {disp8} mov        eax, dword ptr [edi + 0x38]                          // 0x004d9e1d    8b4738
                         {disp8} mov        dword ptr [esi + 0x38], eax                          // 0x004d9e20    894638
                         {disp8} mov        ecx, dword ptr [edi + 0x3c]                          // 0x004d9e23    8b4f3c
                         {disp8} mov        dword ptr [esi + 0x3c], ecx                          // 0x004d9e26    894e3c
                         mov.s              ecx, edi                                             // 0x004d9e29    8bcf
                         mov                ebp, 0xffffffc0                                      // 0x004d9e2b    bdc0ffffff
                         sub.s              ecx, esi                                             // 0x004d9e30    2bce
                         {disp8} lea        eax, dword ptr [esi + 0x40]                          // 0x004d9e32    8d4640
                         sub.s              ebp, esi                                             // 0x004d9e35    2bee
_jmp_addr_0x004d9e37:    mov                dl, byte ptr [ecx + eax * 0x1]                       // 0x004d9e37    8a1401
                         mov                byte ptr [eax], dl                                   // 0x004d9e3a    8810
                         inc                eax                                                  // 0x004d9e3c    40
                         lea                edx, dword ptr [eax + ebp * 0x1]                     // 0x004d9e3d    8d1428
                         cmp                edx, 0x06                                            // 0x004d9e40    83fa06
                         .byte              0x72, 0xf2// {disp8} jb _jmp_addr_0x004d9e37         // 0x004d9e43    72f2
                         {disp8} mov        eax, dword ptr [edi + 0x48]                          // 0x004d9e45    8b4748
                         {disp8} mov        dword ptr [esi + 0x48], eax                          // 0x004d9e48    894648
                         {disp8} lea        eax, dword ptr [esi + 0x4c]                          // 0x004d9e4b    8d464c
                         mov                edx, 0x00000007                                      // 0x004d9e4e    ba07000000
_jmp_addr_0x004d9e53:    mov                ebp, dword ptr [eax + ecx * 0x1]                     // 0x004d9e53    8b2c08
                         mov                dword ptr [eax], ebp                                 // 0x004d9e56    8928
                         add                eax, 0x04                                            // 0x004d9e58    83c004
                         dec                edx                                                  // 0x004d9e5b    4a
                         {disp8} jne        _jmp_addr_0x004d9e53                                 // 0x004d9e5c    75f5
                         push               esi                                                  // 0x004d9e5e    56
                         mov.s              ecx, edi                                             // 0x004d9e5f    8bcf
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                          // 0x004d9e61    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                          // 0x004d9e64    895e18
                         call               _jmp_addr_0x004d9800                                 // 0x004d9e67    e894f9ffff
                         pop                edi                                                  // 0x004d9e6c    5f
                         mov.s              eax, esi                                             // 0x004d9e6d    8bc6
                         pop                esi                                                  // 0x004d9e6f    5e
                         pop                ebp                                                  // 0x004d9e70    5d
                         pop                ebx                                                  // 0x004d9e71    5b
                         ret                                                                     // 0x004d9e72    c3
                         nop                                                                     // 0x004d9e73    90
                         nop                                                                     // 0x004d9e74    90
                         nop                                                                     // 0x004d9e75    90
                         nop                                                                     // 0x004d9e76    90
                         nop                                                                     // 0x004d9e77    90
                         nop                                                                     // 0x004d9e78    90
                         nop                                                                     // 0x004d9e79    90
                         nop                                                                     // 0x004d9e7a    90
                         nop                                                                     // 0x004d9e7b    90
                         nop                                                                     // 0x004d9e7c    90
                         nop                                                                     // 0x004d9e7d    90
                         nop                                                                     // 0x004d9e7e    90
                         nop                                                                     // 0x004d9e7f    90
                         push               ebx                                                  // 0x004d9e80    53
                         push               ebp                                                  // 0x004d9e81    55
                         push               esi                                                  // 0x004d9e82    56
                         push               edi                                                  // 0x004d9e83    57
                         push               0x00000099                                           // 0x004d9e84    6899000000
                         push               0x00bdf3f8                                           // 0x004d9e89    68f8f3bd00
                         push               0x78                                                 // 0x004d9e8e    6a78
                         mov.s              esi, ecx                                             // 0x004d9e90    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9e92    e859c8f5ff
                         mov.s              edi, eax                                             // 0x004d9e97    8bf8
                         xor.s              ebp, ebp                                             // 0x004d9e99    33ed
                         add                esp, 0x0c                                            // 0x004d9e9b    83c40c
                         cmp.s              edi, ebp                                             // 0x004d9e9e    3bfd
                         {disp8} je         _jmp_addr_0x004d9ebb                                 // 0x004d9ea0    7419
                         mov.s              ecx, edi                                             // 0x004d9ea2    8bcf
                         call               _jmp_addr_0x004d7810                                 // 0x004d9ea4    e867d9ffff
                         mov.s              ecx, edi                                             // 0x004d9ea9    8bcf
                         mov                dword ptr [edi], 0x008cfdb4                          // 0x004d9eab    c707b4fd8c00
                         call               _jmp_addr_0x004d99f0                                 // 0x004d9eb1    e83afbffff
                         {disp8} mov        dword ptr [edi + 0x20], ebp                          // 0x004d9eb6    896f20
                         {disp8} jmp        _jmp_addr_0x004d9ebd                                 // 0x004d9eb9    eb02
_jmp_addr_0x004d9ebb:    xor.s              edi, edi                                             // 0x004d9ebb    33ff
_jmp_addr_0x004d9ebd:    mov                eax, dword ptr [esi]                                 // 0x004d9ebd    8b06
                         mov.s              ecx, esi                                             // 0x004d9ebf    8bce
                         xor.s              ebx, ebx                                             // 0x004d9ec1    33db
                         call               dword ptr [eax + 0x1c]                               // 0x004d9ec3    ff501c
                         test               eax, eax                                             // 0x004d9ec6    85c0
                         {disp8} jbe        _jmp_addr_0x004d9eec                                 // 0x004d9ec8    7622
                         {disp8} lea        ebp, dword ptr [edi + 0x4c]                          // 0x004d9eca    8d6f4c
_jmp_addr_0x004d9ecd:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                          // 0x004d9ecd    8b4d00
                         test               ecx, ecx                                             // 0x004d9ed0    85c9
                         {disp8} je         _jmp_addr_0x004d9edb                                 // 0x004d9ed2    7407
                         mov                edx, dword ptr [ecx]                                 // 0x004d9ed4    8b11
                         push               0x1                                                  // 0x004d9ed6    6a01
                         call               dword ptr [edx + 4]                                  // 0x004d9ed8    ff5204
_jmp_addr_0x004d9edb:    mov                eax, dword ptr [esi]                                 // 0x004d9edb    8b06
                         mov.s              ecx, esi                                             // 0x004d9edd    8bce
                         inc                ebx                                                  // 0x004d9edf    43
                         add                ebp, 0x04                                            // 0x004d9ee0    83c504
                         call               dword ptr [eax + 0x1c]                               // 0x004d9ee3    ff501c
                         cmp.s              ebx, eax                                             // 0x004d9ee6    3bd8
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x004d9ecd         // 0x004d9ee8    72e3
                         xor.s              ebp, ebp                                             // 0x004d9eea    33ed
_jmp_addr_0x004d9eec:    push               esi                                                  // 0x004d9eec    56
                         mov.s              ecx, edi                                             // 0x004d9eed    8bcf
                         call               _jmp_addr_0x004da010                                 // 0x004d9eef    e81c010000
                         mov.s              ecx, esi                                             // 0x004d9ef4    8bce
                         {disp8} lea        eax, dword ptr [edi + 0x4c]                          // 0x004d9ef6    8d474c
                         sub.s              ecx, edi                                             // 0x004d9ef9    2bcf
                         mov                edx, 0x0000000b                                      // 0x004d9efb    ba0b000000
_jmp_addr_0x004d9f00:    mov                ebx, dword ptr [ecx + eax * 0x1]                     // 0x004d9f00    8b1c01
                         mov                dword ptr [eax], ebx                                 // 0x004d9f03    8918
                         add                eax, 0x04                                            // 0x004d9f05    83c004
                         dec                edx                                                  // 0x004d9f08    4a
                         {disp8} jne        _jmp_addr_0x004d9f00                                 // 0x004d9f09    75f5
                         push               edi                                                  // 0x004d9f0b    57
                         mov.s              ecx, esi                                             // 0x004d9f0c    8bce
                         {disp8} mov        dword ptr [edi + 0x1c], ebp                          // 0x004d9f0e    896f1c
                         {disp8} mov        dword ptr [edi + 0x18], ebp                          // 0x004d9f11    896f18
                         call               _jmp_addr_0x004d9800                                 // 0x004d9f14    e8e7f8ffff
                         push               0x000000a2                                           // 0x004d9f19    68a2000000
                         push               0x00bdf3f8                                           // 0x004d9f1e    68f8f3bd00
                         push               0xc                                                  // 0x004d9f23    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9f25    e8c6c7f5ff
                         mov.s              ebx, eax                                             // 0x004d9f2a    8bd8
                         add                esp, 0x0c                                            // 0x004d9f2c    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d9f2f    3bdd
                         {disp8} je         _jmp_addr_0x004d9f4d                                 // 0x004d9f31    741a
                         mov                edx, dword ptr [esi]                                 // 0x004d9f33    8b16
                         push               0x7                                                  // 0x004d9f35    6a07
                         mov.s              ecx, esi                                             // 0x004d9f37    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004d9f39    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d9f3c    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d9f3f    896b04
                         mov                dword ptr [ebx], 0x008cf6ec                          // 0x004d9f42    c703ecf68c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d9f48    894308
                         {disp8} jmp        _jmp_addr_0x004d9f4f                                 // 0x004d9f4b    eb02
_jmp_addr_0x004d9f4d:    xor.s              ebx, ebx                                             // 0x004d9f4d    33db
_jmp_addr_0x004d9f4f:    push               0x000000a3                                           // 0x004d9f4f    68a3000000
                         push               0x00bdf3f8                                           // 0x004d9f54    68f8f3bd00
                         push               0xc                                                  // 0x004d9f59    6a0c
                         {disp8} mov        dword ptr [edi + 0x68], ebx                          // 0x004d9f5b    895f68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9f5e    e88dc7f5ff
                         mov.s              ebx, eax                                             // 0x004d9f63    8bd8
                         add                esp, 0x0c                                            // 0x004d9f65    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d9f68    3bdd
                         {disp8} je         _jmp_addr_0x004d9f86                                 // 0x004d9f6a    741a
                         mov                eax, dword ptr [esi]                                 // 0x004d9f6c    8b06
                         push               0x8                                                  // 0x004d9f6e    6a08
                         mov.s              ecx, esi                                             // 0x004d9f70    8bce
                         call               dword ptr [eax + 0x20]                               // 0x004d9f72    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d9f75    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d9f78    896b04
                         mov                dword ptr [ebx], 0x008cf724                          // 0x004d9f7b    c70324f78c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d9f81    894308
                         {disp8} jmp        _jmp_addr_0x004d9f88                                 // 0x004d9f84    eb02
_jmp_addr_0x004d9f86:    xor.s              ebx, ebx                                             // 0x004d9f86    33db
_jmp_addr_0x004d9f88:    push               0x000000a4                                           // 0x004d9f88    68a4000000
                         push               0x00bdf3f8                                           // 0x004d9f8d    68f8f3bd00
                         push               0xc                                                  // 0x004d9f92    6a0c
                         {disp8} mov        dword ptr [edi + 0x6c], ebx                          // 0x004d9f94    895f6c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9f97    e854c7f5ff
                         mov.s              ebx, eax                                             // 0x004d9f9c    8bd8
                         add                esp, 0x0c                                            // 0x004d9f9e    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d9fa1    3bdd
                         {disp8} je         _jmp_addr_0x004d9fbf                                 // 0x004d9fa3    741a
                         mov                edx, dword ptr [esi]                                 // 0x004d9fa5    8b16
                         push               0x9                                                  // 0x004d9fa7    6a09
                         mov.s              ecx, esi                                             // 0x004d9fa9    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004d9fab    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d9fae    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d9fb1    896b04
                         mov                dword ptr [ebx], 0x008cf75c                          // 0x004d9fb4    c7035cf78c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d9fba    894308
                         {disp8} jmp        _jmp_addr_0x004d9fc1                                 // 0x004d9fbd    eb02
_jmp_addr_0x004d9fbf:    xor.s              ebx, ebx                                             // 0x004d9fbf    33db
_jmp_addr_0x004d9fc1:    push               0x000000a5                                           // 0x004d9fc1    68a5000000
                         push               0x00bdf3f8                                           // 0x004d9fc6    68f8f3bd00
                         push               0xc                                                  // 0x004d9fcb    6a0c
                         {disp8} mov        dword ptr [edi + 0x70], ebx                          // 0x004d9fcd    895f70
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004d9fd0    e81bc7f5ff
                         mov.s              ebx, eax                                             // 0x004d9fd5    8bd8
                         add                esp, 0x0c                                            // 0x004d9fd7    83c40c
                         cmp.s              ebx, ebp                                             // 0x004d9fda    3bdd
                         {disp8} je         _jmp_addr_0x004da000                                 // 0x004d9fdc    7422
                         mov                eax, dword ptr [esi]                                 // 0x004d9fde    8b06
                         push               0xa                                                  // 0x004d9fe0    6a0a
                         mov.s              ecx, esi                                             // 0x004d9fe2    8bce
                         call               dword ptr [eax + 0x20]                               // 0x004d9fe4    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004d9fe7    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004d9fea    896b04
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004d9fed    894308
                         mov                dword ptr [ebx], 0x008cf794                          // 0x004d9ff0    c70394f78c00
                         {disp8} mov        dword ptr [edi + 0x74], ebx                          // 0x004d9ff6    895f74
                         mov.s              eax, edi                                             // 0x004d9ff9    8bc7
                         pop                edi                                                  // 0x004d9ffb    5f
                         pop                esi                                                  // 0x004d9ffc    5e
                         pop                ebp                                                  // 0x004d9ffd    5d
                         pop                ebx                                                  // 0x004d9ffe    5b
                         ret                                                                     // 0x004d9fff    c3
_jmp_addr_0x004da000:    {disp8} mov        dword ptr [edi + 0x74], ebp                          // 0x004da000    896f74
                         mov.s              eax, edi                                             // 0x004da003    8bc7
                         pop                edi                                                  // 0x004da005    5f
                         pop                esi                                                  // 0x004da006    5e
                         pop                ebp                                                  // 0x004da007    5d
                         pop                ebx                                                  // 0x004da008    5b
                         ret                                                                     // 0x004da009    c3
                         call               dword ptr [__imp__BinkNextFrame@4]                   // 0x004da00a    ff1544998a00
_jmp_addr_0x004da010:    mov.s              eax, ecx                                             // 0x004da010    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                          // 0x004da012    8b4c2404
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                          // 0x004da016    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x004da019    895004
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                          // 0x004da01c    8b5108
                         {disp8} mov        dword ptr [eax + 0x08], edx                          // 0x004da01f    895008
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                          // 0x004da022    8b510c
                         {disp8} mov        dword ptr [eax + 0x0c], edx                          // 0x004da025    89500c
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                          // 0x004da028    8b5110
                         {disp8} mov        dword ptr [eax + 0x10], edx                          // 0x004da02b    895010
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                          // 0x004da02e    8b5114
                         {disp8} mov        dword ptr [eax + 0x14], edx                          // 0x004da031    895014
                         {disp8} mov        edx, dword ptr [ecx + 0x18]                          // 0x004da034    8b5118
                         {disp8} mov        dword ptr [eax + 0x18], edx                          // 0x004da037    895018
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                          // 0x004da03a    8b511c
                         {disp8} mov        dword ptr [eax + 0x1c], edx                          // 0x004da03d    89501c
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                          // 0x004da040    8b5120
                         {disp8} mov        dword ptr [eax + 0x20], edx                          // 0x004da043    895020
                         push               ebp                                                  // 0x004da046    55
                         push               esi                                                  // 0x004da047    56
                         push               edi                                                  // 0x004da048    57
                         {disp8} lea        edx, dword ptr [ecx + 0x24]                          // 0x004da049    8d5124
                         mov                edi, dword ptr [edx]                                 // 0x004da04c    8b3a
                         {disp8} lea        esi, dword ptr [eax + 0x24]                          // 0x004da04e    8d7024
                         mov                dword ptr [esi], edi                                 // 0x004da051    893e
                         {disp8} mov        edi, dword ptr [edx + 0x04]                          // 0x004da053    8b7a04
                         {disp8} mov        dword ptr [esi + 0x04], edi                          // 0x004da056    897e04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                          // 0x004da059    8b5208
                         {disp8} mov        dword ptr [esi + 0x08], edx                          // 0x004da05c    895608
                         {disp8} mov        edx, dword ptr [ecx + 0x30]                          // 0x004da05f    8b5130
                         {disp8} mov        dword ptr [eax + 0x30], edx                          // 0x004da062    895030
                         {disp8} mov        edx, dword ptr [ecx + 0x34]                          // 0x004da065    8b5134
                         {disp8} mov        dword ptr [eax + 0x34], edx                          // 0x004da068    895034
                         {disp8} mov        edx, dword ptr [ecx + 0x38]                          // 0x004da06b    8b5138
                         {disp8} mov        dword ptr [eax + 0x38], edx                          // 0x004da06e    895038
                         {disp8} mov        edx, dword ptr [ecx + 0x3c]                          // 0x004da071    8b513c
                         mov.s              edi, ecx                                             // 0x004da074    8bf9
                         mov                ebp, 0xffffffc0                                      // 0x004da076    bdc0ffffff
                         sub.s              edi, eax                                             // 0x004da07b    2bf8
                         {disp8} mov        dword ptr [eax + 0x3c], edx                          // 0x004da07d    89503c
                         {disp8} lea        esi, dword ptr [eax + 0x40]                          // 0x004da080    8d7040
                         sub.s              ebp, eax                                             // 0x004da083    2be8
_jmp_addr_0x004da085:    mov                dl, byte ptr [edi + esi * 0x1]                       // 0x004da085    8a1437
                         mov                byte ptr [esi], dl                                   // 0x004da088    8816
                         inc                esi                                                  // 0x004da08a    46
                         lea                edx, dword ptr [esi + ebp * 0x1]                     // 0x004da08b    8d142e
                         cmp                edx, 0x06                                            // 0x004da08e    83fa06
                         .byte              0x72, 0xf2// {disp8} jb _jmp_addr_0x004da085         // 0x004da091    72f2
                         {disp8} mov        ecx, dword ptr [ecx + 0x48]                          // 0x004da093    8b4948
                         pop                edi                                                  // 0x004da096    5f
                         pop                esi                                                  // 0x004da097    5e
                         {disp8} mov        dword ptr [eax + 0x48], ecx                          // 0x004da098    894848
                         pop                ebp                                                  // 0x004da09b    5d
                         ret                0x0004                                               // 0x004da09c    c20400
                         nop                                                                     // 0x004da09f    90
                         push               ebx                                                  // 0x004da0a0    53
                         push               ebp                                                  // 0x004da0a1    55
                         push               esi                                                  // 0x004da0a2    56
                         push               edi                                                  // 0x004da0a3    57
                         push               0x000000ad                                           // 0x004da0a4    68ad000000
                         push               0x00bdf3f8                                           // 0x004da0a9    68f8f3bd00
                         push               0x68                                                 // 0x004da0ae    6a68
                         mov.s              edi, ecx                                             // 0x004da0b0    8bf9
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da0b2    e839c6f5ff
                         mov.s              esi, eax                                             // 0x004da0b7    8bf0
                         xor.s              ebx, ebx                                             // 0x004da0b9    33db
                         add                esp, 0x0c                                            // 0x004da0bb    83c40c
                         cmp.s              esi, ebx                                             // 0x004da0be    3bf3
                         {disp8} je         _jmp_addr_0x004da0db                                 // 0x004da0c0    7419
                         mov.s              ecx, esi                                             // 0x004da0c2    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004da0c4    e847d7ffff
                         mov.s              ecx, esi                                             // 0x004da0c9    8bce
                         mov                dword ptr [esi], 0x008cfbbc                          // 0x004da0cb    c706bcfb8c00
                         call               _jmp_addr_0x004d9aa0                                 // 0x004da0d1    e8caf9ffff
                         {disp8} mov        dword ptr [esi + 0x20], ebx                          // 0x004da0d6    895e20
                         {disp8} jmp        _jmp_addr_0x004da0dd                                 // 0x004da0d9    eb02
_jmp_addr_0x004da0db:    xor.s              esi, esi                                             // 0x004da0db    33f6
_jmp_addr_0x004da0dd:    mov                eax, dword ptr [edi]                                 // 0x004da0dd    8b07
                         mov.s              ecx, edi                                             // 0x004da0df    8bcf
                         xor.s              ebp, ebp                                             // 0x004da0e1    33ed
                         call               dword ptr [eax + 0x1c]                               // 0x004da0e3    ff501c
                         test               eax, eax                                             // 0x004da0e6    85c0
                         {disp8} jbe        _jmp_addr_0x004da10b                                 // 0x004da0e8    7621
                         {disp8} lea        ebx, dword ptr [esi + 0x4c]                          // 0x004da0ea    8d5e4c
_jmp_addr_0x004da0ed:    mov                ecx, dword ptr [ebx]                                 // 0x004da0ed    8b0b
                         test               ecx, ecx                                             // 0x004da0ef    85c9
                         {disp8} je         _jmp_addr_0x004da0fa                                 // 0x004da0f1    7407
                         mov                edx, dword ptr [ecx]                                 // 0x004da0f3    8b11
                         push               0x1                                                  // 0x004da0f5    6a01
                         call               dword ptr [edx + 4]                                  // 0x004da0f7    ff5204
_jmp_addr_0x004da0fa:    mov                eax, dword ptr [edi]                                 // 0x004da0fa    8b07
                         mov.s              ecx, edi                                             // 0x004da0fc    8bcf
                         inc                ebp                                                  // 0x004da0fe    45
                         add                ebx, 0x04                                            // 0x004da0ff    83c304
                         call               dword ptr [eax + 0x1c]                               // 0x004da102    ff501c
                         cmp.s              ebp, eax                                             // 0x004da105    3be8
                         .byte              0x72, 0xe4// {disp8} jb _jmp_addr_0x004da0ed         // 0x004da107    72e4
                         xor.s              ebx, ebx                                             // 0x004da109    33db
_jmp_addr_0x004da10b:    {disp8} mov        ecx, dword ptr [edi + 0x04]                          // 0x004da10b    8b4f04
                         {disp8} mov        dword ptr [esi + 0x04], ecx                          // 0x004da10e    894e04
                         {disp8} mov        edx, dword ptr [edi + 0x08]                          // 0x004da111    8b5708
                         {disp8} mov        dword ptr [esi + 0x08], edx                          // 0x004da114    895608
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                          // 0x004da117    8b470c
                         {disp8} mov        dword ptr [esi + 0x0c], eax                          // 0x004da11a    89460c
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                          // 0x004da11d    8b4f10
                         {disp8} mov        dword ptr [esi + 0x10], ecx                          // 0x004da120    894e10
                         {disp8} mov        edx, dword ptr [edi + 0x14]                          // 0x004da123    8b5714
                         {disp8} mov        dword ptr [esi + 0x14], edx                          // 0x004da126    895614
                         {disp8} mov        eax, dword ptr [edi + 0x18]                          // 0x004da129    8b4718
                         {disp8} mov        dword ptr [esi + 0x18], eax                          // 0x004da12c    894618
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                          // 0x004da12f    8b4f1c
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                          // 0x004da132    894e1c
                         {disp8} mov        edx, dword ptr [edi + 0x20]                          // 0x004da135    8b5720
                         {disp8} mov        dword ptr [esi + 0x20], edx                          // 0x004da138    895620
                         {disp8} lea        eax, dword ptr [edi + 0x24]                          // 0x004da13b    8d4724
                         mov                edx, dword ptr [eax]                                 // 0x004da13e    8b10
                         {disp8} lea        ecx, dword ptr [esi + 0x24]                          // 0x004da140    8d4e24
                         mov                dword ptr [ecx], edx                                 // 0x004da143    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x004da145    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                          // 0x004da148    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da14b    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                          // 0x004da14e    894108
                         {disp8} mov        ecx, dword ptr [edi + 0x30]                          // 0x004da151    8b4f30
                         {disp8} mov        dword ptr [esi + 0x30], ecx                          // 0x004da154    894e30
                         {disp8} mov        edx, dword ptr [edi + 0x34]                          // 0x004da157    8b5734
                         {disp8} mov        dword ptr [esi + 0x34], edx                          // 0x004da15a    895634
                         {disp8} mov        eax, dword ptr [edi + 0x38]                          // 0x004da15d    8b4738
                         {disp8} mov        dword ptr [esi + 0x38], eax                          // 0x004da160    894638
                         {disp8} mov        ecx, dword ptr [edi + 0x3c]                          // 0x004da163    8b4f3c
                         {disp8} mov        dword ptr [esi + 0x3c], ecx                          // 0x004da166    894e3c
                         mov.s              ecx, edi                                             // 0x004da169    8bcf
                         mov                ebp, 0xffffffc0                                      // 0x004da16b    bdc0ffffff
                         sub.s              ecx, esi                                             // 0x004da170    2bce
                         {disp8} lea        eax, dword ptr [esi + 0x40]                          // 0x004da172    8d4640
                         sub.s              ebp, esi                                             // 0x004da175    2bee
_jmp_addr_0x004da177:    mov                dl, byte ptr [ecx + eax * 0x1]                       // 0x004da177    8a1401
                         mov                byte ptr [eax], dl                                   // 0x004da17a    8810
                         inc                eax                                                  // 0x004da17c    40
                         lea                edx, dword ptr [eax + ebp * 0x1]                     // 0x004da17d    8d1428
                         cmp                edx, 0x06                                            // 0x004da180    83fa06
                         .byte              0x72, 0xf2// {disp8} jb _jmp_addr_0x004da177         // 0x004da183    72f2
                         {disp8} mov        eax, dword ptr [edi + 0x48]                          // 0x004da185    8b4748
                         {disp8} mov        dword ptr [esi + 0x48], eax                          // 0x004da188    894648
                         {disp8} lea        eax, dword ptr [esi + 0x4c]                          // 0x004da18b    8d464c
                         mov                edx, 0x00000007                                      // 0x004da18e    ba07000000
_jmp_addr_0x004da193:    mov                ebp, dword ptr [eax + ecx * 0x1]                     // 0x004da193    8b2c08
                         mov                dword ptr [eax], ebp                                 // 0x004da196    8928
                         add                eax, 0x04                                            // 0x004da198    83c004
                         dec                edx                                                  // 0x004da19b    4a
                         {disp8} jne        _jmp_addr_0x004da193                                 // 0x004da19c    75f5
                         push               esi                                                  // 0x004da19e    56
                         mov.s              ecx, edi                                             // 0x004da19f    8bcf
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                          // 0x004da1a1    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                          // 0x004da1a4    895e18
                         call               _jmp_addr_0x004d9800                                 // 0x004da1a7    e854f6ffff
                         pop                edi                                                  // 0x004da1ac    5f
                         mov.s              eax, esi                                             // 0x004da1ad    8bc6
                         pop                esi                                                  // 0x004da1af    5e
                         pop                ebp                                                  // 0x004da1b0    5d
                         pop                ebx                                                  // 0x004da1b1    5b
                         ret                                                                     // 0x004da1b2    c3
                         nop                                                                     // 0x004da1b3    90
                         nop                                                                     // 0x004da1b4    90
                         nop                                                                     // 0x004da1b5    90
                         nop                                                                     // 0x004da1b6    90
                         nop                                                                     // 0x004da1b7    90
                         nop                                                                     // 0x004da1b8    90
                         nop                                                                     // 0x004da1b9    90
                         nop                                                                     // 0x004da1ba    90
                         nop                                                                     // 0x004da1bb    90
                         nop                                                                     // 0x004da1bc    90
                         nop                                                                     // 0x004da1bd    90
                         nop                                                                     // 0x004da1be    90
                         nop                                                                     // 0x004da1bf    90
                         push               ebx                                                  // 0x004da1c0    53
                         push               ebp                                                  // 0x004da1c1    55
                         push               esi                                                  // 0x004da1c2    56
                         push               edi                                                  // 0x004da1c3    57
                         push               0x000000bd                                           // 0x004da1c4    68bd000000
                         push               0x00bdf3f8                                           // 0x004da1c9    68f8f3bd00
                         push               0x7c                                                 // 0x004da1ce    6a7c
                         mov.s              esi, ecx                                             // 0x004da1d0    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da1d2    e819c5f5ff
                         mov.s              edi, eax                                             // 0x004da1d7    8bf8
                         xor.s              ebp, ebp                                             // 0x004da1d9    33ed
                         add                esp, 0x0c                                            // 0x004da1db    83c40c
                         cmp.s              edi, ebp                                             // 0x004da1de    3bfd
                         {disp8} je         _jmp_addr_0x004da1fe                                 // 0x004da1e0    741c
                         mov.s              ecx, edi                                             // 0x004da1e2    8bcf
                         call               _jmp_addr_0x004d7810                                 // 0x004da1e4    e827d6ffff
                         mov.s              ecx, edi                                             // 0x004da1e9    8bcf
                         mov                dword ptr [edi], 0x008cfd24                          // 0x004da1eb    c70724fd8c00
                         call               _jmp_addr_0x004d9ab0                                 // 0x004da1f1    e8baf8ffff
                         {disp8} mov        dword ptr [edi + 0x78], ebp                          // 0x004da1f6    896f78
                         {disp8} mov        dword ptr [edi + 0x20], ebp                          // 0x004da1f9    896f20
                         {disp8} jmp        _jmp_addr_0x004da200                                 // 0x004da1fc    eb02
_jmp_addr_0x004da1fe:    xor.s              edi, edi                                             // 0x004da1fe    33ff
_jmp_addr_0x004da200:    mov                eax, dword ptr [esi]                                 // 0x004da200    8b06
                         mov.s              ecx, esi                                             // 0x004da202    8bce
                         xor.s              ebx, ebx                                             // 0x004da204    33db
                         call               dword ptr [eax + 0x1c]                               // 0x004da206    ff501c
                         test               eax, eax                                             // 0x004da209    85c0
                         {disp8} jbe        _jmp_addr_0x004da22f                                 // 0x004da20b    7622
                         {disp8} lea        ebp, dword ptr [edi + 0x4c]                          // 0x004da20d    8d6f4c
_jmp_addr_0x004da210:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                          // 0x004da210    8b4d00
                         test               ecx, ecx                                             // 0x004da213    85c9
                         {disp8} je         _jmp_addr_0x004da21e                                 // 0x004da215    7407
                         mov                edx, dword ptr [ecx]                                 // 0x004da217    8b11
                         push               0x1                                                  // 0x004da219    6a01
                         call               dword ptr [edx + 4]                                  // 0x004da21b    ff5204
_jmp_addr_0x004da21e:    mov                eax, dword ptr [esi]                                 // 0x004da21e    8b06
                         mov.s              ecx, esi                                             // 0x004da220    8bce
                         inc                ebx                                                  // 0x004da222    43
                         add                ebp, 0x04                                            // 0x004da223    83c504
                         call               dword ptr [eax + 0x1c]                               // 0x004da226    ff501c
                         cmp.s              ebx, eax                                             // 0x004da229    3bd8
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x004da210         // 0x004da22b    72e3
                         xor.s              ebp, ebp                                             // 0x004da22d    33ed
_jmp_addr_0x004da22f:    push               esi                                                  // 0x004da22f    56
                         mov.s              ecx, edi                                             // 0x004da230    8bcf
                         call               _jmp_addr_0x004da010                                 // 0x004da232    e8d9fdffff
                         mov.s              ecx, esi                                             // 0x004da237    8bce
                         {disp8} lea        eax, dword ptr [edi + 0x4c]                          // 0x004da239    8d474c
                         sub.s              ecx, edi                                             // 0x004da23c    2bcf
                         mov                edx, 0x0000000b                                      // 0x004da23e    ba0b000000
_jmp_addr_0x004da243:    mov                ebx, dword ptr [ecx + eax * 0x1]                     // 0x004da243    8b1c01
                         mov                dword ptr [eax], ebx                                 // 0x004da246    8918
                         add                eax, 0x04                                            // 0x004da248    83c004
                         dec                edx                                                  // 0x004da24b    4a
                         {disp8} jne        _jmp_addr_0x004da243                                 // 0x004da24c    75f5
                         {disp8} mov        ecx, dword ptr [esi + 0x78]                          // 0x004da24e    8b4e78
                         {disp8} mov        dword ptr [edi + 0x78], ecx                          // 0x004da251    894f78
                         push               edi                                                  // 0x004da254    57
                         mov.s              ecx, esi                                             // 0x004da255    8bce
                         {disp8} mov        dword ptr [edi + 0x1c], ebp                          // 0x004da257    896f1c
                         {disp8} mov        dword ptr [edi + 0x18], ebp                          // 0x004da25a    896f18
                         call               _jmp_addr_0x004d9800                                 // 0x004da25d    e89ef5ffff
                         push               0x000000c6                                           // 0x004da262    68c6000000
                         push               0x00bdf3f8                                           // 0x004da267    68f8f3bd00
                         push               0xc                                                  // 0x004da26c    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da26e    e87dc4f5ff
                         mov.s              ebx, eax                                             // 0x004da273    8bd8
                         add                esp, 0x0c                                            // 0x004da275    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da278    3bdd
                         {disp8} je         _jmp_addr_0x004da296                                 // 0x004da27a    741a
                         mov                edx, dword ptr [esi]                                 // 0x004da27c    8b16
                         push               0x7                                                  // 0x004da27e    6a07
                         mov.s              ecx, esi                                             // 0x004da280    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004da282    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da285    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da288    896b04
                         mov                dword ptr [ebx], 0x008cfb3c                          // 0x004da28b    c7033cfb8c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da291    894308
                         {disp8} jmp        _jmp_addr_0x004da298                                 // 0x004da294    eb02
_jmp_addr_0x004da296:    xor.s              ebx, ebx                                             // 0x004da296    33db
_jmp_addr_0x004da298:    push               0x000000c7                                           // 0x004da298    68c7000000
                         push               0x00bdf3f8                                           // 0x004da29d    68f8f3bd00
                         push               0xc                                                  // 0x004da2a2    6a0c
                         {disp8} mov        dword ptr [edi + 0x68], ebx                          // 0x004da2a4    895f68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da2a7    e844c4f5ff
                         mov.s              ebx, eax                                             // 0x004da2ac    8bd8
                         add                esp, 0x0c                                            // 0x004da2ae    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da2b1    3bdd
                         {disp8} je         _jmp_addr_0x004da2cf                                 // 0x004da2b3    741a
                         mov                eax, dword ptr [esi]                                 // 0x004da2b5    8b06
                         push               0x8                                                  // 0x004da2b7    6a08
                         mov.s              ecx, esi                                             // 0x004da2b9    8bce
                         call               dword ptr [eax + 0x20]                               // 0x004da2bb    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da2be    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da2c1    896b04
                         mov                dword ptr [ebx], 0x008cfb04                          // 0x004da2c4    c70304fb8c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da2ca    894308
                         {disp8} jmp        _jmp_addr_0x004da2d1                                 // 0x004da2cd    eb02
_jmp_addr_0x004da2cf:    xor.s              ebx, ebx                                             // 0x004da2cf    33db
_jmp_addr_0x004da2d1:    push               0x000000c8                                           // 0x004da2d1    68c8000000
                         push               0x00bdf3f8                                           // 0x004da2d6    68f8f3bd00
                         push               0xc                                                  // 0x004da2db    6a0c
                         {disp8} mov        dword ptr [edi + 0x6c], ebx                          // 0x004da2dd    895f6c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da2e0    e80bc4f5ff
                         mov.s              ebx, eax                                             // 0x004da2e5    8bd8
                         add                esp, 0x0c                                            // 0x004da2e7    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da2ea    3bdd
                         {disp8} je         _jmp_addr_0x004da308                                 // 0x004da2ec    741a
                         mov                edx, dword ptr [esi]                                 // 0x004da2ee    8b16
                         push               0x9                                                  // 0x004da2f0    6a09
                         mov.s              ecx, esi                                             // 0x004da2f2    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004da2f4    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da2f7    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da2fa    896b04
                         mov                dword ptr [ebx], 0x008cfacc                          // 0x004da2fd    c703ccfa8c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da303    894308
                         {disp8} jmp        _jmp_addr_0x004da30a                                 // 0x004da306    eb02
_jmp_addr_0x004da308:    xor.s              ebx, ebx                                             // 0x004da308    33db
_jmp_addr_0x004da30a:    push               0x000000c9                                           // 0x004da30a    68c9000000
                         push               0x00bdf3f8                                           // 0x004da30f    68f8f3bd00
                         push               0xc                                                  // 0x004da314    6a0c
                         {disp8} mov        dword ptr [edi + 0x70], ebx                          // 0x004da316    895f70
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da319    e8d2c3f5ff
                         mov.s              ebx, eax                                             // 0x004da31e    8bd8
                         add                esp, 0x0c                                            // 0x004da320    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da323    3bdd
                         {disp8} je         _jmp_addr_0x004da349                                 // 0x004da325    7422
                         mov                eax, dword ptr [esi]                                 // 0x004da327    8b06
                         push               0xa                                                  // 0x004da329    6a0a
                         mov.s              ecx, esi                                             // 0x004da32b    8bce
                         call               dword ptr [eax + 0x20]                               // 0x004da32d    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da330    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da333    896b04
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da336    894308
                         mov                dword ptr [ebx], 0x008cfa94                          // 0x004da339    c70394fa8c00
                         {disp8} mov        dword ptr [edi + 0x74], ebx                          // 0x004da33f    895f74
                         mov.s              eax, edi                                             // 0x004da342    8bc7
                         pop                edi                                                  // 0x004da344    5f
                         pop                esi                                                  // 0x004da345    5e
                         pop                ebp                                                  // 0x004da346    5d
                         pop                ebx                                                  // 0x004da347    5b
                         ret                                                                     // 0x004da348    c3
_jmp_addr_0x004da349:    {disp8} mov        dword ptr [edi + 0x74], ebp                          // 0x004da349    896f74
                         mov.s              eax, edi                                             // 0x004da34c    8bc7
                         pop                edi                                                  // 0x004da34e    5f
                         pop                esi                                                  // 0x004da34f    5e
                         pop                ebp                                                  // 0x004da350    5d
                         pop                ebx                                                  // 0x004da351    5b
                         ret                                                                     // 0x004da352    c3
                         nop                                                                     // 0x004da353    90
                         nop                                                                     // 0x004da354    90
                         nop                                                                     // 0x004da355    90
                         nop                                                                     // 0x004da356    90
                         nop                                                                     // 0x004da357    90
                         nop                                                                     // 0x004da358    90
                         nop                                                                     // 0x004da359    90
                         nop                                                                     // 0x004da35a    90
                         nop                                                                     // 0x004da35b    90
                         nop                                                                     // 0x004da35c    90
                         nop                                                                     // 0x004da35d    90
                         nop                                                                     // 0x004da35e    90
                         nop                                                                     // 0x004da35f    90
                         push               ebx                                                  // 0x004da360    53
                         push               ebp                                                  // 0x004da361    55
                         push               esi                                                  // 0x004da362    56
                         push               edi                                                  // 0x004da363    57
                         push               0x000000d1                                           // 0x004da364    68d1000000
                         push               0x00bdf3f8                                           // 0x004da369    68f8f3bd00
                         push               0x6c                                                 // 0x004da36e    6a6c
                         mov.s              esi, ecx                                             // 0x004da370    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da372    e879c3f5ff
                         mov.s              edi, eax                                             // 0x004da377    8bf8
                         xor.s              ebp, ebp                                             // 0x004da379    33ed
                         add                esp, 0x0c                                            // 0x004da37b    83c40c
                         cmp.s              edi, ebp                                             // 0x004da37e    3bfd
                         {disp8} je         _jmp_addr_0x004da39b                                 // 0x004da380    7419
                         mov.s              ecx, edi                                             // 0x004da382    8bcf
                         call               _jmp_addr_0x004d7810                                 // 0x004da384    e887d4ffff
                         mov.s              ecx, edi                                             // 0x004da389    8bcf
                         mov                dword ptr [edi], 0x008cfd6c                          // 0x004da38b    c7076cfd8c00
                         call               _jmp_addr_0x004d9b60                                 // 0x004da391    e8caf7ffff
                         {disp8} mov        dword ptr [edi + 0x20], ebp                          // 0x004da396    896f20
                         {disp8} jmp        _jmp_addr_0x004da39d                                 // 0x004da399    eb02
_jmp_addr_0x004da39b:    xor.s              edi, edi                                             // 0x004da39b    33ff
_jmp_addr_0x004da39d:    mov                eax, dword ptr [esi]                                 // 0x004da39d    8b06
                         mov.s              ecx, esi                                             // 0x004da39f    8bce
                         xor.s              ebx, ebx                                             // 0x004da3a1    33db
                         call               dword ptr [eax + 0x1c]                               // 0x004da3a3    ff501c
                         test               eax, eax                                             // 0x004da3a6    85c0
                         {disp8} jbe        _jmp_addr_0x004da3cc                                 // 0x004da3a8    7622
                         {disp8} lea        ebp, dword ptr [edi + 0x4c]                          // 0x004da3aa    8d6f4c
_jmp_addr_0x004da3ad:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                          // 0x004da3ad    8b4d00
                         test               ecx, ecx                                             // 0x004da3b0    85c9
                         {disp8} je         _jmp_addr_0x004da3bb                                 // 0x004da3b2    7407
                         mov                edx, dword ptr [ecx]                                 // 0x004da3b4    8b11
                         push               0x1                                                  // 0x004da3b6    6a01
                         call               dword ptr [edx + 4]                                  // 0x004da3b8    ff5204
_jmp_addr_0x004da3bb:    mov                eax, dword ptr [esi]                                 // 0x004da3bb    8b06
                         mov.s              ecx, esi                                             // 0x004da3bd    8bce
                         inc                ebx                                                  // 0x004da3bf    43
                         add                ebp, 0x04                                            // 0x004da3c0    83c504
                         call               dword ptr [eax + 0x1c]                               // 0x004da3c3    ff501c
                         cmp.s              ebx, eax                                             // 0x004da3c6    3bd8
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x004da3ad         // 0x004da3c8    72e3
                         xor.s              ebp, ebp                                             // 0x004da3ca    33ed
_jmp_addr_0x004da3cc:    push               esi                                                  // 0x004da3cc    56
                         mov.s              ecx, edi                                             // 0x004da3cd    8bcf
                         call               _jmp_addr_0x004da010                                 // 0x004da3cf    e83cfcffff
                         mov.s              ecx, esi                                             // 0x004da3d4    8bce
                         {disp8} lea        eax, dword ptr [edi + 0x4c]                          // 0x004da3d6    8d474c
                         sub.s              ecx, edi                                             // 0x004da3d9    2bcf
                         mov                edx, 0x00000008                                      // 0x004da3db    ba08000000
_jmp_addr_0x004da3e0:    mov                ebx, dword ptr [ecx + eax * 0x1]                     // 0x004da3e0    8b1c01
                         mov                dword ptr [eax], ebx                                 // 0x004da3e3    8918
                         add                eax, 0x04                                            // 0x004da3e5    83c004
                         dec                edx                                                  // 0x004da3e8    4a
                         {disp8} jne        _jmp_addr_0x004da3e0                                 // 0x004da3e9    75f5
                         push               edi                                                  // 0x004da3eb    57
                         mov.s              ecx, esi                                             // 0x004da3ec    8bce
                         {disp8} mov        dword ptr [edi + 0x1c], ebp                          // 0x004da3ee    896f1c
                         {disp8} mov        dword ptr [edi + 0x18], ebp                          // 0x004da3f1    896f18
                         call               _jmp_addr_0x004d9800                                 // 0x004da3f4    e807f4ffff
                         push               0x000000da                                           // 0x004da3f9    68da000000
                         push               0x00bdf3f8                                           // 0x004da3fe    68f8f3bd00
                         push               0xc                                                  // 0x004da403    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da405    e8e6c2f5ff
                         mov.s              ebx, eax                                             // 0x004da40a    8bd8
                         add                esp, 0x0c                                            // 0x004da40c    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da40f    3bdd
                         {disp8} je         _jmp_addr_0x004da435                                 // 0x004da411    7422
                         mov                edx, dword ptr [esi]                                 // 0x004da413    8b16
                         push               0x1                                                  // 0x004da415    6a01
                         mov.s              ecx, esi                                             // 0x004da417    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004da419    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da41c    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da41f    896b04
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da422    894308
                         mov                dword ptr [ebx], 0x008cfa5c                          // 0x004da425    c7035cfa8c00
                         {disp8} mov        dword ptr [edi + 0x68], ebx                          // 0x004da42b    895f68
                         mov.s              eax, edi                                             // 0x004da42e    8bc7
                         pop                edi                                                  // 0x004da430    5f
                         pop                esi                                                  // 0x004da431    5e
                         pop                ebp                                                  // 0x004da432    5d
                         pop                ebx                                                  // 0x004da433    5b
                         ret                                                                     // 0x004da434    c3
_jmp_addr_0x004da435:    xor.s              eax, eax                                             // 0x004da435    33c0
                         {disp8} mov        dword ptr [edi + 0x68], eax                          // 0x004da437    894768
                         mov.s              eax, edi                                             // 0x004da43a    8bc7
                         pop                edi                                                  // 0x004da43c    5f
                         pop                esi                                                  // 0x004da43d    5e
                         pop                ebp                                                  // 0x004da43e    5d
                         pop                ebx                                                  // 0x004da43f    5b
                         ret                                                                     // 0x004da440    c3
                         nop                                                                     // 0x004da441    90
                         nop                                                                     // 0x004da442    90
                         nop                                                                     // 0x004da443    90
                         nop                                                                     // 0x004da444    90
                         nop                                                                     // 0x004da445    90
                         nop                                                                     // 0x004da446    90
                         nop                                                                     // 0x004da447    90
                         nop                                                                     // 0x004da448    90
                         nop                                                                     // 0x004da449    90
                         nop                                                                     // 0x004da44a    90
                         nop                                                                     // 0x004da44b    90
                         nop                                                                     // 0x004da44c    90
                         nop                                                                     // 0x004da44d    90
                         nop                                                                     // 0x004da44e    90
                         nop                                                                     // 0x004da44f    90
                         push               ebx                                                  // 0x004da450    53
                         push               ebp                                                  // 0x004da451    55
                         push               esi                                                  // 0x004da452    56
                         push               edi                                                  // 0x004da453    57
                         push               0x000000e2                                           // 0x004da454    68e2000000
                         push               0x00bdf3f8                                           // 0x004da459    68f8f3bd00
                         push               0x78                                                 // 0x004da45e    6a78
                         mov.s              esi, ecx                                             // 0x004da460    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da462    e889c2f5ff
                         mov.s              edi, eax                                             // 0x004da467    8bf8
                         xor.s              ebp, ebp                                             // 0x004da469    33ed
                         add                esp, 0x0c                                            // 0x004da46b    83c40c
                         cmp.s              edi, ebp                                             // 0x004da46e    3bfd
                         {disp8} je         _jmp_addr_0x004da48b                                 // 0x004da470    7419
                         mov.s              ecx, edi                                             // 0x004da472    8bcf
                         call               _jmp_addr_0x004d7810                                 // 0x004da474    e897d3ffff
                         mov.s              ecx, edi                                             // 0x004da479    8bcf
                         mov                dword ptr [edi], 0x008cfcdc                          // 0x004da47b    c707dcfc8c00
                         call               _jmp_addr_0x004d9ba0                                 // 0x004da481    e81af7ffff
                         {disp8} mov        dword ptr [edi + 0x20], ebp                          // 0x004da486    896f20
                         {disp8} jmp        _jmp_addr_0x004da48d                                 // 0x004da489    eb02
_jmp_addr_0x004da48b:    xor.s              edi, edi                                             // 0x004da48b    33ff
_jmp_addr_0x004da48d:    mov                eax, dword ptr [esi]                                 // 0x004da48d    8b06
                         mov.s              ecx, esi                                             // 0x004da48f    8bce
                         xor.s              ebx, ebx                                             // 0x004da491    33db
                         call               dword ptr [eax + 0x1c]                               // 0x004da493    ff501c
                         test               eax, eax                                             // 0x004da496    85c0
                         {disp8} jbe        _jmp_addr_0x004da4bc                                 // 0x004da498    7622
                         {disp8} lea        ebp, dword ptr [edi + 0x4c]                          // 0x004da49a    8d6f4c
_jmp_addr_0x004da49d:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                          // 0x004da49d    8b4d00
                         test               ecx, ecx                                             // 0x004da4a0    85c9
                         {disp8} je         _jmp_addr_0x004da4ab                                 // 0x004da4a2    7407
                         mov                edx, dword ptr [ecx]                                 // 0x004da4a4    8b11
                         push               0x1                                                  // 0x004da4a6    6a01
                         call               dword ptr [edx + 4]                                  // 0x004da4a8    ff5204
_jmp_addr_0x004da4ab:    mov                eax, dword ptr [esi]                                 // 0x004da4ab    8b06
                         mov.s              ecx, esi                                             // 0x004da4ad    8bce
                         inc                ebx                                                  // 0x004da4af    43
                         add                ebp, 0x04                                            // 0x004da4b0    83c504
                         call               dword ptr [eax + 0x1c]                               // 0x004da4b3    ff501c
                         cmp.s              ebx, eax                                             // 0x004da4b6    3bd8
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x004da49d         // 0x004da4b8    72e3
                         xor.s              ebp, ebp                                             // 0x004da4ba    33ed
_jmp_addr_0x004da4bc:    push               esi                                                  // 0x004da4bc    56
                         mov.s              ecx, edi                                             // 0x004da4bd    8bcf
                         call               _jmp_addr_0x004da010                                 // 0x004da4bf    e84cfbffff
                         mov.s              ecx, esi                                             // 0x004da4c4    8bce
                         {disp8} lea        eax, dword ptr [edi + 0x4c]                          // 0x004da4c6    8d474c
                         sub.s              ecx, edi                                             // 0x004da4c9    2bcf
                         mov                edx, 0x0000000b                                      // 0x004da4cb    ba0b000000
_jmp_addr_0x004da4d0:    mov                ebx, dword ptr [ecx + eax * 0x1]                     // 0x004da4d0    8b1c01
                         mov                dword ptr [eax], ebx                                 // 0x004da4d3    8918
                         add                eax, 0x04                                            // 0x004da4d5    83c004
                         dec                edx                                                  // 0x004da4d8    4a
                         {disp8} jne        _jmp_addr_0x004da4d0                                 // 0x004da4d9    75f5
                         push               edi                                                  // 0x004da4db    57
                         mov.s              ecx, esi                                             // 0x004da4dc    8bce
                         {disp8} mov        dword ptr [edi + 0x1c], ebp                          // 0x004da4de    896f1c
                         {disp8} mov        dword ptr [edi + 0x18], ebp                          // 0x004da4e1    896f18
                         call               _jmp_addr_0x004d9800                                 // 0x004da4e4    e817f3ffff
                         push               0x000000eb                                           // 0x004da4e9    68eb000000
                         push               0x00bdf3f8                                           // 0x004da4ee    68f8f3bd00
                         push               0xc                                                  // 0x004da4f3    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da4f5    e8f6c1f5ff
                         mov.s              ebx, eax                                             // 0x004da4fa    8bd8
                         add                esp, 0x0c                                            // 0x004da4fc    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da4ff    3bdd
                         {disp8} je         _jmp_addr_0x004da51d                                 // 0x004da501    741a
                         mov                edx, dword ptr [esi]                                 // 0x004da503    8b16
                         push               0x7                                                  // 0x004da505    6a07
                         mov.s              ecx, esi                                             // 0x004da507    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004da509    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da50c    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da50f    896b04
                         mov                dword ptr [ebx], 0x008cf4f4                          // 0x004da512    c703f4f48c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da518    894308
                         {disp8} jmp        _jmp_addr_0x004da51f                                 // 0x004da51b    eb02
_jmp_addr_0x004da51d:    xor.s              ebx, ebx                                             // 0x004da51d    33db
_jmp_addr_0x004da51f:    push               0x000000ec                                           // 0x004da51f    68ec000000
                         push               0x00bdf3f8                                           // 0x004da524    68f8f3bd00
                         push               0xc                                                  // 0x004da529    6a0c
                         {disp8} mov        dword ptr [edi + 0x68], ebx                          // 0x004da52b    895f68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da52e    e8bdc1f5ff
                         mov.s              ebx, eax                                             // 0x004da533    8bd8
                         add                esp, 0x0c                                            // 0x004da535    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da538    3bdd
                         {disp8} je         _jmp_addr_0x004da556                                 // 0x004da53a    741a
                         mov                eax, dword ptr [esi]                                 // 0x004da53c    8b06
                         push               0x8                                                  // 0x004da53e    6a08
                         mov.s              ecx, esi                                             // 0x004da540    8bce
                         call               dword ptr [eax + 0x20]                               // 0x004da542    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da545    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da548    896b04
                         mov                dword ptr [ebx], 0x008cf4bc                          // 0x004da54b    c703bcf48c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da551    894308
                         {disp8} jmp        _jmp_addr_0x004da558                                 // 0x004da554    eb02
_jmp_addr_0x004da556:    xor.s              ebx, ebx                                             // 0x004da556    33db
_jmp_addr_0x004da558:    push               0x000000ed                                           // 0x004da558    68ed000000
                         push               0x00bdf3f8                                           // 0x004da55d    68f8f3bd00
                         push               0xc                                                  // 0x004da562    6a0c
                         {disp8} mov        dword ptr [edi + 0x6c], ebx                          // 0x004da564    895f6c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da567    e884c1f5ff
                         mov.s              ebx, eax                                             // 0x004da56c    8bd8
                         add                esp, 0x0c                                            // 0x004da56e    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da571    3bdd
                         {disp8} je         _jmp_addr_0x004da58f                                 // 0x004da573    741a
                         mov                edx, dword ptr [esi]                                 // 0x004da575    8b16
                         push               0x9                                                  // 0x004da577    6a09
                         mov.s              ecx, esi                                             // 0x004da579    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004da57b    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da57e    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da581    896b04
                         mov                dword ptr [ebx], 0x008cf484                          // 0x004da584    c70384f48c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da58a    894308
                         {disp8} jmp        _jmp_addr_0x004da591                                 // 0x004da58d    eb02
_jmp_addr_0x004da58f:    xor.s              ebx, ebx                                             // 0x004da58f    33db
_jmp_addr_0x004da591:    push               0x000000ee                                           // 0x004da591    68ee000000
                         push               0x00bdf3f8                                           // 0x004da596    68f8f3bd00
                         push               0xc                                                  // 0x004da59b    6a0c
                         {disp8} mov        dword ptr [edi + 0x70], ebx                          // 0x004da59d    895f70
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da5a0    e84bc1f5ff
                         mov.s              ebx, eax                                             // 0x004da5a5    8bd8
                         add                esp, 0x0c                                            // 0x004da5a7    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da5aa    3bdd
                         {disp8} je         _jmp_addr_0x004da5d0                                 // 0x004da5ac    7422
                         mov                eax, dword ptr [esi]                                 // 0x004da5ae    8b06
                         push               0xa                                                  // 0x004da5b0    6a0a
                         mov.s              ecx, esi                                             // 0x004da5b2    8bce
                         call               dword ptr [eax + 0x20]                               // 0x004da5b4    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da5b7    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da5ba    896b04
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da5bd    894308
                         mov                dword ptr [ebx], 0x008cf44c                          // 0x004da5c0    c7034cf48c00
                         {disp8} mov        dword ptr [edi + 0x74], ebx                          // 0x004da5c6    895f74
                         mov.s              eax, edi                                             // 0x004da5c9    8bc7
                         pop                edi                                                  // 0x004da5cb    5f
                         pop                esi                                                  // 0x004da5cc    5e
                         pop                ebp                                                  // 0x004da5cd    5d
                         pop                ebx                                                  // 0x004da5ce    5b
                         ret                                                                     // 0x004da5cf    c3
_jmp_addr_0x004da5d0:    {disp8} mov        dword ptr [edi + 0x74], ebp                          // 0x004da5d0    896f74
                         mov.s              eax, edi                                             // 0x004da5d3    8bc7
                         pop                edi                                                  // 0x004da5d5    5f
                         pop                esi                                                  // 0x004da5d6    5e
                         pop                ebp                                                  // 0x004da5d7    5d
                         pop                ebx                                                  // 0x004da5d8    5b
                         ret                                                                     // 0x004da5d9    c3
                         call               dword ptr [__imp__GetOpenFileNameA@4]                // 0x004da5da    ff1570998a00
                         push               ebx                                                  // 0x004da5e0    53
                         push               ebp                                                  // 0x004da5e1    55
                         push               esi                                                  // 0x004da5e2    56
                         push               edi                                                  // 0x004da5e3    57
                         push               0x000000f6                                           // 0x004da5e4    68f6000000
                         push               0x00bdf3f8                                           // 0x004da5e9    68f8f3bd00
                         push               0x6c                                                 // 0x004da5ee    6a6c
                         mov.s              esi, ecx                                             // 0x004da5f0    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da5f2    e8f9c0f5ff
                         mov.s              edi, eax                                             // 0x004da5f7    8bf8
                         xor.s              ebp, ebp                                             // 0x004da5f9    33ed
                         add                esp, 0x0c                                            // 0x004da5fb    83c40c
                         cmp.s              edi, ebp                                             // 0x004da5fe    3bfd
                         {disp8} je         _jmp_addr_0x004da61b                                 // 0x004da600    7419
                         mov.s              ecx, edi                                             // 0x004da602    8bcf
                         call               _jmp_addr_0x004d7810                                 // 0x004da604    e807d2ffff
                         mov.s              ecx, edi                                             // 0x004da609    8bcf
                         mov                dword ptr [edi], 0x008cfe88                          // 0x004da60b    c70788fe8c00
                         call               _jmp_addr_0x004d9c50                                 // 0x004da611    e83af6ffff
                         {disp8} mov        dword ptr [edi + 0x20], ebp                          // 0x004da616    896f20
                         {disp8} jmp        _jmp_addr_0x004da61d                                 // 0x004da619    eb02
_jmp_addr_0x004da61b:    xor.s              edi, edi                                             // 0x004da61b    33ff
_jmp_addr_0x004da61d:    mov                eax, dword ptr [esi]                                 // 0x004da61d    8b06
                         mov.s              ecx, esi                                             // 0x004da61f    8bce
                         xor.s              ebx, ebx                                             // 0x004da621    33db
                         call               dword ptr [eax + 0x1c]                               // 0x004da623    ff501c
                         test               eax, eax                                             // 0x004da626    85c0
                         {disp8} jbe        _jmp_addr_0x004da64c                                 // 0x004da628    7622
                         {disp8} lea        ebp, dword ptr [edi + 0x4c]                          // 0x004da62a    8d6f4c
_jmp_addr_0x004da62d:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                          // 0x004da62d    8b4d00
                         test               ecx, ecx                                             // 0x004da630    85c9
                         {disp8} je         _jmp_addr_0x004da63b                                 // 0x004da632    7407
                         mov                edx, dword ptr [ecx]                                 // 0x004da634    8b11
                         push               0x1                                                  // 0x004da636    6a01
                         call               dword ptr [edx + 4]                                  // 0x004da638    ff5204
_jmp_addr_0x004da63b:    mov                eax, dword ptr [esi]                                 // 0x004da63b    8b06
                         mov.s              ecx, esi                                             // 0x004da63d    8bce
                         inc                ebx                                                  // 0x004da63f    43
                         add                ebp, 0x04                                            // 0x004da640    83c504
                         call               dword ptr [eax + 0x1c]                               // 0x004da643    ff501c
                         cmp.s              ebx, eax                                             // 0x004da646    3bd8
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x004da62d         // 0x004da648    72e3
                         xor.s              ebp, ebp                                             // 0x004da64a    33ed
_jmp_addr_0x004da64c:    push               esi                                                  // 0x004da64c    56
                         mov.s              ecx, edi                                             // 0x004da64d    8bcf
                         call               _jmp_addr_0x004da010                                 // 0x004da64f    e8bcf9ffff
                         mov.s              ecx, esi                                             // 0x004da654    8bce
                         {disp8} lea        eax, dword ptr [edi + 0x4c]                          // 0x004da656    8d474c
                         sub.s              ecx, edi                                             // 0x004da659    2bcf
                         mov                edx, 0x00000008                                      // 0x004da65b    ba08000000
_jmp_addr_0x004da660:    mov                ebx, dword ptr [ecx + eax * 0x1]                     // 0x004da660    8b1c01
                         mov                dword ptr [eax], ebx                                 // 0x004da663    8918
                         add                eax, 0x04                                            // 0x004da665    83c004
                         dec                edx                                                  // 0x004da668    4a
                         {disp8} jne        _jmp_addr_0x004da660                                 // 0x004da669    75f5
                         push               edi                                                  // 0x004da66b    57
                         mov.s              ecx, esi                                             // 0x004da66c    8bce
                         {disp8} mov        dword ptr [edi + 0x1c], ebp                          // 0x004da66e    896f1c
                         {disp8} mov        dword ptr [edi + 0x18], ebp                          // 0x004da671    896f18
                         call               _jmp_addr_0x004d9800                                 // 0x004da674    e887f1ffff
                         push               0x000000ff                                           // 0x004da679    68ff000000
                         push               0x00bdf3f8                                           // 0x004da67e    68f8f3bd00
                         push               0xc                                                  // 0x004da683    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da685    e866c0f5ff
                         mov.s              ebx, eax                                             // 0x004da68a    8bd8
                         add                esp, 0x0c                                            // 0x004da68c    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da68f    3bdd
                         {disp8} je         _jmp_addr_0x004da6b5                                 // 0x004da691    7422
                         mov                edx, dword ptr [esi]                                 // 0x004da693    8b16
                         push               0x7                                                  // 0x004da695    6a07
                         mov.s              ecx, esi                                             // 0x004da697    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004da699    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da69c    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da69f    896b04
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da6a2    894308
                         mov                dword ptr [ebx], 0x008cfa24                          // 0x004da6a5    c70324fa8c00
                         {disp8} mov        dword ptr [edi + 0x68], ebx                          // 0x004da6ab    895f68
                         mov.s              eax, edi                                             // 0x004da6ae    8bc7
                         pop                edi                                                  // 0x004da6b0    5f
                         pop                esi                                                  // 0x004da6b1    5e
                         pop                ebp                                                  // 0x004da6b2    5d
                         pop                ebx                                                  // 0x004da6b3    5b
                         ret                                                                     // 0x004da6b4    c3
_jmp_addr_0x004da6b5:    xor.s              eax, eax                                             // 0x004da6b5    33c0
                         {disp8} mov        dword ptr [edi + 0x68], eax                          // 0x004da6b7    894768
                         mov.s              eax, edi                                             // 0x004da6ba    8bc7
                         pop                edi                                                  // 0x004da6bc    5f
                         pop                esi                                                  // 0x004da6bd    5e
                         pop                ebp                                                  // 0x004da6be    5d
                         pop                ebx                                                  // 0x004da6bf    5b
                         ret                                                                     // 0x004da6c0    c3
                         nop                                                                     // 0x004da6c1    90
                         nop                                                                     // 0x004da6c2    90
                         nop                                                                     // 0x004da6c3    90
                         nop                                                                     // 0x004da6c4    90
                         nop                                                                     // 0x004da6c5    90
                         nop                                                                     // 0x004da6c6    90
                         nop                                                                     // 0x004da6c7    90
                         nop                                                                     // 0x004da6c8    90
                         nop                                                                     // 0x004da6c9    90
                         nop                                                                     // 0x004da6ca    90
                         nop                                                                     // 0x004da6cb    90
                         nop                                                                     // 0x004da6cc    90
                         nop                                                                     // 0x004da6cd    90
                         nop                                                                     // 0x004da6ce    90
                         nop                                                                     // 0x004da6cf    90
                         mov                eax, 0x00000008                                      // 0x004da6d0    b808000000
                         ret                                                                     // 0x004da6d5    c3
                         nop                                                                     // 0x004da6d6    90
                         nop                                                                     // 0x004da6d7    90
                         nop                                                                     // 0x004da6d8    90
                         nop                                                                     // 0x004da6d9    90
                         nop                                                                     // 0x004da6da    90
                         nop                                                                     // 0x004da6db    90
                         nop                                                                     // 0x004da6dc    90
                         nop                                                                     // 0x004da6dd    90
                         nop                                                                     // 0x004da6de    90
                         nop                                                                     // 0x004da6df    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004da6e0    8b442404
                         {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x4c]              // 0x004da6e4    8b44814c
                         ret                0x0004                                               // 0x004da6e8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x004da6eb    e88971f2ff
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004da6f0    8b442404
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x4c]              // 0x004da6f4    8d44814c
                         ret                0x0004                                               // 0x004da6f8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x004da6fb    e87971f2ff
??_GCreatureBeliefAboutMobileObject@@UAEPAXI@Z:
                         push               esi                                                  // 0x004da700    56
                         mov.s              esi, ecx                                             // 0x004da701    8bf1
                         call               _jmp_addr_0x004dabf0                                 // 0x004da703    e8e8040000
                         test               byte ptr [esp + 0x08], 0x01                          // 0x004da708    f644240801
                         {disp8} je         _jmp_addr_0x004da71a                                 // 0x004da70d    740b
                         push               0x6c                                                 // 0x004da70f    6a6c
                         push               esi                                                  // 0x004da711    56
                         call               ??3Base@@SAXPAXK@Z                                 // 0x004da712    e859c2f5ff
                         add                esp, 0x08                                            // 0x004da717    83c408
_jmp_addr_0x004da71a:    mov.s              eax, esi                                             // 0x004da71a    8bc6
                         pop                esi                                                  // 0x004da71c    5e
                         ret                0x0004                                               // 0x004da71d    c20400
                         push               ebx                                                  // 0x004da720    53
                         push               ebp                                                  // 0x004da721    55
                         push               esi                                                  // 0x004da722    56
                         push               edi                                                  // 0x004da723    57
                         push               0x00000107                                           // 0x004da724    6807010000
                         push               0x00bdf3f8                                           // 0x004da729    68f8f3bd00
                         push               0x78                                                 // 0x004da72e    6a78
                         mov.s              esi, ecx                                             // 0x004da730    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da732    e8b9bff5ff
                         mov.s              edi, eax                                             // 0x004da737    8bf8
                         xor.s              ebp, ebp                                             // 0x004da739    33ed
                         add                esp, 0x0c                                            // 0x004da73b    83c40c
                         cmp.s              edi, ebp                                             // 0x004da73e    3bfd
                         {disp8} je         _jmp_addr_0x004da75b                                 // 0x004da740    7419
                         mov.s              ecx, edi                                             // 0x004da742    8bcf
                         call               _jmp_addr_0x004d7810                                 // 0x004da744    e8c7d0ffff
                         mov.s              ecx, edi                                             // 0x004da749    8bcf
                         mov                dword ptr [edi], 0x008cfc94                          // 0x004da74b    c70794fc8c00
                         call               _jmp_addr_0x004d9c90                                 // 0x004da751    e83af5ffff
                         {disp8} mov        dword ptr [edi + 0x20], ebp                          // 0x004da756    896f20
                         {disp8} jmp        _jmp_addr_0x004da75d                                 // 0x004da759    eb02
_jmp_addr_0x004da75b:    xor.s              edi, edi                                             // 0x004da75b    33ff
_jmp_addr_0x004da75d:    mov                eax, dword ptr [esi]                                 // 0x004da75d    8b06
                         mov.s              ecx, esi                                             // 0x004da75f    8bce
                         xor.s              ebx, ebx                                             // 0x004da761    33db
                         call               dword ptr [eax + 0x1c]                               // 0x004da763    ff501c
                         test               eax, eax                                             // 0x004da766    85c0
                         {disp8} jbe        _jmp_addr_0x004da78c                                 // 0x004da768    7622
                         {disp8} lea        ebp, dword ptr [edi + 0x4c]                          // 0x004da76a    8d6f4c
_jmp_addr_0x004da76d:    {disp8} mov        ecx, dword ptr [ebp + 0x00]                          // 0x004da76d    8b4d00
                         test               ecx, ecx                                             // 0x004da770    85c9
                         {disp8} je         _jmp_addr_0x004da77b                                 // 0x004da772    7407
                         mov                edx, dword ptr [ecx]                                 // 0x004da774    8b11
                         push               0x1                                                  // 0x004da776    6a01
                         call               dword ptr [edx + 4]                                  // 0x004da778    ff5204
_jmp_addr_0x004da77b:    mov                eax, dword ptr [esi]                                 // 0x004da77b    8b06
                         mov.s              ecx, esi                                             // 0x004da77d    8bce
                         inc                ebx                                                  // 0x004da77f    43
                         add                ebp, 0x04                                            // 0x004da780    83c504
                         call               dword ptr [eax + 0x1c]                               // 0x004da783    ff501c
                         cmp.s              ebx, eax                                             // 0x004da786    3bd8
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x004da76d         // 0x004da788    72e3
                         xor.s              ebp, ebp                                             // 0x004da78a    33ed
_jmp_addr_0x004da78c:    push               esi                                                  // 0x004da78c    56
                         mov.s              ecx, edi                                             // 0x004da78d    8bcf
                         call               _jmp_addr_0x004da010                                 // 0x004da78f    e87cf8ffff
                         mov.s              ecx, esi                                             // 0x004da794    8bce
                         {disp8} lea        eax, dword ptr [edi + 0x4c]                          // 0x004da796    8d474c
                         sub.s              ecx, edi                                             // 0x004da799    2bcf
                         mov                edx, 0x0000000b                                      // 0x004da79b    ba0b000000
_jmp_addr_0x004da7a0:    mov                ebx, dword ptr [ecx + eax * 0x1]                     // 0x004da7a0    8b1c01
                         mov                dword ptr [eax], ebx                                 // 0x004da7a3    8918
                         add                eax, 0x04                                            // 0x004da7a5    83c004
                         dec                edx                                                  // 0x004da7a8    4a
                         {disp8} jne        _jmp_addr_0x004da7a0                                 // 0x004da7a9    75f5
                         push               edi                                                  // 0x004da7ab    57
                         mov.s              ecx, esi                                             // 0x004da7ac    8bce
                         {disp8} mov        dword ptr [edi + 0x1c], ebp                          // 0x004da7ae    896f1c
                         {disp8} mov        dword ptr [edi + 0x18], ebp                          // 0x004da7b1    896f18
                         call               _jmp_addr_0x004d9800                                 // 0x004da7b4    e847f0ffff
                         push               0x00000110                                           // 0x004da7b9    6810010000
                         push               0x00bdf3f8                                           // 0x004da7be    68f8f3bd00
                         push               0xc                                                  // 0x004da7c3    6a0c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da7c5    e826bff5ff
                         mov.s              ebx, eax                                             // 0x004da7ca    8bd8
                         add                esp, 0x0c                                            // 0x004da7cc    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da7cf    3bdd
                         {disp8} je         _jmp_addr_0x004da7ed                                 // 0x004da7d1    741a
                         mov                edx, dword ptr [esi]                                 // 0x004da7d3    8b16
                         push               0x7                                                  // 0x004da7d5    6a07
                         mov.s              ecx, esi                                             // 0x004da7d7    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004da7d9    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da7dc    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da7df    896b04
                         mov                dword ptr [ebx], 0x008cf9ec                          // 0x004da7e2    c703ecf98c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da7e8    894308
                         {disp8} jmp        _jmp_addr_0x004da7ef                                 // 0x004da7eb    eb02
_jmp_addr_0x004da7ed:    xor.s              ebx, ebx                                             // 0x004da7ed    33db
_jmp_addr_0x004da7ef:    push               0x00000111                                           // 0x004da7ef    6811010000
                         push               0x00bdf3f8                                           // 0x004da7f4    68f8f3bd00
                         push               0xc                                                  // 0x004da7f9    6a0c
                         {disp8} mov        dword ptr [edi + 0x68], ebx                          // 0x004da7fb    895f68
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da7fe    e8edbef5ff
                         mov.s              ebx, eax                                             // 0x004da803    8bd8
                         add                esp, 0x0c                                            // 0x004da805    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da808    3bdd
                         {disp8} je         _jmp_addr_0x004da826                                 // 0x004da80a    741a
                         mov                eax, dword ptr [esi]                                 // 0x004da80c    8b06
                         push               0x8                                                  // 0x004da80e    6a08
                         mov.s              ecx, esi                                             // 0x004da810    8bce
                         call               dword ptr [eax + 0x20]                               // 0x004da812    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da815    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da818    896b04
                         mov                dword ptr [ebx], 0x008cf484                          // 0x004da81b    c70384f48c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da821    894308
                         {disp8} jmp        _jmp_addr_0x004da828                                 // 0x004da824    eb02
_jmp_addr_0x004da826:    xor.s              ebx, ebx                                             // 0x004da826    33db
_jmp_addr_0x004da828:    push               0x00000112                                           // 0x004da828    6812010000
                         push               0x00bdf3f8                                           // 0x004da82d    68f8f3bd00
                         push               0xc                                                  // 0x004da832    6a0c
                         {disp8} mov        dword ptr [edi + 0x6c], ebx                          // 0x004da834    895f6c
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da837    e8b4bef5ff
                         mov.s              ebx, eax                                             // 0x004da83c    8bd8
                         add                esp, 0x0c                                            // 0x004da83e    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da841    3bdd
                         {disp8} je         _jmp_addr_0x004da85f                                 // 0x004da843    741a
                         mov                edx, dword ptr [esi]                                 // 0x004da845    8b16
                         push               0x9                                                  // 0x004da847    6a09
                         mov.s              ecx, esi                                             // 0x004da849    8bce
                         call               dword ptr [edx + 0x20]                               // 0x004da84b    ff5220
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da84e    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da851    896b04
                         mov                dword ptr [ebx], 0x008cf44c                          // 0x004da854    c7034cf48c00
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da85a    894308
                         {disp8} jmp        _jmp_addr_0x004da861                                 // 0x004da85d    eb02
_jmp_addr_0x004da85f:    xor.s              ebx, ebx                                             // 0x004da85f    33db
_jmp_addr_0x004da861:    push               0x00000113                                           // 0x004da861    6813010000
                         push               0x00bdf3f8                                           // 0x004da866    68f8f3bd00
                         push               0xc                                                  // 0x004da86b    6a0c
                         {disp8} mov        dword ptr [edi + 0x70], ebx                          // 0x004da86d    895f70
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da870    e87bbef5ff
                         mov.s              ebx, eax                                             // 0x004da875    8bd8
                         add                esp, 0x0c                                            // 0x004da877    83c40c
                         cmp.s              ebx, ebp                                             // 0x004da87a    3bdd
                         {disp8} je         _jmp_addr_0x004da8a0                                 // 0x004da87c    7422
                         mov                eax, dword ptr [esi]                                 // 0x004da87e    8b06
                         push               0xa                                                  // 0x004da880    6a0a
                         mov.s              ecx, esi                                             // 0x004da882    8bce
                         call               dword ptr [eax + 0x20]                               // 0x004da884    ff5020
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da887    8b4008
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                          // 0x004da88a    896b04
                         {disp8} mov        dword ptr [ebx + 0x08], eax                          // 0x004da88d    894308
                         mov                dword ptr [ebx], 0x008cf9b4                          // 0x004da890    c703b4f98c00
                         {disp8} mov        dword ptr [edi + 0x74], ebx                          // 0x004da896    895f74
                         mov.s              eax, edi                                             // 0x004da899    8bc7
                         pop                edi                                                  // 0x004da89b    5f
                         pop                esi                                                  // 0x004da89c    5e
                         pop                ebp                                                  // 0x004da89d    5d
                         pop                ebx                                                  // 0x004da89e    5b
                         ret                                                                     // 0x004da89f    c3
_jmp_addr_0x004da8a0:    {disp8} mov        dword ptr [edi + 0x74], ebp                          // 0x004da8a0    896f74
                         mov.s              eax, edi                                             // 0x004da8a3    8bc7
                         pop                edi                                                  // 0x004da8a5    5f
                         pop                esi                                                  // 0x004da8a6    5e
                         pop                ebp                                                  // 0x004da8a7    5d
                         pop                ebx                                                  // 0x004da8a8    5b
                         ret                                                                     // 0x004da8a9    c3
                         call               dword ptr [__imp__DirectDrawEnumerateA@4]            // 0x004da8aa    ff1528908a00
                         push               ebx                                                  // 0x004da8b0    53
                         push               ebp                                                  // 0x004da8b1    55
                         push               esi                                                  // 0x004da8b2    56
                         push               edi                                                  // 0x004da8b3    57
                         push               0x0000011b                                           // 0x004da8b4    681b010000
                         push               0x00bdf3f8                                           // 0x004da8b9    68f8f3bd00
                         push               0x68                                                 // 0x004da8be    6a68
                         mov.s              edi, ecx                                             // 0x004da8c0    8bf9
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da8c2    e829bef5ff
                         mov.s              esi, eax                                             // 0x004da8c7    8bf0
                         xor.s              ebx, ebx                                             // 0x004da8c9    33db
                         add                esp, 0x0c                                            // 0x004da8cb    83c40c
                         cmp.s              esi, ebx                                             // 0x004da8ce    3bf3
                         {disp8} je         _jmp_addr_0x004da8eb                                 // 0x004da8d0    7419
                         mov.s              ecx, esi                                             // 0x004da8d2    8bce
                         call               _jmp_addr_0x004d7810                                 // 0x004da8d4    e837cfffff
                         mov.s              ecx, esi                                             // 0x004da8d9    8bce
                         mov                dword ptr [esi], 0x008cfc4c                          // 0x004da8db    c7064cfc8c00
                         call               _jmp_addr_0x004d9d40                                 // 0x004da8e1    e85af4ffff
                         {disp8} mov        dword ptr [esi + 0x20], ebx                          // 0x004da8e6    895e20
                         {disp8} jmp        _jmp_addr_0x004da8ed                                 // 0x004da8e9    eb02
_jmp_addr_0x004da8eb:    xor.s              esi, esi                                             // 0x004da8eb    33f6
_jmp_addr_0x004da8ed:    mov                eax, dword ptr [edi]                                 // 0x004da8ed    8b07
                         mov.s              ecx, edi                                             // 0x004da8ef    8bcf
                         xor.s              ebp, ebp                                             // 0x004da8f1    33ed
                         call               dword ptr [eax + 0x1c]                               // 0x004da8f3    ff501c
                         test               eax, eax                                             // 0x004da8f6    85c0
                         {disp8} jbe        _jmp_addr_0x004da91b                                 // 0x004da8f8    7621
                         {disp8} lea        ebx, dword ptr [esi + 0x4c]                          // 0x004da8fa    8d5e4c
_jmp_addr_0x004da8fd:    mov                ecx, dword ptr [ebx]                                 // 0x004da8fd    8b0b
                         test               ecx, ecx                                             // 0x004da8ff    85c9
                         {disp8} je         _jmp_addr_0x004da90a                                 // 0x004da901    7407
                         mov                edx, dword ptr [ecx]                                 // 0x004da903    8b11
                         push               0x1                                                  // 0x004da905    6a01
                         call               dword ptr [edx + 4]                                  // 0x004da907    ff5204
_jmp_addr_0x004da90a:    mov                eax, dword ptr [edi]                                 // 0x004da90a    8b07
                         mov.s              ecx, edi                                             // 0x004da90c    8bcf
                         inc                ebp                                                  // 0x004da90e    45
                         add                ebx, 0x04                                            // 0x004da90f    83c304
                         call               dword ptr [eax + 0x1c]                               // 0x004da912    ff501c
                         cmp.s              ebp, eax                                             // 0x004da915    3be8
                         .byte              0x72, 0xe4// {disp8} jb _jmp_addr_0x004da8fd         // 0x004da917    72e4
                         xor.s              ebx, ebx                                             // 0x004da919    33db
_jmp_addr_0x004da91b:    {disp8} mov        ecx, dword ptr [edi + 0x04]                          // 0x004da91b    8b4f04
                         {disp8} mov        dword ptr [esi + 0x04], ecx                          // 0x004da91e    894e04
                         {disp8} mov        edx, dword ptr [edi + 0x08]                          // 0x004da921    8b5708
                         {disp8} mov        dword ptr [esi + 0x08], edx                          // 0x004da924    895608
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                          // 0x004da927    8b470c
                         {disp8} mov        dword ptr [esi + 0x0c], eax                          // 0x004da92a    89460c
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                          // 0x004da92d    8b4f10
                         {disp8} mov        dword ptr [esi + 0x10], ecx                          // 0x004da930    894e10
                         {disp8} mov        edx, dword ptr [edi + 0x14]                          // 0x004da933    8b5714
                         {disp8} mov        dword ptr [esi + 0x14], edx                          // 0x004da936    895614
                         {disp8} mov        eax, dword ptr [edi + 0x18]                          // 0x004da939    8b4718
                         {disp8} mov        dword ptr [esi + 0x18], eax                          // 0x004da93c    894618
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                          // 0x004da93f    8b4f1c
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                          // 0x004da942    894e1c
                         {disp8} mov        edx, dword ptr [edi + 0x20]                          // 0x004da945    8b5720
                         {disp8} mov        dword ptr [esi + 0x20], edx                          // 0x004da948    895620
                         {disp8} lea        eax, dword ptr [edi + 0x24]                          // 0x004da94b    8d4724
                         mov                edx, dword ptr [eax]                                 // 0x004da94e    8b10
                         {disp8} lea        ecx, dword ptr [esi + 0x24]                          // 0x004da950    8d4e24
                         mov                dword ptr [ecx], edx                                 // 0x004da953    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x004da955    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                          // 0x004da958    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x004da95b    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                          // 0x004da95e    894108
                         {disp8} mov        ecx, dword ptr [edi + 0x30]                          // 0x004da961    8b4f30
                         {disp8} mov        dword ptr [esi + 0x30], ecx                          // 0x004da964    894e30
                         {disp8} mov        edx, dword ptr [edi + 0x34]                          // 0x004da967    8b5734
                         {disp8} mov        dword ptr [esi + 0x34], edx                          // 0x004da96a    895634
                         {disp8} mov        eax, dword ptr [edi + 0x38]                          // 0x004da96d    8b4738
                         {disp8} mov        dword ptr [esi + 0x38], eax                          // 0x004da970    894638
                         {disp8} mov        ecx, dword ptr [edi + 0x3c]                          // 0x004da973    8b4f3c
                         {disp8} mov        dword ptr [esi + 0x3c], ecx                          // 0x004da976    894e3c
                         mov.s              ecx, edi                                             // 0x004da979    8bcf
                         mov                ebp, 0xffffffc0                                      // 0x004da97b    bdc0ffffff
                         sub.s              ecx, esi                                             // 0x004da980    2bce
                         {disp8} lea        eax, dword ptr [esi + 0x40]                          // 0x004da982    8d4640
                         sub.s              ebp, esi                                             // 0x004da985    2bee
_jmp_addr_0x004da987:    mov                dl, byte ptr [ecx + eax * 0x1]                       // 0x004da987    8a1401
                         mov                byte ptr [eax], dl                                   // 0x004da98a    8810
                         inc                eax                                                  // 0x004da98c    40
                         lea                edx, dword ptr [eax + ebp * 0x1]                     // 0x004da98d    8d1428
                         cmp                edx, 0x06                                            // 0x004da990    83fa06
                         .byte              0x72, 0xf2// {disp8} jb _jmp_addr_0x004da987         // 0x004da993    72f2
                         {disp8} mov        eax, dword ptr [edi + 0x48]                          // 0x004da995    8b4748
                         {disp8} mov        dword ptr [esi + 0x48], eax                          // 0x004da998    894648
                         {disp8} lea        eax, dword ptr [esi + 0x4c]                          // 0x004da99b    8d464c
                         mov                edx, 0x00000007                                      // 0x004da99e    ba07000000
_jmp_addr_0x004da9a3:    mov                ebp, dword ptr [eax + ecx * 0x1]                     // 0x004da9a3    8b2c08
                         mov                dword ptr [eax], ebp                                 // 0x004da9a6    8928
                         add                eax, 0x04                                            // 0x004da9a8    83c004
                         dec                edx                                                  // 0x004da9ab    4a
                         {disp8} jne        _jmp_addr_0x004da9a3                                 // 0x004da9ac    75f5
                         push               esi                                                  // 0x004da9ae    56
                         mov.s              ecx, edi                                             // 0x004da9af    8bcf
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                          // 0x004da9b1    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                          // 0x004da9b4    895e18
                         call               _jmp_addr_0x004d9800                                 // 0x004da9b7    e844eeffff
                         pop                edi                                                  // 0x004da9bc    5f
                         mov.s              eax, esi                                             // 0x004da9bd    8bc6
                         pop                esi                                                  // 0x004da9bf    5e
                         pop                ebp                                                  // 0x004da9c0    5d
                         pop                ebx                                                  // 0x004da9c1    5b
                         ret                                                                     // 0x004da9c2    c3
                         nop                                                                     // 0x004da9c3    90
                         nop                                                                     // 0x004da9c4    90
                         nop                                                                     // 0x004da9c5    90
                         nop                                                                     // 0x004da9c6    90
                         nop                                                                     // 0x004da9c7    90
                         nop                                                                     // 0x004da9c8    90
                         nop                                                                     // 0x004da9c9    90
                         nop                                                                     // 0x004da9ca    90
                         nop                                                                     // 0x004da9cb    90
                         nop                                                                     // 0x004da9cc    90
                         nop                                                                     // 0x004da9cd    90
                         nop                                                                     // 0x004da9ce    90
                         nop                                                                     // 0x004da9cf    90
                         push               ebp                                                  // 0x004da9d0    55
                         push               esi                                                  // 0x004da9d1    56
                         push               edi                                                  // 0x004da9d2    57
                         push               0x0000012b                                           // 0x004da9d3    682b010000
                         push               0x00bdf3f8                                           // 0x004da9d8    68f8f3bd00
                         push               0x4c                                                 // 0x004da9dd    6a4c
                         mov.s              esi, ecx                                             // 0x004da9df    8bf1
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x004da9e1    e80abdf5ff
                         mov.s              edi, eax                                             // 0x004da9e6    8bf8
                         add                esp, 0x0c                                            // 0x004da9e8    83c40c
                         test               edi, edi                                             // 0x004da9eb    85ff
                         {disp8} je         _jmp_addr_0x004daa0e                                 // 0x004da9ed    741f
                         mov.s              ecx, edi                                             // 0x004da9ef    8bcf
                         call               _jmp_addr_0x004d7810                                 // 0x004da9f1    e81aceffff
                         mov.s              ecx, edi                                             // 0x004da9f6    8bcf
                         mov                dword ptr [edi], 0x008cfc04                          // 0x004da9f8    c70704fc8c00
                         call               _jmp_addr_0x004d9d50                                 // 0x004da9fe    e84df3ffff
                         {disp8} mov        dword ptr [edi + 0x20], 0x00000000                   // 0x004daa03    c7472000000000
                         mov.s              eax, edi                                             // 0x004daa0a    8bc7
                         {disp8} jmp        _jmp_addr_0x004daa10                                 // 0x004daa0c    eb02
_jmp_addr_0x004daa0e:    xor.s              eax, eax                                             // 0x004daa0e    33c0
_jmp_addr_0x004daa10:    {disp8} mov        ecx, dword ptr [esi + 0x04]                          // 0x004daa10    8b4e04
                         {disp8} mov        dword ptr [eax + 0x04], ecx                          // 0x004daa13    894804
                         {disp8} mov        edx, dword ptr [esi + 0x08]                          // 0x004daa16    8b5608
                         {disp8} mov        dword ptr [eax + 0x08], edx                          // 0x004daa19    895008
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                          // 0x004daa1c    8b4e0c
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                          // 0x004daa1f    89480c
                         {disp8} mov        edx, dword ptr [esi + 0x10]                          // 0x004daa22    8b5610
                         {disp8} mov        dword ptr [eax + 0x10], edx                          // 0x004daa25    895010
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                          // 0x004daa28    8b4e14
                         {disp8} mov        dword ptr [eax + 0x14], ecx                          // 0x004daa2b    894814
                         {disp8} mov        edx, dword ptr [esi + 0x18]                          // 0x004daa2e    8b5618
                         {disp8} mov        dword ptr [eax + 0x18], edx                          // 0x004daa31    895018
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                          // 0x004daa34    8b4e1c
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                          // 0x004daa37    89481c
                         {disp8} mov        edx, dword ptr [esi + 0x20]                          // 0x004daa3a    8b5620
                         {disp8} mov        dword ptr [eax + 0x20], edx                          // 0x004daa3d    895020
                         {disp8} lea        ecx, dword ptr [esi + 0x24]                          // 0x004daa40    8d4e24
                         mov                edi, dword ptr [ecx]                                 // 0x004daa43    8b39
                         {disp8} lea        edx, dword ptr [eax + 0x24]                          // 0x004daa45    8d5024
                         mov                dword ptr [edx], edi                                 // 0x004daa48    893a
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                          // 0x004daa4a    8b7904
                         {disp8} mov        dword ptr [edx + 0x04], edi                          // 0x004daa4d    897a04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x004daa50    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                          // 0x004daa53    894a08
                         {disp8} mov        edx, dword ptr [esi + 0x30]                          // 0x004daa56    8b5630
                         {disp8} mov        dword ptr [eax + 0x30], edx                          // 0x004daa59    895030
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                          // 0x004daa5c    8b4e34
                         {disp8} mov        dword ptr [eax + 0x34], ecx                          // 0x004daa5f    894834
                         {disp8} mov        edx, dword ptr [esi + 0x38]                          // 0x004daa62    8b5638
                         {disp8} mov        dword ptr [eax + 0x38], edx                          // 0x004daa65    895038
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                          // 0x004daa68    8b4e3c
                         mov.s              edi, esi                                             // 0x004daa6b    8bfe
                         mov                ebp, 0xffffffc0                                      // 0x004daa6d    bdc0ffffff
                         {disp8} mov        dword ptr [eax + 0x3c], ecx                          // 0x004daa72    89483c
                         sub.s              edi, eax                                             // 0x004daa75    2bf8
                         {disp8} lea        ecx, dword ptr [eax + 0x40]                          // 0x004daa77    8d4840
                         sub.s              ebp, eax                                             // 0x004daa7a    2be8
_jmp_addr_0x004daa7c:    mov                dl, byte ptr [edi + ecx * 0x1]                       // 0x004daa7c    8a140f
                         mov                byte ptr [ecx], dl                                   // 0x004daa7f    8811
                         inc                ecx                                                  // 0x004daa81    41
                         lea                edx, dword ptr [ecx + ebp * 0x1]                     // 0x004daa82    8d1429
                         cmp                edx, 0x06                                            // 0x004daa85    83fa06
                         .byte              0x72, 0xf2// {disp8} jb _jmp_addr_0x004daa7c         // 0x004daa88    72f2
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                          // 0x004daa8a    8b4e48
                         pop                edi                                                  // 0x004daa8d    5f
                         pop                esi                                                  // 0x004daa8e    5e
                         {disp8} mov        dword ptr [eax + 0x48], ecx                          // 0x004daa8f    894848
                         {disp8} mov        dword ptr [eax + 0x1c], 0x00000000                   // 0x004daa92    c7401c00000000
                         {disp8} mov        dword ptr [eax + 0x18], 0x00000000                   // 0x004daa99    c7401800000000
                         pop                ebp                                                  // 0x004daaa0    5d
                         ret                                                                     // 0x004daaa1    c3
                         nop                                                                     // 0x004daaa2    90
                         nop                                                                     // 0x004daaa3    90
                         nop                                                                     // 0x004daaa4    90
                         nop                                                                     // 0x004daaa5    90
                         nop                                                                     // 0x004daaa6    90
                         nop                                                                     // 0x004daaa7    90
                         nop                                                                     // 0x004daaa8    90
                         nop                                                                     // 0x004daaa9    90
                         nop                                                                     // 0x004daaaa    90
                         nop                                                                     // 0x004daaab    90
                         nop                                                                     // 0x004daaac    90
                         nop                                                                     // 0x004daaad    90
                         nop                                                                     // 0x004daaae    90
                         nop                                                                     // 0x004daaaf    90
_jmp_addr_0x004daab0:    push               ebx                                                  // 0x004daab0    53
                         push               esi                                                  // 0x004daab1    56
                         mov.s              ebx, ecx                                             // 0x004daab2    8bd9
                         push               edi                                                  // 0x004daab4    57
                         mov                dword ptr [ebx], 0x008cfb74                          // 0x004daab5    c70374fb8c00
                         {disp8} lea        esi, dword ptr [ebx + 0x4c]                          // 0x004daabb    8d734c
                         mov                edi, 0x00000007                                      // 0x004daabe    bf07000000
_jmp_addr_0x004daac3:    mov                ecx, dword ptr [esi]                                 // 0x004daac3    8b0e
                         test               ecx, ecx                                             // 0x004daac5    85c9
                         {disp8} je         _jmp_addr_0x004daad0                                 // 0x004daac7    7407
                         mov                eax, dword ptr [ecx]                                 // 0x004daac9    8b01
                         push               0x1                                                  // 0x004daacb    6a01
                         call               dword ptr [eax + 4]                                  // 0x004daacd    ff5004
_jmp_addr_0x004daad0:    add                esi, 0x04                                            // 0x004daad0    83c604
                         dec                edi                                                  // 0x004daad3    4f
                         {disp8} jne        _jmp_addr_0x004daac3                                 // 0x004daad4    75ed
                         mov.s              ecx, ebx                                             // 0x004daad6    8bcb
                         call               _jmp_addr_0x004d8b50                                 // 0x004daad8    e873e0ffff
                         pop                edi                                                  // 0x004daadd    5f
                         pop                esi                                                  // 0x004daade    5e
                         pop                ebx                                                  // 0x004daadf    5b
                         ret                                                                     // 0x004daae0    c3
                         nop                                                                     // 0x004daae1    90
                         nop                                                                     // 0x004daae2    90
                         nop                                                                     // 0x004daae3    90
                         nop                                                                     // 0x004daae4    90
                         nop                                                                     // 0x004daae5    90
                         nop                                                                     // 0x004daae6    90
                         nop                                                                     // 0x004daae7    90
                         nop                                                                     // 0x004daae8    90
                         nop                                                                     // 0x004daae9    90
                         nop                                                                     // 0x004daaea    90
                         nop                                                                     // 0x004daaeb    90
                         nop                                                                     // 0x004daaec    90
                         nop                                                                     // 0x004daaed    90
                         nop                                                                     // 0x004daaee    90
                         nop                                                                     // 0x004daaef    90
_jmp_addr_0x004daaf0:    push               ebx                                                  // 0x004daaf0    53
                         push               esi                                                  // 0x004daaf1    56
                         mov.s              ebx, ecx                                             // 0x004daaf2    8bd9
                         push               edi                                                  // 0x004daaf4    57
                         mov                dword ptr [ebx], 0x008cfdb4                          // 0x004daaf5    c703b4fd8c00
                         {disp8} lea        esi, dword ptr [ebx + 0x4c]                          // 0x004daafb    8d734c
                         mov                edi, 0x0000000b                                      // 0x004daafe    bf0b000000
_jmp_addr_0x004dab03:    mov                ecx, dword ptr [esi]                                 // 0x004dab03    8b0e
                         test               ecx, ecx                                             // 0x004dab05    85c9
                         {disp8} je         _jmp_addr_0x004dab10                                 // 0x004dab07    7407
                         mov                eax, dword ptr [ecx]                                 // 0x004dab09    8b01
                         push               0x1                                                  // 0x004dab0b    6a01
                         call               dword ptr [eax + 4]                                  // 0x004dab0d    ff5004
_jmp_addr_0x004dab10:    add                esi, 0x04                                            // 0x004dab10    83c604
                         dec                edi                                                  // 0x004dab13    4f
                         {disp8} jne        _jmp_addr_0x004dab03                                 // 0x004dab14    75ed
                         mov.s              ecx, ebx                                             // 0x004dab16    8bcb
                         call               _jmp_addr_0x004d8b50                                 // 0x004dab18    e833e0ffff
                         pop                edi                                                  // 0x004dab1d    5f
                         pop                esi                                                  // 0x004dab1e    5e
                         pop                ebx                                                  // 0x004dab1f    5b
                         ret                                                                     // 0x004dab20    c3
                         nop                                                                     // 0x004dab21    90
                         nop                                                                     // 0x004dab22    90
                         nop                                                                     // 0x004dab23    90
                         nop                                                                     // 0x004dab24    90
                         nop                                                                     // 0x004dab25    90
                         nop                                                                     // 0x004dab26    90
                         nop                                                                     // 0x004dab27    90
                         nop                                                                     // 0x004dab28    90
                         nop                                                                     // 0x004dab29    90
                         nop                                                                     // 0x004dab2a    90
                         nop                                                                     // 0x004dab2b    90
                         nop                                                                     // 0x004dab2c    90
                         nop                                                                     // 0x004dab2d    90
                         nop                                                                     // 0x004dab2e    90
                         nop                                                                     // 0x004dab2f    90
_jmp_addr_0x004dab30:    push               ebx                                                  // 0x004dab30    53
                         push               esi                                                  // 0x004dab31    56
                         mov.s              ebx, ecx                                             // 0x004dab32    8bd9
                         push               edi                                                  // 0x004dab34    57
                         mov                dword ptr [ebx], 0x008cfbbc                          // 0x004dab35    c703bcfb8c00
                         {disp8} lea        esi, dword ptr [ebx + 0x4c]                          // 0x004dab3b    8d734c
                         mov                edi, 0x00000007                                      // 0x004dab3e    bf07000000
_jmp_addr_0x004dab43:    mov                ecx, dword ptr [esi]                                 // 0x004dab43    8b0e
                         test               ecx, ecx                                             // 0x004dab45    85c9
                         {disp8} je         _jmp_addr_0x004dab50                                 // 0x004dab47    7407
                         mov                eax, dword ptr [ecx]                                 // 0x004dab49    8b01
                         push               0x1                                                  // 0x004dab4b    6a01
                         call               dword ptr [eax + 4]                                  // 0x004dab4d    ff5004
_jmp_addr_0x004dab50:    add                esi, 0x04                                            // 0x004dab50    83c604
                         dec                edi                                                  // 0x004dab53    4f
                         {disp8} jne        _jmp_addr_0x004dab43                                 // 0x004dab54    75ed
                         mov.s              ecx, ebx                                             // 0x004dab56    8bcb
                         call               _jmp_addr_0x004d8b50                                 // 0x004dab58    e8f3dfffff
                         pop                edi                                                  // 0x004dab5d    5f
                         pop                esi                                                  // 0x004dab5e    5e
                         pop                ebx                                                  // 0x004dab5f    5b
                         ret                                                                     // 0x004dab60    c3
                         nop                                                                     // 0x004dab61    90
                         nop                                                                     // 0x004dab62    90
                         nop                                                                     // 0x004dab63    90
                         nop                                                                     // 0x004dab64    90
                         nop                                                                     // 0x004dab65    90
                         nop                                                                     // 0x004dab66    90
                         nop                                                                     // 0x004dab67    90
                         nop                                                                     // 0x004dab68    90
                         nop                                                                     // 0x004dab69    90
                         nop                                                                     // 0x004dab6a    90
                         nop                                                                     // 0x004dab6b    90
                         nop                                                                     // 0x004dab6c    90
                         nop                                                                     // 0x004dab6d    90
                         nop                                                                     // 0x004dab6e    90
                         nop                                                                     // 0x004dab6f    90
_jmp_addr_0x004dab70:    push               ebx                                                  // 0x004dab70    53
                         push               esi                                                  // 0x004dab71    56
                         mov.s              ebx, ecx                                             // 0x004dab72    8bd9
                         push               edi                                                  // 0x004dab74    57
                         mov                dword ptr [ebx], 0x008cfd24                          // 0x004dab75    c70324fd8c00
                         {disp8} lea        esi, dword ptr [ebx + 0x4c]                          // 0x004dab7b    8d734c
                         mov                edi, 0x0000000b                                      // 0x004dab7e    bf0b000000
_jmp_addr_0x004dab83:    mov                ecx, dword ptr [esi]                                 // 0x004dab83    8b0e
                         test               ecx, ecx                                             // 0x004dab85    85c9
                         {disp8} je         _jmp_addr_0x004dab90                                 // 0x004dab87    7407
                         mov                eax, dword ptr [ecx]                                 // 0x004dab89    8b01
                         push               0x1                                                  // 0x004dab8b    6a01
                         call               dword ptr [eax + 4]                                  // 0x004dab8d    ff5004
_jmp_addr_0x004dab90:    add                esi, 0x04                                            // 0x004dab90    83c604
                         dec                edi                                                  // 0x004dab93    4f
                         {disp8} jne        _jmp_addr_0x004dab83                                 // 0x004dab94    75ed
                         mov.s              ecx, ebx                                             // 0x004dab96    8bcb
                         call               _jmp_addr_0x004d8b50                                 // 0x004dab98    e8b3dfffff
                         pop                edi                                                  // 0x004dab9d    5f
                         pop                esi                                                  // 0x004dab9e    5e
                         pop                ebx                                                  // 0x004dab9f    5b
                         ret                                                                     // 0x004daba0    c3
                         nop                                                                     // 0x004daba1    90
                         nop                                                                     // 0x004daba2    90
                         nop                                                                     // 0x004daba3    90
                         nop                                                                     // 0x004daba4    90
                         nop                                                                     // 0x004daba5    90
                         nop                                                                     // 0x004daba6    90
                         nop                                                                     // 0x004daba7    90
                         nop                                                                     // 0x004daba8    90
                         nop                                                                     // 0x004daba9    90
                         nop                                                                     // 0x004dabaa    90
                         nop                                                                     // 0x004dabab    90
                         nop                                                                     // 0x004dabac    90
                         nop                                                                     // 0x004dabad    90
                         nop                                                                     // 0x004dabae    90
                         nop                                                                     // 0x004dabaf    90
_jmp_addr_0x004dabb0:    push               ebx                                                  // 0x004dabb0    53
                         push               esi                                                  // 0x004dabb1    56
                         mov.s              ebx, ecx                                             // 0x004dabb2    8bd9
                         push               edi                                                  // 0x004dabb4    57
                         mov                dword ptr [ebx], 0x008cfd6c                          // 0x004dabb5    c7036cfd8c00
                         {disp8} lea        esi, dword ptr [ebx + 0x4c]                          // 0x004dabbb    8d734c
                         mov                edi, 0x00000008                                      // 0x004dabbe    bf08000000
_jmp_addr_0x004dabc3:    mov                ecx, dword ptr [esi]                                 // 0x004dabc3    8b0e
                         test               ecx, ecx                                             // 0x004dabc5    85c9
                         {disp8} je         _jmp_addr_0x004dabd0                                 // 0x004dabc7    7407
                         mov                eax, dword ptr [ecx]                                 // 0x004dabc9    8b01
                         push               0x1                                                  // 0x004dabcb    6a01
                         call               dword ptr [eax + 4]                                  // 0x004dabcd    ff5004
_jmp_addr_0x004dabd0:    add                esi, 0x04                                            // 0x004dabd0    83c604
                         dec                edi                                                  // 0x004dabd3    4f
                         {disp8} jne        _jmp_addr_0x004dabc3                                 // 0x004dabd4    75ed
                         mov.s              ecx, ebx                                             // 0x004dabd6    8bcb
                         call               _jmp_addr_0x004d8b50                                 // 0x004dabd8    e873dfffff
                         pop                edi                                                  // 0x004dabdd    5f
                         pop                esi                                                  // 0x004dabde    5e
                         pop                ebx                                                  // 0x004dabdf    5b
                         ret                                                                     // 0x004dabe0    c3
                         nop                                                                     // 0x004dabe1    90
                         nop                                                                     // 0x004dabe2    90
                         nop                                                                     // 0x004dabe3    90
                         nop                                                                     // 0x004dabe4    90
                         nop                                                                     // 0x004dabe5    90
                         nop                                                                     // 0x004dabe6    90
                         nop                                                                     // 0x004dabe7    90
                         nop                                                                     // 0x004dabe8    90
                         nop                                                                     // 0x004dabe9    90
                         nop                                                                     // 0x004dabea    90
                         nop                                                                     // 0x004dabeb    90
                         nop                                                                     // 0x004dabec    90
                         nop                                                                     // 0x004dabed    90
                         nop                                                                     // 0x004dabee    90
                         nop                                                                     // 0x004dabef    90
_jmp_addr_0x004dabf0:    push               ebx                                                  // 0x004dabf0    53
                         push               esi                                                  // 0x004dabf1    56
                         mov.s              ebx, ecx                                             // 0x004dabf2    8bd9
                         push               edi                                                  // 0x004dabf4    57
                         mov                dword ptr [ebx], 0x008cfe88                          // 0x004dabf5    c70388fe8c00
                         {disp8} lea        esi, dword ptr [ebx + 0x4c]                          // 0x004dabfb    8d734c
                         mov                edi, 0x00000008                                      // 0x004dabfe    bf08000000
_jmp_addr_0x004dac03:    mov                ecx, dword ptr [esi]                                 // 0x004dac03    8b0e
                         test               ecx, ecx                                             // 0x004dac05    85c9
                         {disp8} je         _jmp_addr_0x004dac10                                 // 0x004dac07    7407
                         mov                eax, dword ptr [ecx]                                 // 0x004dac09    8b01
                         push               0x1                                                  // 0x004dac0b    6a01
                         call               dword ptr [eax + 4]                                  // 0x004dac0d    ff5004
_jmp_addr_0x004dac10:    add                esi, 0x04                                            // 0x004dac10    83c604
                         dec                edi                                                  // 0x004dac13    4f
                         {disp8} jne        _jmp_addr_0x004dac03                                 // 0x004dac14    75ed
                         mov.s              ecx, ebx                                             // 0x004dac16    8bcb
                         call               _jmp_addr_0x004d8b50                                 // 0x004dac18    e833dfffff
                         pop                edi                                                  // 0x004dac1d    5f
                         pop                esi                                                  // 0x004dac1e    5e
                         pop                ebx                                                  // 0x004dac1f    5b
                         ret                                                                     // 0x004dac20    c3
                         nop                                                                     // 0x004dac21    90
                         nop                                                                     // 0x004dac22    90
                         nop                                                                     // 0x004dac23    90
                         nop                                                                     // 0x004dac24    90
                         nop                                                                     // 0x004dac25    90
                         nop                                                                     // 0x004dac26    90
                         nop                                                                     // 0x004dac27    90
                         nop                                                                     // 0x004dac28    90
                         nop                                                                     // 0x004dac29    90
                         nop                                                                     // 0x004dac2a    90
                         nop                                                                     // 0x004dac2b    90
                         nop                                                                     // 0x004dac2c    90
                         nop                                                                     // 0x004dac2d    90
                         nop                                                                     // 0x004dac2e    90
                         nop                                                                     // 0x004dac2f    90
_jmp_addr_0x004dac30:    push               ebx                                                  // 0x004dac30    53
                         push               esi                                                  // 0x004dac31    56
                         mov.s              ebx, ecx                                             // 0x004dac32    8bd9
                         push               edi                                                  // 0x004dac34    57
                         mov                dword ptr [ebx], 0x008cfcdc                          // 0x004dac35    c703dcfc8c00
                         {disp8} lea        esi, dword ptr [ebx + 0x4c]                          // 0x004dac3b    8d734c
                         mov                edi, 0x0000000b                                      // 0x004dac3e    bf0b000000
_jmp_addr_0x004dac43:    mov                ecx, dword ptr [esi]                                 // 0x004dac43    8b0e
                         test               ecx, ecx                                             // 0x004dac45    85c9
                         {disp8} je         _jmp_addr_0x004dac50                                 // 0x004dac47    7407
                         mov                eax, dword ptr [ecx]                                 // 0x004dac49    8b01
                         push               0x1                                                  // 0x004dac4b    6a01
                         call               dword ptr [eax + 4]                                  // 0x004dac4d    ff5004
_jmp_addr_0x004dac50:    add                esi, 0x04                                            // 0x004dac50    83c604
                         dec                edi                                                  // 0x004dac53    4f
                         {disp8} jne        _jmp_addr_0x004dac43                                 // 0x004dac54    75ed
                         mov.s              ecx, ebx                                             // 0x004dac56    8bcb
                         call               _jmp_addr_0x004d8b50                                 // 0x004dac58    e8f3deffff
                         pop                edi                                                  // 0x004dac5d    5f
                         pop                esi                                                  // 0x004dac5e    5e
                         pop                ebx                                                  // 0x004dac5f    5b
                         ret                                                                     // 0x004dac60    c3
                         nop                                                                     // 0x004dac61    90
                         nop                                                                     // 0x004dac62    90
                         nop                                                                     // 0x004dac63    90
                         nop                                                                     // 0x004dac64    90
                         nop                                                                     // 0x004dac65    90
                         nop                                                                     // 0x004dac66    90
                         nop                                                                     // 0x004dac67    90
                         nop                                                                     // 0x004dac68    90
                         nop                                                                     // 0x004dac69    90
                         nop                                                                     // 0x004dac6a    90
                         nop                                                                     // 0x004dac6b    90
                         nop                                                                     // 0x004dac6c    90
                         nop                                                                     // 0x004dac6d    90
                         nop                                                                     // 0x004dac6e    90
                         nop                                                                     // 0x004dac6f    90
_jmp_addr_0x004dac70:    push               ebx                                                  // 0x004dac70    53
                         push               esi                                                  // 0x004dac71    56
                         mov.s              ebx, ecx                                             // 0x004dac72    8bd9
                         push               edi                                                  // 0x004dac74    57
                         mov                dword ptr [ebx], 0x008cfc94                          // 0x004dac75    c70394fc8c00
                         {disp8} lea        esi, dword ptr [ebx + 0x4c]                          // 0x004dac7b    8d734c
                         mov                edi, 0x0000000b                                      // 0x004dac7e    bf0b000000
_jmp_addr_0x004dac83:    mov                ecx, dword ptr [esi]                                 // 0x004dac83    8b0e
                         test               ecx, ecx                                             // 0x004dac85    85c9
                         {disp8} je         _jmp_addr_0x004dac90                                 // 0x004dac87    7407
                         mov                eax, dword ptr [ecx]                                 // 0x004dac89    8b01
                         push               0x1                                                  // 0x004dac8b    6a01
                         call               dword ptr [eax + 4]                                  // 0x004dac8d    ff5004
_jmp_addr_0x004dac90:    add                esi, 0x04                                            // 0x004dac90    83c604
                         dec                edi                                                  // 0x004dac93    4f
                         {disp8} jne        _jmp_addr_0x004dac83                                 // 0x004dac94    75ed
                         mov.s              ecx, ebx                                             // 0x004dac96    8bcb
                         call               _jmp_addr_0x004d8b50                                 // 0x004dac98    e8b3deffff
                         pop                edi                                                  // 0x004dac9d    5f
                         pop                esi                                                  // 0x004dac9e    5e
                         pop                ebx                                                  // 0x004dac9f    5b
                         ret                                                                     // 0x004daca0    c3
                         nop                                                                     // 0x004daca1    90
                         nop                                                                     // 0x004daca2    90
                         nop                                                                     // 0x004daca3    90
                         nop                                                                     // 0x004daca4    90
                         nop                                                                     // 0x004daca5    90
                         nop                                                                     // 0x004daca6    90
                         nop                                                                     // 0x004daca7    90
                         nop                                                                     // 0x004daca8    90
                         nop                                                                     // 0x004daca9    90
                         nop                                                                     // 0x004dacaa    90
                         nop                                                                     // 0x004dacab    90
                         nop                                                                     // 0x004dacac    90
                         nop                                                                     // 0x004dacad    90
                         nop                                                                     // 0x004dacae    90
                         nop                                                                     // 0x004dacaf    90
_jmp_addr_0x004dacb0:    push               ebx                                                  // 0x004dacb0    53
                         push               esi                                                  // 0x004dacb1    56
                         mov.s              ebx, ecx                                             // 0x004dacb2    8bd9
                         push               edi                                                  // 0x004dacb4    57
                         mov                dword ptr [ebx], 0x008cfc4c                          // 0x004dacb5    c7034cfc8c00
                         {disp8} lea        esi, dword ptr [ebx + 0x4c]                          // 0x004dacbb    8d734c
                         mov                edi, 0x00000007                                      // 0x004dacbe    bf07000000
_jmp_addr_0x004dacc3:    mov                ecx, dword ptr [esi]                                 // 0x004dacc3    8b0e
                         test               ecx, ecx                                             // 0x004dacc5    85c9
                         {disp8} je         _jmp_addr_0x004dacd0                                 // 0x004dacc7    7407
                         mov                eax, dword ptr [ecx]                                 // 0x004dacc9    8b01
                         push               0x1                                                  // 0x004daccb    6a01
                         call               dword ptr [eax + 4]                                  // 0x004daccd    ff5004
_jmp_addr_0x004dacd0:    add                esi, 0x04                                            // 0x004dacd0    83c604
                         dec                edi                                                  // 0x004dacd3    4f
                         {disp8} jne        _jmp_addr_0x004dacc3                                 // 0x004dacd4    75ed
                         mov.s              ecx, ebx                                             // 0x004dacd6    8bcb
                         call               _jmp_addr_0x004d8b50                                 // 0x004dacd8    e873deffff
                         pop                edi                                                  // 0x004dacdd    5f
                         pop                esi                                                  // 0x004dacde    5e
                         pop                ebx                                                  // 0x004dacdf    5b
                         ret                                                                     // 0x004dace0    c3
                         nop                                                                     // 0x004dace1    90
                         nop                                                                     // 0x004dace2    90
                         nop                                                                     // 0x004dace3    90
                         nop                                                                     // 0x004dace4    90
                         nop                                                                     // 0x004dace5    90
                         nop                                                                     // 0x004dace6    90
                         nop                                                                     // 0x004dace7    90
                         nop                                                                     // 0x004dace8    90
                         nop                                                                     // 0x004dace9    90
                         nop                                                                     // 0x004dacea    90
                         nop                                                                     // 0x004daceb    90
                         nop                                                                     // 0x004dacec    90
                         nop                                                                     // 0x004daced    90
                         nop                                                                     // 0x004dacee    90
                         nop                                                                     // 0x004dacef    90
_jmp_addr_0x004dacf0:    mov                dword ptr [ecx], 0x008cfc04                          // 0x004dacf0    c70104fc8c00
                         {disp32} jmp       _jmp_addr_0x004d8b50                                 // 0x004dacf6    e955deffff
                         nop                                                                     // 0x004dacfb    90
                         nop                                                                     // 0x004dacfc    90
                         nop                                                                     // 0x004dacfd    90
                         nop                                                                     // 0x004dacfe    90
                         nop                                                                     // 0x004dacff    90
                         xor.s              eax, eax                                             // 0x004dad00    33c0
                         ret                0x0010                                               // 0x004dad02    c21000
                         nop                                                                     // 0x004dad05    90
                         nop                                                                     // 0x004dad06    90
                         nop                                                                     // 0x004dad07    90
                         nop                                                                     // 0x004dad08    90
                         nop                                                                     // 0x004dad09    90
                         nop                                                                     // 0x004dad0a    90
                         nop                                                                     // 0x004dad0b    90
                         nop                                                                     // 0x004dad0c    90
                         nop                                                                     // 0x004dad0d    90
                         nop                                                                     // 0x004dad0e    90
                         nop                                                                     // 0x004dad0f    90
                         sub                esp, 0x08                                            // 0x004dad10    83ec08
                         push               ebx                                                  // 0x004dad13    53
                         {disp8} mov        ebx, dword ptr [ecx + 0x18]                          // 0x004dad14    8b5918
                         xor.s              eax, eax                                             // 0x004dad17    33c0
                         test               ebx, ebx                                             // 0x004dad19    85db
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000                   // 0x004dad1b    c744240400000000
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x004dad23    89442408
                         {disp32} je        _jmp_addr_0x004dadb3                                 // 0x004dad27    0f8486000000
                         push               ebp                                                  // 0x004dad2d    55
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                          // 0x004dad2e    8b6c241c
                         push               esi                                                  // 0x004dad32    56
                         push               edi                                                  // 0x004dad33    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                          // 0x004dad34    8b7c2420
_jmp_addr_0x004dad38:    {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x004dad38    8b44241c
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                          // 0x004dad3c    8b7304
                         push               eax                                                  // 0x004dad3f    50
                         push               esi                                                  // 0x004dad40    56
                         mov.s              ecx, edi                                             // 0x004dad41    8bcf
                         call               _jmp_addr_0x004e3730                                 // 0x004dad43    e8e8890000
                         test               eax, eax                                             // 0x004dad48    85c0
                         {disp8} je         _jmp_addr_0x004dada6                                 // 0x004dad4a    745a
                         test               ebp, ebp                                             // 0x004dad4c    85ed
                         {disp8} je         _jmp_addr_0x004dad77                                 // 0x004dad4e    7427
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                          // 0x004dad50    8b4e30
                         push               0x0                                                  // 0x004dad53    6a00
                         push               0x009c7f50                                           // 0x004dad55    68507f9c00
                         push               0x009c7f30                                           // 0x004dad5a    68307f9c00
                         push               0x0                                                  // 0x004dad5f    6a00
                         push               ecx                                                  // 0x004dad61    51
                         call               ___RTDynamicCast                                     // 0x004dad62    e8b2ac2e00
                         add                esp, 0x14                                            // 0x004dad67    83c414
                         push               ebp                                                  // 0x004dad6a    55
                         push               eax                                                  // 0x004dad6b    50
                         mov.s              ecx, edi                                             // 0x004dad6c    8bcf
                         call               _jmp_addr_0x004e3800                                 // 0x004dad6e    e88d8a0000
                         test               eax, eax                                             // 0x004dad73    85c0
                         {disp8} je         _jmp_addr_0x004dada6                                 // 0x004dad75    742f
_jmp_addr_0x004dad77:    {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x004dad77    8b54241c
                         push               edx                                                  // 0x004dad7b    52
                         push               esi                                                  // 0x004dad7c    56
                         mov.s              ecx, edi                                             // 0x004dad7d    8bcf
                         call               _jmp_addr_0x004e9a70                                 // 0x004dad7f    e8ecec0000
                         {disp8} fcom       dword ptr [esp + 0x10]                               // 0x004dad84    d8542410
                         fnstsw             ax                                                   // 0x004dad88    dfe0
                         test               ah, 0x41                                             // 0x004dad8a    f6c441
                         {disp8} jne        _jmp_addr_0x004dada4                                 // 0x004dad8d    7515
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x26e74]               // 0x004dad8f    a174fe8c00
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x004dad94    d95c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x004dad98    8b4c2428
                         mov                dword ptr [ecx], eax                                 // 0x004dad9c    8901
                         {disp8} mov        dword ptr [esp + 0x14], esi                          // 0x004dad9e    89742414
                         {disp8} jmp        _jmp_addr_0x004dada6                                 // 0x004dada2    eb02
_jmp_addr_0x004dada4:    fstp               st(0)                                                // 0x004dada4    ddd8
_jmp_addr_0x004dada6:    mov                ebx, dword ptr [ebx]                                 // 0x004dada6    8b1b
                         test               ebx, ebx                                             // 0x004dada8    85db
                         {disp8} jne        _jmp_addr_0x004dad38                                 // 0x004dadaa    758c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004dadac    8b442414
                         pop                edi                                                  // 0x004dadb0    5f
                         pop                esi                                                  // 0x004dadb1    5e
                         pop                ebp                                                  // 0x004dadb2    5d
_jmp_addr_0x004dadb3:    pop                ebx                                                  // 0x004dadb3    5b
                         add                esp, 0x08                                            // 0x004dadb4    83c408
                         ret                0x0010                                               // 0x004dadb7    c21000
                         call               dword ptr [__imp__ImmGetCandidateListA@4]            // 0x004dadba    ff1524918a00
                         sub                esp, 0x08                                            // 0x004dadc0    83ec08
                         push               ebx                                                  // 0x004dadc3    53
                         {disp8} mov        ebx, dword ptr [ecx + 0x18]                          // 0x004dadc4    8b5918
                         xor.s              eax, eax                                             // 0x004dadc7    33c0
                         test               ebx, ebx                                             // 0x004dadc9    85db
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000                   // 0x004dadcb    c744240400000000
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x004dadd3    89442408
                         {disp32} je        _jmp_addr_0x004dae60                                 // 0x004dadd7    0f8483000000
                         push               ebp                                                  // 0x004daddd    55
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                          // 0x004dadde    8b6c241c
                         push               esi                                                  // 0x004dade2    56
                         push               edi                                                  // 0x004dade3    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                          // 0x004dade4    8b7c2420
_jmp_addr_0x004dade8:    {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x004dade8    8b44241c
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                          // 0x004dadec    8b7304
                         push               eax                                                  // 0x004dadef    50
                         push               esi                                                  // 0x004dadf0    56
                         mov.s              ecx, edi                                             // 0x004dadf1    8bcf
                         call               _jmp_addr_0x004e3730                                 // 0x004dadf3    e838890000
                         test               eax, eax                                             // 0x004dadf8    85c0
                         {disp8} je         _jmp_addr_0x004dae53                                 // 0x004dadfa    7457
                         test               ebp, ebp                                             // 0x004dadfc    85ed
                         {disp8} je         _jmp_addr_0x004dae27                                 // 0x004dadfe    7427
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                          // 0x004dae00    8b4e30
                         push               0x0                                                  // 0x004dae03    6a00
                         push               0x009c7f50                                           // 0x004dae05    68507f9c00
                         push               0x009c7f30                                           // 0x004dae0a    68307f9c00
                         push               0x0                                                  // 0x004dae0f    6a00
                         push               ecx                                                  // 0x004dae11    51
                         call               ___RTDynamicCast                                     // 0x004dae12    e802ac2e00
                         add                esp, 0x14                                            // 0x004dae17    83c414
                         push               ebp                                                  // 0x004dae1a    55
                         push               eax                                                  // 0x004dae1b    50
                         mov.s              ecx, edi                                             // 0x004dae1c    8bcf
                         call               _jmp_addr_0x004e3800                                 // 0x004dae1e    e8dd890000
                         test               eax, eax                                             // 0x004dae23    85c0
                         {disp8} je         _jmp_addr_0x004dae53                                 // 0x004dae25    742c
_jmp_addr_0x004dae27:    {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x004dae27    8b54241c
                         push               edx                                                  // 0x004dae2b    52
                         push               esi                                                  // 0x004dae2c    56
                         mov.s              ecx, edi                                             // 0x004dae2d    8bcf
                         call               _jmp_addr_0x004e9a70                                 // 0x004dae2f    e83cec0000
                         {disp8} fcom       dword ptr [esp + 0x10]                               // 0x004dae34    d8542410
                         fnstsw             ax                                                   // 0x004dae38    dfe0
                         test               ah, 0x41                                             // 0x004dae3a    f6c441
                         {disp8} jne        _jmp_addr_0x004dae51                                 // 0x004dae3d    7512
                         {disp8} mov        eax, dword ptr [esp + 0x28]                          // 0x004dae3f    8b442428
                         fld                st(0)                                                // 0x004dae43    d9c0
                         fstp               dword ptr [eax]                                      // 0x004dae45    d918
                         {disp8} mov        dword ptr [esp + 0x14], esi                          // 0x004dae47    89742414
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x004dae4b    d95c2410
                         {disp8} jmp        _jmp_addr_0x004dae53                                 // 0x004dae4f    eb02
_jmp_addr_0x004dae51:    fstp               st(0)                                                // 0x004dae51    ddd8
_jmp_addr_0x004dae53:    mov                ebx, dword ptr [ebx]                                 // 0x004dae53    8b1b
                         test               ebx, ebx                                             // 0x004dae55    85db
                         {disp8} jne        _jmp_addr_0x004dade8                                 // 0x004dae57    758f
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004dae59    8b442414
                         pop                edi                                                  // 0x004dae5d    5f
                         pop                esi                                                  // 0x004dae5e    5e
                         pop                ebp                                                  // 0x004dae5f    5d
_jmp_addr_0x004dae60:    pop                ebx                                                  // 0x004dae60    5b
                         add                esp, 0x08                                            // 0x004dae61    83c408
                         ret                0x0010                                               // 0x004dae64    c21000
                         nop                                                                     // 0x004dae67    90
                         nop                                                                     // 0x004dae68    90
                         nop                                                                     // 0x004dae69    90
                         nop                                                                     // 0x004dae6a    90
                         nop                                                                     // 0x004dae6b    90
                         nop                                                                     // 0x004dae6c    90
                         nop                                                                     // 0x004dae6d    90
                         nop                                                                     // 0x004dae6e    90
                         nop                                                                     // 0x004dae6f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004dae70    8b442404
                         push               esi                                                  // 0x004dae74    56
                         mov.s              esi, ecx                                             // 0x004dae75    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x004dae77    8b4c240c
                         push               eax                                                  // 0x004dae7b    50
                         push               esi                                                  // 0x004dae7c    56
                         call               _jmp_addr_0x004e9a70                                 // 0x004dae7d    e8eeeb0000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x004dae82    8b4c2414
                         mov.s              eax, esi                                             // 0x004dae86    8bc6
                         fstp               dword ptr [ecx]                                      // 0x004dae88    d919
                         pop                esi                                                  // 0x004dae8a    5e
                         ret                0x0010                                               // 0x004dae8b    c21000
                         nop                                                                     // 0x004dae8e    90
                         nop                                                                     // 0x004dae8f    90
                         sub                esp, 0x08                                            // 0x004dae90    83ec08
                         push               ebx                                                  // 0x004dae93    53
                         {disp8} mov        ebx, dword ptr [ecx + 0x18]                          // 0x004dae94    8b5918
                         xor.s              eax, eax                                             // 0x004dae97    33c0
                         test               ebx, ebx                                             // 0x004dae99    85db
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000                   // 0x004dae9b    c744240400000000
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x004daea3    89442408
                         {disp32} je        _jmp_addr_0x004daf4e                                 // 0x004daea7    0f84a1000000
                         push               ebp                                                  // 0x004daead    55
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                          // 0x004daeae    8b6c2414
                         push               esi                                                  // 0x004daeb2    56
                         push               edi                                                  // 0x004daeb3    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                          // 0x004daeb4    8b7c2420
_jmp_addr_0x004daeb8:    {disp8} mov        esi, dword ptr [ebx + 0x04]                          // 0x004daeb8    8b7304
                         {disp8} mov        eax, dword ptr [esi + 0x30]                          // 0x004daebb    8b4630
                         push               0x0                                                  // 0x004daebe    6a00
                         push               0x009d96e0                                           // 0x004daec0    68e0969d00
                         push               0x009c7f30                                           // 0x004daec5    68307f9c00
                         push               0x0                                                  // 0x004daeca    6a00
                         push               eax                                                  // 0x004daecc    50
                         call               ___RTDynamicCast                                     // 0x004daecd    e847ab2e00
                         add                esp, 0x14                                            // 0x004daed2    83c414
                         push               ebp                                                  // 0x004daed5    55
                         push               esi                                                  // 0x004daed6    56
                         mov.s              ecx, edi                                             // 0x004daed7    8bcf
                         call               _jmp_addr_0x004e3730                                 // 0x004daed9    e852880000
                         test               eax, eax                                             // 0x004daede    85c0
                         {disp8} je         _jmp_addr_0x004daf3d                                 // 0x004daee0    745b
                         {disp8} mov        eax, dword ptr [esp + 0x24]                          // 0x004daee2    8b442424
                         test               eax, eax                                             // 0x004daee6    85c0
                         {disp8} je         _jmp_addr_0x004daf15                                 // 0x004daee8    742b
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                          // 0x004daeea    8b4e30
                         push               0x0                                                  // 0x004daeed    6a00
                         push               0x009c7f50                                           // 0x004daeef    68507f9c00
                         push               0x009c7f30                                           // 0x004daef4    68307f9c00
                         push               0x0                                                  // 0x004daef9    6a00
                         push               ecx                                                  // 0x004daefb    51
                         call               ___RTDynamicCast                                     // 0x004daefc    e818ab2e00
                         {disp8} mov        edx, dword ptr [esp + 0x38]                          // 0x004daf01    8b542438
                         add                esp, 0x14                                            // 0x004daf05    83c414
                         push               edx                                                  // 0x004daf08    52
                         push               eax                                                  // 0x004daf09    50
                         mov.s              ecx, edi                                             // 0x004daf0a    8bcf
                         call               _jmp_addr_0x004e3800                                 // 0x004daf0c    e8ef880000
                         test               eax, eax                                             // 0x004daf11    85c0
                         {disp8} je         _jmp_addr_0x004daf3d                                 // 0x004daf13    7428
_jmp_addr_0x004daf15:    push               ebp                                                  // 0x004daf15    55
                         push               esi                                                  // 0x004daf16    56
                         mov.s              ecx, edi                                             // 0x004daf17    8bcf
                         call               _jmp_addr_0x004e9a70                                 // 0x004daf19    e852eb0000
                         {disp8} fcom       dword ptr [esp + 0x10]                               // 0x004daf1e    d8542410
                         fnstsw             ax                                                   // 0x004daf22    dfe0
                         test               ah, 0x41                                             // 0x004daf24    f6c441
                         {disp8} jne        _jmp_addr_0x004daf3b                                 // 0x004daf27    7512
                         {disp8} mov        eax, dword ptr [esp + 0x28]                          // 0x004daf29    8b442428
                         fld                st(0)                                                // 0x004daf2d    d9c0
                         fstp               dword ptr [eax]                                      // 0x004daf2f    d918
                         {disp8} mov        dword ptr [esp + 0x14], esi                          // 0x004daf31    89742414
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x004daf35    d95c2410
                         {disp8} jmp        _jmp_addr_0x004daf3d                                 // 0x004daf39    eb02
_jmp_addr_0x004daf3b:    fstp               st(0)                                                // 0x004daf3b    ddd8
_jmp_addr_0x004daf3d:    mov                ebx, dword ptr [ebx]                                 // 0x004daf3d    8b1b
                         test               ebx, ebx                                             // 0x004daf3f    85db
                         {disp32} jne       _jmp_addr_0x004daeb8                                 // 0x004daf41    0f8571ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004daf47    8b442414
                         pop                edi                                                  // 0x004daf4b    5f
                         pop                esi                                                  // 0x004daf4c    5e
                         pop                ebp                                                  // 0x004daf4d    5d
_jmp_addr_0x004daf4e:    pop                ebx                                                  // 0x004daf4e    5b
                         add                esp, 0x08                                            // 0x004daf4f    83c408
                         ret                0x0010                                               // 0x004daf52    c21000
                         nop                                                                     // 0x004daf55    90
                         nop                                                                     // 0x004daf56    90
                         nop                                                                     // 0x004daf57    90
                         nop                                                                     // 0x004daf58    90
                         nop                                                                     // 0x004daf59    90
                         nop                                                                     // 0x004daf5a    90
                         nop                                                                     // 0x004daf5b    90
                         nop                                                                     // 0x004daf5c    90
                         nop                                                                     // 0x004daf5d    90
                         nop                                                                     // 0x004daf5e    90
                         nop                                                                     // 0x004daf5f    90
                         sub                esp, 0x08                                            // 0x004daf60    83ec08
                         push               ebx                                                  // 0x004daf63    53
                         push               esi                                                  // 0x004daf64    56
                         push               edi                                                  // 0x004daf65    57
                         xor.s              edi, edi                                             // 0x004daf66    33ff
                         push               edi                                                  // 0x004daf68    57
                         push               0x009ce848                                           // 0x004daf69    6848e89c00
                         mov.s              esi, ecx                                             // 0x004daf6e    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x30]                          // 0x004daf70    8b4630
                         push               0x009c7f30                                           // 0x004daf73    68307f9c00
                         push               edi                                                  // 0x004daf78    57
                         push               eax                                                  // 0x004daf79    50
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x004daf7a    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x24], edi                          // 0x004daf82    897c2424
                         call               ___RTDynamicCast                                     // 0x004daf86    e88eaa2e00
                         {disp8} mov        ebx, dword ptr [esi + 0x18]                          // 0x004daf8b    8b5e18
                         add                esp, 0x14                                            // 0x004daf8e    83c414
                         test               ebx, ebx                                             // 0x004daf91    85db
                         {disp32} je        _jmp_addr_0x004db021                                 // 0x004daf93    0f8488000000
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                          // 0x004daf99    8b7c241c
                         push               ebp                                                  // 0x004daf9d    55
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                          // 0x004daf9e    8b6c2424
_jmp_addr_0x004dafa2:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x004dafa2    8b4c241c
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                          // 0x004dafa6    8b7304
                         push               ecx                                                  // 0x004dafa9    51
                         push               esi                                                  // 0x004dafaa    56
                         mov.s              ecx, edi                                             // 0x004dafab    8bcf
                         call               _jmp_addr_0x004e3730                                 // 0x004dafad    e87e870000
                         test               eax, eax                                             // 0x004dafb2    85c0
                         {disp8} je         _jmp_addr_0x004db00d                                 // 0x004dafb4    7457
                         test               ebp, ebp                                             // 0x004dafb6    85ed
                         {disp8} je         _jmp_addr_0x004dafe1                                 // 0x004dafb8    7427
                         {disp8} mov        edx, dword ptr [esi + 0x30]                          // 0x004dafba    8b5630
                         push               0x0                                                  // 0x004dafbd    6a00
                         push               0x009c7f50                                           // 0x004dafbf    68507f9c00
                         push               0x009c7f30                                           // 0x004dafc4    68307f9c00
                         push               0x0                                                  // 0x004dafc9    6a00
                         push               edx                                                  // 0x004dafcb    52
                         call               ___RTDynamicCast                                     // 0x004dafcc    e848aa2e00
                         add                esp, 0x14                                            // 0x004dafd1    83c414
                         push               ebp                                                  // 0x004dafd4    55
                         push               eax                                                  // 0x004dafd5    50
                         mov.s              ecx, edi                                             // 0x004dafd6    8bcf
                         call               _jmp_addr_0x004e3800                                 // 0x004dafd8    e823880000
                         test               eax, eax                                             // 0x004dafdd    85c0
                         {disp8} je         _jmp_addr_0x004db00d                                 // 0x004dafdf    742c
_jmp_addr_0x004dafe1:    {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x004dafe1    8b44241c
                         push               eax                                                  // 0x004dafe5    50
                         push               esi                                                  // 0x004dafe6    56
                         mov.s              ecx, edi                                             // 0x004dafe7    8bcf
                         call               _jmp_addr_0x004e9a70                                 // 0x004dafe9    e882ea0000
                         {disp8} fcom       dword ptr [esp + 0x10]                               // 0x004dafee    d8542410
                         fnstsw             ax                                                   // 0x004daff2    dfe0
                         test               ah, 0x41                                             // 0x004daff4    f6c441
                         {disp8} jne        _jmp_addr_0x004db00b                                 // 0x004daff7    7512
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x004daff9    8b4c2428
                         fld                st(0)                                                // 0x004daffd    d9c0
                         fstp               dword ptr [ecx]                                      // 0x004dafff    d919
                         {disp8} mov        dword ptr [esp + 0x14], esi                          // 0x004db001    89742414
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x004db005    d95c2410
                         {disp8} jmp        _jmp_addr_0x004db00d                                 // 0x004db009    eb02
_jmp_addr_0x004db00b:    fstp               st(0)                                                // 0x004db00b    ddd8
_jmp_addr_0x004db00d:    mov                ebx, dword ptr [ebx]                                 // 0x004db00d    8b1b
                         test               ebx, ebx                                             // 0x004db00f    85db
                         {disp8} jne        _jmp_addr_0x004dafa2                                 // 0x004db011    758f
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004db013    8b442414
                         pop                ebp                                                  // 0x004db017    5d
                         pop                edi                                                  // 0x004db018    5f
                         pop                esi                                                  // 0x004db019    5e
                         pop                ebx                                                  // 0x004db01a    5b
                         add                esp, 0x08                                            // 0x004db01b    83c408
                         ret                0x0010                                               // 0x004db01e    c21000
_jmp_addr_0x004db021:    mov.s              eax, edi                                             // 0x004db021    8bc7
                         pop                edi                                                  // 0x004db023    5f
                         pop                esi                                                  // 0x004db024    5e
                         pop                ebx                                                  // 0x004db025    5b
                         add                esp, 0x08                                            // 0x004db026    83c408
                         ret                0x0010                                               // 0x004db029    c21000
                         nop                                                                     // 0x004db02c    90
                         nop                                                                     // 0x004db02d    90
                         nop                                                                     // 0x004db02e    90
                         nop                                                                     // 0x004db02f    90
                         xor.s              eax, eax                                             // 0x004db030    33c0
                         ret                0x0010                                               // 0x004db032    c21000
                         nop                                                                     // 0x004db035    90
                         nop                                                                     // 0x004db036    90
                         nop                                                                     // 0x004db037    90
                         nop                                                                     // 0x004db038    90
                         nop                                                                     // 0x004db039    90
                         nop                                                                     // 0x004db03a    90
                         nop                                                                     // 0x004db03b    90
                         nop                                                                     // 0x004db03c    90
                         nop                                                                     // 0x004db03d    90
                         nop                                                                     // 0x004db03e    90
                         nop                                                                     // 0x004db03f    90
                         xor.s              eax, eax                                             // 0x004db040    33c0
                         ret                0x0010                                               // 0x004db042    c21000
                         nop                                                                     // 0x004db045    90
                         nop                                                                     // 0x004db046    90
                         nop                                                                     // 0x004db047    90
                         nop                                                                     // 0x004db048    90
                         nop                                                                     // 0x004db049    90
                         nop                                                                     // 0x004db04a    90
                         nop                                                                     // 0x004db04b    90
                         nop                                                                     // 0x004db04c    90
                         nop                                                                     // 0x004db04d    90
                         nop                                                                     // 0x004db04e    90
                         nop                                                                     // 0x004db04f    90
                         xor.s              eax, eax                                             // 0x004db050    33c0
                         ret                0x0010                                               // 0x004db052    c21000
                         nop                                                                     // 0x004db055    90
                         nop                                                                     // 0x004db056    90
                         nop                                                                     // 0x004db057    90
                         nop                                                                     // 0x004db058    90
                         nop                                                                     // 0x004db059    90
                         nop                                                                     // 0x004db05a    90
                         nop                                                                     // 0x004db05b    90
                         nop                                                                     // 0x004db05c    90
                         nop                                                                     // 0x004db05d    90
                         nop                                                                     // 0x004db05e    90
                         nop                                                                     // 0x004db05f    90
                         xor.s              eax, eax                                             // 0x004db060    33c0
                         ret                0x0010                                               // 0x004db062    c21000
                         nop                                                                     // 0x004db065    90
                         nop                                                                     // 0x004db066    90
                         nop                                                                     // 0x004db067    90
                         nop                                                                     // 0x004db068    90
                         nop                                                                     // 0x004db069    90
                         nop                                                                     // 0x004db06a    90
                         nop                                                                     // 0x004db06b    90
                         nop                                                                     // 0x004db06c    90
                         nop                                                                     // 0x004db06d    90
                         nop                                                                     // 0x004db06e    90
                         nop                                                                     // 0x004db06f    90
_jmp_addr_0x004db070:    push               esi                                                  // 0x004db070    56
                         mov.s              esi, ecx                                             // 0x004db071    8bf1
                         call               _jmp_addr_0x004d7810                                 // 0x004db073    e898c7ffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x004db078    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x004db07c    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004db080    8b542410
                         {disp8} mov        dword ptr [esi + 0x4c], eax                          // 0x004db084    89464c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004db087    8b442414
                         {disp8} mov        dword ptr [esi + 0x50], ecx                          // 0x004db08b    894e50
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x004db08e    8b4c2418
                         {disp8} mov        dword ptr [esi + 0x58], eax                          // 0x004db092    894658
                         {disp8} mov        eax, dword ptr [esp + 0x20]                          // 0x004db095    8b442420
                         {disp8} mov        dword ptr [esi + 0x54], edx                          // 0x004db099    895654
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x004db09c    8b54241c
                         {disp8} mov        dword ptr [esi + 0x5c], ecx                          // 0x004db0a0    894e5c
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                          // 0x004db0a3    8b4c2424
                         {disp8} mov        dword ptr [esi + 0x64], eax                          // 0x004db0a7    894664
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                          // 0x004db0aa    8b44242c
                         {disp8} mov        dword ptr [esi + 0x60], edx                          // 0x004db0ae    895660
                         {disp8} mov        edx, dword ptr [esp + 0x28]                          // 0x004db0b1    8b542428
                         {disp8} mov        dword ptr [esi + 0x68], ecx                          // 0x004db0b5    894e68
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                          // 0x004db0b8    8b4c2430
                         {disp8} mov        dword ptr [esi + 0x70], eax                          // 0x004db0bc    894670
                         mov                dword ptr [esi], 0x008cfdb4                          // 0x004db0bf    c706b4fd8c00
                         {disp8} mov        dword ptr [esi + 0x6c], edx                          // 0x004db0c5    89566c
                         {disp8} mov        dword ptr [esi + 0x74], ecx                          // 0x004db0c8    894e74
                         mov.s              eax, esi                                             // 0x004db0cb    8bc6
                         pop                esi                                                  // 0x004db0cd    5e
                         ret                0x002c                                               // 0x004db0ce    c22c00
                         nop                                                                     // 0x004db0d1    90
                         nop                                                                     // 0x004db0d2    90
                         nop                                                                     // 0x004db0d3    90
                         nop                                                                     // 0x004db0d4    90
                         nop                                                                     // 0x004db0d5    90
                         nop                                                                     // 0x004db0d6    90
                         nop                                                                     // 0x004db0d7    90
                         nop                                                                     // 0x004db0d8    90
                         nop                                                                     // 0x004db0d9    90
                         nop                                                                     // 0x004db0da    90
                         nop                                                                     // 0x004db0db    90
                         nop                                                                     // 0x004db0dc    90
                         nop                                                                     // 0x004db0dd    90
                         nop                                                                     // 0x004db0de    90
                         nop                                                                     // 0x004db0df    90
                         push               esi                                                  // 0x004db0e0    56
                         mov.s              esi, ecx                                             // 0x004db0e1    8bf1
                         call               _jmp_addr_0x004d7810                                 // 0x004db0e3    e828c7ffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x004db0e8    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x004db0ec    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004db0f0    8b542410
                         {disp8} mov        dword ptr [esi + 0x4c], eax                          // 0x004db0f4    89464c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004db0f7    8b442414
                         {disp8} mov        dword ptr [esi + 0x58], eax                          // 0x004db0fb    894658
                         mov                dword ptr [esi], 0x008cfbbc                          // 0x004db0fe    c706bcfb8c00
                         {disp8} mov        dword ptr [esi + 0x50], ecx                          // 0x004db104    894e50
                         {disp8} mov        dword ptr [esi + 0x54], edx                          // 0x004db107    895654
                         mov.s              eax, esi                                             // 0x004db10a    8bc6
                         pop                esi                                                  // 0x004db10c    5e
                         ret                0x0010                                               // 0x004db10d    c21000
_jmp_addr_0x004db110:    push               esi                                                  // 0x004db110    56
                         mov.s              esi, ecx                                             // 0x004db111    8bf1
                         call               _jmp_addr_0x004d7810                                 // 0x004db113    e8f8c6ffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x004db118    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x004db11c    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004db120    8b542410
                         {disp8} mov        dword ptr [esi + 0x4c], eax                          // 0x004db124    89464c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004db127    8b442414
                         {disp8} mov        dword ptr [esi + 0x50], ecx                          // 0x004db12b    894e50
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x004db12e    8b4c2418
                         {disp8} mov        dword ptr [esi + 0x58], eax                          // 0x004db132    894658
                         {disp8} mov        eax, dword ptr [esp + 0x20]                          // 0x004db135    8b442420
                         {disp8} mov        dword ptr [esi + 0x54], edx                          // 0x004db139    895654
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x004db13c    8b54241c
                         {disp8} mov        dword ptr [esi + 0x5c], ecx                          // 0x004db140    894e5c
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                          // 0x004db143    8b4c2424
                         {disp8} mov        dword ptr [esi + 0x64], eax                          // 0x004db147    894664
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                          // 0x004db14a    8b44242c
                         {disp8} mov        dword ptr [esi + 0x60], edx                          // 0x004db14e    895660
                         {disp8} mov        edx, dword ptr [esp + 0x28]                          // 0x004db151    8b542428
                         {disp8} mov        dword ptr [esi + 0x68], ecx                          // 0x004db155    894e68
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                          // 0x004db158    8b4c2430
                         {disp8} mov        dword ptr [esi + 0x70], eax                          // 0x004db15c    894670
                         mov                dword ptr [esi], 0x008cfcdc                          // 0x004db15f    c706dcfc8c00
                         {disp8} mov        dword ptr [esi + 0x6c], edx                          // 0x004db165    89566c
                         {disp8} mov        dword ptr [esi + 0x74], ecx                          // 0x004db168    894e74
                         mov.s              eax, esi                                             // 0x004db16b    8bc6
                         pop                esi                                                  // 0x004db16d    5e
                         ret                0x002c                                               // 0x004db16e    c22c00
                         nop                                                                     // 0x004db171    90
                         nop                                                                     // 0x004db172    90
                         nop                                                                     // 0x004db173    90
                         nop                                                                     // 0x004db174    90
                         nop                                                                     // 0x004db175    90
                         nop                                                                     // 0x004db176    90
                         nop                                                                     // 0x004db177    90
                         nop                                                                     // 0x004db178    90
                         nop                                                                     // 0x004db179    90
                         nop                                                                     // 0x004db17a    90
                         nop                                                                     // 0x004db17b    90
                         nop                                                                     // 0x004db17c    90
                         nop                                                                     // 0x004db17d    90
                         nop                                                                     // 0x004db17e    90
                         nop                                                                     // 0x004db17f    90
                         push               esi                                                  // 0x004db180    56
                         mov.s              esi, ecx                                             // 0x004db181    8bf1
                         call               _jmp_addr_0x004d7810                                 // 0x004db183    e888c6ffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x004db188    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x004db18c    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004db190    8b542410
                         {disp8} mov        dword ptr [esi + 0x4c], eax                          // 0x004db194    89464c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004db197    8b442414
                         {disp8} mov        dword ptr [esi + 0x50], ecx                          // 0x004db19b    894e50
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x004db19e    8b4c2418
                         {disp8} mov        dword ptr [esi + 0x58], eax                          // 0x004db1a2    894658
                         {disp8} mov        eax, dword ptr [esp + 0x20]                          // 0x004db1a5    8b442420
                         {disp8} mov        dword ptr [esi + 0x54], edx                          // 0x004db1a9    895654
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x004db1ac    8b54241c
                         {disp8} mov        dword ptr [esi + 0x5c], ecx                          // 0x004db1b0    894e5c
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                          // 0x004db1b3    8b4c2424
                         {disp8} mov        dword ptr [esi + 0x64], eax                          // 0x004db1b7    894664
                         mov                dword ptr [esi], 0x008cfd24                          // 0x004db1ba    c70624fd8c00
                         {disp8} mov        dword ptr [esi + 0x60], edx                          // 0x004db1c0    895660
                         {disp8} mov        dword ptr [esi + 0x68], ecx                          // 0x004db1c3    894e68
                         mov.s              eax, esi                                             // 0x004db1c6    8bc6
                         pop                esi                                                  // 0x004db1c8    5e
                         ret                0x0020                                               // 0x004db1c9    c22000
                         nop                                                                     // 0x004db1cc    90
                         nop                                                                     // 0x004db1cd    90
                         nop                                                                     // 0x004db1ce    90
                         nop                                                                     // 0x004db1cf    90
                         push               esi                                                  // 0x004db1d0    56
                         mov.s              esi, ecx                                             // 0x004db1d1    8bf1
                         call               _jmp_addr_0x004d7810                                 // 0x004db1d3    e838c6ffff
                         {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x004db1d8    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x004db1dc    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004db1e0    8b542410
                         {disp8} mov        dword ptr [esi + 0x4c], eax                          // 0x004db1e4    89464c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004db1e7    8b442414
                         {disp8} mov        dword ptr [esi + 0x58], eax                          // 0x004db1eb    894658
                         mov                dword ptr [esi], 0x008cfb74                          // 0x004db1ee    c70674fb8c00
                         {disp8} mov        dword ptr [esi + 0x50], ecx                          // 0x004db1f4    894e50
                         {disp8} mov        dword ptr [esi + 0x54], edx                          // 0x004db1f7    895654
                         mov.s              eax, esi                                             // 0x004db1fa    8bc6
                         pop                esi                                                  // 0x004db1fc    5e
                         ret                0x0010                                               // 0x004db1fd    c21000
                         push               esi                                                  // 0x004db200    56
                         mov.s              esi, ecx                                             // 0x004db201    8bf1
                         call               _jmp_addr_0x004d7810                                 // 0x004db203    e808c6ffff
                         mov                dword ptr [esi], 0x008cfc04                          // 0x004db208    c70604fc8c00
                         mov.s              eax, esi                                             // 0x004db20e    8bc6
                         pop                esi                                                  // 0x004db210    5e
                         ret                0x0028                                               // 0x004db211    c22800
                         nop                                                                     // 0x004db214    90
                         nop                                                                     // 0x004db215    90
                         nop                                                                     // 0x004db216    90
                         nop                                                                     // 0x004db217    90
                         nop                                                                     // 0x004db218    90
                         nop                                                                     // 0x004db219    90
                         nop                                                                     // 0x004db21a    90
                         nop                                                                     // 0x004db21b    90
                         nop                                                                     // 0x004db21c    90
                         nop                                                                     // 0x004db21d    90
                         nop                                                                     // 0x004db21e    90
                         nop                                                                     // 0x004db21f    90
_globl_ct_0x004db220:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                         // 0x004db220    8a0d34c9fa00
                         mov                al, 0x01                                             // 0x004db226    b001
                         test               al, cl                                               // 0x004db228    84c8
                         {disp8} jne        _jmp_addr_0x004db234                                 // 0x004db22a    7508
                         or.s               cl, al                                               // 0x004db22c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                         // 0x004db22e    880d34c9fa00
_jmp_addr_0x004db234:    {disp32} jmp       _jmp_addr_0x004db240                                 // 0x004db234    e907000000
                         nop                                                                     // 0x004db239    90
                         nop                                                                     // 0x004db23a    90
                         nop                                                                     // 0x004db23b    90
                         nop                                                                     // 0x004db23c    90
                         nop                                                                     // 0x004db23d    90
                         nop                                                                     // 0x004db23e    90
                         nop                                                                     // 0x004db23f    90
_jmp_addr_0x004db240:    push               0x00407870                                           // 0x004db240    6870784000
                         call               _atexit                                              // 0x004db245    e847a52e00
                         pop                ecx                                                  // 0x004db24a    59
                         ret                                                                     // 0x004db24b    c3
                         nop                                                                     // 0x004db24c    90
                         nop                                                                     // 0x004db24d    90
                         nop                                                                     // 0x004db24e    90
                         nop                                                                     // 0x004db24f    90
_globl_ct_0x004db250:    {disp32} jmp       _jmp_addr_0x004db260                                 // 0x004db250    e90b000000
                         nop                                                                     // 0x004db255    90
                         nop                                                                     // 0x004db256    90
                         nop                                                                     // 0x004db257    90
                         nop                                                                     // 0x004db258    90
                         nop                                                                     // 0x004db259    90
                         nop                                                                     // 0x004db25a    90
                         nop                                                                     // 0x004db25b    90
                         nop                                                                     // 0x004db25c    90
                         nop                                                                     // 0x004db25d    90
                         nop                                                                     // 0x004db25e    90
                         nop                                                                     // 0x004db25f    90
_jmp_addr_0x004db260:    {disp32} fld       dword ptr [rdata_bytes + 0x26ed4]                    // 0x004db260    d905d4fe8c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26ed0]                    // 0x004db266    d80dd0fe8c00
                         {disp32} fstp      dword ptr [data_bytes + 0x2be3a8]                    // 0x004db26c    d91da843c800
                         ret                                                                     // 0x004db272    c3
                         nop                                                                     // 0x004db273    90
                         nop                                                                     // 0x004db274    90
                         nop                                                                     // 0x004db275    90
                         nop                                                                     // 0x004db276    90
                         nop                                                                     // 0x004db277    90
                         nop                                                                     // 0x004db278    90
                         nop                                                                     // 0x004db279    90
                         nop                                                                     // 0x004db27a    90
                         nop                                                                     // 0x004db27b    90
                         nop                                                                     // 0x004db27c    90
                         nop                                                                     // 0x004db27d    90
                         nop                                                                     // 0x004db27e    90
                         nop                                                                     // 0x004db27f    90
_globl_ct_0x004db280:    {disp32} jmp       _jmp_addr_0x004db290                                 // 0x004db280    e90b000000
                         nop                                                                     // 0x004db285    90
                         nop                                                                     // 0x004db286    90
                         nop                                                                     // 0x004db287    90
                         nop                                                                     // 0x004db288    90
                         nop                                                                     // 0x004db289    90
                         nop                                                                     // 0x004db28a    90
                         nop                                                                     // 0x004db28b    90
                         nop                                                                     // 0x004db28c    90
                         nop                                                                     // 0x004db28d    90
                         nop                                                                     // 0x004db28e    90
                         nop                                                                     // 0x004db28f    90
_jmp_addr_0x004db290:    {disp32} mov       dword ptr [data_bytes + 0x2be3a4], 0xffffffff        // 0x004db290    c705a443c800ffffffff
                         ret                                                                     // 0x004db29a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x004db29b    e8d965f2ff
_globl_ct_0x004db2a0:    call               _jmp_addr_0x004db2b0                                 // 0x004db2a0    e80b000000
                         {disp32} jmp       _jmp_addr_0x004db300                                 // 0x004db2a5    e956000000
                         nop                                                                     // 0x004db2aa    90
                         nop                                                                     // 0x004db2ab    90
                         nop                                                                     // 0x004db2ac    90
                         nop                                                                     // 0x004db2ad    90
                         nop                                                                     // 0x004db2ae    90
                         nop                                                                     // 0x004db2af    90
_jmp_addr_0x004db2b0:    mov                eax, 0x00c85cd0                                      // 0x004db2b0    b8d05cc800
                         mov                ecx, 0x00000028                                      // 0x004db2b5    b928000000
                         xor.s              edx, edx                                             // 0x004db2ba    33d2
.att_syntax
_jmp_addr_0x004db2bc:    movl               $??_7Base@@6B@, (%eax)                        // 0x004db2bc    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x004db2c2    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                          // 0x004db2c5    895008
                         mov                dword ptr [eax], 0x008cfedc                          // 0x004db2c8    c700dcfe8c00
                         add                eax, 0x000000b0                                      // 0x004db2ce    05b0000000
                         dec                ecx                                                  // 0x004db2d3    49
                         {disp8} jne        _jmp_addr_0x004db2bc                                 // 0x004db2d4    75e6
                         ret                                                                     // 0x004db2d6    c3
                         nop                                                                     // 0x004db2d7    90
                         nop                                                                     // 0x004db2d8    90
                         nop                                                                     // 0x004db2d9    90
                         nop                                                                     // 0x004db2da    90
                         nop                                                                     // 0x004db2db    90
                         nop                                                                     // 0x004db2dc    90
                         nop                                                                     // 0x004db2dd    90
                         nop                                                                     // 0x004db2de    90
                         nop                                                                     // 0x004db2df    90
?GetBaseInfo@CreatureDesireDependency@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004db2e0    8b442404
                         mov                dword ptr [eax], 0x00000028                          // 0x004db2e4    c70028000000
                         mov                eax, 0x00c85cd0                                      // 0x004db2ea    b8d05cc800
                         ret                0x0004                                               // 0x004db2ef    c20400
                         nop                                                                     // 0x004db2f2    90
                         nop                                                                     // 0x004db2f3    90
                         nop                                                                     // 0x004db2f4    90
                         nop                                                                     // 0x004db2f5    90
                         nop                                                                     // 0x004db2f6    90
                         nop                                                                     // 0x004db2f7    90
                         nop                                                                     // 0x004db2f8    90
                         nop                                                                     // 0x004db2f9    90
                         nop                                                                     // 0x004db2fa    90
                         nop                                                                     // 0x004db2fb    90
                         nop                                                                     // 0x004db2fc    90
                         nop                                                                     // 0x004db2fd    90
                         nop                                                                     // 0x004db2fe    90
                         nop                                                                     // 0x004db2ff    90
_jmp_addr_0x004db300:    push               0x004db310                                           // 0x004db300    6810b34d00
                         call               _atexit                                              // 0x004db305    e887a42e00
                         pop                ecx                                                  // 0x004db30a    59
                         ret                                                                     // 0x004db30b    c3
                         nop                                                                     // 0x004db30c    90
                         nop                                                                     // 0x004db30d    90
                         nop                                                                     // 0x004db30e    90
                         nop                                                                     // 0x004db30f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x2be3a3]                 // 0x004db310    8a0da343c800
                         mov                al, 0x01                                             // 0x004db316    b001
                         test               al, cl                                               // 0x004db318    84c8
                         {disp8} jne        _jmp_addr_0x004db342                                 // 0x004db31a    7526
                         push               esi                                                  // 0x004db31c    56
                         or.s               cl, al                                               // 0x004db31d    0ac8
                         push               edi                                                  // 0x004db31f    57
                         {disp32} mov       byte ptr [data_bytes + 0x2be3a3], cl                 // 0x004db320    880da343c800
                         mov                esi, 0x00c87850                                      // 0x004db326    be5078c800
                         mov                edi, 0x00000028                                      // 0x004db32b    bf28000000
_jmp_addr_0x004db330:    sub                esi, 0x000000b0                                      // 0x004db330    81eeb0000000
                         mov.s              ecx, esi                                             // 0x004db336    8bce
                         call               _jmp_addr_0x00436960                                 // 0x004db338    e823b6f5ff
                         dec                edi                                                  // 0x004db33d    4f
                         {disp8} jne        _jmp_addr_0x004db330                                 // 0x004db33e    75f0
                         pop                edi                                                  // 0x004db340    5f
                         pop                esi                                                  // 0x004db341    5e
_jmp_addr_0x004db342:    ret                                                                     // 0x004db342    c3
                         nop                                                                     // 0x004db343    90
                         nop                                                                     // 0x004db344    90
                         nop                                                                     // 0x004db345    90
                         nop                                                                     // 0x004db346    90
                         nop                                                                     // 0x004db347    90
                         nop                                                                     // 0x004db348    90
                         nop                                                                     // 0x004db349    90
                         nop                                                                     // 0x004db34a    90
                         nop                                                                     // 0x004db34b    90
                         nop                                                                     // 0x004db34c    90
                         nop                                                                     // 0x004db34d    90
                         nop                                                                     // 0x004db34e    90
                         nop                                                                     // 0x004db34f    90
??_GCreatureDesireDependency@@UAEPAXI@Z:
                         push               esi                                                  // 0x004db350    56
                         mov.s              esi, ecx                                             // 0x004db351    8bf1
                         call               _jmp_addr_0x00436960                                 // 0x004db353    e808b6f5ff
                         test               byte ptr [esp + 0x08], 0x01                          // 0x004db358    f644240801
                         {disp8} je         _jmp_addr_0x004db36d                                 // 0x004db35d    740e
                         push               0x000000b0                                           // 0x004db35f    68b0000000
                         push               esi                                                  // 0x004db364    56
                         call               ??3Base@@SAXPAXK@Z                                 // 0x004db365    e806b6f5ff
                         add                esp, 0x08                                            // 0x004db36a    83c408
_jmp_addr_0x004db36d:    mov.s              eax, esi                                             // 0x004db36d    8bc6
                         pop                esi                                                  // 0x004db36f    5e
                         ret                0x0004                                               // 0x004db370    c20400
                         nop                                                                     // 0x004db373    90
                         nop                                                                     // 0x004db374    90
                         nop                                                                     // 0x004db375    90
                         nop                                                                     // 0x004db376    90
                         nop                                                                     // 0x004db377    90
                         nop                                                                     // 0x004db378    90
                         nop                                                                     // 0x004db379    90
                         nop                                                                     // 0x004db37a    90
                         nop                                                                     // 0x004db37b    90
                         nop                                                                     // 0x004db37c    90
                         nop                                                                     // 0x004db37d    90
                         nop                                                                     // 0x004db37e    90
                         nop                                                                     // 0x004db37f    90
_globl_ct_0x004db380:    call               _jmp_addr_0x004db390                                 // 0x004db380    e80b000000
                         {disp32} jmp       _jmp_addr_0x004db3e0                                 // 0x004db385    e956000000
                         nop                                                                     // 0x004db38a    90
                         nop                                                                     // 0x004db38b    90
                         nop                                                                     // 0x004db38c    90
                         nop                                                                     // 0x004db38d    90
                         nop                                                                     // 0x004db38e    90
                         nop                                                                     // 0x004db38f    90
_jmp_addr_0x004db390:    mov                eax, 0x00c84fb0                                      // 0x004db390    b8b04fc800
                         mov                ecx, 0x00000028                                      // 0x004db395    b928000000
                         xor.s              edx, edx                                             // 0x004db39a    33d2
.att_syntax
_jmp_addr_0x004db39c:    movl               $??_7Base@@6B@, (%eax)                        // 0x004db39c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x004db3a2    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                          // 0x004db3a5    895008
                         mov                dword ptr [eax], 0x008cff0c                          // 0x004db3a8    c7000cff8c00
                         add                eax, 0x54                                            // 0x004db3ae    83c054
                         dec                ecx                                                  // 0x004db3b1    49
                         {disp8} jne        _jmp_addr_0x004db39c                                 // 0x004db3b2    75e8
                         ret                                                                     // 0x004db3b4    c3
                         nop                                                                     // 0x004db3b5    90
                         nop                                                                     // 0x004db3b6    90
                         nop                                                                     // 0x004db3b7    90
                         nop                                                                     // 0x004db3b8    90
                         nop                                                                     // 0x004db3b9    90
                         nop                                                                     // 0x004db3ba    90
                         nop                                                                     // 0x004db3bb    90
                         nop                                                                     // 0x004db3bc    90
                         nop                                                                     // 0x004db3bd    90
                         nop                                                                     // 0x004db3be    90
                         nop                                                                     // 0x004db3bf    90
?GetBaseInfo@CreatureDesireForType@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004db3c0    8b442404
                         mov                dword ptr [eax], 0x00000028                          // 0x004db3c4    c70028000000
                         mov                eax, 0x00c84fb0                                      // 0x004db3ca    b8b04fc800
                         ret                0x0004                                               // 0x004db3cf    c20400
                         nop                                                                     // 0x004db3d2    90
                         nop                                                                     // 0x004db3d3    90
                         nop                                                                     // 0x004db3d4    90
                         nop                                                                     // 0x004db3d5    90
                         nop                                                                     // 0x004db3d6    90
                         nop                                                                     // 0x004db3d7    90
                         nop                                                                     // 0x004db3d8    90
                         nop                                                                     // 0x004db3d9    90
                         nop                                                                     // 0x004db3da    90
                         nop                                                                     // 0x004db3db    90
                         nop                                                                     // 0x004db3dc    90
                         nop                                                                     // 0x004db3dd    90
                         nop                                                                     // 0x004db3de    90
                         nop                                                                     // 0x004db3df    90
_jmp_addr_0x004db3e0:    push               0x004db3f0                                           // 0x004db3e0    68f0b34d00
                         call               _atexit                                              // 0x004db3e5    e8a7a32e00
                         pop                ecx                                                  // 0x004db3ea    59
                         ret                                                                     // 0x004db3eb    c3
                         nop                                                                     // 0x004db3ec    90
                         nop                                                                     // 0x004db3ed    90
                         nop                                                                     // 0x004db3ee    90
                         nop                                                                     // 0x004db3ef    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x2be3a2]                 // 0x004db3f0    8a0da243c800
                         mov                al, 0x01                                             // 0x004db3f6    b001
                         test               al, cl                                               // 0x004db3f8    84c8
                         {disp8} jne        _jmp_addr_0x004db41f                                 // 0x004db3fa    7523
                         push               esi                                                  // 0x004db3fc    56
                         or.s               cl, al                                               // 0x004db3fd    0ac8
                         push               edi                                                  // 0x004db3ff    57
                         {disp32} mov       byte ptr [data_bytes + 0x2be3a2], cl                 // 0x004db400    880da243c800
                         mov                esi, 0x00c85cd0                                      // 0x004db406    bed05cc800
                         mov                edi, 0x00000028                                      // 0x004db40b    bf28000000
_jmp_addr_0x004db410:    sub                esi, 0x54                                            // 0x004db410    83ee54
                         mov.s              ecx, esi                                             // 0x004db413    8bce
                         call               _jmp_addr_0x00436960                                 // 0x004db415    e846b5f5ff
                         dec                edi                                                  // 0x004db41a    4f
                         {disp8} jne        _jmp_addr_0x004db410                                 // 0x004db41b    75f3
                         pop                edi                                                  // 0x004db41d    5f
                         pop                esi                                                  // 0x004db41e    5e
_jmp_addr_0x004db41f:    ret                                                                     // 0x004db41f    c3
??_GCreatureDesireForType@@UAEPAXI@Z:
                         push               esi                                                  // 0x004db420    56
                         mov.s              esi, ecx                                             // 0x004db421    8bf1
                         call               _jmp_addr_0x00436960                                 // 0x004db423    e838b5f5ff
                         test               byte ptr [esp + 0x08], 0x01                          // 0x004db428    f644240801
                         {disp8} je         _jmp_addr_0x004db43a                                 // 0x004db42d    740b
                         push               0x54                                                 // 0x004db42f    6a54
                         push               esi                                                  // 0x004db431    56
                         call               ??3Base@@SAXPAXK@Z                                 // 0x004db432    e839b5f5ff
                         add                esp, 0x08                                            // 0x004db437    83c408
_jmp_addr_0x004db43a:    mov.s              eax, esi                                             // 0x004db43a    8bc6
                         pop                esi                                                  // 0x004db43c    5e
                         ret                0x0004                                               // 0x004db43d    c20400
_globl_ct_0x004db440:    call               _jmp_addr_0x004db450                                 // 0x004db440    e80b000000
                         {disp32} jmp       _jmp_addr_0x004db4a0                                 // 0x004db445    e956000000
                         nop                                                                     // 0x004db44a    90
                         nop                                                                     // 0x004db44b    90
                         nop                                                                     // 0x004db44c    90
                         nop                                                                     // 0x004db44d    90
                         nop                                                                     // 0x004db44e    90
                         nop                                                                     // 0x004db44f    90
_jmp_addr_0x004db450:    mov                eax, 0x00c84878                                      // 0x004db450    b87848c800
                         mov                ecx, 0x0000000e                                      // 0x004db455    b90e000000
                         xor.s              edx, edx                                             // 0x004db45a    33d2
.att_syntax
_jmp_addr_0x004db45c:    movl               $??_7Base@@6B@, (%eax)                        // 0x004db45c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x004db462    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                          // 0x004db465    895008
                         mov                dword ptr [eax], 0x008cff3c                          // 0x004db468    c7003cff8c00
                         add                eax, 0x00000084                                      // 0x004db46e    0584000000
                         dec                ecx                                                  // 0x004db473    49
                         {disp8} jne        _jmp_addr_0x004db45c                                 // 0x004db474    75e6
                         ret                                                                     // 0x004db476    c3
                         nop                                                                     // 0x004db477    90
                         nop                                                                     // 0x004db478    90
                         nop                                                                     // 0x004db479    90
                         nop                                                                     // 0x004db47a    90
                         nop                                                                     // 0x004db47b    90
                         nop                                                                     // 0x004db47c    90
                         nop                                                                     // 0x004db47d    90
                         nop                                                                     // 0x004db47e    90
                         nop                                                                     // 0x004db47f    90
?GetBaseInfo@CreatureDevelopmentPhaseEntry@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004db480    8b442404
                         mov                dword ptr [eax], 0x0000000e                          // 0x004db484    c7000e000000
                         mov                eax, 0x00c84878                                      // 0x004db48a    b87848c800
                         ret                0x0004                                               // 0x004db48f    c20400
                         nop                                                                     // 0x004db492    90
                         nop                                                                     // 0x004db493    90
                         nop                                                                     // 0x004db494    90
                         nop                                                                     // 0x004db495    90
                         nop                                                                     // 0x004db496    90
                         nop                                                                     // 0x004db497    90
                         nop                                                                     // 0x004db498    90
                         nop                                                                     // 0x004db499    90
                         nop                                                                     // 0x004db49a    90
                         nop                                                                     // 0x004db49b    90
                         nop                                                                     // 0x004db49c    90
                         nop                                                                     // 0x004db49d    90
                         nop                                                                     // 0x004db49e    90
                         nop                                                                     // 0x004db49f    90
_jmp_addr_0x004db4a0:    push               0x004db4b0                                           // 0x004db4a0    68b0b44d00
                         call               _atexit                                              // 0x004db4a5    e8e7a22e00
                         pop                ecx                                                  // 0x004db4aa    59
                         ret                                                                     // 0x004db4ab    c3
                         nop                                                                     // 0x004db4ac    90
                         nop                                                                     // 0x004db4ad    90
                         nop                                                                     // 0x004db4ae    90
                         nop                                                                     // 0x004db4af    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x2be3a1]                 // 0x004db4b0    8a0da143c800
                         mov                al, 0x01                                             // 0x004db4b6    b001
                         test               al, cl                                               // 0x004db4b8    84c8
                         {disp8} jne        _jmp_addr_0x004db4e2                                 // 0x004db4ba    7526
                         push               esi                                                  // 0x004db4bc    56
                         or.s               cl, al                                               // 0x004db4bd    0ac8
                         push               edi                                                  // 0x004db4bf    57
                         {disp32} mov       byte ptr [data_bytes + 0x2be3a1], cl                 // 0x004db4c0    880da143c800
                         mov                esi, 0x00c84fb0                                      // 0x004db4c6    beb04fc800
                         mov                edi, 0x0000000e                                      // 0x004db4cb    bf0e000000
_jmp_addr_0x004db4d0:    sub                esi, 0x00000084                                      // 0x004db4d0    81ee84000000
                         mov.s              ecx, esi                                             // 0x004db4d6    8bce
                         call               _jmp_addr_0x00436960                                 // 0x004db4d8    e883b4f5ff
                         dec                edi                                                  // 0x004db4dd    4f
                         {disp8} jne        _jmp_addr_0x004db4d0                                 // 0x004db4de    75f0
                         pop                edi                                                  // 0x004db4e0    5f
                         pop                esi                                                  // 0x004db4e1    5e
_jmp_addr_0x004db4e2:    ret                                                                     // 0x004db4e2    c3
                         nop                                                                     // 0x004db4e3    90
                         nop                                                                     // 0x004db4e4    90
                         nop                                                                     // 0x004db4e5    90
                         nop                                                                     // 0x004db4e6    90
                         nop                                                                     // 0x004db4e7    90
                         nop                                                                     // 0x004db4e8    90
                         nop                                                                     // 0x004db4e9    90
                         nop                                                                     // 0x004db4ea    90
                         nop                                                                     // 0x004db4eb    90
                         nop                                                                     // 0x004db4ec    90
                         nop                                                                     // 0x004db4ed    90
                         nop                                                                     // 0x004db4ee    90
                         nop                                                                     // 0x004db4ef    90
??_GCreatureDevelopmentPhaseEntry@@UAEPAXI@Z:
                         push               esi                                                  // 0x004db4f0    56
                         mov.s              esi, ecx                                             // 0x004db4f1    8bf1
                         call               _jmp_addr_0x00436960                                 // 0x004db4f3    e868b4f5ff
                         test               byte ptr [esp + 0x08], 0x01                          // 0x004db4f8    f644240801
                         {disp8} je         _jmp_addr_0x004db50d                                 // 0x004db4fd    740e
                         push               0x00000084                                           // 0x004db4ff    6884000000
                         push               esi                                                  // 0x004db504    56
                         call               ??3Base@@SAXPAXK@Z                                 // 0x004db505    e866b4f5ff
                         add                esp, 0x08                                            // 0x004db50a    83c408
_jmp_addr_0x004db50d:    mov.s              eax, esi                                             // 0x004db50d    8bc6
                         pop                esi                                                  // 0x004db50f    5e
                         ret                0x0004                                               // 0x004db510    c20400
                         nop                                                                     // 0x004db513    90
                         nop                                                                     // 0x004db514    90
                         nop                                                                     // 0x004db515    90
                         nop                                                                     // 0x004db516    90
                         nop                                                                     // 0x004db517    90
                         nop                                                                     // 0x004db518    90
                         nop                                                                     // 0x004db519    90
                         nop                                                                     // 0x004db51a    90
                         nop                                                                     // 0x004db51b    90
                         nop                                                                     // 0x004db51c    90
                         nop                                                                     // 0x004db51d    90
                         nop                                                                     // 0x004db51e    90
                         nop                                                                     // 0x004db51f    90
_globl_ct_0x004db520:    call               _jmp_addr_0x004db530                                 // 0x004db520    e80b000000
                         {disp32} jmp       _jmp_addr_0x004db580                                 // 0x004db525    e956000000
                         nop                                                                     // 0x004db52a    90
                         nop                                                                     // 0x004db52b    90
                         nop                                                                     // 0x004db52c    90
                         nop                                                                     // 0x004db52d    90
                         nop                                                                     // 0x004db52e    90
                         nop                                                                     // 0x004db52f    90
_jmp_addr_0x004db530:    mov                eax, 0x00c843b0                                      // 0x004db530    b8b043c800
                         mov                ecx, 0x00000011                                      // 0x004db535    b911000000
                         xor.s              edx, edx                                             // 0x004db53a    33d2
.att_syntax
_jmp_addr_0x004db53c:    movl               $??_7Base@@6B@, (%eax)                        // 0x004db53c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x004db542    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                          // 0x004db545    895008
                         mov                dword ptr [eax], 0x008cff6c                          // 0x004db548    c7006cff8c00
                         add                eax, 0x48                                            // 0x004db54e    83c048
                         dec                ecx                                                  // 0x004db551    49
                         {disp8} jne        _jmp_addr_0x004db53c                                 // 0x004db552    75e8
                         ret                                                                     // 0x004db554    c3
                         nop                                                                     // 0x004db555    90
                         nop                                                                     // 0x004db556    90
                         nop                                                                     // 0x004db557    90
                         nop                                                                     // 0x004db558    90
                         nop                                                                     // 0x004db559    90
                         nop                                                                     // 0x004db55a    90
                         nop                                                                     // 0x004db55b    90
                         nop                                                                     // 0x004db55c    90
                         nop                                                                     // 0x004db55d    90
                         nop                                                                     // 0x004db55e    90
                         nop                                                                     // 0x004db55f    90
?GetBaseInfo@CreatureDevelopmentDurationEntry@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004db560    8b442404
                         mov                dword ptr [eax], 0x00000011                          // 0x004db564    c70011000000
                         mov                eax, 0x00c843b0                                      // 0x004db56a    b8b043c800
                         ret                0x0004                                               // 0x004db56f    c20400
                         nop                                                                     // 0x004db572    90
                         nop                                                                     // 0x004db573    90
                         nop                                                                     // 0x004db574    90
                         nop                                                                     // 0x004db575    90
                         nop                                                                     // 0x004db576    90
                         nop                                                                     // 0x004db577    90
                         nop                                                                     // 0x004db578    90
                         nop                                                                     // 0x004db579    90
                         nop                                                                     // 0x004db57a    90
                         nop                                                                     // 0x004db57b    90
                         nop                                                                     // 0x004db57c    90
                         nop                                                                     // 0x004db57d    90
                         nop                                                                     // 0x004db57e    90
                         nop                                                                     // 0x004db57f    90
_jmp_addr_0x004db580:    push               0x004db590                                           // 0x004db580    6890b54d00
                         call               _atexit                                              // 0x004db585    e807a22e00
                         pop                ecx                                                  // 0x004db58a    59
                         ret                                                                     // 0x004db58b    c3
                         nop                                                                     // 0x004db58c    90
                         nop                                                                     // 0x004db58d    90
                         nop                                                                     // 0x004db58e    90
                         nop                                                                     // 0x004db58f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x2be3a0]                 // 0x004db590    8a0da043c800
                         mov                al, 0x01                                             // 0x004db596    b001
                         test               al, cl                                               // 0x004db598    84c8
                         {disp8} jne        _jmp_addr_0x004db5bf                                 // 0x004db59a    7523
                         push               esi                                                  // 0x004db59c    56
                         or.s               cl, al                                               // 0x004db59d    0ac8
                         push               edi                                                  // 0x004db59f    57
                         {disp32} mov       byte ptr [data_bytes + 0x2be3a0], cl                 // 0x004db5a0    880da043c800
                         mov                esi, 0x00c84878                                      // 0x004db5a6    be7848c800
                         mov                edi, 0x00000011                                      // 0x004db5ab    bf11000000
_jmp_addr_0x004db5b0:    sub                esi, 0x48                                            // 0x004db5b0    83ee48
                         mov.s              ecx, esi                                             // 0x004db5b3    8bce
                         call               _jmp_addr_0x00436960                                 // 0x004db5b5    e8a6b3f5ff
                         dec                edi                                                  // 0x004db5ba    4f
                         {disp8} jne        _jmp_addr_0x004db5b0                                 // 0x004db5bb    75f3
                         pop                edi                                                  // 0x004db5bd    5f
                         pop                esi                                                  // 0x004db5be    5e
_jmp_addr_0x004db5bf:    ret                                                                     // 0x004db5bf    c3
??_GCreatureDevelopmentDurationEntry@@UAEPAXI@Z:
                         push               esi                                                  // 0x004db5c0    56
                         mov.s              esi, ecx                                             // 0x004db5c1    8bf1
                         call               _jmp_addr_0x00436960                                 // 0x004db5c3    e898b3f5ff
                         test               byte ptr [esp + 0x08], 0x01                          // 0x004db5c8    f644240801
                         {disp8} je         _jmp_addr_0x004db5da                                 // 0x004db5cd    740b
                         push               0x48                                                 // 0x004db5cf    6a48
                         push               esi                                                  // 0x004db5d1    56
                         call               ??3Base@@SAXPAXK@Z                                 // 0x004db5d2    e899b3f5ff
                         add                esp, 0x08                                            // 0x004db5d7    83c408
_jmp_addr_0x004db5da:    mov.s              eax, esi                                             // 0x004db5da    8bc6
                         pop                esi                                                  // 0x004db5dc    5e
                         ret                0x0004                                               // 0x004db5dd    c20400
_globl_ct_0x004db5e0:    {disp32} jmp       _jmp_addr_0x004db5f0                                 // 0x004db5e0    e90b000000
                         nop                                                                     // 0x004db5e5    90
                         nop                                                                     // 0x004db5e6    90
                         nop                                                                     // 0x004db5e7    90
                         nop                                                                     // 0x004db5e8    90
                         nop                                                                     // 0x004db5e9    90
                         nop                                                                     // 0x004db5ea    90
                         nop                                                                     // 0x004db5eb    90
                         nop                                                                     // 0x004db5ec    90
                         nop                                                                     // 0x004db5ed    90
                         nop                                                                     // 0x004db5ee    90
                         nop                                                                     // 0x004db5ef    90
_jmp_addr_0x004db5f0:    push               ebx                                                  // 0x004db5f0    53
                         push               ebp                                                  // 0x004db5f1    55
                         push               esi                                                  // 0x004db5f2    56
                         push               edi                                                  // 0x004db5f3    57
                         or                 edi, 0xffffffff                                      // 0x004db5f4    83cfff
                         xor.s              eax, eax                                             // 0x004db5f7    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x2c1884], edi               // 0x004db5f9    893d8478c800
                         or                 edi, 0xffffffff                                      // 0x004db5ff    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c18ac], edi               // 0x004db602    893dac78c800
                         or                 edi, 0xffffffff                                      // 0x004db608    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c18d4], edi               // 0x004db60b    893dd478c800
                         xor.s              edx, edx                                             // 0x004db611    33d2
                         or                 edi, 0xffffffff                                      // 0x004db613    83cfff
                         or                 esi, 0xffffffff                                      // 0x004db616    83ceff
                         xor.s              ecx, ecx                                             // 0x004db619    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x2c18fc], edi               // 0x004db61b    893dfc78c800
                         or                 edi, 0xffffffff                                      // 0x004db621    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c185c], esi               // 0x004db624    89355c78c800
                         xor.s              esi, esi                                             // 0x004db62a    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x2c1854], ecx               // 0x004db62c    890d5478c800
                         mov                ecx, 0x00000001                                      // 0x004db632    b901000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1924], edi               // 0x004db637    893d2479c800
                         mov                ebx, 0x00000043                                      // 0x004db63d    bb43000000
                         or                 edi, 0xffffffff                                      // 0x004db642    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1850], eax               // 0x004db645    a35078c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1858], edx               // 0x004db64a    89155878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1860], 0x004dd0a0        // 0x004db650    c7056078c800a0d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1864], 0x004dd070        // 0x004db65a    c7056478c80070d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1868], ecx               // 0x004db664    890d6878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c186c], 0x00000034        // 0x004db66a    c7056c78c80034000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1870], eax               // 0x004db674    a37078c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1874], eax               // 0x004db679    a37478c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1878], eax               // 0x004db67e    a37878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c187c], edx               // 0x004db683    89157c78c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1880], esi               // 0x004db689    89358078c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1888], 0x004dd060        // 0x004db68f    c7058878c80060d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c188c], 0x004c33d0        // 0x004db699    c7058c78c800d0334c00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1890], ecx               // 0x004db6a3    890d9078c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1894], 0x00000040        // 0x004db6a9    c7059478c80040000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1898], eax               // 0x004db6b3    a39878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c189c], eax               // 0x004db6b8    a39c78c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18a0], eax               // 0x004db6bd    a3a078c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18a4], edx               // 0x004db6c2    8915a478c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18a8], esi               // 0x004db6c8    8935a878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18b0], 0x004dd040        // 0x004db6ce    c705b078c80040d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c18b4], 0x004dd0d0        // 0x004db6d8    c705b478c800d0d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c18b8], ecx               // 0x004db6e2    890db878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18bc], 0x00000046        // 0x004db6e8    c705bc78c80046000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c18c0], ecx               // 0x004db6f2    890dc078c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18c4], eax               // 0x004db6f8    a3c478c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18c8], eax               // 0x004db6fd    a3c878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18cc], edx               // 0x004db702    8915cc78c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18d0], esi               // 0x004db708    8935d078c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18d8], eax               // 0x004db70e    a3d878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18dc], 0x004dd030        // 0x004db713    c705dc78c80030d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c18e0], ecx               // 0x004db71d    890de078c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18e4], ebx               // 0x004db723    891de478c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18e8], ecx               // 0x004db729    890de878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18ec], 0x004e35f0        // 0x004db72f    c705ec78c800f0354e00
                         {disp32} mov       dword ptr [data_bytes + 0x2c18f0], eax               // 0x004db739    a3f078c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18f4], edx               // 0x004db73e    8915f478c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c18f8], esi               // 0x004db744    8935f878c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1900], eax               // 0x004db74a    a30079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1904], eax               // 0x004db74f    a30479c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1908], ecx               // 0x004db754    890d0879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c190c], 0x00000036        // 0x004db75a    c7050c79c80036000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1910], ecx               // 0x004db764    890d1079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1914], eax               // 0x004db76a    a31479c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1918], eax               // 0x004db76f    a31879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c191c], edx               // 0x004db774    89151c79c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1920], esi               // 0x004db77a    89352079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1928], eax               // 0x004db780    a32879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c192c], 0x004dd0e0        // 0x004db785    c7052c79c800e0d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1930], ecx               // 0x004db78f    890d3079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1934], 0x0000003d        // 0x004db795    c7053479c8003d000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1938], ecx               // 0x004db79f    890d3879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c193c], eax               // 0x004db7a5    a33c79c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1940], eax               // 0x004db7aa    a34079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1944], edx               // 0x004db7af    89154479c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1948], esi               // 0x004db7b5    89354879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c194c], edi               // 0x004db7bb    893d4c79c800
                         or                 edi, 0xffffffff                                      // 0x004db7c1    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1974], edi               // 0x004db7c4    893d7479c800
                         or                 edi, 0xffffffff                                      // 0x004db7ca    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c199c], edi               // 0x004db7cd    893d9c79c800
                         or                 edi, 0xffffffff                                      // 0x004db7d3    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c19c4], edi               // 0x004db7d6    893dc479c800
                         xor.s              edi, edi                                             // 0x004db7dc    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x2c19ec], edi               // 0x004db7de    893dec79c800
                         or                 edi, 0xffffffff                                      // 0x004db7e4    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c196c], edx               // 0x004db7e7    89156c79c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1994], edx               // 0x004db7ed    89159479c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19bc], edx               // 0x004db7f3    8915bc79c800
                         mov                edx, 0x004df090                                      // 0x004db7f9    ba90f04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a14], edi               // 0x004db7fe    893d147ac800
                         or                 edi, 0xffffffff                                      // 0x004db804    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c19e0], edx               // 0x004db807    8915e079c800
                         xor.s              edx, edx                                             // 0x004db80d    33d2
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a3c], edi               // 0x004db80f    893d3c7ac800
                         or                 edi, 0xffffffff                                      // 0x004db815    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1950], eax               // 0x004db818    a35079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1954], 0x004dd080        // 0x004db81d    c7055479c80080d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1958], ecx               // 0x004db827    890d5879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c195c], 0x0000003f        // 0x004db82d    c7055c79c8003f000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1960], ecx               // 0x004db837    890d6079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1964], 0x004e35c0        // 0x004db83d    c7056479c800c0354e00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1968], eax               // 0x004db847    a36879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1970], esi               // 0x004db84c    89357079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1978], eax               // 0x004db852    a37879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c197c], 0x004dd090        // 0x004db857    c7057c79c80090d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1980], ecx               // 0x004db861    890d8079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1984], 0x00000042        // 0x004db867    c7058479c80042000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1988], ecx               // 0x004db871    890d8879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c198c], eax               // 0x004db877    a38c79c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1990], eax               // 0x004db87c    a39079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1998], esi               // 0x004db881    89359879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19a0], eax               // 0x004db887    a3a079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19a4], 0x004dd0c0        // 0x004db88c    c705a479c800c0d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c19a8], ecx               // 0x004db896    890da879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19ac], 0x00000039        // 0x004db89c    c705ac79c80039000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c19b0], ecx               // 0x004db8a6    890db079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19b4], eax               // 0x004db8ac    a3b479c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19b8], eax               // 0x004db8b1    a3b879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19c0], esi               // 0x004db8b6    8935c079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19c8], eax               // 0x004db8bc    a3c879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19cc], eax               // 0x004db8c1    a3cc79c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19d0], ecx               // 0x004db8c6    890dd079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19d4], ebx               // 0x004db8cc    891dd479c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19d8], ecx               // 0x004db8d2    890dd879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19dc], eax               // 0x004db8d8    a3dc79c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19e4], eax               // 0x004db8dd    a3e479c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19e8], esi               // 0x004db8e2    8935e879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19f0], eax               // 0x004db8e8    a3f079c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19f4], eax               // 0x004db8ed    a3f479c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19f8], eax               // 0x004db8f2    a3f879c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c19fc], eax               // 0x004db8f7    a3fc79c800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a00], ecx               // 0x004db8fc    890d007ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a04], eax               // 0x004db902    a3047ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a08], eax               // 0x004db907    a3087ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a0c], edx               // 0x004db90c    89150c7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a10], esi               // 0x004db912    8935107ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a18], eax               // 0x004db918    a3187ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a1c], eax               // 0x004db91d    a31c7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a20], eax               // 0x004db922    a3207ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a24], eax               // 0x004db927    a3247ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a28], ecx               // 0x004db92c    890d287ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a2c], eax               // 0x004db932    a32c7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a30], eax               // 0x004db937    a3307ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a34], edx               // 0x004db93c    8915347ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a38], esi               // 0x004db942    8935387ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a40], eax               // 0x004db948    a3407ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a44], eax               // 0x004db94d    a3447ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a48], eax               // 0x004db952    a3487ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a4c], eax               // 0x004db957    a34c7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a50], ecx               // 0x004db95c    890d507ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a54], eax               // 0x004db962    a3547ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a58], eax               // 0x004db967    a3587ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a5c], edx               // 0x004db96c    89155c7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a60], esi               // 0x004db972    8935607ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a64], edi               // 0x004db978    893d647ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a68], eax               // 0x004db97e    a3687ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a6c], 0x004c38d0        // 0x004db983    c7056c7ac800d0384c00
                         or                 edi, 0xffffffff                                      // 0x004db98d    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a88], esi               // 0x004db990    8935887ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ab0], esi               // 0x004db996    8935b07ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ad8], esi               // 0x004db99c    8935d87ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a8c], edi               // 0x004db9a2    893d8c7ac800
                         or                 edi, 0xffffffff                                      // 0x004db9a8    83cfff
                         mov                esi, 0x004df0c0                                      // 0x004db9ab    bec0f04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1af8], esi               // 0x004db9b0    8935f87ac800
                         xor.s              esi, esi                                             // 0x004db9b6    33f6
                         xor.s              ebx, ebx                                             // 0x004db9b8    33db
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ab4], edi               // 0x004db9ba    893db47ac800
                         or                 edi, 0xffffffff                                      // 0x004db9c0    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b04], ebx               // 0x004db9c3    891d047bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b24], esi               // 0x004db9c9    8935247bc800
                         or                 ebx, 0xffffffff                                      // 0x004db9cf    83cbff
                         mov                esi, 0x004df110                                      // 0x004db9d2    be10f14d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1adc], edi               // 0x004db9d7    893ddc7ac800
                         xor.s              edi, edi                                             // 0x004db9dd    33ff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a84], edx               // 0x004db9df    8915847ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1aac], edx               // 0x004db9e5    8915ac7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ad4], edx               // 0x004db9eb    8915d47ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b2c], ebx               // 0x004db9f1    891d2c7bc800
                         xor.s              ebx, ebx                                             // 0x004db9f7    33db
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b48], esi               // 0x004db9f9    8935487bc800
                         mov                edx, 0x004c3760                                      // 0x004db9ff    ba60374c00
                         mov                ebp, 0x004dd0b0                                      // 0x004dba04    bdb0d04d00
                         mov                esi, 0x004df130                                      // 0x004dba09    be30f14d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a70], eax               // 0x004dba0e    a3707ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a74], eax               // 0x004dba13    a3747ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a78], ecx               // 0x004dba18    890d787ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a7c], eax               // 0x004dba1e    a37c7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a80], eax               // 0x004dba23    a3807ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a90], eax               // 0x004dba28    a3907ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a94], eax               // 0x004dba2d    a3947ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a98], ecx               // 0x004dba32    890d987ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1a9c], 0x0000003a        // 0x004dba38    c7059c7ac8003a000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1aa0], ecx               // 0x004dba42    890da07ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1aa4], eax               // 0x004dba48    a3a47ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1aa8], eax               // 0x004dba4d    a3a87ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ab8], eax               // 0x004dba52    a3b87ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1abc], eax               // 0x004dba57    a3bc7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ac0], eax               // 0x004dba5c    a3c07ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ac4], eax               // 0x004dba61    a3c47ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ac8], ecx               // 0x004dba66    890dc87ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1acc], eax               // 0x004dba6c    a3cc7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ad0], eax               // 0x004dba71    a3d07ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ae0], edx               // 0x004dba76    8915e07ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ae4], ebp               // 0x004dba7c    892de47ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ae8], ecx               // 0x004dba82    890de87ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1aec], 0x00000037        // 0x004dba88    c705ec7ac80037000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1af0], eax               // 0x004dba92    a3f07ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1af4], eax               // 0x004dba97    a3f47ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1afc], eax               // 0x004dba9c    a3fc7ac800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b00], edi               // 0x004dbaa1    893d007bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b08], eax               // 0x004dbaa7    a3087bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b0c], eax               // 0x004dbaac    a30c7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b10], ecx               // 0x004dbab1    890d107bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b14], 0x00000048        // 0x004dbab7    c705147bc80048000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b18], ecx               // 0x004dbac1    890d187bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b1c], eax               // 0x004dbac7    a31c7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b20], eax               // 0x004dbacc    a3207bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b28], edi               // 0x004dbad1    893d287bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b30], eax               // 0x004dbad7    a3307bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b34], eax               // 0x004dbadc    a3347bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b38], eax               // 0x004dbae1    a3387bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b3c], eax               // 0x004dbae6    a33c7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b40], ecx               // 0x004dbaeb    890d407bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b44], eax               // 0x004dbaf1    a3447bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b4c], eax               // 0x004dbaf6    a34c7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b50], edi               // 0x004dbafb    893d507bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b54], ebx               // 0x004dbb01    891d547bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b58], eax               // 0x004dbb07    a3587bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b5c], eax               // 0x004dbb0c    a35c7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b60], ecx               // 0x004dbb11    890d607bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b64], 0x0000003b        // 0x004dbb17    c705647bc8003b000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b68], ecx               // 0x004dbb21    890d687bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b6c], eax               // 0x004dbb27    a36c7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b70], esi               // 0x004dbb2c    8935707bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b74], eax               // 0x004dbb32    a3747bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b78], edi               // 0x004dbb37    893d787bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b7c], ebx               // 0x004dbb3d    891d7c7bc800
                         or                 ebx, 0xffffffff                                      // 0x004dbb43    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ba4], ebx               // 0x004dbb46    891da47bc800
                         xor.s              ebx, ebx                                             // 0x004dbb4c    33db
                         xor.s              esi, esi                                             // 0x004dbb4e    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bcc], ebx               // 0x004dbb50    891dcc7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bf4], ebx               // 0x004dbb56    891df47bc800
                         or                 ebx, 0xffffffff                                      // 0x004dbb5c    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b9c], esi               // 0x004dbb5f    89359c7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c1c], ebx               // 0x004dbb65    891d1c7cc800
                         mov                esi, 0x004df150                                      // 0x004dbb6b    be50f14d00
                         or                 ebx, 0xffffffff                                      // 0x004dbb70    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bc0], esi               // 0x004dbb73    8935c07bc800
                         mov                esi, 0x004df180                                      // 0x004dbb79    be80f14d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c44], ebx               // 0x004dbb7e    891d447cc800
                         or                 ebx, 0xffffffff                                      // 0x004dbb84    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1be8], esi               // 0x004dbb87    8935e87bc800
                         xor.s              esi, esi                                             // 0x004dbb8d    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c6c], ebx               // 0x004dbb8f    891d6c7cc800
                         or                 ebx, 0xffffffff                                      // 0x004dbb95    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b80], eax               // 0x004dbb98    a3807bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b84], eax               // 0x004dbb9d    a3847bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b88], ecx               // 0x004dbba2    890d887bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b8c], 0x0000003a        // 0x004dbba8    c7058c7bc8003a000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b90], ecx               // 0x004dbbb2    890d907bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b94], eax               // 0x004dbbb8    a3947bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1b98], eax               // 0x004dbbbd    a3987bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ba0], edi               // 0x004dbbc2    893da07bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ba8], eax               // 0x004dbbc8    a3a87bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bac], eax               // 0x004dbbcd    a3ac7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bb0], eax               // 0x004dbbd2    a3b07bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bb4], eax               // 0x004dbbd7    a3b47bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bb8], ecx               // 0x004dbbdc    890db87bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bbc], eax               // 0x004dbbe2    a3bc7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bc4], eax               // 0x004dbbe7    a3c47bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bc8], edi               // 0x004dbbec    893dc87bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bd0], eax               // 0x004dbbf2    a3d07bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bd4], eax               // 0x004dbbf7    a3d47bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bd8], eax               // 0x004dbbfc    a3d87bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bdc], eax               // 0x004dbc01    a3dc7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1be0], ecx               // 0x004dbc06    890de07bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1be4], eax               // 0x004dbc0c    a3e47bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bec], eax               // 0x004dbc11    a3ec7bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bf0], edi               // 0x004dbc16    893df07bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bf8], eax               // 0x004dbc1c    a3f87bc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1bfc], 0x004dd0c0        // 0x004dbc21    c705fc7bc800c0d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c00], ecx               // 0x004dbc2b    890d007cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c04], 0x00000039        // 0x004dbc31    c705047cc80039000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c08], ecx               // 0x004dbc3b    890d087cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c0c], eax               // 0x004dbc41    a30c7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c10], eax               // 0x004dbc46    a3107cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c14], esi               // 0x004dbc4b    8935147cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c18], edi               // 0x004dbc51    893d187cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c20], eax               // 0x004dbc57    a3207cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c24], eax               // 0x004dbc5c    a3247cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c28], eax               // 0x004dbc61    a3287cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c2c], eax               // 0x004dbc66    a32c7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c30], ecx               // 0x004dbc6b    890d307cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c34], eax               // 0x004dbc71    a3347cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c38], eax               // 0x004dbc76    a3387cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c3c], esi               // 0x004dbc7b    89353c7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c40], edi               // 0x004dbc81    893d407cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c48], eax               // 0x004dbc87    a3487cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c4c], eax               // 0x004dbc8c    a34c7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c50], eax               // 0x004dbc91    a3507cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c54], eax               // 0x004dbc96    a3547cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c58], ecx               // 0x004dbc9b    890d587cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c5c], eax               // 0x004dbca1    a35c7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c60], eax               // 0x004dbca6    a3607cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c64], esi               // 0x004dbcab    8935647cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c68], edi               // 0x004dbcb1    893d687cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c70], edx               // 0x004dbcb7    8915707cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c74], eax               // 0x004dbcbd    a3747cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c78], eax               // 0x004dbcc2    a3787cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c7c], eax               // 0x004dbcc7    a37c7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c80], eax               // 0x004dbccc    a3807cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c84], eax               // 0x004dbcd1    a3847cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c88], eax               // 0x004dbcd6    a3887cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c8c], esi               // 0x004dbcdb    89358c7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c90], edi               // 0x004dbce1    893d907cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c94], ebx               // 0x004dbce7    891d947cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c98], eax               // 0x004dbced    a3987cc800
                         or                 ebx, 0xffffffff                                      // 0x004dbcf2    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cbc], ebx               // 0x004dbcf5    891dbc7cc800
                         or                 ebx, 0xffffffff                                      // 0x004dbcfb    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ce4], ebx               // 0x004dbcfe    891de47cc800
                         or                 ebx, 0xffffffff                                      // 0x004dbd04    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d0c], ebx               // 0x004dbd07    891d0c7dc800
                         or                 ebx, 0xffffffff                                      // 0x004dbd0d    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d34], ebx               // 0x004dbd10    891d347dc800
                         or                 ebx, 0xffffffff                                      // 0x004dbd16    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cb4], esi               // 0x004dbd19    8935b47cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cdc], esi               // 0x004dbd1f    8935dc7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d04], esi               // 0x004dbd25    8935047dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d2c], esi               // 0x004dbd2b    89352c7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d54], esi               // 0x004dbd31    8935547dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d5c], ebx               // 0x004dbd37    891d5c7dc800
                         mov                esi, 0x004df190                                      // 0x004dbd3d    be90f14d00
                         xor.s              ebx, ebx                                             // 0x004dbd42    33db
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d78], esi               // 0x004dbd44    8935787dc800
                         xor.s              esi, esi                                             // 0x004dbd4a    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d84], ebx               // 0x004dbd4c    891d847dc800
                         or                 ebx, 0xffffffff                                      // 0x004dbd52    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1c9c], eax               // 0x004dbd55    a39c7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ca0], ecx               // 0x004dbd5a    890da07cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ca4], 0x00000038        // 0x004dbd60    c705a47cc80038000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ca8], ecx               // 0x004dbd6a    890da87cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cac], eax               // 0x004dbd70    a3ac7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cb0], eax               // 0x004dbd75    a3b07cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cb8], edi               // 0x004dbd7a    893db87cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cc0], eax               // 0x004dbd80    a3c07cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cc4], eax               // 0x004dbd85    a3c47cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cc8], eax               // 0x004dbd8a    a3c87cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ccc], eax               // 0x004dbd8f    a3cc7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cd0], ecx               // 0x004dbd94    890dd07cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cd4], eax               // 0x004dbd9a    a3d47cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cd8], eax               // 0x004dbd9f    a3d87cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ce0], edi               // 0x004dbda4    893de07cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ce8], eax               // 0x004dbdaa    a3e87cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cec], eax               // 0x004dbdaf    a3ec7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cf0], eax               // 0x004dbdb4    a3f07cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cf4], eax               // 0x004dbdb9    a3f47cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cf8], ecx               // 0x004dbdbe    890df87cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1cfc], eax               // 0x004dbdc4    a3fc7cc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d00], eax               // 0x004dbdc9    a3007dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d08], edi               // 0x004dbdce    893d087dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d10], eax               // 0x004dbdd4    a3107dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d14], eax               // 0x004dbdd9    a3147dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d18], ecx               // 0x004dbdde    890d187dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d1c], 0x00000043        // 0x004dbde4    c7051c7dc80043000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d20], ecx               // 0x004dbdee    890d207dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d24], eax               // 0x004dbdf4    a3247dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d28], eax               // 0x004dbdf9    a3287dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d30], edi               // 0x004dbdfe    893d307dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d38], edx               // 0x004dbe04    8915387dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d3c], ebp               // 0x004dbe0a    892d3c7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d40], eax               // 0x004dbe10    a3407dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d44], eax               // 0x004dbe15    a3447dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d48], eax               // 0x004dbe1a    a3487dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d4c], eax               // 0x004dbe1f    a34c7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d50], eax               // 0x004dbe24    a3507dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d58], edi               // 0x004dbe29    893d587dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d60], edx               // 0x004dbe2f    8915607dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d64], ebp               // 0x004dbe35    892d647dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d68], eax               // 0x004dbe3b    a3687dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d6c], eax               // 0x004dbe40    a36c7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d70], eax               // 0x004dbe45    a3707dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d74], eax               // 0x004dbe4a    a3747dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d7c], eax               // 0x004dbe4f    a37c7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d80], edi               // 0x004dbe54    893d807dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d88], eax               // 0x004dbe5a    a3887dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d8c], eax               // 0x004dbe5f    a38c7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d90], eax               // 0x004dbe64    a3907dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d94], eax               // 0x004dbe69    a3947dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d98], ecx               // 0x004dbe6e    890d987dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1d9c], eax               // 0x004dbe74    a39c7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1da0], eax               // 0x004dbe79    a3a07dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1da4], esi               // 0x004dbe7e    8935a47dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1da8], edi               // 0x004dbe84    893da87dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dac], ebx               // 0x004dbe8a    891dac7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1db0], eax               // 0x004dbe90    a3b07dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1db4], 0x004dd050        // 0x004dbe95    c705b47dc80050d04d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1db8], eax               // 0x004dbe9f    a3b87dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dd0], edi               // 0x004dbea4    893dd07dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1df8], edi               // 0x004dbeaa    893df87dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e20], edi               // 0x004dbeb0    893d207ec800
                         or                 edi, 0xffffffff                                      // 0x004dbeb6    83cfff
                         xor.s              ebx, ebx                                             // 0x004dbeb9    33db
                         mov                esi, 0x004df1c0                                      // 0x004dbebb    bec0f14d00
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e4c], edi               // 0x004dbec0    893d4c7ec800
                         or                 edi, 0xffffffff                                      // 0x004dbec6    83cfff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dc8], esi               // 0x004dbec9    8935c87dc800
                         xor.s              esi, esi                                             // 0x004dbecf    33f6
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dd4], ebx               // 0x004dbed1    891dd47dc800
                         or                 ebx, 0xffffffff                                      // 0x004dbed7    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e74], edi               // 0x004dbeda    893d747ec800
                         pop                edi                                                  // 0x004dbee0    5f
                         {disp32} mov       dword ptr [data_bytes + 0x2c1df4], esi               // 0x004dbee1    8935f47dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dfc], ebx               // 0x004dbee7    891dfc7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e1c], esi               // 0x004dbeed    89351c7ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e48], esi               // 0x004dbef3    8935487ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e70], esi               // 0x004dbef9    8935707ec800
                         pop                esi                                                  // 0x004dbeff    5e
                         or                 ebx, 0xffffffff                                      // 0x004dbf00    83cbff
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e28], edx               // 0x004dbf03    8915287ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e2c], ebp               // 0x004dbf09    892d2c7ec800
                         xor.s              edx, edx                                             // 0x004dbf0f    33d2
                         pop                ebp                                                  // 0x004dbf11    5d
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e24], ebx               // 0x004dbf12    891d247ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dbc], eax               // 0x004dbf18    a3bc7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dc0], ecx               // 0x004dbf1d    890dc07dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dc4], eax               // 0x004dbf23    a3c47dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dcc], eax               // 0x004dbf28    a3cc7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dd8], eax               // 0x004dbf2d    a3d87dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1ddc], eax               // 0x004dbf32    a3dc7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1de0], eax               // 0x004dbf37    a3e07dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1de4], eax               // 0x004dbf3c    a3e47dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1de8], ecx               // 0x004dbf41    890de87dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1dec], eax               // 0x004dbf47    a3ec7dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1df0], eax               // 0x004dbf4c    a3f07dc800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e00], eax               // 0x004dbf51    a3007ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e04], eax               // 0x004dbf56    a3047ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e08], eax               // 0x004dbf5b    a3087ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e0c], eax               // 0x004dbf60    a30c7ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e10], ecx               // 0x004dbf65    890d107ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e14], eax               // 0x004dbf6b    a3147ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e18], eax               // 0x004dbf70    a3187ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e30], ecx               // 0x004dbf75    890d307ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e34], 0x00000038        // 0x004dbf7b    c705347ec80038000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e38], eax               // 0x004dbf85    a3387ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e3c], eax               // 0x004dbf8a    a33c7ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e40], eax               // 0x004dbf8f    a3407ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e44], edx               // 0x004dbf94    8915447ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e50], eax               // 0x004dbf9a    a3507ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e54], eax               // 0x004dbf9f    a3547ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e58], eax               // 0x004dbfa4    a3587ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e5c], eax               // 0x004dbfa9    a35c7ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e60], ecx               // 0x004dbfae    890d607ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e64], eax               // 0x004dbfb4    a3647ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e68], eax               // 0x004dbfb9    a3687ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e6c], edx               // 0x004dbfbe    89156c7ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e78], eax               // 0x004dbfc4    a3787ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e7c], eax               // 0x004dbfc9    a37c7ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e80], ecx               // 0x004dbfce    890d807ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e84], 0x00000043        // 0x004dbfd4    c705847ec80043000000
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e88], ecx               // 0x004dbfde    890d887ec800
                         {disp32} mov       dword ptr [data_bytes + 0x2c1e8c], eax               // 0x004dbfe4    a38c7ec800
                         pop                ebx                                                  // 0x004dbfe9    5b
                         ret                                                                     // 0x004dbfea    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x004dbfeb    e88958f2ff
@__ct__15CreatureDesiresFP8CreaturePC12CreatureInfo@16:    push               esi                                                  // 0x004dbff0    56
                         mov.s              esi, ecx                                             // 0x004dbff1    8bf1
                         xor.s              edx, edx                                             // 0x004dbff3    33d2
                         mov                dword ptr [esi], 0x008a9a44                          // 0x004dbff5    c706449a8a00
                         {disp8} mov        dword ptr [esi + 0x04], edx                          // 0x004dbffb    895604
                         {disp32} lea       eax, dword ptr [esi + 0x00000328]                    // 0x004dbffe    8d8628030000
                         mov                ecx, 0x00000028                                      // 0x004dc004    b928000000
_jmp_addr_0x004dc009:    mov                dword ptr [eax], edx                                 // 0x004dc009    8910
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x004dc00b    895004
                         mov                dword ptr [eax], edx                                 // 0x004dc00e    8910
                         add                eax, 0x08                                            // 0x004dc010    83c008
                         dec                ecx                                                  // 0x004dc013    49
                         {disp8} jne        _jmp_addr_0x004dc009                                 // 0x004dc014    75f3
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x004dc016    8b44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                          // 0x004dc01a    8b4c2408
                         push               eax                                                  // 0x004dc01e    50
                         push               ecx                                                  // 0x004dc01f    51
                         mov.s              ecx, esi                                             // 0x004dc020    8bce
                         mov                dword ptr [esi], 0x008cff9c                          // 0x004dc022    c7069cff8c00
                         call               _jmp_addr_0x004dc100                                 // 0x004dc028    e8d3000000
                         mov.s              eax, esi                                             // 0x004dc02d    8bc6
                         pop                esi                                                  // 0x004dc02f    5e
                         ret                0x0008                                               // 0x004dc030    c20800
                         nop                                                                     // 0x004dc033    90
                         nop                                                                     // 0x004dc034    90
                         nop                                                                     // 0x004dc035    90
                         nop                                                                     // 0x004dc036    90
                         nop                                                                     // 0x004dc037    90
                         nop                                                                     // 0x004dc038    90
                         nop                                                                     // 0x004dc039    90
                         nop                                                                     // 0x004dc03a    90
                         nop                                                                     // 0x004dc03b    90
                         nop                                                                     // 0x004dc03c    90
                         nop                                                                     // 0x004dc03d    90
                         nop                                                                     // 0x004dc03e    90
                         nop                                                                     // 0x004dc03f    90
??_GCreatureDesires@@UAEPAXI@Z:
                         push               esi                                                  // 0x004dc040    56
                         mov.s              esi, ecx                                             // 0x004dc041    8bf1
                         call               _jmp_addr_0x004dc070                                 // 0x004dc043    e828000000
                         test               byte ptr [esp + 0x08], 0x01                          // 0x004dc048    f644240801
                         {disp8} je         _jmp_addr_0x004dc05d                                 // 0x004dc04d    740e
                         push               0x00000708                                           // 0x004dc04f    6808070000
                         push               esi                                                  // 0x004dc054    56
                         call               ??3Base@@SAXPAXK@Z                                 // 0x004dc055    e816a9f5ff
                         add                esp, 0x08                                            // 0x004dc05a    83c408
_jmp_addr_0x004dc05d:    mov.s              eax, esi                                             // 0x004dc05d    8bc6
                         pop                esi                                                  // 0x004dc05f    5e
                         ret                0x0004                                               // 0x004dc060    c20400
                         nop                                                                     // 0x004dc063    90
                         nop                                                                     // 0x004dc064    90
                         nop                                                                     // 0x004dc065    90
                         nop                                                                     // 0x004dc066    90
                         nop                                                                     // 0x004dc067    90
                         nop                                                                     // 0x004dc068    90
                         nop                                                                     // 0x004dc069    90
                         nop                                                                     // 0x004dc06a    90
                         nop                                                                     // 0x004dc06b    90
                         nop                                                                     // 0x004dc06c    90
                         nop                                                                     // 0x004dc06d    90
                         nop                                                                     // 0x004dc06e    90
                         nop                                                                     // 0x004dc06f    90
_jmp_addr_0x004dc070:    sub                esp, 0x08                                            // 0x004dc070    83ec08
                         push               ebx                                                  // 0x004dc073    53
                         push               ebp                                                  // 0x004dc074    55
                         push               esi                                                  // 0x004dc075    56
                         mov.s              esi, ecx                                             // 0x004dc076    8bf1
                         push               edi                                                  // 0x004dc078    57
                         {disp8} mov        dword ptr [esp + 0x14], esi                          // 0x004dc079    89742414
                         mov                dword ptr [esi], 0x008cff9c                          // 0x004dc07d    c7069cff8c00
                         {disp32} lea       edi, dword ptr [esi + 0x00000328]                    // 0x004dc083    8dbe28030000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000028                   // 0x004dc089    c744241028000000
_jmp_addr_0x004dc091:    mov                eax, dword ptr [edi]                                 // 0x004dc091    8b07
                         test               eax, eax                                             // 0x004dc093    85c0
                         {disp8} je         _jmp_addr_0x004dc0da                                 // 0x004dc095    7443
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                          // 0x004dc097    8b6804
                         xor.s              ebx, ebx                                             // 0x004dc09a    33db
                         test               eax, eax                                             // 0x004dc09c    85c0
                         {disp8} je         _jmp_addr_0x004dc0cf                                 // 0x004dc09e    742f
_jmp_addr_0x004dc0a0:    cmp                dword ptr [eax + 0x04], ebp                          // 0x004dc0a0    396804
                         mov                esi, dword ptr [eax]                                 // 0x004dc0a3    8b30
                         {disp8} jne        _jmp_addr_0x004dc0c3                                 // 0x004dc0a5    751c
                         cmp                eax, dword ptr [edi]                                 // 0x004dc0a7    3b07
                         {disp8} jne        _jmp_addr_0x004dc0af                                 // 0x004dc0a9    7504
                         mov                dword ptr [edi], esi                                 // 0x004dc0ab    8937
                         {disp8} jmp        _jmp_addr_0x004dc0b1                                 // 0x004dc0ad    eb02
_jmp_addr_0x004dc0af:    mov                dword ptr [ebx], esi                                 // 0x004dc0af    8933
_jmp_addr_0x004dc0b1:    {disp8} mov        edx, dword ptr [edi + 0x04]                          // 0x004dc0b1    8b5704
                         dec                edx                                                  // 0x004dc0b4    4a
                         push               eax                                                  // 0x004dc0b5    50
                         {disp8} mov        dword ptr [edi + 0x04], edx                          // 0x004dc0b6    895704
                         call               ??3@YAXPAX@Z                                         // 0x004dc0b9    e8da2d2d00
                         add                esp, 0x04                                            // 0x004dc0be    83c404
                         {disp8} jmp        _jmp_addr_0x004dc0c5                                 // 0x004dc0c1    eb02
_jmp_addr_0x004dc0c3:    mov.s              ebx, eax                                             // 0x004dc0c3    8bd8
_jmp_addr_0x004dc0c5:    test               esi, esi                                             // 0x004dc0c5    85f6
                         mov.s              eax, esi                                             // 0x004dc0c7    8bc6
                         {disp8} jne        _jmp_addr_0x004dc0a0                                 // 0x004dc0c9    75d5
                         {disp8} mov        esi, dword ptr [esp + 0x14]                          // 0x004dc0cb    8b742414
_jmp_addr_0x004dc0cf:    push               ebp                                                  // 0x004dc0cf    55
                         call               ??3@YAXPAX@Z                                         // 0x004dc0d0    e8c32d2d00
                         add                esp, 0x04                                            // 0x004dc0d5    83c404
                         {disp8} jmp        _jmp_addr_0x004dc091                                 // 0x004dc0d8    ebb7
_jmp_addr_0x004dc0da:    {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004dc0da    8b442410
                         add                edi, 0x08                                            // 0x004dc0de    83c708
                         dec                eax                                                  // 0x004dc0e1    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x004dc0e2    89442410
                         {disp8} jne        _jmp_addr_0x004dc091                                 // 0x004dc0e6    75a9
                         mov.s              ecx, esi                                             // 0x004dc0e8    8bce
                         call               _jmp_addr_0x00436960                                 // 0x004dc0ea    e871a8f5ff
                         pop                edi                                                  // 0x004dc0ef    5f
                         pop                esi                                                  // 0x004dc0f0    5e
                         pop                ebp                                                  // 0x004dc0f1    5d
                         pop                ebx                                                  // 0x004dc0f2    5b
                         add                esp, 0x08                                            // 0x004dc0f3    83c408
                         ret                                                                     // 0x004dc0f6    c3
                         nop                                                                     // 0x004dc0f7    90
                         nop                                                                     // 0x004dc0f8    90
                         nop                                                                     // 0x004dc0f9    90
                         nop                                                                     // 0x004dc0fa    90
                         nop                                                                     // 0x004dc0fb    90
                         nop                                                                     // 0x004dc0fc    90
                         nop                                                                     // 0x004dc0fd    90
                         nop                                                                     // 0x004dc0fe    90
                         nop                                                                     // 0x004dc0ff    90
_jmp_addr_0x004dc100:    sub                esp, 0x08                                            // 0x004dc100    83ec08
                         push               ebx                                                  // 0x004dc103    53
                         push               ebp                                                  // 0x004dc104    55
                         push               esi                                                  // 0x004dc105    56
                         mov.s              ebx, ecx                                             // 0x004dc106    8bd9
                         xor.s              ebp, ebp                                             // 0x004dc108    33ed
                         push               edi                                                  // 0x004dc10a    57
                         {disp8} mov        dword ptr [esp + 0x10], ebp                          // 0x004dc10b    896c2410
                         mov                edi, 0x00c67ee4                                      // 0x004dc10f    bfe47ec600
                         {disp8} lea        esi, dword ptr [ebx + 0x08]                          // 0x004dc114    8d7308
_jmp_addr_0x004dc117:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x004dc117    8b4c241c
                         call               _jmp_addr_0x00479440                                 // 0x004dc11b    e820d3f9ff
                         neg                eax                                                  // 0x004dc120    f7d8
                         sbb.s              eax, eax                                             // 0x004dc122    1bc0
                         neg                eax                                                  // 0x004dc124    f7d8
                         mov                dword ptr [esi], eax                                 // 0x004dc126    8906
                         xor.s              eax, eax                                             // 0x004dc128    33c0
                         {disp32} mov       dword ptr [esi + 0x000000a0], eax                    // 0x004dc12a    8986a0000000
                         {disp32} mov       dword ptr [esi + 0x00000140], eax                    // 0x004dc130    898640010000
                         fld                dword ptr [edi]                                      // 0x004dc136    d907
                         {disp8} mov        eax, dword ptr [edi + -0x04]                         // 0x004dc138    8b47fc
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x004dc13b    89442414
                         {disp8} fsub       dword ptr [esp + 0x14]                               // 0x004dc13f    d8642414
                         push               0x64                                                 // 0x004dc143    6a64
                         push               0x00bdf528                                           // 0x004dc145    6828f5bd00
                         push               ecx                                                  // 0x004dc14a    51
                         fstp               dword ptr [esp]                                      // 0x004dc14b    d91c24
                         call               ?GameFloatRand@GRand@@SAMM@Z                         // 0x004dc14e    e8dd232000
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                          // 0x004dc153    8b54242c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x004dc157    8b4c241c
                         {disp8} fadd       dword ptr [esp + 0x20]                               // 0x004dc15b    d8442420
                         add                esp, 0x0c                                            // 0x004dc15f    83c40c
                         push               ebp                                                  // 0x004dc162    55
                         {disp32} fstp      dword ptr [esi + 0x00000280]                         // 0x004dc163    d99e80020000
                         {disp32} mov       eax, dword ptr [edx + 0x000001f4]                    // 0x004dc169    8b82f4010000
                         add.s              ecx, eax                                             // 0x004dc16f    03c8
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00c84fc0]              // 0x004dc171    8b048dc04fc800
                         mov.s              ecx, ebx                                             // 0x004dc178    8bcb
                         {disp32} mov       dword ptr [esi + 0x000001e0], eax                    // 0x004dc17a    8986e0010000
                         call               _jmp_addr_0x004dc310                                 // 0x004dc180    e88b010000
                         {disp8} mov        ecx, dword ptr [edi + -0x08]                         // 0x004dc185    8b4ff8
                         {disp32} mov       dword ptr [esi + 0x00000460], ecx                    // 0x004dc188    898e60040000
                         {disp8} mov        edx, dword ptr [edi + 0x24]                          // 0x004dc18e    8b5724
                         {disp32} mov       dword ptr [esi + 0x00000500], edx                    // 0x004dc191    899600050000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004dc197    8b542410
                         xor.s              eax, eax                                             // 0x004dc19b    33c0
                         {disp32} mov       dword ptr [esi + 0x000005a0], eax                    // 0x004dc19d    8986a0050000
                         {disp32} mov       dword ptr [esi + 0x00000650], eax                    // 0x004dc1a3    898650060000
                         add                edx, 0x15                                            // 0x004dc1a9    83c215
                         add                edi, 0x000001c0                                      // 0x004dc1ac    81c7c0010000
                         inc                ebp                                                  // 0x004dc1b2    45
                         add                esi, 0x04                                            // 0x004dc1b3    83c604
                         cmp                edi, 0x00c6c4e4                                      // 0x004dc1b6    81ffe4c4c600
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x004dc1bc    89542410
                         {disp32} jl        _jmp_addr_0x004dc117                                 // 0x004dc1c0    0f8c51ffffff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x004dc1c6    8b4c241c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                          // 0x004dc1ca    8b442420
                         {disp32} mov       dword ptr [ebx + 0x00000648], ecx                    // 0x004dc1ce    898b48060000
                         xor.s              esi, esi                                             // 0x004dc1d4    33f6
                         mov.s              ecx, ebx                                             // 0x004dc1d6    8bcb
                         {disp32} mov       dword ptr [ebx + 0x0000064c], eax                    // 0x004dc1d8    89834c060000
                         {disp32} mov       dword ptr [ebx + 0x00000650], esi                    // 0x004dc1de    89b350060000
                         call               _jmp_addr_0x004de270                                 // 0x004dc1e4    e887200000
                         pop                edi                                                  // 0x004dc1e9    5f
                         {disp32} mov       dword ptr [ebx + 0x000006fc], esi                    // 0x004dc1ea    89b3fc060000
                         {disp32} mov       dword ptr [ebx + 0x00000704], esi                    // 0x004dc1f0    89b304070000
                         pop                esi                                                  // 0x004dc1f6    5e
                         pop                ebp                                                  // 0x004dc1f7    5d
                         {disp32} mov       dword ptr [ebx + 0x000006f8], 0x00000028             // 0x004dc1f8    c783f806000028000000
                         pop                ebx                                                  // 0x004dc202    5b
                         add                esp, 0x08                                            // 0x004dc203    83c408
                         ret                0x0008                                               // 0x004dc206    c20800
                         nop                                                                     // 0x004dc209    90
                         nop                                                                     // 0x004dc20a    90
                         nop                                                                     // 0x004dc20b    90
                         nop                                                                     // 0x004dc20c    90
                         nop                                                                     // 0x004dc20d    90
                         nop                                                                     // 0x004dc20e    90
                         nop                                                                     // 0x004dc20f    90
_jmp_addr_0x004dc210:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004dc210    8b442404
                         push               ebx                                                  // 0x004dc214    53
                         push               esi                                                  // 0x004dc215    56
                         mov.s              ebx, ecx                                             // 0x004dc216    8bd9
                         lea                ecx, dword ptr [eax + eax * 0x4]                     // 0x004dc218    8d0c80
                         lea                esi, dword ptr [eax + ecx * 0x2]                     // 0x004dc21b    8d3448
                         push               edi                                                  // 0x004dc21e    57
                         shl                esi, 4                                               // 0x004dc21f    c1e604
                         xor.s              edi, edi                                             // 0x004dc222    33ff
                         add                esi, 0x00c85ce0                                      // 0x004dc224    81c6e05cc800
_jmp_addr_0x004dc22a:    fld                dword ptr [esi]                                      // 0x004dc22a    d906
                         {disp32} fcom      dword ptr [_rdata_float0p0]                          // 0x004dc22c    d81598a38a00
                         fnstsw             ax                                                   // 0x004dc232    dfe0
                         test               ah, 0x01                                             // 0x004dc234    f6c401
                         {disp8} je         _jmp_addr_0x004dc24f                                 // 0x004dc237    7416
                         fchs                                                                    // 0x004dc239    d9e0
                         push               ecx                                                  // 0x004dc23b    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26fb8]                    // 0x004dc23c    d80db8ff8c00
                         mov.s              ecx, ebx                                             // 0x004dc242    8bcb
                         fstp               dword ptr [esp]                                      // 0x004dc244    d91c24
                         push               edi                                                  // 0x004dc247    57
                         call               _jmp_addr_0x004dc260                                 // 0x004dc248    e813000000
                         {disp8} jmp        _jmp_addr_0x004dc251                                 // 0x004dc24d    eb02
_jmp_addr_0x004dc24f:    fstp               st(0)                                                // 0x004dc24f    ddd8
_jmp_addr_0x004dc251:    inc                edi                                                  // 0x004dc251    47
                         add                esi, 0x04                                            // 0x004dc252    83c604
                         cmp                edi, 0x28                                            // 0x004dc255    83ff28
                         .byte              0x72, 0xd0// {disp8} jb _jmp_addr_0x004dc22a         // 0x004dc258    72d0
                         pop                edi                                                  // 0x004dc25a    5f
                         pop                esi                                                  // 0x004dc25b    5e
                         pop                ebx                                                  // 0x004dc25c    5b
                         ret                0x0004                                               // 0x004dc25d    c20400
_jmp_addr_0x004dc260:    sub                esp, 0x08                                            // 0x004dc260    83ec08
                         xor.s              edx, edx                                             // 0x004dc263    33d2
                         mov                eax, 0x000003e8                                      // 0x004dc265    b8e8030000
                         div                dword ptr [data_bytes + 0x33ba38]                    // 0x004dc26a    f735381ad000
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000                   // 0x004dc270    c744240400000000
                         push               esi                                                  // 0x004dc278    56
                         mov.s              esi, ecx                                             // 0x004dc279    8bf1
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x004dc27b    89442404
                         {disp8} fild       qword ptr [esp + 0x04]                               // 0x004dc27f    df6c2404
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x004dc283    d84c2414
                         call               _jmp_addr_0x007a1400                                 // 0x004dc287    e874512c00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004dc28c    8b4c2410
                         cmp                eax, dword ptr [esi + ecx * 0x4 + 0x000000a8]        // 0x004dc290    3b848ea8000000
                         {disp8} jbe        _jmp_addr_0x004dc2be                                 // 0x004dc297    7625
                         {disp32} mov       dword ptr [esi + ecx * 0x4 + 0x000000a8], eax        // 0x004dc299    89848ea8000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000648]                    // 0x004dc2a0    8b8648060000
                         {disp32} mov       edx, dword ptr [eax + 0x00000164]                    // 0x004dc2a6    8b9064010000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x004dc2ac    8d0c49
                         shl                ecx, 4                                               // 0x004dc2af    c1e104
                         {disp32} lea       ecx, dword ptr [edx + ecx * 0x1 + 0x00000718]        // 0x004dc2b2    8d8c0a18070000
                         call               _jmp_addr_0x004f12b0                                 // 0x004dc2b9    e8f24f0100
_jmp_addr_0x004dc2be:    pop                esi                                                  // 0x004dc2be    5e
                         add                esp, 0x08                                            // 0x004dc2bf    83c408
                         ret                0x0008                                               // 0x004dc2c2    c20800
                         nop                                                                     // 0x004dc2c5    90
                         nop                                                                     // 0x004dc2c6    90
                         nop                                                                     // 0x004dc2c7    90
                         nop                                                                     // 0x004dc2c8    90
                         nop                                                                     // 0x004dc2c9    90
                         nop                                                                     // 0x004dc2ca    90
                         nop                                                                     // 0x004dc2cb    90
                         nop                                                                     // 0x004dc2cc    90
                         nop                                                                     // 0x004dc2cd    90
                         nop                                                                     // 0x004dc2ce    90
                         nop                                                                     // 0x004dc2cf    90
_jmp_addr_0x004dc2d0:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004dc2d0    8b442404
                         {disp32} mov       dword ptr [ecx + eax * 0x4 + 0x000000a8], 0x00000000 // 0x004dc2d4    c78481a800000000000000
                         ret                0x0004                                               // 0x004dc2df    c20400
                         nop                                                                     // 0x004dc2e2    90
                         nop                                                                     // 0x004dc2e3    90
                         nop                                                                     // 0x004dc2e4    90
                         nop                                                                     // 0x004dc2e5    90
                         nop                                                                     // 0x004dc2e6    90
                         nop                                                                     // 0x004dc2e7    90
                         nop                                                                     // 0x004dc2e8    90
                         nop                                                                     // 0x004dc2e9    90
                         nop                                                                     // 0x004dc2ea    90
                         nop                                                                     // 0x004dc2eb    90
                         nop                                                                     // 0x004dc2ec    90
                         nop                                                                     // 0x004dc2ed    90
                         nop                                                                     // 0x004dc2ee    90
                         nop                                                                     // 0x004dc2ef    90
_jmp_addr_0x004dc2f0:    push               edi                                                  // 0x004dc2f0    57
                         {disp32} lea       edi, dword ptr [ecx + 0x000000a8]                    // 0x004dc2f1    8db9a8000000
                         mov                ecx, 0x00000028                                      // 0x004dc2f7    b928000000
                         xor.s              eax, eax                                             // 0x004dc2fc    33c0
                         rep stosd                                                               // 0x004dc2fe    f3ab
                         pop                edi                                                  // 0x004dc300    5f
                         ret                                                                     // 0x004dc301    c3
                         nop                                                                     // 0x004dc302    90
                         nop                                                                     // 0x004dc303    90
                         nop                                                                     // 0x004dc304    90
                         nop                                                                     // 0x004dc305    90
                         nop                                                                     // 0x004dc306    90
                         nop                                                                     // 0x004dc307    90
                         nop                                                                     // 0x004dc308    90
                         nop                                                                     // 0x004dc309    90
                         nop                                                                     // 0x004dc30a    90
                         nop                                                                     // 0x004dc30b    90
                         nop                                                                     // 0x004dc30c    90
                         nop                                                                     // 0x004dc30d    90
                         nop                                                                     // 0x004dc30e    90
                         nop                                                                     // 0x004dc30f    90
_jmp_addr_0x004dc310:    {disp32} mov       eax, dword ptr [data_bytes + 0x33adec]               // 0x004dc310    a1ec0dd000
                         test               eax, eax                                             // 0x004dc315    85c0
                         push               esi                                                  // 0x004dc317    56
                         mov.s              esi, ecx                                             // 0x004dc318    8bf1
                         {disp8} je         _jmp_addr_0x004dc361                                 // 0x004dc31a    7445
                         push               edi                                                  // 0x004dc31c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                          // 0x004dc31d    8b7c240c
                         {disp32} fld       dword ptr [esi + edi * 0x4 + 0x000001e8]             // 0x004dc321    d984bee8010000
                         push               0x000000ac                                           // 0x004dc328    68ac000000
                         {disp32} fmul      dword ptr [_rdata_float0p2]                          // 0x004dc32d    d80daca38a00
                         push               0x00bdf528                                           // 0x004dc333    6828f5bd00
                         push               ecx                                                  // 0x004dc338    51
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x004dc339    d95c2418
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x004dc33d    d9442418
                         fadd.s             st(0), st(0)                                         // 0x004dc341    dcc0
                         fstp               dword ptr [esp]                                      // 0x004dc343    d91c24
                         call               ?GameFloatRand@GRand@@SAMM@Z                         // 0x004dc346    e8e5212000
                         {disp8} fsub       dword ptr [esp + 0x18]                               // 0x004dc34b    d8642418
                         add                esp, 0x0c                                            // 0x004dc34f    83c40c
                         {disp32} fadd      dword ptr [esi + edi * 0x4 + 0x000001e8]             // 0x004dc352    d884bee8010000
                         {disp32} fstp      dword ptr [esi + edi * 0x4 + 0x000001e8]             // 0x004dc359    d99cbee8010000
                         pop                edi                                                  // 0x004dc360    5f
_jmp_addr_0x004dc361:    pop                esi                                                  // 0x004dc361    5e
                         ret                0x0004                                               // 0x004dc362    c20400
                         nop                                                                     // 0x004dc365    90
                         nop                                                                     // 0x004dc366    90
                         nop                                                                     // 0x004dc367    90
                         nop                                                                     // 0x004dc368    90
                         nop                                                                     // 0x004dc369    90
                         nop                                                                     // 0x004dc36a    90
                         nop                                                                     // 0x004dc36b    90
                         nop                                                                     // 0x004dc36c    90
                         nop                                                                     // 0x004dc36d    90
                         nop                                                                     // 0x004dc36e    90
                         nop                                                                     // 0x004dc36f    90
_jmp_addr_0x004dc370:    {disp8} mov        edx, dword ptr [esp + 0x08]                          // 0x004dc370    8b542408
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x004dc374    d944240c
                         {disp32} fmul      dword ptr [ecx + edx * 0x4 + 0x00000148]             // 0x004dc378    d88c9148010000
                         push               esi                                                  // 0x004dc37f    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                          // 0x004dc380    8b742408
                         {disp32} fst       dword ptr [ecx + edx * 0x4 + 0x00000148]             // 0x004dc384    d9949148010000
                         {disp32} fcom      dword ptr [esi + 0x00000274]                         // 0x004dc38b    d89674020000
                         fnstsw             ax                                                   // 0x004dc391    dfe0
                         test               ah, 0x01                                             // 0x004dc393    f6c401
                         {disp8} je         _jmp_addr_0x004dc3ab                                 // 0x004dc396    7413
                         {disp32} mov       eax, dword ptr [esi + 0x00000274]                    // 0x004dc398    8b8674020000
                         fstp               st(0)                                                // 0x004dc39e    ddd8
                         {disp32} mov       dword ptr [ecx + edx * 0x4 + 0x00000148], eax        // 0x004dc3a0    89849148010000
                         pop                esi                                                  // 0x004dc3a7    5e
                         ret                0x000c                                               // 0x004dc3a8    c20c00
_jmp_addr_0x004dc3ab:    {disp32} fcomp     dword ptr [ecx + edx * 0x4 + 0x00000468]             // 0x004dc3ab    d89c9168040000
                         fnstsw             ax                                                   // 0x004dc3b2    dfe0
                         test               ah, 0x41                                             // 0x004dc3b4    f6c441
                         {disp8} jne        _jmp_addr_0x004dc3c7                                 // 0x004dc3b7    750e
                         {disp32} mov       eax, dword ptr [ecx + edx * 0x4 + 0x00000468]        // 0x004dc3b9    8b849168040000
                         {disp32} mov       dword ptr [ecx + edx * 0x4 + 0x00000148], eax        // 0x004dc3c0    89849148010000
_jmp_addr_0x004dc3c7:    pop                esi                                                  // 0x004dc3c7    5e
                         ret                0x000c                                               // 0x004dc3c8    c20c00
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x004dc3cb    e8a954f2ff
_jmp_addr_0x004dc3d0:    push               esi                                                  // 0x004dc3d0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                          // 0x004dc3d1    8b742408
                         {disp32} fld       dword ptr [ecx + esi * 0x4 + 0x000001e8]             // 0x004dc3d5    d984b1e8010000
                         {disp8} fdiv       dword ptr [esp + 0x0c]                               // 0x004dc3dc    d874240c
                         {disp32} fst       dword ptr [ecx + esi * 0x4 + 0x000001e8]             // 0x004dc3e0    d994b1e8010000
                         {disp32} mov       edx, dword ptr [ecx + 0x0000064c]                    // 0x004dc3e7    8b914c060000
                         {disp32} fcom      dword ptr [edx + 0x0000027c]                         // 0x004dc3ed    d8927c020000
                         fnstsw             ax                                                   // 0x004dc3f3    dfe0
                         test               ah, 0x01                                             // 0x004dc3f5    f6c401
                         {disp8} je         _jmp_addr_0x004dc40d                                 // 0x004dc3f8    7413
                         {disp32} mov       eax, dword ptr [edx + 0x0000027c]                    // 0x004dc3fa    8b827c020000
                         fstp               st(0)                                                // 0x004dc400    ddd8
                         {disp32} mov       dword ptr [ecx + esi * 0x4 + 0x000001e8], eax        // 0x004dc402    8984b1e8010000
                         pop                esi                                                  // 0x004dc409    5e
                         ret                0x0008                                               // 0x004dc40a    c20800
_jmp_addr_0x004dc40d:    {disp32} fcomp     dword ptr [edx + 0x00000280]                         // 0x004dc40d    d89a80020000
                         fnstsw             ax                                                   // 0x004dc413    dfe0
                         test               ah, 0x41                                             // 0x004dc415    f6c441
                         {disp8} jne        _jmp_addr_0x004dc427                                 // 0x004dc418    750d
                         {disp32} mov       edx, dword ptr [edx + 0x00000280]                    // 0x004dc41a    8b9280020000
                         {disp32} mov       dword ptr [ecx + esi * 0x4 + 0x000001e8], edx        // 0x004dc420    8994b1e8010000
_jmp_addr_0x004dc427:    pop                esi                                                  // 0x004dc427    5e
                         ret                0x0008                                               // 0x004dc428    c20800
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x004dc42b    e84954f2ff
_jmp_addr_0x004dc430:    push               ebx                                                  // 0x004dc430    53
                         push               ebp                                                  // 0x004dc431    55
                         push               esi                                                  // 0x004dc432    56
                         push               edi                                                  // 0x004dc433    57
                         mov.s              edi, ecx                                             // 0x004dc434    8bf9
                         call               _jmp_addr_0x004de620                                 // 0x004dc436    e8e5210000
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                          // 0x004dc43b    8b6c2414
                         xor.s              ebx, ebx                                             // 0x004dc43f    33db
                         {disp32} mov       dword ptr [edi + 0x00000654], ebx                    // 0x004dc441    899f54060000
                         {disp32} lea       esi, dword ptr [edi + 0x00000148]                    // 0x004dc447    8db748010000
_jmp_addr_0x004dc44d:    push               ebx                                                  // 0x004dc44d    53
                         mov.s              ecx, edi                                             // 0x004dc44e    8bcf
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc450    e84b090000
                         test               eax, eax                                             // 0x004dc455    85c0
                         {disp32} je        _jmp_addr_0x004dc4e4                                 // 0x004dc457    0f8487000000
                         {disp32} mov       eax, dword ptr [esi + -0x000000a0]                   // 0x004dc45d    8b8660ffffff
                         test               eax, eax                                             // 0x004dc463    85c0
                         {disp8} jbe        _jmp_addr_0x004dc46e                                 // 0x004dc465    7607
                         dec                eax                                                  // 0x004dc467    48
                         {disp32} mov       dword ptr [esi + -0x000000a0], eax                   // 0x004dc468    898660ffffff
_jmp_addr_0x004dc46e:    push               ebx                                                  // 0x004dc46e    53
                         mov.s              ecx, edi                                             // 0x004dc46f    8bcf
                         call               _jmp_addr_0x004de550                                 // 0x004dc471    e8da200000
                         {disp8} fst        dword ptr [esp + 0x14]                               // 0x004dc476    d9542414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004dc47a    d81d98a38a00
                         fnstsw             ax                                                   // 0x004dc480    dfe0
                         test               ah, 0x41                                             // 0x004dc482    f6c441
                         {disp8} jne        _jmp_addr_0x004dc499                                 // 0x004dc485    7512
                         {disp32} mov       eax, dword ptr [esi + -0x000000a0]                   // 0x004dc487    8b8660ffffff
                         test               eax, eax                                             // 0x004dc48d    85c0
                         {disp8} jne        _jmp_addr_0x004dc499                                 // 0x004dc48f    7508
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x004dc491    d9442414
                         fadd               dword ptr [esi]                                      // 0x004dc495    d806
                         {disp8} jmp        _jmp_addr_0x004dc4a1                                 // 0x004dc497    eb08
_jmp_addr_0x004dc499:    {disp32} fld       dword ptr [esi + 0x00000140]                         // 0x004dc499    d98640010000
                         fmul               dword ptr [esi]                                      // 0x004dc49f    d80e
_jmp_addr_0x004dc4a1:    fstp               dword ptr [esi]                                      // 0x004dc4a1    d91e
                         {disp8} mov        ecx, dword ptr [ebp + 0x28]                          // 0x004dc4a3    8b4d28
                         fld                dword ptr [esi]                                      // 0x004dc4a6    d906
                         {disp32} fcomp     dword ptr [ecx + 0x00000274]                         // 0x004dc4a8    d89974020000
                         fnstsw             ax                                                   // 0x004dc4ae    dfe0
                         test               ah, 0x01                                             // 0x004dc4b0    f6c401
                         {disp8} je         _jmp_addr_0x004dc4bf                                 // 0x004dc4b3    740a
                         {disp32} mov       eax, dword ptr [ecx + 0x00000274]                    // 0x004dc4b5    8b8174020000
                         mov                dword ptr [esi], eax                                 // 0x004dc4bb    8906
                         {disp8} jmp        _jmp_addr_0x004dc4d6                                 // 0x004dc4bd    eb17
_jmp_addr_0x004dc4bf:    fld                dword ptr [esi]                                      // 0x004dc4bf    d906
                         {disp32} fcomp     dword ptr [esi + 0x00000320]                         // 0x004dc4c1    d89e20030000
                         fnstsw             ax                                                   // 0x004dc4c7    dfe0
                         test               ah, 0x41                                             // 0x004dc4c9    f6c441
                         {disp8} jne        _jmp_addr_0x004dc4d6                                 // 0x004dc4cc    7508
                         {disp32} mov       ecx, dword ptr [esi + 0x00000320]                    // 0x004dc4ce    8b8e20030000
                         mov                dword ptr [esi], ecx                                 // 0x004dc4d4    890e
_jmp_addr_0x004dc4d6:    fld                dword ptr [esi]                                      // 0x004dc4d6    d906
                         {disp32} fadd      dword ptr [edi + 0x00000654]                         // 0x004dc4d8    d88754060000
                         {disp32} fstp      dword ptr [edi + 0x00000654]                         // 0x004dc4de    d99f54060000
_jmp_addr_0x004dc4e4:    inc                ebx                                                  // 0x004dc4e4    43
                         add                esi, 0x04                                            // 0x004dc4e5    83c604
                         cmp                ebx, 0x28                                            // 0x004dc4e8    83fb28
                         {disp32} jl        _jmp_addr_0x004dc44d                                 // 0x004dc4eb    0f8c5cffffff
                         pop                edi                                                  // 0x004dc4f1    5f
                         pop                esi                                                  // 0x004dc4f2    5e
                         pop                ebp                                                  // 0x004dc4f3    5d
                         pop                ebx                                                  // 0x004dc4f4    5b
                         ret                0x0004                                               // 0x004dc4f5    c20400
                         nop                                                                     // 0x004dc4f8    90
                         nop                                                                     // 0x004dc4f9    90
                         nop                                                                     // 0x004dc4fa    90
                         nop                                                                     // 0x004dc4fb    90
                         nop                                                                     // 0x004dc4fc    90
                         nop                                                                     // 0x004dc4fd    90
                         nop                                                                     // 0x004dc4fe    90
                         nop                                                                     // 0x004dc4ff    90
_jmp_addr_0x004dc500:    ret                                                                     // 0x004dc500    c3
                         nop                                                                     // 0x004dc501    90
                         nop                                                                     // 0x004dc502    90
                         nop                                                                     // 0x004dc503    90
                         nop                                                                     // 0x004dc504    90
                         nop                                                                     // 0x004dc505    90
                         nop                                                                     // 0x004dc506    90
                         nop                                                                     // 0x004dc507    90
                         nop                                                                     // 0x004dc508    90
                         nop                                                                     // 0x004dc509    90
                         nop                                                                     // 0x004dc50a    90
                         nop                                                                     // 0x004dc50b    90
                         nop                                                                     // 0x004dc50c    90
                         nop                                                                     // 0x004dc50d    90
                         nop                                                                     // 0x004dc50e    90
                         nop                                                                     // 0x004dc50f    90
_jmp_addr_0x004dc510:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004dc510    8b442404
                         push               ebx                                                  // 0x004dc514    53
                         push               esi                                                  // 0x004dc515    56
                         mov.s              esi, eax                                             // 0x004dc516    8bf0
                         shl                esi, 4                                               // 0x004dc518    c1e604
                         add.s              esi, eax                                             // 0x004dc51b    03f0
                         push               edi                                                  // 0x004dc51d    57
                         shl                esi, 4                                               // 0x004dc51e    c1e604
                         {disp32} mov       ebx, dword ptr [esi + 0x00c6c538]                    // 0x004dc521    8b9e38c5c600
                         mov.s              edi, ecx                                             // 0x004dc527    8bf9
                         push               ebx                                                  // 0x004dc529    53
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc52a    e871080000
                         test               eax, eax                                             // 0x004dc52f    85c0
                         {disp8} je         _jmp_addr_0x004dc59d                                 // 0x004dc531    746a
                         {disp32} mov       eax, dword ptr [esi + 0x00c6c568]                    // 0x004dc533    8b8668c5c600
                         test               eax, eax                                             // 0x004dc539    85c0
                         {disp8} jne        _jmp_addr_0x004dc547                                 // 0x004dc53b    750a
                         {disp32} mov       eax, dword ptr [edi + 0x00000650]                    // 0x004dc53d    8b8750060000
                         test               eax, eax                                             // 0x004dc543    85c0
                         {disp8} je         _jmp_addr_0x004dc59d                                 // 0x004dc545    7456
_jmp_addr_0x004dc547:    {disp32} fld       dword ptr [esi + 0x00c6c560]                         // 0x004dc547    d98660c5c600
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x004dc54d    8b4c2414
                         {disp32} fmul      dword ptr [edi + ebx * 0x4 + 0x00000148]             // 0x004dc551    d88c9f48010000
                         {disp32} fst       dword ptr [edi + ebx * 0x4 + 0x00000148]             // 0x004dc558    d9949f48010000
                         {disp32} fcom      dword ptr [ecx + 0x00000274]                         // 0x004dc55f    d89174020000
                         fnstsw             ax                                                   // 0x004dc565    dfe0
                         test               ah, 0x01                                             // 0x004dc567    f6c401
                         {disp8} je         _jmp_addr_0x004dc581                                 // 0x004dc56a    7415
                         {disp32} mov       eax, dword ptr [ecx + 0x00000274]                    // 0x004dc56c    8b8174020000
                         fstp               st(0)                                                // 0x004dc572    ddd8
                         {disp32} mov       dword ptr [edi + ebx * 0x4 + 0x00000148], eax        // 0x004dc574    89849f48010000
                         pop                edi                                                  // 0x004dc57b    5f
                         pop                esi                                                  // 0x004dc57c    5e
                         pop                ebx                                                  // 0x004dc57d    5b
                         ret                0x0008                                               // 0x004dc57e    c20800
_jmp_addr_0x004dc581:    {disp32} fcomp     dword ptr [edi + ebx * 0x4 + 0x00000468]             // 0x004dc581    d89c9f68040000
                         fnstsw             ax                                                   // 0x004dc588    dfe0
                         test               ah, 0x41                                             // 0x004dc58a    f6c441
                         {disp8} jne        _jmp_addr_0x004dc59d                                 // 0x004dc58d    750e
                         {disp32} mov       ecx, dword ptr [edi + ebx * 0x4 + 0x00000468]        // 0x004dc58f    8b8c9f68040000
                         {disp32} mov       dword ptr [edi + ebx * 0x4 + 0x00000148], ecx        // 0x004dc596    898c9f48010000
_jmp_addr_0x004dc59d:    pop                edi                                                  // 0x004dc59d    5f
                         pop                esi                                                  // 0x004dc59e    5e
                         pop                ebx                                                  // 0x004dc59f    5b
                         ret                0x0008                                               // 0x004dc5a0    c20800
                         nop                                                                     // 0x004dc5a3    90
                         nop                                                                     // 0x004dc5a4    90
                         nop                                                                     // 0x004dc5a5    90
                         nop                                                                     // 0x004dc5a6    90
                         nop                                                                     // 0x004dc5a7    90
                         nop                                                                     // 0x004dc5a8    90
                         nop                                                                     // 0x004dc5a9    90
                         nop                                                                     // 0x004dc5aa    90
                         nop                                                                     // 0x004dc5ab    90
                         nop                                                                     // 0x004dc5ac    90
                         nop                                                                     // 0x004dc5ad    90
                         nop                                                                     // 0x004dc5ae    90
                         nop                                                                     // 0x004dc5af    90
_jmp_addr_0x004dc5b0:    push               ecx                                                  // 0x004dc5b0    51
                         push               ebx                                                  // 0x004dc5b1    53
                         push               ebp                                                  // 0x004dc5b2    55
                         push               esi                                                  // 0x004dc5b3    56
                         xor.s              ebp, ebp                                             // 0x004dc5b4    33ed
                         mov.s              ebx, ecx                                             // 0x004dc5b6    8bd9
                         push               edi                                                  // 0x004dc5b8    57
                         {disp8} mov        dword ptr [esp + 0x10], ebp                          // 0x004dc5b9    896c2410
                         xor.s              esi, esi                                             // 0x004dc5bd    33f6
                         {disp32} lea       edi, dword ptr [ebx + 0x00000148]                    // 0x004dc5bf    8dbb48010000
_jmp_addr_0x004dc5c5:    push               esi                                                  // 0x004dc5c5    56
                         mov.s              ecx, ebx                                             // 0x004dc5c6    8bcb
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc5c8    e8d3070000
                         test               eax, eax                                             // 0x004dc5cd    85c0
                         {disp8} je         _jmp_addr_0x004dc5ec                                 // 0x004dc5cf    741b
                         cmp                esi, dword ptr [esp + 0x18]                          // 0x004dc5d1    3b742418
                         {disp8} je         _jmp_addr_0x004dc5ec                                 // 0x004dc5d5    7415
                         fld                dword ptr [edi]                                      // 0x004dc5d7    d907
                         {disp8} fcomp      dword ptr [esp + 0x10]                               // 0x004dc5d9    d85c2410
                         fnstsw             ax                                                   // 0x004dc5dd    dfe0
                         test               ah, 0x41                                             // 0x004dc5df    f6c441
                         {disp8} jne        _jmp_addr_0x004dc5ec                                 // 0x004dc5e2    7508
                         mov                eax, dword ptr [edi]                                 // 0x004dc5e4    8b07
                         mov.s              ebp, esi                                             // 0x004dc5e6    8bee
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x004dc5e8    89442410
_jmp_addr_0x004dc5ec:    inc                esi                                                  // 0x004dc5ec    46
                         add                edi, 0x04                                            // 0x004dc5ed    83c704
                         cmp                esi, 0x28                                            // 0x004dc5f0    83fe28
                         .byte              0x72, 0xd0// {disp8} jb _jmp_addr_0x004dc5c5         // 0x004dc5f3    72d0
                         pop                edi                                                  // 0x004dc5f5    5f
                         pop                esi                                                  // 0x004dc5f6    5e
                         mov.s              eax, ebp                                             // 0x004dc5f7    8bc5
                         pop                ebp                                                  // 0x004dc5f9    5d
                         pop                ebx                                                  // 0x004dc5fa    5b
                         pop                ecx                                                  // 0x004dc5fb    59
                         ret                0x0004                                               // 0x004dc5fc    c20400
                         nop                                                                     // 0x004dc5ff    90
_jmp_addr_0x004dc600:    sub                esp, 0x08                                            // 0x004dc600    83ec08
                         push               ebx                                                  // 0x004dc603    53
                         push               ebp                                                  // 0x004dc604    55
                         push               esi                                                  // 0x004dc605    56
                         mov.s              ebp, ecx                                             // 0x004dc606    8be9
                         push               edi                                                  // 0x004dc608    57
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000028                   // 0x004dc609    c744241428000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000                   // 0x004dc611    c744241000000000
                         xor.s              esi, esi                                             // 0x004dc619    33f6
                         mov                edi, 0x00c87868                                      // 0x004dc61b    bf6878c800
                         {disp32} lea       ebx, dword ptr [ebp + 0x00000148]                    // 0x004dc620    8d9d48010000
_jmp_addr_0x004dc626:    push               esi                                                  // 0x004dc626    56
                         mov.s              ecx, ebp                                             // 0x004dc627    8bcd
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc629    e872070000
                         test               eax, eax                                             // 0x004dc62e    85c0
                         {disp8} je         _jmp_addr_0x004dc654                                 // 0x004dc630    7422
                         cmp                esi, dword ptr [esp + 0x1c]                          // 0x004dc632    3b74241c
                         {disp8} je         _jmp_addr_0x004dc654                                 // 0x004dc636    741c
                         fld                dword ptr [ebx]                                      // 0x004dc638    d903
                         {disp8} fcomp      dword ptr [esp + 0x10]                               // 0x004dc63a    d85c2410
                         fnstsw             ax                                                   // 0x004dc63e    dfe0
                         test               ah, 0x41                                             // 0x004dc640    f6c441
                         {disp8} jne        _jmp_addr_0x004dc654                                 // 0x004dc643    750f
                         cmp                dword ptr [edi], 0x00                                // 0x004dc645    833f00
                         {disp8} je         _jmp_addr_0x004dc654                                 // 0x004dc648    740a
                         mov                eax, dword ptr [ebx]                                 // 0x004dc64a    8b03
                         {disp8} mov        dword ptr [esp + 0x14], esi                          // 0x004dc64c    89742414
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x004dc650    89442410
_jmp_addr_0x004dc654:    add                edi, 0x28                                            // 0x004dc654    83c728
                         inc                esi                                                  // 0x004dc657    46
                         add                ebx, 0x04                                            // 0x004dc658    83c304
                         cmp                edi, 0x00c87ea8                                      // 0x004dc65b    81ffa87ec800
                         {disp8} jl         _jmp_addr_0x004dc626                                 // 0x004dc661    7cc3
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004dc663    8b442414
                         pop                edi                                                  // 0x004dc667    5f
                         pop                esi                                                  // 0x004dc668    5e
                         pop                ebp                                                  // 0x004dc669    5d
                         pop                ebx                                                  // 0x004dc66a    5b
                         add                esp, 0x08                                            // 0x004dc66b    83c408
                         ret                0x0004                                               // 0x004dc66e    c20400
                         nop                                                                     // 0x004dc671    90
                         nop                                                                     // 0x004dc672    90
                         nop                                                                     // 0x004dc673    90
                         nop                                                                     // 0x004dc674    90
                         nop                                                                     // 0x004dc675    90
                         nop                                                                     // 0x004dc676    90
                         nop                                                                     // 0x004dc677    90
                         nop                                                                     // 0x004dc678    90
                         nop                                                                     // 0x004dc679    90
                         nop                                                                     // 0x004dc67a    90
                         nop                                                                     // 0x004dc67b    90
                         nop                                                                     // 0x004dc67c    90
                         nop                                                                     // 0x004dc67d    90
                         nop                                                                     // 0x004dc67e    90
                         nop                                                                     // 0x004dc67f    90
_jmp_addr_0x004dc680:    sub                esp, 0x08                                            // 0x004dc680    83ec08
                         push               ebx                                                  // 0x004dc683    53
                         push               ebp                                                  // 0x004dc684    55
                         push               esi                                                  // 0x004dc685    56
                         mov.s              ebp, ecx                                             // 0x004dc686    8be9
                         push               edi                                                  // 0x004dc688    57
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000028                   // 0x004dc689    c744241428000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000                   // 0x004dc691    c744241000000000
                         xor.s              edi, edi                                             // 0x004dc699    33ff
                         mov                esi, 0x00c67ed8                                      // 0x004dc69b    bed87ec600
                         {disp32} lea       ebx, dword ptr [ebp + 0x00000148]                    // 0x004dc6a0    8d9d48010000
_jmp_addr_0x004dc6a6:    push               edi                                                  // 0x004dc6a6    57
                         mov.s              ecx, ebp                                             // 0x004dc6a7    8bcd
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc6a9    e8f2060000
                         test               eax, eax                                             // 0x004dc6ae    85c0
                         {disp8} je         _jmp_addr_0x004dc6ce                                 // 0x004dc6b0    741c
                         fld                dword ptr [ebx]                                      // 0x004dc6b2    d903
                         {disp8} fcomp      dword ptr [esp + 0x10]                               // 0x004dc6b4    d85c2410
                         fnstsw             ax                                                   // 0x004dc6b8    dfe0
                         test               ah, 0x41                                             // 0x004dc6ba    f6c441
                         {disp8} jne        _jmp_addr_0x004dc6ce                                 // 0x004dc6bd    750f
                         cmp                dword ptr [esi], 0x00                                // 0x004dc6bf    833e00
                         {disp8} je         _jmp_addr_0x004dc6ce                                 // 0x004dc6c2    740a
                         mov                eax, dword ptr [ebx]                                 // 0x004dc6c4    8b03
                         {disp8} mov        dword ptr [esp + 0x14], edi                          // 0x004dc6c6    897c2414
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x004dc6ca    89442410
_jmp_addr_0x004dc6ce:    add                esi, 0x000001c0                                      // 0x004dc6ce    81c6c0010000
                         inc                edi                                                  // 0x004dc6d4    47
                         add                ebx, 0x04                                            // 0x004dc6d5    83c304
                         cmp                esi, 0x00c6c4d8                                      // 0x004dc6d8    81fed8c4c600
                         {disp8} jl         _jmp_addr_0x004dc6a6                                 // 0x004dc6de    7cc6
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004dc6e0    8b442414
                         pop                edi                                                  // 0x004dc6e4    5f
                         pop                esi                                                  // 0x004dc6e5    5e
                         pop                ebp                                                  // 0x004dc6e6    5d
                         pop                ebx                                                  // 0x004dc6e7    5b
                         add                esp, 0x08                                            // 0x004dc6e8    83c408
                         ret                                                                     // 0x004dc6eb    c3
                         nop                                                                     // 0x004dc6ec    90
                         nop                                                                     // 0x004dc6ed    90
                         nop                                                                     // 0x004dc6ee    90
                         nop                                                                     // 0x004dc6ef    90
                         sub                esp, 0x08                                            // 0x004dc6f0    83ec08
                         push               ebx                                                  // 0x004dc6f3    53
                         push               ebp                                                  // 0x004dc6f4    55
                         push               esi                                                  // 0x004dc6f5    56
                         push               edi                                                  // 0x004dc6f6    57
                         xor.s              edi, edi                                             // 0x004dc6f7    33ff
                         mov.s              ebp, ecx                                             // 0x004dc6f9    8be9
                         {disp8} mov        dword ptr [esp + 0x14], edi                          // 0x004dc6fb    897c2414
                         {disp8} mov        dword ptr [esp + 0x10], edi                          // 0x004dc6ff    897c2410
                         mov                esi, 0x00c67ec4                                      // 0x004dc703    bec47ec600
                         {disp32} lea       ebx, dword ptr [ebp + 0x00000148]                    // 0x004dc708    8d9d48010000
_jmp_addr_0x004dc70e:    push               edi                                                  // 0x004dc70e    57
                         mov.s              ecx, ebp                                             // 0x004dc70f    8bcd
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc711    e88a060000
                         test               eax, eax                                             // 0x004dc716    85c0
                         {disp8} je         _jmp_addr_0x004dc736                                 // 0x004dc718    741c
                         cmp                dword ptr [esi], 0x00                                // 0x004dc71a    833e00
                         {disp8} je         _jmp_addr_0x004dc736                                 // 0x004dc71d    7417
                         fld                dword ptr [ebx]                                      // 0x004dc71f    d903
                         {disp8} fcomp      dword ptr [esp + 0x10]                               // 0x004dc721    d85c2410
                         fnstsw             ax                                                   // 0x004dc725    dfe0
                         test               ah, 0x41                                             // 0x004dc727    f6c441
                         {disp8} jne        _jmp_addr_0x004dc736                                 // 0x004dc72a    750a
                         mov                eax, dword ptr [ebx]                                 // 0x004dc72c    8b03
                         {disp8} mov        dword ptr [esp + 0x14], edi                          // 0x004dc72e    897c2414
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x004dc732    89442410
_jmp_addr_0x004dc736:    add                esi, 0x000001c0                                      // 0x004dc736    81c6c0010000
                         inc                edi                                                  // 0x004dc73c    47
                         add                ebx, 0x04                                            // 0x004dc73d    83c304
                         cmp                esi, 0x00c6c4c4                                      // 0x004dc740    81fec4c4c600
                         .byte              0x72, 0xc6// {disp8} jb _jmp_addr_0x004dc70e         // 0x004dc746    72c6
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004dc748    8b442414
                         pop                edi                                                  // 0x004dc74c    5f
                         pop                esi                                                  // 0x004dc74d    5e
                         pop                ebp                                                  // 0x004dc74e    5d
                         pop                ebx                                                  // 0x004dc74f    5b
                         add                esp, 0x08                                            // 0x004dc750    83c408
                         ret                                                                     // 0x004dc753    c3
                         nop                                                                     // 0x004dc754    90
                         nop                                                                     // 0x004dc755    90
                         nop                                                                     // 0x004dc756    90
                         nop                                                                     // 0x004dc757    90
                         nop                                                                     // 0x004dc758    90
                         nop                                                                     // 0x004dc759    90
                         nop                                                                     // 0x004dc75a    90
                         nop                                                                     // 0x004dc75b    90
                         nop                                                                     // 0x004dc75c    90
                         nop                                                                     // 0x004dc75d    90
                         nop                                                                     // 0x004dc75e    90
                         nop                                                                     // 0x004dc75f    90
_jmp_addr_0x004dc760:    push               ecx                                                  // 0x004dc760    51
                         push               ebx                                                  // 0x004dc761    53
                         push               ebp                                                  // 0x004dc762    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                          // 0x004dc763    8b6c2410
                         push               esi                                                  // 0x004dc767    56
                         mov.s              ebx, ecx                                             // 0x004dc768    8bd9
                         xor.s              esi, esi                                             // 0x004dc76a    33f6
                         push               edi                                                  // 0x004dc76c    57
                         {disp8} mov        dword ptr [esp + 0x10], esi                          // 0x004dc76d    89742410
                         {disp32} lea       edi, dword ptr [ebx + 0x00000148]                    // 0x004dc771    8dbb48010000
_jmp_addr_0x004dc777:    push               esi                                                  // 0x004dc777    56
                         mov.s              ecx, ebx                                             // 0x004dc778    8bcb
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc77a    e821060000
                         test               eax, eax                                             // 0x004dc77f    85c0
                         {disp8} je         _jmp_addr_0x004dc797                                 // 0x004dc781    7414
                         fld                dword ptr [edi]                                      // 0x004dc783    d907
                         {disp32} fcomp     dword ptr [ebx + ebp * 0x4 + 0x00000148]             // 0x004dc785    d89cab48010000
                         fnstsw             ax                                                   // 0x004dc78c    dfe0
                         test               ah, 0x41                                             // 0x004dc78e    f6c441
                         {disp8} jne        _jmp_addr_0x004dc797                                 // 0x004dc791    7504
                         {disp8} inc        dword ptr [esp + 0x10]                               // 0x004dc793    ff442410
_jmp_addr_0x004dc797:    inc                esi                                                  // 0x004dc797    46
                         add                edi, 0x04                                            // 0x004dc798    83c704
                         cmp                esi, 0x28                                            // 0x004dc79b    83fe28
                         .byte              0x72, 0xd7// {disp8} jb _jmp_addr_0x004dc777         // 0x004dc79e    72d7
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x004dc7a0    8b442410
                         pop                edi                                                  // 0x004dc7a4    5f
                         pop                esi                                                  // 0x004dc7a5    5e
                         pop                ebp                                                  // 0x004dc7a6    5d
                         pop                ebx                                                  // 0x004dc7a7    5b
                         pop                ecx                                                  // 0x004dc7a8    59
                         ret                0x0004                                               // 0x004dc7a9    c20400
                         nop                                                                     // 0x004dc7ac    90
                         nop                                                                     // 0x004dc7ad    90
                         nop                                                                     // 0x004dc7ae    90
                         nop                                                                     // 0x004dc7af    90
_jmp_addr_0x004dc7b0:    push               ecx                                                  // 0x004dc7b0    51
                         push               ebx                                                  // 0x004dc7b1    53
                         push               ebp                                                  // 0x004dc7b2    55
                         push               esi                                                  // 0x004dc7b3    56
                         mov.s              ebx, ecx                                             // 0x004dc7b4    8bd9
                         push               edi                                                  // 0x004dc7b6    57
                         xor.s              ebp, ebp                                             // 0x004dc7b7    33ed
                         {disp8} mov        dword ptr [esp + 0x10], 0x40000000                   // 0x004dc7b9    c744241000000040
                         xor.s              esi, esi                                             // 0x004dc7c1    33f6
                         {disp32} lea       edi, dword ptr [ebx + 0x00000148]                    // 0x004dc7c3    8dbb48010000
_jmp_addr_0x004dc7c9:    push               esi                                                  // 0x004dc7c9    56
                         mov.s              ecx, ebx                                             // 0x004dc7ca    8bcb
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc7cc    e8cf050000
                         test               eax, eax                                             // 0x004dc7d1    85c0
                         {disp8} je         _jmp_addr_0x004dc7ea                                 // 0x004dc7d3    7415
                         fld                dword ptr [edi]                                      // 0x004dc7d5    d907
                         {disp8} fcomp      dword ptr [esp + 0x10]                               // 0x004dc7d7    d85c2410
                         fnstsw             ax                                                   // 0x004dc7db    dfe0
                         test               ah, 0x01                                             // 0x004dc7dd    f6c401
                         {disp8} je         _jmp_addr_0x004dc7ea                                 // 0x004dc7e0    7408
                         mov                eax, dword ptr [edi]                                 // 0x004dc7e2    8b07
                         mov.s              ebp, esi                                             // 0x004dc7e4    8bee
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x004dc7e6    89442410
_jmp_addr_0x004dc7ea:    inc                esi                                                  // 0x004dc7ea    46
                         add                edi, 0x04                                            // 0x004dc7eb    83c704
                         cmp                esi, 0x28                                            // 0x004dc7ee    83fe28
                         .byte              0x72, 0xd6// {disp8} jb _jmp_addr_0x004dc7c9         // 0x004dc7f1    72d6
                         pop                edi                                                  // 0x004dc7f3    5f
                         pop                esi                                                  // 0x004dc7f4    5e
                         mov.s              eax, ebp                                             // 0x004dc7f5    8bc5
                         pop                ebp                                                  // 0x004dc7f7    5d
                         pop                ebx                                                  // 0x004dc7f8    5b
                         pop                ecx                                                  // 0x004dc7f9    59
                         ret                                                                     // 0x004dc7fa    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                                 // 0x004dc7fb    e87950f2ff
_jmp_addr_0x004dc800:    sub                esp, 0x08                                            // 0x004dc800    83ec08
                         push               ebx                                                  // 0x004dc803    53
                         push               ebp                                                  // 0x004dc804    55
                         push               esi                                                  // 0x004dc805    56
                         mov.s              ebp, ecx                                             // 0x004dc806    8be9
                         push               edi                                                  // 0x004dc808    57
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000028                   // 0x004dc809    c744241428000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000                   // 0x004dc811    c744241000000000
                         xor.s              ebx, ebx                                             // 0x004dc819    33db
                         mov                edi, 0x00c67ed4                                      // 0x004dc81b    bfd47ec600
                         {disp32} lea       esi, dword ptr [ebp + 0x00000148]                    // 0x004dc820    8db548010000
_jmp_addr_0x004dc826:    push               ebx                                                  // 0x004dc826    53
                         mov.s              ecx, ebp                                             // 0x004dc827    8bcd
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc829    e872050000
                         test               eax, eax                                             // 0x004dc82e    85c0
                         {disp8} je         _jmp_addr_0x004dc858                                 // 0x004dc830    7426
                         {disp32} mov       eax, dword ptr [esi + -0x000000a0]                   // 0x004dc832    8b8660ffffff
                         test               eax, eax                                             // 0x004dc838    85c0
                         {disp8} ja         _jmp_addr_0x004dc858                                 // 0x004dc83a    771c
                         fld                dword ptr [esi]                                      // 0x004dc83c    d906
                         {disp8} fcomp      dword ptr [esp + 0x10]                               // 0x004dc83e    d85c2410
                         fnstsw             ax                                                   // 0x004dc842    dfe0
                         test               ah, 0x41                                             // 0x004dc844    f6c441
                         {disp8} jne        _jmp_addr_0x004dc858                                 // 0x004dc847    750f
                         cmp                dword ptr [edi], 0x00                                // 0x004dc849    833f00
                         {disp8} je         _jmp_addr_0x004dc858                                 // 0x004dc84c    740a
                         mov                eax, dword ptr [esi]                                 // 0x004dc84e    8b06
                         {disp8} mov        dword ptr [esp + 0x14], ebx                          // 0x004dc850    895c2414
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x004dc854    89442410
_jmp_addr_0x004dc858:    add                edi, 0x000001c0                                      // 0x004dc858    81c7c0010000
                         inc                ebx                                                  // 0x004dc85e    43
                         add                esi, 0x04                                            // 0x004dc85f    83c604
                         cmp                edi, 0x00c6c4d4                                      // 0x004dc862    81ffd4c4c600
                         .byte              0x72, 0xbc// {disp8} jb _jmp_addr_0x004dc826         // 0x004dc868    72bc
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x004dc86a    8b442414
                         pop                edi                                                  // 0x004dc86e    5f
                         pop                esi                                                  // 0x004dc86f    5e
                         pop                ebp                                                  // 0x004dc870    5d
                         pop                ebx                                                  // 0x004dc871    5b
                         add                esp, 0x08                                            // 0x004dc872    83c408
                         ret                                                                     // 0x004dc875    c3
                         nop                                                                     // 0x004dc876    90
                         nop                                                                     // 0x004dc877    90
                         nop                                                                     // 0x004dc878    90
                         nop                                                                     // 0x004dc879    90
                         nop                                                                     // 0x004dc87a    90
                         nop                                                                     // 0x004dc87b    90
                         nop                                                                     // 0x004dc87c    90
                         nop                                                                     // 0x004dc87d    90
                         nop                                                                     // 0x004dc87e    90
                         nop                                                                     // 0x004dc87f    90
_jmp_addr_0x004dc880:    push               esi                                                  // 0x004dc880    56
                         mov.s              esi, ecx                                             // 0x004dc881    8bf1
                         call               _jmp_addr_0x004dc800                                 // 0x004dc883    e878ffffff
                         cmp                eax, 0x28                                            // 0x004dc888    83f828
                         {disp8} je         _jmp_addr_0x004dc896                                 // 0x004dc88b    7409
                         {disp32} fld       dword ptr [esi + eax * 0x4 + 0x00000148]             // 0x004dc88d    d9848648010000
                         pop                esi                                                  // 0x004dc894    5e
                         ret                                                                     // 0x004dc895    c3
_jmp_addr_0x004dc896:    {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x004dc896    d90598a38a00
                         pop                esi                                                  // 0x004dc89c    5e
                         ret                                                                     // 0x004dc89d    c3
                         nop                                                                     // 0x004dc89e    90
                         nop                                                                     // 0x004dc89f    90
_jmp_addr_0x004dc8a0:    push               ebx                                                  // 0x004dc8a0    53
                         push               esi                                                  // 0x004dc8a1    56
                         push               edi                                                  // 0x004dc8a2    57
                         mov.s              esi, ecx                                             // 0x004dc8a3    8bf1
                         push               0x28                                                 // 0x004dc8a5    6a28
                         call               _jmp_addr_0x004dc5b0                                 // 0x004dc8a7    e804fdffff
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x004dc8ac    d9442418
                         {disp32} fmul      dword ptr [esi + eax * 0x4 + 0x00000148]             // 0x004dc8b0    d88c8648010000
                         {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x004dc8b7    8b7c2410
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                          // 0x004dc8bb    8b5c2414
                         xor.s              edx, edx                                             // 0x004dc8bf    33d2
                         {disp32} fstp      dword ptr [esi + edi * 0x4 + 0x00000148]             // 0x004dc8c1    d99cbe48010000
                         {disp32} lea       ecx, dword ptr [esi + 0x00000148]                    // 0x004dc8c8    8d8e48010000
_jmp_addr_0x004dc8ce:    cmp.s              edx, edi                                             // 0x004dc8ce    3bd7
                         {disp8} je         _jmp_addr_0x004dc8da                                 // 0x004dc8d0    7408
                         fld                dword ptr [ecx]                                      // 0x004dc8d2    d901
                         {disp8} fdiv       dword ptr [esp + 0x18]                               // 0x004dc8d4    d8742418
                         fstp               dword ptr [ecx]                                      // 0x004dc8d8    d919
_jmp_addr_0x004dc8da:    fld                dword ptr [ecx]                                      // 0x004dc8da    d901
                         {disp32} fcomp     dword ptr [ebx + 0x00000274]                         // 0x004dc8dc    d89b74020000
                         fnstsw             ax                                                   // 0x004dc8e2    dfe0
                         test               ah, 0x01                                             // 0x004dc8e4    f6c401
                         {disp8} je         _jmp_addr_0x004dc8f1                                 // 0x004dc8e7    7408
                         {disp32} mov       eax, dword ptr [ebx + 0x00000274]                    // 0x004dc8e9    8b8374020000
                         {disp8} jmp        _jmp_addr_0x004dc906                                 // 0x004dc8ef    eb15
_jmp_addr_0x004dc8f1:    fld                dword ptr [ecx]                                      // 0x004dc8f1    d901
                         {disp32} fcomp     dword ptr [ecx + 0x00000320]                         // 0x004dc8f3    d89920030000
                         fnstsw             ax                                                   // 0x004dc8f9    dfe0
                         test               ah, 0x41                                             // 0x004dc8fb    f6c441
                         {disp8} jne        _jmp_addr_0x004dc908                                 // 0x004dc8fe    7508
                         {disp32} mov       eax, dword ptr [ecx + 0x00000320]                    // 0x004dc900    8b8120030000
_jmp_addr_0x004dc906:    mov                dword ptr [ecx], eax                                 // 0x004dc906    8901
_jmp_addr_0x004dc908:    inc                edx                                                  // 0x004dc908    42
                         add                ecx, 0x4                                             // 0x004dc909    83c104
                         cmp                edx, 0x28                                            // 0x004dc90c    83fa28
                         .byte              0x72, 0xbd// {disp8} jb _jmp_addr_0x004dc8ce         // 0x004dc90f    72bd
                         pop                edi                                                  // 0x004dc911    5f
                         pop                esi                                                  // 0x004dc912    5e
                         pop                ebx                                                  // 0x004dc913    5b
                         ret                0x000c                                               // 0x004dc914    c20c00
                         nop                                                                     // 0x004dc917    90
                         nop                                                                     // 0x004dc918    90
                         nop                                                                     // 0x004dc919    90
                         nop                                                                     // 0x004dc91a    90
                         nop                                                                     // 0x004dc91b    90
                         nop                                                                     // 0x004dc91c    90
                         nop                                                                     // 0x004dc91d    90
                         nop                                                                     // 0x004dc91e    90
                         nop                                                                     // 0x004dc91f    90
_jmp_addr_0x004dc920:    push               esi                                                  // 0x004dc920    56
                         push               edi                                                  // 0x004dc921    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                          // 0x004dc922    8b7c240c
                         mov.s              esi, ecx                                             // 0x004dc926    8bf1
                         push               edi                                                  // 0x004dc928    57
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc929    e872040000
                         test               eax, eax                                             // 0x004dc92e    85c0
                         {disp8} je         _jmp_addr_0x004dc961                                 // 0x004dc930    742f
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x00000468]        // 0x004dc932    8b84be68040000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x004dc939    8b542410
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000148], eax        // 0x004dc93d    8984be48010000
                         xor.s              eax, eax                                             // 0x004dc944    33c0
                         {disp32} lea       ecx, dword ptr [esi + 0x00000148]                    // 0x004dc946    8d8e48010000
_jmp_addr_0x004dc94c:    cmp.s              eax, edi                                             // 0x004dc94c    3bc7
                         {disp8} je         _jmp_addr_0x004dc958                                 // 0x004dc94e    7408
                         {disp32} mov       esi, dword ptr [edx + 0x00000274]                    // 0x004dc950    8bb274020000
                         mov                dword ptr [ecx], esi                                 // 0x004dc956    8931
_jmp_addr_0x004dc958:    inc                eax                                                  // 0x004dc958    40
                         add                ecx, 0x4                                             // 0x004dc959    83c104
                         cmp                eax, 0x28                                            // 0x004dc95c    83f828
                         .byte              0x72, 0xeb// {disp8} jb _jmp_addr_0x004dc94c         // 0x004dc95f    72eb
_jmp_addr_0x004dc961:    pop                edi                                                  // 0x004dc961    5f
                         pop                esi                                                  // 0x004dc962    5e
                         ret                0x0008                                               // 0x004dc963    c20800
                         nop                                                                     // 0x004dc966    90
                         nop                                                                     // 0x004dc967    90
                         nop                                                                     // 0x004dc968    90
                         nop                                                                     // 0x004dc969    90
                         nop                                                                     // 0x004dc96a    90
                         nop                                                                     // 0x004dc96b    90
                         nop                                                                     // 0x004dc96c    90
                         nop                                                                     // 0x004dc96d    90
                         nop                                                                     // 0x004dc96e    90
                         nop                                                                     // 0x004dc96f    90
_jmp_addr_0x004dc970:    push               esi                                                  // 0x004dc970    56
                         push               edi                                                  // 0x004dc971    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                          // 0x004dc972    8b7c240c
                         mov.s              esi, ecx                                             // 0x004dc976    8bf1
                         push               edi                                                  // 0x004dc978    57
                         call               _jmp_addr_0x004dcda0                                 // 0x004dc979    e822040000
                         test               eax, eax                                             // 0x004dc97e    85c0
                         {disp8} je         _jmp_addr_0x004dc998                                 // 0x004dc980    7416
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x00000468]        // 0x004dc982    8b84be68040000
                         push               edi                                                  // 0x004dc989    57
                         mov.s              ecx, esi                                             // 0x004dc98a    8bce
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000148], eax        // 0x004dc98c    8984be48010000
                         call               _jmp_addr_0x004de780                                 // 0x004dc993    e8e81d0000
_jmp_addr_0x004dc998:    pop                edi                                                  // 0x004dc998    5f
                         pop                esi                                                  // 0x004dc999    5e
                         ret                0x0004                                               // 0x004dc99a    c20400
                         nop                                                                     // 0x004dc99d    90
                         nop                                                                     // 0x004dc99e    90
                         nop                                                                     // 0x004dc99f    90
_jmp_addr_0x004dc9a0:    {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x004dc9a0    8b442408
                         push               esi                                                  // 0x004dc9a4    56
                         push               edi                                                  // 0x004dc9a5    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                          // 0x004dc9a6    8b7c240c
                         mov.s              esi, ecx                                             // 0x004dc9aa    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x004dc9ac    8b8e64010000
                         push               eax                                                  // 0x004dc9b2    50
                         push               edi                                                  // 0x004dc9b3    57
                         add                ecx, 0x8                                             // 0x004dc9b4    83c108
                         call               _jmp_addr_0x004dc920                                 // 0x004dc9b7    e864ffffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x004dc9bc    8b8e64010000
                         push               edi                                                  // 0x004dc9c2    57
                         add                ecx, 0x8                                             // 0x004dc9c3    83c108
                         call               _jmp_addr_0x004de780                                 // 0x004dc9c6    e8b51d0000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x004dc9cb    8b8e64010000
                         push               0x1                                                  // 0x004dc9d1    6a01
                         push               edi                                                  // 0x004dc9d3    57
                         add                ecx, 0x8                                             // 0x004dc9d4    83c108
                         call               _jmp_addr_0x004dcdd0                                 // 0x004dc9d7    e8f4030000
                         pop                edi                                                  // 0x004dc9dc    5f
                         pop                esi                                                  // 0x004dc9dd    5e
                         ret                0x0008                                               // 0x004dc9de    c20800
                         nop                                                                     // 0x004dc9e1    90
                         nop                                                                     // 0x004dc9e2    90
                         nop                                                                     // 0x004dc9e3    90
                         nop                                                                     // 0x004dc9e4    90
                         nop                                                                     // 0x004dc9e5    90
                         nop                                                                     // 0x004dc9e6    90
                         nop                                                                     // 0x004dc9e7    90
                         nop                                                                     // 0x004dc9e8    90
                         nop                                                                     // 0x004dc9e9    90
                         nop                                                                     // 0x004dc9ea    90
                         nop                                                                     // 0x004dc9eb    90
                         nop                                                                     // 0x004dc9ec    90
                         nop                                                                     // 0x004dc9ed    90
                         nop                                                                     // 0x004dc9ee    90
                         nop                                                                     // 0x004dc9ef    90
_jmp_addr_0x004dc9f0:    push               esi                                                  // 0x004dc9f0    56
                         mov.s              esi, ecx                                             // 0x004dc9f1    8bf1
                         call               _jmp_addr_0x004dc7b0                                 // 0x004dc9f3    e8b8fdffff
                         {disp32} fld       dword ptr [esi + eax * 0x4 + 0x00000148]             // 0x004dc9f8    d9848648010000
                         {disp8} fdiv       dword ptr [esp + 0x10]                               // 0x004dc9ff    d8742410
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                          // 0x004dca03    8b4c2408
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                          // 0x004dca07    8b54240c
                         {disp32} fst       dword ptr [esi + ecx * 0x4 + 0x00000148]             // 0x004dca0b    d9948e48010000
                         {disp32} fcom      dword ptr [edx + 0x00000274]                         // 0x004dca12    d89274020000
                         fnstsw             ax                                                   // 0x004dca18    dfe0
                         test               ah, 0x01                                             // 0x004dca1a    f6c401
                         {disp8} je         _jmp_addr_0x004dca32                                 // 0x004dca1d    7413
                         {disp32} mov       eax, dword ptr [edx + 0x00000274]                    // 0x004dca1f    8b8274020000
                         fstp               st(0)                                                // 0x004dca25    ddd8
                         {disp32} mov       dword ptr [esi + ecx * 0x4 + 0x00000148], eax        // 0x004dca27    89848e48010000
                         pop                esi                                                  // 0x004dca2e    5e
                         ret                0x000c                                               // 0x004dca2f    c20c00
_jmp_addr_0x004dca32:    {disp32} fcomp     dword ptr [esi + ecx * 0x4 + 0x00000468]             // 0x004dca32    d89c8e68040000
                         fnstsw             ax                                                   // 0x004dca39    dfe0
                         test               ah, 0x41                                             // 0x004dca3b    f6c441
                         {disp8} jne        _jmp_addr_0x004dca4e                                 // 0x004dca3e    750e
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x4 + 0x00000468]        // 0x004dca40    8b948e68040000
                         {disp32} mov       dword ptr [esi + ecx * 0x4 + 0x00000148], edx        // 0x004dca47    89948e48010000
_jmp_addr_0x004dca4e:    pop                esi                                                  // 0x004dca4e    5e
                         ret                0x000c                                               // 0x004dca4f    c20c00
                         nop                                                                     // 0x004dca52    90
                         nop                                                                     // 0x004dca53    90
                         nop                                                                     // 0x004dca54    90
                         nop                                                                     // 0x004dca55    90
                         nop                                                                     // 0x004dca56    90
                         nop                                                                     // 0x004dca57    90
                         nop                                                                     // 0x004dca58    90
                         nop                                                                     // 0x004dca59    90
                         nop                                                                     // 0x004dca5a    90
                         nop                                                                     // 0x004dca5b    90
                         nop                                                                     // 0x004dca5c    90
                         nop                                                                     // 0x004dca5d    90
                         nop                                                                     // 0x004dca5e    90
                         nop                                                                     // 0x004dca5f    90
_jmp_addr_0x004dca60:    push               ecx                                                  // 0x004dca60    51
                         push               esi                                                  // 0x004dca61    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                          // 0x004dca62    8b742410
                         push               edi                                                  // 0x004dca66    57
                         mov.s              edi, ecx                                             // 0x004dca67    8bf9
                         push               esi                                                  // 0x004dca69    56
                         call               _jmp_addr_0x004dcda0                                 // 0x004dca6a    e831030000
                         test               eax, eax                                             // 0x004dca6f    85c0
                         {disp32} je        _jmp_addr_0x004dcd4a                                 // 0x004dca71    0f84d3020000
                         push               ebx                                                  // 0x004dca77    53
                         {disp32} lea       ebx, dword ptr [esi * 0x8 + 0x00000000]              // 0x004dca78    8d1cf500000000
                         sub.s              ebx, esi                                             // 0x004dca7f    2bde
                         shl                ebx, 6                                               // 0x004dca81    c1e306
                         {disp32} fld       dword ptr [ebx + 0x00c67ef4]                         // 0x004dca84    d983f47ec600
                         push               ebp                                                  // 0x004dca8a    55
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                          // 0x004dca8b    d83d90a38a00
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                          // 0x004dca91    8b6c2418
                         {disp32} fsub      dword ptr [_rdata_float1p0]                          // 0x004dca95    d82590a38a00
                         {disp8} fmul       dword ptr [esp + 0x24]                               // 0x004dca9b    d84c2424
                         {disp32} fadd      dword ptr [_rdata_float1p0]                          // 0x004dca9f    d80590a38a00
                         {disp8} fst        dword ptr [esp + 0x10]                               // 0x004dcaa5    d9542410
                         {disp32} fmul      dword ptr [edi + esi * 0x4 + 0x000001e8]             // 0x004dcaa9    d88cb7e8010000
                         {disp32} fst       dword ptr [edi + esi * 0x4 + 0x000001e8]             // 0x004dcab0    d994b7e8010000
                         {disp32} fcom      dword ptr [ebp + 0x0000027c]                         // 0x004dcab7    d8957c020000
                         fnstsw             ax                                                   // 0x004dcabd    dfe0
                         test               ah, 0x01                                             // 0x004dcabf    f6c401
                         {disp8} je         _jmp_addr_0x004dcad5                                 // 0x004dcac2    7411
                         {disp32} mov       eax, dword ptr [ebp + 0x0000027c]                    // 0x004dcac4    8b857c020000
                         fstp               st(0)                                                // 0x004dcaca    ddd8
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x000001e8], eax        // 0x004dcacc    8984b7e8010000
                         {disp8} jmp        _jmp_addr_0x004dcaef                                 // 0x004dcad3    eb1a
_jmp_addr_0x004dcad5:    {disp32} fcomp     dword ptr [ebp + 0x00000280]                         // 0x004dcad5    d89d80020000
                         fnstsw             ax                                                   // 0x004dcadb    dfe0
                         test               ah, 0x41                                             // 0x004dcadd    f6c441
                         {disp8} jne        _jmp_addr_0x004dcaef                                 // 0x004dcae0    750d
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000280]                    // 0x004dcae2    8b8d80020000
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x000001e8], ecx        // 0x004dcae8    898cb7e8010000
_jmp_addr_0x004dcaef:    {disp8} mov        edx, dword ptr [esp + 0x20]                          // 0x004dcaef    8b542420
                         push               edx                                                  // 0x004dcaf3    52
                         mov.s              ecx, edi                                             // 0x004dcaf4    8bcf
                         call               _jmp_addr_0x004de370                                 // 0x004dcaf6    e875180000
                         mov.s              edx, eax                                             // 0x004dcafb    8bd0
                         {disp8} mov        eax, dword ptr [edx + 0x0c]                          // 0x004dcafd    8b420c
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]              // 0x004dcb00    8d0cc500000000
                         sub.s              ecx, eax                                             // 0x004dcb07    2bc8
                         shl                ecx, 2                                               // 0x004dcb09    c1e102
                         {disp32} fld       dword ptr [ecx + 0x00c892c0]                         // 0x004dcb0c    d981c092c800
                         {disp8} fmul       dword ptr [esp + 0x24]                               // 0x004dcb12    d84c2424
                         fchs                                                                    // 0x004dcb16    d9e0
                         {disp8} fadd       dword ptr [edx + 0x04]                               // 0x004dcb18    d84204
                         {disp8} fst        dword ptr [edx + 0x04]                               // 0x004dcb1b    d95204
                         {disp32} fcom      dword ptr [ecx + 0x00c892b8]                         // 0x004dcb1e    d891b892c800
                         fnstsw             ax                                                   // 0x004dcb24    dfe0
                         test               ah, 0x01                                             // 0x004dcb26    f6c401
                         {disp8} je         _jmp_addr_0x004dcb38                                 // 0x004dcb29    740d
                         {disp32} mov       eax, dword ptr [ecx + 0x00c892b8]                    // 0x004dcb2b    8b81b892c800
                         fstp               st(0)                                                // 0x004dcb31    ddd8
                         {disp8} mov        dword ptr [edx + 0x04], eax                          // 0x004dcb33    894204
                         {disp8} jmp        _jmp_addr_0x004dcb4e                                 // 0x004dcb36    eb16
_jmp_addr_0x004dcb38:    {disp32} fcomp     dword ptr [ecx + 0x00c892bc]                         // 0x004dcb38    d899bc92c800
                         fnstsw             ax                                                   // 0x004dcb3e    dfe0
                         test               ah, 0x41                                             // 0x004dcb40    f6c441
                         {disp8} jne        _jmp_addr_0x004dcb4e                                 // 0x004dcb43    7509
                         {disp32} mov       ecx, dword ptr [ecx + 0x00c892bc]                    // 0x004dcb45    8b89bc92c800
                         {disp8} mov        dword ptr [edx + 0x04], ecx                          // 0x004dcb4b    894a04
_jmp_addr_0x004dcb4e:    {disp32} fld       dword ptr [ebp + 0x000002d0]                         // 0x004dcb4e    d985d0020000
                         {disp8} fmul       dword ptr [esp + 0x24]                               // 0x004dcb54    d84c2424
                         {disp32} fadd      dword ptr [edi + esi * 0x4 + 0x00000468]             // 0x004dcb58    d884b768040000
                         {disp8} fst        dword ptr [esp + 0x18]                               // 0x004dcb5f    d9542418
                         {disp32} fstp      dword ptr [edi + esi * 0x4 + 0x00000468]             // 0x004dcb63    d99cb768040000
                         {disp32} fld       dword ptr [ebx + 0x00c67edc]                         // 0x004dcb6a    d983dc7ec600
                         {disp32} fsub      dword ptr [__real@3e4ccccd]                          // 0x004dcb70    d82544b28a00
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x004dcb76    d90598a38a00
                         fcomp              st(1)                                                // 0x004dcb7c    d8d9
                         fnstsw             ax                                                   // 0x004dcb7e    dfe0
                         test               ah, 0x41                                             // 0x004dcb80    f6c441
                         {disp8} jne        _jmp_addr_0x004dcb8d                                 // 0x004dcb83    7508
                         fstp               st(0)                                                // 0x004dcb85    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x004dcb87    d90598a38a00
_jmp_addr_0x004dcb8d:    {disp32} fld       dword ptr [ebx + 0x00c67edc]                         // 0x004dcb8d    d983dc7ec600
                         {disp32} fadd      dword ptr [__real@3e4ccccd]                          // 0x004dcb93    d80544b28a00
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]                     // 0x004dcb99    d90578b48a00
                         fcomp              st(1)                                                // 0x004dcb9f    d8d9
                         fnstsw             ax                                                   // 0x004dcba1    dfe0
                         test               ah, 0x01                                             // 0x004dcba3    f6c401
                         {disp8} je         _jmp_addr_0x004dcbb4                                 // 0x004dcba6    740c
                         fstp               st(0)                                                // 0x004dcba8    ddd8
                         {disp8} mov        dword ptr [esp + 0x1c], 0x40000000                   // 0x004dcbaa    c744241c00000040
                         {disp8} jmp        _jmp_addr_0x004dcbb8                                 // 0x004dcbb2    eb04
_jmp_addr_0x004dcbb4:    {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x004dcbb4    d95c241c
_jmp_addr_0x004dcbb8:    {disp8} fld        dword ptr [esp + 0x18]                               // 0x004dcbb8    d9442418
                         fcomp              st(1)                                                // 0x004dcbbc    d8d9
                         fnstsw             ax                                                   // 0x004dcbbe    dfe0
                         test               ah, 0x01                                             // 0x004dcbc0    f6c401
                         {disp8} jne        _jmp_addr_0x004dcbda                                 // 0x004dcbc3    7515
                         fstp               st(0)                                                // 0x004dcbc5    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x004dcbc7    d9442418
                         {disp8} fcomp      dword ptr [esp + 0x1c]                               // 0x004dcbcb    d85c241c
                         fnstsw             ax                                                   // 0x004dcbcf    dfe0
                         test               ah, 0x41                                             // 0x004dcbd1    f6c441
                         {disp8} jne        _jmp_addr_0x004dcbe1                                 // 0x004dcbd4    750b
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x004dcbd6    d944241c
_jmp_addr_0x004dcbda:    {disp32} fstp      dword ptr [edi + esi * 0x4 + 0x00000468]             // 0x004dcbda    d99cb768040000
_jmp_addr_0x004dcbe1:    {disp32} mov       eax, dword ptr [ebx + 0x00c67f0c]                    // 0x004dcbe1    8b830c7fc600
                         test               eax, eax                                             // 0x004dcbe7    85c0
                         {disp8} je         _jmp_addr_0x004dcc3d                                 // 0x004dcbe9    7452
                         {disp32} fld       dword ptr [ebx + 0x00c67f08]                         // 0x004dcbeb    d983087fc600
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                          // 0x004dcbf1    d80d6cb28a00
                         {disp8} fmul       dword ptr [esp + 0x24]                               // 0x004dcbf7    d84c2424
                         {disp32} fadd      dword ptr [edi + esi * 0x4 + 0x00000508]             // 0x004dcbfb    d884b708050000
                         {disp32} fcom      dword ptr [_rdata_float1p0]                          // 0x004dcc02    d81590a38a00
                         {disp32} fst       dword ptr [edi + esi * 0x4 + 0x00000508]             // 0x004dcc08    d994b708050000
                         fnstsw             ax                                                   // 0x004dcc0f    dfe0
                         test               ah, 0x01                                             // 0x004dcc11    f6c401
                         {disp8} je         _jmp_addr_0x004dcc25                                 // 0x004dcc14    740f
                         fstp               st(0)                                                // 0x004dcc16    ddd8
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x00000508], 0x3f800000 // 0x004dcc18    c784b7080500000000803f
                         {disp8} jmp        _jmp_addr_0x004dcc3d                                 // 0x004dcc23    eb18
_jmp_addr_0x004dcc25:    {disp32} fcomp     dword ptr [rdata_bytes + 0x19c70]                    // 0x004dcc25    d81d702c8c00
                         fnstsw             ax                                                   // 0x004dcc2b    dfe0
                         test               ah, 0x41                                             // 0x004dcc2d    f6c441
                         {disp8} jne        _jmp_addr_0x004dcc3d                                 // 0x004dcc30    750b
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x00000508], 0x41000000 // 0x004dcc32    c784b70805000000000041
_jmp_addr_0x004dcc3d:    {disp8} fld        dword ptr [esp + 0x24]                               // 0x004dcc3d    d9442424
                         {disp32} fmul      dword ptr [_rdata_float0p001]                        // 0x004dcc41    d80db0a38a00
                         {disp32} fadd      dword ptr [edi + esi * 0x4 + 0x00000288]             // 0x004dcc47    d884b788020000
                         {disp32} fst       dword ptr [edi + esi * 0x4 + 0x00000288]             // 0x004dcc4e    d994b788020000
                         {disp32} fcom      dword ptr [ebx + 0x00c67ee0]                         // 0x004dcc55    d893e07ec600
                         fnstsw             ax                                                   // 0x004dcc5b    dfe0
                         test               ah, 0x01                                             // 0x004dcc5d    f6c401
                         {disp8} je         _jmp_addr_0x004dcc73                                 // 0x004dcc60    7411
                         {disp32} mov       edx, dword ptr [ebx + 0x00c67ee0]                    // 0x004dcc62    8b93e07ec600
                         fstp               st(0)                                                // 0x004dcc68    ddd8
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x00000288], edx        // 0x004dcc6a    8994b788020000
                         {disp8} jmp        _jmp_addr_0x004dcc8d                                 // 0x004dcc71    eb1a
_jmp_addr_0x004dcc73:    {disp32} fcomp     dword ptr [ebx + 0x00c67ee4]                         // 0x004dcc73    d89be47ec600
                         fnstsw             ax                                                   // 0x004dcc79    dfe0
                         test               ah, 0x41                                             // 0x004dcc7b    f6c441
                         {disp8} jne        _jmp_addr_0x004dcc8d                                 // 0x004dcc7e    750d
                         {disp32} mov       eax, dword ptr [ebx + 0x00c67ee4]                    // 0x004dcc80    8b83e47ec600
                         {disp32} mov       dword ptr [edi + esi * 0x4 + 0x00000288], eax        // 0x004dcc86    8984b788020000
_jmp_addr_0x004dcc8d:    lea                edx, dword ptr [esi + esi * 0x4]                     // 0x004dcc8d    8d14b6
                         lea                edx, dword ptr [esi + edx * 0x2]                     // 0x004dcc90    8d1456
                         shl                edx, 4                                               // 0x004dcc93    c1e204
                         {disp32} lea       ecx, dword ptr [edi + 0x000001e8]                    // 0x004dcc96    8d8fe8010000
                         add                edx, 0x00c85ce0                                      // 0x004dcc9c    81c2e05cc800
                         mov                esi, 0x00000028                                      // 0x004dcca2    be28000000
_jmp_addr_0x004dcca7:    fld                dword ptr [edx]                                      // 0x004dcca7    d902
                         {disp32} fcom      dword ptr [_rdata_float0p0]                          // 0x004dcca9    d81598a38a00
                         fnstsw             ax                                                   // 0x004dccaf    dfe0
                         test               ah, 0x41                                             // 0x004dccb1    f6c441
                         {disp8} jne        _jmp_addr_0x004dccf0                                 // 0x004dccb4    753a
                         fstp               st(0)                                                // 0x004dccb6    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x004dccb8    d9442410
                         fmul               dword ptr [ecx]                                      // 0x004dccbc    d809
                         {disp8} fst        dword ptr [esp + 0x24]                               // 0x004dccbe    d9542424
                         fstp               dword ptr [ecx]                                      // 0x004dccc2    d919
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x004dccc4    d9442424
                         {disp32} fcomp     dword ptr [ebp + 0x0000027c]                         // 0x004dccc8    d89d7c020000
                         fnstsw             ax                                                   // 0x004dccce    dfe0
                         test               ah, 0x01                                             // 0x004dccd0    f6c401
                         {disp8} je         _jmp_addr_0x004dccdd                                 // 0x004dccd3    7408
                         {disp32} mov       eax, dword ptr [ebp + 0x0000027c]                    // 0x004dccd5    8b857c020000
                         {disp8} jmp        _jmp_addr_0x004dcd39                                 // 0x004dccdb    eb5c
_jmp_addr_0x004dccdd:    {disp8} fld        dword ptr [esp + 0x24]                               // 0x004dccdd    d9442424
                         {disp32} fcomp     dword ptr [ebp + 0x00000280]                         // 0x004dcce1    d89d80020000
                         fnstsw             ax                                                   // 0x004dcce7    dfe0
                         test               ah, 0x41                                             // 0x004dcce9    f6c441
                         {disp8} jne        _jmp_addr_0x004dcd3b                                 // 0x004dccec    754d
                         {disp8} jmp        _jmp_addr_0x004dcd33                                 // 0x004dccee    eb43
_jmp_addr_0x004dccf0:    {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x004dccf0    d81d98a38a00
                         fnstsw             ax                                                   // 0x004dccf6    dfe0
                         test               ah, 0x01                                             // 0x004dccf8    f6c401
                         {disp8} je         _jmp_addr_0x004dcd3b                                 // 0x004dccfb    743e
                         fld                dword ptr [ecx]                                      // 0x004dccfd    d901
                         {disp8} fdiv       dword ptr [esp + 0x10]                               // 0x004dccff    d8742410
                         {disp8} fst        dword ptr [esp + 0x24]                               // 0x004dcd03    d9542424
                         fstp               dword ptr [ecx]                                      // 0x004dcd07    d919
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x004dcd09    d9442424
                         {disp32} fcomp     dword ptr [ebp + 0x0000027c]                         // 0x004dcd0d    d89d7c020000
                         fnstsw             ax                                                   // 0x004dcd13    dfe0
                         test               ah, 0x01                                             // 0x004dcd15    f6c401
                         {disp8} je         _jmp_addr_0x004dcd22                                 // 0x004dcd18    7408
                         {disp32} mov       eax, dword ptr [ebp + 0x0000027c]                    // 0x004dcd1a    8b857c020000
                         {disp8} jmp        _jmp_addr_0x004dcd39                                 // 0x004dcd20    eb17
_jmp_addr_0x004dcd22:    {disp8} fld        dword ptr [esp + 0x24]                               // 0x004dcd22    d9442424
                         {disp32} fcomp     dword ptr [ebp + 0x00000280]                         // 0x004dcd26    d89d80020000
                         fnstsw             ax                                                   // 0x004dcd2c    dfe0
                         test               ah, 0x41                                             // 0x004dcd2e    f6c441
                         {disp8} jne        _jmp_addr_0x004dcd3b                                 // 0x004dcd31    7508
_jmp_addr_0x004dcd33:    {disp32} mov       eax, dword ptr [ebp + 0x00000280]                    // 0x004dcd33    8b8580020000
_jmp_addr_0x004dcd39:    mov                dword ptr [ecx], eax                                 // 0x004dcd39    8901
_jmp_addr_0x004dcd3b:    add                edx, 0x04                                            // 0x004dcd3b    83c204
                         add                ecx, 0x4                                             // 0x004dcd3e    83c104
                         dec                esi                                                  // 0x004dcd41    4e
                         {disp32} jne       _jmp_addr_0x004dcca7                                 // 0x004dcd42    0f855fffffff
                         pop                ebp                                                  // 0x004dcd48    5d
                         pop                ebx                                                  // 0x004dcd49    5b
_jmp_addr_0x004dcd4a:    pop                edi                                                  // 0x004dcd4a    5f
                         pop                esi                                                  // 0x004dcd4b    5e
                         pop                ecx                                                  // 0x004dcd4c    59
                         ret                0x0010                                               // 0x004dcd4d    c21000
_jmp_addr_0x004dcd50:    push               ebx                                                  // 0x004dcd50    53
                         push               esi                                                  // 0x004dcd51    56
                         mov.s              esi, ecx                                             // 0x004dcd52    8bf1
                         push               edi                                                  // 0x004dcd54    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x004dcd55    8b7c2410
                         {disp32} mov       edx, dword ptr [esi + edi * 0x4 + 0x000005a8]        // 0x004dcd59    8b94bea8050000
                         inc                edx                                                  // 0x004dcd60    42
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x000005a8], edx        // 0x004dcd61    8994bea8050000
                         {disp32} fld       dword ptr [esi + edi * 0x4 + 0x00000508]             // 0x004dcd68    d984be08050000
                         mov.s              ebx, edx                                             // 0x004dcd6f    8bda
                         call               _jmp_addr_0x007a1400                                 // 0x004dcd71    e88a462c00
                         cmp.s              ebx, eax                                             // 0x004dcd76    3bd8
                         .byte              0x72, 0x16// {disp8} jb _jmp_addr_0x004dcd90         // 0x004dcd78    7216
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x000005a8], 0x00000000 // 0x004dcd7a    c784bea805000000000000
                         pop                edi                                                  // 0x004dcd85    5f
                         pop                esi                                                  // 0x004dcd86    5e
                         mov                eax, 0x00000001                                      // 0x004dcd87    b801000000
                         pop                ebx                                                  // 0x004dcd8c    5b
                         ret                0x0004                                               // 0x004dcd8d    c20400
_jmp_addr_0x004dcd90:    pop                edi                                                  // 0x004dcd90    5f
                         pop                esi                                                  // 0x004dcd91    5e
                         xor.s              eax, eax                                             // 0x004dcd92    33c0
                         pop                ebx                                                  // 0x004dcd94    5b
                         ret                0x0004                                               // 0x004dcd95    c20400
                         nop                                                                     // 0x004dcd98    90
                         nop                                                                     // 0x004dcd99    90
                         nop                                                                     // 0x004dcd9a    90
                         nop                                                                     // 0x004dcd9b    90
                         nop                                                                     // 0x004dcd9c    90
                         nop                                                                     // 0x004dcd9d    90
                         nop                                                                     // 0x004dcd9e    90
                         nop                                                                     // 0x004dcd9f    90
_jmp_addr_0x004dcda0:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x004dcda0    8b442404
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x4 + 0x08]              // 0x004dcda4    8b548108
                         test               edx, edx                                             // 0x004dcda8    85d2
                         {disp8} jne        _jmp_addr_0x004dcdbf                                 // 0x004dcdaa    7513
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x004dcdac    8b0d5c19d000
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                          // 0x004dcdb2    8b4114
                         test               ah, 0x20                                             // 0x004dcdb5    f6c420
                         {disp8} jne        _jmp_addr_0x004dcdbf                                 // 0x004dcdb8    7505
                         xor.s              eax, eax                                             // 0x004dcdba    33c0
                         ret                0x0004                                               // 0x004dcdbc    c20400
_jmp_addr_0x004dcdbf:    mov                eax, 0x00000001                                      // 0x004dcdbf    b801000000
                         ret                0x0004                                               // 0x004dcdc4    c20400
                         nop                                                                     // 0x004dcdc7    90
                         nop                                                                     // 0x004dcdc8    90
                         nop                                                                     // 0x004dcdc9    90
                         nop                                                                     // 0x004dcdca    90
                         nop                                                                     // 0x004dcdcb    90
                         nop                                                                     // 0x004dcdcc    90
                         nop                                                                     // 0x004dcdcd    90
                         nop                                                                     // 0x004dcdce    90
                         nop                                                                     // 0x004dcdcf    90
_jmp_addr_0x004dcdd0:    {disp8} mov        eax, dword ptr [esp + 0x08]                          // 0x004dcdd0    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                          // 0x004dcdd4    8b542404
                         {disp8} mov        dword ptr [ecx + edx * 0x4 + 0x08], eax              // 0x004dcdd8    89449108
                         ret                0x0008                                               // 0x004dcddc    c20800
                         nop                                                                     // 0x004dcddf    90
                         push               ebx                                                  // 0x004dcde0    53
                         push               ebp                                                  // 0x004dcde1    55
                         push               esi                                                  // 0x004dcde2    56
                         mov.s              ebx, ecx                                             // 0x004dcde3    8bd9
                         push               edi                                                  // 0x004dcde5    57
                         xor.s              ebp, ebp                                             // 0x004dcde6    33ed
                         xor.s              esi, esi                                             // 0x004dcde8    33f6
                         {disp32} lea       edi, dword ptr [ebx + 0x000000a8]                    // 0x004dcdea    8dbba8000000
_jmp_addr_0x004dcdf0:    push               esi                                                  // 0x004dcdf0    56
                         mov.s              ecx, ebx                                             // 0x004dcdf1    8bcb
                         call               _jmp_addr_0x004dcda0                                 // 0x004dcdf3    e8a8ffffff
                         test               eax, eax                                             // 0x004dcdf8    85c0
                         {disp8} je         _jmp_addr_0x004dce02                                 // 0x004dcdfa    7406
                         cmp                dword ptr [edi], 0x00                                // 0x004dcdfc    833f00
                         {disp8} ja         _jmp_addr_0x004dce02                                 // 0x004dcdff    7701
                         inc                ebp                                                  // 0x004dce01    45
_jmp_addr_0x004dce02:    inc                esi                                                  // 0x004dce02    46
                         add                edi, 0x04                                            // 0x004dce03    83c704
                         cmp                esi, 0x28                                            // 0x004dce06    83fe28
                         .byte              0x72, 0xe5// {disp8} jb _jmp_addr_0x004dcdf0         // 0x004dce09    72e5
                         pop                edi                                                  // 0x004dce0b    5f
                         pop                esi                                                  // 0x004dce0c    5e
                         mov.s              eax, ebp                                             // 0x004dce0d    8bc5
                         pop                ebp                                                  // 0x004dce0f    5d
                         pop                ebx                                                  // 0x004dce10    5b
                         ret                                                                     // 0x004dce11    c3
                         nop                                                                     // 0x004dce12    90
                         nop                                                                     // 0x004dce13    90
                         nop                                                                     // 0x004dce14    90
                         nop                                                                     // 0x004dce15    90
                         nop                                                                     // 0x004dce16    90
                         nop                                                                     // 0x004dce17    90
                         nop                                                                     // 0x004dce18    90
                         nop                                                                     // 0x004dce19    90
                         nop                                                                     // 0x004dce1a    90
                         nop                                                                     // 0x004dce1b    90
                         nop                                                                     // 0x004dce1c    90
                         nop                                                                     // 0x004dce1d    90
                         nop                                                                     // 0x004dce1e    90
                         nop                                                                     // 0x004dce1f    90
_jmp_addr_0x004dce20:    {disp8} fld        dword ptr [esp + 0x08]                               // 0x004dce20    d9442408
                         push               ebx                                                  // 0x004dce24    53
                         push               ebp                                                  // 0x004dce25    55
                         push               esi                                                  // 0x004dce26    56
                         mov.s              esi, ecx                                             // 0x004dce27    8bf1
                         push               edi                                                  // 0x004dce29    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                          // 0x004dce2a    8b7c2414
                         {disp32} mov       dword ptr [esi + 0x00000700], edi                    // 0x004dce2e    89be00070000
                         {disp32} mov       dword ptr [esi + 0x00000704], 0x00000000             // 0x004dce34    c7860407000000000000
                         call               _jmp_addr_0x007a1400                                 // 0x004dce3e    e8bd452c00
                         push               0x1                                                  // 0x004dce43    6a01
                         {disp8} lea        ebx, dword ptr [esi + 0x08]                          // 0x004dce45    8d5e08
                         push               edi                                                  // 0x004dce48    57
                         mov.s              ecx, ebx                                             // 0x004dce49    8bcb
                         {disp32} mov       dword ptr [esi + 0x00000708], eax                    // 0x004dce4b    898608070000
                         call               _jmp_addr_0x004dcdd0                                 // 0x004dce51    e87affffff
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                          // 0x004dce56    8b6c2418
                         xor.s              edi, edi                                             // 0x004dce5a    33ff
_jmp_addr_0x004dce5c:    cmp                edi, dword ptr [esi + 0x00000700]                    // 0x004dce5c    3bbe00070000
                         {disp8} je         _jmp_addr_0x004dce94                                 // 0x004dce62    7430
                         {disp8} lea        eax, dword ptr [edi + -0x04]                         // 0x004dce64    8d47fc
                         cmp                eax, 0x22                                            // 0x004dce67    83f822
                         {disp8} ja         _jmp_addr_0x004dce8b                                 // 0x004dce6a    771f
                         {disp8} lea        ecx, dword ptr [edi + -0x04]                         // 0x004dce6c    8d4ffc
                         xor.s              edx, edx                                             // 0x004dce6f    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x004dcef4]                      // 0x004dce71    8a91f4ce4d00
                         jmp                dword ptr [edx*4 + 0x4dcee8]                         // 0x004dce77    ff2495e8ce4d00
                         cmp                edi, 0x15                                            // 0x004dce7e    83ff15
                         {disp8} jne        _jmp_addr_0x004dce94                                 // 0x004dce81    7511
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x004dce83    8b44241c
                         test               eax, eax                                             // 0x004dce87    85c0
                         {disp8} je         _jmp_addr_0x004dce94                                 // 0x004dce89    7409
_jmp_addr_0x004dce8b:    push               ebp                                                  // 0x004dce8b    55
                         push               edi                                                  // 0x004dce8c    57
                         mov.s              ecx, ebx                                             // 0x004dce8d    8bcb
                         call               _jmp_addr_0x004dc260                                 // 0x004dce8f    e8ccf3ffff
_jmp_addr_0x004dce94:    inc                edi                                                  // 0x004dce94    47
                         cmp                edi, 0x28                                            // 0x004dce95    83ff28
                         .byte              0x72, 0xc2// {disp8} jb _jmp_addr_0x004dce5c         // 0x004dce98    72c2
                         cmp                dword ptr [esi + 0x00000700], 0x01                   // 0x004dce9a    83be0007000001
                         {disp8} jne        _jmp_addr_0x004dcebd                                 // 0x004dcea1    751a
                         push               0x10                                                 // 0x004dcea3    6a10
                         mov.s              ecx, ebx                                             // 0x004dcea5    8bcb
                         call               _jmp_addr_0x004dc2d0                                 // 0x004dcea7    e824f4ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00020d18]                    // 0x004dceac    8b8e180d0200
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                          // 0x004dceb2    8b4128
                         push               eax                                                  // 0x004dceb5    50
                         push               0x10                                                 // 0x004dceb6    6a10
                         call               _jmp_addr_0x004dc9a0                                 // 0x004dceb8    e8e3faffff
_jmp_addr_0x004dcebd:    {disp32} mov       ecx, dword ptr [esi + 0x00000700]                    // 0x004dcebd    8b8e00070000
                         push               ecx                                                  // 0x004dcec3    51
                         mov.s              ecx, ebx                                             // 0x004dcec4    8bcb
                         call               _jmp_addr_0x004dc2d0                                 // 0x004dcec6    e805f4ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00020d18]                    // 0x004dcecb    8b8e180d0200
                         {disp8} mov        edx, dword ptr [ecx + 0x28]                          // 0x004dced1    8b5128
                         {disp32} mov       eax, dword ptr [esi + 0x00000700]                    // 0x004dced4    8b8600070000
                         push               edx                                                  // 0x004dceda    52
                         push               eax                                                  // 0x004dcedb    50
                         call               _jmp_addr_0x004dc9a0                                 // 0x004dcedc    e8bffaffff
                         pop                edi                                                  // 0x004dcee1    5f
                         pop                esi                                                  // 0x004dcee2    5e
                         pop                ebp                                                  // 0x004dcee3    5d
                         pop                ebx                                                  // 0x004dcee4    5b
                         ret                0x000c                                               // 0x004dcee5    c20c00

// Snippet: jmptbl, [0x004dcee8, 0x004dcef4)
.byte 0x83, 0xce, 0x4d, 0x00      // 0x004dcee8
.byte 0x7e, 0xce, 0x4d, 0x00      // 0x004dceec
.byte 0x8b, 0xce, 0x4d, 0x00      // 0x004dcef0

// Snippet: ijmptbl, [0x004dcef4, 0x004dcf17)
.byte 0x00, 0x02, 0x02, 0x00      // 0x004dcef4
.byte 0x00, 0x01, 0x02, 0x02      // 0x004dcef8
.byte 0x02, 0x02, 0x00, 0x01      // 0x004dcefc
.byte 0x01, 0x02, 0x01, 0x02      // 0x004dcf00
.byte 0x02, 0x02, 0x02, 0x01      // 0x004dcf04
.byte 0x02, 0x02, 0x02, 0x02      // 0x004dcf08
.byte 0x02, 0x02, 0x01, 0x02      // 0x004dcf0c
.byte 0x02, 0x02, 0x02, 0x01      // 0x004dcf10
.byte 0x02, 0x02, 0x01            // 0x004dcf14

// Snippet: db, [0x004dcf17, 0x004dcf20)
.byte 0x90, 0x90, 0x90, 0x90      // 0x004dcf17
.byte 0x90, 0x90, 0x90, 0x90      // 0x004dcf1b
.byte 0x90                        // 0x004dcf1f

