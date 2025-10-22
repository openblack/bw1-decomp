.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.extern _jmp_addr_0x00441c50
.extern @__ct__16CameraModeFollowFP7GCameraP16GameThingWithPosfii@28
.extern @__ct__14CameraModeNew3FP7GCamera@12
.extern _jmp_addr_0x00470a00
.extern _jmp_addr_0x00470a60
.extern _jmp_addr_0x00470af0
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern _jmp_addr_0x00550c50
.extern _jmp_addr_0x00550dd0
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x005537f0
.extern _jmp_addr_0x00553e10
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00573840
.extern ?HelpQuery@HelpSystem@@QAEXXZ
.extern _jmp_addr_0x005cee20
.extern _jmp_addr_0x0064a7a0
.extern ___RTDynamicCast
.extern ___nw__FUl

.globl _jmp_addr_0x0063f710
.globl ?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z

start_0x0063f710_0x0063ff80:
// Snippet: asm, [0x0063f710, 0x0063ff0b)
_jmp_addr_0x0063f710:    push               esi                                            // 0x0063f710    56
                         push               edi                                            // 0x0063f711    57
                         mov.s              edi, ecx                                       // 0x0063f712    8bf9
                         cmp                dword ptr [edi + 0x00205a28], 0x01             // 0x0063f714    83bf285a200001
                         {disp32} je        _jmp_addr_0x0063f7c5                           // 0x0063f71b    0f84a4000000
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0063f721    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ       // 0x0063f727    e82461f1ff
                         mov                edx, dword ptr [eax]                           // 0x0063f72c    8b10
                         mov.s              ecx, eax                                       // 0x0063f72e    8bc8
                         call               dword ptr [edx + 0x40c]                        // 0x0063f730    ff920c040000
                         test               eax, eax                                       // 0x0063f736    85c0
                         {disp8} jne        _jmp_addr_0x0063f750                           // 0x0063f738    7516
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0063f73a    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ       // 0x0063f740    e80b61f1ff
                         mov.s              ecx, eax                                       // 0x0063f745    8bc8
                         call               _jmp_addr_0x005cee20                           // 0x0063f747    e8d4f6f8ff
                         test               eax, eax                                       // 0x0063f74c    85c0
                         {disp8} je         _jmp_addr_0x0063f7c5                           // 0x0063f74e    7475
_jmp_addr_0x0063f750:    {disp32} mov       al, byte ptr [data_bytes + 0x286ced]           // 0x0063f750    a0edccc400
                         test               al, al                                         // 0x0063f755    84c0
                         {disp8} jne        _jmp_addr_0x0063f7c5                           // 0x0063f757    756c
                         movzx              ax, byte ptr [data_bytes + 0x4bf478]           // 0x0063f759    660fb6057854e800
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0063f761    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250300]              // 0x0063f767    8b8900032500
                         xor.s              esi, esi                                       // 0x0063f76d    33f6
                         {disp32} mov       si, word ptr [rdata_bytes + 0xf861e]           // 0x0063f76f    668b351e169a00
                         or                 si, word ptr [0x9a161c]                        // 0x0063f776    660b351c169a00
                         push               0x6                                            // 0x0063f77d    6a06
                         not                esi                                            // 0x0063f77f    f7d6
                         and.s              esi, eax                                       // 0x0063f781    23f0
                         call               _jmp_addr_0x00470af0                           // 0x0063f783    e86813e3ff
                         test               eax, eax                                       // 0x0063f788    85c0
                         {disp8} je         _jmp_addr_0x0063f792                           // 0x0063f78a    7406
                         or                 esi, dword ptr [0x9a161e]                      // 0x0063f78c    0b351e169a00
_jmp_addr_0x0063f792:    {disp32} mov       edx, dword ptr [_game]                         // 0x0063f792    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250300]              // 0x0063f798    8b8a00032500
                         push               0xf                                            // 0x0063f79e    6a0f
                         call               _jmp_addr_0x00470af0                           // 0x0063f7a0    e84b13e3ff
                         test               eax, eax                                       // 0x0063f7a5    85c0
                         {disp8} je         _jmp_addr_0x0063f7af                           // 0x0063f7a7    7406
                         or                 esi, dword ptr [0x9a161c]                      // 0x0063f7a9    0b351c169a00
_jmp_addr_0x0063f7af:    mov.s              ecx, edi                                       // 0x0063f7af    8bcf
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ            // 0x0063f7b1    e8cac9f0ff
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                    // 0x0063f7b6    8b4858
                         {disp8} mov        eax, dword ptr [eax + ecx * 0x4 + 0x28]        // 0x0063f7b9    8b448828
                         mov                edx, dword ptr [eax]                           // 0x0063f7bd    8b10
                         push               esi                                            // 0x0063f7bf    56
                         mov.s              ecx, eax                                       // 0x0063f7c0    8bc8
                         call               dword ptr [edx + 0x28]                         // 0x0063f7c2    ff5228
_jmp_addr_0x0063f7c5:    {disp32} mov       ecx, dword ptr [_game]                         // 0x0063f7c5    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ            // 0x0063f7cb    e8b0c9f0ff
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                    // 0x0063f7d0    8b4858
                         test               ecx, ecx                                       // 0x0063f7d3    85c9
                         {disp8} jge        _jmp_addr_0x0063f7db                           // 0x0063f7d5    7d04
                         xor.s              eax, eax                                       // 0x0063f7d7    33c0
                         {disp8} jmp        _jmp_addr_0x0063f7df                           // 0x0063f7d9    eb04
_jmp_addr_0x0063f7db:    {disp8} mov        eax, dword ptr [eax + ecx * 0x4 + 0x28]        // 0x0063f7db    8b448828
_jmp_addr_0x0063f7df:    push               0x0                                            // 0x0063f7df    6a00
                         push               0x009cd3b0                                     // 0x0063f7e1    68b0d39c00
                         push               0x009cd390                                     // 0x0063f7e6    6890d39c00
                         push               0x0                                            // 0x0063f7eb    6a00
                         push               eax                                            // 0x0063f7ed    50
                         call               ___RTDynamicCast                               // 0x0063f7ee    e826621800
                         mov.s              esi, eax                                       // 0x0063f7f3    8bf0
                         add                esp, 0x14                                      // 0x0063f7f5    83c414
                         test               esi, esi                                       // 0x0063f7f8    85f6
                         {disp8} je         _jmp_addr_0x0063f82d                           // 0x0063f7fa    7431
                         cmp                dword ptr [edi + 0x00205a28], 0x01             // 0x0063f7fc    83bf285a200001
                         {disp8} je         _jmp_addr_0x0063f822                           // 0x0063f803    741d
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ       // 0x0063f805    e8c686dcff
                         test               eax, eax                                       // 0x0063f80a    85c0
                         {disp8} je         _jmp_addr_0x0063f817                           // 0x0063f80c    7409
                         {disp32} mov       al, byte ptr [data_bytes + 0x286cee]           // 0x0063f80e    a0eeccc400
                         test               al, al                                         // 0x0063f813    84c0
                         {disp8} jne        _jmp_addr_0x0063f822                           // 0x0063f815    750b
