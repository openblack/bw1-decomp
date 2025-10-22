.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00477210
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x004f0100
.extern _jmp_addr_0x0052edd0
.extern _jmp_addr_0x00618c40
.extern _jmp_addr_0x0063e3e0
.extern _jmp_addr_0x006da6d0
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern _jmp_addr_0x00709c40
.extern ?GetWorshipSpeed@TotemStatue@@QAEMXZ
.extern @SetWorshipPercentage__11TotemStatueFf@12
.extern _jmp_addr_0x0073b8e0
.extern ?SetWorshipPercentage@Town@@QAEXM@Z
.extern _jmp_addr_0x0073cd20
.extern _jmp_addr_0x007a1400
.extern ___RTDynamicCast
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

.globl _jmp_addr_0x0070e820

start_0x0070e820_0x0070f350:
// Snippet: asm, [0x0070e820, 0x0070f2b9)
_jmp_addr_0x0070e820:    sub                esp, 0x0000041c                    // 0x0070e820    81ec1c040000
                         push               ebx                                // 0x0070e826    53
                         push               ebp                                // 0x0070e827    55
                         push               esi                                // 0x0070e828    56
                         {disp32} mov       esi, dword ptr [esp + 0x0000042c]  // 0x0070e829    8bb4242c040000
                         mov                eax, dword ptr [esi]               // 0x0070e830    8b06
                         push               edi                                // 0x0070e832    57
                         mov.s              ecx, esi                           // 0x0070e833    8bce
                         call               dword ptr [eax + 0xa4]             // 0x0070e835    ff90a4000000
                         {disp32} mov       ebp, dword ptr [esp + 0x00000434]  // 0x0070e83b    8bac2434040000
                         xor.s              ebx, ebx                           // 0x0070e842    33db
                         cmp.s              esi, ebx                           // 0x0070e844    3bf3
                         mov.s              edi, eax                           // 0x0070e846    8bf8
                         {disp8} jne        _jmp_addr_0x0070e854               // 0x0070e848    750a
                         push               0x00c0d428                         // 0x0070e84a    6828d4c000
                         {disp32} jmp       _jmp_addr_0x0070f28c               // 0x0070e84f    e9380a0000
_jmp_addr_0x0070e854:    {disp8} lea        eax, dword ptr [ebp + -0x01]       // 0x0070e854    8d45ff
                         cmp                eax, 0x23                          // 0x0070e857    83f823
                         {disp32} ja        _jmp_addr_0x0070f294               // 0x0070e85a    0f87340a0000
                         jmp                dword ptr [eax*4 + 0x70f2bc]       // 0x0070e860    ff2485bcf27000
                         push               ebx                                // 0x0070e867    53
                         push               0x009c7f50                         // 0x0070e868    68507f9c00
                         push               0x009c7f30                         // 0x0070e86d    68307f9c00
                         push               ebx                                // 0x0070e872    53
                         push               esi                                // 0x0070e873    56
                         call               ___RTDynamicCast                   // 0x0070e874    e8a0710b00
                         add                esp, 0x14                          // 0x0070e879    83c414
                         cmp.s              eax, ebx                           // 0x0070e87c    3bc3
                         {disp32} je        _jmp_addr_0x0070e9ec               // 0x0070e87e    0f8468010000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070e884    8b8c2438040000
                         mov                edx, dword ptr [eax]               // 0x0070e88b    8b10
                         push               ecx                                // 0x0070e88d    51
                         mov.s              ecx, eax                           // 0x0070e88e    8bc8
                         call               dword ptr [edx + 0x5b0]            // 0x0070e890    ff92b0050000
                         pop                edi                                // 0x0070e896    5f
                         pop                esi                                // 0x0070e897    5e
                         pop                ebp                                // 0x0070e898    5d
                         pop                ebx                                // 0x0070e899    5b
                         add                esp, 0x0000041c                    // 0x0070e89a    81c41c040000
                         ret                                                   // 0x0070e8a0    c3
                         push               ebx                                // 0x0070e8a1    53
                         push               0x009c7f50                         // 0x0070e8a2    68507f9c00
                         push               0x009c7f30                         // 0x0070e8a7    68307f9c00
                         push               ebx                                // 0x0070e8ac    53
                         push               esi                                // 0x0070e8ad    56
                         call               ___RTDynamicCast                   // 0x0070e8ae    e866710b00
                         mov.s              esi, eax                           // 0x0070e8b3    8bf0
                         add                esp, 0x14                          // 0x0070e8b5    83c414
                         cmp.s              esi, ebx                           // 0x0070e8b8    3bf3
                         {disp32} je        _jmp_addr_0x0070e9ec               // 0x0070e8ba    0f842c010000
                         {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070e8c0    d9842438040000
                         mov                edx, dword ptr [esi]               // 0x0070e8c7    8b16
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8220c]  // 0x0070e8c9    d80d0cb29200
                         mov.s              ecx, esi                           // 0x0070e8cf    8bce
                         {disp8} fstp       dword ptr [esp + 0x10]             // 0x0070e8d1    d95c2410
                         call               dword ptr [edx + 0x49c]            // 0x0070e8d5    ff929c040000
                         test               eax, eax                           // 0x0070e8db    85c0
                         {disp8} je         _jmp_addr_0x0070e8fb               // 0x0070e8dd    741c
                         {disp8} mov        eax, dword ptr [esp + 0x10]        // 0x0070e8df    8b442410
                         or                 byte ptr [esi + 0x89], 2           // 0x0070e8e3    808e8900000002
                         pop                edi                                // 0x0070e8ea    5f
                         {disp32} mov       dword ptr [esi + 0x00000080], eax  // 0x0070e8eb    898680000000
                         pop                esi                                // 0x0070e8f1    5e
                         pop                ebp                                // 0x0070e8f2    5d
                         pop                ebx                                // 0x0070e8f3    5b
                         add                esp, 0x0000041c                    // 0x0070e8f4    81c41c040000
                         ret                                                   // 0x0070e8fa    c3