_jmp_addr_0x0063f817:    xor.s              eax, eax                                       // 0x0063f817    33c0
                         pop                edi                                            // 0x0063f819    5f
                         {disp32} mov       dword ptr [esi + 0x000002ec], eax              // 0x0063f81a    8986ec020000
                         pop                esi                                            // 0x0063f820    5e
                         ret                                                               // 0x0063f821    c3
_jmp_addr_0x0063f822:    mov                eax, 0x00000001                                // 0x0063f822    b801000000
                         {disp32} mov       dword ptr [esi + 0x000002ec], eax              // 0x0063f827    8986ec020000
_jmp_addr_0x0063f82d:    pop                edi                                            // 0x0063f82d    5f
                         pop                esi                                            // 0x0063f82e    5e
                         ret                                                               // 0x0063f82f    c3
?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z:
                         push               ebx                                            // 0x0063f830    53
                         push               esi                                            // 0x0063f831    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x0063f832    8b74240c
                         test               esi, esi                                       // 0x0063f836    85f6
                         push               edi                                            // 0x0063f838    57
                         mov.s              ebx, ecx                                       // 0x0063f839    8bd9
                         {disp32} je        _jmp_addr_0x0063f90b                           // 0x0063f83b    0f84ca000000
                         {disp8} mov        edi, dword ptr [esp + 0x14]                    // 0x0063f841    8b7c2414
                         {disp32} mov       eax, dword ptr [_game]                         // 0x0063f845    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]              // 0x0063f84a    8b8800032500
                         push               edi                                            // 0x0063f850    57
                         push               esi                                            // 0x0063f851    56
                         call               _jmp_addr_0x00470a00                           // 0x0063f852    e8a911e3ff
                         cmp                eax, -0x01                                     // 0x0063f857    83f8ff
                         {disp8} je         _jmp_addr_0x0063f86a                           // 0x0063f85a    740e
                         push               eax                                            // 0x0063f85c    50
                         mov.s              ecx, ebx                                       // 0x0063f85d    8bcb
                         call               ?DoAction@GGame@@QAEIK@Z                       // 0x0063f85f    e8dc000000
                         pop                edi                                            // 0x0063f864    5f
                         pop                esi                                            // 0x0063f865    5e
                         pop                ebx                                            // 0x0063f866    5b
                         ret                0x000c                                         // 0x0063f867    c20c00
_jmp_addr_0x0063f86a:    cmp                esi, 0x02                                      // 0x0063f86a    83fe02
                         {disp8} jne        _jmp_addr_0x0063f8b7                           // 0x0063f86d    7548
                         cmp                edi, 0x000000b8                                // 0x0063f86f    81ffb8000000
                         {disp8} je         _jmp_addr_0x0063f880                           // 0x0063f875    7409
                         cmp                edi, 0x38                                      // 0x0063f877    83ff38
                         {disp32} jne       _jmp_addr_0x0063f90b                           // 0x0063f87a    0f858b000000
_jmp_addr_0x0063f880:    {disp32} fld       dword ptr [ebx + 0x00205b74]                   // 0x0063f880    d983745b2000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x0063f886    d80db4a38a00
                         {disp32} fld       dword ptr [_rdata_float0p5]                    // 0x0063f88c    d905b4a38a00
                         fcomp              st(1)                                          // 0x0063f892    d8d9
                         fnstsw             ax                                             // 0x0063f894    dfe0
                         test               ah, 0x41                                       // 0x0063f896    f6c441
                         {disp8} jne        _jmp_addr_0x0063f8ac                           // 0x0063f899    7511
                         {disp8} mov        dword ptr [esp + 0x10], 0x3f000000             // 0x0063f89b    c74424100000003f
                         fstp               st(0)                                          // 0x0063f8a3    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x0063f8a5    8b4c2410
                         push               ecx                                            // 0x0063f8a9    51
                         {disp8} jmp        _jmp_addr_0x0063f8f5                           // 0x0063f8aa    eb49
_jmp_addr_0x0063f8ac:    {disp8} fstp       dword ptr [esp + 0x10]                         // 0x0063f8ac    d95c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x0063f8b0    8b4c2410
                         push               ecx                                            // 0x0063f8b4    51
                         {disp8} jmp        _jmp_addr_0x0063f8f5                           // 0x0063f8b5    eb3e
_jmp_addr_0x0063f8b7:    cmp                esi, 0x03                                      // 0x0063f8b7    83fe03
                         {disp8} jne        _jmp_addr_0x0063f90b                           // 0x0063f8ba    754f
                         cmp                edi, 0x000000b8                                // 0x0063f8bc    81ffb8000000
                         {disp8} je         _jmp_addr_0x0063f8c9                           // 0x0063f8c2    7405
                         cmp                edi, 0x38                                      // 0x0063f8c4    83ff38
                         {disp8} jne        _jmp_addr_0x0063f90b                           // 0x0063f8c7    7542
_jmp_addr_0x0063f8c9:    {disp32} fld       dword ptr [ebx + 0x00205b74]                   // 0x0063f8c9    d983745b2000
                         fadd.s             st(0), st(0)                                   // 0x0063f8cf    dcc0
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]               // 0x0063f8d1    d90578b48a00
                         fcomp              st(1)                                          // 0x0063f8d7    d8d9
                         fnstsw             ax                                             // 0x0063f8d9    dfe0
                         test               ah, 0x01                                       // 0x0063f8db    f6c401
                         {disp8} je         _jmp_addr_0x0063f8ec                           // 0x0063f8de    740c
                         fstp               st(0)                                          // 0x0063f8e0    ddd8
                         {disp8} mov        dword ptr [esp + 0x10], 0x40000000             // 0x0063f8e2    c744241000000040
                         {disp8} jmp        _jmp_addr_0x0063f8f0                           // 0x0063f8ea    eb04
_jmp_addr_0x0063f8ec:    {disp8} fstp       dword ptr [esp + 0x10]                         // 0x0063f8ec    d95c2410
_jmp_addr_0x0063f8f0:    {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x0063f8f0    8b542410
                         push               edx                                            // 0x0063f8f4    52
_jmp_addr_0x0063f8f5:    {disp32} mov       ecx, dword ptr [_game]                         // 0x0063f8f5    8b0d5c19d000
                         call               _jmp_addr_0x005537f0                           // 0x0063f8fb    e8f03ef1ff
                         pop                edi                                            // 0x0063f900    5f
                         pop                esi                                            // 0x0063f901    5e
                         mov                eax, 0x00000001                                // 0x0063f902    b801000000
                         pop                ebx                                            // 0x0063f907    5b
                         ret                0x000c                                         // 0x0063f908    c20c00
_jmp_addr_0x0063f90b:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x0063f90b    8b442418
                         test               eax, eax                                       // 0x0063f90f    85c0
                         {disp8} je         _jmp_addr_0x0063f937                           // 0x0063f911    7424
                         push               eax                                            // 0x0063f913    50
                         {disp32} mov       eax, dword ptr [_game]                         // 0x0063f914    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]              // 0x0063f919    8b8800032500
                         call               _jmp_addr_0x00470a60                           // 0x0063f91f    e83c11e3ff
                         cmp                eax, -0x01                                     // 0x0063f924    83f8ff
                         {disp8} je         _jmp_addr_0x0063f937                           // 0x0063f927    740e
                         push               eax                                            // 0x0063f929    50
                         mov.s              ecx, ebx                                       // 0x0063f92a    8bcb
                         call               ?DoAction@GGame@@QAEIK@Z                       // 0x0063f92c    e80f000000
                         pop                edi                                            // 0x0063f931    5f
                         pop                esi                                            // 0x0063f932    5e
                         pop                ebx                                            // 0x0063f933    5b
                         ret                0x000c                                         // 0x0063f934    c20c00
_jmp_addr_0x0063f937:    pop                edi                                            // 0x0063f937    5f
                         pop                esi                                            // 0x0063f938    5e
                         xor.s              eax, eax                                       // 0x0063f939    33c0
                         pop                ebx                                            // 0x0063f93b    5b
                         ret                0x000c                                         // 0x0063f93c    c20c00
                         nop                                                               // 0x0063f93f    90
?DoAction@GGame@@QAEIK@Z:
                         sub                esp, 0x10                                      // 0x0063f940    83ec10
                         push               esi                                            // 0x0063f943    56
                         mov.s              esi, ecx                                       // 0x0063f944    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0063f946    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x0025005c]              // 0x0063f94c    8b815c002500
                         {disp32} mov       edx, dword ptr [eax + 0x000045e8]              // 0x0063f952    8b90e8450000
                         test               edx, edx                                       // 0x0063f958    85d2
                         push               edi                                            // 0x0063f95a    57
                         {disp8} je         _jmp_addr_0x0063f96b                           // 0x0063f95b    740e
                         {disp32} mov       edx, dword ptr [eax + 0x000045ec]              // 0x0063f95d    8b90ec450000
                         test               edx, edx                                       // 0x0063f963    85d2
                         {disp32} jne       _jmp_addr_0x0063ff01                           // 0x0063f965    0f8596050000
_jmp_addr_0x0063f96b:    {disp8} mov        edi, dword ptr [esp + 0x1c]                    // 0x0063f96b    8b7c241c
                         cmp                edi, 0x20                                      // 0x0063f96f    83ff20
                         {disp32} ja        _jmp_addr_0x0063ff01                           // 0x0063f972    0f8789050000
                         xor.s              edx, edx                                       // 0x0063f978    33d2
                         {disp32} mov       dl, byte ptr [edi + 0x0063ff58]                // 0x0063f97a    8a9758ff6300
                         jmp                dword ptr [edx*4 + 0x63ff0c]                   // 0x0063f980    ff24950cff6300
                         mov.s              ecx, eax                                       // 0x0063f987    8bc8
                         call               ?HelpQuery@HelpSystem@@QAEXXZ                  // 0x0063f989    e8529ff8ff
                         pop                edi                                            // 0x0063f98e    5f
                         mov                eax, 0x00000001                                // 0x0063f98f    b801000000
                         pop                esi                                            // 0x0063f994    5e
                         add                esp, 0x10                                      // 0x0063f995    83c410
                         ret                0x0004                                         // 0x0063f998    c20400
                         xor.s              eax, eax                                       // 0x0063f99b    33c0
                         {disp32} mov       al, byte ptr [esi + 0x00205a59]                // 0x0063f99d    8a86595a2000
                         push               0x0                                            // 0x0063f9a3    6a00
                         lea                ecx, dword ptr [eax + eax * 0x4]               // 0x0063f9a5    8d0c80
                         lea                edx, dword ptr [eax + ecx * 0x8]               // 0x0063f9a8    8d14c8
                         lea                eax, dword ptr [eax + edx * 0x2]               // 0x0063f9ab    8d0450
                         shl                eax, 5                                         // 0x0063f9ae    c1e005
                         {disp8} lea        ecx, dword ptr [eax + esi * 0x1 + 0x18]        // 0x0063f9b1    8d4c3018
                         call               _jmp_addr_0x0064a7a0                           // 0x0063f9b5    e8e6ad0000
                         pop                edi                                            // 0x0063f9ba    5f
                         mov                eax, 0x00000001                                // 0x0063f9bb    b801000000
                         pop                esi                                            // 0x0063f9c0    5e
                         add                esp, 0x10                                      // 0x0063f9c1    83c410
                         ret                0x0004                                         // 0x0063f9c4    c20400
                         xor.s              eax, eax                                       // 0x0063f9c7    33c0
                         {disp32} mov       al, byte ptr [esi + 0x00205a59]                // 0x0063f9c9    8a86595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]               // 0x0063f9cf    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]               // 0x0063f9d2    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]               // 0x0063f9d5    8d0450
                         shl                eax, 5                                         // 0x0063f9d8    c1e005
                         {disp32} mov       edi, dword ptr [eax + esi * 0x1 + 0x00000a64]  // 0x0063f9db    8bbc30640a0000
                         add.s              eax, esi                                       // 0x0063f9e2    03c6
                         add                eax, 0x18                                      // 0x0063f9e4    83c018
                         test               edi, edi                                       // 0x0063f9e7    85ff
                         {disp32} mov       dword ptr [data_bytes + 0x380a64], eax         // 0x0063f9e9    a3646ad400
                         {disp32} je        _jmp_addr_0x0063fb50                           // 0x0063f9ee    0f845c010000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ            // 0x0063f9f4    e887c7f0ff
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                    // 0x0063f9f9    8b4858
                         test               ecx, ecx                                       // 0x0063f9fc    85c9
                         {disp8} jge        _jmp_addr_0x0063fa04                           // 0x0063f9fe    7d04
                         xor.s              eax, eax                                       // 0x0063fa00    33c0
                         {disp8} jmp        _jmp_addr_0x0063fa08                           // 0x0063fa02    eb04
_jmp_addr_0x0063fa04:    {disp8} mov        eax, dword ptr [eax + ecx * 0x4 + 0x28]        // 0x0063fa04    8b448828
_jmp_addr_0x0063fa08:    push               0x0                                            // 0x0063fa08    6a00
                         push               0x009cda20                                     // 0x0063fa0a    6820da9c00
                         push               0x009cd390                                     // 0x0063fa0f    6890d39c00
                         push               0x0                                            // 0x0063fa14    6a00
                         push               eax                                            // 0x0063fa16    50
                         call               ___RTDynamicCast                               // 0x0063fa17    e8fd5f1800
                         add                esp, 0x14                                      // 0x0063fa1c    83c414
                         test               eax, eax                                       // 0x0063fa1f    85c0
                         {disp32} je        _jmp_addr_0x0063fabc                           // 0x0063fa21    0f8495000000
                         cmp                dword ptr [eax + 0x08], edi                    // 0x0063fa27    397808
                         {disp32} jne       _jmp_addr_0x0063fabc                           // 0x0063fa2a    0f858c000000
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0063fa30    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ            // 0x0063fa36    e845c7f0ff
                         mov.s              ecx, eax                                       // 0x0063fa3b    8bc8
                         call               _jmp_addr_0x00441c50                           // 0x0063fa3d    e80e22e0ff
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0063fa42    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ            // 0x0063fa48    e833c7f0ff
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                    // 0x0063fa4d    8b4858
                         test               ecx, ecx                                       // 0x0063fa50    85c9
                         {disp8} jge        _jmp_addr_0x0063fa58                           // 0x0063fa52    7d04
                         xor.s              eax, eax                                       // 0x0063fa54    33c0
                         {disp8} jmp        _jmp_addr_0x0063fa5c                           // 0x0063fa56    eb04
_jmp_addr_0x0063fa58:    {disp8} mov        eax, dword ptr [eax + ecx * 0x4 + 0x28]        // 0x0063fa58    8b448828
_jmp_addr_0x0063fa5c:    push               0x0                                            // 0x0063fa5c    6a00
                         push               0x009cd3b0                                     // 0x0063fa5e    68b0d39c00
                         push               0x009cd390                                     // 0x0063fa63    6890d39c00
                         push               0x0                                            // 0x0063fa68    6a00
                         push               eax                                            // 0x0063fa6a    50
                         call               ___RTDynamicCast                               // 0x0063fa6b    e8a95f1800
                         add                esp, 0x14                                      // 0x0063fa70    83c414
                         test               eax, eax                                       // 0x0063fa73    85c0
                         {disp32} jne       _jmp_addr_0x0063fb50                           // 0x0063fa75    0f85d5000000
                         push               0x0000037e                                     // 0x0063fa7b    687e030000
                         push               0x00bfe2d8                                     // 0x0063fa80    68d8e2bf00
                         push               0x00000300                                     // 0x0063fa85    6800030000
                         call               ___nw__FUl                                     // 0x0063fa8a    e801bd1900
                         mov.s              esi, eax                                       // 0x0063fa8f    8bf0
                         add                esp, 0x0c                                      // 0x0063fa91    83c40c
                         test               esi, esi                                       // 0x0063fa94    85f6
                         {disp32} je        _jmp_addr_0x0063fb50                           // 0x0063fa96    0f84b4000000
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0063fa9c    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ            // 0x0063faa2    e8d9c6f0ff
                         push               eax                                            // 0x0063faa7    50
                         mov.s              ecx, esi                                       // 0x0063faa8    8bce
                         call               @__ct__14CameraModeNew3FP7GCamera@12           // 0x0063faaa    e83178e1ff
                         pop                edi                                            // 0x0063faaf    5f
                         mov                eax, 0x00000001                                // 0x0063fab0    b801000000
                         pop                esi                                            // 0x0063fab5    5e
                         add                esp, 0x10                                      // 0x0063fab6    83c410
                         ret                0x0004                                         // 0x0063fab9    c20400
_jmp_addr_0x0063fabc:    {disp32} mov       ecx, dword ptr [_game]                         // 0x0063fabc    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ            // 0x0063fac2    e8b9c6f0ff
                         {disp32} fld       dword ptr [eax + 0x00000118]                   // 0x0063fac7    d98018010000
                         {disp32} fld       dword ptr [eax + 0x00000178]                   // 0x0063facd    d98078010000
                         add                eax, 0x00000118                                // 0x0063fad3    0518010000
                         {disp8} mov        eax, dword ptr [edi + 0x40]                    // 0x0063fad8    8b4740
                         add                eax, 0x38                                      // 0x0063fadb    83c038
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x0063fade    d95c2414
                         fld                dword ptr [eax]                                // 0x0063fae2    d900
                         push               0x00000386                                     // 0x0063fae4    6886030000
                         fsub               st, st(1)                                      // 0x0063fae9    d8e1
                         push               0x00bfe2d8                                     // 0x0063faeb    68d8e2bf00
                         push               0x48                                           // 0x0063faf0    6a48
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x0063faf2    d95c2414
                         fstp               st(0)                                          // 0x0063faf6    ddd8
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x0063faf8    d94008
                         {disp8} fsub       dword ptr [esp + 0x20]                         // 0x0063fafb    d8642420
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x0063faff    d95c2428
                         call               ___nw__FUl                                     // 0x0063fb03    e888bc1900
                         mov.s              ecx, eax                                       // 0x0063fb08    8bc8
                         add                esp, 0x0c                                      // 0x0063fb0a    83c40c
                         test               ecx, ecx                                       // 0x0063fb0d    85c9
                         {disp8} je         _jmp_addr_0x0063fb50                           // 0x0063fb0f    743f
                         {disp8} fld        dword ptr [esp + 0x1c]                         // 0x0063fb11    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                         // 0x0063fb15    d84c241c
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x0063fb19    d9442408
                         {disp8} fmul       dword ptr [esp + 0x08]                         // 0x0063fb1d    d84c2408
                         faddp              st(1), st                                      // 0x0063fb21    dec1
                         fsqrt                                                             // 0x0063fb23    d9fa
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2760c]              // 0x0063fb25    d81d0c068d00
                         fnstsw             ax                                             // 0x0063fb2b    dfe0
                         test               ah, 0x01                                       // 0x0063fb2d    f6c401
                         {disp8} je         _jmp_addr_0x0063fb39                           // 0x0063fb30    7407
                         mov                eax, 0x00000001                                // 0x0063fb32    b801000000
                         {disp8} jmp        _jmp_addr_0x0063fb3b                           // 0x0063fb37    eb02