_jmp_addr_0x0070e8fb:    mov                edx, dword ptr [esi]               // 0x0070e8fb    8b16
                         mov.s              ecx, esi                           // 0x0070e8fd    8bce
                         call               dword ptr [edx + 0x508]            // 0x0070e8ff    ff9208050000
                         {disp8} fcomp      dword ptr [esp + 0x10]             // 0x0070e905    d85c2410
                         fnstsw             ax                                 // 0x0070e909    dfe0
                         test               ah, 0x40                           // 0x0070e90b    f6c440
                         {disp32} jne       _jmp_addr_0x0070f2ae               // 0x0070e90e    0f859a090000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]        // 0x0070e914    8b4c2410
                         mov                eax, dword ptr [esi]               // 0x0070e918    8b06
                         push               ecx                                // 0x0070e91a    51
                         mov.s              ecx, esi                           // 0x0070e91b    8bce
                         call               dword ptr [eax + 0x524]            // 0x0070e91d    ff9024050000
                         pop                edi                                // 0x0070e923    5f
                         pop                esi                                // 0x0070e924    5e
                         pop                ebp                                // 0x0070e925    5d
                         pop                ebx                                // 0x0070e926    5b
                         add                esp, 0x0000041c                    // 0x0070e927    81c41c040000
                         ret                                                   // 0x0070e92d    c3
                         push               ebx                                // 0x0070e92e    53
                         push               0x009c7f50                         // 0x0070e92f    68507f9c00
                         push               0x009c7f30                         // 0x0070e934    68307f9c00
                         push               ebx                                // 0x0070e939    53
                         push               esi                                // 0x0070e93a    56
                         call               ___RTDynamicCast                   // 0x0070e93b    e8d9700b00
                         mov.s              esi, eax                           // 0x0070e940    8bf0
                         add                esp, 0x14                          // 0x0070e942    83c414
                         cmp.s              esi, ebx                           // 0x0070e945    3bf3
                         {disp32} je        _jmp_addr_0x0070e9ec               // 0x0070e947    0f849f000000
                         mov                edi, dword ptr [esi]               // 0x0070e94d    8b3e
                         mov.s              edx, edi                           // 0x0070e94f    8bd7
                         mov.s              ecx, esi                           // 0x0070e951    8bce
                         call               dword ptr [edx + 0x50c]            // 0x0070e953    ff920c050000
                         mov                eax, dword ptr [esi]               // 0x0070e959    8b06
                         push               ecx                                // 0x0070e95b    51
                         mov.s              ecx, esi                           // 0x0070e95c    8bce
                         fstp               dword ptr [esp]                    // 0x0070e95e    d91c24
                         call               dword ptr [eax + 0x508]            // 0x0070e961    ff9008050000
                         push               ecx                                // 0x0070e967    51
                         fstp               dword ptr [esp]                    // 0x0070e968    d91c24
                         push               ecx                                // 0x0070e96b    51
                         {disp32} fld       dword ptr [esp + 0x00000444]       // 0x0070e96c    d9842444040000
                         mov.s              ecx, esi                           // 0x0070e973    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8220c]  // 0x0070e975    d80d0cb29200
                         fstp               dword ptr [esp]                    // 0x0070e97b    d91c24
                         call               dword ptr [edi + 0x514]            // 0x0070e97e    ff9714050000
                         pop                edi                                // 0x0070e984    5f
                         pop                esi                                // 0x0070e985    5e
                         pop                ebp                                // 0x0070e986    5d
                         pop                ebx                                // 0x0070e987    5b
                         add                esp, 0x0000041c                    // 0x0070e988    81c41c040000
                         ret                                                   // 0x0070e98e    c3
                         push               ebx                                // 0x0070e98f    53
                         push               0x009c7f50                         // 0x0070e990    68507f9c00
                         push               0x009c7f30                         // 0x0070e995    68307f9c00
                         push               ebx                                // 0x0070e99a    53
                         push               esi                                // 0x0070e99b    56
                         call               ___RTDynamicCast                   // 0x0070e99c    e878700b00
                         mov.s              esi, eax                           // 0x0070e9a1    8bf0
                         add                esp, 0x14                          // 0x0070e9a3    83c414
                         cmp.s              esi, ebx                           // 0x0070e9a6    3bf3
                         {disp8} je         _jmp_addr_0x0070e9ec               // 0x0070e9a8    7442
                         {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070e9aa    d9842438040000
                         mov                edi, dword ptr [esi]               // 0x0070e9b1    8b3e
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8220c]  // 0x0070e9b3    d80d0cb29200
                         push               ecx                                // 0x0070e9b9    51
                         mov.s              edx, edi                           // 0x0070e9ba    8bd7
                         mov.s              ecx, esi                           // 0x0070e9bc    8bce
                         fstp               dword ptr [esp]                    // 0x0070e9be    d91c24
                         call               dword ptr [edx + 0x508]            // 0x0070e9c1    ff9208050000
                         mov                eax, dword ptr [esi]               // 0x0070e9c7    8b06
                         push               ecx                                // 0x0070e9c9    51
                         mov.s              ecx, esi                           // 0x0070e9ca    8bce
                         fstp               dword ptr [esp]                    // 0x0070e9cc    d91c24
                         call               dword ptr [eax + 0x504]            // 0x0070e9cf    ff9004050000
                         push               ecx                                // 0x0070e9d5    51
                         mov.s              ecx, esi                           // 0x0070e9d6    8bce
                         fstp               dword ptr [esp]                    // 0x0070e9d8    d91c24
                         call               dword ptr [edi + 0x514]            // 0x0070e9db    ff9714050000
                         pop                edi                                // 0x0070e9e1    5f
                         pop                esi                                // 0x0070e9e2    5e
                         pop                ebp                                // 0x0070e9e3    5d
                         pop                ebx                                // 0x0070e9e4    5b
                         add                esp, 0x0000041c                    // 0x0070e9e5    81c41c040000
                         ret                                                   // 0x0070e9eb    c3
_jmp_addr_0x0070e9ec:    push               0x00c209dc                         // 0x0070e9ec    68dc09c200
                         {disp32} jmp       _jmp_addr_0x0070f28c               // 0x0070e9f1    e996080000
                         {disp32} mov       eax, dword ptr [esp + 0x00000438]  // 0x0070e9f6    8b842438040000
                         mov                edx, dword ptr [esi]               // 0x0070e9fd    8b16
                         push               ebx                                // 0x0070e9ff    53
                         push               eax                                // 0x0070ea00    50
                         mov.s              ecx, esi                           // 0x0070ea01    8bce
                         call               dword ptr [edx + 0x134]            // 0x0070ea03    ff9234010000
                         pop                edi                                // 0x0070ea09    5f
                         pop                esi                                // 0x0070ea0a    5e
                         pop                ebp                                // 0x0070ea0b    5d
                         pop                ebx                                // 0x0070ea0c    5b
                         add                esp, 0x0000041c                    // 0x0070ea0d    81c41c040000
                         ret                                                   // 0x0070ea13    c3
                         mov                edx, dword ptr [esi]               // 0x0070ea14    8b16
                         mov.s              ecx, esi                           // 0x0070ea16    8bce
                         call               dword ptr [edx + 0x34]             // 0x0070ea18    ff5234
                         test               eax, eax                           // 0x0070ea1b    85c0
                         {disp8} je         _jmp_addr_0x0070ea29               // 0x0070ea1d    740a
                         push               0x00c20a44                         // 0x0070ea1f    68440ac200
                         {disp32} jmp       _jmp_addr_0x0070f28c               // 0x0070ea24    e963080000
_jmp_addr_0x0070ea29:    mov                edi, dword ptr [esi]               // 0x0070ea29    8b3e
                         push               ebx                                // 0x0070ea2b    53
                         mov.s              ecx, esi                           // 0x0070ea2c    8bce
                         call               dword ptr [edi + 0x138]            // 0x0070ea2e    ff9738010000
                         push               ecx                                // 0x0070ea34    51
                         mov.s              ecx, esi                           // 0x0070ea35    8bce
                         fstp               dword ptr [esp]                    // 0x0070ea37    d91c24
                         call               dword ptr [edi + 0x134]            // 0x0070ea3a    ff9734010000
                         {disp32} jmp       _jmp_addr_0x0070f294               // 0x0070ea40    e94f080000
                         mov                eax, dword ptr [esi]               // 0x0070ea45    8b06
                         mov.s              ecx, esi                           // 0x0070ea47    8bce
                         call               dword ptr [eax + 0x34]             // 0x0070ea49    ff5034
                         test               eax, eax                           // 0x0070ea4c    85c0
                         {disp8} je         _jmp_addr_0x0070ea5a               // 0x0070ea4e    740a
                         push               0x00c20a44                         // 0x0070ea50    68440ac200
                         {disp32} jmp       _jmp_addr_0x0070f28c               // 0x0070ea55    e932080000
_jmp_addr_0x0070ea5a:    mov                edi, dword ptr [esi]               // 0x0070ea5a    8b3e
                         push               ebx                                // 0x0070ea5c    53
                         mov.s              ecx, esi                           // 0x0070ea5d    8bce
                         call               dword ptr [edi + 0x140]            // 0x0070ea5f    ff9740010000
                         push               ecx                                // 0x0070ea65    51
                         mov.s              ecx, esi                           // 0x0070ea66    8bce
                         fstp               dword ptr [esp]                    // 0x0070ea68    d91c24
                         call               dword ptr [edi + 0x134]            // 0x0070ea6b    ff9734010000
                         {disp32} jmp       _jmp_addr_0x0070f294               // 0x0070ea71    e91e080000
                         {disp32} mov       eax, dword ptr [esp + 0x00000438]  // 0x0070ea76    8b842438040000
                         mov                edx, dword ptr [esi]               // 0x0070ea7d    8b16
                         push               eax                                // 0x0070ea7f    50
                         mov.s              ecx, esi                           // 0x0070ea80    8bce
                         call               dword ptr [edx + 0x124]            // 0x0070ea82    ff9224010000
                         pop                edi                                // 0x0070ea88    5f
                         pop                esi                                // 0x0070ea89    5e
                         pop                ebp                                // 0x0070ea8a    5d
                         pop                ebx                                // 0x0070ea8b    5b
                         add                esp, 0x0000041c                    // 0x0070ea8c    81c41c040000
                         ret                                                   // 0x0070ea92    c3
                         push               ebx                                // 0x0070ea93    53
                         push               0x00be6758                         // 0x0070ea94    685867be00
                         push               0x009c7f30                         // 0x0070ea99    68307f9c00
                         push               ebx                                // 0x0070ea9e    53
                         push               esi                                // 0x0070ea9f    56
                         call               ___RTDynamicCast                   // 0x0070eaa0    e8746f0b00
                         add                esp, 0x14                          // 0x0070eaa5    83c414
                         cmp.s              eax, ebx                           // 0x0070eaa8    3bc3
                         {disp8} je         _jmp_addr_0x0070eac6               // 0x0070eaaa    741a
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070eaac    8b8c2438040000
                         push               ecx                                // 0x0070eab3    51
                         mov.s              ecx, eax                           // 0x0070eab4    8bc8
                         call               _jmp_addr_0x006da6d0               // 0x0070eab6    e815bcfcff
                         pop                edi                                // 0x0070eabb    5f
                         pop                esi                                // 0x0070eabc    5e
                         pop                ebp                                // 0x0070eabd    5d
                         pop                ebx                                // 0x0070eabe    5b
                         add                esp, 0x0000041c                    // 0x0070eabf    81c41c040000
                         ret                                                   // 0x0070eac5    c3