_jmp_addr_0x0063fb39:    xor.s              eax, eax                                       // 0x0063fb39    33c0
_jmp_addr_0x0063fb3b:    {disp32} mov       edx, dword ptr [esi + 0x002502c0]              // 0x0063fb3b    8b96c0022500
                         push               eax                                            // 0x0063fb41    50
                         push               0x0                                            // 0x0063fb42    6a00
                         push               0x3f800000                                     // 0x0063fb44    680000803f
                         push               edi                                            // 0x0063fb49    57
                         push               edx                                            // 0x0063fb4a    52
                         call               @__ct__16CameraModeFollowFP7GCameraP16GameThingWithPosfii@28                           // 0x0063fb4b    e8b0bce0ff
_jmp_addr_0x0063fb50:    pop                edi                                            // 0x0063fb50    5f
                         mov                eax, 0x00000001                                // 0x0063fb51    b801000000
                         pop                esi                                            // 0x0063fb56    5e
                         add                esp, 0x10                                      // 0x0063fb57    83c410
                         ret                0x0004                                         // 0x0063fb5a    c20400
                         xor.s              eax, eax                                       // 0x0063fb5d    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                // 0x0063fb5f    8a81595a2000
                         push               0x1                                            // 0x0063fb65    6a01
                         lea                edx, dword ptr [eax + eax * 0x4]               // 0x0063fb67    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]               // 0x0063fb6a    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]               // 0x0063fb6d    8d0450
                         shl                eax, 5                                         // 0x0063fb70    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]        // 0x0063fb73    8d4c0818
                         call               _jmp_addr_0x0064a7a0                           // 0x0063fb77    e824ac0000
                         pop                edi                                            // 0x0063fb7c    5f
                         mov                eax, 0x00000001                                // 0x0063fb7d    b801000000
                         pop                esi                                            // 0x0063fb82    5e
                         add                esp, 0x10                                      // 0x0063fb83    83c410
                         ret                0x0004                                         // 0x0063fb86    c20400
                         push               0x0                                            // 0x0063fb89    6a00
                         push               0x0                                            // 0x0063fb8b    6a00
                         call               _jmp_addr_0x00553e10                           // 0x0063fb8d    e87e42f1ff
                         pop                edi                                            // 0x0063fb92    5f
                         mov                eax, 0x00000001                                // 0x0063fb93    b801000000
                         pop                esi                                            // 0x0063fb98    5e
                         add                esp, 0x10                                      // 0x0063fb99    83c410
                         ret                0x0004                                         // 0x0063fb9c    c20400
                         push               0x0                                            // 0x0063fb9f    6a00
                         push               0x1                                            // 0x0063fba1    6a01
                         call               _jmp_addr_0x00553e10                           // 0x0063fba3    e86842f1ff
                         pop                edi                                            // 0x0063fba8    5f
                         mov                eax, 0x00000001                                // 0x0063fba9    b801000000
                         pop                esi                                            // 0x0063fbae    5e
                         add                esp, 0x10                                      // 0x0063fbaf    83c410
                         ret                0x0004                                         // 0x0063fbb2    c20400
                         push               0x0                                            // 0x0063fbb5    6a00
                         push               0x2                                            // 0x0063fbb7    6a02
                         call               _jmp_addr_0x00553e10                           // 0x0063fbb9    e85242f1ff
                         pop                edi                                            // 0x0063fbbe    5f
                         mov                eax, 0x00000001                                // 0x0063fbbf    b801000000
                         pop                esi                                            // 0x0063fbc4    5e
                         add                esp, 0x10                                      // 0x0063fbc5    83c410
                         ret                0x0004                                         // 0x0063fbc8    c20400
                         push               0x0                                            // 0x0063fbcb    6a00
                         push               0x5                                            // 0x0063fbcd    6a05
                         call               _jmp_addr_0x00553e10                           // 0x0063fbcf    e83c42f1ff
                         pop                edi                                            // 0x0063fbd4    5f
                         mov                eax, 0x00000001                                // 0x0063fbd5    b801000000
                         pop                esi                                            // 0x0063fbda    5e
                         add                esp, 0x10                                      // 0x0063fbdb    83c410
                         ret                0x0004                                         // 0x0063fbde    c20400
                         push               0x0                                            // 0x0063fbe1    6a00
                         push               0x4                                            // 0x0063fbe3    6a04
                         call               _jmp_addr_0x00553e10                           // 0x0063fbe5    e82642f1ff
                         pop                edi                                            // 0x0063fbea    5f
                         mov                eax, 0x00000001                                // 0x0063fbeb    b801000000
                         pop                esi                                            // 0x0063fbf0    5e
                         add                esp, 0x10                                      // 0x0063fbf1    83c410
                         ret                0x0004                                         // 0x0063fbf4    c20400
                         push               0x0                                            // 0x0063fbf7    6a00
                         push               0x6                                            // 0x0063fbf9    6a06
                         call               _jmp_addr_0x00553e10                           // 0x0063fbfb    e81042f1ff
                         pop                edi                                            // 0x0063fc00    5f
                         mov                eax, 0x00000001                                // 0x0063fc01    b801000000
                         pop                esi                                            // 0x0063fc06    5e
                         add                esp, 0x10                                      // 0x0063fc07    83c410
                         ret                0x0004                                         // 0x0063fc0a    c20400
                         xor.s              eax, eax                                       // 0x0063fc0d    33c0
                         {disp32} mov       al, byte ptr [esi + 0x00205a59]                // 0x0063fc0f    8a86595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]               // 0x0063fc15    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]               // 0x0063fc18    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]               // 0x0063fc1b    8d0450
                         shl                eax, 5                                         // 0x0063fc1e    c1e005
                         {disp32} mov       edx, dword ptr [eax + esi * 0x1 + 0x00000a64]  // 0x0063fc21    8b9430640a0000
                         test               edx, edx                                       // 0x0063fc28    85d2
                         {disp8} je         _jmp_addr_0x0063fc33                           // 0x0063fc2a    7407
                         push               0x5f                                           // 0x0063fc2c    6a5f
                         call               _jmp_addr_0x00550dd0                           // 0x0063fc2e    e89d11f1ff
_jmp_addr_0x0063fc33:    pop                edi                                            // 0x0063fc33    5f
                         mov                eax, 0x00000001                                // 0x0063fc34    b801000000
                         pop                esi                                            // 0x0063fc39    5e
                         add                esp, 0x10                                      // 0x0063fc3a    83c410
                         ret                0x0004                                         // 0x0063fc3d    c20400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x34043c]         // 0x0063fc40    8b0d3c64d000
                         push               0x1                                            // 0x0063fc46    6a01
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e4], 0x00000000  // 0x0063fc48    c705e455e80000000000
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e0], 0x00000000  // 0x0063fc52    c705e055e80000000000
                         call               _jmp_addr_0x00573840                           // 0x0063fc5c    e8df3bf3ff
                         pop                edi                                            // 0x0063fc61    5f
                         mov                eax, 0x00000001                                // 0x0063fc62    b801000000
                         pop                esi                                            // 0x0063fc67    5e
                         add                esp, 0x10                                      // 0x0063fc68    83c410
                         ret                0x0004                                         // 0x0063fc6b    c20400
                         {disp32} mov       edx, dword ptr [eax + 0x000045e8]              // 0x0063fc6e    8b90e8450000
                         test               edx, edx                                       // 0x0063fc74    85d2
                         {disp8} je         _jmp_addr_0x0063fc82                           // 0x0063fc76    740a
                         {disp32} mov       edx, dword ptr [eax + 0x000045ec]              // 0x0063fc78    8b90ec450000
                         test               edx, edx                                       // 0x0063fc7e    85d2
                         {disp8} jne        _jmp_addr_0x0063fca3                           // 0x0063fc80    7521