_jmp_addr_0x0070eac6:    mov                edx, dword ptr [esi]               // 0x0070eac6    8b16
                         mov.s              ecx, esi                           // 0x0070eac8    8bce
                         call               dword ptr [edx + 0x1e4]            // 0x0070eaca    ff92e4010000
                         test               eax, eax                           // 0x0070ead0    85c0
                         mov                eax, dword ptr [esi]               // 0x0070ead2    8b06
                         {disp8} je         _jmp_addr_0x0070eb2d               // 0x0070ead4    7457
                         mov.s              ecx, esi                           // 0x0070ead6    8bce
                         call               dword ptr [eax + 0x48]             // 0x0070ead8    ff5048
                         cmp.s              eax, ebx                           // 0x0070eadb    3bc3
                         {disp8} je         _jmp_addr_0x0070eb06               // 0x0070eadd    7427
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070eadf    8b8c2438040000
                         push               ecx                                // 0x0070eae6    51
                         mov.s              ecx, eax                           // 0x0070eae7    8bc8
                         call               ?SetWorshipPercentage@Town@@QAEXM@Z// 0x0070eae9    e872d50200
                         mov.s              ecx, esi                           // 0x0070eaee    8bce
                         call               ?GetWorshipSpeed@TotemStatue@@QAEMXZ// 0x0070eaf0    e86b970200
                         {disp32} fstp      dword ptr [esi + 0x00000088]       // 0x0070eaf5    d99e88000000
                         pop                edi                                // 0x0070eafb    5f
                         pop                esi                                // 0x0070eafc    5e
                         pop                ebp                                // 0x0070eafd    5d
                         pop                ebx                                // 0x0070eafe    5b
                         add                esp, 0x0000041c                    // 0x0070eaff    81c41c040000
                         ret                                                   // 0x0070eb05    c3
_jmp_addr_0x0070eb06:    {disp32} mov       edx, dword ptr [esp + 0x00000438]  // 0x0070eb06    8b942438040000
                         push               edx                                // 0x0070eb0d    52
                         mov.s              ecx, esi                           // 0x0070eb0e    8bce
                         call               @SetWorshipPercentage__11TotemStatueFf@12               // 0x0070eb10    e85b970200
                         mov.s              ecx, esi                           // 0x0070eb15    8bce
                         call               ?GetWorshipSpeed@TotemStatue@@QAEMXZ// 0x0070eb17    e844970200
                         {disp32} fstp      dword ptr [esi + 0x00000088]       // 0x0070eb1c    d99e88000000
                         pop                edi                                // 0x0070eb22    5f
                         pop                esi                                // 0x0070eb23    5e
                         pop                ebp                                // 0x0070eb24    5d
                         pop                ebx                                // 0x0070eb25    5b
                         add                esp, 0x0000041c                    // 0x0070eb26    81c41c040000
                         ret                                                   // 0x0070eb2c    c3