_jmp_addr_0x0063fc82:    {disp8} mov        eax, dword ptr [ecx + 0x14]                    // 0x0063fc82    8b4114
                         mov.s              edx, eax                                       // 0x0063fc85    8bd0
                         not                edx                                            // 0x0063fc87    f7d2
                         xor.s              edx, eax                                       // 0x0063fc89    33d0
                         and                edx, 0x00020000                                // 0x0063fc8b    81e200000200
                         xor.s              edx, eax                                       // 0x0063fc91    33d0
                         pop                edi                                            // 0x0063fc93    5f
                         {disp8} mov        dword ptr [ecx + 0x14], edx                    // 0x0063fc94    895114
                         mov                eax, 0x00000001                                // 0x0063fc97    b801000000
                         pop                esi                                            // 0x0063fc9c    5e
                         add                esp, 0x10                                      // 0x0063fc9d    83c410
                         ret                0x0004                                         // 0x0063fca0    c20400
_jmp_addr_0x0063fca3:    {disp32} mov       edx, dword ptr [eax + 0x000045e8]              // 0x0063fca3    8b90e8450000
                         test               edx, edx                                       // 0x0063fca9    85d2
                         {disp8} je         _jmp_addr_0x0063fcb7                           // 0x0063fcab    740a
                         {disp32} mov       edx, dword ptr [eax + 0x000045ec]              // 0x0063fcad    8b90ec450000
                         test               edx, edx                                       // 0x0063fcb3    85d2
                         {disp8} jne        _jmp_addr_0x0063fd22                           // 0x0063fcb5    756b
_jmp_addr_0x0063fcb7:    call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ       // 0x0063fcb7    e8945bf1ff
                         {disp32} mov       eax, dword ptr [eax + 0x000003c8]              // 0x0063fcbc    8b80c8030000
                         push               0x0                                            // 0x0063fcc2    6a00
                         push               0x009c8de8                                     // 0x0063fcc4    68e88d9c00
                         push               0x009c7f50                                     // 0x0063fcc9    68507f9c00
                         push               0x0                                            // 0x0063fcce    6a00
                         push               eax                                            // 0x0063fcd0    50
                         call               ___RTDynamicCast                               // 0x0063fcd1    e8435d1800
                         add                esp, 0x14                                      // 0x0063fcd6    83c414
                         test               eax, eax                                       // 0x0063fcd9    85c0
                         {disp8} je         _jmp_addr_0x0063fd08                           // 0x0063fcdb    742b
                         xor.s              ecx, ecx                                       // 0x0063fcdd    33c9
                         {disp32} mov       cx, word ptr [eax + 0x000000b4]                // 0x0063fcdf    668b88b4000000
                         pop                edi                                            // 0x0063fce6    5f
                         pop                esi                                            // 0x0063fce7    5e
                         mov.s              edx, ecx                                       // 0x0063fce8    8bd1
                         not                edx                                            // 0x0063fcea    f7d2
                         xor.s              edx, ecx                                       // 0x0063fcec    33d1
                         and                edx, 0x00000200                                // 0x0063fcee    81e200020000
                         xor.s              edx, ecx                                       // 0x0063fcf4    33d1
                         {disp32} mov       word ptr [eax + 0x000000b4], dx                // 0x0063fcf6    668990b4000000
                         mov                eax, 0x00000001                                // 0x0063fcfd    b801000000
                         add                esp, 0x10                                      // 0x0063fd02    83c410
                         ret                0x0004                                         // 0x0063fd05    c20400
_jmp_addr_0x0063fd08:    {disp32} mov       ecx, dword ptr [_game]                         // 0x0063fd08    8b0d5c19d000
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                    // 0x0063fd0e    8b4114
                         mov.s              edx, eax                                       // 0x0063fd11    8bd0
                         not                edx                                            // 0x0063fd13    f7d2
                         xor.s              edx, eax                                       // 0x0063fd15    33d0
                         and                edx, 0x00200000                                // 0x0063fd17    81e200002000
                         xor.s              edx, eax                                       // 0x0063fd1d    33d0
                         {disp8} mov        dword ptr [ecx + 0x14], edx                    // 0x0063fd1f    895114
_jmp_addr_0x0063fd22:    pop                edi                                            // 0x0063fd22    5f
                         mov                eax, 0x00000001                                // 0x0063fd23    b801000000
                         pop                esi                                            // 0x0063fd28    5e
                         add                esp, 0x10                                      // 0x0063fd29    83c410
                         ret                0x0004                                         // 0x0063fd2c    c20400
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ              // 0x0063fd2f    e84c32f1ff
                         test               eax, eax                                       // 0x0063fd34    85c0
                         {disp8} jne        _jmp_addr_0x0063fd89                           // 0x0063fd36    7551
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0063fd38    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x0025005c]              // 0x0063fd3e    8b815c002500
                         {disp32} mov       edx, dword ptr [eax + 0x000045e8]              // 0x0063fd44    8b90e8450000
                         test               edx, edx                                       // 0x0063fd4a    85d2
                         {disp8} je         _jmp_addr_0x0063fd58                           // 0x0063fd4c    740a
                         {disp32} mov       edx, dword ptr [eax + 0x000045ec]              // 0x0063fd4e    8b90ec450000
                         test               edx, edx                                       // 0x0063fd54    85d2
                         {disp8} jne        _jmp_addr_0x0063fd89                           // 0x0063fd56    7531
_jmp_addr_0x0063fd58:    {disp32} mov       eax, dword ptr [ecx + 0x00205a10]              // 0x0063fd58    8b81105a2000
                         test               eax, eax                                       // 0x0063fd5e    85c0
                         {disp8} jne        _jmp_addr_0x0063fd89                           // 0x0063fd60    7527
                         {disp32} mov       edi, dword ptr [ecx + 0x00205a40]              // 0x0063fd62    8bb9405a2000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205a18]              // 0x0063fd68    8b81185a2000
                         sub.s              eax, edi                                       // 0x0063fd6e    2bc7
                         cdq                                                               // 0x0063fd70    99
                         xor.s              eax, edx                                       // 0x0063fd71    33c2
                         sub.s              eax, edx                                       // 0x0063fd73    2bc2
                         cmp                eax, 0x03                                      // 0x0063fd75    83f803
                         {disp8} jle        _jmp_addr_0x0063fd89                           // 0x0063fd78    7e0f
                         {disp32} mov       dword ptr [ecx + 0x00205a18], edi              // 0x0063fd7a    89b9185a2000
                         push               0x61                                           // 0x0063fd80    6a61
                         mov.s              ecx, esi                                       // 0x0063fd82    8bce
                         call               _jmp_addr_0x00550dd0                           // 0x0063fd84    e84710f1ff
_jmp_addr_0x0063fd89:    pop                edi                                            // 0x0063fd89    5f
                         mov                eax, 0x00000001                                // 0x0063fd8a    b801000000
                         pop                esi                                            // 0x0063fd8f    5e
                         add                esp, 0x10                                      // 0x0063fd90    83c410
                         ret                0x0004                                         // 0x0063fd93    c20400
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ              // 0x0063fd96    e8e531f1ff
                         test               eax, eax                                       // 0x0063fd9b    85c0
                         {disp8} jne        _jmp_addr_0x0063fdd0                           // 0x0063fd9d    7531
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0063fd9f    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205a10]              // 0x0063fda5    8b81105a2000
                         test               eax, eax                                       // 0x0063fdab    85c0
                         {disp8} jne        _jmp_addr_0x0063fdd0                           // 0x0063fdad    7521
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]              // 0x0063fdaf    8b91405a2000
                         {disp32} mov       eax, dword ptr [ecx + 0x00205a1c]              // 0x0063fdb5    8b811c5a2000
                         sub.s              eax, edx                                       // 0x0063fdbb    2bc2
                         cdq                                                               // 0x0063fdbd    99
                         xor.s              eax, edx                                       // 0x0063fdbe    33c2
                         sub.s              eax, edx                                       // 0x0063fdc0    2bc2
                         cmp                eax, 0x03                                      // 0x0063fdc2    83f803
                         {disp8} jle        _jmp_addr_0x0063fdd0                           // 0x0063fdc5    7e09
                         push               0x62                                           // 0x0063fdc7    6a62
                         mov.s              ecx, esi                                       // 0x0063fdc9    8bce
                         call               _jmp_addr_0x00550dd0                           // 0x0063fdcb    e80010f1ff
_jmp_addr_0x0063fdd0:    pop                edi                                            // 0x0063fdd0    5f
                         mov                eax, 0x00000001                                // 0x0063fdd1    b801000000
                         pop                esi                                            // 0x0063fdd6    5e
                         add                esp, 0x10                                      // 0x0063fdd7    83c410
                         ret                0x0004                                         // 0x0063fdda    c20400
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ       // 0x0063fddd    e86e5af1ff
                         {disp32} mov       eax, dword ptr [eax + 0x0000039c]              // 0x0063fde2    8b809c030000
                         {disp32} mov       ecx, dword ptr [eax + 0x0000012c]              // 0x0063fde8    8b882c010000
                         {disp8} mov        eax, dword ptr [ecx + 0x1c]                    // 0x0063fdee    8b411c
                         dec                eax                                            // 0x0063fdf1    48
                         {disp8} je         _jmp_addr_0x0063fe08                           // 0x0063fdf2    7414
                         dec                eax                                            // 0x0063fdf4    48
                         {disp8} je         _jmp_addr_0x0063fe01                           // 0x0063fdf5    740a
                         dec                eax                                            // 0x0063fdf7    48
                         {disp8} jne        _jmp_addr_0x0063fe0f                           // 0x0063fdf8    7515
                         mov                edx, 0x00000002                                // 0x0063fdfa    ba02000000
                         {disp8} jmp        _jmp_addr_0x0063fe13                           // 0x0063fdff    eb12
_jmp_addr_0x0063fe01:    mov                edx, 0x00000001                                // 0x0063fe01    ba01000000
                         {disp8} jmp        _jmp_addr_0x0063fe13                           // 0x0063fe06    eb0b
_jmp_addr_0x0063fe08:    mov                edx, 0x00000003                                // 0x0063fe08    ba03000000
                         {disp8} jmp        _jmp_addr_0x0063fe13                           // 0x0063fe0d    eb04