_jmp_addr_0x0070eb2d:    {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070eb2d    8b8c2438040000
                         push               ecx                                // 0x0070eb34    51
                         mov.s              ecx, esi                           // 0x0070eb35    8bce
                         call               dword ptr [eax + 0x144]            // 0x0070eb37    ff9044010000
                         pop                edi                                // 0x0070eb3d    5f
                         pop                esi                                // 0x0070eb3e    5e
                         pop                ebp                                // 0x0070eb3f    5d
                         pop                ebx                                // 0x0070eb40    5b
                         add                esp, 0x0000041c                    // 0x0070eb41    81c41c040000
                         ret                                                   // 0x0070eb47    c3
                         {disp32} mov       eax, dword ptr [esp + 0x00000438]  // 0x0070eb48    8b842438040000
                         mov                edx, dword ptr [esi]               // 0x0070eb4f    8b16
                         push               eax                                // 0x0070eb51    50
                         mov.s              ecx, esi                           // 0x0070eb52    8bce
                         call               dword ptr [edx + 0x148]            // 0x0070eb54    ff9248010000
                         pop                edi                                // 0x0070eb5a    5f
                         pop                esi                                // 0x0070eb5b    5e
                         pop                ebp                                // 0x0070eb5c    5d
                         pop                ebx                                // 0x0070eb5d    5b
                         add                esp, 0x0000041c                    // 0x0070eb5e    81c41c040000
                         ret                                                   // 0x0070eb64    c3
                         push               ebx                                // 0x0070eb65    53
                         push               0x009c8de8                         // 0x0070eb66    68e88d9c00
                         push               0x009c7f30                         // 0x0070eb6b    68307f9c00
                         push               ebx                                // 0x0070eb70    53
                         push               esi                                // 0x0070eb71    56
                         call               ___RTDynamicCast                   // 0x0070eb72    e8a26e0b00
                         mov.s              esi, eax                           // 0x0070eb77    8bf0
                         add                esp, 0x14                          // 0x0070eb79    83c414
                         cmp.s              esi, ebx                           // 0x0070eb7c    3bf3
                         {disp32} je        _jmp_addr_0x0070f294               // 0x0070eb7e    0f8410070000
                         {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070eb84    d9842438040000
                         mov                edi, dword ptr [esi]               // 0x0070eb8b    8b3e
                         call               _jmp_addr_0x007a1400               // 0x0070eb8d    e86e280900
                         push               eax                                // 0x0070eb92    50
                         mov.s              ecx, esi                           // 0x0070eb93    8bce
                         call               dword ptr [edi + 0x8d4]            // 0x0070eb95    ff97d4080000
                         pop                edi                                // 0x0070eb9b    5f
                         pop                esi                                // 0x0070eb9c    5e
                         pop                ebp                                // 0x0070eb9d    5d
                         pop                ebx                                // 0x0070eb9e    5b
                         add                esp, 0x0000041c                    // 0x0070eb9f    81c41c040000
                         ret                                                   // 0x0070eba5    c3
                         cmp.s              edi, ebx                           // 0x0070eba6    3bfb
                         {disp8} je         _jmp_addr_0x0070ebc8               // 0x0070eba8    741e
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070ebaa    8b8c2438040000
                         push               ecx                                // 0x0070ebb1    51
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]  // 0x0070ebb2    8b8f60010000
                         call               _jmp_addr_0x004f0100               // 0x0070ebb8    e84315deff
                         pop                edi                                // 0x0070ebbd    5f
                         pop                esi                                // 0x0070ebbe    5e
                         pop                ebp                                // 0x0070ebbf    5d
                         pop                ebx                                // 0x0070ebc0    5b
                         add                esp, 0x0000041c                    // 0x0070ebc1    81c41c040000
                         ret                                                   // 0x0070ebc7    c3
_jmp_addr_0x0070ebc8:    mov                edx, dword ptr [esi]               // 0x0070ebc8    8b16
                         mov.s              ecx, esi                           // 0x0070ebca    8bce
                         call               dword ptr [edx + 0xac]             // 0x0070ebcc    ff92ac000000
                         cmp.s              eax, ebx                           // 0x0070ebd2    3bc3
                         {disp8} je         _jmp_addr_0x0070ebeb               // 0x0070ebd4    7415
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070ebd6    8b8c2438040000
                         pop                edi                                // 0x0070ebdd    5f
                         pop                esi                                // 0x0070ebde    5e
                         pop                ebp                                // 0x0070ebdf    5d
                         {disp8} mov        dword ptr [eax + 0x6c], ecx        // 0x0070ebe0    89486c
                         pop                ebx                                // 0x0070ebe3    5b
                         add                esp, 0x0000041c                    // 0x0070ebe4    81c41c040000
                         ret                                                   // 0x0070ebea    c3
_jmp_addr_0x0070ebeb:    mov                edx, dword ptr [esi]               // 0x0070ebeb    8b16
                         mov.s              ecx, esi                           // 0x0070ebed    8bce
                         call               dword ptr [edx + 0x4c4]            // 0x0070ebef    ff92c4040000
                         cmp.s              eax, ebx                           // 0x0070ebf5    3bc3
                         {disp8} je         _jmp_addr_0x0070ec11               // 0x0070ebf7    7418
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070ebf9    8b8c2438040000
                         pop                edi                                // 0x0070ec00    5f
                         pop                esi                                // 0x0070ec01    5e
                         pop                ebp                                // 0x0070ec02    5d
                         {disp32} mov       dword ptr [eax + 0x00000088], ecx  // 0x0070ec03    898888000000
                         pop                ebx                                // 0x0070ec09    5b
                         add                esp, 0x0000041c                    // 0x0070ec0a    81c41c040000
                         ret                                                   // 0x0070ec10    c3
_jmp_addr_0x0070ec11:    mov                edx, dword ptr [esi]               // 0x0070ec11    8b16
                         mov.s              ecx, esi                           // 0x0070ec13    8bce
                         call               dword ptr [edx + 0x4ac]            // 0x0070ec15    ff92ac040000
                         test               eax, eax                           // 0x0070ec1b    85c0
                         {disp8} je         _jmp_addr_0x0070ec39               // 0x0070ec1d    741a
                         {disp32} mov       eax, dword ptr [esp + 0x00000438]  // 0x0070ec1f    8b842438040000
                         push               eax                                // 0x0070ec26    50
                         mov.s              ecx, esi                           // 0x0070ec27    8bce
                         call               _jmp_addr_0x0063e3e0               // 0x0070ec29    e8b2f7f2ff
                         pop                edi                                // 0x0070ec2e    5f
                         pop                esi                                // 0x0070ec2f    5e
                         pop                ebp                                // 0x0070ec30    5d
                         pop                ebx                                // 0x0070ec31    5b
                         add                esp, 0x0000041c                    // 0x0070ec32    81c41c040000
                         ret                                                   // 0x0070ec38    c3
_jmp_addr_0x0070ec39:    mov                edx, dword ptr [esi]               // 0x0070ec39    8b16
                         mov.s              ecx, esi                           // 0x0070ec3b    8bce
                         call               dword ptr [edx + 0x400]            // 0x0070ec3d    ff9200040000
                         test               eax, eax                           // 0x0070ec43    85c0
                         {disp8} je         _jmp_addr_0x0070ec5f               // 0x0070ec45    7418
                         {disp32} mov       eax, dword ptr [esp + 0x00000438]  // 0x0070ec47    8b842438040000
                         pop                edi                                // 0x0070ec4e    5f
                         {disp32} mov       dword ptr [esi + 0x000000e4], eax  // 0x0070ec4f    8986e4000000
                         pop                esi                                // 0x0070ec55    5e
                         pop                ebp                                // 0x0070ec56    5d
                         pop                ebx                                // 0x0070ec57    5b
                         add                esp, 0x0000041c                    // 0x0070ec58    81c41c040000
                         ret                                                   // 0x0070ec5e    c3
_jmp_addr_0x0070ec5f:    push               0x00c20a28                         // 0x0070ec5f    68280ac200
                         {disp32} jmp       _jmp_addr_0x0070f28c               // 0x0070ec64    e923060000
                         push               ebx                                // 0x0070ec69    53
                         push               0x009c7f80                         // 0x0070ec6a    68807f9c00
                         push               0x009c7f30                         // 0x0070ec6f    68307f9c00
                         push               ebx                                // 0x0070ec74    53
                         push               esi                                // 0x0070ec75    56
                         call               ___RTDynamicCast                   // 0x0070ec76    e89e6d0b00
                         mov.s              esi, eax                           // 0x0070ec7b    8bf0
                         add                esp, 0x14                          // 0x0070ec7d    83c414
                         cmp.s              esi, ebx                           // 0x0070ec80    3bf3
                         {disp32} je        _jmp_addr_0x0070f294               // 0x0070ec82    0f840c060000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070ec88    8b8c2438040000
                         push               ecx                                // 0x0070ec8f    51
                         mov.s              ecx, esi                           // 0x0070ec90    8bce
                         call               _jmp_addr_0x0052edd0               // 0x0070ec92    e83901e2ff
                         mov                edx, dword ptr [esi]               // 0x0070ec97    8b16
                         mov.s              ecx, esi                           // 0x0070ec99    8bce
                         call               dword ptr [edx + 0x48]             // 0x0070ec9b    ff5248
                         mov.s              edi, eax                           // 0x0070ec9e    8bf8
                         cmp.s              edi, ebx                           // 0x0070eca0    3bfb
                         {disp32} je        _jmp_addr_0x0070f2ae               // 0x0070eca2    0f8406060000
                         push               esi                                // 0x0070eca8    56
                         mov.s              ecx, edi                           // 0x0070eca9    8bcf
                         call               _jmp_addr_0x0073cd20               // 0x0070ecab    e870e00200
                         cmp                eax, 0x01                          // 0x0070ecb0    83f801
                         {disp32} je        _jmp_addr_0x0070f2ae               // 0x0070ecb3    0f84f5050000
                         {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070ecb9    d9842438040000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]   // 0x0070ecc0    d81d90a38a00
                         fnstsw             ax                                 // 0x0070ecc6    dfe0
                         test               ah, 0x01                           // 0x0070ecc8    f6c401
                         {disp32} je        _jmp_addr_0x0070f2ae               // 0x0070eccb    0f84dd050000
                         push               esi                                // 0x0070ecd1    56
                         mov.s              ecx, edi                           // 0x0070ecd2    8bcf
                         call               _jmp_addr_0x0073b8e0               // 0x0070ecd4    e807cc0200
                         pop                edi                                // 0x0070ecd9    5f
                         pop                esi                                // 0x0070ecda    5e
                         pop                ebp                                // 0x0070ecdb    5d
                         pop                ebx                                // 0x0070ecdc    5b
                         add                esp, 0x0000041c                    // 0x0070ecdd    81c41c040000
                         ret                                                   // 0x0070ece3    c3
                         cmp.s              edi, ebx                           // 0x0070ece4    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070ece6    0f849b050000
                         {disp32} mov       eax, dword ptr [esp + 0x00000438]  // 0x0070ecec    8b842438040000
                         {disp32} mov       dword ptr [edi + 0x00000378], eax  // 0x0070ecf3    898778030000
                         pop                edi                                // 0x0070ecf9    5f
                         pop                esi                                // 0x0070ecfa    5e
                         pop                ebp                                // 0x0070ecfb    5d
                         pop                ebx                                // 0x0070ecfc    5b
                         add                esp, 0x0000041c                    // 0x0070ecfd    81c41c040000
                         ret                                                   // 0x0070ed03    c3
                         cmp.s              edi, ebx                           // 0x0070ed04    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070ed06    0f847b050000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070ed0c    8b8c2438040000
                         {disp32} mov       dword ptr [edi + 0x00000374], ecx  // 0x0070ed13    898f74030000
                         pop                edi                                // 0x0070ed19    5f
                         pop                esi                                // 0x0070ed1a    5e
                         pop                ebp                                // 0x0070ed1b    5d
                         pop                ebx                                // 0x0070ed1c    5b
                         add                esp, 0x0000041c                    // 0x0070ed1d    81c41c040000
                         ret                                                   // 0x0070ed23    c3
                         cmp.s              edi, ebx                           // 0x0070ed24    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070ed26    0f845b050000
                         {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070ed2c    d9842438040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]        // 0x0070ed33    d81d98a38a00
                         fnstsw             ax                                 // 0x0070ed39    dfe0
                         test               ah, 0x40                           // 0x0070ed3b    f6c440
                         {disp8} jne        _jmp_addr_0x0070ed45               // 0x0070ed3e    7505
                         mov                ebx, 0x00000001                    // 0x0070ed40    bb01000000
_jmp_addr_0x0070ed45:    {disp32} mov       byte ptr [edi + 0x0000037c], bl    // 0x0070ed45    889f7c030000
                         pop                edi                                // 0x0070ed4b    5f
                         pop                esi                                // 0x0070ed4c    5e
                         pop                ebp                                // 0x0070ed4d    5d
                         pop                ebx                                // 0x0070ed4e    5b
                         add                esp, 0x0000041c                    // 0x0070ed4f    81c41c040000
                         ret                                                   // 0x0070ed55    c3
                         cmp.s              edi, ebx                           // 0x0070ed56    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070ed58    0f8429050000
                         {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070ed5e    d9842438040000
                         {disp32} mov       edi, dword ptr [edi + 0x00000160]  // 0x0070ed65    8bbf60010000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]   // 0x0070ed6b    d81d78b68a00
                         {disp32} mov       edx, dword ptr [esp + 0x00000438]  // 0x0070ed71    8b942438040000
                         {disp8} mov        dword ptr [edi + 0x10], edx        // 0x0070ed78    895710
                         fnstsw             ax                                 // 0x0070ed7b    dfe0
                         test               ah, 0x01                           // 0x0070ed7d    f6c401
                         {disp8} je         _jmp_addr_0x0070ed94               // 0x0070ed80    7412
                         {disp8} mov        dword ptr [edi + 0x10], 0xbf800000 // 0x0070ed82    c74710000080bf
                         pop                edi                                // 0x0070ed89    5f
                         pop                esi                                // 0x0070ed8a    5e
                         pop                ebp                                // 0x0070ed8b    5d
                         pop                ebx                                // 0x0070ed8c    5b
                         add                esp, 0x0000041c                    // 0x0070ed8d    81c41c040000
                         ret                                                   // 0x0070ed93    c3
_jmp_addr_0x0070ed94:    {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070ed94    d9842438040000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]   // 0x0070ed9b    d81d90a38a00
                         fnstsw             ax                                 // 0x0070eda1    dfe0
                         test               ah, 0x41                           // 0x0070eda3    f6c441
                         {disp32} jne       _jmp_addr_0x0070f2ae               // 0x0070eda6    0f8502050000
                         {disp8} mov        dword ptr [edi + 0x10], 0x3f800000 // 0x0070edac    c747100000803f
                         pop                edi                                // 0x0070edb3    5f
                         pop                esi                                // 0x0070edb4    5e
                         pop                ebp                                // 0x0070edb5    5d
                         pop                ebx                                // 0x0070edb6    5b
                         add                esp, 0x0000041c                    // 0x0070edb7    81c41c040000
                         ret                                                   // 0x0070edbd    c3
                         cmp.s              edi, ebx                           // 0x0070edbe    3bfb
                         {disp8} jne        _jmp_addr_0x0070edda               // 0x0070edc0    7518
                         push               0x00c20964                         // 0x0070edc2    686409c200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x0070edc7    e8e474feff
                         add                esp, 0x04                          // 0x0070edcc    83c404
                         pop                edi                                // 0x0070edcf    5f
                         pop                esi                                // 0x0070edd0    5e
                         pop                ebp                                // 0x0070edd1    5d
                         pop                ebx                                // 0x0070edd2    5b
                         add                esp, 0x0000041c                    // 0x0070edd3    81c41c040000
                         ret                                                   // 0x0070edd9    c3
_jmp_addr_0x0070edda:    {disp32} mov       eax, dword ptr [edi + 0x00000160]  // 0x0070edda    8b8760010000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070ede0    8b8c2438040000
                         pop                edi                                // 0x0070ede7    5f
                         pop                esi                                // 0x0070ede8    5e
                         pop                ebp                                // 0x0070ede9    5d
                         {disp8} mov        dword ptr [eax + 0x14], ecx        // 0x0070edea    894814
                         pop                ebx                                // 0x0070eded    5b
                         add                esp, 0x0000041c                    // 0x0070edee    81c41c040000
                         ret                                                   // 0x0070edf4    c3
                         cmp.s              edi, ebx                           // 0x0070edf5    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070edf7    0f848a040000
                         {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070edfd    d9842438040000
                         {disp32} mov       edi, dword ptr [edi + 0x00000160]  // 0x0070ee04    8bbf60010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]        // 0x0070ee0a    d81d98a38a00
                         {disp32} mov       edx, dword ptr [esp + 0x00000438]  // 0x0070ee10    8b942438040000
                         {disp8} mov        dword ptr [edi + 0x1c], edx        // 0x0070ee17    89571c
                         fnstsw             ax                                 // 0x0070ee1a    dfe0
                         test               ah, 0x01                           // 0x0070ee1c    f6c401
                         {disp8} je         _jmp_addr_0x0070ee2f               // 0x0070ee1f    740e
                         {disp8} mov        dword ptr [edi + 0x1c], ebx        // 0x0070ee21    895f1c
                         pop                edi                                // 0x0070ee24    5f
                         pop                esi                                // 0x0070ee25    5e
                         pop                ebp                                // 0x0070ee26    5d
                         pop                ebx                                // 0x0070ee27    5b
                         add                esp, 0x0000041c                    // 0x0070ee28    81c41c040000
                         ret                                                   // 0x0070ee2e    c3
_jmp_addr_0x0070ee2f:    {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070ee2f    d9842438040000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]   // 0x0070ee36    d81d90a38a00
                         fnstsw             ax                                 // 0x0070ee3c    dfe0
                         test               ah, 0x41                           // 0x0070ee3e    f6c441
                         {disp32} jne       _jmp_addr_0x0070f2ae               // 0x0070ee41    0f8567040000
                         {disp8} mov        dword ptr [edi + 0x1c], 0x3f800000 // 0x0070ee47    c7471c0000803f
                         pop                edi                                // 0x0070ee4e    5f
                         pop                esi                                // 0x0070ee4f    5e
                         pop                ebp                                // 0x0070ee50    5d
                         pop                ebx                                // 0x0070ee51    5b
                         add                esp, 0x0000041c                    // 0x0070ee52    81c41c040000
                         ret                                                   // 0x0070ee58    c3
                         cmp.s              edi, ebx                           // 0x0070ee59    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070ee5b    0f8426040000
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]  // 0x0070ee61    8b8760010000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070ee67    8b8c2438040000
                         pop                edi                                // 0x0070ee6e    5f
                         pop                esi                                // 0x0070ee6f    5e
                         pop                ebp                                // 0x0070ee70    5d
                         {disp8} mov        dword ptr [eax + 0x20], ecx        // 0x0070ee71    894820
                         pop                ebx                                // 0x0070ee74    5b
                         add                esp, 0x0000041c                    // 0x0070ee75    81c41c040000
                         ret                                                   // 0x0070ee7b    c3
                         cmp.s              edi, ebx                           // 0x0070ee7c    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070ee7e    0f8403040000
                         {disp32} mov       edx, dword ptr [edi + 0x00000160]  // 0x0070ee84    8b9760010000
                         {disp32} mov       eax, dword ptr [esp + 0x00000438]  // 0x0070ee8a    8b842438040000
                         pop                edi                                // 0x0070ee91    5f
                         pop                esi                                // 0x0070ee92    5e
                         pop                ebp                                // 0x0070ee93    5d
                         {disp8} mov        dword ptr [edx + 0x2c], eax        // 0x0070ee94    89422c
                         pop                ebx                                // 0x0070ee97    5b
                         add                esp, 0x0000041c                    // 0x0070ee98    81c41c040000
                         ret                                                   // 0x0070ee9e    c3
                         cmp.s              edi, ebx                           // 0x0070ee9f    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070eea1    0f84e0030000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]  // 0x0070eea7    8b8f60010000
                         {disp32} mov       edx, dword ptr [esp + 0x00000438]  // 0x0070eead    8b942438040000
                         pop                edi                                // 0x0070eeb4    5f
                         pop                esi                                // 0x0070eeb5    5e
                         pop                ebp                                // 0x0070eeb6    5d
                         {disp8} mov        dword ptr [ecx + 0x30], edx        // 0x0070eeb7    895130
                         pop                ebx                                // 0x0070eeba    5b
                         add                esp, 0x0000041c                    // 0x0070eebb    81c41c040000
                         ret                                                   // 0x0070eec1    c3
                         cmp.s              edi, ebx                           // 0x0070eec2    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070eec4    0f84bd030000
                         {disp32} mov       eax, dword ptr [edi + 0x00000160]  // 0x0070eeca    8b8760010000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070eed0    8b8c2438040000
                         pop                edi                                // 0x0070eed7    5f
                         pop                esi                                // 0x0070eed8    5e
                         pop                ebp                                // 0x0070eed9    5d
                         {disp8} mov        dword ptr [eax + 0x34], ecx        // 0x0070eeda    894834
                         pop                ebx                                // 0x0070eedd    5b
                         add                esp, 0x0000041c                    // 0x0070eede    81c41c040000
                         ret                                                   // 0x0070eee4    c3
                         cmp.s              edi, ebx                           // 0x0070eee5    3bfb
                         {disp32} je        _jmp_addr_0x0070f287               // 0x0070eee7    0f849a030000
                         mov.s              ecx, edi                           // 0x0070eeed    8bcf
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ      // 0x0070eeef    e85c89d6ff
                         {disp32} mov       edx, dword ptr [esp + 0x00000438]  // 0x0070eef4    8b942438040000
                         pop                edi                                // 0x0070eefb    5f
                         pop                esi                                // 0x0070eefc    5e
                         pop                ebp                                // 0x0070eefd    5d
                         {disp32} mov       dword ptr [eax + 0x00004aa8], edx  // 0x0070eefe    8990a84a0000
                         pop                ebx                                // 0x0070ef04    5b
                         add                esp, 0x0000041c                    // 0x0070ef05    81c41c040000
                         ret                                                   // 0x0070ef0b    c3
                         cmp.s              edi, ebx                           // 0x0070ef0c    3bfb
                         {disp8} je         _jmp_addr_0x0070ef40               // 0x0070ef0e    7430
                         {disp32} mov       eax, dword ptr [edi + 0x00000168]  // 0x0070ef10    8b8768010000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070ef16    8b8c2438040000
                         {disp8} mov        dword ptr [eax + 0x08], ecx        // 0x0070ef1d    894808
                         mov.s              ecx, edi                           // 0x0070ef20    8bcf
                         call               _jmp_addr_0x00477210               // 0x0070ef22    e8e982d6ff
                         {disp32} mov       edx, dword ptr [edi + 0x00000160]  // 0x0070ef27    8b9760010000
                         {disp8} mov        ecx, dword ptr [edx + 0x58]        // 0x0070ef2d    8b4a58
                         call               _jmp_addr_0x00618c40               // 0x0070ef30    e80b9df0ff
                         pop                edi                                // 0x0070ef35    5f
                         pop                esi                                // 0x0070ef36    5e
                         pop                ebp                                // 0x0070ef37    5d
                         pop                ebx                                // 0x0070ef38    5b
                         add                esp, 0x0000041c                    // 0x0070ef39    81c41c040000
                         ret                                                   // 0x0070ef3f    c3
_jmp_addr_0x0070ef40:    mov                eax, dword ptr [esi]               // 0x0070ef40    8b06
                         mov.s              ecx, esi                           // 0x0070ef42    8bce
                         call               dword ptr [eax + 0x3f4]            // 0x0070ef44    ff90f4030000
                         test               eax, eax                           // 0x0070ef4a    85c0
                         {disp8} je         _jmp_addr_0x0070ef63               // 0x0070ef4c    7415
                         {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070ef4e    8b8c2438040000
                         pop                edi                                // 0x0070ef55    5f
                         {disp8} mov        dword ptr [esi + 0x78], ecx        // 0x0070ef56    894e78
                         pop                esi                                // 0x0070ef59    5e
                         pop                ebp                                // 0x0070ef5a    5d
                         pop                ebx                                // 0x0070ef5b    5b
                         add                esp, 0x0000041c                    // 0x0070ef5c    81c41c040000
                         ret                                                   // 0x0070ef62    c3
_jmp_addr_0x0070ef63:    push               0x00c20a0c                         // 0x0070ef63    680c0ac200
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x0070ef68    e84373feff
                         add                esp, 0x04                          // 0x0070ef6d    83c404
                         pop                edi                                // 0x0070ef70    5f
                         pop                esi                                // 0x0070ef71    5e
                         pop                ebp                                // 0x0070ef72    5d
                         pop                ebx                                // 0x0070ef73    5b
                         add                esp, 0x0000041c                    // 0x0070ef74    81c41c040000
                         ret                                                   // 0x0070ef7a    c3
                         {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070ef7b    d9842438040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]   // 0x0070ef82    d80d00c48a00
                         call               _jmp_addr_0x007a1400               // 0x0070ef88    e873240900
                         pop                edi                                // 0x0070ef8d    5f
                         {disp8} mov        dword ptr [esi + 0x14], eax        // 0x0070ef8e    894614
                         pop                esi                                // 0x0070ef91    5e
                         pop                ebp                                // 0x0070ef92    5d
                         pop                ebx                                // 0x0070ef93    5b
                         add                esp, 0x0000041c                    // 0x0070ef94    81c41c040000
                         ret                                                   // 0x0070ef9a    c3
                         mov                edx, dword ptr [esi]               // 0x0070ef9b    8b16
                         mov.s              ecx, esi                           // 0x0070ef9d    8bce
                         call               dword ptr [edx + 0x48c]            // 0x0070ef9f    ff928c040000
                         test               eax, eax                           // 0x0070efa5    85c0
                         {disp8} je         _jmp_addr_0x0070efb8               // 0x0070efa7    740f
                         {disp32} mov       eax, dword ptr [esp + 0x00000438]  // 0x0070efa9    8b842438040000
                         push               eax                                // 0x0070efb0    50
                         mov.s              ecx, esi                           // 0x0070efb1    8bce
                         call               _jmp_addr_0x00709c40               // 0x0070efb3    e888acffff
_jmp_addr_0x0070efb8:    {disp32} mov       ecx, dword ptr [esp + 0x00000438]  // 0x0070efb8    8b8c2438040000
                         {disp8} mov        dword ptr [esi + 0x1c], ecx        // 0x0070efbf    894e1c
                         mov                edx, dword ptr [esi]               // 0x0070efc2    8b16
                         mov.s              ecx, esi                           // 0x0070efc4    8bce
                         call               dword ptr [edx + 0x460]            // 0x0070efc6    ff9260040000
                         test               eax, eax                           // 0x0070efcc    85c0
                         {disp32} je        _jmp_addr_0x0070f2ae               // 0x0070efce    0f84da020000
                         cmp                dword ptr [esi + 0x40], ebx        // 0x0070efd4    395e40
                         {disp32} je        _jmp_addr_0x0070f2ae               // 0x0070efd7    0f84d1020000
                         mov                eax, dword ptr [esi]               // 0x0070efdd    8b06
                         mov.s              ecx, esi                           // 0x0070efdf    8bce
                         call               dword ptr [eax + 0x120]            // 0x0070efe1    ff9020010000
                         {disp8} fstp       dword ptr [esp + 0x14]             // 0x0070efe7    d95c2414
                         mov                edx, dword ptr [esi]               // 0x0070efeb    8b16
                         mov.s              ecx, esi                           // 0x0070efed    8bce
                         call               dword ptr [edx + 0x508]            // 0x0070efef    ff9208050000
                         {disp8} fstp       dword ptr [esp + 0x10]             // 0x0070eff5    d95c2410
                         {disp8} mov        eax, dword ptr [esi + 0x1c]        // 0x0070eff9    8b461c
                         {disp8} lea        edi, dword ptr [esi + 0x14]        // 0x0070effc    8d7e14
                         {disp8} mov        esi, dword ptr [esi + 0x40]        // 0x0070efff    8b7640
                         mov.s              ecx, edi                           // 0x0070f002    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], eax        // 0x0070f004    89442418
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z             // 0x0070f008    e883400f00
                         {disp8} fadd       dword ptr [esp + 0x18]             // 0x0070f00d    d8442418
                         fild               dword ptr [edi]                    // 0x0070f011    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]          // 0x0070f013    d80da4a38a00
                         {disp8} fild       dword ptr [edi + 0x04]             // 0x0070f019    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]          // 0x0070f01c    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]             // 0x0070f022    d95c2424
                         {disp8} fld        dword ptr [esp + 0x10]             // 0x0070f026    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]        // 0x0070f02a    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x14]             // 0x0070f030    d9442414
                         fnstsw             ax                                 // 0x0070f034    dfe0
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]   // 0x0070f036    d81d90a38a00
                         test               ah, 0x40                           // 0x0070f03c    f6c440
                         fnstsw             ax                                 // 0x0070f03f    dfe0
                         {disp32} jne       _jmp_addr_0x0070f1c5               // 0x0070f041    0f857e010000
                         test               ah, 0x40                           // 0x0070f047    f6c440
                         {disp32} jne       _jmp_addr_0x0070f113               // 0x0070f04a    0f85c3000000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]        // 0x0070f050    8b4c2414
                         {disp8} mov        dword ptr [esi + 0x40], ebx        // 0x0070f054    895e40
                         {disp8} mov        dword ptr [esi + 0x3c], ebx        // 0x0070f057    895e3c
                         {disp8} mov        dword ptr [esi + 0x38], ebx        // 0x0070f05a    895e38
                         {disp8} mov        dword ptr [esi + 0x30], ebx        // 0x0070f05d    895e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebx        // 0x0070f060    895e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebx        // 0x0070f063    895e28
                         {disp8} mov        dword ptr [esi + 0x20], ebx        // 0x0070f066    895e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebx        // 0x0070f069    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx        // 0x0070f06c    895e18
                         {disp8} mov        dword ptr [esi + 0x34], ecx        // 0x0070f06f    894e34
                         mov.s              eax, ecx                           // 0x0070f072    8bc1
                         {disp8} mov        dword ptr [esi + 0x14], eax        // 0x0070f074    894614
                         mov.s              edx, ecx                           // 0x0070f077    8bd1
                         {disp8} mov        dword ptr [esi + 0x24], edx        // 0x0070f079    895624
                         {disp8} fadd       dword ptr [esi + 0x38]             // 0x0070f07c    d84638
                         {disp8} mov        ecx, dword ptr [esp + 0x10]        // 0x0070f07f    8b4c2410
                         pop                edi                                // 0x0070f083    5f
                         {disp8} fstp       dword ptr [esi + 0x38]             // 0x0070f084    d95e38
                         {disp8} fadd       dword ptr [esi + 0x3c]             // 0x0070f087    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]             // 0x0070f08a    d95e3c
                         {disp8} fld        dword ptr [esp + 0x20]             // 0x0070f08d    d9442420
                         {disp8} fadd       dword ptr [esi + 0x40]             // 0x0070f091    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]             // 0x0070f094    d95e40
                         {disp8} fld        dword ptr [esp + 0x0c]             // 0x0070f097    d944240c
                         fcos                                                  // 0x0070f09b    d9ff
                         {disp8} fld        dword ptr [esp + 0x0c]             // 0x0070f09d    d944240c
                         fsin                                                  // 0x0070f0a1    d9fe
                         fld                st(0)                              // 0x0070f0a3    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]             // 0x0070f0a5    d84e14
                         fld                st(2)                              // 0x0070f0a8    d9c2
                         {disp8} fmul       dword ptr [esi + 0x14]             // 0x0070f0aa    d84e14
                         fld                st(2)                              // 0x0070f0ad    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]             // 0x0070f0af    d84e2c
                         faddp              st(1), st                          // 0x0070f0b2    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]             // 0x0070f0b4    d95e14
                         fld                st(2)                              // 0x0070f0b7    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]             // 0x0070f0b9    d84e2c
                         fsub               st, st(1)                          // 0x0070f0bc    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]             // 0x0070f0be    d95e2c
                         fstp               st(0)                              // 0x0070f0c1    ddd8
                         fld                st(0)                              // 0x0070f0c3    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]             // 0x0070f0c5    d84e18
                         fld                st(1)                              // 0x0070f0c8    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]             // 0x0070f0ca    d84e30
                         fld                st(3)                              // 0x0070f0cd    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]             // 0x0070f0cf    d84e18
                         faddp              st(1), st                          // 0x0070f0d2    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]             // 0x0070f0d4    d95e18
                         fld                st(2)                              // 0x0070f0d7    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]             // 0x0070f0d9    d84e30
                         fsub               st, st(1)                          // 0x0070f0dc    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]             // 0x0070f0de    d95e30
                         fstp               st(0)                              // 0x0070f0e1    ddd8
                         fld                st(0)                              // 0x0070f0e3    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]             // 0x0070f0e5    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x14]             // 0x0070f0e8    d95c2414
                         {disp8} fmul       dword ptr [esi + 0x34]             // 0x0070f0ec    d84e34
                         fld                st(1)                              // 0x0070f0ef    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]             // 0x0070f0f1    d84e1c
                         faddp              st(1), st                          // 0x0070f0f4    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]             // 0x0070f0f6    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]             // 0x0070f0f9    d84e34
                         {disp8} fsub       dword ptr [esp + 0x14]             // 0x0070f0fc    d8642414
                         {disp8} fstp       dword ptr [esi + 0x34]             // 0x0070f100    d95e34
                         {disp8} mov        dword ptr [esi + 0x44], eax        // 0x0070f103    894644
                         {disp8} mov        dword ptr [esi + 0x48], ecx        // 0x0070f106    894e48
                         pop                esi                                // 0x0070f109    5e
                         pop                ebp                                // 0x0070f10a    5d
                         pop                ebx                                // 0x0070f10b    5b
                         add                esp, 0x0000041c                    // 0x0070f10c    81c41c040000
                         ret                                                   // 0x0070f112    c3
_jmp_addr_0x0070f113:    {disp8} fstp       dword ptr [esi + 0x38]             // 0x0070f113    d95e38
                         {disp8} mov        ecx, dword ptr [esp + 0x24]        // 0x0070f116    8b4c2424
                         {disp8} mov        dword ptr [esi + 0x30], ebx        // 0x0070f11a    895e30
                         {disp8} fstp       dword ptr [esi + 0x3c]             // 0x0070f11d    d95e3c
                         {disp8} mov        dword ptr [esi + 0x2c], ebx        // 0x0070f120    895e2c
                         {disp8} fld        dword ptr [esp + 0x10]             // 0x0070f123    d9442410
                         {disp8} mov        dword ptr [esi + 0x28], ebx        // 0x0070f127    895e28
                         fcos                                                  // 0x0070f12a    d9ff
                         {disp8} mov        dword ptr [esi + 0x20], ebx        // 0x0070f12c    895e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebx        // 0x0070f12f    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx        // 0x0070f132    895e18
                         {disp8} mov        dword ptr [esi + 0x40], ecx        // 0x0070f135    894e40
                         mov                eax, 0x3f800000                    // 0x0070f138    b80000803f
                         {disp8} mov        dword ptr [esi + 0x34], eax        // 0x0070f13d    894634
                         {disp8} mov        dword ptr [esi + 0x24], eax        // 0x0070f140    894624
                         {disp8} mov        dword ptr [esi + 0x14], eax        // 0x0070f143    894614
                         {disp8} mov        eax, dword ptr [esp + 0x14]        // 0x0070f146    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]        // 0x0070f14a    8b4c2410
                         pop                edi                                // 0x0070f14e    5f
                         {disp8} fld        dword ptr [esp + 0x0c]             // 0x0070f14f    d944240c
                         fsin                                                  // 0x0070f153    d9fe
                         fld                st(0)                              // 0x0070f155    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]             // 0x0070f157    d84e14
                         fld                st(1)                              // 0x0070f15a    d9c1
                         {disp8} fmul       dword ptr [esi + 0x2c]             // 0x0070f15c    d84e2c
                         fld                st(3)                              // 0x0070f15f    d9c3
                         {disp8} fmul       dword ptr [esi + 0x14]             // 0x0070f161    d84e14
                         faddp              st(1), st                          // 0x0070f164    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]             // 0x0070f166    d95e14
                         fld                st(2)                              // 0x0070f169    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]             // 0x0070f16b    d84e2c
                         fsub               st, st(1)                          // 0x0070f16e    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]             // 0x0070f170    d95e2c
                         fstp               st(0)                              // 0x0070f173    ddd8
                         fld                st(0)                              // 0x0070f175    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]             // 0x0070f177    d84e18
                         fld                st(1)                              // 0x0070f17a    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]             // 0x0070f17c    d84e30
                         fld                st(3)                              // 0x0070f17f    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]             // 0x0070f181    d84e18
                         faddp              st(1), st                          // 0x0070f184    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]             // 0x0070f186    d95e18
                         fld                st(2)                              // 0x0070f189    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]             // 0x0070f18b    d84e30
                         fsub               st, st(1)                          // 0x0070f18e    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]             // 0x0070f190    d95e30
                         fstp               st(0)                              // 0x0070f193    ddd8
                         fld                st(0)                              // 0x0070f195    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]             // 0x0070f197    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x14]             // 0x0070f19a    d95c2414
                         {disp8} fmul       dword ptr [esi + 0x34]             // 0x0070f19e    d84e34
                         fld                st(1)                              // 0x0070f1a1    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]             // 0x0070f1a3    d84e1c
                         faddp              st(1), st                          // 0x0070f1a6    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]             // 0x0070f1a8    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]             // 0x0070f1ab    d84e34
                         {disp8} fsub       dword ptr [esp + 0x14]             // 0x0070f1ae    d8642414
                         {disp8} fstp       dword ptr [esi + 0x34]             // 0x0070f1b2    d95e34
                         {disp8} mov        dword ptr [esi + 0x44], eax        // 0x0070f1b5    894644
                         {disp8} mov        dword ptr [esi + 0x48], ecx        // 0x0070f1b8    894e48
                         pop                esi                                // 0x0070f1bb    5e
                         pop                ebp                                // 0x0070f1bc    5d
                         pop                ebx                                // 0x0070f1bd    5b
                         add                esp, 0x0000041c                    // 0x0070f1be    81c41c040000
                         ret                                                   // 0x0070f1c4    c3
_jmp_addr_0x0070f1c5:    test               ah, 0x40                           // 0x0070f1c5    f6c440
                         {disp8} jne        _jmp_addr_0x0070f221               // 0x0070f1c8    7557
                         {disp8} mov        edx, dword ptr [esp + 0x14]        // 0x0070f1ca    8b542414
                         {disp8} mov        dword ptr [esi + 0x40], ebx        // 0x0070f1ce    895e40
                         {disp8} mov        dword ptr [esi + 0x3c], ebx        // 0x0070f1d1    895e3c
                         {disp8} mov        dword ptr [esi + 0x38], ebx        // 0x0070f1d4    895e38
                         {disp8} mov        dword ptr [esi + 0x30], ebx        // 0x0070f1d7    895e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebx        // 0x0070f1da    895e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebx        // 0x0070f1dd    895e28
                         {disp8} mov        dword ptr [esi + 0x20], ebx        // 0x0070f1e0    895e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebx        // 0x0070f1e3    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx        // 0x0070f1e6    895e18
                         {disp8} mov        dword ptr [esi + 0x34], edx        // 0x0070f1e9    895634
                         mov.s              eax, edx                           // 0x0070f1ec    8bc2
                         {disp8} mov        dword ptr [esi + 0x24], eax        // 0x0070f1ee    894624
                         mov.s              ecx, edx                           // 0x0070f1f1    8bca
                         {disp8} mov        dword ptr [esi + 0x14], ecx        // 0x0070f1f3    894e14
                         {disp8} fadd       dword ptr [esi + 0x38]             // 0x0070f1f6    d84638
                         {disp8} mov        ecx, dword ptr [esp + 0x10]        // 0x0070f1f9    8b4c2410
                         pop                edi                                // 0x0070f1fd    5f
                         {disp8} fstp       dword ptr [esi + 0x38]             // 0x0070f1fe    d95e38
                         {disp8} fadd       dword ptr [esi + 0x3c]             // 0x0070f201    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]             // 0x0070f204    d95e3c
                         {disp8} fld        dword ptr [esp + 0x20]             // 0x0070f207    d9442420
                         {disp8} fadd       dword ptr [esi + 0x40]             // 0x0070f20b    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]             // 0x0070f20e    d95e40
                         {disp8} mov        dword ptr [esi + 0x44], eax        // 0x0070f211    894644
                         {disp8} mov        dword ptr [esi + 0x48], ecx        // 0x0070f214    894e48
                         pop                esi                                // 0x0070f217    5e
                         pop                ebp                                // 0x0070f218    5d
                         pop                ebx                                // 0x0070f219    5b
                         add                esp, 0x0000041c                    // 0x0070f21a    81c41c040000
                         ret                                                   // 0x0070f220    c3
_jmp_addr_0x0070f221:    {disp8} mov        edx, dword ptr [esp + 0x24]        // 0x0070f221    8b542424
                         {disp8} fstp       dword ptr [esi + 0x38]             // 0x0070f225    d95e38
                         {disp8} mov        ecx, dword ptr [esp + 0x10]        // 0x0070f228    8b4c2410
                         mov                eax, 0x3f800000                    // 0x0070f22c    b80000803f
                         {disp8} fstp       dword ptr [esi + 0x3c]             // 0x0070f231    d95e3c
                         {disp8} mov        dword ptr [esi + 0x34], eax        // 0x0070f234    894634
                         {disp8} mov        dword ptr [esi + 0x24], eax        // 0x0070f237    894624
                         {disp8} mov        dword ptr [esi + 0x14], eax        // 0x0070f23a    894614
                         {disp8} mov        eax, dword ptr [esp + 0x14]        // 0x0070f23d    8b442414
                         {disp8} mov        dword ptr [esi + 0x30], ebx        // 0x0070f241    895e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebx        // 0x0070f244    895e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebx        // 0x0070f247    895e28
                         {disp8} mov        dword ptr [esi + 0x20], ebx        // 0x0070f24a    895e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebx        // 0x0070f24d    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx        // 0x0070f250    895e18
                         {disp8} mov        dword ptr [esi + 0x40], edx        // 0x0070f253    895640
                         pop                edi                                // 0x0070f256    5f
                         {disp8} mov        dword ptr [esi + 0x44], eax        // 0x0070f257    894644
                         {disp8} mov        dword ptr [esi + 0x48], ecx        // 0x0070f25a    894e48
                         pop                esi                                // 0x0070f25d    5e
                         pop                ebp                                // 0x0070f25e    5d
                         pop                ebx                                // 0x0070f25f    5b
                         add                esp, 0x0000041c                    // 0x0070f260    81c41c040000
                         ret                                                   // 0x0070f266    c3
                         {disp32} fld       dword ptr [esp + 0x00000438]       // 0x0070f267    d9842438040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]   // 0x0070f26e    d80d00c48a00
                         call               _jmp_addr_0x007a1400               // 0x0070f274    e887210900
                         pop                edi                                // 0x0070f279    5f
                         {disp8} mov        dword ptr [esi + 0x18], eax        // 0x0070f27a    894618
                         pop                esi                                // 0x0070f27d    5e
                         pop                ebp                                // 0x0070f27e    5d
                         pop                ebx                                // 0x0070f27f    5b
                         add                esp, 0x0000041c                    // 0x0070f280    81c41c040000
                         ret                                                   // 0x0070f286    c3
_jmp_addr_0x0070f287:    push               0x00c20964                         // 0x0070f287    686409c200
_jmp_addr_0x0070f28c:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x0070f28c    e81f70feff
                         add                esp, 0x04                          // 0x0070f291    83c404
_jmp_addr_0x0070f294:    push               ebp                                // 0x0070f294    55
                         {disp8} lea        edx, dword ptr [esp + 0x2c]        // 0x0070f295    8d54242c
                         push               0x00c209f4                         // 0x0070f299    68f409c200
                         push               edx                                // 0x0070f29e    52
                         call               dword ptr [rdata_bytes + 0x35c]    // 0x0070f29f    ff155c938a00
                         push               eax                                // 0x0070f2a5    50
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x0070f2a6    e80570feff
                         add                esp, 0x10                          // 0x0070f2ab    83c410
_jmp_addr_0x0070f2ae:    pop                edi                                // 0x0070f2ae    5f
                         pop                esi                                // 0x0070f2af    5e
                         pop                ebp                                // 0x0070f2b0    5d
                         pop                ebx                                // 0x0070f2b1    5b
                         add                esp, 0x0000041c                    // 0x0070f2b2    81c41c040000
                         ret                                                   // 0x0070f2b8    c3

// Snippet: db, [0x0070f2b9, 0x0070f2bc)
.byte 0x8d, 0x49, 0x00            // 0x0070f2b9

// Snippet: jmptbl, [0x0070f2bc, 0x0070f34c)
.byte 0x67, 0xe8, 0x70, 0x00      // 0x0070f2bc
.byte 0xa1, 0xe8, 0x70, 0x00      // 0x0070f2c0
.byte 0x2e, 0xe9, 0x70, 0x00      // 0x0070f2c4
.byte 0x8f, 0xe9, 0x70, 0x00      // 0x0070f2c8
.byte 0x94, 0xf2, 0x70, 0x00      // 0x0070f2cc
.byte 0x94, 0xf2, 0x70, 0x00      // 0x0070f2d0
.byte 0x94, 0xf2, 0x70, 0x00      // 0x0070f2d4
.byte 0x76, 0xea, 0x70, 0x00      // 0x0070f2d8
.byte 0x94, 0xf2, 0x70, 0x00      // 0x0070f2dc
.byte 0x94, 0xf2, 0x70, 0x00      // 0x0070f2e0
.byte 0xf6, 0xe9, 0x70, 0x00      // 0x0070f2e4
.byte 0x14, 0xea, 0x70, 0x00      // 0x0070f2e8
.byte 0x45, 0xea, 0x70, 0x00      // 0x0070f2ec
.byte 0x94, 0xf2, 0x70, 0x00      // 0x0070f2f0
.byte 0x94, 0xf2, 0x70, 0x00      // 0x0070f2f4
.byte 0x65, 0xeb, 0x70, 0x00      // 0x0070f2f8
.byte 0xa6, 0xeb, 0x70, 0x00      // 0x0070f2fc
.byte 0x0c, 0xef, 0x70, 0x00      // 0x0070f300
.byte 0x93, 0xea, 0x70, 0x00      // 0x0070f304
.byte 0x48, 0xeb, 0x70, 0x00      // 0x0070f308
.byte 0x94, 0xf2, 0x70, 0x00      // 0x0070f30c
.byte 0x69, 0xec, 0x70, 0x00      // 0x0070f310
.byte 0x7b, 0xef, 0x70, 0x00      // 0x0070f314
.byte 0x9b, 0xef, 0x70, 0x00      // 0x0070f318
.byte 0x67, 0xf2, 0x70, 0x00      // 0x0070f31c
.byte 0x56, 0xed, 0x70, 0x00      // 0x0070f320
.byte 0xbe, 0xed, 0x70, 0x00      // 0x0070f324
.byte 0xf5, 0xed, 0x70, 0x00      // 0x0070f328
.byte 0x59, 0xee, 0x70, 0x00      // 0x0070f32c
.byte 0x7c, 0xee, 0x70, 0x00      // 0x0070f330
.byte 0x9f, 0xee, 0x70, 0x00      // 0x0070f334
.byte 0xc2, 0xee, 0x70, 0x00      // 0x0070f338
.byte 0xe5, 0xee, 0x70, 0x00      // 0x0070f33c
.byte 0xe4, 0xec, 0x70, 0x00      // 0x0070f340
.byte 0x04, 0xed, 0x70, 0x00      // 0x0070f344
.byte 0x24, 0xed, 0x70, 0x00      // 0x0070f348

// Snippet: db, [0x0070f34c, 0x0070f350)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0070f34c