_jmp_addr_0x0063fe0f:    {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x0063fe0f    8b54241c
_jmp_addr_0x0063fe13:    {disp32} mov       ecx, dword ptr [_game]                         // 0x0063fe13    8b0d5c19d000
                         xor.s              eax, eax                                       // 0x0063fe19    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                // 0x0063fe1b    8a81595a2000
                         lea                esi, dword ptr [eax + eax * 0x4]               // 0x0063fe21    8d3480
                         lea                esi, dword ptr [eax + esi * 0x8]               // 0x0063fe24    8d34f0
                         lea                eax, dword ptr [eax + esi * 0x2]               // 0x0063fe27    8d0470
                         shl                eax, 5                                         // 0x0063fe2a    c1e005
                         add.s              eax, ecx                                       // 0x0063fe2d    03c1
                         {disp8} lea        esi, dword ptr [eax + 0x18]                    // 0x0063fe2f    8d7018
                         test               esi, esi                                       // 0x0063fe32    85f6
                         {disp32} je        _jmp_addr_0x0063fef4                           // 0x0063fe34    0f84ba000000
                         {disp32} mov       eax, dword ptr [eax + 0x00000a64]              // 0x0063fe3a    8b80640a0000
                         test               eax, eax                                       // 0x0063fe40    85c0
                         {disp32} je        _jmp_addr_0x0063fef4                           // 0x0063fe42    0f84ac000000
                         mov.s              esi, edx                                       // 0x0063fe48    8bf2
                         and                esi, 0x0000ffff                                // 0x0063fe4a    81e6ffff0000
                         cmp                dword ptr [eax + esi * 0x4 + 0x00001108], 0x01 // 0x0063fe50    83bcb00811000001
                         {disp32} jne       _jmp_addr_0x0063fef4                           // 0x0063fe58    0f8596000000
                         push               0x0                                            // 0x0063fe5e    6a00
                         push               edx                                            // 0x0063fe60    52
                         push               0x65                                           // 0x0063fe61    6a65
                         call               _jmp_addr_0x00550c50                           // 0x0063fe63    e8e80df1ff
                         pop                edi                                            // 0x0063fe68    5f
                         mov                eax, 0x00000001                                // 0x0063fe69    b801000000
                         pop                esi                                            // 0x0063fe6e    5e
                         add                esp, 0x10                                      // 0x0063fe6f    83c410
                         ret                0x0004                                         // 0x0063fe72    c20400
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ       // 0x0063fe75    e8d659f1ff
                         {disp32} mov       ecx, dword ptr [eax + 0x0000039c]              // 0x0063fe7a    8b889c030000
                         {disp32} mov       edx, dword ptr [ecx + 0x0000012c]              // 0x0063fe80    8b912c010000
                         {disp8} mov        eax, dword ptr [edx + 0x1c]                    // 0x0063fe86    8b421c
                         dec                eax                                            // 0x0063fe89    48
                         {disp8} je         _jmp_addr_0x0063fea0                           // 0x0063fe8a    7414
                         dec                eax                                            // 0x0063fe8c    48
                         {disp8} je         _jmp_addr_0x0063fe99                           // 0x0063fe8d    740a
                         dec                eax                                            // 0x0063fe8f    48
                         {disp8} jne        _jmp_addr_0x0063fea7                           // 0x0063fe90    7515
                         mov                edx, 0x00000001                                // 0x0063fe92    ba01000000
                         {disp8} jmp        _jmp_addr_0x0063feab                           // 0x0063fe97    eb12
_jmp_addr_0x0063fe99:    mov                edx, 0x00000003                                // 0x0063fe99    ba03000000
                         {disp8} jmp        _jmp_addr_0x0063feab                           // 0x0063fe9e    eb0b
_jmp_addr_0x0063fea0:    mov                edx, 0x00000002                                // 0x0063fea0    ba02000000
                         {disp8} jmp        _jmp_addr_0x0063feab                           // 0x0063fea5    eb04
_jmp_addr_0x0063fea7:    {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x0063fea7    8b54241c
_jmp_addr_0x0063feab:    {disp32} mov       ecx, dword ptr [_game]                         // 0x0063feab    8b0d5c19d000
                         xor.s              eax, eax                                       // 0x0063feb1    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                // 0x0063feb3    8a81595a2000
                         lea                esi, dword ptr [eax + eax * 0x4]               // 0x0063feb9    8d3480
                         lea                esi, dword ptr [eax + esi * 0x8]               // 0x0063febc    8d34f0
                         lea                eax, dword ptr [eax + esi * 0x2]               // 0x0063febf    8d0470
                         shl                eax, 5                                         // 0x0063fec2    c1e005
                         add.s              eax, ecx                                       // 0x0063fec5    03c1
                         {disp8} lea        esi, dword ptr [eax + 0x18]                    // 0x0063fec7    8d7018
                         test               esi, esi                                       // 0x0063feca    85f6
                         {disp8} je         _jmp_addr_0x0063fef4                           // 0x0063fecc    7426
                         {disp32} mov       eax, dword ptr [eax + 0x00000a64]              // 0x0063fece    8b80640a0000
                         test               eax, eax                                       // 0x0063fed4    85c0
                         {disp8} je         _jmp_addr_0x0063fef4                           // 0x0063fed6    741c
                         mov.s              esi, edx                                       // 0x0063fed8    8bf2
                         and                esi, 0x0000ffff                                // 0x0063feda    81e6ffff0000
                         cmp                dword ptr [eax + esi * 0x4 + 0x00001108], 0x01 // 0x0063fee0    83bcb00811000001
                         {disp8} jne        _jmp_addr_0x0063fef4                           // 0x0063fee8    750a
                         push               0x0                                            // 0x0063feea    6a00
                         push               edx                                            // 0x0063feec    52
                         push               0x65                                           // 0x0063feed    6a65
                         call               _jmp_addr_0x00550c50                           // 0x0063feef    e85c0df1ff
_jmp_addr_0x0063fef4:    pop                edi                                            // 0x0063fef4    5f
                         mov                eax, 0x00000001                                // 0x0063fef5    b801000000
                         pop                esi                                            // 0x0063fefa    5e
                         add                esp, 0x10                                      // 0x0063fefb    83c410
                         ret                0x0004                                         // 0x0063fefe    c20400
_jmp_addr_0x0063ff01:    pop                edi                                            // 0x0063ff01    5f
                         xor.s              eax, eax                                       // 0x0063ff02    33c0
                         pop                esi                                            // 0x0063ff04    5e
                         add                esp, 0x10                                      // 0x0063ff05    83c410
                         ret                0x0004                                         // 0x0063ff08    c20400

// Snippet: db, [0x0063ff0b, 0x0063ff0c)
.byte 0x90                        // 0x0063ff0b

// Snippet: jmptbl, [0x0063ff0c, 0x0063ff58)
.byte 0x87, 0xf9, 0x63, 0x00      // 0x0063ff0c
.byte 0x40, 0xfc, 0x63, 0x00      // 0x0063ff10
.byte 0x9b, 0xf9, 0x63, 0x00      // 0x0063ff14
.byte 0xc7, 0xf9, 0x63, 0x00      // 0x0063ff18
.byte 0x5d, 0xfb, 0x63, 0x00      // 0x0063ff1c
.byte 0x89, 0xfb, 0x63, 0x00      // 0x0063ff20
.byte 0x9f, 0xfb, 0x63, 0x00      // 0x0063ff24
.byte 0xb5, 0xfb, 0x63, 0x00      // 0x0063ff28
.byte 0xcb, 0xfb, 0x63, 0x00      // 0x0063ff2c
.byte 0xe1, 0xfb, 0x63, 0x00      // 0x0063ff30
.byte 0xf7, 0xfb, 0x63, 0x00      // 0x0063ff34
.byte 0x0d, 0xfc, 0x63, 0x00      // 0x0063ff38
.byte 0x6e, 0xfc, 0x63, 0x00      // 0x0063ff3c
.byte 0xa3, 0xfc, 0x63, 0x00      // 0x0063ff40
.byte 0x2f, 0xfd, 0x63, 0x00      // 0x0063ff44
.byte 0x96, 0xfd, 0x63, 0x00      // 0x0063ff48
.byte 0x75, 0xfe, 0x63, 0x00      // 0x0063ff4c
.byte 0xdd, 0xfd, 0x63, 0x00      // 0x0063ff50
.byte 0x01, 0xff, 0x63, 0x00      // 0x0063ff54

// Snippet: ijmptbl, [0x0063ff58, 0x0063ff79)
.byte 0x00, 0x12, 0x12, 0x12      // 0x0063ff58
.byte 0x12, 0x01, 0x12, 0x12      // 0x0063ff5c
.byte 0x12, 0x12, 0x12, 0x12      // 0x0063ff60
.byte 0x12, 0x12, 0x12, 0x12      // 0x0063ff64
.byte 0x12, 0x02, 0x03, 0x04      // 0x0063ff68
.byte 0x05, 0x06, 0x07, 0x08      // 0x0063ff6c
.byte 0x09, 0x0a, 0x0b, 0x0c      // 0x0063ff70
.byte 0x0d, 0x0e, 0x0f, 0x10      // 0x0063ff74
.byte 0x11                        // 0x0063ff78

// Snippet: db, [0x0063ff79, 0x0063ff80)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0063ff79
.byte 0x90, 0x90, 0x90            // 0x0063ff7d

