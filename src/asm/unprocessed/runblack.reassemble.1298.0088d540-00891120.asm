.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _sprintf
.extern _memmove
.extern _atoi
.extern _malloc
.extern _free
.extern _sscanf
.extern __strcmpi
.extern _localtime
.extern _time
.extern _vsprintf
.extern _strcspn
.extern _strncpy
.extern _strncmp
.extern _strchr
.extern _strtok
.extern _strstr
.extern _realloc
.extern __isctype
.extern _jmp_addr_0x00886030
.extern _jmp_addr_0x008860e0
.extern _jmp_addr_0x00887b30
.extern _jmp_addr_0x00887d90
.extern _jmp_addr_0x00887de0
.extern _jmp_addr_0x00887e40
.extern _jmp_addr_0x00887e50
.extern _jmp_addr_0x00887e70
.extern _jmp_addr_0x00888000
.extern _jmp_addr_0x00888030
.extern _jmp_addr_0x00888080
.extern _jmp_addr_0x00888110
.extern _jmp_addr_0x00888150
.extern _jmp_addr_0x00888180
.extern _jmp_addr_0x008881c0
.extern _jmp_addr_0x008889c0
.extern _jmp_addr_0x00888b20
.extern _jmp_addr_0x00888bd0
.extern _jmp_addr_0x00888cd0
.extern _jmp_addr_0x00888e20
.extern _jmp_addr_0x00888ee0
.extern _jmp_addr_0x00888fa0
.extern _jmp_addr_0x00889060
.extern _jmp_addr_0x00889120
.extern _jmp_addr_0x00889230
.extern _jmp_addr_0x008892d0
.extern _jmp_addr_0x008893d0
.extern _jmp_addr_0x00889550
.extern _jmp_addr_0x00889710
.extern _jmp_addr_0x0088a7c0
.extern _jmp_addr_0x0088a8d0
.extern _jmp_addr_0x0088b9b0
.extern _jmp_addr_0x0088ba80
.extern _jmp_addr_0x0088c460
.extern _jmp_addr_0x0088c710
.extern _jmp_addr_0x0088c870
.extern _jmp_addr_0x0088c930
.extern _jmp_addr_0x0088c9a0
.extern _jmp_addr_0x0088ca00
.extern _jmp_addr_0x0088caa0
.extern _jmp_addr_0x0088cb20
.extern _jmp_addr_0x0088cb40
.extern _jmp_addr_0x0088d070
.extern _jmp_addr_0x0088d150
.extern _jmp_addr_0x008a507e
.extern _jmp_addr_0x008a5096
.extern _jmp_addr_0x008a50b4
.extern _jmp_addr_0x008a50c0
.extern _jmp_addr_0x008a50c6
.extern _jmp_addr_0x008a50cc
.extern _jmp_addr_0x008a50d2
.extern _jmp_addr_0x008a50d8
.extern _jmp_addr_0x008a50de
.extern _jmp_addr_0x008a50e4
.extern _jmp_addr_0x008a50ea
.extern _jmp_addr_0x008a50f0
.extern _jmp_addr_0x008a50f6
.extern _jmp_addr_0x008a50fc

.globl _jmp_addr_0x0088d540
.globl _jmp_addr_0x0088d640
.globl _jmp_addr_0x0088d6e0
.globl _jmp_addr_0x0088d890
.globl _jmp_addr_0x0088d900
.globl _jmp_addr_0x0088d970
.globl _jmp_addr_0x0088d9e0
.globl _jmp_addr_0x0088da40
.globl _jmp_addr_0x0088db50
.globl _jmp_addr_0x0088dc00
.globl _jmp_addr_0x0088e6a0
.globl _jmp_addr_0x0088ec60
.globl _jmp_addr_0x0088ec80
.globl _jmp_addr_0x0088eca0
.globl _jmp_addr_0x0088ecd0
.globl _jmp_addr_0x0088ed10
.globl _jmp_addr_0x0088ed40
.globl _jmp_addr_0x0088ede0
.globl _jmp_addr_0x0088f9e0
.globl _jmp_addr_0x0088fa30
.globl _jmp_addr_0x0088fa60
.globl _jmp_addr_0x0088fad0
.globl _jmp_addr_0x0088fb40
.globl _jmp_addr_0x0088fba0
.globl _jmp_addr_0x0088fbf0
.globl _jmp_addr_0x0088fc40
.globl _jmp_addr_0x0088fc80
.globl _jmp_addr_0x0088fcc0
.globl _jmp_addr_0x0088fd90
.globl _jmp_addr_0x0088fe40
.globl _jmp_addr_0x0088ff20
.globl _jmp_addr_0x00890000
.globl _jmp_addr_0x00890310
.globl _jmp_addr_0x008903c0
.globl _jmp_addr_0x00890590
.globl _jmp_addr_0x00890cd0
.globl _jmp_addr_0x00890d10
.globl _jmp_addr_0x00890d60

start_0x0088d540_0x00891120:
// Snippet: asm, [0x0088d540, 0x008910a4)
_jmp_addr_0x0088d540:    sub              esp, 0x00000100                                // 0x0088d540    81ec00010000
                         {disp32} mov     ax, word ptr [data_bytes + 0x2748cc]           // 0x0088d546    66a1cca8c300
                         push             ebx                                            // 0x0088d54c    53
                         push             esi                                            // 0x0088d54d    56
                         push             edi                                            // 0x0088d54e    57
                         {disp8} mov      word ptr [esp + 0x0c], ax                      // 0x0088d54f    668944240c
                         mov              ecx, 0x0000003f                                // 0x0088d554    b93f000000
                         xor.s            eax, eax                                       // 0x0088d559    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x0e]                    // 0x0088d55b    8d7c240e
                         rep stosd                                                       // 0x0088d55f    f3ab
                         stosw                                                           // 0x0088d561    66ab
                         {disp32} mov     eax, dword ptr [data_bytes + 0x5e4a20]         // 0x0088d563    a120aafa00
                         {disp32} mov     edi, dword ptr [esp + 0x00000114]              // 0x0088d568    8bbc2414010000
                         xor              eax, 0x01                                      // 0x0088d56f    83f001
                         or               ecx, 0xffffffff                                // 0x0088d572    83c9ff
                         {disp32} mov     dword ptr [data_bytes + 0x5e4a20], eax         // 0x0088d575    a320aafa00
                         xor.s            eax, eax                                       // 0x0088d57a    33c0
                         repne scasb                                                     // 0x0088d57c    f2ae
                         not              ecx                                            // 0x0088d57e    f7d1
                         sub.s            edi, ecx                                       // 0x0088d580    2bf9
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                    // 0x0088d582    8d54240c
                         mov.s            esi, edi                                       // 0x0088d586    8bf7
                         mov.s            ebx, ecx                                       // 0x0088d588    8bd9
                         mov.s            edi, edx                                       // 0x0088d58a    8bfa
                         or               ecx, 0xffffffff                                // 0x0088d58c    83c9ff
                         repne scasb                                                     // 0x0088d58f    f2ae
                         mov.s            ecx, ebx                                       // 0x0088d591    8bcb
                         dec              edi                                            // 0x0088d593    4f
                         shr              ecx, 2                                         // 0x0088d594    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088d597    f3a5
                         mov.s            ecx, ebx                                       // 0x0088d599    8bcb
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                    // 0x0088d59b    8d54240c
                         and              ecx, 0x03                                      // 0x0088d59f    83e103
                         rep movsb                                                       // 0x0088d5a2    f3a4
                         mov              edi, 0x00c3a8cc                                // 0x0088d5a4    bfcca8c300
                         or               ecx, 0xffffffff                                // 0x0088d5a9    83c9ff
                         repne scasb                                                     // 0x0088d5ac    f2ae
                         not              ecx                                            // 0x0088d5ae    f7d1
                         sub.s            edi, ecx                                       // 0x0088d5b0    2bf9
                         mov.s            esi, edi                                       // 0x0088d5b2    8bf7
                         mov.s            ebx, ecx                                       // 0x0088d5b4    8bd9
                         mov.s            edi, edx                                       // 0x0088d5b6    8bfa
                         or               ecx, 0xffffffff                                // 0x0088d5b8    83c9ff
                         repne scasb                                                     // 0x0088d5bb    f2ae
                         mov.s            ecx, ebx                                       // 0x0088d5bd    8bcb
                         dec              edi                                            // 0x0088d5bf    4f
                         shr              ecx, 2                                         // 0x0088d5c0    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088d5c3    f3a5
                         mov.s            ecx, ebx                                       // 0x0088d5c5    8bcb
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                    // 0x0088d5c7    8d44240c
                         and              ecx, 0x03                                      // 0x0088d5cb    83e103
                         push             eax                                            // 0x0088d5ce    50
                         rep movsb                                                       // 0x0088d5cf    f3a4
                         {disp32} mov     ecx, dword ptr [esp + 0x00000114]              // 0x0088d5d1    8b8c2414010000
                         push             ecx                                            // 0x0088d5d8    51
                         call             _strstr                                        // 0x0088d5d9    e882bff3ff
                         mov.s            edx, eax                                       // 0x0088d5de    8bd0
                         add              esp, 0x08                                      // 0x0088d5e0    83c408
                         test             edx, edx                                       // 0x0088d5e3    85d2
                         {disp8} jne      _jmp_addr_0x0088d5f1                           // 0x0088d5e5    750a
                         pop              edi                                            // 0x0088d5e7    5f
                         pop              esi                                            // 0x0088d5e8    5e
                         pop              ebx                                            // 0x0088d5e9    5b
                         add              esp, 0x00000100                                // 0x0088d5ea    81c400010000
                         ret                                                             // 0x0088d5f0    c3
_jmp_addr_0x0088d5f1:    {disp8} lea      edi, dword ptr [esp + 0x0c]                    // 0x0088d5f1    8d7c240c
                         or               ecx, 0xffffffff                                // 0x0088d5f5    83c9ff
                         xor.s            eax, eax                                       // 0x0088d5f8    33c0
                         repne scasb                                                     // 0x0088d5fa    f2ae
                         {disp32} mov     eax, dword ptr [data_bytes + 0x5e4a20]         // 0x0088d5fc    a120aafa00
                         not              ecx                                            // 0x0088d601    f7d1
                         dec              ecx                                            // 0x0088d603    49
                         add.s            edx, ecx                                       // 0x0088d604    03d1
                         shl              eax, 8                                         // 0x0088d606    c1e008
                         mov              cl, byte ptr [edx]                             // 0x0088d609    8a0a
                         add              eax, 0x00faaa24                                // 0x0088d60b    0524aafa00
                         test             cl, cl                                         // 0x0088d610    84c9
                         {disp8} je       _jmp_addr_0x0088d624                           // 0x0088d612    7410
_jmp_addr_0x0088d614:    cmp              cl, 0x5c                                       // 0x0088d614    80f95c
                         {disp8} je       _jmp_addr_0x0088d624                           // 0x0088d617    740b
                         mov              byte ptr [eax], cl                             // 0x0088d619    8808
                         {disp8} mov      cl, byte ptr [edx + 0x01]                      // 0x0088d61b    8a4a01
                         inc              eax                                            // 0x0088d61e    40
                         inc              edx                                            // 0x0088d61f    42
                         test             cl, cl                                         // 0x0088d620    84c9
                         {disp8} jne      _jmp_addr_0x0088d614                           // 0x0088d622    75f0
_jmp_addr_0x0088d624:    mov              byte ptr [eax], 0x00                           // 0x0088d624    c60000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x5e4a20]         // 0x0088d627    a120aafa00
                         shl              eax, 8                                         // 0x0088d62c    c1e008
                         pop              edi                                            // 0x0088d62f    5f
                         pop              esi                                            // 0x0088d630    5e
                         add              eax, 0x00faaa24                                // 0x0088d631    0524aafa00
                         pop              ebx                                            // 0x0088d636    5b
                         add              esp, 0x00000100                                // 0x0088d637    81c400010000
                         ret                                                             // 0x0088d63d    c3
                         nop                                                             // 0x0088d63e    90
                         nop                                                             // 0x0088d63f    90
_jmp_addr_0x0088d640:    sub              esp, 0x50                                      // 0x0088d640    83ec50
                         or               ecx, 0xffffffff                                // 0x0088d643    83c9ff
                         xor.s            eax, eax                                       // 0x0088d646    33c0
                         push             ebp                                            // 0x0088d648    55
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088d649    8b6c2460
                         push             edi                                            // 0x0088d64d    57
                         mov.s            edi, ebp                                       // 0x0088d64e    8bfd
                         repne scasb                                                     // 0x0088d650    f2ae
                         not              ecx                                            // 0x0088d652    f7d1
                         dec              ecx                                            // 0x0088d654    49
                         {disp8} je       _jmp_addr_0x0088d6d4                           // 0x0088d655    747d
                         push             ebx                                            // 0x0088d657    53
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088d658    8b5c2460
                         push             esi                                            // 0x0088d65c    56
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                    // 0x0088d65d    8d4c2410
                         {disp32} mov     edi, dword ptr [ebx + 0x000000e0]              // 0x0088d661    8bbbe0000000
                         inc              edi                                            // 0x0088d667    47
                         mov.s            eax, edi                                       // 0x0088d668    8bc7
                         {disp32} mov     dword ptr [ebx + 0x000000e0], edi              // 0x0088d66a    89bbe0000000
                         push             eax                                            // 0x0088d670    50
                         {disp32} mov     eax, dword ptr [ebx + 0x000000dc]              // 0x0088d671    8b83dc000000
                         push             eax                                            // 0x0088d677    50
                         push             0x00c3a8d0                                     // 0x0088d678    68d0a8c300
                         push             ecx                                            // 0x0088d67d    51
                         call             _sprintf                                       // 0x0088d67e    e84f81f3ff
                         {disp8} lea      edi, dword ptr [esp + 0x20]                    // 0x0088d683    8d7c2420
                         or               ecx, 0xffffffff                                // 0x0088d687    83c9ff
                         xor.s            eax, eax                                       // 0x0088d68a    33c0
                         add              esp, 0x10                                      // 0x0088d68c    83c410
                         repne scasb                                                     // 0x0088d68f    f2ae
                         not              ecx                                            // 0x0088d691    f7d1
                         sub.s            edi, ecx                                       // 0x0088d693    2bf9
                         push             0x10                                           // 0x0088d695    6a10
                         mov.s            esi, edi                                       // 0x0088d697    8bf7
                         mov.s            edx, ecx                                       // 0x0088d699    8bd1
                         mov.s            edi, ebp                                       // 0x0088d69b    8bfd
                         or               ecx, 0xffffffff                                // 0x0088d69d    83c9ff
                         repne scasb                                                     // 0x0088d6a0    f2ae
                         mov.s            ecx, edx                                       // 0x0088d6a2    8bca
                         dec              edi                                            // 0x0088d6a4    4f
                         shr              ecx, 2                                         // 0x0088d6a5    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088d6a8    f3a5
                         mov.s            ecx, edx                                       // 0x0088d6aa    8bca
                         {disp8} mov      eax, dword ptr [esp + 0x6c]                    // 0x0088d6ac    8b44246c
                         and              ecx, 0x03                                      // 0x0088d6b0    83e103
                         push             eax                                            // 0x0088d6b3    50
                         rep movsb                                                       // 0x0088d6b4    f3a4
                         mov.s            edi, ebp                                       // 0x0088d6b6    8bfd
                         or               ecx, 0xffffffff                                // 0x0088d6b8    83c9ff
                         xor.s            eax, eax                                       // 0x0088d6bb    33c0
                         push             0x0                                            // 0x0088d6bd    6a00
                         repne scasb                                                     // 0x0088d6bf    f2ae
                         not              ecx                                            // 0x0088d6c1    f7d1
                         dec              ecx                                            // 0x0088d6c3    49
                         push             ecx                                            // 0x0088d6c4    51
                         mov              ecx, dword ptr [ebx]                           // 0x0088d6c5    8b0b
                         push             ebp                                            // 0x0088d6c7    55
                         push             ecx                                            // 0x0088d6c8    51
                         call             _jmp_WSOCK32_DLL__Ordinal_20                   // 0x0088d6c9    e80a7a0100
                         pop              esi                                            // 0x0088d6ce    5e
                         {disp8} mov      byte ptr [ebp + 0x00], 0x00                    // 0x0088d6cf    c6450000
                         pop              ebx                                            // 0x0088d6d3    5b
_jmp_addr_0x0088d6d4:    pop              edi                                            // 0x0088d6d4    5f
                         pop              ebp                                            // 0x0088d6d5    5d
                         add              esp, 0x50                                      // 0x0088d6d6    83c450
                         ret                                                             // 0x0088d6d9    c3
                         nop                                                             // 0x0088d6da    90
                         nop                                                             // 0x0088d6db    90
                         nop                                                             // 0x0088d6dc    90
                         nop                                                             // 0x0088d6dd    90
                         nop                                                             // 0x0088d6de    90
                         nop                                                             // 0x0088d6df    90
_jmp_addr_0x0088d6e0:    sub              esp, 0x00000578                                // 0x0088d6e0    81ec78050000
                         {disp32} mov     al, byte ptr [data_bytes + 0x292370]           // 0x0088d6e6    a07083c500
                         push             esi                                            // 0x0088d6eb    56
                         {disp32} mov     esi, dword ptr [esp + 0x00000580]              // 0x0088d6ec    8bb42480050000
                         push             edi                                            // 0x0088d6f3    57
                         {disp8} mov      byte ptr [esp + 0x08], al                      // 0x0088d6f4    88442408
                         mov              ecx, 0x0000015d                                // 0x0088d6f8    b95d010000
                         xor.s            eax, eax                                       // 0x0088d6fd    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x09]                    // 0x0088d6ff    8d7c2409
                         rep stosd                                                       // 0x0088d703    f3ab
                         {disp32} mov     ecx, dword ptr [esi + 0x000000ec]              // 0x0088d705    8b8eec000000
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x0088d70b    8d542408
                         stosw                                                           // 0x0088d70f    66ab
                         push             ecx                                            // 0x0088d711    51
                         push             0x00000578                                     // 0x0088d712    6878050000
                         push             edx                                            // 0x0088d717    52
                         stosb                                                           // 0x0088d718    aa
                         call             dword ptr [esi + 0xc8]                         // 0x0088d719    ff96c8000000
                         {disp32} mov     ecx, dword ptr [esp + 0x00000598]              // 0x0088d71f    8b8c2498050000
                         {disp32} mov     edx, dword ptr [esp + 0x00000594]              // 0x0088d726    8b942494050000
                         {disp8} lea      eax, dword ptr [esp + 0x14]                    // 0x0088d72d    8d442414
                         push             eax                                            // 0x0088d731    50
                         push             ecx                                            // 0x0088d732    51
                         push             edx                                            // 0x0088d733    52
                         push             esi                                            // 0x0088d734    56
                         call             _jmp_addr_0x0088d750                           // 0x0088d735    e816000000
                         add              esp, 0x1c                                      // 0x0088d73a    83c41c
                         pop              edi                                            // 0x0088d73d    5f
                         pop              esi                                            // 0x0088d73e    5e
                         add              esp, 0x00000578                                // 0x0088d73f    81c478050000
                         ret                                                             // 0x0088d745    c3
                         nop                                                             // 0x0088d746    90
                         nop                                                             // 0x0088d747    90
                         nop                                                             // 0x0088d748    90
                         nop                                                             // 0x0088d749    90
                         nop                                                             // 0x0088d74a    90
                         nop                                                             // 0x0088d74b    90
                         nop                                                             // 0x0088d74c    90
                         nop                                                             // 0x0088d74d    90
                         nop                                                             // 0x0088d74e    90
                         nop                                                             // 0x0088d74f    90
_jmp_addr_0x0088d750:    push             ebx                                            // 0x0088d750    53
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                    // 0x0088d751    8b5c2410
                         push             ebp                                            // 0x0088d755    55
                         push             esi                                            // 0x0088d756    56
                         push             edi                                            // 0x0088d757    57
                         mov.s            edi, ebx                                       // 0x0088d758    8bfb
                         or               ecx, 0xffffffff                                // 0x0088d75a    83c9ff
                         xor.s            eax, eax                                       // 0x0088d75d    33c0
                         xor.s            edx, edx                                       // 0x0088d75f    33d2
                         {disp8} mov      esi, dword ptr [esp + 0x20]                    // 0x0088d761    8b742420
                         repne scasb                                                     // 0x0088d765    f2ae
                         not              ecx                                            // 0x0088d767    f7d1
                         dec              ecx                                            // 0x0088d769    49
                         mov.s            edi, esi                                       // 0x0088d76a    8bfe
                         mov.s            ebp, ecx                                       // 0x0088d76c    8be9
                         or               ecx, 0xffffffff                                // 0x0088d76e    83c9ff
                         repne scasb                                                     // 0x0088d771    f2ae
                         not              ecx                                            // 0x0088d773    f7d1
                         dec              ecx                                            // 0x0088d775    49
                         add.s            ebp, ecx                                       // 0x0088d776    03e9
                         cmp              ebp, 0x00000546                                // 0x0088d778    81fd46050000
                         {disp32} jb      _jmp_addr_0x0088d81e                           // 0x0088d77e    0f829a000000
_jmp_addr_0x0088d784:    mov.s            edi, esi                                       // 0x0088d784    8bfe
                         or               ecx, 0xffffffff                                // 0x0088d786    83c9ff
                         xor.s            eax, eax                                       // 0x0088d789    33c0
                         repne scasb                                                     // 0x0088d78b    f2ae
                         not              ecx                                            // 0x0088d78d    f7d1
                         dec              ecx                                            // 0x0088d78f    49
                         cmp              ecx, 0x00000546                                // 0x0088d790    81f946050000
                         {disp32} jbe     _jmp_addr_0x0088d84a                           // 0x0088d796    0f86ae000000
                         xor.s            ecx, ecx                                       // 0x0088d79c    33c9
                         mov.s            eax, esi                                       // 0x0088d79e    8bc6
                         cmp              ecx, 0x00000546                                // 0x0088d7a0    81f946050000
                         mov.s            edi, esi                                       // 0x0088d7a6    8bfe
                         {disp32} jge     _jmp_addr_0x0088d87c                           // 0x0088d7a8    0f8dce000000
_jmp_addr_0x0088d7ae:    cmp              byte ptr [eax], 0x5c                           // 0x0088d7ae    80385c
                         {disp8} jne      _jmp_addr_0x0088d7c7                           // 0x0088d7b1    7514
                         mov.s            ecx, edx                                       // 0x0088d7b3    8bca
                         and              ecx, 0x80000001                                // 0x0088d7b5    81e101000080
                         {disp8} jns      _jmp_addr_0x0088d7c2                           // 0x0088d7bb    7905
                         dec              ecx                                            // 0x0088d7bd    49
                         or               ecx, 0xfffffffe                                // 0x0088d7be    83c9fe
                         inc              ecx                                            // 0x0088d7c1    41
_jmp_addr_0x0088d7c2:    {disp8} jne      _jmp_addr_0x0088d7c6                           // 0x0088d7c2    7502
                         mov.s            edi, eax                                       // 0x0088d7c4    8bf8
_jmp_addr_0x0088d7c6:    inc              edx                                            // 0x0088d7c6    42
_jmp_addr_0x0088d7c7:    inc              eax                                            // 0x0088d7c7    40
                         mov.s            ecx, eax                                       // 0x0088d7c8    8bc8
                         sub.s            ecx, esi                                       // 0x0088d7ca    2bce
                         cmp              ecx, 0x00000546                                // 0x0088d7cc    81f946050000
                         {disp8} jl       _jmp_addr_0x0088d7ae                           // 0x0088d7d2    7cda
                         cmp.s            edi, esi                                       // 0x0088d7d4    3bfe
                         {disp32} je      _jmp_addr_0x0088d87c                           // 0x0088d7d6    0f84a0000000
                         {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x0088d7dc    8b542418
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x0088d7e0    8b442414
                         push             esi                                            // 0x0088d7e4    56
                         push             ebx                                            // 0x0088d7e5    53
                         push             edx                                            // 0x0088d7e6    52
                         push             eax                                            // 0x0088d7e7    50
                         mov              byte ptr [edi], 0x00                           // 0x0088d7e8    c60700
                         call             _jmp_addr_0x0088d750                           // 0x0088d7eb    e860ffffff
                         or               ecx, 0xffffffff                                // 0x0088d7f0    83c9ff
                         xor.s            eax, eax                                       // 0x0088d7f3    33c0
                         add              esp, 0x10                                      // 0x0088d7f5    83c410
                         mov              byte ptr [edi], 0x5c                           // 0x0088d7f8    c6075c
                         mov.s            esi, edi                                       // 0x0088d7fb    8bf7
                         xor.s            edx, edx                                       // 0x0088d7fd    33d2
                         repne scasb                                                     // 0x0088d7ff    f2ae
                         not              ecx                                            // 0x0088d801    f7d1
                         dec              ecx                                            // 0x0088d803    49
                         mov.s            edi, ebx                                       // 0x0088d804    8bfb
                         mov.s            ebp, ecx                                       // 0x0088d806    8be9
                         or               ecx, 0xffffffff                                // 0x0088d808    83c9ff
                         repne scasb                                                     // 0x0088d80b    f2ae
                         not              ecx                                            // 0x0088d80d    f7d1
                         dec              ecx                                            // 0x0088d80f    49
                         add.s            ebp, ecx                                       // 0x0088d810    03e9
                         cmp              ebp, 0x00000546                                // 0x0088d812    81fd46050000
                         {disp32} jae     _jmp_addr_0x0088d784                           // 0x0088d818    0f8366ffffff
_jmp_addr_0x0088d81e:    mov.s            edi, esi                                       // 0x0088d81e    8bfe
                         or               ecx, 0xffffffff                                // 0x0088d820    83c9ff
                         xor.s            eax, eax                                       // 0x0088d823    33c0
                         repne scasb                                                     // 0x0088d825    f2ae
                         not              ecx                                            // 0x0088d827    f7d1
                         sub.s            edi, ecx                                       // 0x0088d829    2bf9
                         mov.s            esi, edi                                       // 0x0088d82b    8bf7
                         mov.s            edx, ecx                                       // 0x0088d82d    8bd1
                         mov.s            edi, ebx                                       // 0x0088d82f    8bfb
                         or               ecx, 0xffffffff                                // 0x0088d831    83c9ff
                         repne scasb                                                     // 0x0088d834    f2ae
                         mov.s            ecx, edx                                       // 0x0088d836    8bca
                         dec              edi                                            // 0x0088d838    4f
                         shr              ecx, 2                                         // 0x0088d839    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088d83c    f3a5
                         mov.s            ecx, edx                                       // 0x0088d83e    8bca
                         and              ecx, 0x03                                      // 0x0088d840    83e103
                         rep movsb                                                       // 0x0088d843    f3a4
                         pop              edi                                            // 0x0088d845    5f
                         pop              esi                                            // 0x0088d846    5e
                         pop              ebp                                            // 0x0088d847    5d
                         pop              ebx                                            // 0x0088d848    5b
                         ret                                                             // 0x0088d849    c3
_jmp_addr_0x0088d84a:    {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x0088d84a    8b442418
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x0088d84e    8b4c2414
                         push             ebx                                            // 0x0088d852    53
                         push             eax                                            // 0x0088d853    50
                         push             ecx                                            // 0x0088d854    51
                         call             _jmp_addr_0x0088d640                           // 0x0088d855    e8e6fdffff
                         mov.s            edi, esi                                       // 0x0088d85a    8bfe
                         or               ecx, 0xffffffff                                // 0x0088d85c    83c9ff
                         xor.s            eax, eax                                       // 0x0088d85f    33c0
                         add              esp, 0x0c                                      // 0x0088d861    83c40c
                         repne scasb                                                     // 0x0088d864    f2ae
                         not              ecx                                            // 0x0088d866    f7d1
                         sub.s            edi, ecx                                       // 0x0088d868    2bf9
                         mov.s            edx, ecx                                       // 0x0088d86a    8bd1
                         mov.s            esi, edi                                       // 0x0088d86c    8bf7
                         mov.s            edi, ebx                                       // 0x0088d86e    8bfb
                         shr              ecx, 2                                         // 0x0088d870    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088d873    f3a5
                         mov.s            ecx, edx                                       // 0x0088d875    8bca
                         and              ecx, 0x03                                      // 0x0088d877    83e103
                         rep movsb                                                       // 0x0088d87a    f3a4
_jmp_addr_0x0088d87c:    pop              edi                                            // 0x0088d87c    5f
                         pop              esi                                            // 0x0088d87d    5e
                         pop              ebp                                            // 0x0088d87e    5d
                         pop              ebx                                            // 0x0088d87f    5b
                         ret                                                             // 0x0088d880    c3
                         nop                                                             // 0x0088d881    90
                         nop                                                             // 0x0088d882    90
                         nop                                                             // 0x0088d883    90
                         nop                                                             // 0x0088d884    90
                         nop                                                             // 0x0088d885    90
                         nop                                                             // 0x0088d886    90
                         nop                                                             // 0x0088d887    90
                         nop                                                             // 0x0088d888    90
                         nop                                                             // 0x0088d889    90
                         nop                                                             // 0x0088d88a    90
                         nop                                                             // 0x0088d88b    90
                         nop                                                             // 0x0088d88c    90
                         nop                                                             // 0x0088d88d    90
                         nop                                                             // 0x0088d88e    90
                         nop                                                             // 0x0088d88f    90
_jmp_addr_0x0088d890:    sub              esp, 0x00000578                                // 0x0088d890    81ec78050000
                         {disp32} mov     al, byte ptr [data_bytes + 0x292370]           // 0x0088d896    a07083c500
                         push             esi                                            // 0x0088d89b    56
                         {disp32} mov     esi, dword ptr [esp + 0x00000580]              // 0x0088d89c    8bb42480050000
                         push             edi                                            // 0x0088d8a3    57
                         {disp8} mov      byte ptr [esp + 0x08], al                      // 0x0088d8a4    88442408
                         mov              ecx, 0x0000015d                                // 0x0088d8a8    b95d010000
                         xor.s            eax, eax                                       // 0x0088d8ad    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x09]                    // 0x0088d8af    8d7c2409
                         rep stosd                                                       // 0x0088d8b3    f3ab
                         {disp32} mov     ecx, dword ptr [esi + 0x000000ec]              // 0x0088d8b5    8b8eec000000
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x0088d8bb    8d542408
                         stosw                                                           // 0x0088d8bf    66ab
                         push             ecx                                            // 0x0088d8c1    51
                         push             0x00000578                                     // 0x0088d8c2    6878050000
                         push             edx                                            // 0x0088d8c7    52
                         stosb                                                           // 0x0088d8c8    aa
                         call             dword ptr [esi + 0xcc]                         // 0x0088d8c9    ff96cc000000
                         {disp32} mov     ecx, dword ptr [esp + 0x00000598]              // 0x0088d8cf    8b8c2498050000
                         {disp32} mov     edx, dword ptr [esp + 0x00000594]              // 0x0088d8d6    8b942494050000
                         {disp8} lea      eax, dword ptr [esp + 0x14]                    // 0x0088d8dd    8d442414
                         push             eax                                            // 0x0088d8e1    50
                         push             ecx                                            // 0x0088d8e2    51
                         push             edx                                            // 0x0088d8e3    52
                         push             esi                                            // 0x0088d8e4    56
                         call             _jmp_addr_0x0088d750                           // 0x0088d8e5    e866feffff
                         add              esp, 0x1c                                      // 0x0088d8ea    83c41c
                         pop              edi                                            // 0x0088d8ed    5f
                         pop              esi                                            // 0x0088d8ee    5e
                         add              esp, 0x00000578                                // 0x0088d8ef    81c478050000
                         ret                                                             // 0x0088d8f5    c3
                         nop                                                             // 0x0088d8f6    90
                         nop                                                             // 0x0088d8f7    90
                         nop                                                             // 0x0088d8f8    90
                         nop                                                             // 0x0088d8f9    90
                         nop                                                             // 0x0088d8fa    90
                         nop                                                             // 0x0088d8fb    90
                         nop                                                             // 0x0088d8fc    90
                         nop                                                             // 0x0088d8fd    90
                         nop                                                             // 0x0088d8fe    90
                         nop                                                             // 0x0088d8ff    90
_jmp_addr_0x0088d900:    sub              esp, 0x00000578                                // 0x0088d900    81ec78050000
                         {disp32} mov     al, byte ptr [data_bytes + 0x292370]           // 0x0088d906    a07083c500
                         push             esi                                            // 0x0088d90b    56
                         {disp32} mov     esi, dword ptr [esp + 0x00000580]              // 0x0088d90c    8bb42480050000
                         push             edi                                            // 0x0088d913    57
                         {disp8} mov      byte ptr [esp + 0x08], al                      // 0x0088d914    88442408
                         mov              ecx, 0x0000015d                                // 0x0088d918    b95d010000
                         xor.s            eax, eax                                       // 0x0088d91d    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x09]                    // 0x0088d91f    8d7c2409
                         rep stosd                                                       // 0x0088d923    f3ab
                         {disp32} mov     ecx, dword ptr [esi + 0x000000ec]              // 0x0088d925    8b8eec000000
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x0088d92b    8d542408
                         stosw                                                           // 0x0088d92f    66ab
                         push             ecx                                            // 0x0088d931    51
                         push             0x00000578                                     // 0x0088d932    6878050000
                         push             edx                                            // 0x0088d937    52
                         stosb                                                           // 0x0088d938    aa
                         call             dword ptr [esi + 0xd0]                         // 0x0088d939    ff96d0000000
                         {disp32} mov     ecx, dword ptr [esp + 0x00000598]              // 0x0088d93f    8b8c2498050000
                         {disp32} mov     edx, dword ptr [esp + 0x00000594]              // 0x0088d946    8b942494050000
                         {disp8} lea      eax, dword ptr [esp + 0x14]                    // 0x0088d94d    8d442414
                         push             eax                                            // 0x0088d951    50
                         push             ecx                                            // 0x0088d952    51
                         push             edx                                            // 0x0088d953    52
                         push             esi                                            // 0x0088d954    56
                         call             _jmp_addr_0x0088d750                           // 0x0088d955    e8f6fdffff
                         add              esp, 0x1c                                      // 0x0088d95a    83c41c
                         pop              edi                                            // 0x0088d95d    5f
                         pop              esi                                            // 0x0088d95e    5e
                         add              esp, 0x00000578                                // 0x0088d95f    81c478050000
                         ret                                                             // 0x0088d965    c3
                         nop                                                             // 0x0088d966    90
                         nop                                                             // 0x0088d967    90
                         nop                                                             // 0x0088d968    90
                         nop                                                             // 0x0088d969    90
                         nop                                                             // 0x0088d96a    90
                         nop                                                             // 0x0088d96b    90
                         nop                                                             // 0x0088d96c    90
                         nop                                                             // 0x0088d96d    90
                         nop                                                             // 0x0088d96e    90
                         nop                                                             // 0x0088d96f    90
_jmp_addr_0x0088d970:    sub              esp, 0x00000578                                // 0x0088d970    81ec78050000
                         {disp32} mov     al, byte ptr [data_bytes + 0x292370]           // 0x0088d976    a07083c500
                         push             esi                                            // 0x0088d97b    56
                         {disp32} mov     esi, dword ptr [esp + 0x00000580]              // 0x0088d97c    8bb42480050000
                         push             edi                                            // 0x0088d983    57
                         {disp8} mov      byte ptr [esp + 0x08], al                      // 0x0088d984    88442408
                         mov              ecx, 0x0000015d                                // 0x0088d988    b95d010000
                         xor.s            eax, eax                                       // 0x0088d98d    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x09]                    // 0x0088d98f    8d7c2409
                         rep stosd                                                       // 0x0088d993    f3ab
                         {disp32} mov     ecx, dword ptr [esi + 0x000000ec]              // 0x0088d995    8b8eec000000
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x0088d99b    8d542408
                         stosw                                                           // 0x0088d99f    66ab
                         push             ecx                                            // 0x0088d9a1    51
                         push             0x00000578                                     // 0x0088d9a2    6878050000
                         push             edx                                            // 0x0088d9a7    52
                         stosb                                                           // 0x0088d9a8    aa
                         call             dword ptr [esi + 0xd4]                         // 0x0088d9a9    ff96d4000000
                         {disp32} mov     ecx, dword ptr [esp + 0x00000598]              // 0x0088d9af    8b8c2498050000
                         {disp32} mov     edx, dword ptr [esp + 0x00000594]              // 0x0088d9b6    8b942494050000
                         {disp8} lea      eax, dword ptr [esp + 0x14]                    // 0x0088d9bd    8d442414
                         push             eax                                            // 0x0088d9c1    50
                         push             ecx                                            // 0x0088d9c2    51
                         push             edx                                            // 0x0088d9c3    52
                         push             esi                                            // 0x0088d9c4    56
                         call             _jmp_addr_0x0088d750                           // 0x0088d9c5    e886fdffff
                         add              esp, 0x1c                                      // 0x0088d9ca    83c41c
                         pop              edi                                            // 0x0088d9cd    5f
                         pop              esi                                            // 0x0088d9ce    5e
                         add              esp, 0x00000578                                // 0x0088d9cf    81c478050000
                         ret                                                             // 0x0088d9d5    c3
                         nop                                                             // 0x0088d9d6    90
                         nop                                                             // 0x0088d9d7    90
                         nop                                                             // 0x0088d9d8    90
                         nop                                                             // 0x0088d9d9    90
                         nop                                                             // 0x0088d9da    90
                         nop                                                             // 0x0088d9db    90
                         nop                                                             // 0x0088d9dc    90
                         nop                                                             // 0x0088d9dd    90
                         nop                                                             // 0x0088d9de    90
                         nop                                                             // 0x0088d9df    90
_jmp_addr_0x0088d9e0:    {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x0088d9e0    8b542410
                         sub              esp, 0x00000578                                // 0x0088d9e4    81ec78050000
                         or               ecx, 0xffffffff                                // 0x0088d9ea    83c9ff
                         xor.s            eax, eax                                       // 0x0088d9ed    33c0
                         push             edi                                            // 0x0088d9ef    57
                         mov.s            edi, edx                                       // 0x0088d9f0    8bfa
                         repne scasb                                                     // 0x0088d9f2    f2ae
                         not              ecx                                            // 0x0088d9f4    f7d1
                         dec              ecx                                            // 0x0088d9f6    49
                         pop              edi                                            // 0x0088d9f7    5f
                         cmp              ecx, 0x00000546                                // 0x0088d9f8    81f946050000
                         {disp8} ja       _jmp_addr_0x0088da35                           // 0x0088d9fe    7735
                         push             edx                                            // 0x0088da00    52
                         {disp8} lea      eax, dword ptr [esp + 0x04]                    // 0x0088da01    8d442404
                         push             0x00c3a8e0                                     // 0x0088da05    68e0a8c300
                         push             eax                                            // 0x0088da0a    50
                         call             _sprintf                                       // 0x0088da0b    e8c27df3ff
                         {disp32} mov     edx, dword ptr [esp + 0x00000590]              // 0x0088da10    8b942490050000
                         {disp32} mov     eax, dword ptr [esp + 0x0000058c]              // 0x0088da17    8b84248c050000
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                    // 0x0088da1e    8d4c240c
                         push             ecx                                            // 0x0088da22    51
                         {disp32} mov     ecx, dword ptr [esp + 0x0000058c]              // 0x0088da23    8b8c248c050000
                         push             edx                                            // 0x0088da2a    52
                         push             eax                                            // 0x0088da2b    50
                         push             ecx                                            // 0x0088da2c    51
                         call             _jmp_addr_0x0088d750                           // 0x0088da2d    e81efdffff
                         add              esp, 0x1c                                      // 0x0088da32    83c41c
_jmp_addr_0x0088da35:    add              esp, 0x00000578                                // 0x0088da35    81c478050000
                         ret                                                             // 0x0088da3b    c3
                         nop                                                             // 0x0088da3c    90
                         nop                                                             // 0x0088da3d    90
                         nop                                                             // 0x0088da3e    90
                         nop                                                             // 0x0088da3f    90
_jmp_addr_0x0088da40:    {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x0088da40    8b542410
                         sub              esp, 0x0000024c                                // 0x0088da44    81ec4c020000
                         mov              al, byte ptr [edx]                             // 0x0088da4a    8a02
                         push             ebx                                            // 0x0088da4c    53
                         push             ebp                                            // 0x0088da4d    55
                         {disp32} mov     ebp, dword ptr [esp + 0x00000258]              // 0x0088da4e    8bac2458020000
                         push             esi                                            // 0x0088da55    56
                         push             edi                                            // 0x0088da56    57
                         test             al, al                                         // 0x0088da57    84c0
                         {disp32} je      _jmp_addr_0x0088db08                           // 0x0088da59    0f84a9000000
                         mov.s            edi, edx                                       // 0x0088da5f    8bfa
                         or               ecx, 0xffffffff                                // 0x0088da61    83c9ff
                         xor.s            eax, eax                                       // 0x0088da64    33c0
                         repne scasb                                                     // 0x0088da66    f2ae
                         not              ecx                                            // 0x0088da68    f7d1
                         dec              ecx                                            // 0x0088da6a    49
                         mov.s            ebx, ecx                                       // 0x0088da6b    8bd9
                         cmp              ebx, 0x00000080                                // 0x0088da6d    81fb80000000
                         {disp32} jg      _jmp_addr_0x0088db43                           // 0x0088da73    0f8fca000000
                         mov.s            edi, edx                                       // 0x0088da79    8bfa
                         or               ecx, 0xffffffff                                // 0x0088da7b    83c9ff
                         repne scasb                                                     // 0x0088da7e    f2ae
                         {disp8} lea      esi, dword ptr [esp + 0x14]                    // 0x0088da80    8d742414
                         push             ebx                                            // 0x0088da84    53
                         not              ecx                                            // 0x0088da85    f7d1
                         sub.s            edi, ecx                                       // 0x0088da87    2bf9
                         mov.s            edx, esi                                       // 0x0088da89    8bd6
                         mov.s            eax, ecx                                       // 0x0088da8b    8bc1
                         mov.s            esi, edi                                       // 0x0088da8d    8bf7
                         mov.s            edi, edx                                       // 0x0088da8f    8bfa
                         shr              ecx, 2                                         // 0x0088da91    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088da94    f3a5
                         mov.s            ecx, eax                                       // 0x0088da96    8bc8
                         {disp8} lea      eax, dword ptr [esp + 0x18]                    // 0x0088da98    8d442418
                         and              ecx, 0x03                                      // 0x0088da9c    83e103
                         {disp8} lea      edx, dword ptr [ebp + 0x48]                    // 0x0088da9f    8d5548
                         rep movsb                                                       // 0x0088daa2    f3a4
                         push             eax                                            // 0x0088daa4    50
                         mov.s            edi, edx                                       // 0x0088daa5    8bfa
                         or               ecx, 0xffffffff                                // 0x0088daa7    83c9ff
                         xor.s            eax, eax                                       // 0x0088daaa    33c0
                         repne scasb                                                     // 0x0088daac    f2ae
                         not              ecx                                            // 0x0088daae    f7d1
                         dec              ecx                                            // 0x0088dab0    49
                         push             ecx                                            // 0x0088dab1    51
                         push             edx                                            // 0x0088dab2    52
                         call             _jmp_addr_0x0088d150                           // 0x0088dab3    e898f6ffff
                         {disp32} lea     ecx, dword ptr [esp + 0x000001a4]              // 0x0088dab8    8d8c24a4010000
                         {disp8} lea      edx, dword ptr [esp + 0x24]                    // 0x0088dabf    8d542424
                         push             ecx                                            // 0x0088dac3    51
                         push             ebx                                            // 0x0088dac4    53
                         push             edx                                            // 0x0088dac5    52
                         call             _jmp_addr_0x0088d070                           // 0x0088dac6    e8a5f5ffff
                         {disp32} lea     eax, dword ptr [esp + 0x000001b0]              // 0x0088dacb    8d8424b0010000
                         {disp32} lea     ecx, dword ptr [esp + 0x000000b0]              // 0x0088dad2    8d8c24b0000000
                         push             eax                                            // 0x0088dad9    50
                         push             0x00c3a8f4                                     // 0x0088dada    68f4a8c300
                         push             ecx                                            // 0x0088dadf    51
                         call             _sprintf                                       // 0x0088dae0    e8ed7cf3ff
                         {disp32} mov     esi, dword ptr [esp + 0x00000290]              // 0x0088dae5    8bb42490020000
                         {disp32} mov     edi, dword ptr [esp + 0x0000028c]              // 0x0088daec    8bbc248c020000
                         {disp32} lea     edx, dword ptr [esp + 0x000000bc]              // 0x0088daf3    8d9424bc000000
                         push             edx                                            // 0x0088dafa    52
                         push             esi                                            // 0x0088dafb    56
                         push             edi                                            // 0x0088dafc    57
                         push             ebp                                            // 0x0088dafd    55
                         call             _jmp_addr_0x0088d750                           // 0x0088dafe    e84dfcffff
                         add              esp, 0x38                                      // 0x0088db03    83c438
                         {disp8} jmp      _jmp_addr_0x0088db16                           // 0x0088db06    eb0e
_jmp_addr_0x0088db08:    {disp32} mov     edi, dword ptr [esp + 0x00000264]              // 0x0088db08    8bbc2464020000
                         {disp32} mov     esi, dword ptr [esp + 0x00000268]              // 0x0088db0f    8bb42468020000
_jmp_addr_0x0088db16:    {disp32} lea     eax, dword ptr [esp + 0x00000094]              // 0x0088db16    8d842494000000
                         push             0x00c3a8ec                                     // 0x0088db1d    68eca8c300
                         push             eax                                            // 0x0088db22    50
                         call             _sprintf                                       // 0x0088db23    e8aa7cf3ff
                         {disp32} lea     ecx, dword ptr [esp + 0x0000009c]              // 0x0088db28    8d8c249c000000
                         push             ecx                                            // 0x0088db2f    51
                         push             esi                                            // 0x0088db30    56
                         push             edi                                            // 0x0088db31    57
                         push             ebp                                            // 0x0088db32    55
                         call             _jmp_addr_0x0088d750                           // 0x0088db33    e818fcffff
                         push             esi                                            // 0x0088db38    56
                         push             edi                                            // 0x0088db39    57
                         push             ebp                                            // 0x0088db3a    55
                         call             _jmp_addr_0x0088d640                           // 0x0088db3b    e800fbffff
                         add              esp, 0x24                                      // 0x0088db40    83c424
_jmp_addr_0x0088db43:    pop              edi                                            // 0x0088db43    5f
                         pop              esi                                            // 0x0088db44    5e
                         pop              ebp                                            // 0x0088db45    5d
                         pop              ebx                                            // 0x0088db46    5b
                         add              esp, 0x0000024c                                // 0x0088db47    81c44c020000
                         ret                                                             // 0x0088db4d    c3
                         nop                                                             // 0x0088db4e    90
                         nop                                                             // 0x0088db4f    90
_jmp_addr_0x0088db50:    sub              esp, 0x00000100                                // 0x0088db50    81ec00010000
                         {disp8} lea      edx, dword ptr [esp + 0x00]                    // 0x0088db56    8d542400
                         push             ebx                                            // 0x0088db5a    53
                         {disp32} mov     ebx, dword ptr [esp + 0x00000108]              // 0x0088db5b    8b9c2408010000
                         push             edi                                            // 0x0088db62    57
                         {disp32} mov     ecx, dword ptr [ebx + 0x000000e4]              // 0x0088db63    8b8be4000000
                         {disp8} lea      eax, dword ptr [ebx + 0x08]                    // 0x0088db69    8d4308
                         push             eax                                            // 0x0088db6c    50
                         push             ecx                                            // 0x0088db6d    51
                         push             0x00c3a914                                     // 0x0088db6e    6814a9c300
                         push             edx                                            // 0x0088db73    52
                         call             _sprintf                                       // 0x0088db74    e8597cf3ff
                         {disp32} mov     eax, dword ptr [esp + 0x00000120]              // 0x0088db79    8b842420010000
                         add              esp, 0x10                                      // 0x0088db80    83c410
                         test             eax, eax                                       // 0x0088db83    85c0
                         {disp8} je       _jmp_addr_0x0088dbb9                           // 0x0088db85    7432
                         mov              edi, 0x00c3a904                                // 0x0088db87    bf04a9c300
                         or               ecx, 0xffffffff                                // 0x0088db8c    83c9ff
                         xor.s            eax, eax                                       // 0x0088db8f    33c0
                         push             ebp                                            // 0x0088db91    55
                         repne scasb                                                     // 0x0088db92    f2ae
                         not              ecx                                            // 0x0088db94    f7d1
                         sub.s            edi, ecx                                       // 0x0088db96    2bf9
                         push             esi                                            // 0x0088db98    56
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0088db99    8d542410
                         mov.s            esi, edi                                       // 0x0088db9d    8bf7
                         mov.s            ebp, ecx                                       // 0x0088db9f    8be9
                         mov.s            edi, edx                                       // 0x0088dba1    8bfa
                         or               ecx, 0xffffffff                                // 0x0088dba3    83c9ff
                         repne scasb                                                     // 0x0088dba6    f2ae
                         mov.s            ecx, ebp                                       // 0x0088dba8    8bcd
                         dec              edi                                            // 0x0088dbaa    4f
                         shr              ecx, 2                                         // 0x0088dbab    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dbae    f3a5
                         mov.s            ecx, ebp                                       // 0x0088dbb0    8bcd
                         and              ecx, 0x03                                      // 0x0088dbb2    83e103
                         rep movsb                                                       // 0x0088dbb5    f3a4
                         pop              esi                                            // 0x0088dbb7    5e
                         pop              ebp                                            // 0x0088dbb8    5d
_jmp_addr_0x0088dbb9:    {disp8} lea      edi, dword ptr [esp + 0x08]                    // 0x0088dbb9    8d7c2408
                         or               ecx, 0xffffffff                                // 0x0088dbbd    83c9ff
                         xor.s            eax, eax                                       // 0x0088dbc0    33c0
                         push             0x10                                           // 0x0088dbc2    6a10
                         repne scasb                                                     // 0x0088dbc4    f2ae
                         not              ecx                                            // 0x0088dbc6    f7d1
                         push             0x00faac28                                     // 0x0088dbc8    6828acfa00
                         dec              ecx                                            // 0x0088dbcd    49
                         push             0x0                                            // 0x0088dbce    6a00
                         push             ecx                                            // 0x0088dbd0    51
                         {disp8} mov      ecx, dword ptr [ebx + 0x04]                    // 0x0088dbd1    8b4b04
                         {disp8} lea      eax, dword ptr [esp + 0x18]                    // 0x0088dbd4    8d442418
                         push             eax                                            // 0x0088dbd8    50
                         push             ecx                                            // 0x0088dbd9    51
                         call             _jmp_WSOCK32_DLL__Ordinal_20                   // 0x0088dbda    e8f9740100
                         call             _jmp_addr_0x0088a8d0                           // 0x0088dbdf    e8ecccffff
                         {disp32} mov     dword ptr [ebx + 0x000000d8], eax              // 0x0088dbe4    8983d8000000
                         pop              edi                                            // 0x0088dbea    5f
                         pop              ebx                                            // 0x0088dbeb    5b
                         add              esp, 0x00000100                                // 0x0088dbec    81c400010000
                         ret                                                             // 0x0088dbf2    c3
                         nop                                                             // 0x0088dbf3    90
                         nop                                                             // 0x0088dbf4    90
                         nop                                                             // 0x0088dbf5    90
                         nop                                                             // 0x0088dbf6    90
                         nop                                                             // 0x0088dbf7    90
                         nop                                                             // 0x0088dbf8    90
                         nop                                                             // 0x0088dbf9    90
                         nop                                                             // 0x0088dbfa    90
                         nop                                                             // 0x0088dbfb    90
                         nop                                                             // 0x0088dbfc    90
                         nop                                                             // 0x0088dbfd    90
                         nop                                                             // 0x0088dbfe    90
                         nop                                                             // 0x0088dbff    90
_jmp_addr_0x0088dc00:    sub              esp, 0x00000080                                // 0x0088dc00    81ec80000000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x274948]         // 0x0088dc06    a148a9c300
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x27494c]         // 0x0088dc0b    8b0d4ca9c300
                         push             ebx                                            // 0x0088dc11    53
                         {disp32} mov     ebx, dword ptr [esp + 0x00000088]              // 0x0088dc12    8b9c2488000000
                         {disp8} mov      dword ptr [esp + 0x04], eax                    // 0x0088dc19    89442404
                         {disp32} mov     ax, word ptr [data_bytes + 0x274950]           // 0x0088dc1d    66a150a9c300
                         {disp8} mov      word ptr [esp + 0x0c], ax                      // 0x0088dc23    668944240c
                         {disp32} mov     eax, dword ptr [ebx + 0x00000270]              // 0x0088dc28    8b8370020000
                         push             ebp                                            // 0x0088dc2e    55
                         push             esi                                            // 0x0088dc2f    56
                         test             eax, eax                                       // 0x0088dc30    85c0
                         push             edi                                            // 0x0088dc32    57
                         mov              edx, 0x00000001                                // 0x0088dc33    ba01000000
                         {disp8} mov      dword ptr [esp + 0x14], ecx                    // 0x0088dc38    894c2414
                         {disp32} je      _jmp_addr_0x0088dce2                           // 0x0088dc3c    0f84a0000000
                         mov              edi, 0x00c3a944                                // 0x0088dc42    bf44a9c300
                         or               ecx, 0xffffffff                                // 0x0088dc47    83c9ff
                         xor.s            eax, eax                                       // 0x0088dc4a    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0088dc4c    8d542410
                         repne scasb                                                     // 0x0088dc50    f2ae
                         not              ecx                                            // 0x0088dc52    f7d1
                         sub.s            edi, ecx                                       // 0x0088dc54    2bf9
                         mov.s            esi, edi                                       // 0x0088dc56    8bf7
                         mov.s            ebp, ecx                                       // 0x0088dc58    8be9
                         mov.s            edi, edx                                       // 0x0088dc5a    8bfa
                         or               ecx, 0xffffffff                                // 0x0088dc5c    83c9ff
                         repne scasb                                                     // 0x0088dc5f    f2ae
                         mov.s            ecx, ebp                                       // 0x0088dc61    8bcd
                         dec              edi                                            // 0x0088dc63    4f
                         shr              ecx, 2                                         // 0x0088dc64    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dc67    f3a5
                         {disp32} mov     eax, dword ptr [ebx + 0x000004fc]              // 0x0088dc69    8b83fc040000
                         mov.s            ecx, ebp                                       // 0x0088dc6f    8bcd
                         and              ecx, 0x03                                      // 0x0088dc71    83e103
                         xor.s            edx, edx                                       // 0x0088dc74    33d2
                         test             eax, eax                                       // 0x0088dc76    85c0
                         rep movsb                                                       // 0x0088dc78    f3a4
                         {disp8} je       _jmp_addr_0x0088dcaa                           // 0x0088dc7a    742e
                         mov              edi, 0x00be95c8                                // 0x0088dc7c    bfc895be00
                         or               ecx, 0xffffffff                                // 0x0088dc81    83c9ff
                         xor.s            eax, eax                                       // 0x0088dc84    33c0
                         {disp8} lea      ebp, dword ptr [esp + 0x10]                    // 0x0088dc86    8d6c2410
                         repne scasb                                                     // 0x0088dc8a    f2ae
                         not              ecx                                            // 0x0088dc8c    f7d1
                         sub.s            edi, ecx                                       // 0x0088dc8e    2bf9
                         mov.s            esi, edi                                       // 0x0088dc90    8bf7
                         mov.s            edi, ebp                                       // 0x0088dc92    8bfd
                         mov.s            ebp, ecx                                       // 0x0088dc94    8be9
                         or               ecx, 0xffffffff                                // 0x0088dc96    83c9ff
                         repne scasb                                                     // 0x0088dc99    f2ae
                         mov.s            ecx, ebp                                       // 0x0088dc9b    8bcd
                         dec              edi                                            // 0x0088dc9d    4f
                         shr              ecx, 2                                         // 0x0088dc9e    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dca1    f3a5
                         mov.s            ecx, ebp                                       // 0x0088dca3    8bcd
                         and              ecx, 0x03                                      // 0x0088dca5    83e103
                         rep movsb                                                       // 0x0088dca8    f3a4
_jmp_addr_0x0088dcaa:    {disp32} mov     eax, dword ptr [ebx + 0x000004d0]              // 0x0088dcaa    8b83d0040000
                         test             eax, eax                                       // 0x0088dcb0    85c0
                         {disp8} je       _jmp_addr_0x0088dce2                           // 0x0088dcb2    742e
                         mov              edi, 0x00c3a940                                // 0x0088dcb4    bf40a9c300
                         or               ecx, 0xffffffff                                // 0x0088dcb9    83c9ff
                         xor.s            eax, eax                                       // 0x0088dcbc    33c0
                         {disp8} lea      ebp, dword ptr [esp + 0x10]                    // 0x0088dcbe    8d6c2410
                         repne scasb                                                     // 0x0088dcc2    f2ae
                         not              ecx                                            // 0x0088dcc4    f7d1
                         sub.s            edi, ecx                                       // 0x0088dcc6    2bf9
                         mov.s            esi, edi                                       // 0x0088dcc8    8bf7
                         mov.s            edi, ebp                                       // 0x0088dcca    8bfd
                         mov.s            ebp, ecx                                       // 0x0088dccc    8be9
                         or               ecx, 0xffffffff                                // 0x0088dcce    83c9ff
                         repne scasb                                                     // 0x0088dcd1    f2ae
                         mov.s            ecx, ebp                                       // 0x0088dcd3    8bcd
                         dec              edi                                            // 0x0088dcd5    4f
                         shr              ecx, 2                                         // 0x0088dcd6    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dcd9    f3a5
                         mov.s            ecx, ebp                                       // 0x0088dcdb    8bcd
                         and              ecx, 0x03                                      // 0x0088dcdd    83e103
                         rep movsb                                                       // 0x0088dce0    f3a4
_jmp_addr_0x0088dce2:    {disp32} mov     eax, dword ptr [ebx + 0x00000618]              // 0x0088dce2    8b8318060000
                         test             eax, eax                                       // 0x0088dce8    85c0
                         {disp8} je       _jmp_addr_0x0088dd1c                           // 0x0088dcea    7430
                         mov              edi, 0x009d03fc                                // 0x0088dcec    bffc039d00
                         or               ecx, 0xffffffff                                // 0x0088dcf1    83c9ff
                         xor.s            eax, eax                                       // 0x0088dcf4    33c0
                         xor.s            edx, edx                                       // 0x0088dcf6    33d2
                         repne scasb                                                     // 0x0088dcf8    f2ae
                         not              ecx                                            // 0x0088dcfa    f7d1
                         sub.s            edi, ecx                                       // 0x0088dcfc    2bf9
                         {disp8} lea      ebp, dword ptr [esp + 0x10]                    // 0x0088dcfe    8d6c2410
                         mov.s            esi, edi                                       // 0x0088dd02    8bf7
                         mov.s            edi, ebp                                       // 0x0088dd04    8bfd
                         mov.s            ebp, ecx                                       // 0x0088dd06    8be9
                         or               ecx, 0xffffffff                                // 0x0088dd08    83c9ff
                         repne scasb                                                     // 0x0088dd0b    f2ae
                         mov.s            ecx, ebp                                       // 0x0088dd0d    8bcd
                         dec              edi                                            // 0x0088dd0f    4f
                         shr              ecx, 2                                         // 0x0088dd10    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dd13    f3a5
                         mov.s            ecx, ebp                                       // 0x0088dd15    8bcd
                         and              ecx, 0x03                                      // 0x0088dd17    83e103
                         rep movsb                                                       // 0x0088dd1a    f3a4
_jmp_addr_0x0088dd1c:    {disp32} mov     eax, dword ptr [esp + 0x000000a0]              // 0x0088dd1c    8b8424a0000000
                         test             eax, eax                                       // 0x0088dd23    85c0
                         {disp8} je       _jmp_addr_0x0088dd2f                           // 0x0088dd25    7408
                         test             edx, edx                                       // 0x0088dd27    85d2
                         {disp32} jne     _jmp_addr_0x0088de83                           // 0x0088dd29    0f8554010000
_jmp_addr_0x0088dd2f:    mov              edi, 0x00c3a8cc                                // 0x0088dd2f    bfcca8c300
                         or               ecx, 0xffffffff                                // 0x0088dd34    83c9ff
                         xor.s            eax, eax                                       // 0x0088dd37    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0088dd39    8d542410
                         repne scasb                                                     // 0x0088dd3d    f2ae
                         not              ecx                                            // 0x0088dd3f    f7d1
                         sub.s            edi, ecx                                       // 0x0088dd41    2bf9
                         mov.s            esi, edi                                       // 0x0088dd43    8bf7
                         mov.s            ebp, ecx                                       // 0x0088dd45    8be9
                         mov.s            edi, edx                                       // 0x0088dd47    8bfa
                         or               ecx, 0xffffffff                                // 0x0088dd49    83c9ff
                         repne scasb                                                     // 0x0088dd4c    f2ae
                         mov.s            ecx, ebp                                       // 0x0088dd4e    8bcd
                         dec              edi                                            // 0x0088dd50    4f
                         shr              ecx, 2                                         // 0x0088dd51    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dd54    f3a5
                         {disp32} mov     eax, dword ptr [ebx + 0x00000618]              // 0x0088dd56    8b8318060000
                         mov.s            ecx, ebp                                       // 0x0088dd5c    8bcd
                         and              ecx, 0x03                                      // 0x0088dd5e    83e103
                         test             eax, eax                                       // 0x0088dd61    85c0
                         rep movsb                                                       // 0x0088dd63    f3a4
                         {disp32} je      _jmp_addr_0x0088ddf2                           // 0x0088dd65    0f8487000000
                         or               ecx, 0xffffffff                                // 0x0088dd6b    83c9ff
                         mov              edi, 0x00c3a934                                // 0x0088dd6e    bf34a9c300
                         xor.s            eax, eax                                       // 0x0088dd73    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0088dd75    8d542410
                         repne scasb                                                     // 0x0088dd79    f2ae
                         not              ecx                                            // 0x0088dd7b    f7d1
                         sub.s            edi, ecx                                       // 0x0088dd7d    2bf9
                         mov.s            ebp, ecx                                       // 0x0088dd7f    8be9
                         mov.s            esi, edi                                       // 0x0088dd81    8bf7
                         or               ecx, 0xffffffff                                // 0x0088dd83    83c9ff
                         mov.s            edi, edx                                       // 0x0088dd86    8bfa
                         repne scasb                                                     // 0x0088dd88    f2ae
                         mov.s            ecx, ebp                                       // 0x0088dd8a    8bcd
                         dec              edi                                            // 0x0088dd8c    4f
                         shr              ecx, 2                                         // 0x0088dd8d    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dd90    f3a5
                         mov.s            ecx, ebp                                       // 0x0088dd92    8bcd
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0088dd94    8d542410
                         and              ecx, 0x03                                      // 0x0088dd98    83e103
                         rep movsb                                                       // 0x0088dd9b    f3a4
                         {disp32} lea     edi, dword ptr [ebx + 0x0000061c]              // 0x0088dd9d    8dbb1c060000
                         or               ecx, 0xffffffff                                // 0x0088dda3    83c9ff
                         repne scasb                                                     // 0x0088dda6    f2ae
                         not              ecx                                            // 0x0088dda8    f7d1
                         sub.s            edi, ecx                                       // 0x0088ddaa    2bf9
                         mov.s            esi, edi                                       // 0x0088ddac    8bf7
                         mov.s            ebp, ecx                                       // 0x0088ddae    8be9
                         mov.s            edi, edx                                       // 0x0088ddb0    8bfa
                         or               ecx, 0xffffffff                                // 0x0088ddb2    83c9ff
                         repne scasb                                                     // 0x0088ddb5    f2ae
                         mov.s            ecx, ebp                                       // 0x0088ddb7    8bcd
                         dec              edi                                            // 0x0088ddb9    4f
                         shr              ecx, 2                                         // 0x0088ddba    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088ddbd    f3a5
                         mov.s            ecx, ebp                                       // 0x0088ddbf    8bcd
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0088ddc1    8d542410
                         and              ecx, 0x03                                      // 0x0088ddc5    83e103
                         rep movsb                                                       // 0x0088ddc8    f3a4
                         mov              edi, 0x00c3a8cc                                // 0x0088ddca    bfcca8c300
                         or               ecx, 0xffffffff                                // 0x0088ddcf    83c9ff
                         repne scasb                                                     // 0x0088ddd2    f2ae
                         not              ecx                                            // 0x0088ddd4    f7d1
                         sub.s            edi, ecx                                       // 0x0088ddd6    2bf9
                         mov.s            esi, edi                                       // 0x0088ddd8    8bf7
                         mov.s            ebp, ecx                                       // 0x0088ddda    8be9
                         mov.s            edi, edx                                       // 0x0088dddc    8bfa
                         or               ecx, 0xffffffff                                // 0x0088ddde    83c9ff
                         repne scasb                                                     // 0x0088dde1    f2ae
                         mov.s            ecx, ebp                                       // 0x0088dde3    8bcd
                         dec              edi                                            // 0x0088dde5    4f
                         shr              ecx, 2                                         // 0x0088dde6    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dde9    f3a5
                         mov.s            ecx, ebp                                       // 0x0088ddeb    8bcd
                         and              ecx, 0x03                                      // 0x0088dded    83e103
                         rep movsb                                                       // 0x0088ddf0    f3a4
_jmp_addr_0x0088ddf2:    {disp32} mov     eax, dword ptr [esp + 0x0000009c]              // 0x0088ddf2    8b84249c000000
                         test             eax, eax                                       // 0x0088ddf9    85c0
                         {disp8} je       _jmp_addr_0x0088de23                           // 0x0088ddfb    7426
                         {disp32} mov     ecx, dword ptr [esp + 0x00000098]              // 0x0088ddfd    8b8c2498000000
                         {disp8} lea      eax, dword ptr [esp + 0x10]                    // 0x0088de04    8d442410
                         push             eax                                            // 0x0088de08    50
                         push             0x00c3a930                                     // 0x0088de09    6830a9c300
                         push             ecx                                            // 0x0088de0e    51
                         push             ebx                                            // 0x0088de0f    53
                         call             _jmp_addr_0x008860e0                           // 0x0088de10    e8cb82ffff
                         add              esp, 0x10                                      // 0x0088de15    83c410
                         pop              edi                                            // 0x0088de18    5f
                         pop              esi                                            // 0x0088de19    5e
                         pop              ebp                                            // 0x0088de1a    5d
                         pop              ebx                                            // 0x0088de1b    5b
                         add              esp, 0x00000080                                // 0x0088de1c    81c480000000
                         ret                                                             // 0x0088de22    c3
_jmp_addr_0x0088de23:    {disp32} mov     eax, dword ptr [esp + 0x00000098]              // 0x0088de23    8b842498000000
                         test             eax, eax                                       // 0x0088de2a    85c0
                         {disp8} je       _jmp_addr_0x0088de4d                           // 0x0088de2c    741f
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0088de2e    8d542410
                         push             edx                                            // 0x0088de32    52
                         push             0x00c3a930                                     // 0x0088de33    6830a9c300
                         push             eax                                            // 0x0088de38    50
                         push             ebx                                            // 0x0088de39    53
                         call             _jmp_addr_0x00886030                           // 0x0088de3a    e8f181ffff
                         add              esp, 0x10                                      // 0x0088de3f    83c410
                         pop              edi                                            // 0x0088de42    5f
                         pop              esi                                            // 0x0088de43    5e
                         pop              ebp                                            // 0x0088de44    5d
                         pop              ebx                                            // 0x0088de45    5b
                         add              esp, 0x00000080                                // 0x0088de46    81c480000000
                         ret                                                             // 0x0088de4c    c3
_jmp_addr_0x0088de4d:    {disp32} lea     esi, dword ptr [ebx + 0x000000dc]              // 0x0088de4d    8db3dc000000
                         {disp32} lea     edi, dword ptr [ebx + 0x00000268]              // 0x0088de53    8dbb68020000
                         mov              ebp, 0x00000003                                // 0x0088de59    bd03000000
_jmp_addr_0x0088de5e:    cmp              dword ptr [edi], 0x00                          // 0x0088de5e    833f00
                         {disp8} je       _jmp_addr_0x0088de77                           // 0x0088de61    7414
                         {disp8} lea      eax, dword ptr [esp + 0x10]                    // 0x0088de63    8d442410
                         push             eax                                            // 0x0088de67    50
                         push             0x00c3a930                                     // 0x0088de68    6830a9c300
                         push             esi                                            // 0x0088de6d    56
                         push             ebx                                            // 0x0088de6e    53
                         call             _jmp_addr_0x00886030                           // 0x0088de6f    e8bc81ffff
                         add              esp, 0x10                                      // 0x0088de74    83c410
_jmp_addr_0x0088de77:    add              edi, 0x04                                      // 0x0088de77    83c704
                         add              esi, 0x00000080                                // 0x0088de7a    81c680000000
                         dec              ebp                                            // 0x0088de80    4d
                         {disp8} jne      _jmp_addr_0x0088de5e                           // 0x0088de81    75db
_jmp_addr_0x0088de83:    pop              edi                                            // 0x0088de83    5f
                         pop              esi                                            // 0x0088de84    5e
                         pop              ebp                                            // 0x0088de85    5d
                         pop              ebx                                            // 0x0088de86    5b
                         add              esp, 0x00000080                                // 0x0088de87    81c480000000
                         ret                                                             // 0x0088de8d    c3
                         nop                                                             // 0x0088de8e    90
                         nop                                                             // 0x0088de8f    90
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088de90    8b4c2408
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x0088de94    8b44240c
                         push             ecx                                            // 0x0088de98    51
                         push             eax                                            // 0x0088de99    50
                         {disp32} mov     dword ptr [eax + 0x0000069c], 0x00000001       // 0x0088de9a    c7809c06000001000000
                         call             _jmp_addr_0x00889550                           // 0x0088dea4    e8a7b6ffff
                         add              esp, 0x08                                      // 0x0088dea9    83c408
                         ret                                                             // 0x0088deac    c3
                         nop                                                             // 0x0088dead    90
                         nop                                                             // 0x0088deae    90
                         nop                                                             // 0x0088deaf    90
                         push             esi                                            // 0x0088deb0    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x0088deb1    8b74240c
                         test             esi, esi                                       // 0x0088deb5    85f6
                         push             edi                                            // 0x0088deb7    57
                         {disp8} je       _jmp_addr_0x0088df20                           // 0x0088deb8    7466
                         cmp              byte ptr [esi], 0x00                           // 0x0088deba    803e00
                         {disp8} je       _jmp_addr_0x0088df20                           // 0x0088debd    7461
                         {disp8} mov      edi, dword ptr [esp + 0x14]                    // 0x0088debf    8b7c2414
                         push             edi                                            // 0x0088dec3    57
                         call             _jmp_addr_0x0088df30                           // 0x0088dec4    e867000000
                         add              esp, 0x04                                      // 0x0088dec9    83c404
                         test             eax, eax                                       // 0x0088decc    85c0
                         {disp8} je       _jmp_addr_0x0088df07                           // 0x0088dece    7437
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                    // 0x0088ded0    8b7c241c
                         push             esi                                            // 0x0088ded4    56
                         push             edi                                            // 0x0088ded5    57
                         call             _jmp_addr_0x0088ca00                           // 0x0088ded6    e825ebffff
                         add              esp, 0x08                                      // 0x0088dedb    83c408
                         test             eax, eax                                       // 0x0088dede    85c0
                         {disp8} je       _jmp_addr_0x0088def0                           // 0x0088dee0    740e
                         push             0x0                                            // 0x0088dee2    6a00
                         push             0x0                                            // 0x0088dee4    6a00
                         push             eax                                            // 0x0088dee6    50
                         push             edi                                            // 0x0088dee7    57
                         call             _jmp_addr_0x0088e020                           // 0x0088dee8    e833010000
                         add              esp, 0x10                                      // 0x0088deed    83c410
_jmp_addr_0x0088def0:    push             0x00faac48                                     // 0x0088def0    6848acfa00
                         push             0x00faae48                                     // 0x0088def5    6848aefa00
                         push             esi                                            // 0x0088defa    56
                         push             edi                                            // 0x0088defb    57
                         call             _jmp_addr_0x00888e20                           // 0x0088defc    e81fafffff
                         add              esp, 0x10                                      // 0x0088df01    83c410
                         pop              edi                                            // 0x0088df04    5f
                         pop              esi                                            // 0x0088df05    5e
                         ret                                                             // 0x0088df06    c3
_jmp_addr_0x0088df07:    {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x0088df07    8b442418
                         cmp              eax, 0x03                                      // 0x0088df0b    83f803
                         {disp8} je       _jmp_addr_0x0088df20                           // 0x0088df0e    7410
                         push             eax                                            // 0x0088df10    50
                         {disp8} mov      eax, dword ptr [esp + 0x20]                    // 0x0088df11    8b442420
                         push             edi                                            // 0x0088df15    57
                         push             esi                                            // 0x0088df16    56
                         push             eax                                            // 0x0088df17    50
                         call             _jmp_addr_0x00888cd0                           // 0x0088df18    e8b3adffff
                         add              esp, 0x10                                      // 0x0088df1d    83c410
_jmp_addr_0x0088df20:    pop              edi                                            // 0x0088df20    5f
                         pop              esi                                            // 0x0088df21    5e
                         ret                                                             // 0x0088df22    c3
                         nop                                                             // 0x0088df23    90
                         nop                                                             // 0x0088df24    90
                         nop                                                             // 0x0088df25    90
                         nop                                                             // 0x0088df26    90
                         nop                                                             // 0x0088df27    90
                         nop                                                             // 0x0088df28    90
                         nop                                                             // 0x0088df29    90
                         nop                                                             // 0x0088df2a    90
                         nop                                                             // 0x0088df2b    90
                         nop                                                             // 0x0088df2c    90
                         nop                                                             // 0x0088df2d    90
                         nop                                                             // 0x0088df2e    90
                         nop                                                             // 0x0088df2f    90
_jmp_addr_0x0088df30:    {disp8} mov      edx, dword ptr [esp + 0x04]                    // 0x0088df30    8b542404
                         push             ebp                                            // 0x0088df34    55
                         push             esi                                            // 0x0088df35    56
                         push             edi                                            // 0x0088df36    57
                         test             edx, edx                                       // 0x0088df37    85d2
                         {disp32} je      _jmp_addr_0x0088e00c                           // 0x0088df39    0f84cd000000
                         mov.s            edi, edx                                       // 0x0088df3f    8bfa
                         or               ecx, 0xffffffff                                // 0x0088df41    83c9ff
                         xor.s            eax, eax                                       // 0x0088df44    33c0
                         repne scasb                                                     // 0x0088df46    f2ae
                         not              ecx                                            // 0x0088df48    f7d1
                         dec              ecx                                            // 0x0088df4a    49
                         cmp              ecx, 0x04                                      // 0x0088df4b    83f904
                         {disp32} jb      _jmp_addr_0x0088e00c                           // 0x0088df4e    0f82b8000000
                         cmp              byte ptr [edx], 0x40                           // 0x0088df54    803a40
                         {disp32} jne     _jmp_addr_0x0088e00c                           // 0x0088df57    0f85af000000
                         cmp              byte ptr [edx + 0x01], 0x40                    // 0x0088df5d    807a0140
                         {disp32} jne     _jmp_addr_0x0088e00c                           // 0x0088df61    0f85a5000000
                         {disp8} mov      al, byte ptr [edx + 0x02]                      // 0x0088df67    8a4202
                         cmp              al, 0x40                                       // 0x0088df6a    3c40
                         {disp8} je       _jmp_addr_0x0088df76                           // 0x0088df6c    7408
                         cmp              al, 0x3f                                       // 0x0088df6e    3c3f
                         {disp32} jne     _jmp_addr_0x0088e00c                           // 0x0088df70    0f8596000000
_jmp_addr_0x0088df76:    {disp8} mov      al, byte ptr [edx + 0x03]                      // 0x0088df76    8a4203
                         {disp8} lea      ebp, dword ptr [edx + 0x03]                    // 0x0088df79    8d6a03
                         cmp              al, 0x20                                       // 0x0088df7c    3c20
                         {disp32} je      _jmp_addr_0x0088e00c                           // 0x0088df7e    0f8488000000
                         push             0x00c3a954                                     // 0x0088df84    6854a9c300
                         push             ebp                                            // 0x0088df89    55
                         call             _strcspn                                       // 0x0088df8a    e861adf3ff
                         add              esp, 0x08                                      // 0x0088df8f    83c408
                         cmp              eax, 0x08                                      // 0x0088df92    83f808
                         {disp8} jge      _jmp_addr_0x0088e00c                           // 0x0088df95    7d75
                         mov.s            ecx, eax                                       // 0x0088df97    8bc8
                         mov.s            esi, ebp                                       // 0x0088df99    8bf5
                         mov.s            edx, ecx                                       // 0x0088df9b    8bd1
                         mov              edi, 0x00faae48                                // 0x0088df9d    bf48aefa00
                         shr              ecx, 2                                         // 0x0088dfa2    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dfa5    f3a5
                         mov.s            ecx, edx                                       // 0x0088dfa7    8bca
                         add.s            ebp, eax                                       // 0x0088dfa9    03e8
                         and              ecx, 0x03                                      // 0x0088dfab    83e103
                         rep movsb                                                       // 0x0088dfae    f3a4
                         {disp32} mov     byte ptr [eax + 0x00faae48], 0x00              // 0x0088dfb0    c68048aefa0000
                         {disp8} mov      al, byte ptr [ebp + 0x00]                      // 0x0088dfb7    8a4500
                         test             al, al                                         // 0x0088dfba    84c0
                         {disp8} je       _jmp_addr_0x0088dffc                           // 0x0088dfbc    743e
                         inc              ebp                                            // 0x0088dfbe    45
                         or               ecx, 0xffffffff                                // 0x0088dfbf    83c9ff
                         mov.s            edi, ebp                                       // 0x0088dfc2    8bfd
                         xor.s            eax, eax                                       // 0x0088dfc4    33c0
                         repne scasb                                                     // 0x0088dfc6    f2ae
                         not              ecx                                            // 0x0088dfc8    f7d1
                         dec              ecx                                            // 0x0088dfca    49
                         cmp              ecx, 0x00000200                                // 0x0088dfcb    81f900020000
                         {disp8} jae      _jmp_addr_0x0088e00c                           // 0x0088dfd1    7339
                         mov.s            edi, ebp                                       // 0x0088dfd3    8bfd
                         or               ecx, 0xffffffff                                // 0x0088dfd5    83c9ff
                         repne scasb                                                     // 0x0088dfd8    f2ae
                         not              ecx                                            // 0x0088dfda    f7d1
                         sub.s            edi, ecx                                       // 0x0088dfdc    2bf9
                         mov.s            eax, ecx                                       // 0x0088dfde    8bc1
                         mov.s            esi, edi                                       // 0x0088dfe0    8bf7
                         mov              edi, 0x00faac48                                // 0x0088dfe2    bf48acfa00
                         shr              ecx, 2                                         // 0x0088dfe7    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088dfea    f3a5
                         mov.s            ecx, eax                                       // 0x0088dfec    8bc8
                         mov              eax, 0x00000001                                // 0x0088dfee    b801000000
                         and              ecx, 0x03                                      // 0x0088dff3    83e103
                         rep movsb                                                       // 0x0088dff6    f3a4
                         pop              edi                                            // 0x0088dff8    5f
                         pop              esi                                            // 0x0088dff9    5e
                         pop              ebp                                            // 0x0088dffa    5d
                         ret                                                             // 0x0088dffb    c3
_jmp_addr_0x0088dffc:    pop              edi                                            // 0x0088dffc    5f
                         pop              esi                                            // 0x0088dffd    5e
                         {disp32} mov     byte ptr [data_bytes + 0x5e4c48], 0x00         // 0x0088dffe    c60548acfa0000
                         mov              eax, 0x00000001                                // 0x0088e005    b801000000
                         pop              ebp                                            // 0x0088e00a    5d
                         ret                                                             // 0x0088e00b    c3
_jmp_addr_0x0088e00c:    pop              edi                                            // 0x0088e00c    5f
                         pop              esi                                            // 0x0088e00d    5e
                         xor.s            eax, eax                                       // 0x0088e00e    33c0
                         pop              ebp                                            // 0x0088e010    5d
                         ret                                                             // 0x0088e011    c3
                         nop                                                             // 0x0088e012    90
                         nop                                                             // 0x0088e013    90
                         nop                                                             // 0x0088e014    90
                         nop                                                             // 0x0088e015    90
                         nop                                                             // 0x0088e016    90
                         nop                                                             // 0x0088e017    90
                         nop                                                             // 0x0088e018    90
                         nop                                                             // 0x0088e019    90
                         nop                                                             // 0x0088e01a    90
                         nop                                                             // 0x0088e01b    90
                         nop                                                             // 0x0088e01c    90
                         nop                                                             // 0x0088e01d    90
                         nop                                                             // 0x0088e01e    90
                         nop                                                             // 0x0088e01f    90
_jmp_addr_0x0088e020:    push             ebx                                            // 0x0088e020    53
                         push             ebp                                            // 0x0088e021    55
                         push             esi                                            // 0x0088e022    56
                         push             edi                                            // 0x0088e023    57
                         push             0x2                                            // 0x0088e024    6a02
                         push             0x00c3a930                                     // 0x0088e026    6830a9c300
                         push             0x00faae48                                     // 0x0088e02b    6848aefa00
                         call             _strncmp                                       // 0x0088e030    e86bb1f3ff
                         add              esp, 0x0c                                      // 0x0088e035    83c40c
                         test             eax, eax                                       // 0x0088e038    85c0
                         {disp32} jne     _jmp_addr_0x0088e0c2                           // 0x0088e03a    0f8582000000
                         {disp8} mov      ebx, dword ptr [esp + 0x14]                    // 0x0088e040    8b5c2414
                         {disp32} mov     eax, dword ptr [ebx + 0x00000270]              // 0x0088e044    8b8370020000
                         test             eax, eax                                       // 0x0088e04a    85c0
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e04c    0f849d020000
                         {disp8} mov      edi, dword ptr [esp + 0x18]                    // 0x0088e052    8b7c2418
                         {disp32} mov     eax, dword ptr [edi + 0x00000088]              // 0x0088e056    8b8788000000
                         test             eax, eax                                       // 0x0088e05c    85c0
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e05e    0f848b020000
                         push             0x00c3a948                                     // 0x0088e064    6848a9c300
                         push             0x00faac48                                     // 0x0088e069    6848acfa00
                         call             _strstr                                        // 0x0088e06e    e8edb4f3ff
                         mov.s            esi, eax                                       // 0x0088e073    8bf0
                         add              esp, 0x08                                      // 0x0088e075    83c408
                         test             esi, esi                                       // 0x0088e078    85f6
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e07a    0f846f020000
                         add              esi, 0x09                                      // 0x0088e080    83c609
                         push             0x00c3a95c                                     // 0x0088e083    685ca9c300
                         push             esi                                            // 0x0088e088    56
                         call             _strcspn                                       // 0x0088e089    e862acf3ff
                         mov              dl, byte ptr [eax + esi * 0x1]                 // 0x0088e08e    8a1430
                         add              esp, 0x08                                      // 0x0088e091    83c408
                         xor.s            ecx, ecx                                       // 0x0088e094    33c9
                         cmp              dl, 0x72                                       // 0x0088e096    80fa72
                         sete             cl                                             // 0x0088e099    0f94c1
                         mov.s            eax, ecx                                       // 0x0088e09c    8bc1
                         {disp32} mov     ecx, dword ptr [edi + 0x000000ac]              // 0x0088e09e    8b8fac000000
                         cmp.s            eax, ecx                                       // 0x0088e0a4    3bc1
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e0a6    0f8443020000
                         push             eax                                            // 0x0088e0ac    50
                         push             edi                                            // 0x0088e0ad    57
                         push             ebx                                            // 0x0088e0ae    53
                         {disp32} mov     dword ptr [edi + 0x000000ac], eax              // 0x0088e0af    8987ac000000
                         call             _jmp_addr_0x00888ee0                           // 0x0088e0b5    e826aeffff
                         add              esp, 0x0c                                      // 0x0088e0ba    83c40c
                         pop              edi                                            // 0x0088e0bd    5f
                         pop              esi                                            // 0x0088e0be    5e
                         pop              ebp                                            // 0x0088e0bf    5d
                         pop              ebx                                            // 0x0088e0c0    5b
                         ret                                                             // 0x0088e0c1    c3
_jmp_addr_0x0088e0c2:    push             0x2                                            // 0x0088e0c2    6a02
                         push             0x00c3a958                                     // 0x0088e0c4    6858a9c300
                         push             0x00faae48                                     // 0x0088e0c9    6848aefa00
                         call             _strncmp                                       // 0x0088e0ce    e8cdb0f3ff
                         add              esp, 0x0c                                      // 0x0088e0d3    83c40c
                         test             eax, eax                                       // 0x0088e0d6    85c0
                         {disp8} jne      _jmp_addr_0x0088e101                           // 0x0088e0d8    7527
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x0088e0da    8b44241c
                         test             eax, eax                                       // 0x0088e0de    85c0
                         {disp32} jne     _jmp_addr_0x0088e2ef                           // 0x0088e0e0    0f8509020000
                         {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x0088e0e6    8b542418
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x0088e0ea    8b442414
                         push             0x0                                            // 0x0088e0ee    6a00
                         push             0x1                                            // 0x0088e0f0    6a01
                         push             edx                                            // 0x0088e0f2    52
                         push             eax                                            // 0x0088e0f3    50
                         call             _jmp_addr_0x0088dc00                           // 0x0088e0f4    e807fbffff
                         add              esp, 0x10                                      // 0x0088e0f9    83c410
                         pop              edi                                            // 0x0088e0fc    5f
                         pop              esi                                            // 0x0088e0fd    5e
                         pop              ebp                                            // 0x0088e0fe    5d
                         pop              ebx                                            // 0x0088e0ff    5b
                         ret                                                             // 0x0088e100    c3
_jmp_addr_0x0088e101:    push             0x2                                            // 0x0088e101    6a02
                         push             0x00c3a374                                     // 0x0088e103    6874a3c300
                         push             0x00faae48                                     // 0x0088e108    6848aefa00
                         call             _strncmp                                       // 0x0088e10d    e88eb0f3ff
                         add              esp, 0x0c                                      // 0x0088e112    83c40c
                         test             eax, eax                                       // 0x0088e115    85c0
                         {disp32} jne     _jmp_addr_0x0088e1a5                           // 0x0088e117    0f8588000000
                         {disp8} mov      esi, dword ptr [esp + 0x14]                    // 0x0088e11d    8b742414
                         {disp32} mov     eax, dword ptr [esi + 0x00000270]              // 0x0088e121    8b8670020000
                         test             eax, eax                                       // 0x0088e127    85c0
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e129    0f84c0010000
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x0088e12f    8b44241c
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                    // 0x0088e133    8b4c2420
                         test             eax, eax                                       // 0x0088e137    85c0
                         {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x0088e139    8b442418
                         {disp8} je       _jmp_addr_0x0088e14a                           // 0x0088e13d    740b
                         cmp              ecx, 0x02                                      // 0x0088e13f    83f902
                         {disp32} jne     _jmp_addr_0x0088e2ef                           // 0x0088e142    0f85a7010000
                         {disp8} jmp      _jmp_addr_0x0088e158                           // 0x0088e148    eb0e
_jmp_addr_0x0088e14a:    {disp32} mov     edx, dword ptr [eax + 0x00000088]              // 0x0088e14a    8b9088000000
                         test             edx, edx                                       // 0x0088e150    85d2
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e152    0f8497010000
_jmp_addr_0x0088e158:    {disp32} mov     edx, dword ptr [esi + 0x000004c8]              // 0x0088e158    8b96c8040000
                         test             edx, edx                                       // 0x0088e15e    85d2
                         {disp32} jne     _jmp_addr_0x0088e2ef                           // 0x0088e160    0f8589010000
                         {disp32} mov     edx, dword ptr [eax + ecx * 0x4 + 0x0000008c]  // 0x0088e166    8b94888c000000
                         test             edx, edx                                       // 0x0088e16d    85d2
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e16f    0f847a010000
                         push             0x0                                            // 0x0088e175    6a00
                         push             0x0                                            // 0x0088e177    6a00
                         push             0x0                                            // 0x0088e179    6a00
                         push             esi                                            // 0x0088e17b    56
                         {disp32} mov     dword ptr [esi + 0x000004d0], 0x00000001       // 0x0088e17c    c786d004000001000000
                         call             _jmp_addr_0x0088dc00                           // 0x0088e186    e875faffff
                         {disp32} mov     ecx, dword ptr [esi + 0x000004f8]              // 0x0088e18b    8b8ef8040000
                         push             0x00faac48                                     // 0x0088e191    6848acfa00
                         push             ecx                                            // 0x0088e196    51
                         push             esi                                            // 0x0088e197    56
                         call             _jmp_addr_0x00888fa0                           // 0x0088e198    e803aeffff
                         add              esp, 0x1c                                      // 0x0088e19d    83c41c
                         pop              edi                                            // 0x0088e1a0    5f
                         pop              esi                                            // 0x0088e1a1    5e
                         pop              ebp                                            // 0x0088e1a2    5d
                         pop              ebx                                            // 0x0088e1a3    5b
                         ret                                                             // 0x0088e1a4    c3
_jmp_addr_0x0088e1a5:    push             0x2                                            // 0x0088e1a5    6a02
                         push             0x00c3a710                                     // 0x0088e1a7    6810a7c300
                         push             0x00faae48                                     // 0x0088e1ac    6848aefa00
                         call             _strncmp                                       // 0x0088e1b1    e8eaaff3ff
                         add              esp, 0x0c                                      // 0x0088e1b6    83c40c
                         test             eax, eax                                       // 0x0088e1b9    85c0
                         {disp32} jne     _jmp_addr_0x0088e2ef                           // 0x0088e1bb    0f852e010000
                         {disp8} mov      ebp, dword ptr [esp + 0x1c]                    // 0x0088e1c1    8b6c241c
                         {disp8} mov      ebx, dword ptr [esp + 0x20]                    // 0x0088e1c5    8b5c2420
                         test             ebp, ebp                                       // 0x0088e1c9    85ed
                         {disp8} je       _jmp_addr_0x0088e1e0                           // 0x0088e1cb    7413
                         {disp8} mov      edx, dword ptr [esp + 0x14]                    // 0x0088e1cd    8b542414
                         {disp32} mov     eax, dword ptr [edx + ebx * 0x4 + 0x00000434]  // 0x0088e1d1    8b849a34040000
                         test             eax, eax                                       // 0x0088e1d8    85c0
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e1da    0f840f010000
_jmp_addr_0x0088e1e0:    {disp32} mov     al, byte ptr [data_bytes + 0x5e4c48]           // 0x0088e1e0    a048acfa00
                         test             al, al                                         // 0x0088e1e5    84c0
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e1e7    0f8402010000
                         push             0x00faac48                                     // 0x0088e1ed    6848acfa00
                         call             _jmp_addr_0x0088ee00                           // 0x0088e1f2    e8090c0000
                         push             0x00faac53                                     // 0x0088e1f7    6853acfa00
                         mov.s            esi, eax                                       // 0x0088e1fc    8bf0
                         call             _atoi                           // 0x0088e1fe    e88483f3ff
                         {disp8} mov      dword ptr [esp + 0x24], eax                    // 0x0088e203    89442424
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x0088e207    8b44241c
                         push             esi                                            // 0x0088e20b    56
                         push             eax                                            // 0x0088e20c    50
                         call             _jmp_addr_0x0088cb20                           // 0x0088e20d    e80ee9ffff
                         mov.s            edi, eax                                       // 0x0088e212    8bf8
                         add              esp, 0x10                                      // 0x0088e214    83c410
                         test             edi, edi                                       // 0x0088e217    85ff
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e219    0f84d0000000
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x0088e21f    8b742418
                         push             edi                                            // 0x0088e223    57
                         push             esi                                            // 0x0088e224    56
                         call             __strcmpi                                      // 0x0088e225    e8b68af3ff
                         add              esp, 0x08                                      // 0x0088e22a    83c408
                         test             eax, eax                                       // 0x0088e22d    85c0
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e22f    0f84ba000000
                         test             ebp, ebp                                       // 0x0088e235    85ed
                         {disp8} je       _jmp_addr_0x0088e24a                           // 0x0088e237    7411
                         {disp32} mov     eax, dword ptr [esi + ebx * 0x4 + 0x00000080]  // 0x0088e239    8b849e80000000
                         test             eax, eax                                       // 0x0088e240    85c0
                         {disp32} je      _jmp_addr_0x0088e2ef                           // 0x0088e242    0f84a7000000
                         {disp8} jmp      _jmp_addr_0x0088e291                           // 0x0088e248    eb47
_jmp_addr_0x0088e24a:    {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x0088e24a    8b4c2414
                         mov.s            edx, esi                                       // 0x0088e24e    8bd6
                         xor.s            ebx, ebx                                       // 0x0088e250    33db
                         add              ecx, 0x00000268                                // 0x0088e252    81c168020000
                         {disp32} lea     eax, dword ptr [edi + 0x00000080]              // 0x0088e258    8d8780000000
                         sub.s            edx, edi                                       // 0x0088e25e    2bd7
                         mov              esi, 0x00000003                                // 0x0088e260    be03000000
_jmp_addr_0x0088e265:    {disp32} mov     ebp, dword ptr [ecx + 0x000001cc]              // 0x0088e265    8ba9cc010000
                         test             ebp, ebp                                       // 0x0088e26b    85ed
                         {disp8} je       _jmp_addr_0x0088e284                           // 0x0088e26d    7415
                         cmp              dword ptr [ecx], 0x00                          // 0x0088e26f    833900
                         {disp8} je       _jmp_addr_0x0088e284                           // 0x0088e272    7410
                         cmp              dword ptr [edx + eax * 0x1], 0x00              // 0x0088e274    833c0200
                         {disp8} je       _jmp_addr_0x0088e284                           // 0x0088e278    740a
                         cmp              dword ptr [eax], 0x00                          // 0x0088e27a    833800
                         {disp8} je       _jmp_addr_0x0088e284                           // 0x0088e27d    7405
                         mov              ebx, 0x00000001                                // 0x0088e27f    bb01000000
_jmp_addr_0x0088e284:    add              ecx, 0x4                                       // 0x0088e284    83c104
                         add              eax, 0x04                                      // 0x0088e287    83c004
                         dec              esi                                            // 0x0088e28a    4e
                         {disp8} jne      _jmp_addr_0x0088e265                           // 0x0088e28b    75d8
                         test             ebx, ebx                                       // 0x0088e28d    85db
                         {disp8} je       _jmp_addr_0x0088e2ef                           // 0x0088e28f    745e
_jmp_addr_0x0088e291:    {disp8} mov      ebp, dword ptr [esp + 0x18]                    // 0x0088e291    8b6c2418
                         mov.s            esi, edi                                       // 0x0088e295    8bf7
                         mov.s            eax, ebp                                       // 0x0088e297    8bc5
_jmp_addr_0x0088e299:    mov              dl, byte ptr [eax]                             // 0x0088e299    8a10
                         mov              bl, byte ptr [esi]                             // 0x0088e29b    8a1e
                         mov.s            cl, dl                                         // 0x0088e29d    8aca
                         cmp.s            dl, bl                                         // 0x0088e29f    3ad3
                         {disp8} jne      _jmp_addr_0x0088e2c1                           // 0x0088e2a1    751e
                         test             cl, cl                                         // 0x0088e2a3    84c9
                         {disp8} je       _jmp_addr_0x0088e2bd                           // 0x0088e2a5    7416
                         {disp8} mov      dl, byte ptr [eax + 0x01]                      // 0x0088e2a7    8a5001
                         {disp8} mov      bl, byte ptr [esi + 0x01]                      // 0x0088e2aa    8a5e01
                         mov.s            cl, dl                                         // 0x0088e2ad    8aca
                         cmp.s            dl, bl                                         // 0x0088e2af    3ad3
                         {disp8} jne      _jmp_addr_0x0088e2c1                           // 0x0088e2b1    750e
                         add              eax, 0x02                                      // 0x0088e2b3    83c002
                         add              esi, 0x02                                      // 0x0088e2b6    83c602
                         test             cl, cl                                         // 0x0088e2b9    84c9
                         {disp8} jne      _jmp_addr_0x0088e299                           // 0x0088e2bb    75dc
_jmp_addr_0x0088e2bd:    xor.s            eax, eax                                       // 0x0088e2bd    33c0
                         {disp8} jmp      _jmp_addr_0x0088e2c6                           // 0x0088e2bf    eb05
_jmp_addr_0x0088e2c1:    sbb.s            eax, eax                                       // 0x0088e2c1    1bc0
                         sbb              eax, -0x01                                     // 0x0088e2c3    83d8ff
_jmp_addr_0x0088e2c6:    test             eax, eax                                       // 0x0088e2c6    85c0
                         {disp8} jg       _jmp_addr_0x0088e2ce                           // 0x0088e2c8    7f04
                         mov.s            esi, ebp                                       // 0x0088e2ca    8bf5
                         {disp8} jmp      _jmp_addr_0x0088e2d2                           // 0x0088e2cc    eb04
_jmp_addr_0x0088e2ce:    mov.s            esi, edi                                       // 0x0088e2ce    8bf7
                         mov.s            edi, ebp                                       // 0x0088e2d0    8bfd
_jmp_addr_0x0088e2d2:    {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x0088e2d2    8b5c241c
                         {disp8} mov      ebp, dword ptr [esp + 0x14]                    // 0x0088e2d6    8b6c2414
                         push             ebx                                            // 0x0088e2da    53
                         push             edi                                            // 0x0088e2db    57
                         push             esi                                            // 0x0088e2dc    56
                         push             ebp                                            // 0x0088e2dd    55
                         call             _jmp_addr_0x0088c460                           // 0x0088e2de    e87de1ffff
                         push             ebx                                            // 0x0088e2e3    53
                         push             edi                                            // 0x0088e2e4    57
                         push             esi                                            // 0x0088e2e5    56
                         push             ebp                                            // 0x0088e2e6    55
                         call             _jmp_addr_0x00889710                           // 0x0088e2e7    e824b4ffff
                         add              esp, 0x20                                      // 0x0088e2ec    83c420
_jmp_addr_0x0088e2ef:    pop              edi                                            // 0x0088e2ef    5f
                         pop              esi                                            // 0x0088e2f0    5e
                         pop              ebp                                            // 0x0088e2f1    5d
                         pop              ebx                                            // 0x0088e2f2    5b
                         ret                                                             // 0x0088e2f3    c3
                         nop                                                             // 0x0088e2f4    90
                         nop                                                             // 0x0088e2f5    90
                         nop                                                             // 0x0088e2f6    90
                         nop                                                             // 0x0088e2f7    90
                         nop                                                             // 0x0088e2f8    90
                         nop                                                             // 0x0088e2f9    90
                         nop                                                             // 0x0088e2fa    90
                         nop                                                             // 0x0088e2fb    90
                         nop                                                             // 0x0088e2fc    90
                         nop                                                             // 0x0088e2fd    90
                         nop                                                             // 0x0088e2fe    90
                         nop                                                             // 0x0088e2ff    90
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088e300    8b4c2408
                         push             ebx                                            // 0x0088e304    53
                         push             ebp                                            // 0x0088e305    55
                         push             esi                                            // 0x0088e306    56
                         {disp8} mov      esi, dword ptr [esp + 0x24]                    // 0x0088e307    8b742424
                         {disp8} lea      eax, dword ptr [esp + 0x14]                    // 0x0088e30b    8d442414
                         push             edi                                            // 0x0088e30f    57
                         push             eax                                            // 0x0088e310    50
                         push             ecx                                            // 0x0088e311    51
                         push             esi                                            // 0x0088e312    56
                         call             _jmp_addr_0x0088ba80                           // 0x0088e313    e868d7ffff
                         add              esp, 0x0c                                      // 0x0088e318    83c40c
                         test             eax, eax                                       // 0x0088e31b    85c0
                         {disp8} je       _jmp_addr_0x0088e385                           // 0x0088e31d    7466
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                    // 0x0088e31f    8b7c241c
                         push             edi                                            // 0x0088e323    57
                         push             esi                                            // 0x0088e324    56
                         call             _jmp_addr_0x0088ca00                           // 0x0088e325    e8d6e6ffff
                         mov.s            ebx, eax                                       // 0x0088e32a    8bd8
                         add              esp, 0x08                                      // 0x0088e32c    83c408
                         test             ebx, ebx                                       // 0x0088e32f    85db
                         {disp8} je       _jmp_addr_0x0088e385                           // 0x0088e331    7452
                         {disp8} mov      ebp, dword ptr [esp + 0x20]                    // 0x0088e333    8b6c2420
                         push             ebp                                            // 0x0088e337    55
                         call             _jmp_addr_0x0088df30                           // 0x0088e338    e8f3fbffff
                         add              esp, 0x04                                      // 0x0088e33d    83c404
                         test             eax, eax                                       // 0x0088e340    85c0
                         {disp8} je       _jmp_addr_0x0088e370                           // 0x0088e342    742c
                         {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x0088e344    8b542418
                         push             edx                                            // 0x0088e348    52
                         push             0x1                                            // 0x0088e349    6a01
                         push             ebx                                            // 0x0088e34b    53
                         push             esi                                            // 0x0088e34c    56
                         call             _jmp_addr_0x0088e020                           // 0x0088e34d    e8cefcffff
                         {disp8} mov      eax, dword ptr [esp + 0x28]                    // 0x0088e352    8b442428
                         push             0x00faac48                                     // 0x0088e356    6848acfa00
                         push             0x00faae48                                     // 0x0088e35b    6848aefa00
                         push             edi                                            // 0x0088e360    57
                         push             eax                                            // 0x0088e361    50
                         push             esi                                            // 0x0088e362    56
                         call             _jmp_addr_0x00888b20                           // 0x0088e363    e8b8a7ffff
                         add              esp, 0x24                                      // 0x0088e368    83c424
                         pop              edi                                            // 0x0088e36b    5f
                         pop              esi                                            // 0x0088e36c    5e
                         pop              ebp                                            // 0x0088e36d    5d
                         pop              ebx                                            // 0x0088e36e    5b
                         ret                                                             // 0x0088e36f    c3
_jmp_addr_0x0088e370:    {disp8} mov      ecx, dword ptr [esp + 0x24]                    // 0x0088e370    8b4c2424
                         {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x0088e374    8b542418
                         push             ecx                                            // 0x0088e378    51
                         push             ebp                                            // 0x0088e379    55
                         push             edi                                            // 0x0088e37a    57
                         push             edx                                            // 0x0088e37b    52
                         push             esi                                            // 0x0088e37c    56
                         call             _jmp_addr_0x008889c0                           // 0x0088e37d    e83ea6ffff
                         add              esp, 0x14                                      // 0x0088e382    83c414
_jmp_addr_0x0088e385:    pop              edi                                            // 0x0088e385    5f
                         pop              esi                                            // 0x0088e386    5e
                         pop              ebp                                            // 0x0088e387    5d
                         pop              ebx                                            // 0x0088e388    5b
                         ret                                                             // 0x0088e389    c3
                         nop                                                             // 0x0088e38a    90
                         nop                                                             // 0x0088e38b    90
                         nop                                                             // 0x0088e38c    90
                         nop                                                             // 0x0088e38d    90
                         nop                                                             // 0x0088e38e    90
                         nop                                                             // 0x0088e38f    90
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088e390    8b4c2408
                         {disp8} lea      eax, dword ptr [esp + 0x08]                    // 0x0088e394    8d442408
                         push             esi                                            // 0x0088e398    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x0088e399    8b742418
                         push             eax                                            // 0x0088e39d    50
                         push             ecx                                            // 0x0088e39e    51
                         push             esi                                            // 0x0088e39f    56
                         call             _jmp_addr_0x0088ba80                           // 0x0088e3a0    e8dbd6ffff
                         add              esp, 0x0c                                      // 0x0088e3a5    83c40c
                         test             eax, eax                                       // 0x0088e3a8    85c0
                         {disp8} je       _jmp_addr_0x0088e3cf                           // 0x0088e3aa    7423
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x0088e3ac    8b54240c
                         push             edx                                            // 0x0088e3b0    52
                         push             esi                                            // 0x0088e3b1    56
                         call             _jmp_addr_0x0088b9b0                           // 0x0088e3b2    e8f9d5ffff
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x0088e3b7    8b44241c
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                    // 0x0088e3bb    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x14]                    // 0x0088e3bf    8b542414
                         push             eax                                            // 0x0088e3c3    50
                         push             ecx                                            // 0x0088e3c4    51
                         push             edx                                            // 0x0088e3c5    52
                         push             esi                                            // 0x0088e3c6    56
                         call             _jmp_addr_0x00889230                           // 0x0088e3c7    e864aeffff
                         add              esp, 0x18                                      // 0x0088e3cc    83c418
_jmp_addr_0x0088e3cf:    pop              esi                                            // 0x0088e3cf    5e
                         ret                                                             // 0x0088e3d0    c3
                         nop                                                             // 0x0088e3d1    90
                         nop                                                             // 0x0088e3d2    90
                         nop                                                             // 0x0088e3d3    90
                         nop                                                             // 0x0088e3d4    90
                         nop                                                             // 0x0088e3d5    90
                         nop                                                             // 0x0088e3d6    90
                         nop                                                             // 0x0088e3d7    90
                         nop                                                             // 0x0088e3d8    90
                         nop                                                             // 0x0088e3d9    90
                         nop                                                             // 0x0088e3da    90
                         nop                                                             // 0x0088e3db    90
                         nop                                                             // 0x0088e3dc    90
                         nop                                                             // 0x0088e3dd    90
                         nop                                                             // 0x0088e3de    90
                         nop                                                             // 0x0088e3df    90
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088e3e0    8b4c2408
                         {disp8} lea      eax, dword ptr [esp + 0x08]                    // 0x0088e3e4    8d442408
                         push             esi                                            // 0x0088e3e8    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x0088e3e9    8b742418
                         push             eax                                            // 0x0088e3ed    50
                         push             ecx                                            // 0x0088e3ee    51
                         push             esi                                            // 0x0088e3ef    56
                         call             _jmp_addr_0x0088ba80                           // 0x0088e3f0    e88bd6ffff
                         add              esp, 0x0c                                      // 0x0088e3f5    83c40c
                         test             eax, eax                                       // 0x0088e3f8    85c0
                         {disp8} je       _jmp_addr_0x0088e479                           // 0x0088e3fa    747d
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x0088e3fc    8b4c2414
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x0088e400    8b44240c
                         xor.s            edx, edx                                       // 0x0088e404    33d2
                         cmp              ecx, 0x02                                      // 0x0088e406    83f902
                         sete             dl                                             // 0x0088e409    0f94c2
                         push             edi                                            // 0x0088e40c    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]                    // 0x0088e40d    8b7c2414
                         push             edx                                            // 0x0088e411    52
                         push             eax                                            // 0x0088e412    50
                         push             edi                                            // 0x0088e413    57
                         push             esi                                            // 0x0088e414    56
                         call             _jmp_addr_0x0088c710                           // 0x0088e415    e8f6e2ffff
                         push             0x1                                            // 0x0088e41a    6a01
                         push             0x1                                            // 0x0088e41c    6a01
                         push             edi                                            // 0x0088e41e    57
                         push             esi                                            // 0x0088e41f    56
                         call             _jmp_addr_0x0088dc00                           // 0x0088e420    e8dbf7ffff
                         {disp8} mov      ecx, dword ptr [esp + 0x30]                    // 0x0088e425    8b4c2430
                         add              esp, 0x20                                      // 0x0088e429    83c420
                         {disp32} mov     eax, dword ptr [esi + ecx * 0x4 + 0x00000428]  // 0x0088e42c    8b848e28040000
                         test             eax, eax                                       // 0x0088e433    85c0
                         {disp8} je       _jmp_addr_0x0088e469                           // 0x0088e435    7432
                         push             edi                                            // 0x0088e437    57
                         push             esi                                            // 0x0088e438    56
                         call             _jmp_addr_0x0088ca00                           // 0x0088e439    e8c2e5ffff
                         add              esp, 0x08                                      // 0x0088e43e    83c408
                         test             eax, eax                                       // 0x0088e441    85c0
                         {disp8} je       _jmp_addr_0x0088e469                           // 0x0088e443    7424
                         {disp32} mov     ecx, dword ptr [eax + 0x000000a8]              // 0x0088e445    8b88a8000000
                         test             ecx, ecx                                       // 0x0088e44b    85c9
                         {disp8} je       _jmp_addr_0x0088e459                           // 0x0088e44d    740a
                         {disp32} mov     ecx, dword ptr [eax + 0x000000a0]              // 0x0088e44f    8b88a0000000
                         test             ecx, ecx                                       // 0x0088e455    85c9
                         {disp8} jne      _jmp_addr_0x0088e469                           // 0x0088e457    7510
_jmp_addr_0x0088e459:    push             -0x1                                           // 0x0088e459    6aff
                         push             0x0                                            // 0x0088e45b    6a00
                         push             0x0                                            // 0x0088e45d    6a00
                         push             edi                                            // 0x0088e45f    57
                         push             esi                                            // 0x0088e460    56
                         call             _jmp_addr_0x0088a7c0                           // 0x0088e461    e85ac3ffff
                         add              esp, 0x14                                      // 0x0088e466    83c414
_jmp_addr_0x0088e469:    {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x0088e469    8b542410
                         push             edi                                            // 0x0088e46d    57
                         push             edx                                            // 0x0088e46e    52
                         push             esi                                            // 0x0088e46f    56
                         call             _jmp_addr_0x00889060                           // 0x0088e470    e8ebabffff
                         add              esp, 0x0c                                      // 0x0088e475    83c40c
                         pop              edi                                            // 0x0088e478    5f
_jmp_addr_0x0088e479:    pop              esi                                            // 0x0088e479    5e
                         ret                                                             // 0x0088e47a    c3
                         nop                                                             // 0x0088e47b    90
                         nop                                                             // 0x0088e47c    90
                         nop                                                             // 0x0088e47d    90
                         nop                                                             // 0x0088e47e    90
                         nop                                                             // 0x0088e47f    90
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088e480    8b4c2408
                         {disp8} lea      eax, dword ptr [esp + 0x08]                    // 0x0088e484    8d442408
                         push             esi                                            // 0x0088e488    56
                         {disp8} mov      esi, dword ptr [esp + 0x20]                    // 0x0088e489    8b742420
                         push             eax                                            // 0x0088e48d    50
                         push             ecx                                            // 0x0088e48e    51
                         push             esi                                            // 0x0088e48f    56
                         call             _jmp_addr_0x0088ba80                           // 0x0088e490    e8ebd5ffff
                         add              esp, 0x0c                                      // 0x0088e495    83c40c
                         test             eax, eax                                       // 0x0088e498    85c0
                         {disp8} je       _jmp_addr_0x0088e4bd                           // 0x0088e49a    7421
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x0088e49c    8b54240c
                         push             edi                                            // 0x0088e4a0    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]                    // 0x0088e4a1    8b7c2414
                         push             edx                                            // 0x0088e4a5    52
                         push             edi                                            // 0x0088e4a6    57
                         push             esi                                            // 0x0088e4a7    56
                         call             _jmp_addr_0x0088c870                           // 0x0088e4a8    e8c3e3ffff
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x0088e4ad    8b44241c
                         push             edi                                            // 0x0088e4b1    57
                         push             eax                                            // 0x0088e4b2    50
                         push             esi                                            // 0x0088e4b3    56
                         call             _jmp_addr_0x00889120                           // 0x0088e4b4    e867acffff
                         add              esp, 0x18                                      // 0x0088e4b9    83c418
                         pop              edi                                            // 0x0088e4bc    5f
_jmp_addr_0x0088e4bd:    pop              esi                                            // 0x0088e4bd    5e
                         ret                                                             // 0x0088e4be    c3
                         nop                                                             // 0x0088e4bf    90
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088e4c0    8b4c2408
                         {disp8} lea      eax, dword ptr [esp + 0x08]                    // 0x0088e4c4    8d442408
                         push             esi                                            // 0x0088e4c8    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x0088e4c9    8b742418
                         push             eax                                            // 0x0088e4cd    50
                         push             ecx                                            // 0x0088e4ce    51
                         push             esi                                            // 0x0088e4cf    56
                         call             _jmp_addr_0x0088ba80                           // 0x0088e4d0    e8abd5ffff
                         add              esp, 0x0c                                      // 0x0088e4d5    83c40c
                         test             eax, eax                                       // 0x0088e4d8    85c0
                         {disp8} je       _jmp_addr_0x0088e500                           // 0x0088e4da    7424
                         push             ebx                                            // 0x0088e4dc    53
                         {disp8} mov      ebx, dword ptr [esp + 0x14]                    // 0x0088e4dd    8b5c2414
                         push             edi                                            // 0x0088e4e1    57
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                    // 0x0088e4e2    8b7c241c
                         push             edi                                            // 0x0088e4e6    57
                         push             ebx                                            // 0x0088e4e7    53
                         push             esi                                            // 0x0088e4e8    56
                         call             _jmp_addr_0x0088c930                           // 0x0088e4e9    e842e4ffff
                         {disp8} mov      edx, dword ptr [esp + 0x20]                    // 0x0088e4ee    8b542420
                         push             edi                                            // 0x0088e4f2    57
                         push             ebx                                            // 0x0088e4f3    53
                         push             edx                                            // 0x0088e4f4    52
                         push             esi                                            // 0x0088e4f5    56
                         call             _jmp_addr_0x008893d0                           // 0x0088e4f6    e8d5aeffff
                         add              esp, 0x1c                                      // 0x0088e4fb    83c41c
                         pop              edi                                            // 0x0088e4fe    5f
                         pop              ebx                                            // 0x0088e4ff    5b
_jmp_addr_0x0088e500:    pop              esi                                            // 0x0088e500    5e
                         ret                                                             // 0x0088e501    c3
                         nop                                                             // 0x0088e502    90
                         nop                                                             // 0x0088e503    90
                         nop                                                             // 0x0088e504    90
                         nop                                                             // 0x0088e505    90
                         nop                                                             // 0x0088e506    90
                         nop                                                             // 0x0088e507    90
                         nop                                                             // 0x0088e508    90
                         nop                                                             // 0x0088e509    90
                         nop                                                             // 0x0088e50a    90
                         nop                                                             // 0x0088e50b    90
                         nop                                                             // 0x0088e50c    90
                         nop                                                             // 0x0088e50d    90
                         nop                                                             // 0x0088e50e    90
                         nop                                                             // 0x0088e50f    90
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088e510    8b4c2408
                         push             ebp                                            // 0x0088e514    55
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                    // 0x0088e515    8d44240c
                         push             edi                                            // 0x0088e519    57
                         {disp8} mov      edi, dword ptr [esp + 0x18]                    // 0x0088e51a    8b7c2418
                         push             eax                                            // 0x0088e51e    50
                         push             ecx                                            // 0x0088e51f    51
                         push             edi                                            // 0x0088e520    57
                         call             _jmp_addr_0x0088ba80                           // 0x0088e521    e85ad5ffff
                         add              esp, 0x0c                                      // 0x0088e526    83c40c
                         test             eax, eax                                       // 0x0088e529    85c0
                         {disp8} je       _jmp_addr_0x0088e5ab                           // 0x0088e52b    747e
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x0088e52d    8b542410
                         push             ebx                                            // 0x0088e531    53
                         shl              edx, 7                                         // 0x0088e532    c1e207
                         push             esi                                            // 0x0088e535    56
                         {disp32} lea     ebp, dword ptr [edx + edi * 0x1 + 0x00000274]  // 0x0088e536    8dac3a74020000
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                    // 0x0088e53d    8b54241c
                         mov.s            esi, edx                                       // 0x0088e541    8bf2
                         mov.s            eax, ebp                                       // 0x0088e543    8bc5
_jmp_addr_0x0088e545:    mov              bl, byte ptr [eax]                             // 0x0088e545    8a18
                         mov.s            cl, bl                                         // 0x0088e547    8acb
                         cmp              bl, byte ptr [esi]                             // 0x0088e549    3a1e
                         {disp8} jne      _jmp_addr_0x0088e569                           // 0x0088e54b    751c
                         test             cl, cl                                         // 0x0088e54d    84c9
                         {disp8} je       _jmp_addr_0x0088e565                           // 0x0088e54f    7414
                         {disp8} mov      bl, byte ptr [eax + 0x01]                      // 0x0088e551    8a5801
                         mov.s            cl, bl                                         // 0x0088e554    8acb
                         cmp              bl, byte ptr [esi + 0x01]                      // 0x0088e556    3a5e01
                         {disp8} jne      _jmp_addr_0x0088e569                           // 0x0088e559    750e
                         add              eax, 0x02                                      // 0x0088e55b    83c002
                         add              esi, 0x02                                      // 0x0088e55e    83c602
                         test             cl, cl                                         // 0x0088e561    84c9
                         {disp8} jne      _jmp_addr_0x0088e545                           // 0x0088e563    75e0
_jmp_addr_0x0088e565:    xor.s            eax, eax                                       // 0x0088e565    33c0
                         {disp8} jmp      _jmp_addr_0x0088e56e                           // 0x0088e567    eb05
_jmp_addr_0x0088e569:    sbb.s            eax, eax                                       // 0x0088e569    1bc0
                         sbb              eax, -0x01                                     // 0x0088e56b    83d8ff
_jmp_addr_0x0088e56e:    pop              esi                                            // 0x0088e56e    5e
                         pop              ebx                                            // 0x0088e56f    5b
                         test             eax, eax                                       // 0x0088e570    85c0
                         {disp8} je       _jmp_addr_0x0088e5ab                           // 0x0088e572    7437
                         push             0x00000080                                     // 0x0088e574    6880000000
                         push             edx                                            // 0x0088e579    52
                         push             ebp                                            // 0x0088e57a    55
                         call             _strncpy                                       // 0x0088e57b    e820abf3ff
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x0088e580    8b44241c
                         add              esp, 0x0c                                      // 0x0088e584    83c40c
                         shl              eax, 7                                         // 0x0088e587    c1e007
                         {disp32} mov     byte ptr [eax + edi * 0x1 + 0x000002f3], 0x00  // 0x0088e58a    c68438f302000000
                         {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x0088e592    8b442410
                         {disp32} mov     ecx, dword ptr [edi + eax * 0x4 + 0x00000268]  // 0x0088e596    8b8c8768020000
                         test             ecx, ecx                                       // 0x0088e59d    85c9
                         {disp8} je       _jmp_addr_0x0088e5ab                           // 0x0088e59f    740a
                         push             eax                                            // 0x0088e5a1    50
                         push             edi                                            // 0x0088e5a2    57
                         call             _jmp_addr_0x00888bd0                           // 0x0088e5a3    e828a6ffff
                         add              esp, 0x08                                      // 0x0088e5a8    83c408
_jmp_addr_0x0088e5ab:    pop              edi                                            // 0x0088e5ab    5f
                         pop              ebp                                            // 0x0088e5ac    5d
                         ret                                                             // 0x0088e5ad    c3
                         nop                                                             // 0x0088e5ae    90
                         nop                                                             // 0x0088e5af    90
                         push             esi                                            // 0x0088e5b0    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x0088e5b1    8b74240c
                         {disp8} lea      eax, dword ptr [esp + 0x1c]                    // 0x0088e5b5    8d44241c
                         push             edi                                            // 0x0088e5b9    57
                         {disp8} mov      edi, dword ptr [esp + 0x20]                    // 0x0088e5ba    8b7c2420
                         push             eax                                            // 0x0088e5be    50
                         push             esi                                            // 0x0088e5bf    56
                         push             edi                                            // 0x0088e5c0    57
                         call             _jmp_addr_0x0088ba80                           // 0x0088e5c1    e8bad4ffff
                         add              esp, 0x0c                                      // 0x0088e5c6    83c40c
                         test             eax, eax                                       // 0x0088e5c9    85c0
                         {disp32} je      _jmp_addr_0x0088e658                           // 0x0088e5cb    0f8487000000
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                    // 0x0088e5d1    8b4c2420
                         push             ebp                                            // 0x0088e5d5    55
                         push             ecx                                            // 0x0088e5d6    51
                         push             edi                                            // 0x0088e5d7    57
                         call             _jmp_addr_0x0088c9a0                           // 0x0088e5d8    e8c3e3ffff
                         {disp8} mov      ebp, dword ptr [esp + 0x20]                    // 0x0088e5dd    8b6c2420
                         add              esp, 0x08                                      // 0x0088e5e1    83c408
                         test             ebp, ebp                                       // 0x0088e5e4    85ed
                         {disp8} jle      _jmp_addr_0x0088e61b                           // 0x0088e5e6    7e33
                         {disp8} mov      esi, dword ptr [esp + 0x1c]                    // 0x0088e5e8    8b74241c
                         push             ebx                                            // 0x0088e5ec    53
                         {disp8} mov      ebx, dword ptr [esp + 0x24]                    // 0x0088e5ed    8b5c2424
                         sub.s            ebx, esi                                       // 0x0088e5f1    2bde
_jmp_addr_0x0088e5f3:    mov              ecx, dword ptr [ebx + esi * 0x1]               // 0x0088e5f3    8b0c33
                         {disp8} mov      eax, dword ptr [esp + 0x28]                    // 0x0088e5f6    8b442428
                         xor.s            edx, edx                                       // 0x0088e5fa    33d2
                         cmp              ecx, 0x02                                      // 0x0088e5fc    83f902
                         mov              ecx, dword ptr [esi]                           // 0x0088e5ff    8b0e
                         sete             dl                                             // 0x0088e601    0f94c2
                         push             edx                                            // 0x0088e604    52
                         push             eax                                            // 0x0088e605    50
                         push             ecx                                            // 0x0088e606    51
                         push             edi                                            // 0x0088e607    57
                         call             _jmp_addr_0x0088c710                           // 0x0088e608    e803e1ffff
                         add              esp, 0x10                                      // 0x0088e60d    83c410
                         add              esi, 0x04                                      // 0x0088e610    83c604
                         dec              ebp                                            // 0x0088e613    4d
                         {disp8} jne      _jmp_addr_0x0088e5f3                           // 0x0088e614    75dd
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x0088e616    8b742418
                         pop              ebx                                            // 0x0088e61a    5b
_jmp_addr_0x0088e61b:    {disp8} mov      edx, dword ptr [esp + 0x24]                    // 0x0088e61b    8b542424
                         pop              ebp                                            // 0x0088e61f    5d
                         {disp32} mov     eax, dword ptr [edi + edx * 0x4 + 0x00000428]  // 0x0088e620    8b849728040000
                         test             eax, eax                                       // 0x0088e627    85c0
                         {disp8} je       _jmp_addr_0x0088e63f                           // 0x0088e629    7414
                         mov              eax, dword ptr [edi]                           // 0x0088e62b    8b07
                         push             0x0                                            // 0x0088e62d    6a00
                         push             edi                                            // 0x0088e62f    57
                         push             0x0088e660                                     // 0x0088e630    6860e68800
                         push             esi                                            // 0x0088e635    56
                         push             eax                                            // 0x0088e636    50
                         call             _jmp_addr_0x00887b30                           // 0x0088e637    e8f494ffff
                         add              esp, 0x14                                      // 0x0088e63c    83c414
_jmp_addr_0x0088e63f:    push             0x1                                            // 0x0088e63f    6a01
                         push             0x0                                            // 0x0088e641    6a00
                         push             esi                                            // 0x0088e643    56
                         push             edi                                            // 0x0088e644    57
                         call             _jmp_addr_0x0088dc00                           // 0x0088e645    e8b6f5ffff
                         {disp8} mov      ecx, dword ptr [esp + 0x30]                    // 0x0088e64a    8b4c2430
                         push             ecx                                            // 0x0088e64e    51
                         push             edi                                            // 0x0088e64f    57
                         call             _jmp_addr_0x008892d0                           // 0x0088e650    e87bacffff
                         add              esp, 0x18                                      // 0x0088e655    83c418
_jmp_addr_0x0088e658:    pop              edi                                            // 0x0088e658    5f
                         pop              esi                                            // 0x0088e659    5e
                         ret                                                             // 0x0088e65a    c3
                         nop                                                             // 0x0088e65b    90
                         nop                                                             // 0x0088e65c    90
                         nop                                                             // 0x0088e65d    90
                         nop                                                             // 0x0088e65e    90
                         nop                                                             // 0x0088e65f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x0088e660    8b442408
                         test             eax, eax                                       // 0x0088e664    85c0
                         {disp8} je       _jmp_addr_0x0088e69f                           // 0x0088e666    7437
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x0088e668    8b542410
                         {disp8} lea      eax, dword ptr [esp + 0x08]                    // 0x0088e66c    8d442408
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                    // 0x0088e670    8d4c2410
                         push             eax                                            // 0x0088e674    50
                         push             ecx                                            // 0x0088e675    51
                         push             edx                                            // 0x0088e676    52
                         call             _jmp_addr_0x0088ed40                           // 0x0088e677    e8c4060000
                         add              esp, 0x0c                                      // 0x0088e67c    83c40c
                         test             eax, eax                                       // 0x0088e67f    85c0
                         {disp8} je       _jmp_addr_0x0088e69f                           // 0x0088e681    741c
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x0088e683    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x0088e687    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x0088e68b    8b54240c
                         push             eax                                            // 0x0088e68f    50
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x0088e690    8b44241c
                         push             ecx                                            // 0x0088e694    51
                         push             edx                                            // 0x0088e695    52
                         push             eax                                            // 0x0088e696    50
                         call             _jmp_addr_0x0088cb40                           // 0x0088e697    e8a4e4ffff
                         add              esp, 0x10                                      // 0x0088e69c    83c410
_jmp_addr_0x0088e69f:    ret                                                             // 0x0088e69f    c3
_jmp_addr_0x0088e6a0:    {disp8} mov      edx, dword ptr [esp + 0x08]                    // 0x0088e6a0    8b542408
                         push             edi                                            // 0x0088e6a4    57
                         mov              ecx, 0x0000000b                                // 0x0088e6a5    b90b000000
                         xor.s            eax, eax                                       // 0x0088e6aa    33c0
                         mov.s            edi, edx                                       // 0x0088e6ac    8bfa
                         rep stosd                                                       // 0x0088e6ae    f3ab
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x0088e6b0    8b442408
                         mov              dword ptr [edx], 0x0088e300                    // 0x0088e6b4    c70200e38800
                         {disp8} mov      dword ptr [edx + 0x28], eax                    // 0x0088e6ba    894228
                         {disp8} mov      dword ptr [edx + 0x04], 0x0088e390             // 0x0088e6bd    c7420490e38800
                         {disp8} mov      dword ptr [edx + 0x08], 0x0088e3e0             // 0x0088e6c4    c74208e0e38800
                         {disp8} mov      dword ptr [edx + 0x0c], 0x0088e480             // 0x0088e6cb    c7420c80e48800
                         {disp8} mov      dword ptr [edx + 0x10], 0x0088e4c0             // 0x0088e6d2    c74210c0e48800
                         {disp8} mov      dword ptr [edx + 0x14], 0x0088e510             // 0x0088e6d9    c7421410e58800
                         {disp8} mov      dword ptr [edx + 0x24], 0x0088e5b0             // 0x0088e6e0    c74224b0e58800
                         pop              edi                                            // 0x0088e6e7    5f
                         ret                                                             // 0x0088e6e8    c3
                         nop                                                             // 0x0088e6e9    90
                         nop                                                             // 0x0088e6ea    90
                         nop                                                             // 0x0088e6eb    90
                         nop                                                             // 0x0088e6ec    90
                         nop                                                             // 0x0088e6ed    90
                         nop                                                             // 0x0088e6ee    90
                         nop                                                             // 0x0088e6ef    90
                         push             ecx                                            // 0x0088e6f0    51
                         push             ebx                                            // 0x0088e6f1    53
                         push             esi                                            // 0x0088e6f2    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x0088e6f3    8b742418
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                    // 0x0088e6f7    8b5c2410
                         push             edi                                            // 0x0088e6fb    57
                         {disp8} mov      edi, dword ptr [esp + 0x18]                    // 0x0088e6fc    8b7c2418
                         {disp32} lea     eax, dword ptr [esi + 0x000000bc]              // 0x0088e700    8d86bc000000
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                    // 0x0088e706    8d4c240c
                         push             eax                                            // 0x0088e70a    50
                         push             0x00c3a960                                     // 0x0088e70b    6860a9c300
                         push             ecx                                            // 0x0088e710    51
                         push             edi                                            // 0x0088e711    57
                         push             ebx                                            // 0x0088e712    53
                         {disp8} mov      dword ptr [esp + 0x20], 0x00000000             // 0x0088e713    c744242000000000
                         call             _jmp_addr_0x0088e760                           // 0x0088e71b    e840000000
                         {disp32} mov     eax, dword ptr [esi + 0x000004f0]              // 0x0088e720    8b86f0040000
                         add              esp, 0x14                                      // 0x0088e726    83c414
                         test             eax, eax                                       // 0x0088e729    85c0
                         {disp8} jne      _jmp_addr_0x0088e756                           // 0x0088e72b    7529
                         {disp32} mov     eax, dword ptr [esi + 0x000005f4]              // 0x0088e72d    8b86f4050000
                         test             eax, eax                                       // 0x0088e733    85c0
                         {disp8} je       _jmp_addr_0x0088e756                           // 0x0088e735    741f
                         {disp32} mov     edx, dword ptr [esi + 0x00000604]              // 0x0088e737    8b9604060000
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x0088e73d    8b4c240c
                         push             edx                                            // 0x0088e741    52
                         lea              edx, dword ptr [ecx + edi * 0x1]               // 0x0088e742    8d1439
                         add.s            ecx, ebx                                       // 0x0088e745    03cb
                         push             edx                                            // 0x0088e747    52
                         push             ecx                                            // 0x0088e748    51
                         {disp32} mov     ecx, dword ptr [esi + 0x000004d0]              // 0x0088e749    8b8ed0040000
                         push             ecx                                            // 0x0088e74f    51
                         push             esi                                            // 0x0088e750    56
                         call             eax                                            // 0x0088e751    ffd0
                         add              esp, 0x14                                      // 0x0088e753    83c414
_jmp_addr_0x0088e756:    pop              edi                                            // 0x0088e756    5f
                         pop              esi                                            // 0x0088e757    5e
                         pop              ebx                                            // 0x0088e758    5b
                         pop              ecx                                            // 0x0088e759    59
                         ret                                                             // 0x0088e75a    c3
                         nop                                                             // 0x0088e75b    90
                         nop                                                             // 0x0088e75c    90
                         nop                                                             // 0x0088e75d    90
                         nop                                                             // 0x0088e75e    90
                         nop                                                             // 0x0088e75f    90
_jmp_addr_0x0088e760:    push             ebx                                            // 0x0088e760    53
                         {disp8} mov      ebx, dword ptr [esp + 0x14]                    // 0x0088e761    8b5c2414
                         push             ebp                                            // 0x0088e765    55
                         push             esi                                            // 0x0088e766    56
                         push             edi                                            // 0x0088e767    57
                         mov.s            edi, ebx                                       // 0x0088e768    8bfb
                         or               ecx, 0xffffffff                                // 0x0088e76a    83c9ff
                         xor.s            eax, eax                                       // 0x0088e76d    33c0
                         repne scasb                                                     // 0x0088e76f    f2ae
                         {disp8} mov      edi, dword ptr [esp + 0x24]                    // 0x0088e771    8b7c2424
                         {disp8} mov      esi, dword ptr [esp + 0x1c]                    // 0x0088e775    8b74241c
                         not              ecx                                            // 0x0088e779    f7d1
                         dec              ecx                                            // 0x0088e77b    49
                         mov              edx, dword ptr [esi]                           // 0x0088e77c    8b16
                         mov.s            ebp, ecx                                       // 0x0088e77e    8be9
                         or               ecx, 0xffffffff                                // 0x0088e780    83c9ff
                         repne scasb                                                     // 0x0088e783    f2ae
                         not              ecx                                            // 0x0088e785    f7d1
                         mov.s            eax, edx                                       // 0x0088e787    8bc2
                         dec              ecx                                            // 0x0088e789    49
                         add.s            eax, ebp                                       // 0x0088e78a    03c5
                         {disp8} lea      ecx, dword ptr [ecx + eax * 0x1 + 0x03]        // 0x0088e78c    8d4c0103
                         {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x0088e790    8b442418
                         cmp.s            ecx, eax                                       // 0x0088e794    3bc8
                         {disp8} jge      _jmp_addr_0x0088e7c3                           // 0x0088e796    7d2b
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x0088e798    8b442414
                         {disp8} mov      ecx, dword ptr [esp + 0x24]                    // 0x0088e79c    8b4c2424
                         push             ecx                                            // 0x0088e7a0    51
                         push             ebx                                            // 0x0088e7a1    53
                         lea              edi, dword ptr [edx + eax * 0x1]               // 0x0088e7a2    8d3c02
                         push             0x00c3a96c                                     // 0x0088e7a5    686ca9c300
                         push             edi                                            // 0x0088e7aa    57
                         call             _sprintf                                       // 0x0088e7ab    e82270f3ff
                         or               ecx, 0xffffffff                                // 0x0088e7b0    83c9ff
                         xor.s            eax, eax                                       // 0x0088e7b3    33c0
                         add              esp, 0x10                                      // 0x0088e7b5    83c410
                         repne scasb                                                     // 0x0088e7b8    f2ae
                         mov              eax, dword ptr [esi]                           // 0x0088e7ba    8b06
                         not              ecx                                            // 0x0088e7bc    f7d1
                         dec              ecx                                            // 0x0088e7be    49
                         add.s            eax, ecx                                       // 0x0088e7bf    03c1
                         mov              dword ptr [esi], eax                           // 0x0088e7c1    8906
_jmp_addr_0x0088e7c3:    pop              edi                                            // 0x0088e7c3    5f
                         pop              esi                                            // 0x0088e7c4    5e
                         pop              ebp                                            // 0x0088e7c5    5d
                         pop              ebx                                            // 0x0088e7c6    5b
                         ret                                                             // 0x0088e7c7    c3
                         nop                                                             // 0x0088e7c8    90
                         nop                                                             // 0x0088e7c9    90
                         nop                                                             // 0x0088e7ca    90
                         nop                                                             // 0x0088e7cb    90
                         nop                                                             // 0x0088e7cc    90
                         nop                                                             // 0x0088e7cd    90
                         nop                                                             // 0x0088e7ce    90
                         nop                                                             // 0x0088e7cf    90
                         push             ecx                                            // 0x0088e7d0    51
                         push             ebx                                            // 0x0088e7d1    53
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                    // 0x0088e7d2    8b5c2410
                         push             esi                                            // 0x0088e7d6    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x0088e7d7    8b742418
                         push             edi                                            // 0x0088e7db    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]                    // 0x0088e7dc    8b7c2414
                         {disp32} mov     eax, dword ptr [esi + 0x00000270]              // 0x0088e7e0    8b8670020000
                         {disp8} mov      dword ptr [esp + 0x0c], 0x00000000             // 0x0088e7e6    c744240c00000000
                         test             eax, eax                                       // 0x0088e7ee    85c0
                         {disp32} je      _jmp_addr_0x0088e8e2                           // 0x0088e7f0    0f84ec000000
                         {disp32} mov     eax, dword ptr [esi + 0x000004d0]              // 0x0088e7f6    8b86d0040000
                         test             eax, eax                                       // 0x0088e7fc    85c0
                         {disp32} jne     _jmp_addr_0x0088e8e2                           // 0x0088e7fe    0f85de000000
                         {disp32} lea     eax, dword ptr [esi + 0x00000374]              // 0x0088e804    8d8674030000
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                    // 0x0088e80a    8d4c240c
                         push             eax                                            // 0x0088e80e    50
                         push             0x009cd760                                     // 0x0088e80f    6860d79c00
                         push             ecx                                            // 0x0088e814    51
                         push             ebx                                            // 0x0088e815    53
                         push             edi                                            // 0x0088e816    57
                         call             _jmp_addr_0x0088e760                           // 0x0088e817    e844ffffff
                         {disp32} mov     edx, dword ptr [esi + 0x0000041c]              // 0x0088e81c    8b961c040000
                         push             edx                                            // 0x0088e822    52
                         push             0x009cda78                                     // 0x0088e823    6878da9c00
                         push             0x00faac38                                     // 0x0088e828    6838acfa00
                         call             _sprintf                                       // 0x0088e82d    e8a06ff3ff
                         push             0x00faac38                                     // 0x0088e832    6838acfa00
                         {disp8} lea      eax, dword ptr [esp + 0x30]                    // 0x0088e837    8d442430
                         push             0x009cd718                                     // 0x0088e83b    6818d79c00
                         push             eax                                            // 0x0088e840    50
                         push             ebx                                            // 0x0088e841    53
                         push             edi                                            // 0x0088e842    57
                         call             _jmp_addr_0x0088e760                           // 0x0088e843    e818ffffff
                         {disp32} mov     ecx, dword ptr [esi + 0x000004d4]              // 0x0088e848    8b8ed4040000
                         push             ecx                                            // 0x0088e84e    51
                         push             0x009cda78                                     // 0x0088e84f    6878da9c00
                         push             0x00faac38                                     // 0x0088e854    6838acfa00
                         call             _sprintf                                       // 0x0088e859    e8746ff3ff
                         add              esp, 0x40                                      // 0x0088e85e    83c440
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                    // 0x0088e861    8d54240c
                         push             0x00faac38                                     // 0x0088e865    6838acfa00
                         push             0x009cd78c                                     // 0x0088e86a    688cd79c00
                         push             edx                                            // 0x0088e86f    52
                         push             ebx                                            // 0x0088e870    53
                         push             edi                                            // 0x0088e871    57
                         call             _jmp_addr_0x0088e760                           // 0x0088e872    e8e9feffff
                         {disp32} mov     eax, dword ptr [esi + 0x000004f0]              // 0x0088e877    8b86f0040000
                         add              esp, 0x14                                      // 0x0088e87d    83c414
                         test             eax, eax                                       // 0x0088e880    85c0
                         {disp8} je       _jmp_addr_0x0088e895                           // 0x0088e882    7411
                         push             0x00c3a980                                     // 0x0088e884    6880a9c300
                         {disp8} lea      eax, dword ptr [esp + 0x10]                    // 0x0088e889    8d442410
                         push             0x009cd780                                     // 0x0088e88d    6880d79c00
                         push             eax                                            // 0x0088e892    50
                         {disp8} jmp      _jmp_addr_0x0088e8a4                           // 0x0088e893    eb0f
_jmp_addr_0x0088e895:    push             0x009cd774                                     // 0x0088e895    6874d79c00
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                    // 0x0088e89a    8d4c2410
                         push             0x009cd780                                     // 0x0088e89e    6880d79c00
                         push             ecx                                            // 0x0088e8a3    51
_jmp_addr_0x0088e8a4:    push             ebx                                            // 0x0088e8a4    53
                         push             edi                                            // 0x0088e8a5    57
                         call             _jmp_addr_0x0088e760                           // 0x0088e8a6    e8b5feffff
                         {disp32} mov     al, byte ptr [esi + 0x000004d8]                // 0x0088e8ab    8a86d8040000
                         add              esp, 0x14                                      // 0x0088e8b1    83c414
                         test             al, al                                         // 0x0088e8b4    84c0
                         {disp8} je       _jmp_addr_0x0088e8e2                           // 0x0088e8b6    742a
                         push             0x1                                            // 0x0088e8b8    6a01
                         push             0x009cda78                                     // 0x0088e8ba    6878da9c00
                         push             0x00faac38                                     // 0x0088e8bf    6838acfa00
                         call             _sprintf                                       // 0x0088e8c4    e8096ff3ff
                         push             0x00faac38                                     // 0x0088e8c9    6838acfa00
                         {disp8} lea      edx, dword ptr [esp + 0x1c]                    // 0x0088e8ce    8d54241c
                         push             0x009cd748                                     // 0x0088e8d2    6848d79c00
                         push             edx                                            // 0x0088e8d7    52
                         push             ebx                                            // 0x0088e8d8    53
                         push             edi                                            // 0x0088e8d9    57
                         call             _jmp_addr_0x0088e760                           // 0x0088e8da    e881feffff
                         add              esp, 0x20                                      // 0x0088e8df    83c420
_jmp_addr_0x0088e8e2:    {disp32} mov     eax, dword ptr [esi + 0x000004f4]              // 0x0088e8e2    8b86f4040000
                         test             eax, eax                                       // 0x0088e8e8    85c0
                         {disp8} je       _jmp_addr_0x0088e915                           // 0x0088e8ea    7429
                         push             eax                                            // 0x0088e8ec    50
                         push             0x009cda78                                     // 0x0088e8ed    6878da9c00
                         push             0x00faac38                                     // 0x0088e8f2    6838acfa00
                         call             _sprintf                                       // 0x0088e8f7    e8d66ef3ff
                         push             0x00faac38                                     // 0x0088e8fc    6838acfa00
                         {disp8} lea      eax, dword ptr [esp + 0x1c]                    // 0x0088e901    8d44241c
                         push             0x00c3a62c                                     // 0x0088e905    682ca6c300
                         push             eax                                            // 0x0088e90a    50
                         push             ebx                                            // 0x0088e90b    53
                         push             edi                                            // 0x0088e90c    57
                         call             _jmp_addr_0x0088e760                           // 0x0088e90d    e84efeffff
                         add              esp, 0x20                                      // 0x0088e912    83c420
_jmp_addr_0x0088e915:    {disp32} mov     eax, dword ptr [esi + 0x000004f0]              // 0x0088e915    8b86f0040000
                         test             eax, eax                                       // 0x0088e91b    85c0
                         {disp8} jne      _jmp_addr_0x0088e948                           // 0x0088e91d    7529
                         {disp32} mov     eax, dword ptr [esi + 0x000005f8]              // 0x0088e91f    8b86f8050000
                         test             eax, eax                                       // 0x0088e925    85c0
                         {disp8} je       _jmp_addr_0x0088e948                           // 0x0088e927    741f
                         {disp32} mov     ecx, dword ptr [esi + 0x00000604]              // 0x0088e929    8b8e04060000
                         push             ecx                                            // 0x0088e92f    51
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x0088e930    8b4c2410
                         lea              edx, dword ptr [ecx + ebx * 0x1]               // 0x0088e934    8d1419
                         add.s            ecx, edi                                       // 0x0088e937    03cf
                         push             edx                                            // 0x0088e939    52
                         push             ecx                                            // 0x0088e93a    51
                         {disp32} mov     ecx, dword ptr [esi + 0x000004d0]              // 0x0088e93b    8b8ed0040000
                         push             ecx                                            // 0x0088e941    51
                         push             esi                                            // 0x0088e942    56
                         call             eax                                            // 0x0088e943    ffd0
                         add              esp, 0x14                                      // 0x0088e945    83c414
_jmp_addr_0x0088e948:    push             0x009cd780                                     // 0x0088e948    6880d79c00
                         push             edi                                            // 0x0088e94d    57
                         call             _strstr                                        // 0x0088e94e    e80dacf3ff
                         add              esp, 0x08                                      // 0x0088e953    83c408
                         test             eax, eax                                       // 0x0088e956    85c0
                         {disp8} jne      _jmp_addr_0x0088e973                           // 0x0088e958    7519
                         push             0x00c3a974                                     // 0x0088e95a    6874a9c300
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0088e95f    8d542410
                         push             0x009cd780                                     // 0x0088e963    6880d79c00
                         push             edx                                            // 0x0088e968    52
                         push             ebx                                            // 0x0088e969    53
                         push             edi                                            // 0x0088e96a    57
                         call             _jmp_addr_0x0088e760                           // 0x0088e96b    e8f0fdffff
                         add              esp, 0x14                                      // 0x0088e970    83c414
_jmp_addr_0x0088e973:    pop              edi                                            // 0x0088e973    5f
                         pop              esi                                            // 0x0088e974    5e
                         pop              ebx                                            // 0x0088e975    5b
                         pop              ecx                                            // 0x0088e976    59
                         ret                                                             // 0x0088e977    c3
                         nop                                                             // 0x0088e978    90
                         nop                                                             // 0x0088e979    90
                         nop                                                             // 0x0088e97a    90
                         nop                                                             // 0x0088e97b    90
                         nop                                                             // 0x0088e97c    90
                         nop                                                             // 0x0088e97d    90
                         nop                                                             // 0x0088e97e    90
                         nop                                                             // 0x0088e97f    90
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x0088e980    8b44240c
                         {disp32} mov     ecx, dword ptr [eax + 0x000004f0]              // 0x0088e984    8b88f0040000
                         test             ecx, ecx                                       // 0x0088e98a    85c9
                         {disp8} jne      _jmp_addr_0x0088e9b6                           // 0x0088e98c    7528
                         {disp32} mov     ecx, dword ptr [eax + 0x000005fc]              // 0x0088e98e    8b88fc050000
                         test             ecx, ecx                                       // 0x0088e994    85c9
                         {disp8} je       _jmp_addr_0x0088e9b6                           // 0x0088e996    741e
                         {disp32} mov     edx, dword ptr [eax + 0x00000604]              // 0x0088e998    8b9004060000
                         push             edx                                            // 0x0088e99e    52
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x0088e99f    8b54240c
                         push             edx                                            // 0x0088e9a3    52
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x0088e9a4    8b54240c
                         push             edx                                            // 0x0088e9a8    52
                         {disp32} mov     edx, dword ptr [eax + 0x000004d0]              // 0x0088e9a9    8b90d0040000
                         push             edx                                            // 0x0088e9af    52
                         push             eax                                            // 0x0088e9b0    50
                         call             ecx                                            // 0x0088e9b1    ffd1
                         add              esp, 0x14                                      // 0x0088e9b3    83c414
_jmp_addr_0x0088e9b6:    ret                                                             // 0x0088e9b6    c3
                         nop                                                             // 0x0088e9b7    90
                         nop                                                             // 0x0088e9b8    90
                         nop                                                             // 0x0088e9b9    90
                         nop                                                             // 0x0088e9ba    90
                         nop                                                             // 0x0088e9bb    90
                         nop                                                             // 0x0088e9bc    90
                         nop                                                             // 0x0088e9bd    90
                         nop                                                             // 0x0088e9be    90
                         nop                                                             // 0x0088e9bf    90
                         push             ebx                                            // 0x0088e9c0    53
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                    // 0x0088e9c1    8b5c2418
                         push             esi                                            // 0x0088e9c5    56
                         {disp8} mov      esi, dword ptr [esp + 0x14]                    // 0x0088e9c6    8b742414
                         push             edi                                            // 0x0088e9ca    57
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                    // 0x0088e9cb    8b7c241c
                         push             edi                                            // 0x0088e9cf    57
                         push             esi                                            // 0x0088e9d0    56
                         push             0x009cd700                                     // 0x0088e9d1    6800d79c00
                         push             ebx                                            // 0x0088e9d6    53
                         call             _jmp_addr_0x0088ea30                           // 0x0088e9d7    e854000000
                         {disp32} mov     eax, dword ptr [esi + 0x00000098]              // 0x0088e9dc    8b8698000000
                         add              esp, 0x10                                      // 0x0088e9e2    83c410
                         test             eax, eax                                       // 0x0088e9e5    85c0
                         {disp8} je       _jmp_addr_0x0088e9ed                           // 0x0088e9e7    7404
                         xor.s            esi, esi                                       // 0x0088e9e9    33f6
                         {disp8} jmp      _jmp_addr_0x0088ea04                           // 0x0088e9eb    eb17
_jmp_addr_0x0088e9ed:    {disp32} mov     eax, dword ptr [esi + 0x00000114]              // 0x0088e9ed    8b8614010000
                         test             eax, eax                                       // 0x0088e9f3    85c0
                         {disp8} je       _jmp_addr_0x0088e9ff                           // 0x0088e9f5    7408
                         {disp32} mov     esi, dword ptr [esi + 0x000000cc]              // 0x0088e9f7    8bb6cc000000
                         {disp8} jmp      _jmp_addr_0x0088ea04                           // 0x0088e9fd    eb05
_jmp_addr_0x0088e9ff:    mov              esi, 0x0000270f                                // 0x0088e9ff    be0f270000
_jmp_addr_0x0088ea04:    push             esi                                            // 0x0088ea04    56
                         push             0x009cda78                                     // 0x0088ea05    6878da9c00
                         push             0x00faac38                                     // 0x0088ea0a    6838acfa00
                         call             _sprintf                                       // 0x0088ea0f    e8be6df3ff
                         push             edi                                            // 0x0088ea14    57
                         push             0x00faac38                                     // 0x0088ea15    6838acfa00
                         push             0x00c3a3d4                                     // 0x0088ea1a    68d4a3c300
                         push             ebx                                            // 0x0088ea1f    53
                         call             _jmp_addr_0x0088ea30                           // 0x0088ea20    e80b000000
                         add              esp, 0x1c                                      // 0x0088ea25    83c41c
                         pop              edi                                            // 0x0088ea28    5f
                         pop              esi                                            // 0x0088ea29    5e
                         pop              ebx                                            // 0x0088ea2a    5b
                         ret                                                             // 0x0088ea2b    c3
                         nop                                                             // 0x0088ea2c    90
                         nop                                                             // 0x0088ea2d    90
                         nop                                                             // 0x0088ea2e    90
                         nop                                                             // 0x0088ea2f    90
_jmp_addr_0x0088ea30:    {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x0088ea30    8b442410
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088ea34    8b4c2408
                         sub              esp, 0x20                                      // 0x0088ea38    83ec20
                         {disp8} lea      edx, dword ptr [esp + 0x00]                    // 0x0088ea3b    8d542400
                         push             eax                                            // 0x0088ea3f    50
                         push             ecx                                            // 0x0088ea40    51
                         push             0x00c3a3dc                                     // 0x0088ea41    68dca3c300
                         push             edx                                            // 0x0088ea46    52
                         call             _sprintf                                       // 0x0088ea47    e8866df3ff
                         {disp8} mov      eax, dword ptr [esp + 0x3c]                    // 0x0088ea4c    8b44243c
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                    // 0x0088ea50    8d4c2410
                         push             eax                                            // 0x0088ea54    50
                         {disp8} mov      eax, dword ptr [esp + 0x38]                    // 0x0088ea55    8b442438
                         push             ecx                                            // 0x0088ea59    51
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x0088ea5a    8b4804
                         {disp8} lea      edx, dword ptr [eax + 0x08]                    // 0x0088ea5d    8d5008
                         push             edx                                            // 0x0088ea60    52
                         mov              edx, dword ptr [eax]                           // 0x0088ea61    8b10
                         push             ecx                                            // 0x0088ea63    51
                         push             edx                                            // 0x0088ea64    52
                         call             _jmp_addr_0x0088e760                           // 0x0088ea65    e8f6fcffff
                         add              esp, 0x44                                      // 0x0088ea6a    83c444
                         ret                                                             // 0x0088ea6d    c3
                         nop                                                             // 0x0088ea6e    90
                         nop                                                             // 0x0088ea6f    90
                         sub              esp, 0x0c                                      // 0x0088ea70    83ec0c
                         xor.s            eax, eax                                       // 0x0088ea73    33c0
                         push             esi                                            // 0x0088ea75    56
                         {disp8} mov      esi, dword ptr [esp + 0x1c]                    // 0x0088ea76    8b74241c
                         push             edi                                            // 0x0088ea7a    57
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                    // 0x0088ea7b    8b7c241c
                         {disp32} mov     ecx, dword ptr [esi + 0x00000270]              // 0x0088ea7f    8b8e70020000
                         test             ecx, ecx                                       // 0x0088ea85    85c9
                         {disp8} je       _jmp_addr_0x0088eac6                           // 0x0088ea87    743d
                         {disp32} mov     ecx, dword ptr [esi + 0x000004d0]              // 0x0088ea89    8b8ed0040000
                         test             ecx, ecx                                       // 0x0088ea8f    85c9
                         {disp8} jne      _jmp_addr_0x0088eac6                           // 0x0088ea91    7533
                         {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x0088ea93    8b442418
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x0088ea97    8d4c2408
                         push             ecx                                            // 0x0088ea9b    51
                         push             0x0088e9c0                                     // 0x0088ea9c    68c0e98800
                         push             0x2                                            // 0x0088eaa1    6a02
                         push             esi                                            // 0x0088eaa3    56
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x0088eaa4    89442418
                         {disp8} mov      dword ptr [esp + 0x1c], edi                    // 0x0088eaa8    897c241c
                         {disp8} mov      dword ptr [esp + 0x20], 0x00000000             // 0x0088eaac    c744242000000000
                         call             _jmp_addr_0x0088caa0                           // 0x0088eab4    e8e7dfffff
                         {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x0088eab9    8b542418
                         {disp8} mov      eax, dword ptr [esp + 0x20]                    // 0x0088eabd    8b442420
                         add              esp, 0x10                                      // 0x0088eac1    83c410
                         {disp8} jmp      _jmp_addr_0x0088eaca                           // 0x0088eac4    eb04
_jmp_addr_0x0088eac6:    {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x0088eac6    8b542418
_jmp_addr_0x0088eaca:    {disp32} mov     ecx, dword ptr [esi + 0x000004f0]              // 0x0088eaca    8b8ef0040000
                         test             ecx, ecx                                       // 0x0088ead0    85c9
                         {disp8} jne      _jmp_addr_0x0088eafa                           // 0x0088ead2    7526
                         {disp32} mov     ecx, dword ptr [esi + 0x00000600]              // 0x0088ead4    8b8e00060000
                         test             ecx, ecx                                       // 0x0088eada    85c9
                         {disp8} je       _jmp_addr_0x0088eafa                           // 0x0088eadc    741c
                         push             ebx                                            // 0x0088eade    53
                         {disp32} mov     ebx, dword ptr [esi + 0x00000604]              // 0x0088eadf    8b9e04060000
                         add.s            edi, eax                                       // 0x0088eae5    03f8
                         push             ebx                                            // 0x0088eae7    53
                         add.s            eax, edx                                       // 0x0088eae8    03c2
                         {disp32} mov     edx, dword ptr [esi + 0x000004d0]              // 0x0088eaea    8b96d0040000
                         push             edi                                            // 0x0088eaf0    57
                         push             eax                                            // 0x0088eaf1    50
                         push             edx                                            // 0x0088eaf2    52
                         push             esi                                            // 0x0088eaf3    56
                         call             ecx                                            // 0x0088eaf4    ffd1
                         add              esp, 0x14                                      // 0x0088eaf6    83c414
                         pop              ebx                                            // 0x0088eaf9    5b
_jmp_addr_0x0088eafa:    pop              edi                                            // 0x0088eafa    5f
                         pop              esi                                            // 0x0088eafb    5e
                         add              esp, 0x0c                                      // 0x0088eafc    83c40c
                         ret                                                             // 0x0088eaff    c3
_jmp_addr_0x0088eb00:    {disp32} mov     eax, dword ptr [rdata_bytes + 0xfaf50]         // 0x0088eb00    a1503f9a00
                         push             esi                                            // 0x0088eb05    56
                         push             edi                                            // 0x0088eb06    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                    // 0x0088eb07    8b7c240c
                         xor.s            eax, edi                                       // 0x0088eb0b    33c7
                         push             eax                                            // 0x0088eb0d    50
                         push             0x00c3a994                                     // 0x0088eb0e    6894a9c300
                         push             0x00faae50                                     // 0x0088eb13    6850aefa00
                         call             _sprintf                                       // 0x0088eb18    e8b56cf3ff
                         add              esp, 0x0c                                      // 0x0088eb1d    83c40c
                         mov              esi, 0x00000001                                // 0x0088eb20    be01000000
_jmp_addr_0x0088eb25:    movsx            ecx, byte ptr [esi + 0x00faae50]               // 0x0088eb25    0fbe8e50aefa00
                         push             ecx                                            // 0x0088eb2c    51
                         push             0x009a3f28                                     // 0x0088eb2d    68283f9a00
                         call             _strchr                                        // 0x0088eb32    e8b9a6f3ff
                         add              esp, 0x08                                      // 0x0088eb37    83c408
                         sub              eax, 0x009a3f28                                // 0x0088eb3a    2d283f9a00
                         {disp8} js       _jmp_addr_0x0088eb5a                           // 0x0088eb3f    7819
                         cmp              eax, 0x0f                                      // 0x0088eb41    83f80f
                         {disp8} jg       _jmp_addr_0x0088eb5a                           // 0x0088eb44    7f14
                         {disp32} mov     dl, byte ptr [eax + 0x009a3f3c]                // 0x0088eb46    8a903c3f9a00
                         {disp32} mov     byte ptr [esi + 0x00faae50], dl                // 0x0088eb4c    889650aefa00
                         inc              esi                                            // 0x0088eb52    46
                         cmp              esi, 0x09                                      // 0x0088eb53    83fe09
                         {disp8} jl       _jmp_addr_0x0088eb25                           // 0x0088eb56    7ccd
                         {disp8} jmp      _jmp_addr_0x0088eb88                           // 0x0088eb58    eb2e
_jmp_addr_0x0088eb5a:    {disp32} mov     eax, dword ptr [data_bytes + 0x274988]         // 0x0088eb5a    a188a9c300
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x27498c]         // 0x0088eb5f    8b0d8ca9c300
                         {disp32} mov     dx, word ptr [data_bytes + 0x274990]           // 0x0088eb65    668b1590a9c300
                         {disp32} mov     dword ptr [data_bytes + 0x5e4e50], eax         // 0x0088eb6c    a350aefa00
                         {disp32} mov     al, byte ptr [data_bytes + 0x274992]           // 0x0088eb71    a092a9c300
                         {disp32} mov     dword ptr [data_bytes + 0x5e4e54], ecx         // 0x0088eb76    890d54aefa00
                         {disp32} mov     word ptr [data_bytes + 0x5e4e58], dx           // 0x0088eb7c    66891558aefa00
                         {disp32} mov     byte ptr [data_bytes + 0x5e4e5a], al           // 0x0088eb83    a25aaefa00
_jmp_addr_0x0088eb88:    {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x0088eb88    8b542410
                         test             edx, edx                                       // 0x0088eb8c    85d2
                         {disp8} je       _jmp_addr_0x0088ebb7                           // 0x0088eb8e    7427
                         mov              edi, 0x00faae50                                // 0x0088eb90    bf50aefa00
                         or               ecx, 0xffffffff                                // 0x0088eb95    83c9ff
                         xor.s            eax, eax                                       // 0x0088eb98    33c0
                         repne scasb                                                     // 0x0088eb9a    f2ae
                         not              ecx                                            // 0x0088eb9c    f7d1
                         sub.s            edi, ecx                                       // 0x0088eb9e    2bf9
                         mov.s            eax, ecx                                       // 0x0088eba0    8bc1
                         mov.s            esi, edi                                       // 0x0088eba2    8bf7
                         mov.s            edi, edx                                       // 0x0088eba4    8bfa
                         shr              ecx, 2                                         // 0x0088eba6    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088eba9    f3a5
                         mov.s            ecx, eax                                       // 0x0088ebab    8bc8
                         mov.s            eax, edx                                       // 0x0088ebad    8bc2
                         and              ecx, 0x03                                      // 0x0088ebaf    83e103
                         rep movsb                                                       // 0x0088ebb2    f3a4
                         pop              edi                                            // 0x0088ebb4    5f
                         pop              esi                                            // 0x0088ebb5    5e
                         ret                                                             // 0x0088ebb6    c3
_jmp_addr_0x0088ebb7:    pop              edi                                            // 0x0088ebb7    5f
                         mov              eax, 0x00faae50                                // 0x0088ebb8    b850aefa00
                         pop              esi                                            // 0x0088ebbd    5e
                         ret                                                             // 0x0088ebbe    c3
                         nop                                                             // 0x0088ebbf    90
_jmp_addr_0x0088ebc0:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x0088ebc0    8b442404
                         sub              esp, 0x10                                      // 0x0088ebc4    83ec10
                         test             eax, eax                                       // 0x0088ebc7    85c0
                         push             esi                                            // 0x0088ebc9    56
                         {disp8} jne      _jmp_addr_0x0088ebd1                           // 0x0088ebca    7505
                         pop              esi                                            // 0x0088ebcc    5e
                         add              esp, 0x10                                      // 0x0088ebcd    83c410
                         ret                                                             // 0x0088ebd0    c3
_jmp_addr_0x0088ebd1:    cmp              byte ptr [eax], 0x58                           // 0x0088ebd1    803858
                         {disp8} je       _jmp_addr_0x0088ebdd                           // 0x0088ebd4    7407
                         xor.s            eax, eax                                       // 0x0088ebd6    33c0
                         pop              esi                                            // 0x0088ebd8    5e
                         add              esp, 0x10                                      // 0x0088ebd9    83c410
                         ret                                                             // 0x0088ebdc    c3
_jmp_addr_0x0088ebdd:    cmp              byte ptr [eax + 0x09], 0x58                    // 0x0088ebdd    80780958
                         {disp8} je       _jmp_addr_0x0088ebea                           // 0x0088ebe1    7407
_jmp_addr_0x0088ebe3:    xor.s            eax, eax                                       // 0x0088ebe3    33c0
                         pop              esi                                            // 0x0088ebe5    5e
                         add              esp, 0x10                                      // 0x0088ebe6    83c410
                         ret                                                             // 0x0088ebe9    c3
_jmp_addr_0x0088ebea:    inc              eax                                            // 0x0088ebea    40
                         push             0x8                                            // 0x0088ebeb    6a08
                         push             eax                                            // 0x0088ebed    50
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                    // 0x0088ebee    8d44240c
                         push             eax                                            // 0x0088ebf2    50
                         call             _strncpy                                       // 0x0088ebf3    e8a8a4f3ff
                         add              esp, 0x0c                                      // 0x0088ebf8    83c40c
                         {disp8} mov      byte ptr [esp + 0x0c], 0x00                    // 0x0088ebfb    c644240c00
                         xor.s            esi, esi                                       // 0x0088ec00    33f6
_jmp_addr_0x0088ec02:    movsx            ecx, byte ptr [esp + esi * 0x1 + 0x04]         // 0x0088ec02    0fbe4c3404
                         push             ecx                                            // 0x0088ec07    51
                         push             0x009a3f3c                                     // 0x0088ec08    683c3f9a00
                         call             _strchr                                        // 0x0088ec0d    e8dea5f3ff
                         add              esp, 0x08                                      // 0x0088ec12    83c408
                         sub              eax, 0x009a3f3c                                // 0x0088ec15    2d3c3f9a00
                         {disp8} js       _jmp_addr_0x0088ebe3                           // 0x0088ec1a    78c7
                         cmp              eax, 0x0f                                      // 0x0088ec1c    83f80f
                         {disp8} jg       _jmp_addr_0x0088ebe3                           // 0x0088ec1f    7fc2
                         {disp32} mov     dl, byte ptr [eax + 0x009a3f28]                // 0x0088ec21    8a90283f9a00
                         {disp8} mov      byte ptr [esp + esi * 0x1 + 0x04], dl          // 0x0088ec27    88543404
                         inc              esi                                            // 0x0088ec2b    46
                         cmp              esi, 0x08                                      // 0x0088ec2c    83fe08
                         {disp8} jl       _jmp_addr_0x0088ec02                           // 0x0088ec2f    7cd1
                         {disp8} lea      eax, dword ptr [esp + 0x18]                    // 0x0088ec31    8d442418
                         {disp8} lea      ecx, dword ptr [esp + 0x04]                    // 0x0088ec35    8d4c2404
                         push             eax                                            // 0x0088ec39    50
                         push             0x00c39034                                     // 0x0088ec3a    683490c300
                         push             ecx                                            // 0x0088ec3f    51
                         call             _sscanf                                        // 0x0088ec40    e88e7ef3ff
                         {disp32} mov     eax, dword ptr [rdata_bytes + 0xfaf50]         // 0x0088ec45    a1503f9a00
                         {disp8} mov      ecx, dword ptr [esp + 0x24]                    // 0x0088ec4a    8b4c2424
                         add              esp, 0x0c                                      // 0x0088ec4e    83c40c
                         xor.s            eax, ecx                                       // 0x0088ec51    33c1
                         pop              esi                                            // 0x0088ec53    5e
                         add              esp, 0x10                                      // 0x0088ec54    83c410
                         ret                                                             // 0x0088ec57    c3
                         nop                                                             // 0x0088ec58    90
                         nop                                                             // 0x0088ec59    90
                         nop                                                             // 0x0088ec5a    90
                         nop                                                             // 0x0088ec5b    90
                         nop                                                             // 0x0088ec5c    90
                         nop                                                             // 0x0088ec5d    90
                         nop                                                             // 0x0088ec5e    90
                         nop                                                             // 0x0088ec5f    90
_jmp_addr_0x0088ec60:    {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x0088ec60    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                    // 0x0088ec64    8b4c2404
                         push             eax                                            // 0x0088ec68    50
                         push             0x00c3a99c                                     // 0x0088ec69    689ca9c300
                         push             ecx                                            // 0x0088ec6e    51
                         call             _sprintf                                       // 0x0088ec6f    e85e6bf3ff
                         add              esp, 0x0c                                      // 0x0088ec74    83c40c
                         ret                                                             // 0x0088ec77    c3
                         nop                                                             // 0x0088ec78    90
                         nop                                                             // 0x0088ec79    90
                         nop                                                             // 0x0088ec7a    90
                         nop                                                             // 0x0088ec7b    90
                         nop                                                             // 0x0088ec7c    90
                         nop                                                             // 0x0088ec7d    90
                         nop                                                             // 0x0088ec7e    90
                         nop                                                             // 0x0088ec7f    90
_jmp_addr_0x0088ec80:    {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x0088ec80    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                    // 0x0088ec84    8b4c2404
                         push             eax                                            // 0x0088ec88    50
                         push             0x00c3a9a4                                     // 0x0088ec89    68a4a9c300
                         push             ecx                                            // 0x0088ec8e    51
                         call             _sprintf                                       // 0x0088ec8f    e83e6bf3ff
                         add              esp, 0x0c                                      // 0x0088ec94    83c40c
                         ret                                                             // 0x0088ec97    c3
                         nop                                                             // 0x0088ec98    90
                         nop                                                             // 0x0088ec99    90
                         nop                                                             // 0x0088ec9a    90
                         nop                                                             // 0x0088ec9b    90
                         nop                                                             // 0x0088ec9c    90
                         nop                                                             // 0x0088ec9d    90
                         nop                                                             // 0x0088ec9e    90
                         nop                                                             // 0x0088ec9f    90
_jmp_addr_0x0088eca0:    {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x0088eca0    8b44240c
                         push             0x0                                            // 0x0088eca4    6a00
                         push             eax                                            // 0x0088eca6    50
                         call             _jmp_addr_0x0088eb00                           // 0x0088eca7    e854feffff
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x0088ecac    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x0088ecb0    8b54240c
                         push             eax                                            // 0x0088ecb4    50
                         push             ecx                                            // 0x0088ecb5    51
                         push             0x00c3a9ac                                     // 0x0088ecb6    68aca9c300
                         push             edx                                            // 0x0088ecbb    52
                         call             _sprintf                                       // 0x0088ecbc    e8116bf3ff
                         add              esp, 0x18                                      // 0x0088ecc1    83c418
                         ret                                                             // 0x0088ecc4    c3
                         nop                                                             // 0x0088ecc5    90
                         nop                                                             // 0x0088ecc6    90
                         nop                                                             // 0x0088ecc7    90
                         nop                                                             // 0x0088ecc8    90
                         nop                                                             // 0x0088ecc9    90
                         nop                                                             // 0x0088ecca    90
                         nop                                                             // 0x0088eccb    90
                         nop                                                             // 0x0088eccc    90
                         nop                                                             // 0x0088eccd    90
                         nop                                                             // 0x0088ecce    90
                         nop                                                             // 0x0088eccf    90
_jmp_addr_0x0088ecd0:    {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x0088ecd0    8b44240c
                         test             eax, eax                                       // 0x0088ecd4    85c0
                         {disp8} je       _jmp_addr_0x0088ecf1                           // 0x0088ecd6    7419
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                    // 0x0088ecd8    8b4c2404
                         push             eax                                            // 0x0088ecdc    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x0088ecdd    8b44240c
                         push             eax                                            // 0x0088ece1    50
                         push             0x00c3a9c4                                     // 0x0088ece2    68c4a9c300
                         push             ecx                                            // 0x0088ece7    51
                         call             _sprintf                                       // 0x0088ece8    e8e56af3ff
                         add              esp, 0x10                                      // 0x0088eced    83c410
                         ret                                                             // 0x0088ecf0    c3
_jmp_addr_0x0088ecf1:    {disp8} mov      edx, dword ptr [esp + 0x08]                    // 0x0088ecf1    8b542408
                         {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x0088ecf5    8b442404
                         push             edx                                            // 0x0088ecf9    52
                         push             0x00c3a9b8                                     // 0x0088ecfa    68b8a9c300
                         push             eax                                            // 0x0088ecff    50
                         call             _sprintf                                       // 0x0088ed00    e8cd6af3ff
                         add              esp, 0x0c                                      // 0x0088ed05    83c40c
                         ret                                                             // 0x0088ed08    c3
                         nop                                                             // 0x0088ed09    90
                         nop                                                             // 0x0088ed0a    90
                         nop                                                             // 0x0088ed0b    90
                         nop                                                             // 0x0088ed0c    90
                         nop                                                             // 0x0088ed0d    90
                         nop                                                             // 0x0088ed0e    90
                         nop                                                             // 0x0088ed0f    90
_jmp_addr_0x0088ed10:    {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x0088ed10    8b44240c
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088ed14    8b4c2408
                         push             eax                                            // 0x0088ed18    50
                         push             0x0                                            // 0x0088ed19    6a00
                         push             ecx                                            // 0x0088ed1b    51
                         call             _jmp_addr_0x0088eb00                           // 0x0088ed1c    e8dffdffff
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x0088ed21    8b542410
                         add              esp, 0x08                                      // 0x0088ed25    83c408
                         push             eax                                            // 0x0088ed28    50
                         push             0x00c3a9d4                                     // 0x0088ed29    68d4a9c300
                         push             edx                                            // 0x0088ed2e    52
                         call             _sprintf                                       // 0x0088ed2f    e89e6af3ff
                         add              esp, 0x10                                      // 0x0088ed34    83c410
                         ret                                                             // 0x0088ed37    c3
                         nop                                                             // 0x0088ed38    90
                         nop                                                             // 0x0088ed39    90
                         nop                                                             // 0x0088ed3a    90
                         nop                                                             // 0x0088ed3b    90
                         nop                                                             // 0x0088ed3c    90
                         nop                                                             // 0x0088ed3d    90
                         nop                                                             // 0x0088ed3e    90
                         nop                                                             // 0x0088ed3f    90
_jmp_addr_0x0088ed40:    push             esi                                            // 0x0088ed40    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x0088ed41    8b742408
                         test             esi, esi                                       // 0x0088ed45    85f6
                         push             edi                                            // 0x0088ed47    57
                         {disp8} jne      _jmp_addr_0x0088ed4f                           // 0x0088ed48    7505
                         pop              edi                                            // 0x0088ed4a    5f
                         xor.s            eax, eax                                       // 0x0088ed4b    33c0
                         pop              esi                                            // 0x0088ed4d    5e
                         ret                                                             // 0x0088ed4e    c3
_jmp_addr_0x0088ed4f:    mov.s            edi, esi                                       // 0x0088ed4f    8bfe
                         or               ecx, 0xffffffff                                // 0x0088ed51    83c9ff
                         xor.s            eax, eax                                       // 0x0088ed54    33c0
                         repne scasb                                                     // 0x0088ed56    f2ae
                         not              ecx                                            // 0x0088ed58    f7d1
                         dec              ecx                                            // 0x0088ed5a    49
                         cmp              ecx, 0x0c                                      // 0x0088ed5b    83f90c
                         {disp8} jae      _jmp_addr_0x0088ed63                           // 0x0088ed5e    7303
                         pop              edi                                            // 0x0088ed60    5f
                         pop              esi                                            // 0x0088ed61    5e
                         ret                                                             // 0x0088ed62    c3
_jmp_addr_0x0088ed63:    push             esi                                            // 0x0088ed63    56
                         call             _jmp_addr_0x0088ebc0                           // 0x0088ed64    e857feffff
                         mov.s            edi, eax                                       // 0x0088ed69    8bf8
                         add              esp, 0x04                                      // 0x0088ed6b    83c404
                         test             edi, edi                                       // 0x0088ed6e    85ff
                         {disp8} jne      _jmp_addr_0x0088ed75                           // 0x0088ed70    7503
                         pop              edi                                            // 0x0088ed72    5f
                         pop              esi                                            // 0x0088ed73    5e
                         ret                                                             // 0x0088ed74    c3
_jmp_addr_0x0088ed75:    cmp              dword ptr [data_bytes + 0x267d2c], 0x01        // 0x0088ed75    833d2cddc20001
                         {disp8} jle      _jmp_addr_0x0088ed92                           // 0x0088ed7c    7e14
                         movsx            eax, byte ptr [esi + 0x0b]                     // 0x0088ed7e    0fbe460b
                         add              esi, 0x0b                                      // 0x0088ed82    83c60b
                         push             0x4                                            // 0x0088ed85    6a04
                         push             eax                                            // 0x0088ed87    50
                         call             __isctype                                      // 0x0088ed88    e806ccf3ff
                         add              esp, 0x08                                      // 0x0088ed8d    83c408
                         {disp8} jmp      _jmp_addr_0x0088eda5                           // 0x0088ed90    eb13
_jmp_addr_0x0088ed92:    movsx            ecx, byte ptr [esi + 0x0b]                     // 0x0088ed92    0fbe4e0b
                         {disp32} mov     edx, dword ptr [data_bytes + 0x267b20]         // 0x0088ed96    8b1520dbc200
                         add              esi, 0x0b                                      // 0x0088ed9c    83c60b
                         mov              al, byte ptr [edx + ecx * 0x2]                 // 0x0088ed9f    8a044a
                         and              eax, 0x04                                      // 0x0088eda2    83e004
_jmp_addr_0x0088eda5:    test             eax, eax                                       // 0x0088eda5    85c0
                         {disp8} jne      _jmp_addr_0x0088edac                           // 0x0088eda7    7503
                         pop              edi                                            // 0x0088eda9    5f
                         pop              esi                                            // 0x0088edaa    5e
                         ret                                                             // 0x0088edab    c3
_jmp_addr_0x0088edac:    push             esi                                            // 0x0088edac    56
                         call             _atoi                           // 0x0088edad    e8d577f3ff
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x0088edb2    8b4c2414
                         add              esp, 0x04                                      // 0x0088edb6    83c404
                         test             ecx, ecx                                       // 0x0088edb9    85c9
                         {disp8} je       _jmp_addr_0x0088edbf                           // 0x0088edbb    7402
                         mov              dword ptr [ecx], edi                           // 0x0088edbd    8939
_jmp_addr_0x0088edbf:    {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x0088edbf    8b4c2414
                         test             ecx, ecx                                       // 0x0088edc3    85c9
                         {disp8} je       _jmp_addr_0x0088edc9                           // 0x0088edc5    7402
                         mov              dword ptr [ecx], eax                           // 0x0088edc7    8901
_jmp_addr_0x0088edc9:    pop              edi                                            // 0x0088edc9    5f
                         mov              eax, 0x00000001                                // 0x0088edca    b801000000
                         pop              esi                                            // 0x0088edcf    5e
                         ret                                                             // 0x0088edd0    c3
                         nop                                                             // 0x0088edd1    90
                         nop                                                             // 0x0088edd2    90
                         nop                                                             // 0x0088edd3    90
                         nop                                                             // 0x0088edd4    90
                         nop                                                             // 0x0088edd5    90
                         nop                                                             // 0x0088edd6    90
                         nop                                                             // 0x0088edd7    90
                         nop                                                             // 0x0088edd8    90
                         nop                                                             // 0x0088edd9    90
                         nop                                                             // 0x0088edda    90
                         nop                                                             // 0x0088eddb    90
                         nop                                                             // 0x0088eddc    90
                         nop                                                             // 0x0088eddd    90
                         nop                                                             // 0x0088edde    90
                         nop                                                             // 0x0088eddf    90
_jmp_addr_0x0088ede0:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x0088ede0    8b442404
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x0088ede4    8b4c2408
                         push             eax                                            // 0x0088ede8    50
                         push             ecx                                            // 0x0088ede9    51
                         call             _jmp_addr_0x0088eb00                           // 0x0088edea    e811fdffff
                         add              esp, 0x08                                      // 0x0088edef    83c408
                         ret                                                             // 0x0088edf2    c3
                         nop                                                             // 0x0088edf3    90
                         nop                                                             // 0x0088edf4    90
                         nop                                                             // 0x0088edf5    90
                         nop                                                             // 0x0088edf6    90
                         nop                                                             // 0x0088edf7    90
                         nop                                                             // 0x0088edf8    90
                         nop                                                             // 0x0088edf9    90
                         nop                                                             // 0x0088edfa    90
                         nop                                                             // 0x0088edfb    90
                         nop                                                             // 0x0088edfc    90
                         nop                                                             // 0x0088edfd    90
                         nop                                                             // 0x0088edfe    90
                         nop                                                             // 0x0088edff    90
_jmp_addr_0x0088ee00:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x0088ee00    8b442404
                         test             eax, eax                                       // 0x0088ee04    85c0
                         {disp8} jne      _jmp_addr_0x0088ee09                           // 0x0088ee06    7501
                         ret                                                             // 0x0088ee08    c3
_jmp_addr_0x0088ee09:    push             eax                                            // 0x0088ee09    50
                         call             _jmp_addr_0x0088ebc0                           // 0x0088ee0a    e8b1fdffff
                         add              esp, 0x04                                      // 0x0088ee0f    83c404
                         ret                                                             // 0x0088ee12    c3
                         nop                                                             // 0x0088ee13    90
                         nop                                                             // 0x0088ee14    90
                         nop                                                             // 0x0088ee15    90
                         nop                                                             // 0x0088ee16    90
                         nop                                                             // 0x0088ee17    90
                         nop                                                             // 0x0088ee18    90
                         nop                                                             // 0x0088ee19    90
                         nop                                                             // 0x0088ee1a    90
                         nop                                                             // 0x0088ee1b    90
                         nop                                                             // 0x0088ee1c    90
                         nop                                                             // 0x0088ee1d    90
                         nop                                                             // 0x0088ee1e    90
                         nop                                                             // 0x0088ee1f    90
_jmp_addr_0x0088ee20:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x0088ee20    8b442404
                         xor.s            ecx, ecx                                       // 0x0088ee24    33c9
                         {disp8} mov      dword ptr [eax + 0x14], ecx                    // 0x0088ee26    894814
                         {disp8} mov      dword ptr [eax + 0x10], ecx                    // 0x0088ee29    894810
                         mov              dword ptr [eax], 0x67452301                    // 0x0088ee2c    c70001234567
                         {disp8} mov      dword ptr [eax + 0x04], 0xefcdab89             // 0x0088ee32    c7400489abcdef
                         {disp8} mov      dword ptr [eax + 0x08], 0x98badcfe             // 0x0088ee39    c74008fedcba98
                         {disp8} mov      dword ptr [eax + 0x0c], 0x10325476             // 0x0088ee40    c7400c76543210
                         ret                                                             // 0x0088ee47    c3
                         nop                                                             // 0x0088ee48    90
                         nop                                                             // 0x0088ee49    90
                         nop                                                             // 0x0088ee4a    90
                         nop                                                             // 0x0088ee4b    90
                         nop                                                             // 0x0088ee4c    90
                         nop                                                             // 0x0088ee4d    90
                         nop                                                             // 0x0088ee4e    90
                         nop                                                             // 0x0088ee4f    90
_jmp_addr_0x0088ee50:    push             ebx                                            // 0x0088ee50    53
                         push             ebp                                            // 0x0088ee51    55
                         push             esi                                            // 0x0088ee52    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                    // 0x0088ee53    8b742410
                         push             edi                                            // 0x0088ee57    57
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                    // 0x0088ee58    8b7c241c
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                    // 0x0088ee5c    8b4e10
                         mov.s            eax, ecx                                       // 0x0088ee5f    8bc1
                         {disp32} lea     edx, dword ptr [edi * 0x8 + 0x00000000]        // 0x0088ee61    8d14fd00000000
                         shr              eax, 3                                         // 0x0088ee68    c1e803
                         lea              ecx, dword ptr [ecx + edi * 0x8]               // 0x0088ee6b    8d0cf9
                         and              eax, 0x3f                                      // 0x0088ee6e    83e03f
                         cmp.s            ecx, edx                                       // 0x0088ee71    3bca
                         {disp8} mov      dword ptr [esi + 0x10], ecx                    // 0x0088ee73    894e10
                         {disp8} jae      _jmp_addr_0x0088ee7b                           // 0x0088ee76    7303
                         {disp8} inc      dword ptr [esi + 0x14]                         // 0x0088ee78    ff4614
_jmp_addr_0x0088ee7b:    {disp8} mov      ebx, dword ptr [esi + 0x14]                    // 0x0088ee7b    8b5e14
                         mov.s            ecx, edi                                       // 0x0088ee7e    8bcf
                         shr              ecx, 0x1d                                      // 0x0088ee80    c1e91d
                         add.s            ebx, ecx                                       // 0x0088ee83    03d9
                         {disp8} mov      dword ptr [esi + 0x14], ebx                    // 0x0088ee85    895e14
                         mov              ebx, 0x00000040                                // 0x0088ee88    bb40000000
                         sub.s            ebx, eax                                       // 0x0088ee8d    2bd8
                         cmp.s            edi, ebx                                       // 0x0088ee8f    3bfb
                         .byte            0x72, 0x46// {disp8} jb _jmp_addr_0x0088eed9   // 0x0088ee91    7246
                         {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x0088ee93    8b542418
                         push             ebx                                            // 0x0088ee97    53
                         {disp8} lea      eax, dword ptr [eax + esi * 0x1 + 0x18]        // 0x0088ee98    8d443018
                         push             edx                                            // 0x0088ee9c    52
                         push             eax                                            // 0x0088ee9d    50
                         call             _jmp_addr_0x0088f960                           // 0x0088ee9e    e8bd0a0000
                         {disp8} lea      ecx, dword ptr [esi + 0x18]                    // 0x0088eea3    8d4e18
                         push             ecx                                            // 0x0088eea6    51
                         push             esi                                            // 0x0088eea7    56
                         call             _jmp_addr_0x0088ef70                           // 0x0088eea8    e8c3000000
                         mov.s            ebp, ebx                                       // 0x0088eead    8beb
                         add              ebx, 0x3f                                      // 0x0088eeaf    83c33f
                         add              esp, 0x14                                      // 0x0088eeb2    83c414
                         cmp.s            ebx, edi                                       // 0x0088eeb5    3bdf
                         {disp8} jae      _jmp_addr_0x0088eed5                           // 0x0088eeb7    731c
_jmp_addr_0x0088eeb9:    {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x0088eeb9    8b542418
                         {disp8} lea      eax, dword ptr [edx + ebx * 0x1 + -0x3f]       // 0x0088eebd    8d441ac1
                         push             eax                                            // 0x0088eec1    50
                         push             esi                                            // 0x0088eec2    56
                         call             _jmp_addr_0x0088ef70                           // 0x0088eec3    e8a8000000
                         add              ebx, 0x40                                      // 0x0088eec8    83c340
                         add              esp, 0x08                                      // 0x0088eecb    83c408
                         add              ebp, 0x40                                      // 0x0088eece    83c540
                         cmp.s            ebx, edi                                       // 0x0088eed1    3bdf
                         .byte            0x72, 0xe4// {disp8} jb _jmp_addr_0x0088eeb9   // 0x0088eed3    72e4
_jmp_addr_0x0088eed5:    xor.s            eax, eax                                       // 0x0088eed5    33c0
                         {disp8} jmp      _jmp_addr_0x0088eedb                           // 0x0088eed7    eb02
_jmp_addr_0x0088eed9:    xor.s            ebp, ebp                                       // 0x0088eed9    33ed
_jmp_addr_0x0088eedb:    {disp8} mov      ecx, dword ptr [esp + 0x18]                    // 0x0088eedb    8b4c2418
                         sub.s            edi, ebp                                       // 0x0088eedf    2bfd
                         add.s            ebp, ecx                                       // 0x0088eee1    03e9
                         push             edi                                            // 0x0088eee3    57
                         {disp8} lea      edx, dword ptr [eax + esi * 0x1 + 0x18]        // 0x0088eee4    8d543018
                         push             ebp                                            // 0x0088eee8    55
                         push             edx                                            // 0x0088eee9    52
                         call             _jmp_addr_0x0088f960                           // 0x0088eeea    e8710a0000
                         add              esp, 0x0c                                      // 0x0088eeef    83c40c
                         pop              edi                                            // 0x0088eef2    5f
                         pop              esi                                            // 0x0088eef3    5e
                         pop              ebp                                            // 0x0088eef4    5d
                         pop              ebx                                            // 0x0088eef5    5b
                         ret                                                             // 0x0088eef6    c3
                         nop                                                             // 0x0088eef7    90
                         nop                                                             // 0x0088eef8    90
                         nop                                                             // 0x0088eef9    90
                         nop                                                             // 0x0088eefa    90
                         nop                                                             // 0x0088eefb    90
                         nop                                                             // 0x0088eefc    90
                         nop                                                             // 0x0088eefd    90
                         nop                                                             // 0x0088eefe    90
                         nop                                                             // 0x0088eeff    90
_jmp_addr_0x0088ef00:    sub              esp, 0x08                                      // 0x0088ef00    83ec08
                         {disp8} lea      eax, dword ptr [esp + 0x00]                    // 0x0088ef03    8d442400
                         push             esi                                            // 0x0088ef07    56
                         push             edi                                            // 0x0088ef08    57
                         {disp8} mov      edi, dword ptr [esp + 0x18]                    // 0x0088ef09    8b7c2418
                         push             0x8                                            // 0x0088ef0d    6a08
                         {disp8} lea      esi, dword ptr [edi + 0x10]                    // 0x0088ef0f    8d7710
                         push             esi                                            // 0x0088ef12    56
                         push             eax                                            // 0x0088ef13    50
                         call             _jmp_addr_0x0088f8c0                           // 0x0088ef14    e8a7090000
                         mov              eax, dword ptr [esi]                           // 0x0088ef19    8b06
                         add              esp, 0x0c                                      // 0x0088ef1b    83c40c
                         shr              eax, 3                                         // 0x0088ef1e    c1e803
                         and              eax, 0x3f                                      // 0x0088ef21    83e03f
                         mov              ecx, 0x00000038                                // 0x0088ef24    b938000000
                         cmp              eax, 0x38                                      // 0x0088ef29    83f838
                         .byte            0x72, 0x5// {disp8} jb _jmp_addr_0x0088ef33    // 0x0088ef2c    7205
                         mov              ecx, 0x00000078                                // 0x0088ef2e    b978000000
_jmp_addr_0x0088ef33:    sub.s            ecx, eax                                       // 0x0088ef33    2bc8
                         push             ecx                                            // 0x0088ef35    51
                         push             0x00c3a9dc                                     // 0x0088ef36    68dca9c300
                         push             edi                                            // 0x0088ef3b    57
                         call             _jmp_addr_0x0088ee50                           // 0x0088ef3c    e80fffffff
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                    // 0x0088ef41    8d4c2414
                         push             0x8                                            // 0x0088ef45    6a08
                         push             ecx                                            // 0x0088ef47    51
                         push             edi                                            // 0x0088ef48    57
                         call             _jmp_addr_0x0088ee50                           // 0x0088ef49    e802ffffff
                         {disp8} mov      edx, dword ptr [esp + 0x2c]                    // 0x0088ef4e    8b54242c
                         push             0x10                                           // 0x0088ef52    6a10
                         push             edi                                            // 0x0088ef54    57
                         push             edx                                            // 0x0088ef55    52
                         call             _jmp_addr_0x0088f8c0                           // 0x0088ef56    e865090000
                         push             0x58                                           // 0x0088ef5b    6a58
                         push             0x0                                            // 0x0088ef5d    6a00
                         push             edi                                            // 0x0088ef5f    57
                         call             _jmp_addr_0x0088f980                           // 0x0088ef60    e81b0a0000
                         add              esp, 0x30                                      // 0x0088ef65    83c430
                         pop              edi                                            // 0x0088ef68    5f
                         pop              esi                                            // 0x0088ef69    5e
                         add              esp, 0x08                                      // 0x0088ef6a    83c408
                         ret                                                             // 0x0088ef6d    c3
                         nop                                                             // 0x0088ef6e    90
                         nop                                                             // 0x0088ef6f    90
_jmp_addr_0x0088ef70:    sub              esp, 0x40                                      // 0x0088ef70    83ec40
                         {disp8} mov      ecx, dword ptr [esp + 0x48]                    // 0x0088ef73    8b4c2448
                         push             ebx                                            // 0x0088ef77    53
                         push             ebp                                            // 0x0088ef78    55
                         push             esi                                            // 0x0088ef79    56
                         {disp8} mov      esi, dword ptr [esp + 0x50]                    // 0x0088ef7a    8b742450
                         push             edi                                            // 0x0088ef7e    57
                         push             0x40                                           // 0x0088ef7f    6a40
                         {disp8} lea      edx, dword ptr [esp + 0x14]                    // 0x0088ef81    8d542414
                         mov              eax, dword ptr [esi]                           // 0x0088ef85    8b06
                         {disp8} mov      edi, dword ptr [esi + 0x04]                    // 0x0088ef87    8b7e04
                         {disp8} mov      ebx, dword ptr [esi + 0x08]                    // 0x0088ef8a    8b5e08
                         {disp8} mov      ebp, dword ptr [esi + 0x0c]                    // 0x0088ef8d    8b6e0c
                         push             ecx                                            // 0x0088ef90    51
                         push             edx                                            // 0x0088ef91    52
                         {disp8} mov      dword ptr [esp + 0x60], eax                    // 0x0088ef92    89442460
                         call             _jmp_addr_0x0088f910                           // 0x0088ef96    e875090000
                         mov.s            eax, edi                                       // 0x0088ef9b    8bc7
                         {disp8} mov      edx, dword ptr [esp + 0x60]                    // 0x0088ef9d    8b542460
                         not              eax                                            // 0x0088efa1    f7d0
                         mov.s            ecx, ebx                                       // 0x0088efa3    8bcb
                         and.s            eax, ebp                                       // 0x0088efa5    23c5
                         and.s            ecx, edi                                       // 0x0088efa7    23cf
                         or.s             eax, ecx                                       // 0x0088efa9    0bc1
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                    // 0x0088efab    8b4c241c
                         add.s            eax, ecx                                       // 0x0088efaf    03c1
                         {disp32} lea     ecx, dword ptr [edx + eax * 0x1 + -0x28955b88] // 0x0088efb1    8d8c0278a46ad7
                         mov.s            edx, edi                                       // 0x0088efb8    8bd7
                         mov.s            eax, ecx                                       // 0x0088efba    8bc1
                         shr              eax, 0x19                                      // 0x0088efbc    c1e819
                         shl              ecx, 7                                         // 0x0088efbf    c1e107
                         or.s             eax, ecx                                       // 0x0088efc2    0bc1
                         add.s            eax, edi                                       // 0x0088efc4    03c7
                         mov.s            ecx, eax                                       // 0x0088efc6    8bc8
                         and.s            edx, eax                                       // 0x0088efc8    23d0
                         not              ecx                                            // 0x0088efca    f7d1
                         and.s            ecx, ebx                                       // 0x0088efcc    23cb
                         or.s             ecx, edx                                       // 0x0088efce    0bca
                         {disp8} mov      edx, dword ptr [esp + 0x20]                    // 0x0088efd0    8b542420
                         add.s            ecx, edx                                       // 0x0088efd4    03ca
                         {disp32} lea     edx, dword ptr [ecx + ebp * 0x1 + -0x173848aa] // 0x0088efd6    8d942956b7c7e8
                         mov.s            ecx, edx                                       // 0x0088efdd    8bca
                         shr              ecx, 0x14                                      // 0x0088efdf    c1e914
                         shl              edx, 0xc                                       // 0x0088efe2    c1e20c
                         or.s             ecx, edx                                       // 0x0088efe5    0bca
                         add.s            ecx, eax                                       // 0x0088efe7    03c8
                         mov.s            edx, ecx                                       // 0x0088efe9    8bd1
                         mov.s            ebp, ecx                                       // 0x0088efeb    8be9
                         not              edx                                            // 0x0088efed    f7d2
                         and.s            edx, edi                                       // 0x0088efef    23d7
                         and.s            ebp, eax                                       // 0x0088eff1    23e8
                         or.s             edx, ebp                                       // 0x0088eff3    0bd5
                         {disp8} mov      ebp, dword ptr [esp + 0x24]                    // 0x0088eff5    8b6c2424
                         add.s            edx, ebp                                       // 0x0088eff9    03d5
                         mov.s            ebp, ecx                                       // 0x0088effb    8be9
                         {disp32} lea     ebx, dword ptr [ebx + edx * 0x1 + 0x242070db]  // 0x0088effd    8d9c13db702024
                         mov.s            edx, ebx                                       // 0x0088f004    8bd3
                         shr              edx, 0xf                                       // 0x0088f006    c1ea0f
                         shl              ebx, 0x11                                      // 0x0088f009    c1e311
                         or.s             edx, ebx                                       // 0x0088f00c    0bd3
                         add.s            edx, ecx                                       // 0x0088f00e    03d1
                         mov.s            ebx, edx                                       // 0x0088f010    8bda
                         and.s            ebp, edx                                       // 0x0088f012    23ea
                         not              ebx                                            // 0x0088f014    f7d3
                         and.s            ebx, eax                                       // 0x0088f016    23d8
                         or.s             ebx, ebp                                       // 0x0088f018    0bdd
                         {disp8} mov      ebp, dword ptr [esp + 0x28]                    // 0x0088f01a    8b6c2428
                         add.s            ebx, ebp                                       // 0x0088f01e    03dd
                         {disp32} lea     ebx, dword ptr [edi + ebx * 0x1 + -0x3e423112] // 0x0088f020    8d9c1feecebdc1
                         mov.s            edi, ebx                                       // 0x0088f027    8bfb
                         shl              edi, 0x16                                      // 0x0088f029    c1e716
                         shr              ebx, 0xa                                       // 0x0088f02c    c1eb0a
                         or.s             edi, ebx                                       // 0x0088f02f    0bfb
                         mov.s            ebx, edx                                       // 0x0088f031    8bda
                         add.s            edi, edx                                       // 0x0088f033    03fa
                         {disp8} mov      dword ptr [esp + 0x60], edi                    // 0x0088f035    897c2460
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f039    8b6c2460
                         not              edi                                            // 0x0088f03d    f7d7
                         and.s            edi, ecx                                       // 0x0088f03f    23f9
                         and.s            ebx, ebp                                       // 0x0088f041    23dd
                         {disp8} mov      ebp, dword ptr [esp + 0x2c]                    // 0x0088f043    8b6c242c
                         or.s             edi, ebx                                       // 0x0088f047    0bfb
                         add.s            edi, ebp                                       // 0x0088f049    03fd
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f04b    8b5c2460
                         mov.s            ebp, ebx                                       // 0x0088f04f    8beb
                         {disp32} lea     eax, dword ptr [eax + edi * 0x1 + -0x0a83f051] // 0x0088f051    8d8438af0f7cf5
                         mov.s            edi, eax                                       // 0x0088f058    8bf8
                         shr              edi, 0x19                                      // 0x0088f05a    c1ef19
                         shl              eax, 7                                         // 0x0088f05d    c1e007
                         or.s             edi, eax                                       // 0x0088f060    0bf8
                         add.s            edi, ebx                                       // 0x0088f062    03fb
                         mov.s            eax, edi                                       // 0x0088f064    8bc7
                         and.s            ebp, edi                                       // 0x0088f066    23ef
                         not              eax                                            // 0x0088f068    f7d0
                         and.s            eax, edx                                       // 0x0088f06a    23c2
                         or.s             eax, ebp                                       // 0x0088f06c    0bc5
                         {disp8} mov      ebp, dword ptr [esp + 0x30]                    // 0x0088f06e    8b6c2430
                         add.s            eax, ebp                                       // 0x0088f072    03c5
                         {disp32} lea     ecx, dword ptr [ecx + eax * 0x1 + 0x4787c62a]  // 0x0088f074    8d8c012ac68747
                         mov.s            eax, ecx                                       // 0x0088f07b    8bc1
                         shr              eax, 0x14                                      // 0x0088f07d    c1e814
                         shl              ecx, 0xc                                       // 0x0088f080    c1e10c
                         or.s             eax, ecx                                       // 0x0088f083    0bc1
                         add.s            eax, edi                                       // 0x0088f085    03c7
                         mov.s            ecx, eax                                       // 0x0088f087    8bc8
                         mov.s            ebp, eax                                       // 0x0088f089    8be8
                         not              ecx                                            // 0x0088f08b    f7d1
                         and.s            ecx, ebx                                       // 0x0088f08d    23cb
                         and.s            ebp, edi                                       // 0x0088f08f    23ef
                         or.s             ecx, ebp                                       // 0x0088f091    0bcd
                         {disp8} mov      ebp, dword ptr [esp + 0x34]                    // 0x0088f093    8b6c2434
                         add.s            ecx, ebp                                       // 0x0088f097    03cd
                         mov.s            ebp, eax                                       // 0x0088f099    8be8
                         {disp32} lea     edx, dword ptr [edx + ecx * 0x1 + -0x57cfb9ed] // 0x0088f09b    8d940a134630a8
                         mov.s            ecx, edx                                       // 0x0088f0a2    8bca
                         shr              ecx, 0xf                                       // 0x0088f0a4    c1e90f
                         shl              edx, 0x11                                      // 0x0088f0a7    c1e211
                         or.s             ecx, edx                                       // 0x0088f0aa    0bca
                         add.s            ecx, eax                                       // 0x0088f0ac    03c8
                         mov.s            edx, ecx                                       // 0x0088f0ae    8bd1
                         and.s            ebp, ecx                                       // 0x0088f0b0    23e9
                         not              edx                                            // 0x0088f0b2    f7d2
                         and.s            edx, edi                                       // 0x0088f0b4    23d7
                         or.s             edx, ebp                                       // 0x0088f0b6    0bd5
                         {disp8} mov      ebp, dword ptr [esp + 0x38]                    // 0x0088f0b8    8b6c2438
                         add.s            edx, ebp                                       // 0x0088f0bc    03d5
                         {disp32} lea     ebx, dword ptr [ebx + edx * 0x1 + -0x02b96aff] // 0x0088f0be    8d9c13019546fd
                         mov.s            edx, ebx                                       // 0x0088f0c5    8bd3
                         shl              edx, 0x16                                      // 0x0088f0c7    c1e216
                         shr              ebx, 0xa                                       // 0x0088f0ca    c1eb0a
                         or.s             edx, ebx                                       // 0x0088f0cd    0bd3
                         mov.s            ebx, ecx                                       // 0x0088f0cf    8bd9
                         add.s            edx, ecx                                       // 0x0088f0d1    03d1
                         {disp8} mov      dword ptr [esp + 0x60], edx                    // 0x0088f0d3    89542460
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f0d7    8b6c2460
                         not              edx                                            // 0x0088f0db    f7d2
                         and.s            edx, eax                                       // 0x0088f0dd    23d0
                         and.s            ebx, ebp                                       // 0x0088f0df    23dd
                         {disp8} mov      ebp, dword ptr [esp + 0x3c]                    // 0x0088f0e1    8b6c243c
                         or.s             edx, ebx                                       // 0x0088f0e5    0bd3
                         add.s            edx, ebp                                       // 0x0088f0e7    03d5
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f0e9    8b5c2460
                         mov.s            ebp, ebx                                       // 0x0088f0ed    8beb
                         {disp32} lea     edi, dword ptr [edi + edx * 0x1 + 0x698098d8]  // 0x0088f0ef    8dbc17d8988069
                         mov.s            edx, edi                                       // 0x0088f0f6    8bd7
                         shr              edx, 0x19                                      // 0x0088f0f8    c1ea19
                         shl              edi, 7                                         // 0x0088f0fb    c1e707
                         or.s             edx, edi                                       // 0x0088f0fe    0bd7
                         add.s            edx, ebx                                       // 0x0088f100    03d3
                         mov.s            edi, edx                                       // 0x0088f102    8bfa
                         and.s            ebp, edx                                       // 0x0088f104    23ea
                         not              edi                                            // 0x0088f106    f7d7
                         and.s            edi, ecx                                       // 0x0088f108    23f9
                         or.s             edi, ebp                                       // 0x0088f10a    0bfd
                         {disp8} mov      ebp, dword ptr [esp + 0x40]                    // 0x0088f10c    8b6c2440
                         add.s            edi, ebp                                       // 0x0088f110    03fd
                         {disp32} lea     eax, dword ptr [eax + edi * 0x1 + -0x74bb0851] // 0x0088f112    8d8438aff7448b
                         mov.s            edi, eax                                       // 0x0088f119    8bf8
                         shr              edi, 0x14                                      // 0x0088f11b    c1ef14
                         shl              eax, 0xc                                       // 0x0088f11e    c1e00c
                         or.s             edi, eax                                       // 0x0088f121    0bf8
                         add.s            edi, edx                                       // 0x0088f123    03fa
                         mov.s            eax, edi                                       // 0x0088f125    8bc7
                         not              eax                                            // 0x0088f127    f7d0
                         mov.s            ebp, edi                                       // 0x0088f129    8bef
                         and.s            eax, ebx                                       // 0x0088f12b    23c3
                         and.s            ebp, edx                                       // 0x0088f12d    23ea
                         or.s             eax, ebp                                       // 0x0088f12f    0bc5
                         {disp8} mov      ebp, dword ptr [esp + 0x44]                    // 0x0088f131    8b6c2444
                         add.s            eax, ebp                                       // 0x0088f135    03c5
                         mov.s            ebp, edi                                       // 0x0088f137    8bef
                         {disp32} lea     ecx, dword ptr [ecx + eax * 0x1 + -0x0000a44f] // 0x0088f139    8d8c01b15bffff
                         mov.s            eax, ecx                                       // 0x0088f140    8bc1
                         shr              eax, 0xf                                       // 0x0088f142    c1e80f
                         shl              ecx, 0x11                                      // 0x0088f145    c1e111
                         or.s             eax, ecx                                       // 0x0088f148    0bc1
                         add.s            eax, edi                                       // 0x0088f14a    03c7
                         mov.s            ecx, eax                                       // 0x0088f14c    8bc8
                         and.s            ebp, eax                                       // 0x0088f14e    23e8
                         not              ecx                                            // 0x0088f150    f7d1
                         and.s            ecx, edx                                       // 0x0088f152    23ca
                         or.s             ecx, ebp                                       // 0x0088f154    0bcd
                         {disp8} mov      ebp, dword ptr [esp + 0x48]                    // 0x0088f156    8b6c2448
                         add.s            ecx, ebp                                       // 0x0088f15a    03cd
                         {disp32} lea     ebx, dword ptr [ebx + ecx * 0x1 + -0x76a32842] // 0x0088f15c    8d9c0bbed75c89
                         mov.s            ecx, ebx                                       // 0x0088f163    8bcb
                         shl              ecx, 0x16                                      // 0x0088f165    c1e116
                         shr              ebx, 0xa                                       // 0x0088f168    c1eb0a
                         or.s             ecx, ebx                                       // 0x0088f16b    0bcb
                         mov.s            ebx, eax                                       // 0x0088f16d    8bd8
                         add.s            ecx, eax                                       // 0x0088f16f    03c8
                         {disp8} mov      dword ptr [esp + 0x60], ecx                    // 0x0088f171    894c2460
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f175    8b6c2460
                         not              ecx                                            // 0x0088f179    f7d1
                         and.s            ecx, edi                                       // 0x0088f17b    23cf
                         and.s            ebx, ebp                                       // 0x0088f17d    23dd
                         {disp8} mov      ebp, dword ptr [esp + 0x4c]                    // 0x0088f17f    8b6c244c
                         or.s             ecx, ebx                                       // 0x0088f183    0bcb
                         add.s            ecx, ebp                                       // 0x0088f185    03cd
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f187    8b5c2460
                         mov.s            ebp, ebx                                       // 0x0088f18b    8beb
                         {disp32} lea     edx, dword ptr [edx + ecx * 0x1 + 0x6b901122]  // 0x0088f18d    8d940a2211906b
                         mov.s            ecx, edx                                       // 0x0088f194    8bca
                         shr              ecx, 0x19                                      // 0x0088f196    c1e919
                         shl              edx, 7                                         // 0x0088f199    c1e207
                         or.s             ecx, edx                                       // 0x0088f19c    0bca
                         add.s            ecx, ebx                                       // 0x0088f19e    03cb
                         mov.s            edx, ecx                                       // 0x0088f1a0    8bd1
                         and.s            ebp, ecx                                       // 0x0088f1a2    23e9
                         not              edx                                            // 0x0088f1a4    f7d2
                         and.s            edx, eax                                       // 0x0088f1a6    23d0
                         or.s             edx, ebp                                       // 0x0088f1a8    0bd5
                         {disp8} mov      ebp, dword ptr [esp + 0x50]                    // 0x0088f1aa    8b6c2450
                         add.s            edx, ebp                                       // 0x0088f1ae    03d5
                         {disp32} lea     edi, dword ptr [edi + edx * 0x1 + -0x02678e6d] // 0x0088f1b0    8dbc17937198fd
                         mov.s            edx, edi                                       // 0x0088f1b7    8bd7
                         shr              edx, 0x14                                      // 0x0088f1b9    c1ea14
                         shl              edi, 0xc                                       // 0x0088f1bc    c1e70c
                         or.s             edx, edi                                       // 0x0088f1bf    0bd7
                         add.s            edx, ecx                                       // 0x0088f1c1    03d1
                         mov.s            ebp, edx                                       // 0x0088f1c3    8bea
                         mov.s            edi, edx                                       // 0x0088f1c5    8bfa
                         not              ebp                                            // 0x0088f1c7    f7d5
                         and.s            edi, ecx                                       // 0x0088f1c9    23f9
                         and.s            ebx, ebp                                       // 0x0088f1cb    23dd
                         or.s             edi, ebx                                       // 0x0088f1cd    0bfb
                         {disp8} mov      ebx, dword ptr [esp + 0x54]                    // 0x0088f1cf    8b5c2454
                         add.s            edi, ebx                                       // 0x0088f1d3    03fb
                         mov.s            ebx, edx                                       // 0x0088f1d5    8bda
                         {disp32} lea     eax, dword ptr [eax + edi * 0x1 + -0x5986bc72] // 0x0088f1d7    8d84388e4379a6
                         mov.s            edi, eax                                       // 0x0088f1de    8bf8
                         shr              edi, 0xf                                       // 0x0088f1e0    c1ef0f
                         shl              eax, 0x11                                      // 0x0088f1e3    c1e011
                         or.s             edi, eax                                       // 0x0088f1e6    0bf8
                         add.s            edi, edx                                       // 0x0088f1e8    03fa
                         mov.s            eax, edi                                       // 0x0088f1ea    8bc7
                         and.s            ebx, edi                                       // 0x0088f1ec    23df
                         not              eax                                            // 0x0088f1ee    f7d0
                         {disp8} mov      dword ptr [esp + 0x64], eax                    // 0x0088f1f0    89442464
                         and.s            eax, ecx                                       // 0x0088f1f4    23c1
                         or.s             eax, ebx                                       // 0x0088f1f6    0bc3
                         {disp8} mov      ebx, dword ptr [esp + 0x58]                    // 0x0088f1f8    8b5c2458
                         add.s            eax, ebx                                       // 0x0088f1fc    03c3
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f1fe    8b5c2460
                         {disp32} lea     ebx, dword ptr [ebx + eax * 0x1 + 0x49b40821]  // 0x0088f202    8d9c032108b449
                         mov.s            eax, ebx                                       // 0x0088f209    8bc3
                         shl              eax, 0x16                                      // 0x0088f20b    c1e016
                         shr              ebx, 0xa                                       // 0x0088f20e    c1eb0a
                         or.s             eax, ebx                                       // 0x0088f211    0bc3
                         mov.s            ebx, edx                                       // 0x0088f213    8bda
                         add.s            eax, edi                                       // 0x0088f215    03c7
                         {disp8} mov      dword ptr [esp + 0x60], eax                    // 0x0088f217    89442460
                         and.s            ebx, eax                                       // 0x0088f21b    23d8
                         mov.s            eax, edi                                       // 0x0088f21d    8bc7
                         and.s            eax, ebp                                       // 0x0088f21f    23c5
                         {disp8} mov      ebp, dword ptr [esp + 0x20]                    // 0x0088f221    8b6c2420
                         or.s             ebx, eax                                       // 0x0088f225    0bd8
                         add.s            ebx, ebp                                       // 0x0088f227    03dd
                         mov.s            ebp, edi                                       // 0x0088f229    8bef
                         {disp32} lea     ecx, dword ptr [ecx + ebx * 0x1 + -0x09e1da9e] // 0x0088f22b    8d8c1962251ef6
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f232    8b5c2460
                         mov.s            eax, ecx                                       // 0x0088f236    8bc1
                         shr              eax, 0x1b                                      // 0x0088f238    c1e81b
                         shl              ecx, 5                                         // 0x0088f23b    c1e105
                         or.s             eax, ecx                                       // 0x0088f23e    0bc1
                         {disp8} mov      ecx, dword ptr [esp + 0x64]                    // 0x0088f240    8b4c2464
                         add.s            eax, ebx                                       // 0x0088f244    03c3
                         and.s            ecx, ebx                                       // 0x0088f246    23cb
                         and.s            ebp, eax                                       // 0x0088f248    23e8
                         or.s             ecx, ebp                                       // 0x0088f24a    0bcd
                         {disp8} mov      ebp, dword ptr [esp + 0x34]                    // 0x0088f24c    8b6c2434
                         add.s            ecx, ebp                                       // 0x0088f250    03cd
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f252    8b6c2460
                         not              ebx                                            // 0x0088f256    f7d3
                         {disp32} lea     edx, dword ptr [edx + ecx * 0x1 + -0x3fbf4cc0] // 0x0088f258    8d940a40b340c0
                         and.s            ebx, eax                                       // 0x0088f25f    23d8
                         mov.s            ecx, edx                                       // 0x0088f261    8bca
                         shr              ecx, 0x17                                      // 0x0088f263    c1e917
                         shl              edx, 9                                         // 0x0088f266    c1e209
                         or.s             ecx, edx                                       // 0x0088f269    0bca
                         add.s            ecx, eax                                       // 0x0088f26b    03c8
                         mov.s            edx, ecx                                       // 0x0088f26d    8bd1
                         and.s            edx, ebp                                       // 0x0088f26f    23d5
                         {disp8} mov      ebp, dword ptr [esp + 0x48]                    // 0x0088f271    8b6c2448
                         or.s             ebx, edx                                       // 0x0088f275    0bda
                         add.s            ebx, ebp                                       // 0x0088f277    03dd
                         {disp32} lea     edi, dword ptr [edi + ebx * 0x1 + 0x265e5a51]  // 0x0088f279    8dbc1f515a5e26
                         mov.s            edx, edi                                       // 0x0088f280    8bd7
                         shr              edx, 0x12                                      // 0x0088f282    c1ea12
                         shl              edi, 0xe                                       // 0x0088f285    c1e70e
                         or.s             edx, edi                                       // 0x0088f288    0bd7
                         mov.s            edi, eax                                       // 0x0088f28a    8bf8
                         add.s            edx, ecx                                       // 0x0088f28c    03d1
                         not              edi                                            // 0x0088f28e    f7d7
                         mov.s            ebx, edx                                       // 0x0088f290    8bda
                         and.s            edi, ecx                                       // 0x0088f292    23f9
                         and.s            ebx, eax                                       // 0x0088f294    23d8
                         or.s             edi, ebx                                       // 0x0088f296    0bfb
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x0088f298    8b5c241c
                         add.s            edi, ebx                                       // 0x0088f29c    03fb
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f29e    8b5c2460
                         {disp32} lea     ebx, dword ptr [ebx + edi * 0x1 + -0x16493856] // 0x0088f2a2    8d9c3baac7b6e9
                         mov.s            edi, ebx                                       // 0x0088f2a9    8bfb
                         shl              edi, 0x14                                      // 0x0088f2ab    c1e714
                         shr              ebx, 0xc                                       // 0x0088f2ae    c1eb0c
                         or.s             edi, ebx                                       // 0x0088f2b1    0bfb
                         mov.s            ebx, ecx                                       // 0x0088f2b3    8bd9
                         add.s            edi, edx                                       // 0x0088f2b5    03fa
                         {disp8} mov      dword ptr [esp + 0x60], edi                    // 0x0088f2b7    897c2460
                         mov.s            edi, ecx                                       // 0x0088f2bb    8bf9
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f2bd    8b6c2460
                         not              edi                                            // 0x0088f2c1    f7d7
                         and.s            edi, edx                                       // 0x0088f2c3    23fa
                         and.s            ebx, ebp                                       // 0x0088f2c5    23dd
                         {disp8} mov      ebp, dword ptr [esp + 0x30]                    // 0x0088f2c7    8b6c2430
                         or.s             edi, ebx                                       // 0x0088f2cb    0bfb
                         add.s            edi, ebp                                       // 0x0088f2cd    03fd
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f2cf    8b5c2460
                         {disp32} lea     eax, dword ptr [eax + edi * 0x1 + -0x29d0efa3] // 0x0088f2d3    8d84385d102fd6
                         mov.s            edi, eax                                       // 0x0088f2da    8bf8
                         shr              edi, 0x1b                                      // 0x0088f2dc    c1ef1b
                         shl              eax, 5                                         // 0x0088f2df    c1e005
                         or.s             edi, eax                                       // 0x0088f2e2    0bf8
                         mov.s            eax, edx                                       // 0x0088f2e4    8bc2
                         add.s            edi, ebx                                       // 0x0088f2e6    03fb
                         not              eax                                            // 0x0088f2e8    f7d0
                         mov.s            ebp, edx                                       // 0x0088f2ea    8bea
                         and.s            eax, ebx                                       // 0x0088f2ec    23c3
                         and.s            ebp, edi                                       // 0x0088f2ee    23ef
                         or.s             eax, ebp                                       // 0x0088f2f0    0bc5
                         {disp8} mov      ebp, dword ptr [esp + 0x44]                    // 0x0088f2f2    8b6c2444
                         add.s            eax, ebp                                       // 0x0088f2f6    03c5
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f2f8    8b6c2460
                         not              ebx                                            // 0x0088f2fc    f7d3
                         {disp32} lea     ecx, dword ptr [ecx + eax * 0x1 + 0x02441453]  // 0x0088f2fe    8d8c0153144402
                         and.s            ebx, edi                                       // 0x0088f305    23df
                         mov.s            eax, ecx                                       // 0x0088f307    8bc1
                         shr              eax, 0x17                                      // 0x0088f309    c1e817
                         shl              ecx, 9                                         // 0x0088f30c    c1e109
                         or.s             eax, ecx                                       // 0x0088f30f    0bc1
                         add.s            eax, edi                                       // 0x0088f311    03c7
                         mov.s            ecx, eax                                       // 0x0088f313    8bc8
                         and.s            ecx, ebp                                       // 0x0088f315    23cd
                         {disp8} mov      ebp, dword ptr [esp + 0x58]                    // 0x0088f317    8b6c2458
                         or.s             ebx, ecx                                       // 0x0088f31b    0bd9
                         add.s            ebx, ebp                                       // 0x0088f31d    03dd
                         {disp32} lea     edx, dword ptr [edx + ebx * 0x1 + -0x275e197f] // 0x0088f31f    8d941a81e6a1d8
                         mov.s            ecx, edx                                       // 0x0088f326    8bca
                         shr              ecx, 0x12                                      // 0x0088f328    c1e912
                         shl              edx, 0xe                                       // 0x0088f32b    c1e20e
                         or.s             ecx, edx                                       // 0x0088f32e    0bca
                         mov.s            edx, edi                                       // 0x0088f330    8bd7
                         add.s            ecx, eax                                       // 0x0088f332    03c8
                         not              edx                                            // 0x0088f334    f7d2
                         mov.s            ebx, ecx                                       // 0x0088f336    8bd9
                         and.s            edx, eax                                       // 0x0088f338    23d0
                         and.s            ebx, edi                                       // 0x0088f33a    23df
                         or.s             edx, ebx                                       // 0x0088f33c    0bd3
                         {disp8} mov      ebx, dword ptr [esp + 0x2c]                    // 0x0088f33e    8b5c242c
                         add.s            edx, ebx                                       // 0x0088f342    03d3
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f344    8b5c2460
                         {disp32} lea     ebx, dword ptr [ebx + edx * 0x1 + -0x182c0438] // 0x0088f348    8d9c13c8fbd3e7
                         mov.s            edx, ebx                                       // 0x0088f34f    8bd3
                         shl              edx, 0x14                                      // 0x0088f351    c1e214
                         shr              ebx, 0xc                                       // 0x0088f354    c1eb0c
                         or.s             edx, ebx                                       // 0x0088f357    0bd3
                         mov.s            ebx, eax                                       // 0x0088f359    8bd8
                         add.s            edx, ecx                                       // 0x0088f35b    03d1
                         {disp8} mov      dword ptr [esp + 0x60], edx                    // 0x0088f35d    89542460
                         mov.s            edx, eax                                       // 0x0088f361    8bd0
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f363    8b6c2460
                         not              edx                                            // 0x0088f367    f7d2
                         and.s            edx, ecx                                       // 0x0088f369    23d1
                         and.s            ebx, ebp                                       // 0x0088f36b    23dd
                         {disp8} mov      ebp, dword ptr [esp + 0x40]                    // 0x0088f36d    8b6c2440
                         or.s             edx, ebx                                       // 0x0088f371    0bd3
                         add.s            edx, ebp                                       // 0x0088f373    03d5
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f375    8b5c2460
                         mov.s            ebp, ecx                                       // 0x0088f379    8be9
                         {disp32} lea     edi, dword ptr [edi + edx * 0x1 + 0x21e1cde6]  // 0x0088f37b    8dbc17e6cde121
                         mov.s            edx, edi                                       // 0x0088f382    8bd7
                         shr              edx, 0x1b                                      // 0x0088f384    c1ea1b
                         shl              edi, 5                                         // 0x0088f387    c1e705
                         or.s             edx, edi                                       // 0x0088f38a    0bd7
                         mov.s            edi, ecx                                       // 0x0088f38c    8bf9
                         add.s            edx, ebx                                       // 0x0088f38e    03d3
                         not              edi                                            // 0x0088f390    f7d7
                         and.s            edi, ebx                                       // 0x0088f392    23fb
                         and.s            ebp, edx                                       // 0x0088f394    23ea
                         or.s             edi, ebp                                       // 0x0088f396    0bfd
                         {disp8} mov      ebp, dword ptr [esp + 0x54]                    // 0x0088f398    8b6c2454
                         add.s            edi, ebp                                       // 0x0088f39c    03fd
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f39e    8b6c2460
                         not              ebx                                            // 0x0088f3a2    f7d3
                         {disp32} lea     eax, dword ptr [eax + edi * 0x1 + -0x3cc8f82a] // 0x0088f3a4    8d8438d60737c3
                         and.s            ebx, edx                                       // 0x0088f3ab    23da
                         mov.s            edi, eax                                       // 0x0088f3ad    8bf8
                         shr              edi, 0x17                                      // 0x0088f3af    c1ef17
                         shl              eax, 9                                         // 0x0088f3b2    c1e009
                         or.s             edi, eax                                       // 0x0088f3b5    0bf8
                         add.s            edi, edx                                       // 0x0088f3b7    03fa
                         mov.s            eax, edi                                       // 0x0088f3b9    8bc7
                         and.s            eax, ebp                                       // 0x0088f3bb    23c5
                         {disp8} mov      ebp, dword ptr [esp + 0x28]                    // 0x0088f3bd    8b6c2428
                         or.s             ebx, eax                                       // 0x0088f3c1    0bd8
                         add.s            ebx, ebp                                       // 0x0088f3c3    03dd
                         {disp32} lea     ecx, dword ptr [ecx + ebx * 0x1 + -0x0b2af279] // 0x0088f3c5    8d8c19870dd5f4
                         mov.s            eax, ecx                                       // 0x0088f3cc    8bc1
                         shr              eax, 0x12                                      // 0x0088f3ce    c1e812
                         shl              ecx, 0xe                                       // 0x0088f3d1    c1e10e
                         or.s             eax, ecx                                       // 0x0088f3d4    0bc1
                         mov.s            ecx, edx                                       // 0x0088f3d6    8bca
                         add.s            eax, edi                                       // 0x0088f3d8    03c7
                         not              ecx                                            // 0x0088f3da    f7d1
                         mov.s            ebx, eax                                       // 0x0088f3dc    8bd8
                         and.s            ecx, edi                                       // 0x0088f3de    23cf
                         and.s            ebx, edx                                       // 0x0088f3e0    23da
                         or.s             ecx, ebx                                       // 0x0088f3e2    0bcb
                         {disp8} mov      ebx, dword ptr [esp + 0x3c]                    // 0x0088f3e4    8b5c243c
                         add.s            ecx, ebx                                       // 0x0088f3e8    03cb
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f3ea    8b5c2460
                         {disp32} lea     ebx, dword ptr [ebx + ecx * 0x1 + 0x455a14ed]  // 0x0088f3ee    8d9c0bed145a45
                         mov.s            ecx, ebx                                       // 0x0088f3f5    8bcb
                         shl              ecx, 0x14                                      // 0x0088f3f7    c1e114
                         shr              ebx, 0xc                                       // 0x0088f3fa    c1eb0c
                         or.s             ecx, ebx                                       // 0x0088f3fd    0bcb
                         mov.s            ebx, edi                                       // 0x0088f3ff    8bdf
                         add.s            ecx, eax                                       // 0x0088f401    03c8
                         {disp8} mov      dword ptr [esp + 0x60], ecx                    // 0x0088f403    894c2460
                         mov.s            ecx, edi                                       // 0x0088f407    8bcf
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f409    8b6c2460
                         not              ecx                                            // 0x0088f40d    f7d1
                         and.s            ecx, eax                                       // 0x0088f40f    23c8
                         and.s            ebx, ebp                                       // 0x0088f411    23dd
                         {disp8} mov      ebp, dword ptr [esp + 0x50]                    // 0x0088f413    8b6c2450
                         or.s             ecx, ebx                                       // 0x0088f417    0bcb
                         add.s            ecx, ebp                                       // 0x0088f419    03cd
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f41b    8b5c2460
                         mov.s            ebp, eax                                       // 0x0088f41f    8be8
                         {disp32} lea     edx, dword ptr [edx + ecx * 0x1 + -0x561c16fb] // 0x0088f421    8d940a05e9e3a9
                         mov.s            ecx, edx                                       // 0x0088f428    8bca
                         shr              ecx, 0x1b                                      // 0x0088f42a    c1e91b
                         shl              edx, 5                                         // 0x0088f42d    c1e205
                         or.s             ecx, edx                                       // 0x0088f430    0bca
                         mov.s            edx, eax                                       // 0x0088f432    8bd0
                         add.s            ecx, ebx                                       // 0x0088f434    03cb
                         not              edx                                            // 0x0088f436    f7d2
                         and.s            edx, ebx                                       // 0x0088f438    23d3
                         and.s            ebp, ecx                                       // 0x0088f43a    23e9
                         or.s             edx, ebp                                       // 0x0088f43c    0bd5
                         {disp8} mov      ebp, dword ptr [esp + 0x24]                    // 0x0088f43e    8b6c2424
                         add.s            edx, ebp                                       // 0x0088f442    03d5
                         {disp8} mov      ebp, dword ptr [esp + 0x60]                    // 0x0088f444    8b6c2460
                         not              ebx                                            // 0x0088f448    f7d3
                         {disp32} lea     edi, dword ptr [edi + edx * 0x1 + -0x03105c08] // 0x0088f44a    8dbc17f8a3effc
                         and.s            ebx, ecx                                       // 0x0088f451    23d9
                         mov.s            edx, edi                                       // 0x0088f453    8bd7
                         shr              edx, 0x17                                      // 0x0088f455    c1ea17
                         shl              edi, 9                                         // 0x0088f458    c1e709
                         or.s             edx, edi                                       // 0x0088f45b    0bd7
                         add.s            edx, ecx                                       // 0x0088f45d    03d1
                         mov.s            edi, edx                                       // 0x0088f45f    8bfa
                         and.s            edi, ebp                                       // 0x0088f461    23fd
                         {disp8} mov      ebp, dword ptr [esp + 0x38]                    // 0x0088f463    8b6c2438
                         or.s             ebx, edi                                       // 0x0088f467    0bdf
                         add.s            ebx, ebp                                       // 0x0088f469    03dd
                         {disp32} lea     eax, dword ptr [eax + ebx * 0x1 + 0x676f02d9]  // 0x0088f46b    8d8418d9026f67
                         mov.s            edi, eax                                       // 0x0088f472    8bf8
                         shr              edi, 0x12                                      // 0x0088f474    c1ef12
                         shl              eax, 0xe                                       // 0x0088f477    c1e00e
                         or.s             edi, eax                                       // 0x0088f47a    0bf8
                         mov.s            eax, ecx                                       // 0x0088f47c    8bc1
                         add.s            edi, edx                                       // 0x0088f47e    03fa
                         not              eax                                            // 0x0088f480    f7d0
                         mov.s            ebx, edi                                       // 0x0088f482    8bdf
                         and.s            eax, edx                                       // 0x0088f484    23c2
                         and.s            ebx, ecx                                       // 0x0088f486    23d9
                         or.s             eax, ebx                                       // 0x0088f488    0bc3
                         {disp8} mov      ebx, dword ptr [esp + 0x4c]                    // 0x0088f48a    8b5c244c
                         add.s            eax, ebx                                       // 0x0088f48e    03c3
                         {disp8} mov      ebx, dword ptr [esp + 0x60]                    // 0x0088f490    8b5c2460
                         {disp32} lea     ebx, dword ptr [ebx + eax * 0x1 + -0x72d5b376] // 0x0088f494    8d9c038a4c2a8d
                         mov.s            eax, ebx                                       // 0x0088f49b    8bc3
                         shl              eax, 0x14                                      // 0x0088f49d    c1e014
                         shr              ebx, 0xc                                       // 0x0088f4a0    c1eb0c
                         or.s             eax, ebx                                       // 0x0088f4a3    0bc3
                         add.s            eax, edi                                       // 0x0088f4a5    03c7
                         {disp8} mov      ebp, dword ptr [esp + 0x30]                    // 0x0088f4a7    8b6c2430
                         mov.s            ebx, edx                                       // 0x0088f4ab    8bda
                         xor.s            ebx, edi                                       // 0x0088f4ad    33df
                         xor.s            ebx, eax                                       // 0x0088f4af    33d8
                         add.s            ebx, ebp                                       // 0x0088f4b1    03dd
                         {disp8} mov      ebp, dword ptr [esp + 0x3c]                    // 0x0088f4b3    8b6c243c
                         {disp32} lea     ecx, dword ptr [ecx + ebx * 0x1 + -0x0005c6be] // 0x0088f4b7    8d8c194239faff
                         mov.s            ebx, ecx                                       // 0x0088f4be    8bd9
                         shr              ebx, 0x1c                                      // 0x0088f4c0    c1eb1c
                         shl              ecx, 4                                         // 0x0088f4c3    c1e104
                         or.s             ebx, ecx                                       // 0x0088f4c6    0bd9
                         mov.s            ecx, edi                                       // 0x0088f4c8    8bcf
                         add.s            ebx, eax                                       // 0x0088f4ca    03d8
                         xor.s            ecx, eax                                       // 0x0088f4cc    33c8
                         xor.s            ecx, ebx                                       // 0x0088f4ce    33cb
                         add.s            ecx, ebp                                       // 0x0088f4d0    03cd
                         {disp8} mov      ebp, dword ptr [esp + 0x48]                    // 0x0088f4d2    8b6c2448
                         {disp32} lea     ecx, dword ptr [edx + ecx * 0x1 + -0x788e097f] // 0x0088f4d6    8d8c0a81f67187
                         mov.s            edx, ecx                                       // 0x0088f4dd    8bd1
                         shr              edx, 0x15                                      // 0x0088f4df    c1ea15
                         shl              ecx, 0xb                                       // 0x0088f4e2    c1e10b
                         or.s             edx, ecx                                       // 0x0088f4e5    0bd1
                         add.s            edx, ebx                                       // 0x0088f4e7    03d3
                         mov.s            ecx, edx                                       // 0x0088f4e9    8bca
                         xor.s            ecx, eax                                       // 0x0088f4eb    33c8
                         xor.s            ecx, ebx                                       // 0x0088f4ed    33cb
                         add.s            ecx, ebp                                       // 0x0088f4ef    03cd
                         {disp8} mov      ebp, dword ptr [esp + 0x54]                    // 0x0088f4f1    8b6c2454
                         {disp32} lea     ecx, dword ptr [edi + ecx * 0x1 + 0x6d9d6122]  // 0x0088f4f5    8d8c0f22619d6d
                         mov.s            edi, ecx                                       // 0x0088f4fc    8bf9
                         shr              edi, 0x10                                      // 0x0088f4fe    c1ef10
                         shl              ecx, 0x10                                      // 0x0088f501    c1e110
                         or.s             edi, ecx                                       // 0x0088f504    0bf9
                         mov.s            ecx, edx                                       // 0x0088f506    8bca
                         add.s            edi, edx                                       // 0x0088f508    03fa
                         xor.s            ecx, edi                                       // 0x0088f50a    33cf
                         {disp8} mov      dword ptr [esp + 0x60], ecx                    // 0x0088f50c    894c2460
                         xor.s            ecx, ebx                                       // 0x0088f510    33cb
                         add.s            ecx, ebp                                       // 0x0088f512    03cd
                         {disp8} mov      ebp, dword ptr [esp + 0x20]                    // 0x0088f514    8b6c2420
                         {disp32} lea     eax, dword ptr [eax + ecx * 0x1 + -0x021ac7f4] // 0x0088f518    8d84080c38e5fd
                         mov.s            ecx, eax                                       // 0x0088f51f    8bc8
                         shl              ecx, 0x17                                      // 0x0088f521    c1e117
                         shr              eax, 9                                         // 0x0088f524    c1e809
                         or.s             ecx, eax                                       // 0x0088f527    0bc8
                         {disp8} mov      eax, dword ptr [esp + 0x60]                    // 0x0088f529    8b442460
                         add.s            ecx, edi                                       // 0x0088f52d    03cf
                         xor.s            eax, ecx                                       // 0x0088f52f    33c1
                         add.s            eax, ebp                                       // 0x0088f531    03c5
                         {disp8} mov      ebp, dword ptr [esp + 0x2c]                    // 0x0088f533    8b6c242c
                         {disp32} lea     ebx, dword ptr [ebx + eax * 0x1 + -0x5b4115bc] // 0x0088f537    8d9c0344eabea4
                         mov.s            eax, ebx                                       // 0x0088f53e    8bc3
                         shr              eax, 0x1c                                      // 0x0088f540    c1e81c
                         shl              ebx, 4                                         // 0x0088f543    c1e304
                         or.s             eax, ebx                                       // 0x0088f546    0bc3
                         mov.s            ebx, edi                                       // 0x0088f548    8bdf
                         add.s            eax, ecx                                       // 0x0088f54a    03c1
                         xor.s            ebx, ecx                                       // 0x0088f54c    33d9
                         xor.s            ebx, eax                                       // 0x0088f54e    33d8
                         add.s            ebx, ebp                                       // 0x0088f550    03dd
                         {disp8} mov      ebp, dword ptr [esp + 0x38]                    // 0x0088f552    8b6c2438
                         {disp32} lea     edx, dword ptr [edx + ebx * 0x1 + 0x4bdecfa9]  // 0x0088f556    8d941aa9cfde4b
                         mov.s            ebx, edx                                       // 0x0088f55d    8bda
                         shr              ebx, 0x15                                      // 0x0088f55f    c1eb15
                         shl              edx, 0xb                                       // 0x0088f562    c1e20b
                         or.s             ebx, edx                                       // 0x0088f565    0bda
                         add.s            ebx, eax                                       // 0x0088f567    03d8
                         mov.s            edx, ebx                                       // 0x0088f569    8bd3
                         xor.s            edx, ecx                                       // 0x0088f56b    33d1
                         xor.s            edx, eax                                       // 0x0088f56d    33d0
                         add.s            edx, ebp                                       // 0x0088f56f    03d5
                         {disp32} lea     edi, dword ptr [edi + edx * 0x1 + -0x0944b4a0] // 0x0088f571    8dbc17604bbbf6
                         mov.s            edx, edi                                       // 0x0088f578    8bd7
                         shr              edx, 0x10                                      // 0x0088f57a    c1ea10
                         shl              edi, 0x10                                      // 0x0088f57d    c1e710
                         or.s             edx, edi                                       // 0x0088f580    0bd7
                         mov.s            edi, ebx                                       // 0x0088f582    8bfb
                         add.s            edx, ebx                                       // 0x0088f584    03d3
                         xor.s            edi, edx                                       // 0x0088f586    33fa
                         mov.s            ebp, edi                                       // 0x0088f588    8bef
                         xor.s            ebp, eax                                       // 0x0088f58a    33e8
                         add              ebp, dword ptr [esp + 0x44]                    // 0x0088f58c    036c2444
                         {disp32} lea     ebp, dword ptr [ecx + ebp * 0x1 + -0x41404390] // 0x0088f590    8dac2970bcbfbe
                         mov.s            ecx, ebp                                       // 0x0088f597    8bcd
                         shl              ecx, 0x17                                      // 0x0088f599    c1e117
                         shr              ebp, 9                                         // 0x0088f59c    c1ed09
                         or.s             ecx, ebp                                       // 0x0088f59f    0bcd
                         {disp8} mov      ebp, dword ptr [esp + 0x50]                    // 0x0088f5a1    8b6c2450
                         add.s            ecx, edx                                       // 0x0088f5a5    03ca
                         xor.s            edi, ecx                                       // 0x0088f5a7    33f9
                         add.s            edi, ebp                                       // 0x0088f5a9    03fd
                         {disp8} mov      ebp, dword ptr [esp + 0x1c]                    // 0x0088f5ab    8b6c241c
                         {disp32} lea     edi, dword ptr [eax + edi * 0x1 + 0x289b7ec6]  // 0x0088f5af    8dbc38c67e9b28
                         mov.s            eax, edi                                       // 0x0088f5b6    8bc7
                         shr              eax, 0x1c                                      // 0x0088f5b8    c1e81c
                         shl              edi, 4                                         // 0x0088f5bb    c1e704
                         or.s             eax, edi                                       // 0x0088f5be    0bc7
                         mov.s            edi, edx                                       // 0x0088f5c0    8bfa
                         add.s            eax, ecx                                       // 0x0088f5c2    03c1
                         xor.s            edi, ecx                                       // 0x0088f5c4    33f9
                         xor.s            edi, eax                                       // 0x0088f5c6    33f8
                         add.s            edi, ebp                                       // 0x0088f5c8    03fd
                         {disp8} mov      ebp, dword ptr [esp + 0x28]                    // 0x0088f5ca    8b6c2428
                         {disp32} lea     ebx, dword ptr [ebx + edi * 0x1 + -0x155ed806] // 0x0088f5ce    8d9c3bfa27a1ea
                         mov.s            edi, ebx                                       // 0x0088f5d5    8bfb
                         shr              edi, 0x15                                      // 0x0088f5d7    c1ef15
                         shl              ebx, 0xb                                       // 0x0088f5da    c1e30b
                         or.s             edi, ebx                                       // 0x0088f5dd    0bfb
                         add.s            edi, eax                                       // 0x0088f5df    03f8
                         mov.s            ebx, edi                                       // 0x0088f5e1    8bdf
                         xor.s            ebx, ecx                                       // 0x0088f5e3    33d9
                         xor.s            ebx, eax                                       // 0x0088f5e5    33d8
                         add.s            ebx, ebp                                       // 0x0088f5e7    03dd
                         {disp32} lea     edx, dword ptr [edx + ebx * 0x1 + -0x2b10cf7b] // 0x0088f5e9    8d941a8530efd4
                         mov.s            ebx, edx                                       // 0x0088f5f0    8bda
                         shr              ebx, 0x10                                      // 0x0088f5f2    c1eb10
                         shl              edx, 0x10                                      // 0x0088f5f5    c1e210
                         or.s             ebx, edx                                       // 0x0088f5f8    0bda
                         mov.s            edx, edi                                       // 0x0088f5fa    8bd7
                         add.s            ebx, edi                                       // 0x0088f5fc    03df
                         xor.s            edx, ebx                                       // 0x0088f5fe    33d3
                         mov.s            ebp, edx                                       // 0x0088f600    8bea
                         xor.s            ebp, eax                                       // 0x0088f602    33e8
                         add              ebp, dword ptr [esp + 0x34]                    // 0x0088f604    036c2434
                         {disp32} lea     ebp, dword ptr [ecx + ebp * 0x1 + 0x04881d05]  // 0x0088f608    8dac29051d8804
                         mov.s            ecx, ebp                                       // 0x0088f60f    8bcd
                         shl              ecx, 0x17                                      // 0x0088f611    c1e117
                         shr              ebp, 9                                         // 0x0088f614    c1ed09
                         or.s             ecx, ebp                                       // 0x0088f617    0bcd
                         {disp8} mov      ebp, dword ptr [esp + 0x40]                    // 0x0088f619    8b6c2440
                         add.s            ecx, ebx                                       // 0x0088f61d    03cb
                         xor.s            edx, ecx                                       // 0x0088f61f    33d1
                         add.s            edx, ebp                                       // 0x0088f621    03d5
                         {disp32} lea     edx, dword ptr [eax + edx * 0x1 + -0x262b2fc7] // 0x0088f623    8d941039d0d4d9
                         mov.s            eax, edx                                       // 0x0088f62a    8bc2
                         shr              eax, 0x1c                                      // 0x0088f62c    c1e81c
                         shl              edx, 4                                         // 0x0088f62f    c1e204
                         or.s             eax, edx                                       // 0x0088f632    0bc2
                         mov.s            edx, ebx                                       // 0x0088f634    8bd3
                         add.s            eax, ecx                                       // 0x0088f636    03c1
                         xor.s            edx, ecx                                       // 0x0088f638    33d1
                         xor.s            edx, eax                                       // 0x0088f63a    33d0
                         add              edx, dword ptr [esp + 0x4c]                    // 0x0088f63c    0354244c
                         {disp32} lea     edi, dword ptr [edi + edx * 0x1 + -0x1924661b] // 0x0088f640    8dbc17e599dbe6
                         mov.s            edx, edi                                       // 0x0088f647    8bd7
                         shr              edx, 0x15                                      // 0x0088f649    c1ea15
                         shl              edi, 0xb                                       // 0x0088f64c    c1e70b
                         or.s             edx, edi                                       // 0x0088f64f    0bd7
                         add.s            edx, eax                                       // 0x0088f651    03d0
                         mov.s            edi, edx                                       // 0x0088f653    8bfa
                         xor.s            edi, ecx                                       // 0x0088f655    33f9
                         xor.s            edi, eax                                       // 0x0088f657    33f8
                         add              edi, dword ptr [esp + 0x58]                    // 0x0088f659    037c2458
                         {disp32} lea     ebx, dword ptr [ebx + edi * 0x1 + 0x1fa27cf8]  // 0x0088f65d    8d9c3bf87ca21f
                         mov.s            edi, ebx                                       // 0x0088f664    8bfb
                         shr              edi, 0x10                                      // 0x0088f666    c1ef10
                         shl              ebx, 0x10                                      // 0x0088f669    c1e310
                         or.s             edi, ebx                                       // 0x0088f66c    0bfb
                         mov.s            ebx, edx                                       // 0x0088f66e    8bda
                         add.s            edi, edx                                       // 0x0088f670    03fa
                         xor.s            ebx, edi                                       // 0x0088f672    33df
                         xor.s            ebx, eax                                       // 0x0088f674    33d8
                         add              ebx, dword ptr [esp + 0x24]                    // 0x0088f676    035c2424
                         {disp32} lea     ecx, dword ptr [ecx + ebx * 0x1 + -0x3b53a99b] // 0x0088f67a    8d8c196556acc4
                         mov.s            ebx, ecx                                       // 0x0088f681    8bd9
                         shl              ebx, 0x17                                      // 0x0088f683    c1e317
                         shr              ecx, 9                                         // 0x0088f686    c1e909
                         or.s             ebx, ecx                                       // 0x0088f689    0bd9
                         mov.s            ecx, edx                                       // 0x0088f68b    8bca
                         add.s            ebx, edi                                       // 0x0088f68d    03df
                         not              ecx                                            // 0x0088f68f    f7d1
                         or.s             ecx, ebx                                       // 0x0088f691    0bcb
                         xor.s            ecx, edi                                       // 0x0088f693    33cf
                         add              ecx, dword ptr [esp + 0x1c]                    // 0x0088f695    034c241c
                         {disp32} lea     eax, dword ptr [eax + ecx * 0x1 + -0x0bd6ddbc] // 0x0088f699    8d8408442229f4
                         mov.s            ecx, eax                                       // 0x0088f6a0    8bc8
                         shr              ecx, 0x1a                                      // 0x0088f6a2    c1e91a
                         shl              eax, 6                                         // 0x0088f6a5    c1e006
                         or.s             ecx, eax                                       // 0x0088f6a8    0bc8
                         mov.s            eax, edi                                       // 0x0088f6aa    8bc7
                         add.s            ecx, ebx                                       // 0x0088f6ac    03cb
                         not              eax                                            // 0x0088f6ae    f7d0
                         or.s             eax, ecx                                       // 0x0088f6b0    0bc1
                         xor.s            eax, ebx                                       // 0x0088f6b2    33c3
                         add              eax, dword ptr [esp + 0x38]                    // 0x0088f6b4    03442438
                         {disp32} lea     edx, dword ptr [edx + eax * 0x1 + 0x432aff97]  // 0x0088f6b8    8d940297ff2a43
                         mov.s            eax, edx                                       // 0x0088f6bf    8bc2
                         shr              eax, 0x16                                      // 0x0088f6c1    c1e816
                         shl              edx, 0xa                                       // 0x0088f6c4    c1e20a
                         or.s             eax, edx                                       // 0x0088f6c7    0bc2
                         mov.s            edx, ebx                                       // 0x0088f6c9    8bd3
                         add.s            eax, ecx                                       // 0x0088f6cb    03c1
                         not              edx                                            // 0x0088f6cd    f7d2
                         or.s             edx, eax                                       // 0x0088f6cf    0bd0
                         xor.s            edx, ecx                                       // 0x0088f6d1    33d1
                         add              edx, dword ptr [esp + 0x54]                    // 0x0088f6d3    03542454
                         {disp32} lea     edi, dword ptr [edi + edx * 0x1 + -0x546bdc59] // 0x0088f6d7    8dbc17a72394ab
                         mov.s            edx, edi                                       // 0x0088f6de    8bd7
                         shr              edx, 0x11                                      // 0x0088f6e0    c1ea11
                         shl              edi, 0xf                                       // 0x0088f6e3    c1e70f
                         or.s             edx, edi                                       // 0x0088f6e6    0bd7
                         mov.s            edi, ecx                                       // 0x0088f6e8    8bf9
                         add.s            edx, eax                                       // 0x0088f6ea    03d0
                         not              edi                                            // 0x0088f6ec    f7d7
                         or.s             edi, edx                                       // 0x0088f6ee    0bfa
                         xor.s            edi, eax                                       // 0x0088f6f0    33f8
                         add              edi, dword ptr [esp + 0x30]                    // 0x0088f6f2    037c2430
                         {disp32} lea     ebx, dword ptr [ebx + edi * 0x1 + -0x036c5fc7] // 0x0088f6f6    8d9c3b39a093fc
                         mov.s            edi, ebx                                       // 0x0088f6fd    8bfb
                         shl              edi, 0x15                                      // 0x0088f6ff    c1e715
                         shr              ebx, 0xb                                       // 0x0088f702    c1eb0b
                         or.s             edi, ebx                                       // 0x0088f705    0bfb
                         mov.s            ebx, eax                                       // 0x0088f707    8bd8
                         add.s            edi, edx                                       // 0x0088f709    03fa
                         not              ebx                                            // 0x0088f70b    f7d3
                         or.s             ebx, edi                                       // 0x0088f70d    0bdf
                         xor.s            ebx, edx                                       // 0x0088f70f    33da
                         add              ebx, dword ptr [esp + 0x4c]                    // 0x0088f711    035c244c
                         {disp32} lea     ecx, dword ptr [ecx + ebx * 0x1 + 0x655b59c3]  // 0x0088f715    8d8c19c3595b65
                         mov.s            ebx, ecx                                       // 0x0088f71c    8bd9
                         shr              ebx, 0x1a                                      // 0x0088f71e    c1eb1a
                         shl              ecx, 6                                         // 0x0088f721    c1e106
                         or.s             ebx, ecx                                       // 0x0088f724    0bd9
                         mov.s            ecx, edx                                       // 0x0088f726    8bca
                         add.s            ebx, edi                                       // 0x0088f728    03df
                         not              ecx                                            // 0x0088f72a    f7d1
                         or.s             ecx, ebx                                       // 0x0088f72c    0bcb
                         xor.s            ecx, edi                                       // 0x0088f72e    33cf
                         add              ecx, dword ptr [esp + 0x28]                    // 0x0088f730    034c2428
                         {disp32} lea     eax, dword ptr [eax + ecx * 0x1 + -0x70f3336e] // 0x0088f734    8d840892cc0c8f
                         mov.s            ecx, eax                                       // 0x0088f73b    8bc8
                         shr              ecx, 0x16                                      // 0x0088f73d    c1e916
                         shl              eax, 0xa                                       // 0x0088f740    c1e00a
                         or.s             ecx, eax                                       // 0x0088f743    0bc8
                         mov.s            eax, edi                                       // 0x0088f745    8bc7
                         add.s            ecx, ebx                                       // 0x0088f747    03cb
                         not              eax                                            // 0x0088f749    f7d0
                         or.s             eax, ecx                                       // 0x0088f74b    0bc1
                         xor.s            eax, ebx                                       // 0x0088f74d    33c3
                         add              eax, dword ptr [esp + 0x44]                    // 0x0088f74f    03442444
                         {disp32} lea     edx, dword ptr [edx + eax * 0x1 + -0x00100b83] // 0x0088f753    8d94027df4efff
                         mov.s            eax, edx                                       // 0x0088f75a    8bc2
                         shr              eax, 0x11                                      // 0x0088f75c    c1e811
                         shl              edx, 0xf                                       // 0x0088f75f    c1e20f
                         or.s             eax, edx                                       // 0x0088f762    0bc2
                         mov.s            edx, ebx                                       // 0x0088f764    8bd3
                         add.s            eax, ecx                                       // 0x0088f766    03c1
                         not              edx                                            // 0x0088f768    f7d2
                         or.s             edx, eax                                       // 0x0088f76a    0bd0
                         xor.s            edx, ecx                                       // 0x0088f76c    33d1
                         add              edx, dword ptr [esp + 0x20]                    // 0x0088f76e    03542420
                         {disp32} lea     edi, dword ptr [edi + edx * 0x1 + -0x7a7ba22f] // 0x0088f772    8dbc17d15d8485
                         mov.s            edx, edi                                       // 0x0088f779    8bd7
                         shl              edx, 0x15                                      // 0x0088f77b    c1e215
                         shr              edi, 0xb                                       // 0x0088f77e    c1ef0b
                         or.s             edx, edi                                       // 0x0088f781    0bd7
                         mov.s            edi, ecx                                       // 0x0088f783    8bf9
                         add.s            edx, eax                                       // 0x0088f785    03d0
                         not              edi                                            // 0x0088f787    f7d7
                         or.s             edi, edx                                       // 0x0088f789    0bfa
                         xor.s            edi, eax                                       // 0x0088f78b    33f8
                         add              edi, dword ptr [esp + 0x3c]                    // 0x0088f78d    037c243c
                         {disp32} lea     ebx, dword ptr [ebx + edi * 0x1 + 0x6fa87e4f]  // 0x0088f791    8d9c3b4f7ea86f
                         mov.s            edi, ebx                                       // 0x0088f798    8bfb
                         shr              edi, 0x1a                                      // 0x0088f79a    c1ef1a
                         shl              ebx, 6                                         // 0x0088f79d    c1e306
                         or.s             edi, ebx                                       // 0x0088f7a0    0bfb
                         mov.s            ebx, eax                                       // 0x0088f7a2    8bd8
                         add.s            edi, edx                                       // 0x0088f7a4    03fa
                         not              ebx                                            // 0x0088f7a6    f7d3
                         or.s             ebx, edi                                       // 0x0088f7a8    0bdf
                         xor.s            ebx, edx                                       // 0x0088f7aa    33da
                         add              ebx, dword ptr [esp + 0x58]                    // 0x0088f7ac    035c2458
                         {disp32} lea     ecx, dword ptr [ecx + ebx * 0x1 + -0x01d31920] // 0x0088f7b0    8d8c19e0e62cfe
                         mov.s            ebx, ecx                                       // 0x0088f7b7    8bd9
                         shr              ebx, 0x16                                      // 0x0088f7b9    c1eb16
                         shl              ecx, 0xa                                       // 0x0088f7bc    c1e10a
                         or.s             ebx, ecx                                       // 0x0088f7bf    0bd9
                         mov.s            ecx, edx                                       // 0x0088f7c1    8bca
                         add.s            ebx, edi                                       // 0x0088f7c3    03df
                         not              ecx                                            // 0x0088f7c5    f7d1
                         or.s             ecx, ebx                                       // 0x0088f7c7    0bcb
                         xor.s            ecx, edi                                       // 0x0088f7c9    33cf
                         add              ecx, dword ptr [esp + 0x34]                    // 0x0088f7cb    034c2434
                         {disp32} lea     eax, dword ptr [eax + ecx * 0x1 + -0x5cfebcec] // 0x0088f7cf    8d8408144301a3
                         mov.s            ecx, eax                                       // 0x0088f7d6    8bc8
                         shr              ecx, 0x11                                      // 0x0088f7d8    c1e911
                         shl              eax, 0xf                                       // 0x0088f7db    c1e00f
                         or.s             ecx, eax                                       // 0x0088f7de    0bc8
                         mov.s            eax, edi                                       // 0x0088f7e0    8bc7
                         add.s            ecx, ebx                                       // 0x0088f7e2    03cb
                         not              eax                                            // 0x0088f7e4    f7d0
                         or.s             eax, ecx                                       // 0x0088f7e6    0bc1
                         xor.s            eax, ebx                                       // 0x0088f7e8    33c3
                         add              eax, dword ptr [esp + 0x50]                    // 0x0088f7ea    03442450
                         {disp32} lea     edx, dword ptr [edx + eax * 0x1 + 0x4e0811a1]  // 0x0088f7ee    8d9402a111084e
                         mov.s            eax, edx                                       // 0x0088f7f5    8bc2
                         shl              eax, 0x15                                      // 0x0088f7f7    c1e015
                         shr              edx, 0xb                                       // 0x0088f7fa    c1ea0b
                         or.s             eax, edx                                       // 0x0088f7fd    0bc2
                         mov.s            edx, ebx                                       // 0x0088f7ff    8bd3
                         add.s            eax, ecx                                       // 0x0088f801    03c1
                         not              edx                                            // 0x0088f803    f7d2
                         or.s             edx, eax                                       // 0x0088f805    0bd0
                         xor.s            edx, ecx                                       // 0x0088f807    33d1
                         add              edx, dword ptr [esp + 0x2c]                    // 0x0088f809    0354242c
                         {disp32} lea     edi, dword ptr [edi + edx * 0x1 + -0x08ac817e] // 0x0088f80d    8dbc17827e53f7
                         mov.s            edx, edi                                       // 0x0088f814    8bd7
                         shr              edx, 0x1a                                      // 0x0088f816    c1ea1a
                         shl              edi, 6                                         // 0x0088f819    c1e706
                         or.s             edx, edi                                       // 0x0088f81c    0bd7
                         mov.s            edi, ecx                                       // 0x0088f81e    8bf9
                         add.s            edx, eax                                       // 0x0088f820    03d0
                         not              edi                                            // 0x0088f822    f7d7
                         or.s             edi, edx                                       // 0x0088f824    0bfa
                         xor.s            edi, eax                                       // 0x0088f826    33f8
                         add              edi, dword ptr [esp + 0x48]                    // 0x0088f828    037c2448
                         {disp32} lea     ebx, dword ptr [ebx + edi * 0x1 + -0x42c50dcb] // 0x0088f82c    8d9c3b35f23abd
                         mov.s            edi, ebx                                       // 0x0088f833    8bfb
                         shr              edi, 0x16                                      // 0x0088f835    c1ef16
                         shl              ebx, 0xa                                       // 0x0088f838    c1e30a
                         or.s             edi, ebx                                       // 0x0088f83b    0bfb
                         mov.s            ebx, eax                                       // 0x0088f83d    8bd8
                         add.s            edi, edx                                       // 0x0088f83f    03fa
                         not              ebx                                            // 0x0088f841    f7d3
                         or.s             ebx, edi                                       // 0x0088f843    0bdf
                         push             0x40                                           // 0x0088f845    6a40
                         xor.s            ebx, edx                                       // 0x0088f847    33da
                         push             0x0                                            // 0x0088f849    6a00
                         add              ebx, dword ptr [esp + 0x2c]                    // 0x0088f84b    035c242c
                         {disp32} lea     ecx, dword ptr [ecx + ebx * 0x1 + 0x2ad7d2bb]  // 0x0088f84f    8d8c19bbd2d72a
                         mov.s            ebx, ecx                                       // 0x0088f856    8bd9
                         shr              ebx, 0x11                                      // 0x0088f858    c1eb11
                         shl              ecx, 0xf                                       // 0x0088f85b    c1e10f
                         or.s             ebx, ecx                                       // 0x0088f85e    0bd9
                         mov.s            ecx, edx                                       // 0x0088f860    8bca
                         add.s            ebx, edi                                       // 0x0088f862    03df
                         not              ecx                                            // 0x0088f864    f7d1
                         or.s             ecx, ebx                                       // 0x0088f866    0bcb
                         xor.s            ecx, edi                                       // 0x0088f868    33cf
                         add.s            ecx, ebp                                       // 0x0088f86a    03cd
                         {disp8} mov      ebp, dword ptr [esi + 0x08]                    // 0x0088f86c    8b6e08
                         add.s            ebp, ebx                                       // 0x0088f86f    03eb
                         {disp32} lea     eax, dword ptr [eax + ecx * 0x1 + -0x14792c6f] // 0x0088f871    8d840891d386eb
                         mov              ecx, dword ptr [esi]                           // 0x0088f878    8b0e
                         add.s            ecx, edx                                       // 0x0088f87a    03ca
                         mov.s            edx, eax                                       // 0x0088f87c    8bd0
                         shl              edx, 0x15                                      // 0x0088f87e    c1e215
                         shr              eax, 0xb                                       // 0x0088f881    c1e80b
                         or.s             edx, eax                                       // 0x0088f884    0bd0
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x0088f886    8b4604
                         add.s            edx, ebx                                       // 0x0088f889    03d3
                         {disp8} mov      ebx, dword ptr [esi + 0x0c]                    // 0x0088f88b    8b5e0c
                         add.s            eax, edx                                       // 0x0088f88e    03c2
                         add.s            ebx, edi                                       // 0x0088f890    03df
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x0088f892    894604
                         {disp8} lea      eax, dword ptr [esp + 0x24]                    // 0x0088f895    8d442424
                         push             eax                                            // 0x0088f899    50
                         mov              dword ptr [esi], ecx                           // 0x0088f89a    890e
                         {disp8} mov      dword ptr [esi + 0x08], ebp                    // 0x0088f89c    896e08
                         {disp8} mov      dword ptr [esi + 0x0c], ebx                    // 0x0088f89f    895e0c
                         call             _jmp_addr_0x0088f980                           // 0x0088f8a2    e8d9000000
                         add              esp, 0x18                                      // 0x0088f8a7    83c418
                         pop              edi                                            // 0x0088f8aa    5f
                         pop              esi                                            // 0x0088f8ab    5e
                         pop              ebp                                            // 0x0088f8ac    5d
                         pop              ebx                                            // 0x0088f8ad    5b
                         add              esp, 0x40                                      // 0x0088f8ae    83c440
                         ret                                                             // 0x0088f8b1    c3
                         nop                                                             // 0x0088f8b2    90
                         nop                                                             // 0x0088f8b3    90
                         nop                                                             // 0x0088f8b4    90
                         nop                                                             // 0x0088f8b5    90
                         nop                                                             // 0x0088f8b6    90
                         nop                                                             // 0x0088f8b7    90
                         nop                                                             // 0x0088f8b8    90
                         nop                                                             // 0x0088f8b9    90
                         nop                                                             // 0x0088f8ba    90
                         nop                                                             // 0x0088f8bb    90
                         nop                                                             // 0x0088f8bc    90
                         nop                                                             // 0x0088f8bd    90
                         nop                                                             // 0x0088f8be    90
                         nop                                                             // 0x0088f8bf    90
_jmp_addr_0x0088f8c0:    push             edi                                            // 0x0088f8c0    57
                         {disp8} mov      edi, dword ptr [esp + 0x10]                    // 0x0088f8c1    8b7c2410
                         test             edi, edi                                       // 0x0088f8c5    85ff
                         {disp8} jbe      _jmp_addr_0x0088f907                           // 0x0088f8c7    763e
                         {disp8} mov      edx, dword ptr [esp + 0x08]                    // 0x0088f8c9    8b542408
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x0088f8cd    8b4c240c
                         push             esi                                            // 0x0088f8d1    56
                         or               esi, 0xffffffff                                // 0x0088f8d2    83ceff
                         {disp8} lea      eax, dword ptr [edx + 0x01]                    // 0x0088f8d5    8d4201
                         sub.s            esi, edx                                       // 0x0088f8d8    2bf2
_jmp_addr_0x0088f8da:    mov              dl, byte ptr [ecx]                             // 0x0088f8da    8a11
                         add              ecx, 0x4                                       // 0x0088f8dc    83c104
                         {disp8} mov      byte ptr [eax + -0x01], dl                     // 0x0088f8df    8850ff
                         {disp8} mov      edx, dword ptr [ecx + -0x04]                   // 0x0088f8e2    8b51fc
                         shr              edx, 8                                         // 0x0088f8e5    c1ea08
                         mov              byte ptr [eax], dl                             // 0x0088f8e8    8810
                         {disp8} mov      edx, dword ptr [ecx + -0x04]                   // 0x0088f8ea    8b51fc
                         shr              edx, 0x10                                      // 0x0088f8ed    c1ea10
                         {disp8} mov      byte ptr [eax + 0x01], dl                      // 0x0088f8f0    885001
                         {disp8} mov      edx, dword ptr [ecx + -0x04]                   // 0x0088f8f3    8b51fc
                         shr              edx, 0x18                                      // 0x0088f8f6    c1ea18
                         {disp8} mov      byte ptr [eax + 0x02], dl                      // 0x0088f8f9    885002
                         add              eax, 0x04                                      // 0x0088f8fc    83c004
                         lea              edx, dword ptr [esi + eax * 0x1]               // 0x0088f8ff    8d1406
                         cmp.s            edx, edi                                       // 0x0088f902    3bd7
                         .byte            0x72, 0xd4// {disp8} jb _jmp_addr_0x0088f8da   // 0x0088f904    72d4
                         pop              esi                                            // 0x0088f906    5e
_jmp_addr_0x0088f907:    pop              edi                                            // 0x0088f907    5f
                         ret                                                             // 0x0088f908    c3
                         nop                                                             // 0x0088f909    90
                         nop                                                             // 0x0088f90a    90
                         nop                                                             // 0x0088f90b    90
                         nop                                                             // 0x0088f90c    90
                         nop                                                             // 0x0088f90d    90
                         nop                                                             // 0x0088f90e    90
                         nop                                                             // 0x0088f90f    90
_jmp_addr_0x0088f910:    push             ebp                                            // 0x0088f910    55
                         {disp8} mov      ebp, dword ptr [esp + 0x10]                    // 0x0088f911    8b6c2410
                         test             ebp, ebp                                       // 0x0088f915    85ed
                         {disp8} jbe      _jmp_addr_0x0088f95a                           // 0x0088f917    7641
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x0088f919    8b4c240c
                         push             esi                                            // 0x0088f91d    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x0088f91e    8b74240c
                         push             edi                                            // 0x0088f922    57
                         mov              edi, 0xfffffffe                                // 0x0088f923    bffeffffff
                         {disp8} lea      eax, dword ptr [ecx + 0x02]                    // 0x0088f928    8d4102
                         sub.s            edi, ecx                                       // 0x0088f92b    2bf9
_jmp_addr_0x0088f92d:    xor.s            ecx, ecx                                       // 0x0088f92d    33c9
                         xor.s            edx, edx                                       // 0x0088f92f    33d2
                         {disp8} mov      ch, byte ptr [eax + 0x01]                      // 0x0088f931    8a6801
                         {disp8} mov      dl, byte ptr [eax + -0x01]                     // 0x0088f934    8a50ff
                         mov              cl, byte ptr [eax]                             // 0x0088f937    8a08
                         add              eax, 0x04                                      // 0x0088f939    83c004
                         shl              ecx, 8                                         // 0x0088f93c    c1e108
                         or.s             ecx, edx                                       // 0x0088f93f    0bca
                         xor.s            edx, edx                                       // 0x0088f941    33d2
                         {disp8} mov      dl, byte ptr [eax + -0x06]                     // 0x0088f943    8a50fa
                         add              esi, 0x04                                      // 0x0088f946    83c604
                         shl              ecx, 8                                         // 0x0088f949    c1e108
                         or.s             ecx, edx                                       // 0x0088f94c    0bca
                         {disp8} mov      dword ptr [esi + -0x04], ecx                   // 0x0088f94e    894efc
                         lea              ecx, dword ptr [edi + eax * 0x1]               // 0x0088f951    8d0c07
                         cmp.s            ecx, ebp                                       // 0x0088f954    3bcd
                         .byte            0x72, 0xd5// {disp8} jb _jmp_addr_0x0088f92d   // 0x0088f956    72d5
                         pop              edi                                            // 0x0088f958    5f
                         pop              esi                                            // 0x0088f959    5e
_jmp_addr_0x0088f95a:    pop              ebp                                            // 0x0088f95a    5d
                         ret                                                             // 0x0088f95b    c3
                         nop                                                             // 0x0088f95c    90
                         nop                                                             // 0x0088f95d    90
                         nop                                                             // 0x0088f95e    90
                         nop                                                             // 0x0088f95f    90
_jmp_addr_0x0088f960:    {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x0088f960    8b4c240c
                         push             esi                                            // 0x0088f964    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x0088f965    8b74240c
                         mov.s            eax, ecx                                       // 0x0088f969    8bc1
                         push             edi                                            // 0x0088f96b    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                    // 0x0088f96c    8b7c240c
                         shr              ecx, 2                                         // 0x0088f970    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0088f973    f3a5
                         mov.s            ecx, eax                                       // 0x0088f975    8bc8
                         and              ecx, 0x03                                      // 0x0088f977    83e103
                         rep movsb                                                       // 0x0088f97a    f3a4
                         pop              edi                                            // 0x0088f97c    5f
                         pop              esi                                            // 0x0088f97d    5e
                         ret                                                             // 0x0088f97e    c3
                         nop                                                             // 0x0088f97f    90
_jmp_addr_0x0088f980:    {disp8} mov      al, byte ptr [esp + 0x08]                      // 0x0088f980    8a442408
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x0088f984    8b4c240c
                         push             ebx                                            // 0x0088f988    53
                         mov.s            bl, al                                         // 0x0088f989    8ad8
                         mov.s            bh, bl                                         // 0x0088f98b    8afb
                         mov.s            edx, ecx                                       // 0x0088f98d    8bd1
                         mov.s            eax, ebx                                       // 0x0088f98f    8bc3
                         push             edi                                            // 0x0088f991    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                    // 0x0088f992    8b7c240c
                         shl              eax, 0x10                                      // 0x0088f996    c1e010
                         mov.s            ax, bx                                         // 0x0088f999    668bc3
                         shr              ecx, 2                                         // 0x0088f99c    c1e902
                         rep stosd                                                       // 0x0088f99f    f3ab
                         mov.s            ecx, edx                                       // 0x0088f9a1    8bca
                         and              ecx, 0x03                                      // 0x0088f9a3    83e103
                         rep stosb                                                       // 0x0088f9a6    f3aa
                         pop              edi                                            // 0x0088f9a8    5f
                         pop              ebx                                            // 0x0088f9a9    5b
                         ret                                                             // 0x0088f9aa    c3
                         nop                                                             // 0x0088f9ab    90
                         nop                                                             // 0x0088f9ac    90
                         nop                                                             // 0x0088f9ad    90
                         nop                                                             // 0x0088f9ae    90
                         nop                                                             // 0x0088f9af    90
_jmp_addr_0x0088f9b0:    push             ebx                                            // 0x0088f9b0    53
                         {disp8} mov      ebx, dword ptr [esp + 0x08]                    // 0x0088f9b1    8b5c2408
                         push             esi                                            // 0x0088f9b5    56
                         push             edi                                            // 0x0088f9b6    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]                    // 0x0088f9b7    8b7c2414
                         xor.s            esi, esi                                       // 0x0088f9bb    33f6
_jmp_addr_0x0088f9bd:    xor.s            eax, eax                                       // 0x0088f9bd    33c0
                         mov              al, byte ptr [esi + ebx * 0x1]                 // 0x0088f9bf    8a041e
                         push             eax                                            // 0x0088f9c2    50
                         push             0x00c3aa1c                                     // 0x0088f9c3    681caac300
                         push             edi                                            // 0x0088f9c8    57
                         call             _sprintf                                       // 0x0088f9c9    e8045ef3ff
                         add              esp, 0x0c                                      // 0x0088f9ce    83c40c
                         inc              esi                                            // 0x0088f9d1    46
                         add              edi, 0x02                                      // 0x0088f9d2    83c702
                         cmp              esi, 0x10                                      // 0x0088f9d5    83fe10
                         .byte            0x72, 0xe3// {disp8} jb _jmp_addr_0x0088f9bd   // 0x0088f9d8    72e3
                         pop              edi                                            // 0x0088f9da    5f
                         pop              esi                                            // 0x0088f9db    5e
                         pop              ebx                                            // 0x0088f9dc    5b
                         ret                                                             // 0x0088f9dd    c3
                         nop                                                             // 0x0088f9de    90
                         nop                                                             // 0x0088f9df    90
_jmp_addr_0x0088f9e0:    sub              esp, 0x68                                      // 0x0088f9e0    83ec68
                         {disp8} lea      eax, dword ptr [esp + 0x10]                    // 0x0088f9e3    8d442410
                         push             eax                                            // 0x0088f9e7    50
                         call             _jmp_addr_0x0088ee20                           // 0x0088f9e8    e833f4ffff
                         {disp8} mov      ecx, dword ptr [esp + 0x74]                    // 0x0088f9ed    8b4c2474
                         {disp8} mov      edx, dword ptr [esp + 0x70]                    // 0x0088f9f1    8b542470
                         push             ecx                                            // 0x0088f9f5    51
                         {disp8} lea      eax, dword ptr [esp + 0x18]                    // 0x0088f9f6    8d442418
                         push             edx                                            // 0x0088f9fa    52
                         push             eax                                            // 0x0088f9fb    50
                         call             _jmp_addr_0x0088ee50                           // 0x0088f9fc    e84ff4ffff
                         {disp8} lea      ecx, dword ptr [esp + 0x20]                    // 0x0088fa01    8d4c2420
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0088fa05    8d542410
                         push             ecx                                            // 0x0088fa09    51
                         push             edx                                            // 0x0088fa0a    52
                         call             _jmp_addr_0x0088ef00                           // 0x0088fa0b    e8f0f4ffff
                         {disp32} mov     eax, dword ptr [esp + 0x0000008c]              // 0x0088fa10    8b84248c000000
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                    // 0x0088fa17    8d4c2418
                         push             eax                                            // 0x0088fa1b    50
                         push             ecx                                            // 0x0088fa1c    51
                         call             _jmp_addr_0x0088f9b0                           // 0x0088fa1d    e88effffff
                         add              esp, 0x00000088                                // 0x0088fa22    81c488000000
                         ret                                                             // 0x0088fa28    c3
                         nop                                                             // 0x0088fa29    90
                         nop                                                             // 0x0088fa2a    90
                         nop                                                             // 0x0088fa2b    90
                         nop                                                             // 0x0088fa2c    90
                         nop                                                             // 0x0088fa2d    90
                         nop                                                             // 0x0088fa2e    90
                         nop                                                             // 0x0088fa2f    90
_jmp_addr_0x0088fa30:    {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x0088fa30    8b442414
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x0088fa34    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x0088fa38    8b54240c
                         push             eax                                            // 0x0088fa3c    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x0088fa3d    8b44240c
                         push             ecx                                            // 0x0088fa41    51
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x0088fa42    8b4c240c
                         push             edx                                            // 0x0088fa46    52
                         push             0x4                                            // 0x0088fa47    6a04
                         push             eax                                            // 0x0088fa49    50
                         push             ecx                                            // 0x0088fa4a    51
                         call             _jmp_addr_0x0088fa60                           // 0x0088fa4b    e810000000
                         add              esp, 0x18                                      // 0x0088fa50    83c418
                         ret                                                             // 0x0088fa53    c3
                         nop                                                             // 0x0088fa54    90
                         nop                                                             // 0x0088fa55    90
                         nop                                                             // 0x0088fa56    90
                         nop                                                             // 0x0088fa57    90
                         nop                                                             // 0x0088fa58    90
                         nop                                                             // 0x0088fa59    90
                         nop                                                             // 0x0088fa5a    90
                         nop                                                             // 0x0088fa5b    90
                         nop                                                             // 0x0088fa5c    90
                         nop                                                             // 0x0088fa5d    90
                         nop                                                             // 0x0088fa5e    90
                         nop                                                             // 0x0088fa5f    90
_jmp_addr_0x0088fa60:    push             ebx                                            // 0x0088fa60    53
                         push             ebp                                            // 0x0088fa61    55
                         push             esi                                            // 0x0088fa62    56
                         push             edi                                            // 0x0088fa63    57
                         push             0x14                                           // 0x0088fa64    6a14
                         call             _malloc                                        // 0x0088fa66    e8e16bf3ff
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x0088fa6b    8b5c241c
                         mov.s            edi, eax                                       // 0x0088fa6f    8bf8
                         {disp32} lea     eax, dword ptr [ebx * 0x4 + 0x00000000]        // 0x0088fa71    8d049d00000000
                         push             eax                                            // 0x0088fa78    50
                         call             _malloc                                        // 0x0088fa79    e8ce6bf3ff
                         {disp8} mov      ebp, dword ptr [esp + 0x30]                    // 0x0088fa7e    8b6c2430
                         add              esp, 0x08                                      // 0x0088fa82    83c408
                         xor.s            esi, esi                                       // 0x0088fa85    33f6
                         mov              dword ptr [edi], eax                           // 0x0088fa87    8907
                         test             ebx, ebx                                       // 0x0088fa89    85db
                         {disp8} jle      _jmp_addr_0x0088faaa                           // 0x0088fa8b    7e1d
_jmp_addr_0x0088fa8d:    {disp8} mov      ecx, dword ptr [esp + 0x1c]                    // 0x0088fa8d    8b4c241c
                         {disp8} mov      edx, dword ptr [esp + 0x14]                    // 0x0088fa91    8b542414
                         push             ebp                                            // 0x0088fa95    55
                         push             ecx                                            // 0x0088fa96    51
                         push             edx                                            // 0x0088fa97    52
                         call             _jmp_addr_0x00887d90                           // 0x0088fa98    e8f382ffff
                         mov              ecx, dword ptr [edi]                           // 0x0088fa9d    8b0f
                         add              esp, 0x0c                                      // 0x0088fa9f    83c40c
                         mov              dword ptr [ecx + esi * 0x4], eax               // 0x0088faa2    8904b1
                         inc              esi                                            // 0x0088faa5    46
                         cmp.s            esi, ebx                                       // 0x0088faa6    3bf3
                         {disp8} jl       _jmp_addr_0x0088fa8d                           // 0x0088faa8    7ce3
_jmp_addr_0x0088faaa:    {disp8} mov      eax, dword ptr [esp + 0x20]                    // 0x0088faaa    8b442420
                         {disp8} mov      edx, dword ptr [esp + 0x24]                    // 0x0088faae    8b542424
                         {disp8} mov      dword ptr [edi + 0x0c], eax                    // 0x0088fab2    89470c
                         {disp8} mov      dword ptr [edi + 0x04], ebx                    // 0x0088fab5    895f04
                         {disp8} mov      dword ptr [edi + 0x08], ebp                    // 0x0088fab8    896f08
                         {disp8} mov      dword ptr [edi + 0x10], edx                    // 0x0088fabb    895710
                         mov.s            eax, edi                                       // 0x0088fabe    8bc7
                         pop              edi                                            // 0x0088fac0    5f
                         pop              esi                                            // 0x0088fac1    5e
                         pop              ebp                                            // 0x0088fac2    5d
                         pop              ebx                                            // 0x0088fac3    5b
                         ret                                                             // 0x0088fac4    c3
                         nop                                                             // 0x0088fac5    90
                         nop                                                             // 0x0088fac6    90
                         nop                                                             // 0x0088fac7    90
                         nop                                                             // 0x0088fac8    90
                         nop                                                             // 0x0088fac9    90
                         nop                                                             // 0x0088faca    90
                         nop                                                             // 0x0088facb    90
                         nop                                                             // 0x0088facc    90
                         nop                                                             // 0x0088facd    90
                         nop                                                             // 0x0088face    90
                         nop                                                             // 0x0088facf    90
_jmp_addr_0x0088fad0:    push             esi                                            // 0x0088fad0    56
                         push             edi                                            // 0x0088fad1    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                    // 0x0088fad2    8b7c240c
                         xor.s            esi, esi                                       // 0x0088fad6    33f6
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fad8    8b4704
                         test             eax, eax                                       // 0x0088fadb    85c0
                         {disp8} jle      _jmp_addr_0x0088faf5                           // 0x0088fadd    7e16
_jmp_addr_0x0088fadf:    mov              eax, dword ptr [edi]                           // 0x0088fadf    8b07
                         mov              ecx, dword ptr [eax + esi * 0x4]               // 0x0088fae1    8b0cb0
                         push             ecx                                            // 0x0088fae4    51
                         call             _jmp_addr_0x00887de0                           // 0x0088fae5    e8f682ffff
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088faea    8b4704
                         add              esp, 0x04                                      // 0x0088faed    83c404
                         inc              esi                                            // 0x0088faf0    46
                         cmp.s            esi, eax                                       // 0x0088faf1    3bf0
                         {disp8} jl       _jmp_addr_0x0088fadf                           // 0x0088faf3    7cea
_jmp_addr_0x0088faf5:    mov              edx, dword ptr [edi]                           // 0x0088faf5    8b17
                         push             edx                                            // 0x0088faf7    52
                         call             _free                                          // 0x0088faf8    e8896cf3ff
                         push             edi                                            // 0x0088fafd    57
                         call             _free                                          // 0x0088fafe    e8836cf3ff
                         add              esp, 0x08                                      // 0x0088fb03    83c408
                         pop              edi                                            // 0x0088fb06    5f
                         pop              esi                                            // 0x0088fb07    5e
                         ret                                                             // 0x0088fb08    c3
                         nop                                                             // 0x0088fb09    90
                         nop                                                             // 0x0088fb0a    90
                         nop                                                             // 0x0088fb0b    90
                         nop                                                             // 0x0088fb0c    90
                         nop                                                             // 0x0088fb0d    90
                         nop                                                             // 0x0088fb0e    90
                         nop                                                             // 0x0088fb0f    90
                         push             ebx                                            // 0x0088fb10    53
                         push             esi                                            // 0x0088fb11    56
                         push             edi                                            // 0x0088fb12    57
                         {disp8} mov      edi, dword ptr [esp + 0x10]                    // 0x0088fb13    8b7c2410
                         xor.s            ebx, ebx                                       // 0x0088fb17    33db
                         xor.s            esi, esi                                       // 0x0088fb19    33f6
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fb1b    8b4704
                         test             eax, eax                                       // 0x0088fb1e    85c0
                         {disp8} jle      _jmp_addr_0x0088fb3a                           // 0x0088fb20    7e18
_jmp_addr_0x0088fb22:    mov              eax, dword ptr [edi]                           // 0x0088fb22    8b07
                         mov              ecx, dword ptr [eax + esi * 0x4]               // 0x0088fb24    8b0cb0
                         push             ecx                                            // 0x0088fb27    51
                         call             _jmp_addr_0x00887e40                           // 0x0088fb28    e81383ffff
                         add              esp, 0x04                                      // 0x0088fb2d    83c404
                         add.s            ebx, eax                                       // 0x0088fb30    03d8
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fb32    8b4704
                         inc              esi                                            // 0x0088fb35    46
                         cmp.s            esi, eax                                       // 0x0088fb36    3bf0
                         {disp8} jl       _jmp_addr_0x0088fb22                           // 0x0088fb38    7ce8
_jmp_addr_0x0088fb3a:    pop              edi                                            // 0x0088fb3a    5f
                         mov.s            eax, ebx                                       // 0x0088fb3b    8bc3
                         pop              esi                                            // 0x0088fb3d    5e
                         pop              ebx                                            // 0x0088fb3e    5b
                         ret                                                             // 0x0088fb3f    c3
_jmp_addr_0x0088fb40:    push             ebx                                            // 0x0088fb40    53
                         push             esi                                            // 0x0088fb41    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x0088fb42    8b74240c
                         push             edi                                            // 0x0088fb46    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]                    // 0x0088fb47    8b7c2414
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x0088fb4b    8b4604
                         push             eax                                            // 0x0088fb4e    50
                         push             edi                                            // 0x0088fb4f    57
                         call             dword ptr [esi + 0xc]                          // 0x0088fb50    ff560c
                         mov              edx, dword ptr [esi]                           // 0x0088fb53    8b16
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                    // 0x0088fb55    8b4e10
                         mov.s            ebx, eax                                       // 0x0088fb58    8bd8
                         push             0x0                                            // 0x0088fb5a    6a00
                         push             0x0                                            // 0x0088fb5c    6a00
                         push             ecx                                            // 0x0088fb5e    51
                         mov              eax, dword ptr [edx + ebx * 0x4]               // 0x0088fb5f    8b049a
                         push             edi                                            // 0x0088fb62    57
                         push             eax                                            // 0x0088fb63    50
                         call             _jmp_addr_0x00888080                           // 0x0088fb64    e81785ffff
                         add              esp, 0x1c                                      // 0x0088fb69    83c41c
                         cmp              eax, -0x01                                     // 0x0088fb6c    83f8ff
                         {disp8} jne      _jmp_addr_0x0088fb84                           // 0x0088fb6f    7513
                         mov              ecx, dword ptr [esi]                           // 0x0088fb71    8b0e
                         push             edi                                            // 0x0088fb73    57
                         mov              edx, dword ptr [ecx + ebx * 0x4]               // 0x0088fb74    8b1499
                         push             edx                                            // 0x0088fb77    52
                         call             _jmp_addr_0x00887e70                           // 0x0088fb78    e8f382ffff
                         add              esp, 0x08                                      // 0x0088fb7d    83c408
                         pop              edi                                            // 0x0088fb80    5f
                         pop              esi                                            // 0x0088fb81    5e
                         pop              ebx                                            // 0x0088fb82    5b
                         ret                                                             // 0x0088fb83    c3
_jmp_addr_0x0088fb84:    push             eax                                            // 0x0088fb84    50
                         mov              eax, dword ptr [esi]                           // 0x0088fb85    8b06
                         push             edi                                            // 0x0088fb87    57
                         mov              ecx, dword ptr [eax + ebx * 0x4]               // 0x0088fb88    8b0c98
                         push             ecx                                            // 0x0088fb8b    51
                         call             _jmp_addr_0x00888030                           // 0x0088fb8c    e89f84ffff
                         add              esp, 0x0c                                      // 0x0088fb91    83c40c
                         pop              edi                                            // 0x0088fb94    5f
                         pop              esi                                            // 0x0088fb95    5e
                         pop              ebx                                            // 0x0088fb96    5b
                         ret                                                             // 0x0088fb97    c3
                         nop                                                             // 0x0088fb98    90
                         nop                                                             // 0x0088fb99    90
                         nop                                                             // 0x0088fb9a    90
                         nop                                                             // 0x0088fb9b    90
                         nop                                                             // 0x0088fb9c    90
                         nop                                                             // 0x0088fb9d    90
                         nop                                                             // 0x0088fb9e    90
                         nop                                                             // 0x0088fb9f    90
_jmp_addr_0x0088fba0:    push             ebx                                            // 0x0088fba0    53
                         {disp8} mov      ebx, dword ptr [esp + 0x0c]                    // 0x0088fba1    8b5c240c
                         push             esi                                            // 0x0088fba5    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x0088fba6    8b74240c
                         push             edi                                            // 0x0088fbaa    57
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x0088fbab    8b4604
                         push             eax                                            // 0x0088fbae    50
                         push             ebx                                            // 0x0088fbaf    53
                         call             dword ptr [esi + 0xc]                          // 0x0088fbb0    ff560c
                         mov              edx, dword ptr [esi]                           // 0x0088fbb3    8b16
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                    // 0x0088fbb5    8b4e10
                         mov.s            edi, eax                                       // 0x0088fbb8    8bf8
                         push             0x0                                            // 0x0088fbba    6a00
                         push             0x0                                            // 0x0088fbbc    6a00
                         push             ecx                                            // 0x0088fbbe    51
                         mov              eax, dword ptr [edx + edi * 0x4]               // 0x0088fbbf    8b04ba
                         push             ebx                                            // 0x0088fbc2    53
                         push             eax                                            // 0x0088fbc3    50
                         call             _jmp_addr_0x00888080                           // 0x0088fbc4    e8b784ffff
                         add              esp, 0x1c                                      // 0x0088fbc9    83c41c
                         cmp              eax, -0x01                                     // 0x0088fbcc    83f8ff
                         {disp8} jne      _jmp_addr_0x0088fbd7                           // 0x0088fbcf    7506
                         pop              edi                                            // 0x0088fbd1    5f
                         pop              esi                                            // 0x0088fbd2    5e
                         xor.s            eax, eax                                       // 0x0088fbd3    33c0
                         pop              ebx                                            // 0x0088fbd5    5b
                         ret                                                             // 0x0088fbd6    c3
_jmp_addr_0x0088fbd7:    mov              ecx, dword ptr [esi]                           // 0x0088fbd7    8b0e
                         push             eax                                            // 0x0088fbd9    50
                         mov              edx, dword ptr [ecx + edi * 0x4]               // 0x0088fbda    8b14b9
                         push             edx                                            // 0x0088fbdd    52
                         call             _jmp_addr_0x00888000                           // 0x0088fbde    e81d84ffff
                         add              esp, 0x08                                      // 0x0088fbe3    83c408
                         mov              eax, 0x00000001                                // 0x0088fbe6    b801000000
                         pop              edi                                            // 0x0088fbeb    5f
                         pop              esi                                            // 0x0088fbec    5e
                         pop              ebx                                            // 0x0088fbed    5b
                         ret                                                             // 0x0088fbee    c3
                         nop                                                             // 0x0088fbef    90
_jmp_addr_0x0088fbf0:    push             ebx                                            // 0x0088fbf0    53
                         {disp8} mov      ebx, dword ptr [esp + 0x0c]                    // 0x0088fbf1    8b5c240c
                         push             esi                                            // 0x0088fbf5    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x0088fbf6    8b74240c
                         push             edi                                            // 0x0088fbfa    57
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x0088fbfb    8b4604
                         push             eax                                            // 0x0088fbfe    50
                         push             ebx                                            // 0x0088fbff    53
                         call             dword ptr [esi + 0xc]                          // 0x0088fc00    ff560c
                         mov              edx, dword ptr [esi]                           // 0x0088fc03    8b16
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                    // 0x0088fc05    8b4e10
                         mov.s            edi, eax                                       // 0x0088fc08    8bf8
                         push             0x0                                            // 0x0088fc0a    6a00
                         push             0x0                                            // 0x0088fc0c    6a00
                         push             ecx                                            // 0x0088fc0e    51
                         mov              eax, dword ptr [edx + edi * 0x4]               // 0x0088fc0f    8b04ba
                         push             ebx                                            // 0x0088fc12    53
                         push             eax                                            // 0x0088fc13    50
                         call             _jmp_addr_0x00888080                           // 0x0088fc14    e86784ffff
                         add              esp, 0x1c                                      // 0x0088fc19    83c41c
                         cmp              eax, -0x01                                     // 0x0088fc1c    83f8ff
                         {disp8} jne      _jmp_addr_0x0088fc27                           // 0x0088fc1f    7506
                         pop              edi                                            // 0x0088fc21    5f
                         pop              esi                                            // 0x0088fc22    5e
                         xor.s            eax, eax                                       // 0x0088fc23    33c0
                         pop              ebx                                            // 0x0088fc25    5b
                         ret                                                             // 0x0088fc26    c3
_jmp_addr_0x0088fc27:    mov              ecx, dword ptr [esi]                           // 0x0088fc27    8b0e
                         push             eax                                            // 0x0088fc29    50
                         mov              edx, dword ptr [ecx + edi * 0x4]               // 0x0088fc2a    8b14b9
                         push             edx                                            // 0x0088fc2d    52
                         call             _jmp_addr_0x00887e50                           // 0x0088fc2e    e81d82ffff
                         add              esp, 0x08                                      // 0x0088fc33    83c408
                         pop              edi                                            // 0x0088fc36    5f
                         pop              esi                                            // 0x0088fc37    5e
                         pop              ebx                                            // 0x0088fc38    5b
                         ret                                                             // 0x0088fc39    c3
                         nop                                                             // 0x0088fc3a    90
                         nop                                                             // 0x0088fc3b    90
                         nop                                                             // 0x0088fc3c    90
                         nop                                                             // 0x0088fc3d    90
                         nop                                                             // 0x0088fc3e    90
                         nop                                                             // 0x0088fc3f    90
_jmp_addr_0x0088fc40:    push             esi                                            // 0x0088fc40    56
                         push             edi                                            // 0x0088fc41    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                    // 0x0088fc42    8b7c240c
                         xor.s            esi, esi                                       // 0x0088fc46    33f6
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fc48    8b4704
                         test             eax, eax                                       // 0x0088fc4b    85c0
                         {disp8} jle      _jmp_addr_0x0088fc73                           // 0x0088fc4d    7e24
                         push             ebx                                            // 0x0088fc4f    53
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                    // 0x0088fc50    8b5c2418
                         push             ebp                                            // 0x0088fc54    55
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                    // 0x0088fc55    8b6c2418
_jmp_addr_0x0088fc59:    mov              eax, dword ptr [edi]                           // 0x0088fc59    8b07
                         push             ebx                                            // 0x0088fc5b    53
                         push             ebp                                            // 0x0088fc5c    55
                         mov              ecx, dword ptr [eax + esi * 0x4]               // 0x0088fc5d    8b0cb0
                         push             ecx                                            // 0x0088fc60    51
                         call             _jmp_addr_0x00888110                           // 0x0088fc61    e8aa84ffff
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fc66    8b4704
                         add              esp, 0x0c                                      // 0x0088fc69    83c40c
                         inc              esi                                            // 0x0088fc6c    46
                         cmp.s            esi, eax                                       // 0x0088fc6d    3bf0
                         {disp8} jl       _jmp_addr_0x0088fc59                           // 0x0088fc6f    7ce8
                         pop              ebp                                            // 0x0088fc71    5d
                         pop              ebx                                            // 0x0088fc72    5b
_jmp_addr_0x0088fc73:    pop              edi                                            // 0x0088fc73    5f
                         pop              esi                                            // 0x0088fc74    5e
                         ret                                                             // 0x0088fc75    c3
                         nop                                                             // 0x0088fc76    90
                         nop                                                             // 0x0088fc77    90
                         nop                                                             // 0x0088fc78    90
                         nop                                                             // 0x0088fc79    90
                         nop                                                             // 0x0088fc7a    90
                         nop                                                             // 0x0088fc7b    90
                         nop                                                             // 0x0088fc7c    90
                         nop                                                             // 0x0088fc7d    90
                         nop                                                             // 0x0088fc7e    90
                         nop                                                             // 0x0088fc7f    90
_jmp_addr_0x0088fc80:    push             esi                                            // 0x0088fc80    56
                         push             edi                                            // 0x0088fc81    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                    // 0x0088fc82    8b7c240c
                         xor.s            esi, esi                                       // 0x0088fc86    33f6
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fc88    8b4704
                         test             eax, eax                                       // 0x0088fc8b    85c0
                         {disp8} jle      _jmp_addr_0x0088fcb3                           // 0x0088fc8d    7e24
                         push             ebx                                            // 0x0088fc8f    53
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                    // 0x0088fc90    8b5c2418
                         push             ebp                                            // 0x0088fc94    55
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                    // 0x0088fc95    8b6c2418
_jmp_addr_0x0088fc99:    mov              eax, dword ptr [edi]                           // 0x0088fc99    8b07
                         push             ebx                                            // 0x0088fc9b    53
                         push             ebp                                            // 0x0088fc9c    55
                         mov              ecx, dword ptr [eax + esi * 0x4]               // 0x0088fc9d    8b0cb0
                         push             ecx                                            // 0x0088fca0    51
                         call             _jmp_addr_0x00888150                           // 0x0088fca1    e8aa84ffff
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fca6    8b4704
                         add              esp, 0x0c                                      // 0x0088fca9    83c40c
                         inc              esi                                            // 0x0088fcac    46
                         cmp.s            esi, eax                                       // 0x0088fcad    3bf0
                         {disp8} jl       _jmp_addr_0x0088fc99                           // 0x0088fcaf    7ce8
                         pop              ebp                                            // 0x0088fcb1    5d
                         pop              ebx                                            // 0x0088fcb2    5b
_jmp_addr_0x0088fcb3:    pop              edi                                            // 0x0088fcb3    5f
                         pop              esi                                            // 0x0088fcb4    5e
                         ret                                                             // 0x0088fcb5    c3
                         nop                                                             // 0x0088fcb6    90
                         nop                                                             // 0x0088fcb7    90
                         nop                                                             // 0x0088fcb8    90
                         nop                                                             // 0x0088fcb9    90
                         nop                                                             // 0x0088fcba    90
                         nop                                                             // 0x0088fcbb    90
                         nop                                                             // 0x0088fcbc    90
                         nop                                                             // 0x0088fcbd    90
                         nop                                                             // 0x0088fcbe    90
                         nop                                                             // 0x0088fcbf    90
_jmp_addr_0x0088fcc0:    push             ebx                                            // 0x0088fcc0    53
                         push             ebp                                            // 0x0088fcc1    55
                         push             esi                                            // 0x0088fcc2    56
                         push             edi                                            // 0x0088fcc3    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]                    // 0x0088fcc4    8b7c2414
                         xor.s            esi, esi                                       // 0x0088fcc8    33f6
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fcca    8b4704
                         test             eax, eax                                       // 0x0088fccd    85c0
                         {disp8} jle      _jmp_addr_0x0088fcf5                           // 0x0088fccf    7e24
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x0088fcd1    8b5c241c
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                    // 0x0088fcd5    8b6c2418
_jmp_addr_0x0088fcd9:    mov              eax, dword ptr [edi]                           // 0x0088fcd9    8b07
                         push             ebx                                            // 0x0088fcdb    53
                         push             ebp                                            // 0x0088fcdc    55
                         mov              ecx, dword ptr [eax + esi * 0x4]               // 0x0088fcdd    8b0cb0
                         push             ecx                                            // 0x0088fce0    51
                         call             _jmp_addr_0x00888180                           // 0x0088fce1    e89a84ffff
                         add              esp, 0x0c                                      // 0x0088fce6    83c40c
                         test             eax, eax                                       // 0x0088fce9    85c0
                         {disp8} jne      _jmp_addr_0x0088fcf7                           // 0x0088fceb    750a
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fced    8b4704
                         inc              esi                                            // 0x0088fcf0    46
                         cmp.s            esi, eax                                       // 0x0088fcf1    3bf0
                         {disp8} jl       _jmp_addr_0x0088fcd9                           // 0x0088fcf3    7ce4
_jmp_addr_0x0088fcf5:    xor.s            eax, eax                                       // 0x0088fcf5    33c0
_jmp_addr_0x0088fcf7:    pop              edi                                            // 0x0088fcf7    5f
                         pop              esi                                            // 0x0088fcf8    5e
                         pop              ebp                                            // 0x0088fcf9    5d
                         pop              ebx                                            // 0x0088fcfa    5b
                         ret                                                             // 0x0088fcfb    c3
                         nop                                                             // 0x0088fcfc    90
                         nop                                                             // 0x0088fcfd    90
                         nop                                                             // 0x0088fcfe    90
                         nop                                                             // 0x0088fcff    90
                         push             esi                                            // 0x0088fd00    56
                         push             edi                                            // 0x0088fd01    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                    // 0x0088fd02    8b7c240c
                         xor.s            esi, esi                                       // 0x0088fd06    33f6
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fd08    8b4704
                         test             eax, eax                                       // 0x0088fd0b    85c0
                         {disp8} jle      _jmp_addr_0x0088fd25                           // 0x0088fd0d    7e16
_jmp_addr_0x0088fd0f:    mov              eax, dword ptr [edi]                           // 0x0088fd0f    8b07
                         mov              ecx, dword ptr [eax + esi * 0x4]               // 0x0088fd11    8b0cb0
                         push             ecx                                            // 0x0088fd14    51
                         call             _jmp_addr_0x008881c0                           // 0x0088fd15    e8a684ffff
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0088fd1a    8b4704
                         add              esp, 0x04                                      // 0x0088fd1d    83c404
                         inc              esi                                            // 0x0088fd20    46
                         cmp.s            esi, eax                                       // 0x0088fd21    3bf0
                         {disp8} jl       _jmp_addr_0x0088fd0f                           // 0x0088fd23    7cea
_jmp_addr_0x0088fd25:    pop              edi                                            // 0x0088fd25    5f
                         pop              esi                                            // 0x0088fd26    5e
                         ret                                                             // 0x0088fd27    c3
                         nop                                                             // 0x0088fd28    90
                         nop                                                             // 0x0088fd29    90
                         nop                                                             // 0x0088fd2a    90
                         nop                                                             // 0x0088fd2b    90
                         nop                                                             // 0x0088fd2c    90
                         nop                                                             // 0x0088fd2d    90
                         nop                                                             // 0x0088fd2e    90
                         nop                                                             // 0x0088fd2f    90
                         push             ecx                                            // 0x0088fd30    51
                         push             0x0                                            // 0x0088fd31    6a00
                         call             _time                                          // 0x0088fd33    e8c57cf3ff
                         {disp8} mov      dword ptr [esp + 0x04], eax                    // 0x0088fd38    89442404
                         {disp8} lea      eax, dword ptr [esp + 0x04]                    // 0x0088fd3c    8d442404
                         push             eax                                            // 0x0088fd40    50
                         call             _localtime                                     // 0x0088fd41    e8577bf3ff
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                    // 0x0088fd46    8b4814
                         add              esp, 0x08                                      // 0x0088fd49    83c408
                         cmp              ecx, 0x63                                      // 0x0088fd4c    83f963
                         {disp8} jle      _jmp_addr_0x0088fd57                           // 0x0088fd4f    7e06
                         add              ecx, -0x64                                     // 0x0088fd51    83c19c
                         {disp8} mov      dword ptr [eax + 0x14], ecx                    // 0x0088fd54    894814
_jmp_addr_0x0088fd57:    mov              ecx, dword ptr [eax]                           // 0x0088fd57    8b08
                         {disp8} mov      edx, dword ptr [eax + 0x04]                    // 0x0088fd59    8b5004
                         push             ecx                                            // 0x0088fd5c    51
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x0088fd5d    8b4808
                         push             edx                                            // 0x0088fd60    52
                         {disp8} mov      edx, dword ptr [eax + 0x14]                    // 0x0088fd61    8b5014
                         push             ecx                                            // 0x0088fd64    51
                         {disp8} mov      ecx, dword ptr [eax + 0x0c]                    // 0x0088fd65    8b480c
                         push             edx                                            // 0x0088fd68    52
                         {disp8} mov      edx, dword ptr [eax + 0x10]                    // 0x0088fd69    8b5010
                         inc              edx                                            // 0x0088fd6c    42
                         push             ecx                                            // 0x0088fd6d    51
                         push             edx                                            // 0x0088fd6e    52
                         push             0x00c3aa24                                     // 0x0088fd6f    6824aac300
                         push             0x00fabe70                                     // 0x0088fd74    6870befa00
                         call             _sprintf                                       // 0x0088fd79    e8545af3ff
                         mov              eax, 0x00fabe70                                // 0x0088fd7e    b870befa00
                         add              esp, 0x24                                      // 0x0088fd83    83c424
                         ret                                                             // 0x0088fd86    c3
                         nop                                                             // 0x0088fd87    90
                         nop                                                             // 0x0088fd88    90
                         nop                                                             // 0x0088fd89    90
                         nop                                                             // 0x0088fd8a    90
                         nop                                                             // 0x0088fd8b    90
                         nop                                                             // 0x0088fd8c    90
                         nop                                                             // 0x0088fd8d    90
                         nop                                                             // 0x0088fd8e    90
                         nop                                                             // 0x0088fd8f    90
_jmp_addr_0x0088fd90:    push             esi                                            // 0x0088fd90    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x0088fd91    8b742408
                         push             edi                                            // 0x0088fd95    57
                         mov              ecx, 0x00000052                                // 0x0088fd96    b952000000
                         xor.s            eax, eax                                       // 0x0088fd9b    33c0
                         mov.s            edi, esi                                       // 0x0088fd9d    8bfe
                         rep stosd                                                       // 0x0088fd9f    f3ab
                         {disp32} lea     edi, dword ptr [esi + 0x00000108]              // 0x0088fda1    8dbe08010000
                         mov              dword ptr [esi], 0xffffffff                    // 0x0088fda7    c706ffffffff
                         push             edi                                            // 0x0088fdad    57
                         call             _jmp_addr_0x0088fdf0                           // 0x0088fdae    e83d000000
                         add              esp, 0x04                                      // 0x0088fdb3    83c404
                         test             eax, eax                                       // 0x0088fdb6    85c0
                         {disp8} jne      _jmp_addr_0x0088fdbd                           // 0x0088fdb8    7503
                         pop              edi                                            // 0x0088fdba    5f
                         pop              esi                                            // 0x0088fdbb    5e
                         ret                                                             // 0x0088fdbc    c3
_jmp_addr_0x0088fdbd:    add              esi, 0x00000114                                // 0x0088fdbd    81c614010000
                         push             esi                                            // 0x0088fdc3    56
                         call             _jmp_addr_0x0088fdf0                           // 0x0088fdc4    e827000000
                         add              esp, 0x04                                      // 0x0088fdc9    83c404
                         test             eax, eax                                       // 0x0088fdcc    85c0
                         {disp8} jne      _jmp_addr_0x0088fdde                           // 0x0088fdce    750e
                         push             edi                                            // 0x0088fdd0    57
                         call             _jmp_addr_0x0088fe30                           // 0x0088fdd1    e85a000000
                         add              esp, 0x04                                      // 0x0088fdd6    83c404
                         xor.s            eax, eax                                       // 0x0088fdd9    33c0
                         pop              edi                                            // 0x0088fddb    5f
                         pop              esi                                            // 0x0088fddc    5e
                         ret                                                             // 0x0088fddd    c3
_jmp_addr_0x0088fdde:    pop              edi                                            // 0x0088fdde    5f
                         mov              eax, 0x00000001                                // 0x0088fddf    b801000000
                         pop              esi                                            // 0x0088fde4    5e
                         ret                                                             // 0x0088fde5    c3
                         nop                                                             // 0x0088fde6    90
                         nop                                                             // 0x0088fde7    90
                         nop                                                             // 0x0088fde8    90
                         nop                                                             // 0x0088fde9    90
                         nop                                                             // 0x0088fdea    90
                         nop                                                             // 0x0088fdeb    90
                         nop                                                             // 0x0088fdec    90
                         nop                                                             // 0x0088fded    90
                         nop                                                             // 0x0088fdee    90
                         nop                                                             // 0x0088fdef    90
_jmp_addr_0x0088fdf0:    push             esi                                            // 0x0088fdf0    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x0088fdf1    8b742408
                         push             0x00002001                                     // 0x0088fdf5    6801200000
                         {disp8} mov      dword ptr [esi + 0x04], 0x00000000             // 0x0088fdfa    c7460400000000
                         {disp8} mov      dword ptr [esi + 0x08], 0x00002000             // 0x0088fe01    c7460800200000
                         call             _malloc                                        // 0x0088fe08    e83f68f3ff
                         add              esp, 0x04                                      // 0x0088fe0d    83c404
                         mov              dword ptr [esi], eax                           // 0x0088fe10    8906
                         test             eax, eax                                       // 0x0088fe12    85c0
                         pop              esi                                            // 0x0088fe14    5e
                         {disp8} jne      _jmp_addr_0x0088fe18                           // 0x0088fe15    7501
                         ret                                                             // 0x0088fe17    c3
_jmp_addr_0x0088fe18:    mov              byte ptr [eax], 0x00                           // 0x0088fe18    c60000
                         mov              eax, 0x00000001                                // 0x0088fe1b    b801000000
                         ret                                                             // 0x0088fe20    c3
                         nop                                                             // 0x0088fe21    90
                         nop                                                             // 0x0088fe22    90
                         nop                                                             // 0x0088fe23    90
                         nop                                                             // 0x0088fe24    90
                         nop                                                             // 0x0088fe25    90
                         nop                                                             // 0x0088fe26    90
                         nop                                                             // 0x0088fe27    90
                         nop                                                             // 0x0088fe28    90
                         nop                                                             // 0x0088fe29    90
                         nop                                                             // 0x0088fe2a    90
                         nop                                                             // 0x0088fe2b    90
                         nop                                                             // 0x0088fe2c    90
                         nop                                                             // 0x0088fe2d    90
                         nop                                                             // 0x0088fe2e    90
                         nop                                                             // 0x0088fe2f    90
_jmp_addr_0x0088fe30:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x0088fe30    8b442404
                         mov              ecx, dword ptr [eax]                           // 0x0088fe34    8b08
                         push             ecx                                            // 0x0088fe36    51
                         call             _free                                          // 0x0088fe37    e84a69f3ff
                         pop              ecx                                            // 0x0088fe3c    59
                         ret                                                             // 0x0088fe3d    c3
                         nop                                                             // 0x0088fe3e    90
                         nop                                                             // 0x0088fe3f    90
_jmp_addr_0x0088fe40:    sub              esp, 0x10                                      // 0x0088fe40    83ec10
                         push             esi                                            // 0x0088fe43    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x0088fe44    8b742418
                         push             edi                                            // 0x0088fe48    57
                         {disp8} mov      edi, dword ptr [esp + 0x20]                    // 0x0088fe49    8b7c2420
                         push             0x000000ff                                     // 0x0088fe4d    68ff000000
                         {disp8} lea      eax, dword ptr [esi + 0x08]                    // 0x0088fe52    8d4608
                         push             edi                                            // 0x0088fe55    57
                         push             eax                                            // 0x0088fe56    50
                         call             _strncpy                                       // 0x0088fe57    e84492f3ff
                         add              esp, 0x0c                                      // 0x0088fe5c    83c40c
                         push             edi                                            // 0x0088fe5f    57
                         call             _jmp_WSOCK32_DLL__Ordinal_10                   // 0x0088fe60    e819520100
                         cmp              eax, -0x01                                     // 0x0088fe65    83f8ff
                         {disp8} jne      _jmp_addr_0x0088fe81                           // 0x0088fe68    7517
                         push             edi                                            // 0x0088fe6a    57
                         call             _jmp_WSOCK32_DLL__Ordinal_52                   // 0x0088fe6b    e85c520100
                         test             eax, eax                                       // 0x0088fe70    85c0
                         {disp8} jne      _jmp_addr_0x0088fe7a                           // 0x0088fe72    7506
                         pop              edi                                            // 0x0088fe74    5f
                         pop              esi                                            // 0x0088fe75    5e
                         add              esp, 0x10                                      // 0x0088fe76    83c410
                         ret                                                             // 0x0088fe79    c3
_jmp_addr_0x0088fe7a:    {disp8} mov      ecx, dword ptr [eax + 0x0c]                    // 0x0088fe7a    8b480c
                         mov              edx, dword ptr [ecx]                           // 0x0088fe7d    8b11
                         mov              eax, dword ptr [edx]                           // 0x0088fe7f    8b02
_jmp_addr_0x0088fe81:    {disp8} mov      edx, dword ptr [esp + 0x24]                    // 0x0088fe81    8b542424
                         xor.s            ecx, ecx                                       // 0x0088fe85    33c9
                         {disp8} mov      dword ptr [esp + 0x08], ecx                    // 0x0088fe87    894c2408
                         push             edx                                            // 0x0088fe8b    52
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x0088fe8c    894c2410
                         {disp8} mov      word ptr [esp + 0x0c], 0x0002                  // 0x0088fe90    66c744240c0200
                         {disp8} mov      dword ptr [esp + 0x14], ecx                    // 0x0088fe97    894c2414
                         {disp8} mov      dword ptr [esp + 0x10], eax                    // 0x0088fe9b    89442410
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x0088fe9f    894c2418
                         call             _jmp_WSOCK32_DLL__Ordinal_9                    // 0x0088fea3    e82a520100
                         mov              edi, 0x00000001                                // 0x0088fea8    bf01000000
                         push             0x0                                            // 0x0088fead    6a00
                         push             edi                                            // 0x0088feaf    57
                         push             0x2                                            // 0x0088feb0    6a02
                         {disp8} mov      word ptr [esp + 0x16], ax                      // 0x0088feb2    6689442416
                         call             _jmp_WSOCK32_DLL__Ordinal_23                   // 0x0088feb7    e8f8510100
                         cmp              eax, -0x01                                     // 0x0088febc    83f8ff
                         mov              dword ptr [esi], eax                           // 0x0088febf    8906
                         {disp8} jne      _jmp_addr_0x0088fecb                           // 0x0088fec1    7508
                         pop              edi                                            // 0x0088fec3    5f
                         xor.s            eax, eax                                       // 0x0088fec4    33c0
                         pop              esi                                            // 0x0088fec6    5e
                         add              esp, 0x10                                      // 0x0088fec7    83c410
                         ret                                                             // 0x0088feca    c3
_jmp_addr_0x0088fecb:    {disp8} lea      ecx, dword ptr [esp + 0x20]                    // 0x0088fecb    8d4c2420
                         push             0x4                                            // 0x0088fecf    6a04
                         push             ecx                                            // 0x0088fed1    51
                         push             0x8                                            // 0x0088fed2    6a08
                         push             0x0000ffff                                     // 0x0088fed4    68ffff0000
                         push             eax                                            // 0x0088fed9    50
                         {disp8} mov      dword ptr [esp + 0x34], edi                    // 0x0088feda    897c2434
                         call             _jmp_WSOCK32_DLL__Ordinal_21                   // 0x0088fede    e8b3510100
                         mov              eax, dword ptr [esi]                           // 0x0088fee3    8b06
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x0088fee5    8d542408
                         push             0x10                                           // 0x0088fee9    6a10
                         push             edx                                            // 0x0088feeb    52
                         push             eax                                            // 0x0088feec    50
                         call             _jmp_WSOCK32_DLL__Ordinal_4                    // 0x0088feed    e8ec510100
                         cmp              eax, -0x01                                     // 0x0088fef2    83f8ff
                         {disp8} jne      _jmp_addr_0x0088ff07                           // 0x0088fef5    7510
                         mov              ecx, dword ptr [esi]                           // 0x0088fef7    8b0e
                         push             ecx                                            // 0x0088fef9    51
                         call             _jmp_WSOCK32_DLL__Ordinal_3                    // 0x0088fefa    e8c7510100
                         pop              edi                                            // 0x0088feff    5f
                         xor.s            eax, eax                                       // 0x0088ff00    33c0
                         pop              esi                                            // 0x0088ff02    5e
                         add              esp, 0x10                                      // 0x0088ff03    83c410
                         ret                                                             // 0x0088ff06    c3
_jmp_addr_0x0088ff07:    {disp8} mov      dword ptr [esi + 0x04], edi                    // 0x0088ff07    897e04
                         mov.s            eax, edi                                       // 0x0088ff0a    8bc7
                         pop              edi                                            // 0x0088ff0c    5f
                         pop              esi                                            // 0x0088ff0d    5e
                         add              esp, 0x10                                      // 0x0088ff0e    83c410
                         ret                                                             // 0x0088ff11    c3
                         nop                                                             // 0x0088ff12    90
                         nop                                                             // 0x0088ff13    90
                         nop                                                             // 0x0088ff14    90
                         nop                                                             // 0x0088ff15    90
                         nop                                                             // 0x0088ff16    90
                         nop                                                             // 0x0088ff17    90
                         nop                                                             // 0x0088ff18    90
                         nop                                                             // 0x0088ff19    90
                         nop                                                             // 0x0088ff1a    90
                         nop                                                             // 0x0088ff1b    90
                         nop                                                             // 0x0088ff1c    90
                         nop                                                             // 0x0088ff1d    90
                         nop                                                             // 0x0088ff1e    90
                         nop                                                             // 0x0088ff1f    90
_jmp_addr_0x0088ff20:    push             esi                                            // 0x0088ff20    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x0088ff21    8b742408
                         push             edi                                            // 0x0088ff25    57
                         mov              eax, dword ptr [esi]                           // 0x0088ff26    8b06
                         cmp              eax, -0x01                                     // 0x0088ff28    83f8ff
                         {disp8} je       _jmp_addr_0x0088ff3d                           // 0x0088ff2b    7410
                         push             0x2                                            // 0x0088ff2d    6a02
                         push             eax                                            // 0x0088ff2f    50
                         call             _jmp_WSOCK32_DLL__Ordinal_22                   // 0x0088ff30    e8af510100
                         mov              eax, dword ptr [esi]                           // 0x0088ff35    8b06
                         push             eax                                            // 0x0088ff37    50
                         call             _jmp_WSOCK32_DLL__Ordinal_3                    // 0x0088ff38    e889510100
_jmp_addr_0x0088ff3d:    {disp32} lea     ecx, dword ptr [esi + 0x00000108]              // 0x0088ff3d    8d8e08010000
                         {disp8} mov      dword ptr [esi + 0x04], 0x00000002             // 0x0088ff43    c7460402000000
                         push             ecx                                            // 0x0088ff4a    51
                         call             _jmp_addr_0x0088fe30                           // 0x0088ff4b    e8e0feffff
                         {disp32} lea     edx, dword ptr [esi + 0x00000114]              // 0x0088ff50    8d9614010000
                         push             edx                                            // 0x0088ff56    52
                         call             _jmp_addr_0x0088fe30                           // 0x0088ff57    e8d4feffff
                         {disp32} mov     eax, dword ptr [esi + 0x00000120]              // 0x0088ff5c    8b8620010000
                         push             eax                                            // 0x0088ff62    50
                         call             _free                                          // 0x0088ff63    e81e68f3ff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000124]              // 0x0088ff68    8b8e24010000
                         push             ecx                                            // 0x0088ff6e    51
                         call             _free                                          // 0x0088ff6f    e81268f3ff
                         {disp32} mov     edx, dword ptr [esi + 0x00000128]              // 0x0088ff74    8b9628010000
                         push             edx                                            // 0x0088ff7a    52
                         call             _free                                          // 0x0088ff7b    e80668f3ff
                         {disp32} mov     eax, dword ptr [esi + 0x0000012c]              // 0x0088ff80    8b862c010000
                         push             eax                                            // 0x0088ff86    50
                         call             _free                                          // 0x0088ff87    e8fa67f3ff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000130]              // 0x0088ff8c    8b8e30010000
                         push             ecx                                            // 0x0088ff92    51
                         call             _free                                          // 0x0088ff93    e8ee67f3ff
                         {disp32} mov     edx, dword ptr [esi + 0x00000134]              // 0x0088ff98    8b9634010000
                         push             edx                                            // 0x0088ff9e    52
                         call             _free                                          // 0x0088ff9f    e8e267f3ff
                         {disp32} mov     eax, dword ptr [esi + 0x00000138]              // 0x0088ffa4    8b8638010000
                         push             eax                                            // 0x0088ffaa    50
                         call             _free                                          // 0x0088ffab    e8d667f3ff
                         {disp32} mov     ecx, dword ptr [esi + 0x0000013c]              // 0x0088ffb0    8b8e3c010000
                         push             ecx                                            // 0x0088ffb6    51
                         call             _free                                          // 0x0088ffb7    e8ca67f3ff
                         {disp32} mov     eax, dword ptr [esi + 0x00000144]              // 0x0088ffbc    8b8644010000
                         add              esp, 0x28                                      // 0x0088ffc2    83c428
                         xor.s            edi, edi                                       // 0x0088ffc5    33ff
                         test             eax, eax                                       // 0x0088ffc7    85c0
                         {disp8} jle      _jmp_addr_0x0088ffe8                           // 0x0088ffc9    7e1d
_jmp_addr_0x0088ffcb:    {disp32} mov     edx, dword ptr [esi + 0x00000140]              // 0x0088ffcb    8b9640010000
                         mov              eax, dword ptr [edx + edi * 0x4]               // 0x0088ffd1    8b04ba
                         push             eax                                            // 0x0088ffd4    50
                         call             _free                                          // 0x0088ffd5    e8ac67f3ff
                         {disp32} mov     eax, dword ptr [esi + 0x00000144]              // 0x0088ffda    8b8644010000
                         add              esp, 0x04                                      // 0x0088ffe0    83c404
                         inc              edi                                            // 0x0088ffe3    47
                         cmp.s            edi, eax                                       // 0x0088ffe4    3bf8
                         {disp8} jl       _jmp_addr_0x0088ffcb                           // 0x0088ffe6    7ce3
_jmp_addr_0x0088ffe8:    {disp32} mov     ecx, dword ptr [esi + 0x00000140]              // 0x0088ffe8    8b8e40010000
                         push             ecx                                            // 0x0088ffee    51
                         call             _free                                          // 0x0088ffef    e89267f3ff
                         add              esp, 0x04                                      // 0x0088fff4    83c404
                         pop              edi                                            // 0x0088fff7    5f
                         pop              esi                                            // 0x0088fff8    5e
                         ret                                                             // 0x0088fff9    c3
                         nop                                                             // 0x0088fffa    90
                         nop                                                             // 0x0088fffb    90
                         nop                                                             // 0x0088fffc    90
                         nop                                                             // 0x0088fffd    90
                         nop                                                             // 0x0088fffe    90
                         nop                                                             // 0x0088ffff    90
_jmp_addr_0x00890000:    push             esi                                            // 0x00890000    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x00890001    8b742408
                         cmp              dword ptr [esi + 0x04], 0x02                   // 0x00890005    837e0402
                         {disp8} je       _jmp_addr_0x0089001a                           // 0x00890009    740f
                         push             esi                                            // 0x0089000b    56
                         call             _jmp_addr_0x00890020                           // 0x0089000c    e80f000000
                         push             esi                                            // 0x00890011    56
                         call             _jmp_addr_0x00890230                           // 0x00890012    e819020000
                         add              esp, 0x08                                      // 0x00890017    83c408
_jmp_addr_0x0089001a:    pop              esi                                            // 0x0089001a    5e
                         ret                                                             // 0x0089001b    c3
                         nop                                                             // 0x0089001c    90
                         nop                                                             // 0x0089001d    90
                         nop                                                             // 0x0089001e    90
                         nop                                                             // 0x0089001f    90
_jmp_addr_0x00890020:    push             esi                                            // 0x00890020    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x00890021    8b742408
                         push             edi                                            // 0x00890025    57
                         {disp32} mov     eax, dword ptr [esi + 0x00000118]              // 0x00890026    8b8618010000
                         test             eax, eax                                       // 0x0089002c    85c0
                         {disp8} jle      _jmp_addr_0x00890093                           // 0x0089002e    7e63
_jmp_addr_0x00890030:    mov              ecx, dword ptr [esi]                           // 0x00890030    8b0e
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                    // 0x00890032    8d44240c
                         push             0x0                                            // 0x00890036    6a00
                         push             eax                                            // 0x00890038    50
                         push             0x0                                            // 0x00890039    6a00
                         push             ecx                                            // 0x0089003b    51
                         call             _jmp_addr_0x008900d0                           // 0x0089003c    e88f000000
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x00890041    8b44241c
                         add              esp, 0x10                                      // 0x00890045    83c410
                         test             eax, eax                                       // 0x00890048    85c0
                         {disp8} je       _jmp_addr_0x00890093                           // 0x0089004a    7447
                         {disp32} mov     eax, dword ptr [esi + 0x00000118]              // 0x0089004c    8b8618010000
                         cmp              eax, 0x00000400                                // 0x00890052    3d00040000
                         {disp8} jl       _jmp_addr_0x0089005e                           // 0x00890057    7c05
                         mov              eax, 0x00000400                                // 0x00890059    b800040000
_jmp_addr_0x0089005e:    {disp32} mov     edx, dword ptr [esi + 0x00000114]              // 0x0089005e    8b9614010000
                         {disp32} lea     edi, dword ptr [esi + 0x00000114]              // 0x00890064    8dbe14010000
                         push             0x0                                            // 0x0089006a    6a00
                         push             eax                                            // 0x0089006c    50
                         mov              eax, dword ptr [esi]                           // 0x0089006d    8b06
                         push             edx                                            // 0x0089006f    52
                         push             eax                                            // 0x00890070    50
                         call             _jmp_WSOCK32_DLL__Ordinal_19                   // 0x00890071    e874500100
                         test             eax, eax                                       // 0x00890076    85c0
                         {disp8} je       _jmp_addr_0x00890093                           // 0x00890078    7419
                         cmp              eax, -0x01                                     // 0x0089007a    83f8ff
                         {disp8} je       _jmp_addr_0x00890093                           // 0x0089007d    7414
                         push             eax                                            // 0x0089007f    50
                         push             edi                                            // 0x00890080    57
                         call             _jmp_addr_0x008900a0                           // 0x00890081    e81a000000
                         {disp32} mov     eax, dword ptr [esi + 0x00000118]              // 0x00890086    8b8618010000
                         add              esp, 0x08                                      // 0x0089008c    83c408
                         test             eax, eax                                       // 0x0089008f    85c0
                         {disp8} jg       _jmp_addr_0x00890030                           // 0x00890091    7f9d
_jmp_addr_0x00890093:    pop              edi                                            // 0x00890093    5f
                         pop              esi                                            // 0x00890094    5e
                         ret                                                             // 0x00890095    c3
                         nop                                                             // 0x00890096    90
                         nop                                                             // 0x00890097    90
                         nop                                                             // 0x00890098    90
                         nop                                                             // 0x00890099    90
                         nop                                                             // 0x0089009a    90
                         nop                                                             // 0x0089009b    90
                         nop                                                             // 0x0089009c    90
                         nop                                                             // 0x0089009d    90
                         nop                                                             // 0x0089009e    90
                         nop                                                             // 0x0089009f    90
_jmp_addr_0x008900a0:    {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x008900a0    8b4c2408
                         push             esi                                            // 0x008900a4    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x008900a5    8b742408
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x008900a9    8b4604
                         sub.s            eax, ecx                                       // 0x008900ac    2bc1
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x008900ae    894604
                         mov.s            edx, eax                                       // 0x008900b1    8bd0
                         mov              eax, dword ptr [esi]                           // 0x008900b3    8b06
                         push             edx                                            // 0x008900b5    52
                         add.s            ecx, eax                                       // 0x008900b6    03c8
                         push             ecx                                            // 0x008900b8    51
                         push             eax                                            // 0x008900b9    50
                         call             _memmove                                       // 0x008900ba    e83160f3ff
                         mov              edx, dword ptr [esi]                           // 0x008900bf    8b16
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x008900c1    8b4604
                         add              esp, 0x0c                                      // 0x008900c4    83c40c
                         mov              byte ptr [edx + eax * 0x1], 0x00               // 0x008900c7    c6040200
                         pop              esi                                            // 0x008900cb    5e
                         ret                                                             // 0x008900cc    c3
                         nop                                                             // 0x008900cd    90
                         nop                                                             // 0x008900ce    90
                         nop                                                             // 0x008900cf    90
_jmp_addr_0x008900d0:    {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x008900d0    8b442408
                         sub              esp, 0x00000314                                // 0x008900d4    81ec14030000
                         xor.s            edx, edx                                       // 0x008900da    33d2
                         push             ebx                                            // 0x008900dc    53
                         push             ebp                                            // 0x008900dd    55
                         push             esi                                            // 0x008900de    56
                         cmp.s            eax, edx                                       // 0x008900df    3bc2
                         push             edi                                            // 0x008900e1    57
                         {disp8} je       _jmp_addr_0x008900fe                           // 0x008900e2    741a
                         {disp32} mov     eax, dword ptr [esp + 0x00000328]              // 0x008900e4    8b842428030000
                         mov              ecx, 0x00000001                                // 0x008900eb    b901000000
                         {disp8} mov      dword ptr [esp + 0x1c], eax                    // 0x008900f0    8944241c
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x008900f4    894c2418
                         {disp8} lea      edi, dword ptr [esp + 0x18]                    // 0x008900f8    8d7c2418
                         {disp8} jmp      _jmp_addr_0x0089010c                           // 0x008900fc    eb0e
_jmp_addr_0x008900fe:    {disp32} mov     eax, dword ptr [esp + 0x00000328]              // 0x008900fe    8b842428030000
                         xor.s            edi, edi                                       // 0x00890105    33ff
                         mov              ecx, 0x00000001                                // 0x00890107    b901000000
_jmp_addr_0x0089010c:    cmp              dword ptr [esp + 0x00000330], edx              // 0x0089010c    39942430030000
                         {disp8} je       _jmp_addr_0x0089012c                           // 0x00890113    7417
                         {disp32} mov     dword ptr [esp + 0x00000120], eax              // 0x00890115    89842420010000
                         {disp32} mov     dword ptr [esp + 0x0000011c], ecx              // 0x0089011c    898c241c010000
                         {disp32} lea     ebx, dword ptr [esp + 0x0000011c]              // 0x00890123    8d9c241c010000
                         {disp8} jmp      _jmp_addr_0x0089012e                           // 0x0089012a    eb02
_jmp_addr_0x0089012c:    xor.s            ebx, ebx                                       // 0x0089012c    33db
_jmp_addr_0x0089012e:    cmp              dword ptr [esp + 0x00000334], edx              // 0x0089012e    39942434030000
                         {disp8} je       _jmp_addr_0x0089014e                           // 0x00890135    7417
                         {disp32} mov     dword ptr [esp + 0x00000224], eax              // 0x00890137    89842424020000
                         {disp32} mov     dword ptr [esp + 0x00000220], ecx              // 0x0089013e    898c2420020000
                         {disp32} lea     ebp, dword ptr [esp + 0x00000220]              // 0x00890145    8dac2420020000
                         {disp8} jmp      _jmp_addr_0x00890150                           // 0x0089014c    eb02
_jmp_addr_0x0089014e:    xor.s            ebp, ebp                                       // 0x0089014e    33ed
_jmp_addr_0x00890150:    {disp8} lea      eax, dword ptr [esp + 0x10]                    // 0x00890150    8d442410
                         {disp8} mov      dword ptr [esp + 0x10], edx                    // 0x00890154    89542410
                         push             eax                                            // 0x00890158    50
                         push             ebp                                            // 0x00890159    55
                         push             ebx                                            // 0x0089015a    53
                         push             edi                                            // 0x0089015b    57
                         push             0x40                                           // 0x0089015c    6a40
                         {disp8} mov      dword ptr [esp + 0x28], edx                    // 0x0089015e    89542428
                         call             _jmp_WSOCK32_DLL__Ordinal_18                   // 0x00890162    e8594f0100
                         mov.s            esi, eax                                       // 0x00890167    8bf0
                         cmp              esi, -0x01                                     // 0x00890169    83feff
                         {disp32} je      _jmp_addr_0x00890216                           // 0x0089016c    0f84a4000000
                         {disp32} mov     eax, dword ptr [esp + 0x0000032c]              // 0x00890172    8b84242c030000
                         test             eax, eax                                       // 0x00890179    85c0
                         {disp8} je       _jmp_addr_0x008901af                           // 0x0089017b    7432
                         test             esi, esi                                       // 0x0089017d    85f6
                         {disp8} jle      _jmp_addr_0x008901a2                           // 0x0089017f    7e21
                         {disp32} mov     ecx, dword ptr [esp + 0x00000328]              // 0x00890181    8b8c2428030000
                         push             edi                                            // 0x00890188    57
                         push             ecx                                            // 0x00890189    51
                         call             _jmp_WSOCK32_DLL__Ordinal_151                  // 0x0089018a    e8614f0100
                         test             eax, eax                                       // 0x0089018f    85c0
                         {disp8} je       _jmp_addr_0x008901a2                           // 0x00890191    740f
                         {disp32} mov     edx, dword ptr [esp + 0x0000032c]              // 0x00890193    8b94242c030000
                         mov              dword ptr [edx], 0x00000001                    // 0x0089019a    c70201000000
                         {disp8} jmp      _jmp_addr_0x008901af                           // 0x008901a0    eb0d
_jmp_addr_0x008901a2:    {disp32} mov     eax, dword ptr [esp + 0x0000032c]              // 0x008901a2    8b84242c030000
                         mov              dword ptr [eax], 0x00000000                    // 0x008901a9    c70000000000
_jmp_addr_0x008901af:    {disp32} mov     edi, dword ptr [esp + 0x00000330]              // 0x008901af    8bbc2430030000
                         test             edi, edi                                       // 0x008901b6    85ff
                         {disp8} je       _jmp_addr_0x008901de                           // 0x008901b8    7424
                         test             esi, esi                                       // 0x008901ba    85f6
                         {disp8} jle      _jmp_addr_0x008901d8                           // 0x008901bc    7e1a
                         {disp32} mov     ecx, dword ptr [esp + 0x00000328]              // 0x008901be    8b8c2428030000
                         push             ebx                                            // 0x008901c5    53
                         push             ecx                                            // 0x008901c6    51
                         call             _jmp_WSOCK32_DLL__Ordinal_151                  // 0x008901c7    e8244f0100
                         test             eax, eax                                       // 0x008901cc    85c0
                         {disp8} je       _jmp_addr_0x008901d8                           // 0x008901ce    7408
                         mov              dword ptr [edi], 0x00000001                    // 0x008901d0    c70701000000
                         {disp8} jmp      _jmp_addr_0x008901de                           // 0x008901d6    eb06
_jmp_addr_0x008901d8:    mov              dword ptr [edi], 0x00000000                    // 0x008901d8    c70700000000
_jmp_addr_0x008901de:    {disp32} mov     edi, dword ptr [esp + 0x00000334]              // 0x008901de    8bbc2434030000
                         test             edi, edi                                       // 0x008901e5    85ff
                         {disp8} je       _jmp_addr_0x00890216                           // 0x008901e7    742d
                         test             esi, esi                                       // 0x008901e9    85f6
                         {disp8} jle      _jmp_addr_0x00890210                           // 0x008901eb    7e23
                         {disp32} mov     edx, dword ptr [esp + 0x00000328]              // 0x008901ed    8b942428030000
                         push             ebp                                            // 0x008901f4    55
                         push             edx                                            // 0x008901f5    52
                         call             _jmp_WSOCK32_DLL__Ordinal_151                  // 0x008901f6    e8f54e0100
                         test             eax, eax                                       // 0x008901fb    85c0
                         {disp8} je       _jmp_addr_0x00890210                           // 0x008901fd    7411
                         mov              dword ptr [edi], 0x00000001                    // 0x008901ff    c70701000000
                         pop              edi                                            // 0x00890205    5f
                         pop              esi                                            // 0x00890206    5e
                         pop              ebp                                            // 0x00890207    5d
                         pop              ebx                                            // 0x00890208    5b
                         add              esp, 0x00000314                                // 0x00890209    81c414030000
                         ret                                                             // 0x0089020f    c3
_jmp_addr_0x00890210:    mov              dword ptr [edi], 0x00000000                    // 0x00890210    c70700000000
_jmp_addr_0x00890216:    pop              edi                                            // 0x00890216    5f
                         pop              esi                                            // 0x00890217    5e
                         pop              ebp                                            // 0x00890218    5d
                         pop              ebx                                            // 0x00890219    5b
                         add              esp, 0x00000314                                // 0x0089021a    81c414030000
                         ret                                                             // 0x00890220    c3
                         nop                                                             // 0x00890221    90
                         nop                                                             // 0x00890222    90
                         nop                                                             // 0x00890223    90
                         nop                                                             // 0x00890224    90
                         nop                                                             // 0x00890225    90
                         nop                                                             // 0x00890226    90
                         nop                                                             // 0x00890227    90
                         nop                                                             // 0x00890228    90
                         nop                                                             // 0x00890229    90
                         nop                                                             // 0x0089022a    90
                         nop                                                             // 0x0089022b    90
                         nop                                                             // 0x0089022c    90
                         nop                                                             // 0x0089022d    90
                         nop                                                             // 0x0089022e    90
                         nop                                                             // 0x0089022f    90
_jmp_addr_0x00890230:    push             esi                                            // 0x00890230    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x00890231    8b742408
                         push             edi                                            // 0x00890235    57
_jmp_addr_0x00890236:    mov              ecx, dword ptr [esi]                           // 0x00890236    8b0e
                         push             0x0                                            // 0x00890238    6a00
                         {disp8} lea      eax, dword ptr [esp + 0x10]                    // 0x0089023a    8d442410
                         push             0x0                                            // 0x0089023e    6a00
                         push             eax                                            // 0x00890240    50
                         push             ecx                                            // 0x00890241    51
                         call             _jmp_addr_0x008900d0                           // 0x00890242    e889feffff
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x00890247    8b44241c
                         add              esp, 0x10                                      // 0x0089024b    83c410
                         test             eax, eax                                       // 0x0089024e    85c0
                         {disp8} je       _jmp_addr_0x008902ac                           // 0x00890250    745a
                         {disp32} lea     edi, dword ptr [esi + 0x00000108]              // 0x00890252    8dbe08010000
                         push             0x00001000                                     // 0x00890258    6800100000
                         push             edi                                            // 0x0089025d    57
                         call             _jmp_addr_0x008902b0                           // 0x0089025e    e84d000000
                         add              esp, 0x08                                      // 0x00890263    83c408
                         test             eax, eax                                       // 0x00890266    85c0
                         {disp8} je       _jmp_addr_0x008902ac                           // 0x00890268    7442
                         mov              edx, dword ptr [edi]                           // 0x0089026a    8b17
                         {disp32} mov     ecx, dword ptr [esi + 0x0000010c]              // 0x0089026c    8b8e0c010000
                         mov              eax, dword ptr [esi]                           // 0x00890272    8b06
                         push             0x0                                            // 0x00890274    6a00
                         add.s            edx, ecx                                       // 0x00890276    03d1
                         push             0x00001000                                     // 0x00890278    6800100000
                         push             edx                                            // 0x0089027d    52
                         push             eax                                            // 0x0089027e    50
                         call             _jmp_WSOCK32_DLL__Ordinal_16                   // 0x0089027f    e8784e0100
                         test             eax, eax                                       // 0x00890284    85c0
                         {disp8} jle      _jmp_addr_0x008902a0                           // 0x00890286    7e18
                         {disp32} mov     ecx, dword ptr [esi + 0x0000010c]              // 0x00890288    8b8e0c010000
                         add.s            ecx, eax                                       // 0x0089028e    03c8
                         {disp32} mov     dword ptr [esi + 0x0000010c], ecx              // 0x00890290    898e0c010000
                         mov.s            eax, ecx                                       // 0x00890296    8bc1
                         mov              ecx, dword ptr [edi]                           // 0x00890298    8b0f
                         mov              byte ptr [ecx + eax * 0x1], 0x00               // 0x0089029a    c6040100
                         {disp8} jmp      _jmp_addr_0x00890236                           // 0x0089029e    eb96
_jmp_addr_0x008902a0:    call             _jmp_WSOCK32_DLL__Ordinal_111                  // 0x008902a0    e8514e0100
                         {disp8} mov      dword ptr [esi + 0x04], 0x00000002             // 0x008902a5    c7460402000000
_jmp_addr_0x008902ac:    pop              edi                                            // 0x008902ac    5f
                         pop              esi                                            // 0x008902ad    5e
                         ret                                                             // 0x008902ae    c3
                         nop                                                             // 0x008902af    90
_jmp_addr_0x008902b0:    {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x008902b0    8b4c2408
                         push             esi                                            // 0x008902b4    56
                         push             edi                                            // 0x008902b5    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                    // 0x008902b6    8b7c240c
                         {disp8} mov      esi, dword ptr [edi + 0x04]                    // 0x008902ba    8b7704
                         {disp8} mov      eax, dword ptr [edi + 0x08]                    // 0x008902bd    8b4708
                         add.s            esi, ecx                                       // 0x008902c0    03f1
                         cmp.s            esi, eax                                       // 0x008902c2    3bf0
                         {disp8} jle      _jmp_addr_0x008902f9                           // 0x008902c4    7e33
                         add              esi, 0x00002000                                // 0x008902c6    81c600200000
                         mov.s            eax, esi                                       // 0x008902cc    8bc6
                         and              eax, 0x80001fff                                // 0x008902ce    25ff1f0080
                         {disp8} jns      _jmp_addr_0x008902dc                           // 0x008902d3    7907
                         dec              eax                                            // 0x008902d5    48
                         or               eax, 0xffffe000                                // 0x008902d6    0d00e0ffff
                         inc              eax                                            // 0x008902db    40
_jmp_addr_0x008902dc:    mov              edx, dword ptr [edi]                           // 0x008902dc    8b17
                         sub.s            esi, eax                                       // 0x008902de    2bf0
                         {disp8} lea      ecx, dword ptr [esi + 0x01]                    // 0x008902e0    8d4e01
                         push             ecx                                            // 0x008902e3    51
                         push             edx                                            // 0x008902e4    52
                         call             _realloc                                       // 0x008902e5    e8b595f3ff
                         add              esp, 0x08                                      // 0x008902ea    83c408
                         test             eax, eax                                       // 0x008902ed    85c0
                         {disp8} jne      _jmp_addr_0x008902f4                           // 0x008902ef    7503
                         pop              edi                                            // 0x008902f1    5f
                         pop              esi                                            // 0x008902f2    5e
                         ret                                                             // 0x008902f3    c3
_jmp_addr_0x008902f4:    mov              dword ptr [edi], eax                           // 0x008902f4    8907
                         {disp8} mov      dword ptr [edi + 0x08], esi                    // 0x008902f6    897708
_jmp_addr_0x008902f9:    pop              edi                                            // 0x008902f9    5f
                         mov              eax, 0x00000001                                // 0x008902fa    b801000000
                         pop              esi                                            // 0x008902ff    5e
                         ret                                                             // 0x00890300    c3
                         nop                                                             // 0x00890301    90
                         nop                                                             // 0x00890302    90
                         nop                                                             // 0x00890303    90
                         nop                                                             // 0x00890304    90
                         nop                                                             // 0x00890305    90
                         nop                                                             // 0x00890306    90
                         nop                                                             // 0x00890307    90
                         nop                                                             // 0x00890308    90
                         nop                                                             // 0x00890309    90
                         nop                                                             // 0x0089030a    90
                         nop                                                             // 0x0089030b    90
                         nop                                                             // 0x0089030c    90
                         nop                                                             // 0x0089030d    90
                         nop                                                             // 0x0089030e    90
                         nop                                                             // 0x0089030f    90
_jmp_addr_0x00890310:    push             ebx                                            // 0x00890310    53
                         {disp8} mov      ebx, dword ptr [esp + 0x08]                    // 0x00890311    8b5c2408
                         push             ebp                                            // 0x00890315    55
                         push             esi                                            // 0x00890316    56
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x00890317    8b4304
                         push             edi                                            // 0x0089031a    57
                         cmp              eax, 0x02                                      // 0x0089031b    83f802
                         {disp32} je      _jmp_addr_0x008903af                           // 0x0089031e    0f848b000000
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x00890324    8b742418
                         or               ecx, 0xffffffff                                // 0x00890328    83c9ff
                         mov.s            edi, esi                                       // 0x0089032b    8bfe
                         xor.s            eax, eax                                       // 0x0089032d    33c0
                         repne scasb                                                     // 0x0089032f    f2ae
                         not              ecx                                            // 0x00890331    f7d1
                         dec              ecx                                            // 0x00890333    49
                         {disp32} lea     ebp, dword ptr [ebx + 0x00000114]              // 0x00890334    8dab14010000
                         mov.s            edi, ecx                                       // 0x0089033a    8bf9
                         {disp8} mov      dword ptr [esp + 0x14], edi                    // 0x0089033c    897c2414
                         {disp8} lea      eax, dword ptr [edi + 0x02]                    // 0x00890340    8d4702
                         push             eax                                            // 0x00890343    50
                         push             ebp                                            // 0x00890344    55
                         call             _jmp_addr_0x008902b0                           // 0x00890345    e866ffffff
                         add              esp, 0x08                                      // 0x0089034a    83c408
                         test             eax, eax                                       // 0x0089034d    85c0
                         {disp8} jne      _jmp_addr_0x00890356                           // 0x0089034f    7505
                         pop              edi                                            // 0x00890351    5f
                         pop              esi                                            // 0x00890352    5e
                         pop              ebp                                            // 0x00890353    5d
                         pop              ebx                                            // 0x00890354    5b
                         ret                                                             // 0x00890355    c3
_jmp_addr_0x00890356:    {disp8} mov      edx, dword ptr [ebp + 0x00]                    // 0x00890356    8b5500
                         mov.s            ecx, edi                                       // 0x00890359    8bcf
                         {disp32} mov     edi, dword ptr [ebx + 0x00000118]              // 0x0089035b    8bbb18010000
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x00890361    8b442414
                         add.s            edi, edx                                       // 0x00890365    03fa
                         mov.s            edx, ecx                                       // 0x00890367    8bd1
                         shr              ecx, 2                                         // 0x00890369    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0089036c    f3a5
                         mov.s            ecx, edx                                       // 0x0089036e    8bca
                         and              ecx, 0x03                                      // 0x00890370    83e103
                         rep movsb                                                       // 0x00890373    f3a4
                         {disp32} mov     edx, dword ptr [ebx + 0x00000118]              // 0x00890375    8b9318010000
                         {disp8} mov      ecx, dword ptr [ebp + 0x00]                    // 0x0089037b    8b4d00
                         add.s            edx, eax                                       // 0x0089037e    03d0
                         mov.s            eax, edx                                       // 0x00890380    8bc2
                         {disp32} mov     dword ptr [ebx + 0x00000118], edx              // 0x00890382    899318010000
                         mov              byte ptr [ecx + eax * 0x1], 0x0d               // 0x00890388    c604010d
                         {disp32} mov     ecx, dword ptr [ebx + 0x00000118]              // 0x0089038c    8b8b18010000
                         {disp8} mov      edx, dword ptr [ebp + 0x00]                    // 0x00890392    8b5500
                         inc              ecx                                            // 0x00890395    41
                         mov.s            eax, ecx                                       // 0x00890396    8bc1
                         {disp32} mov     dword ptr [ebx + 0x00000118], ecx              // 0x00890398    898b18010000
                         mov              byte ptr [edx + eax * 0x1], 0x0a               // 0x0089039e    c604020a
                         {disp32} mov     eax, dword ptr [ebx + 0x00000118]              // 0x008903a2    8b8318010000
                         inc              eax                                            // 0x008903a8    40
                         {disp32} mov     dword ptr [ebx + 0x00000118], eax              // 0x008903a9    898318010000
_jmp_addr_0x008903af:    pop              edi                                            // 0x008903af    5f
                         pop              esi                                            // 0x008903b0    5e
                         pop              ebp                                            // 0x008903b1    5d
                         mov              eax, 0x00000001                                // 0x008903b2    b801000000
                         pop              ebx                                            // 0x008903b7    5b
                         ret                                                             // 0x008903b8    c3
                         nop                                                             // 0x008903b9    90
                         nop                                                             // 0x008903ba    90
                         nop                                                             // 0x008903bb    90
                         nop                                                             // 0x008903bc    90
                         nop                                                             // 0x008903bd    90
                         nop                                                             // 0x008903be    90
                         nop                                                             // 0x008903bf    90
_jmp_addr_0x008903c0:    push             esi                                            // 0x008903c0    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x008903c1    8b742408
                         cmp              dword ptr [esi + 0x04], 0x02                   // 0x008903c5    837e0402
                         {disp8} jne      _jmp_addr_0x008903d2                           // 0x008903c9    7507
                         mov              eax, 0x00000001                                // 0x008903cb    b801000000
                         pop              esi                                            // 0x008903d0    5e
                         ret                                                             // 0x008903d1    c3
_jmp_addr_0x008903d2:    {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x008903d2    8b4c240c
                         {disp8} lea      eax, dword ptr [esp + 0x10]                    // 0x008903d6    8d442410
                         push             eax                                            // 0x008903da    50
                         push             ecx                                            // 0x008903db    51
                         push             0x00faae70                                     // 0x008903dc    6870aefa00
                         call             _vsprintf                                      // 0x008903e1    e82d7af3ff
                         add              esp, 0x0c                                      // 0x008903e6    83c40c
                         cmp              eax, -0x01                                     // 0x008903e9    83f8ff
                         {disp8} je       _jmp_addr_0x00890405                           // 0x008903ec    7417
                         push             0x00faae70                                     // 0x008903ee    6870aefa00
                         push             esi                                            // 0x008903f3    56
                         {disp32} mov     byte ptr [eax + 0x00faae70], 0x00              // 0x008903f4    c68070aefa0000
                         call             _jmp_addr_0x00890310                           // 0x008903fb    e810ffffff
                         add              esp, 0x08                                      // 0x00890400    83c408
                         pop              esi                                            // 0x00890403    5e
                         ret                                                             // 0x00890404    c3
_jmp_addr_0x00890405:    push             0x00faae70                                     // 0x00890405    6870aefa00
                         push             esi                                            // 0x0089040a    56
                         {disp32} mov     byte ptr [data_bytes + 0x5e5e70], 0x00         // 0x0089040b    c60570befa0000
                         call             _jmp_addr_0x00890310                           // 0x00890412    e8f9feffff
                         add              esp, 0x08                                      // 0x00890417    83c408
                         pop              esi                                            // 0x0089041a    5e
                         ret                                                             // 0x0089041b    c3
                         nop                                                             // 0x0089041c    90
                         nop                                                             // 0x0089041d    90
                         nop                                                             // 0x0089041e    90
                         nop                                                             // 0x0089041f    90
_jmp_addr_0x00890420:    push             ebx                                            // 0x00890420    53
                         push             esi                                            // 0x00890421    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x00890422    8b74240c
                         push             edi                                            // 0x00890426    57
                         mov.s            edi, esi                                       // 0x00890427    8bfe
                         or               ecx, 0xffffffff                                // 0x00890429    83c9ff
                         xor.s            eax, eax                                       // 0x0089042c    33c0
                         repne scasb                                                     // 0x0089042e    f2ae
                         not              ecx                                            // 0x00890430    f7d1
                         push             ecx                                            // 0x00890432    51
                         call             _malloc                                        // 0x00890433    e81462f3ff
                         mov.s            ebx, eax                                       // 0x00890438    8bd8
                         add              esp, 0x04                                      // 0x0089043a    83c404
                         test             ebx, ebx                                       // 0x0089043d    85db
                         {disp8} jne      _jmp_addr_0x00890445                           // 0x0089043f    7504
                         pop              edi                                            // 0x00890441    5f
                         pop              esi                                            // 0x00890442    5e
                         pop              ebx                                            // 0x00890443    5b
                         ret                                                             // 0x00890444    c3
_jmp_addr_0x00890445:    mov.s            edi, esi                                       // 0x00890445    8bfe
                         or               ecx, 0xffffffff                                // 0x00890447    83c9ff
                         xor.s            eax, eax                                       // 0x0089044a    33c0
                         repne scasb                                                     // 0x0089044c    f2ae
                         not              ecx                                            // 0x0089044e    f7d1
                         sub.s            edi, ecx                                       // 0x00890450    2bf9
                         mov.s            eax, ecx                                       // 0x00890452    8bc1
                         mov.s            esi, edi                                       // 0x00890454    8bf7
                         mov.s            edi, ebx                                       // 0x00890456    8bfb
                         shr              ecx, 2                                         // 0x00890458    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0089045b    f3a5
                         mov.s            ecx, eax                                       // 0x0089045d    8bc8
                         and              ecx, 0x03                                      // 0x0089045f    83e103
                         rep movsb                                                       // 0x00890462    f3a4
                         cmp              byte ptr [ebx], 0x3a                           // 0x00890464    803b3a
                         {disp8} jne      _jmp_addr_0x00890471                           // 0x00890467    7508
                         mov              byte ptr [ebx], 0x00                           // 0x00890469    c60300
                         {disp8} lea      esi, dword ptr [ebx + 0x01]                    // 0x0089046c    8d7301
                         {disp8} jmp      _jmp_addr_0x0089048b                           // 0x0089046f    eb1a
_jmp_addr_0x00890471:    push             0x00c3aa44                                     // 0x00890471    6844aac300
                         push             ebx                                            // 0x00890476    53
                         call             _strstr                                        // 0x00890477    e8e490f3ff
                         mov.s            esi, eax                                       // 0x0089047c    8bf0
                         add              esp, 0x08                                      // 0x0089047e    83c408
                         test             esi, esi                                       // 0x00890481    85f6
                         {disp8} je       _jmp_addr_0x0089048b                           // 0x00890483    7406
                         mov              byte ptr [esi], 0x00                           // 0x00890485    c60600
                         add              esi, 0x02                                      // 0x00890488    83c602
_jmp_addr_0x0089048b:    push             0x009d00cc                                     // 0x0089048b    68cc009d00
                         push             ebx                                            // 0x00890490    53
                         call             _strtok                                        // 0x00890491    e8948ff3ff
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                    // 0x00890496    8b7c241c
                         add              esp, 0x08                                      // 0x0089049a    83c408
                         test             eax, eax                                       // 0x0089049d    85c0
                         {disp8} je       _jmp_addr_0x008904c2                           // 0x0089049f    7421
_jmp_addr_0x008904a1:    push             edi                                            // 0x008904a1    57
                         push             eax                                            // 0x008904a2    50
                         call             _jmp_addr_0x00890500                           // 0x008904a3    e858000000
                         add              esp, 0x08                                      // 0x008904a8    83c408
                         test             eax, eax                                       // 0x008904ab    85c0
                         {disp8} je       _jmp_addr_0x008904d4                           // 0x008904ad    7425
                         push             0x009d00cc                                     // 0x008904af    68cc009d00
                         push             0x0                                            // 0x008904b4    6a00
                         call             _strtok                                        // 0x008904b6    e86f8ff3ff
                         add              esp, 0x08                                      // 0x008904bb    83c408
                         test             eax, eax                                       // 0x008904be    85c0
                         {disp8} jne      _jmp_addr_0x008904a1                           // 0x008904c0    75df
_jmp_addr_0x008904c2:    test             esi, esi                                       // 0x008904c2    85f6
                         {disp8} je       _jmp_addr_0x008904e3                           // 0x008904c4    741d
                         push             edi                                            // 0x008904c6    57
                         push             esi                                            // 0x008904c7    56
                         call             _jmp_addr_0x00890500                           // 0x008904c8    e833000000
                         add              esp, 0x08                                      // 0x008904cd    83c408
                         test             eax, eax                                       // 0x008904d0    85c0
                         {disp8} jne      _jmp_addr_0x008904e3                           // 0x008904d2    750f
_jmp_addr_0x008904d4:    push             ebx                                            // 0x008904d4    53
                         call             _free                                          // 0x008904d5    e8ac62f3ff
                         add              esp, 0x04                                      // 0x008904da    83c404
                         xor.s            eax, eax                                       // 0x008904dd    33c0
                         pop              edi                                            // 0x008904df    5f
                         pop              esi                                            // 0x008904e0    5e
                         pop              ebx                                            // 0x008904e1    5b
                         ret                                                             // 0x008904e2    c3
_jmp_addr_0x008904e3:    push             ebx                                            // 0x008904e3    53
                         call             _free                                          // 0x008904e4    e89d62f3ff
                         add              esp, 0x04                                      // 0x008904e9    83c404
                         mov              eax, 0x00000001                                // 0x008904ec    b801000000
                         pop              edi                                            // 0x008904f1    5f
                         pop              esi                                            // 0x008904f2    5e
                         pop              ebx                                            // 0x008904f3    5b
                         ret                                                             // 0x008904f4    c3
                         nop                                                             // 0x008904f5    90
                         nop                                                             // 0x008904f6    90
                         nop                                                             // 0x008904f7    90
                         nop                                                             // 0x008904f8    90
                         nop                                                             // 0x008904f9    90
                         nop                                                             // 0x008904fa    90
                         nop                                                             // 0x008904fb    90
                         nop                                                             // 0x008904fc    90
                         nop                                                             // 0x008904fd    90
                         nop                                                             // 0x008904fe    90
                         nop                                                             // 0x008904ff    90
_jmp_addr_0x00890500:    push             ebx                                            // 0x00890500    53
                         {disp8} mov      ebx, dword ptr [esp + 0x0c]                    // 0x00890501    8b5c240c
                         push             esi                                            // 0x00890505    56
                         push             edi                                            // 0x00890506    57
                         {disp8} mov      eax, dword ptr [ebx + 0x24]                    // 0x00890507    8b4324
                         {disp8} mov      edx, dword ptr [ebx + 0x20]                    // 0x0089050a    8b5320
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000004]        // 0x0089050d    8d0c8504000000
                         push             ecx                                            // 0x00890514    51
                         push             edx                                            // 0x00890515    52
                         call             _realloc                                       // 0x00890516    e88493f3ff
                         add              esp, 0x08                                      // 0x0089051b    83c408
                         test             eax, eax                                       // 0x0089051e    85c0
                         {disp8} jne      _jmp_addr_0x00890526                           // 0x00890520    7504
                         pop              edi                                            // 0x00890522    5f
                         pop              esi                                            // 0x00890523    5e
                         pop              ebx                                            // 0x00890524    5b
                         ret                                                             // 0x00890525    c3
_jmp_addr_0x00890526:    {disp8} mov      esi, dword ptr [esp + 0x10]                    // 0x00890526    8b742410
                         {disp8} mov      dword ptr [ebx + 0x20], eax                    // 0x0089052a    894320
                         mov.s            edi, esi                                       // 0x0089052d    8bfe
                         or               ecx, 0xffffffff                                // 0x0089052f    83c9ff
                         xor.s            eax, eax                                       // 0x00890532    33c0
                         repne scasb                                                     // 0x00890534    f2ae
                         not              ecx                                            // 0x00890536    f7d1
                         push             ecx                                            // 0x00890538    51
                         call             _malloc                                        // 0x00890539    e80e61f3ff
                         mov.s            edx, eax                                       // 0x0089053e    8bd0
                         add              esp, 0x04                                      // 0x00890540    83c404
                         test             edx, edx                                       // 0x00890543    85d2
                         {disp8} jne      _jmp_addr_0x0089054b                           // 0x00890545    7504
                         pop              edi                                            // 0x00890547    5f
                         pop              esi                                            // 0x00890548    5e
                         pop              ebx                                            // 0x00890549    5b
                         ret                                                             // 0x0089054a    c3
_jmp_addr_0x0089054b:    mov.s            edi, esi                                       // 0x0089054b    8bfe
                         or               ecx, 0xffffffff                                // 0x0089054d    83c9ff
                         xor.s            eax, eax                                       // 0x00890550    33c0
                         repne scasb                                                     // 0x00890552    f2ae
                         not              ecx                                            // 0x00890554    f7d1
                         sub.s            edi, ecx                                       // 0x00890556    2bf9
                         mov.s            eax, ecx                                       // 0x00890558    8bc1
                         mov.s            esi, edi                                       // 0x0089055a    8bf7
                         mov.s            edi, edx                                       // 0x0089055c    8bfa
                         shr              ecx, 2                                         // 0x0089055e    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00890561    f3a5
                         mov.s            ecx, eax                                       // 0x00890563    8bc8
                         and              ecx, 0x03                                      // 0x00890565    83e103
                         rep movsb                                                       // 0x00890568    f3a4
                         {disp8} mov      ecx, dword ptr [ebx + 0x24]                    // 0x0089056a    8b4b24
                         {disp8} mov      eax, dword ptr [ebx + 0x20]                    // 0x0089056d    8b4320
                         pop              edi                                            // 0x00890570    5f
                         pop              esi                                            // 0x00890571    5e
                         mov              dword ptr [eax + ecx * 0x4], edx               // 0x00890572    891488
                         {disp8} mov      eax, dword ptr [ebx + 0x24]                    // 0x00890575    8b4324
                         inc              eax                                            // 0x00890578    40
                         {disp8} mov      dword ptr [ebx + 0x24], eax                    // 0x00890579    894324
                         mov              eax, 0x00000001                                // 0x0089057c    b801000000
                         pop              ebx                                            // 0x00890581    5b
                         ret                                                             // 0x00890582    c3
                         nop                                                             // 0x00890583    90
                         nop                                                             // 0x00890584    90
                         nop                                                             // 0x00890585    90
                         nop                                                             // 0x00890586    90
                         nop                                                             // 0x00890587    90
                         nop                                                             // 0x00890588    90
                         nop                                                             // 0x00890589    90
                         nop                                                             // 0x0089058a    90
                         nop                                                             // 0x0089058b    90
                         nop                                                             // 0x0089058c    90
                         nop                                                             // 0x0089058d    90
                         nop                                                             // 0x0089058e    90
                         nop                                                             // 0x0089058f    90
_jmp_addr_0x00890590:    push             esi                                            // 0x00890590    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x00890591    8b742408
                         cmp              dword ptr [esi + 0x04], 0x02                   // 0x00890595    837e0402
                         {disp8} jne      _jmp_addr_0x0089059f                           // 0x00890599    7504
                         xor.s            eax, eax                                       // 0x0089059b    33c0
                         pop              esi                                            // 0x0089059d    5e
                         ret                                                             // 0x0089059e    c3
_jmp_addr_0x0089059f:    {disp32} mov     eax, dword ptr [esi + 0x0000010c]              // 0x0089059f    8b860c010000
                         test             eax, eax                                       // 0x008905a5    85c0
                         {disp8} jne      _jmp_addr_0x008905ad                           // 0x008905a7    7504
                         xor.s            eax, eax                                       // 0x008905a9    33c0
                         pop              esi                                            // 0x008905ab    5e
                         ret                                                             // 0x008905ac    c3
_jmp_addr_0x008905ad:    push             esi                                            // 0x008905ad    56
                         call             _jmp_addr_0x008905d0                           // 0x008905ae    e81d000000
                         add              esp, 0x04                                      // 0x008905b3    83c404
                         test             eax, eax                                       // 0x008905b6    85c0
                         {disp8} jne      _jmp_addr_0x008905bc                           // 0x008905b8    7502
                         pop              esi                                            // 0x008905ba    5e
                         ret                                                             // 0x008905bb    c3
_jmp_addr_0x008905bc:    {disp32} lea     eax, dword ptr [esi + 0x00000120]              // 0x008905bc    8d8620010000
                         pop              esi                                            // 0x008905c2    5e
                         ret                                                             // 0x008905c3    c3
                         nop                                                             // 0x008905c4    90
                         nop                                                             // 0x008905c5    90
                         nop                                                             // 0x008905c6    90
                         nop                                                             // 0x008905c7    90
                         nop                                                             // 0x008905c8    90
                         nop                                                             // 0x008905c9    90
                         nop                                                             // 0x008905ca    90
                         nop                                                             // 0x008905cb    90
                         nop                                                             // 0x008905cc    90
                         nop                                                             // 0x008905cd    90
                         nop                                                             // 0x008905ce    90
                         nop                                                             // 0x008905cf    90
_jmp_addr_0x008905d0:    sub              esp, 0x10                                      // 0x008905d0    83ec10
                         push             ebx                                            // 0x008905d3    53
                         push             ebp                                            // 0x008905d4    55
                         push             esi                                            // 0x008905d5    56
                         {disp8} mov      esi, dword ptr [esp + 0x20]                    // 0x008905d6    8b742420
                         xor.s            ebx, ebx                                       // 0x008905da    33db
                         push             edi                                            // 0x008905dc    57
                         {disp32} mov     ecx, dword ptr [esi + 0x00000108]              // 0x008905dd    8b8e08010000
                         {disp32} lea     eax, dword ptr [esi + 0x00000108]              // 0x008905e3    8d8608010000
                         {disp8} mov      dword ptr [esp + 0x1c], eax                    // 0x008905e9    8944241c
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x008905ed    894c2418
                         cmp              byte ptr [ecx], bl                             // 0x008905f1    3819
                         {disp32} je      _jmp_addr_0x00890795                           // 0x008905f3    0f849c010000
_jmp_addr_0x008905f9:    mov              al, byte ptr [ecx]                             // 0x008905f9    8a01
                         cmp              al, 0x0d                                       // 0x008905fb    3c0d
                         {disp8} je       _jmp_addr_0x00890603                           // 0x008905fd    7404
                         cmp              al, 0x0a                                       // 0x008905ff    3c0a
                         {disp8} jne      _jmp_addr_0x00890606                           // 0x00890601    7503
_jmp_addr_0x00890603:    inc              ecx                                            // 0x00890603    41
                         {disp8} jmp      _jmp_addr_0x008905f9                           // 0x00890604    ebf3
_jmp_addr_0x00890606:    mov              al, byte ptr [ecx]                             // 0x00890606    8a01
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x00890608    894c2418
                         cmp.s            al, bl                                         // 0x0089060c    3ac3
                         {disp32} je      _jmp_addr_0x00890795                           // 0x0089060e    0f8481010000
                         mov.s            edx, ecx                                       // 0x00890614    8bd1
                         cmp              al, 0x0a                                       // 0x00890616    3c0a
                         {disp8} mov      dword ptr [esp + 0x10], edx                    // 0x00890618    89542410
                         {disp8} je       _jmp_addr_0x0089063c                           // 0x0089061c    741e
_jmp_addr_0x0089061e:    cmp              al, 0x0d                                       // 0x0089061e    3c0d
                         {disp8} je       _jmp_addr_0x00890638                           // 0x00890620    7416
                         cmp.s            al, bl                                         // 0x00890622    3ac3
                         {disp8} je       _jmp_addr_0x00890638                           // 0x00890624    7412
                         cmp              al, 0x20                                       // 0x00890626    3c20
                         {disp8} je       _jmp_addr_0x00890630                           // 0x00890628    7406
                         {disp8} mov      dword ptr [esp + 0x14], edx                    // 0x0089062a    89542414
                         mov.s            ecx, edx                                       // 0x0089062e    8bca
_jmp_addr_0x00890630:    {disp8} mov      al, byte ptr [edx + 0x01]                      // 0x00890630    8a4201
                         inc              edx                                            // 0x00890633    42
                         cmp              al, 0x0a                                       // 0x00890634    3c0a
                         {disp8} jne      _jmp_addr_0x0089061e                           // 0x00890636    75e6
_jmp_addr_0x00890638:    {disp8} mov      dword ptr [esp + 0x10], edx                    // 0x00890638    89542410
_jmp_addr_0x0089063c:    cmp              byte ptr [edx], bl                             // 0x0089063c    381a
                         {disp32} je      _jmp_addr_0x00890795                           // 0x0089063e    0f8451010000
                         {disp8} mov      al, byte ptr [ecx + 0x01]                      // 0x00890644    8a4101
                         inc              ecx                                            // 0x00890647    41
                         {disp32} lea     ebp, dword ptr [esi + 0x00000120]              // 0x00890648    8dae20010000
                         {disp8} mov      byte ptr [esp + 0x24], al                      // 0x0089064e    88442424
                         mov              byte ptr [ecx], bl                             // 0x00890652    8819
                         {disp8} mov      dword ptr [esp + 0x14], ecx                    // 0x00890654    894c2414
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                    // 0x00890658    8b4500
                         cmp.s            eax, ebx                                       // 0x0089065b    3bc3
                         {disp8} je       _jmp_addr_0x0089066b                           // 0x0089065d    740c
                         push             eax                                            // 0x0089065f    50
                         call             _free                                          // 0x00890660    e82161f3ff
                         add              esp, 0x04                                      // 0x00890665    83c404
                         {disp8} mov      dword ptr [ebp + 0x00], ebx                    // 0x00890668    895d00
_jmp_addr_0x0089066b:    {disp32} mov     eax, dword ptr [esi + 0x00000124]              // 0x0089066b    8b8624010000
                         cmp.s            eax, ebx                                       // 0x00890671    3bc3
                         {disp8} je       _jmp_addr_0x00890684                           // 0x00890673    740f
                         push             eax                                            // 0x00890675    50
                         call             _free                                          // 0x00890676    e80b61f3ff
                         add              esp, 0x04                                      // 0x0089067b    83c404
                         {disp32} mov     dword ptr [esi + 0x00000124], ebx              // 0x0089067e    899e24010000
_jmp_addr_0x00890684:    {disp32} mov     eax, dword ptr [esi + 0x00000128]              // 0x00890684    8b8628010000
                         cmp.s            eax, ebx                                       // 0x0089068a    3bc3
                         {disp8} je       _jmp_addr_0x0089069d                           // 0x0089068c    740f
                         push             eax                                            // 0x0089068e    50
                         call             _free                                          // 0x0089068f    e8f260f3ff
                         add              esp, 0x04                                      // 0x00890694    83c404
                         {disp32} mov     dword ptr [esi + 0x00000128], ebx              // 0x00890697    899e28010000
_jmp_addr_0x0089069d:    {disp32} mov     eax, dword ptr [esi + 0x0000012c]              // 0x0089069d    8b862c010000
                         cmp.s            eax, ebx                                       // 0x008906a3    3bc3
                         {disp8} je       _jmp_addr_0x008906b6                           // 0x008906a5    740f
                         push             eax                                            // 0x008906a7    50
                         call             _free                                          // 0x008906a8    e8d960f3ff
                         add              esp, 0x04                                      // 0x008906ad    83c404
                         {disp32} mov     dword ptr [esi + 0x0000012c], ebx              // 0x008906b0    899e2c010000
_jmp_addr_0x008906b6:    {disp32} mov     eax, dword ptr [esi + 0x00000130]              // 0x008906b6    8b8630010000
                         cmp.s            eax, ebx                                       // 0x008906bc    3bc3
                         {disp8} je       _jmp_addr_0x008906cf                           // 0x008906be    740f
                         push             eax                                            // 0x008906c0    50
                         call             _free                                          // 0x008906c1    e8c060f3ff
                         add              esp, 0x04                                      // 0x008906c6    83c404
                         {disp32} mov     dword ptr [esi + 0x00000130], ebx              // 0x008906c9    899e30010000
_jmp_addr_0x008906cf:    {disp32} mov     eax, dword ptr [esi + 0x00000134]              // 0x008906cf    8b8634010000
                         cmp.s            eax, ebx                                       // 0x008906d5    3bc3
                         {disp8} je       _jmp_addr_0x008906e8                           // 0x008906d7    740f
                         push             eax                                            // 0x008906d9    50
                         call             _free                                          // 0x008906da    e8a760f3ff
                         add              esp, 0x04                                      // 0x008906df    83c404
                         {disp32} mov     dword ptr [esi + 0x00000134], ebx              // 0x008906e2    899e34010000
_jmp_addr_0x008906e8:    {disp32} mov     eax, dword ptr [esi + 0x00000138]              // 0x008906e8    8b8638010000
                         cmp.s            eax, ebx                                       // 0x008906ee    3bc3
                         {disp8} je       _jmp_addr_0x00890701                           // 0x008906f0    740f
                         push             eax                                            // 0x008906f2    50
                         call             _free                                          // 0x008906f3    e88e60f3ff
                         add              esp, 0x04                                      // 0x008906f8    83c404
                         {disp32} mov     dword ptr [esi + 0x00000138], ebx              // 0x008906fb    899e38010000
_jmp_addr_0x00890701:    {disp32} mov     eax, dword ptr [esi + 0x0000013c]              // 0x00890701    8b863c010000
                         cmp.s            eax, ebx                                       // 0x00890707    3bc3
                         {disp8} je       _jmp_addr_0x0089071a                           // 0x00890709    740f
                         push             eax                                            // 0x0089070b    50
                         call             _free                                          // 0x0089070c    e87560f3ff
                         add              esp, 0x04                                      // 0x00890711    83c404
                         {disp32} mov     dword ptr [esi + 0x0000013c], ebx              // 0x00890714    899e3c010000
_jmp_addr_0x0089071a:    {disp32} mov     eax, dword ptr [esi + 0x00000144]              // 0x0089071a    8b8644010000
                         xor.s            edi, edi                                       // 0x00890720    33ff
                         cmp.s            eax, ebx                                       // 0x00890722    3bc3
                         {disp8} jle      _jmp_addr_0x00890750                           // 0x00890724    7e2a
_jmp_addr_0x00890726:    {disp32} mov     ecx, dword ptr [esi + 0x00000140]              // 0x00890726    8b8e40010000
                         mov              eax, dword ptr [ecx + edi * 0x4]               // 0x0089072c    8b04b9
                         cmp.s            eax, ebx                                       // 0x0089072f    3bc3
                         {disp8} je       _jmp_addr_0x00890745                           // 0x00890731    7412
                         push             eax                                            // 0x00890733    50
                         call             _free                                          // 0x00890734    e84d60f3ff
                         {disp32} mov     edx, dword ptr [esi + 0x00000140]              // 0x00890739    8b9640010000
                         add              esp, 0x04                                      // 0x0089073f    83c404
                         mov              dword ptr [edx + edi * 0x4], ebx               // 0x00890742    891cba
_jmp_addr_0x00890745:    {disp32} mov     eax, dword ptr [esi + 0x00000144]              // 0x00890745    8b8644010000
                         inc              edi                                            // 0x0089074b    47
                         cmp.s            edi, eax                                       // 0x0089074c    3bf8
                         {disp8} jl       _jmp_addr_0x00890726                           // 0x0089074e    7cd6
_jmp_addr_0x00890750:    {disp32} mov     eax, dword ptr [esi + 0x00000140]              // 0x00890750    8b8640010000
                         cmp.s            eax, ebx                                       // 0x00890756    3bc3
                         {disp8} je       _jmp_addr_0x00890769                           // 0x00890758    740f
                         push             eax                                            // 0x0089075a    50
                         call             _free                                          // 0x0089075b    e82660f3ff
                         add              esp, 0x04                                      // 0x00890760    83c404
                         {disp32} mov     dword ptr [esi + 0x00000140], ebx              // 0x00890763    899e40010000
_jmp_addr_0x00890769:    mov              ecx, 0x0000000a                                // 0x00890769    b90a000000
                         xor.s            eax, eax                                       // 0x0089076e    33c0
                         mov.s            edi, ebp                                       // 0x00890770    8bfd
                         {disp32} mov     dword ptr [esi + 0x00000144], ebx              // 0x00890772    899e44010000
                         rep stosd                                                       // 0x00890778    f3ab
                         {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x0089077a    8b442418
                         push             ebp                                            // 0x0089077e    55
                         push             eax                                            // 0x0089077f    50
                         call             _jmp_addr_0x008907d0                           // 0x00890780    e84b000000
                         add              esp, 0x08                                      // 0x00890785    83c408
                         test             eax, eax                                       // 0x00890788    85c0
                         {disp8} jne      _jmp_addr_0x0089079f                           // 0x0089078a    7513
                         mov              ecx, 0x0000000a                                // 0x0089078c    b90a000000
                         mov.s            edi, ebp                                       // 0x00890791    8bfd
                         rep stosd                                                       // 0x00890793    f3ab
_jmp_addr_0x00890795:    pop              edi                                            // 0x00890795    5f
                         pop              esi                                            // 0x00890796    5e
                         pop              ebp                                            // 0x00890797    5d
                         xor.s            eax, eax                                       // 0x00890798    33c0
                         pop              ebx                                            // 0x0089079a    5b
                         add              esp, 0x10                                      // 0x0089079b    83c410
                         ret                                                             // 0x0089079e    c3
_jmp_addr_0x0089079f:    {disp8} mov      edx, dword ptr [esp + 0x14]                    // 0x0089079f    8b542414
                         {disp8} mov      cl, byte ptr [esp + 0x24]                      // 0x008907a3    8a4c2424
                         {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x008907a7    8b442410
                         mov              byte ptr [edx], cl                             // 0x008907ab    880a
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                    // 0x008907ad    8b4c241c
                         sub              eax, dword ptr [ecx]                           // 0x008907b1    2b01
                         push             eax                                            // 0x008907b3    50
                         push             ecx                                            // 0x008907b4    51
                         call             _jmp_addr_0x008900a0                           // 0x008907b5    e8e6f8ffff
                         add              esp, 0x08                                      // 0x008907ba    83c408
                         mov              eax, 0x00000001                                // 0x008907bd    b801000000
                         pop              edi                                            // 0x008907c2    5f
                         pop              esi                                            // 0x008907c3    5e
                         pop              ebp                                            // 0x008907c4    5d
                         pop              ebx                                            // 0x008907c5    5b
                         add              esp, 0x10                                      // 0x008907c6    83c410
                         ret                                                             // 0x008907c9    c3
                         nop                                                             // 0x008907ca    90
                         nop                                                             // 0x008907cb    90
                         nop                                                             // 0x008907cc    90
                         nop                                                             // 0x008907cd    90
                         nop                                                             // 0x008907ce    90
                         nop                                                             // 0x008907cf    90
_jmp_addr_0x008907d0:    sub              esp, 0x10                                      // 0x008907d0    83ec10
                         push             ebx                                            // 0x008907d3    53
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                    // 0x008907d4    8b5c2418
                         push             ebp                                            // 0x008907d8    55
                         push             esi                                            // 0x008907d9    56
                         xor.s            esi, esi                                       // 0x008907da    33f6
                         push             edi                                            // 0x008907dc    57
                         cmp.s            ebx, esi                                       // 0x008907dd    3bde
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x008907df    89742418
                         {disp8} mov      dword ptr [esp + 0x1c], esi                    // 0x008907e3    8974241c
                         {disp8} mov      dword ptr [esp + 0x10], esi                    // 0x008907e7    89742410
                         {disp8} mov      dword ptr [esp + 0x14], esi                    // 0x008907eb    89742414
                         {disp32} je      _jmp_addr_0x0089098e                           // 0x008907ef    0f8499010000
                         cmp              byte ptr [ebx], 0x00                           // 0x008907f5    803b00
                         {disp32} je      _jmp_addr_0x0089098e                           // 0x008907f8    0f8490010000
                         mov.s            edi, ebx                                       // 0x008907fe    8bfb
                         or               ecx, 0xffffffff                                // 0x00890800    83c9ff
                         xor.s            eax, eax                                       // 0x00890803    33c0
                         repne scasb                                                     // 0x00890805    f2ae
                         not              ecx                                            // 0x00890807    f7d1
                         dec              ecx                                            // 0x00890809    49
                         mov.s            edi, ecx                                       // 0x0089080a    8bf9
                         {disp8} mov      dword ptr [esp + 0x24], edi                    // 0x0089080c    897c2424
                         {disp8} lea      eax, dword ptr [edi + 0x01]                    // 0x00890810    8d4701
                         push             eax                                            // 0x00890813    50
                         call             _malloc                                        // 0x00890814    e8335ef3ff
                         {disp8} mov      ebp, dword ptr [esp + 0x2c]                    // 0x00890819    8b6c242c
                         add              esp, 0x04                                      // 0x0089081d    83c404
                         cmp.s            eax, esi                                       // 0x00890820    3bc6
                         {disp8} mov      dword ptr [ebp + 0x00], eax                    // 0x00890822    894500
                         {disp32} je      _jmp_addr_0x0089098e                           // 0x00890825    0f8463010000
                         mov.s            ecx, edi                                       // 0x0089082b    8bcf
                         mov.s            esi, ebx                                       // 0x0089082d    8bf3
                         mov.s            edx, ecx                                       // 0x0089082f    8bd1
                         mov.s            edi, eax                                       // 0x00890831    8bf8
                         shr              ecx, 2                                         // 0x00890833    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00890836    f3a5
                         mov.s            ecx, edx                                       // 0x00890838    8bca
                         and              ecx, 0x03                                      // 0x0089083a    83e103
                         rep movsb                                                       // 0x0089083d    f3a4
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                    // 0x0089083f    8b4500
                         mov.s            ecx, edx                                       // 0x00890842    8bca
                         mov              byte ptr [eax + ecx * 0x1], 0x00               // 0x00890844    c6040800
                         mov.s            eax, ebx                                       // 0x00890848    8bc3
_jmp_addr_0x0089084a:    mov              cl, byte ptr [eax]                             // 0x0089084a    8a08
                         cmp              cl, 0x0a                                       // 0x0089084c    80f90a
                         {disp8} je       _jmp_addr_0x00890856                           // 0x0089084f    7405
                         cmp              cl, 0x0d                                       // 0x00890851    80f90d
                         {disp8} jne      _jmp_addr_0x00890859                           // 0x00890854    7503
_jmp_addr_0x00890856:    inc              eax                                            // 0x00890856    40
                         {disp8} jmp      _jmp_addr_0x0089084a                           // 0x00890857    ebf1
_jmp_addr_0x00890859:    cmp              byte ptr [eax], 0x3a                           // 0x00890859    80383a
                         {disp8} jne      _jmp_addr_0x00890883                           // 0x0089085c    7525
                         inc              eax                                            // 0x0089085e    40
                         {disp8} mov      dword ptr [ebp + 0x04], eax                    // 0x0089085f    894504
                         mov              cl, byte ptr [eax]                             // 0x00890862    8a08
                         test             cl, cl                                         // 0x00890864    84c9
                         {disp8} je       _jmp_addr_0x00890883                           // 0x00890866    741b
                         cmp              cl, 0x20                                       // 0x00890868    80f920
                         {disp8} je       _jmp_addr_0x00890883                           // 0x0089086b    7416
_jmp_addr_0x0089086d:    test             cl, cl                                         // 0x0089086d    84c9
                         {disp8} je       _jmp_addr_0x00890883                           // 0x0089086f    7412
                         {disp8} mov      edi, dword ptr [esp + 0x18]                    // 0x00890871    8b7c2418
                         {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x00890875    8a4801
                         inc              edi                                            // 0x00890878    47
                         inc              eax                                            // 0x00890879    40
                         cmp              cl, 0x20                                       // 0x0089087a    80f920
                         {disp8} mov      dword ptr [esp + 0x18], edi                    // 0x0089087d    897c2418
                         {disp8} jne      _jmp_addr_0x0089086d                           // 0x00890881    75ea
_jmp_addr_0x00890883:    cmp              byte ptr [eax], 0x20                           // 0x00890883    803820
                         {disp8} jne      _jmp_addr_0x00890891                           // 0x00890886    7509
_jmp_addr_0x00890888:    {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x00890888    8a4801
                         inc              eax                                            // 0x0089088b    40
                         cmp              cl, 0x20                                       // 0x0089088c    80f920
                         {disp8} je       _jmp_addr_0x00890888                           // 0x0089088f    74f7
_jmp_addr_0x00890891:    cmp              byte ptr [eax], 0x00                           // 0x00890891    803800
                         {disp8} je       _jmp_addr_0x008908b6                           // 0x00890894    7420
                         {disp8} mov      dword ptr [ebp + 0x14], eax                    // 0x00890896    894514
                         mov              cl, byte ptr [eax]                             // 0x00890899    8a08
                         cmp              cl, 0x20                                       // 0x0089089b    80f920
                         {disp8} je       _jmp_addr_0x008908b6                           // 0x0089089e    7416
_jmp_addr_0x008908a0:    test             cl, cl                                         // 0x008908a0    84c9
                         {disp8} je       _jmp_addr_0x008908b6                           // 0x008908a2    7412
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                    // 0x008908a4    8b7c241c
                         {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x008908a8    8a4801
                         inc              edi                                            // 0x008908ab    47
                         inc              eax                                            // 0x008908ac    40
                         cmp              cl, 0x20                                       // 0x008908ad    80f920
                         {disp8} mov      dword ptr [esp + 0x1c], edi                    // 0x008908b0    897c241c
                         {disp8} jne      _jmp_addr_0x008908a0                           // 0x008908b4    75ea
_jmp_addr_0x008908b6:    cmp              byte ptr [eax], 0x20                           // 0x008908b6    803820
                         {disp8} jne      _jmp_addr_0x008908c4                           // 0x008908b9    7509
_jmp_addr_0x008908bb:    {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x008908bb    8a4801
                         inc              eax                                            // 0x008908be    40
                         cmp              cl, 0x20                                       // 0x008908bf    80f920
                         {disp8} je       _jmp_addr_0x008908bb                           // 0x008908c2    74f7
_jmp_addr_0x008908c4:    mov              cl, byte ptr [eax]                             // 0x008908c4    8a08
                         cmp              cl, 0x3a                                       // 0x008908c6    80f93a
                         {disp8} je       _jmp_addr_0x008908ef                           // 0x008908c9    7424
                         test             cl, cl                                         // 0x008908cb    84c9
                         {disp8} je       _jmp_addr_0x008908ef                           // 0x008908cd    7420
                         {disp8} mov      dword ptr [ebp + 0x18], eax                    // 0x008908cf    894518
                         mov              cl, byte ptr [eax]                             // 0x008908d2    8a08
                         cmp              cl, 0x20                                       // 0x008908d4    80f920
                         {disp8} je       _jmp_addr_0x008908ef                           // 0x008908d7    7416
_jmp_addr_0x008908d9:    test             cl, cl                                         // 0x008908d9    84c9
                         {disp8} je       _jmp_addr_0x008908ef                           // 0x008908db    7412
                         {disp8} mov      edi, dword ptr [esp + 0x10]                    // 0x008908dd    8b7c2410
                         {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x008908e1    8a4801
                         inc              edi                                            // 0x008908e4    47
                         inc              eax                                            // 0x008908e5    40
                         cmp              cl, 0x20                                       // 0x008908e6    80f920
                         {disp8} mov      dword ptr [esp + 0x10], edi                    // 0x008908e9    897c2410
                         {disp8} jne      _jmp_addr_0x008908d9                           // 0x008908ed    75ea
_jmp_addr_0x008908ef:    cmp              byte ptr [eax], 0x20                           // 0x008908ef    803820
                         {disp8} jne      _jmp_addr_0x008908fd                           // 0x008908f2    7509
_jmp_addr_0x008908f4:    {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x008908f4    8a4801
                         inc              eax                                            // 0x008908f7    40
                         cmp              cl, 0x20                                       // 0x008908f8    80f920
                         {disp8} je       _jmp_addr_0x008908f4                           // 0x008908fb    74f7
_jmp_addr_0x008908fd:    cmp              byte ptr [eax], 0x00                           // 0x008908fd    803800
                         {disp8} je       _jmp_addr_0x0089091c                           // 0x00890900    741a
                         {disp8} mov      dword ptr [ebp + 0x1c], eax                    // 0x00890902    89451c
                         mov              cl, byte ptr [eax]                             // 0x00890905    8a08
                         test             cl, cl                                         // 0x00890907    84c9
                         {disp8} je       _jmp_addr_0x0089091c                           // 0x00890909    7411
_jmp_addr_0x0089090b:    {disp8} mov      esi, dword ptr [esp + 0x14]                    // 0x0089090b    8b742414
                         {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x0089090f    8a4801
                         inc              esi                                            // 0x00890912    46
                         inc              eax                                            // 0x00890913    40
                         test             cl, cl                                         // 0x00890914    84c9
                         {disp8} mov      dword ptr [esp + 0x14], esi                    // 0x00890916    89742414
                         {disp8} jne      _jmp_addr_0x0089090b                           // 0x0089091a    75ef
_jmp_addr_0x0089091c:    {disp8} mov      ebx, dword ptr [esp + 0x18]                    // 0x0089091c    8b5c2418
                         xor.s            edi, edi                                       // 0x00890920    33ff
                         cmp.s            ebx, edi                                       // 0x00890922    3bdf
                         {disp8} je       _jmp_addr_0x00890998                           // 0x00890924    7472
                         {disp8} mov      esi, dword ptr [ebp + 0x04]                    // 0x00890926    8b7504
                         {disp8} lea      edx, dword ptr [ebx + 0x01]                    // 0x00890929    8d5301
                         push             edx                                            // 0x0089092c    52
                         call             _malloc                                        // 0x0089092d    e81a5df3ff
                         add              esp, 0x04                                      // 0x00890932    83c404
                         cmp.s            eax, edi                                       // 0x00890935    3bc7
                         {disp8} mov      dword ptr [ebp + 0x04], eax                    // 0x00890937    894504
                         {disp8} je       _jmp_addr_0x00890957                           // 0x0089093a    741b
                         mov.s            ecx, ebx                                       // 0x0089093c    8bcb
                         mov.s            edi, eax                                       // 0x0089093e    8bf8
                         mov.s            eax, ecx                                       // 0x00890940    8bc1
                         shr              ecx, 2                                         // 0x00890942    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00890945    f3a5
                         mov.s            ecx, eax                                       // 0x00890947    8bc8
                         and              ecx, 0x03                                      // 0x00890949    83e103
                         rep movsb                                                       // 0x0089094c    f3a4
                         {disp8} mov      ecx, dword ptr [ebp + 0x04]                    // 0x0089094e    8b4d04
                         xor.s            edi, edi                                       // 0x00890951    33ff
                         mov              byte ptr [ebx + ecx * 0x1], 0x00               // 0x00890953    c6040b00
_jmp_addr_0x00890957:    {disp8} mov      edx, dword ptr [ebp + 0x04]                    // 0x00890957    8b5504
                         push             ebp                                            // 0x0089095a    55
                         push             edx                                            // 0x0089095b    52
                         call             _jmp_addr_0x00890b70                           // 0x0089095c    e80f020000
                         add              esp, 0x08                                      // 0x00890961    83c408
                         test             eax, eax                                       // 0x00890964    85c0
                         {disp8} jne      _jmp_addr_0x008909a4                           // 0x00890966    753c
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                    // 0x00890968    8b4500
                         cmp.s            eax, edi                                       // 0x0089096b    3bc7
                         {disp8} je       _jmp_addr_0x0089097b                           // 0x0089096d    740c
                         push             eax                                            // 0x0089096f    50
                         call             _free                                          // 0x00890970    e8115ef3ff
                         add              esp, 0x04                                      // 0x00890975    83c404
                         {disp8} mov      dword ptr [ebp + 0x00], edi                    // 0x00890978    897d00
_jmp_addr_0x0089097b:    {disp8} mov      eax, dword ptr [ebp + 0x04]                    // 0x0089097b    8b4504
                         cmp.s            eax, edi                                       // 0x0089097e    3bc7
                         {disp8} je       _jmp_addr_0x0089098e                           // 0x00890980    740c
                         push             eax                                            // 0x00890982    50
                         call             _free                                          // 0x00890983    e8fe5df3ff
                         add              esp, 0x04                                      // 0x00890988    83c404
                         {disp8} mov      dword ptr [ebp + 0x04], edi                    // 0x0089098b    897d04
_jmp_addr_0x0089098e:    pop              edi                                            // 0x0089098e    5f
                         pop              esi                                            // 0x0089098f    5e
                         pop              ebp                                            // 0x00890990    5d
                         xor.s            eax, eax                                       // 0x00890991    33c0
                         pop              ebx                                            // 0x00890993    5b
                         add              esp, 0x10                                      // 0x00890994    83c410
                         ret                                                             // 0x00890997    c3
_jmp_addr_0x00890998:    {disp8} mov      dword ptr [ebp + 0x04], edi                    // 0x00890998    897d04
                         {disp8} mov      dword ptr [ebp + 0x08], edi                    // 0x0089099b    897d08
                         {disp8} mov      dword ptr [ebp + 0x0c], edi                    // 0x0089099e    897d0c
                         {disp8} mov      dword ptr [ebp + 0x10], edi                    // 0x008909a1    897d10
_jmp_addr_0x008909a4:    cmp              dword ptr [esp + 0x10], edi                    // 0x008909a4    397c2410
                         {disp32} je      _jmp_addr_0x00890a30                           // 0x008909a8    0f8482000000
                         {disp8} mov      eax, dword ptr [ebp + 0x18]                    // 0x008909ae    8b4518
                         push             ebp                                            // 0x008909b1    55
                         push             eax                                            // 0x008909b2    50
                         call             _jmp_addr_0x00890420                           // 0x008909b3    e868faffff
                         add              esp, 0x08                                      // 0x008909b8    83c408
                         test             eax, eax                                       // 0x008909bb    85c0
                         {disp32} jne     _jmp_addr_0x00890ad8                           // 0x008909bd    0f8515010000
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                    // 0x008909c3    8b4500
                         cmp.s            eax, edi                                       // 0x008909c6    3bc7
                         {disp8} je       _jmp_addr_0x008909d6                           // 0x008909c8    740c
                         push             eax                                            // 0x008909ca    50
                         call             _free                                          // 0x008909cb    e8b65df3ff
                         add              esp, 0x04                                      // 0x008909d0    83c404
                         {disp8} mov      dword ptr [ebp + 0x00], edi                    // 0x008909d3    897d00
_jmp_addr_0x008909d6:    {disp8} mov      eax, dword ptr [ebp + 0x04]                    // 0x008909d6    8b4504
                         cmp.s            eax, edi                                       // 0x008909d9    3bc7
                         {disp8} je       _jmp_addr_0x008909e9                           // 0x008909db    740c
                         push             eax                                            // 0x008909dd    50
                         call             _free                                          // 0x008909de    e8a35df3ff
                         add              esp, 0x04                                      // 0x008909e3    83c404
                         {disp8} mov      dword ptr [ebp + 0x04], edi                    // 0x008909e6    897d04
_jmp_addr_0x008909e9:    {disp8} mov      eax, dword ptr [ebp + 0x08]                    // 0x008909e9    8b4508
                         cmp.s            eax, edi                                       // 0x008909ec    3bc7
                         {disp8} je       _jmp_addr_0x008909fc                           // 0x008909ee    740c
                         push             eax                                            // 0x008909f0    50
                         call             _free                                          // 0x008909f1    e8905df3ff
                         add              esp, 0x04                                      // 0x008909f6    83c404
                         {disp8} mov      dword ptr [ebp + 0x08], edi                    // 0x008909f9    897d08
_jmp_addr_0x008909fc:    {disp8} mov      eax, dword ptr [ebp + 0x0c]                    // 0x008909fc    8b450c
                         cmp.s            eax, edi                                       // 0x008909ff    3bc7
                         {disp8} je       _jmp_addr_0x00890a0f                           // 0x00890a01    740c
_jmp_addr_0x00890a03:    push             eax                                            // 0x00890a03    50
                         call             _free                                          // 0x00890a04    e87d5df3ff
                         add              esp, 0x04                                      // 0x00890a09    83c404
                         {disp8} mov      dword ptr [ebp + 0x0c], edi                    // 0x00890a0c    897d0c
_jmp_addr_0x00890a0f:    {disp8} mov      eax, dword ptr [ebp + 0x10]                    // 0x00890a0f    8b4510
                         cmp.s            eax, edi                                       // 0x00890a12    3bc7
                         {disp32} je      _jmp_addr_0x0089098e                           // 0x00890a14    0f8474ffffff
                         push             eax                                            // 0x00890a1a    50
                         call             _free                                          // 0x00890a1b    e8665df3ff
                         add              esp, 0x04                                      // 0x00890a20    83c404
                         {disp8} mov      dword ptr [ebp + 0x10], edi                    // 0x00890a23    897d10
                         xor.s            eax, eax                                       // 0x00890a26    33c0
                         pop              edi                                            // 0x00890a28    5f
                         pop              esi                                            // 0x00890a29    5e
                         pop              ebp                                            // 0x00890a2a    5d
                         pop              ebx                                            // 0x00890a2b    5b
                         add              esp, 0x10                                      // 0x00890a2c    83c410
                         ret                                                             // 0x00890a2f    c3
_jmp_addr_0x00890a30:    {disp8} mov      ebx, dword ptr [esp + 0x14]                    // 0x00890a30    8b5c2414
                         xor.s            edi, edi                                       // 0x00890a34    33ff
                         cmp.s            ebx, edi                                       // 0x00890a36    3bdf
                         {disp8} je       _jmp_addr_0x00890a94                           // 0x00890a38    745a
                         {disp8} mov      ecx, dword ptr [ebp + 0x1c]                    // 0x00890a3a    8b4d1c
                         push             ebp                                            // 0x00890a3d    55
                         push             ecx                                            // 0x00890a3e    51
                         call             _jmp_addr_0x00890420                           // 0x00890a3f    e8dcf9ffff
                         add              esp, 0x08                                      // 0x00890a44    83c408
                         test             eax, eax                                       // 0x00890a47    85c0
                         {disp32} jne     _jmp_addr_0x00890ade                           // 0x00890a49    0f858f000000
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                    // 0x00890a4f    8b4500
                         cmp.s            eax, edi                                       // 0x00890a52    3bc7
                         {disp8} je       _jmp_addr_0x00890a62                           // 0x00890a54    740c
                         push             eax                                            // 0x00890a56    50
                         call             _free                                          // 0x00890a57    e82a5df3ff
                         add              esp, 0x04                                      // 0x00890a5c    83c404
                         {disp8} mov      dword ptr [ebp + 0x00], edi                    // 0x00890a5f    897d00
_jmp_addr_0x00890a62:    {disp8} mov      eax, dword ptr [ebp + 0x04]                    // 0x00890a62    8b4504
                         cmp.s            eax, edi                                       // 0x00890a65    3bc7
                         {disp8} je       _jmp_addr_0x00890a75                           // 0x00890a67    740c
                         push             eax                                            // 0x00890a69    50
                         call             _free                                          // 0x00890a6a    e8175df3ff
                         add              esp, 0x04                                      // 0x00890a6f    83c404
                         {disp8} mov      dword ptr [ebp + 0x04], edi                    // 0x00890a72    897d04
_jmp_addr_0x00890a75:    {disp8} mov      eax, dword ptr [ebp + 0x08]                    // 0x00890a75    8b4508
                         cmp.s            eax, edi                                       // 0x00890a78    3bc7
                         {disp8} je       _jmp_addr_0x00890a88                           // 0x00890a7a    740c
                         push             eax                                            // 0x00890a7c    50
                         call             _free                                          // 0x00890a7d    e8045df3ff
                         add              esp, 0x04                                      // 0x00890a82    83c404
                         {disp8} mov      dword ptr [ebp + 0x08], edi                    // 0x00890a85    897d08
_jmp_addr_0x00890a88:    {disp8} mov      eax, dword ptr [ebp + 0x0c]                    // 0x00890a88    8b450c
                         cmp.s            eax, edi                                       // 0x00890a8b    3bc7
                         {disp8} je       _jmp_addr_0x00890a0f                           // 0x00890a8d    7480
                         {disp32} jmp     _jmp_addr_0x00890a03                           // 0x00890a8f    e96fffffff
_jmp_addr_0x00890a94:    {disp8} mov      dword ptr [ebp + 0x20], edi                    // 0x00890a94    897d20
                         {disp8} mov      dword ptr [ebp + 0x24], edi                    // 0x00890a97    897d24
_jmp_addr_0x00890a9a:    {disp8} mov      dword ptr [ebp + 0x1c], edi                    // 0x00890a9a    897d1c
_jmp_addr_0x00890a9d:    {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x00890a9d    8b5c241c
                         cmp.s            ebx, edi                                       // 0x00890aa1    3bdf
                         {disp8} je       _jmp_addr_0x00890b15                           // 0x00890aa3    7470
                         {disp8} mov      esi, dword ptr [ebp + 0x14]                    // 0x00890aa5    8b7514
                         {disp8} lea      edx, dword ptr [ebx + 0x01]                    // 0x00890aa8    8d5301
                         push             edx                                            // 0x00890aab    52
                         call             _malloc                                        // 0x00890aac    e89b5bf3ff
                         add              esp, 0x04                                      // 0x00890ab1    83c404
                         cmp.s            eax, edi                                       // 0x00890ab4    3bc7
                         {disp8} mov      dword ptr [ebp + 0x14], eax                    // 0x00890ab6    894514
                         {disp8} je       _jmp_addr_0x00890b18                           // 0x00890ab9    745d
                         mov.s            ecx, ebx                                       // 0x00890abb    8bcb
                         mov.s            edi, eax                                       // 0x00890abd    8bf8
                         mov.s            eax, ecx                                       // 0x00890abf    8bc1
                         shr              ecx, 2                                         // 0x00890ac1    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00890ac4    f3a5
                         mov.s            ecx, eax                                       // 0x00890ac6    8bc8
                         and              ecx, 0x03                                      // 0x00890ac8    83e103
                         rep movsb                                                       // 0x00890acb    f3a4
                         {disp8} mov      ecx, dword ptr [ebp + 0x14]                    // 0x00890acd    8b4d14
                         xor.s            edi, edi                                       // 0x00890ad0    33ff
                         mov              byte ptr [ecx + ebx * 0x1], 0x00               // 0x00890ad2    c6041900
                         {disp8} jmp      _jmp_addr_0x00890b18                           // 0x00890ad6    eb40
_jmp_addr_0x00890ad8:    {disp8} mov      ebx, dword ptr [esp + 0x14]                    // 0x00890ad8    8b5c2414
                         xor.s            edi, edi                                       // 0x00890adc    33ff
_jmp_addr_0x00890ade:    cmp.s            ebx, edi                                       // 0x00890ade    3bdf
                         {disp8} je       _jmp_addr_0x00890a9a                           // 0x00890ae0    74b8
                         {disp8} mov      esi, dword ptr [ebp + 0x1c]                    // 0x00890ae2    8b751c
                         {disp8} lea      edx, dword ptr [ebx + 0x01]                    // 0x00890ae5    8d5301
                         push             edx                                            // 0x00890ae8    52
                         call             _malloc                                        // 0x00890ae9    e85e5bf3ff
                         add              esp, 0x04                                      // 0x00890aee    83c404
                         cmp.s            eax, edi                                       // 0x00890af1    3bc7
                         {disp8} mov      dword ptr [ebp + 0x1c], eax                    // 0x00890af3    89451c
                         {disp8} je       _jmp_addr_0x00890a9d                           // 0x00890af6    74a5
                         mov.s            ecx, ebx                                       // 0x00890af8    8bcb
                         mov.s            edi, eax                                       // 0x00890afa    8bf8
                         mov.s            eax, ecx                                       // 0x00890afc    8bc1
                         shr              ecx, 2                                         // 0x00890afe    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00890b01    f3a5
                         mov.s            ecx, eax                                       // 0x00890b03    8bc8
                         and              ecx, 0x03                                      // 0x00890b05    83e103
                         rep movsb                                                       // 0x00890b08    f3a4
                         {disp8} mov      ecx, dword ptr [ebp + 0x1c]                    // 0x00890b0a    8b4d1c
                         xor.s            edi, edi                                       // 0x00890b0d    33ff
                         mov              byte ptr [ecx + ebx * 0x1], 0x00               // 0x00890b0f    c6041900
                         {disp8} jmp      _jmp_addr_0x00890a9d                           // 0x00890b13    eb88
_jmp_addr_0x00890b15:    {disp8} mov      dword ptr [ebp + 0x14], edi                    // 0x00890b15    897d14
_jmp_addr_0x00890b18:    {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x00890b18    8b442410
                         cmp.s            eax, edi                                       // 0x00890b1c    3bc7
                         {disp8} je       _jmp_addr_0x00890b60                           // 0x00890b1e    7440
                         {disp8} mov      esi, dword ptr [ebp + 0x18]                    // 0x00890b20    8b7518
                         mov.s            ebx, eax                                       // 0x00890b23    8bd8
                         {disp8} lea      edx, dword ptr [ebx + 0x01]                    // 0x00890b25    8d5301
                         push             edx                                            // 0x00890b28    52
                         call             _malloc                                        // 0x00890b29    e81e5bf3ff
                         add              esp, 0x04                                      // 0x00890b2e    83c404
                         cmp.s            eax, edi                                       // 0x00890b31    3bc7
                         {disp8} mov      dword ptr [ebp + 0x18], eax                    // 0x00890b33    894518
                         {disp8} je       _jmp_addr_0x00890b63                           // 0x00890b36    742b
                         mov.s            ecx, ebx                                       // 0x00890b38    8bcb
                         mov.s            edi, eax                                       // 0x00890b3a    8bf8
                         mov.s            eax, ecx                                       // 0x00890b3c    8bc1
                         mov.s            edx, ebx                                       // 0x00890b3e    8bd3
                         shr              ecx, 2                                         // 0x00890b40    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00890b43    f3a5
                         mov.s            ecx, eax                                       // 0x00890b45    8bc8
                         mov              eax, 0x00000001                                // 0x00890b47    b801000000
                         and              ecx, 0x03                                      // 0x00890b4c    83e103
                         rep movsb                                                       // 0x00890b4f    f3a4
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                    // 0x00890b51    8b4d18
                         pop              edi                                            // 0x00890b54    5f
                         pop              esi                                            // 0x00890b55    5e
                         pop              ebp                                            // 0x00890b56    5d
                         mov              byte ptr [ecx + edx * 0x1], 0x00               // 0x00890b57    c6041100
                         pop              ebx                                            // 0x00890b5b    5b
                         add              esp, 0x10                                      // 0x00890b5c    83c410
                         ret                                                             // 0x00890b5f    c3
_jmp_addr_0x00890b60:    {disp8} mov      dword ptr [ebp + 0x18], edi                    // 0x00890b60    897d18
_jmp_addr_0x00890b63:    pop              edi                                            // 0x00890b63    5f
                         pop              esi                                            // 0x00890b64    5e
                         pop              ebp                                            // 0x00890b65    5d
                         mov              eax, 0x00000001                                // 0x00890b66    b801000000
                         pop              ebx                                            // 0x00890b6b    5b
                         add              esp, 0x10                                      // 0x00890b6c    83c410
                         ret                                                             // 0x00890b6f    c3
_jmp_addr_0x00890b70:    sub              esp, 0x10                                      // 0x00890b70    83ec10
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x00890b73    8b442414
                         push             ebx                                            // 0x00890b77    53
                         push             esi                                            // 0x00890b78    56
                         push             edi                                            // 0x00890b79    57
                         xor.s            edx, edx                                       // 0x00890b7a    33d2
                         xor.s            esi, esi                                       // 0x00890b7c    33f6
                         xor.s            edi, edi                                       // 0x00890b7e    33ff
                         xor.s            ebx, ebx                                       // 0x00890b80    33db
                         cmp.s            eax, edx                                       // 0x00890b82    3bc2
                         {disp8} mov      dword ptr [esp + 0x14], edx                    // 0x00890b84    89542414
                         {disp8} mov      dword ptr [esp + 0x18], edx                    // 0x00890b88    89542418
                         {disp8} mov      dword ptr [esp + 0x10], esi                    // 0x00890b8c    89742410
                         {disp8} mov      dword ptr [esp + 0x0c], edi                    // 0x00890b90    897c240c
                         {disp32} je      _jmp_addr_0x00890cc7                           // 0x00890b94    0f842d010000
                         cmp              byte ptr [eax], 0x00                           // 0x00890b9a    803800
                         {disp32} je      _jmp_addr_0x00890cc7                           // 0x00890b9d    0f8424010000
_jmp_addr_0x00890ba3:    cmp              byte ptr [eax], 0x21                           // 0x00890ba3    803821
                         {disp8} je       _jmp_addr_0x00890bac                           // 0x00890ba6    7404
                         inc              eax                                            // 0x00890ba8    40
                         inc              esi                                            // 0x00890ba9    46
                         {disp8} jmp      _jmp_addr_0x00890bdc                           // 0x00890baa    eb30
_jmp_addr_0x00890bac:    {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x00890bac    8a4801
                         inc              eax                                            // 0x00890baf    40
                         test             cl, cl                                         // 0x00890bb0    84c9
                         {disp8} mov      dword ptr [esp + 0x14], eax                    // 0x00890bb2    89442414
                         {disp8} je       _jmp_addr_0x00890bdc                           // 0x00890bb6    7424
_jmp_addr_0x00890bb8:    cmp              cl, 0x40                                       // 0x00890bb8    80f940
                         {disp8} je       _jmp_addr_0x00890bc1                           // 0x00890bbb    7404
                         inc              eax                                            // 0x00890bbd    40
                         inc              edi                                            // 0x00890bbe    47
                         {disp8} jmp      _jmp_addr_0x00890bd6                           // 0x00890bbf    eb15
_jmp_addr_0x00890bc1:    {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x00890bc1    8a4801
                         inc              eax                                            // 0x00890bc4    40
                         test             cl, cl                                         // 0x00890bc5    84c9
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x00890bc7    89442418
                         {disp8} je       _jmp_addr_0x00890bd6                           // 0x00890bcb    7409
_jmp_addr_0x00890bcd:    {disp8} mov      cl, byte ptr [eax + 0x01]                      // 0x00890bcd    8a4801
                         inc              eax                                            // 0x00890bd0    40
                         inc              ebx                                            // 0x00890bd1    43
                         test             cl, cl                                         // 0x00890bd2    84c9
                         {disp8} jne      _jmp_addr_0x00890bcd                           // 0x00890bd4    75f7
_jmp_addr_0x00890bd6:    mov              cl, byte ptr [eax]                             // 0x00890bd6    8a08
                         test             cl, cl                                         // 0x00890bd8    84c9
                         {disp8} jne      _jmp_addr_0x00890bb8                           // 0x00890bda    75dc
_jmp_addr_0x00890bdc:    cmp              byte ptr [eax], 0x00                           // 0x00890bdc    803800
                         {disp8} jne      _jmp_addr_0x00890ba3                           // 0x00890bdf    75c2
                         cmp.s            esi, edx                                       // 0x00890be1    3bf2
                         push             ebp                                            // 0x00890be3    55
                         {disp8} mov      dword ptr [esp + 0x10], edi                    // 0x00890be4    897c2410
                         {disp8} mov      dword ptr [esp + 0x14], esi                    // 0x00890be8    89742414
                         {disp8} je       _jmp_addr_0x00890c2a                           // 0x00890bec    743c
                         {disp8} lea      eax, dword ptr [esi + 0x01]                    // 0x00890bee    8d4601
                         push             eax                                            // 0x00890bf1    50
                         call             _malloc                                        // 0x00890bf2    e8555af3ff
                         {disp8} mov      ebp, dword ptr [esp + 0x2c]                    // 0x00890bf7    8b6c242c
                         add              esp, 0x04                                      // 0x00890bfb    83c404
                         test             eax, eax                                       // 0x00890bfe    85c0
                         {disp8} mov      dword ptr [ebp + 0x08], eax                    // 0x00890c00    894508
                         {disp8} je       _jmp_addr_0x00890c31                           // 0x00890c03    742c
                         mov.s            ecx, esi                                       // 0x00890c05    8bce
                         {disp8} mov      esi, dword ptr [esp + 0x24]                    // 0x00890c07    8b742424
                         mov.s            edx, ecx                                       // 0x00890c0b    8bd1
                         mov.s            edi, eax                                       // 0x00890c0d    8bf8
                         shr              ecx, 2                                         // 0x00890c0f    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00890c12    f3a5
                         mov.s            ecx, edx                                       // 0x00890c14    8bca
                         and              ecx, 0x03                                      // 0x00890c16    83e103
                         rep movsb                                                       // 0x00890c19    f3a4
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                    // 0x00890c1b    8b4508
                         {disp8} mov      edi, dword ptr [esp + 0x10]                    // 0x00890c1e    8b7c2410
                         mov.s            ecx, edx                                       // 0x00890c22    8bca
                         mov              byte ptr [eax + ecx * 0x1], 0x00               // 0x00890c24    c6040800
                         {disp8} jmp      _jmp_addr_0x00890c31                           // 0x00890c28    eb07
_jmp_addr_0x00890c2a:    {disp8} mov      ebp, dword ptr [esp + 0x28]                    // 0x00890c2a    8b6c2428
                         {disp8} mov      dword ptr [ebp + 0x08], edx                    // 0x00890c2e    895508
_jmp_addr_0x00890c31:    test             edi, edi                                       // 0x00890c31    85ff
                         {disp8} je       _jmp_addr_0x00890c6b                           // 0x00890c33    7436
                         {disp8} lea      edx, dword ptr [edi + 0x01]                    // 0x00890c35    8d5701
                         push             edx                                            // 0x00890c38    52
                         call             _malloc                                        // 0x00890c39    e80e5af3ff
                         add              esp, 0x04                                      // 0x00890c3e    83c404
                         {disp8} mov      dword ptr [ebp + 0x0c], eax                    // 0x00890c41    89450c
                         test             eax, eax                                       // 0x00890c44    85c0
                         {disp8} je       _jmp_addr_0x00890c72                           // 0x00890c46    742a
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x00890c48    8b742418
                         mov.s            ecx, edi                                       // 0x00890c4c    8bcf
                         mov.s            edi, eax                                       // 0x00890c4e    8bf8
                         mov.s            eax, ecx                                       // 0x00890c50    8bc1
                         shr              ecx, 2                                         // 0x00890c52    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00890c55    f3a5
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x00890c57    8b542410
                         mov.s            ecx, eax                                       // 0x00890c5b    8bc8
                         and              ecx, 0x03                                      // 0x00890c5d    83e103
                         rep movsb                                                       // 0x00890c60    f3a4
                         {disp8} mov      ecx, dword ptr [ebp + 0x0c]                    // 0x00890c62    8b4d0c
                         mov              byte ptr [ecx + edx * 0x1], 0x00               // 0x00890c65    c6041100
                         {disp8} jmp      _jmp_addr_0x00890c72                           // 0x00890c69    eb07
_jmp_addr_0x00890c6b:    {disp8} mov      dword ptr [ebp + 0x0c], 0x00000000             // 0x00890c6b    c7450c00000000
_jmp_addr_0x00890c72:    test             ebx, ebx                                       // 0x00890c72    85db
                         {disp8} je       _jmp_addr_0x00890cb3                           // 0x00890c74    743d
                         {disp8} lea      eax, dword ptr [ebx + 0x01]                    // 0x00890c76    8d4301
                         push             eax                                            // 0x00890c79    50
                         call             _malloc                                        // 0x00890c7a    e8cd59f3ff
                         add              esp, 0x04                                      // 0x00890c7f    83c404
                         {disp8} mov      dword ptr [ebp + 0x10], eax                    // 0x00890c82    894510
                         test             eax, eax                                       // 0x00890c85    85c0
                         {disp8} je       _jmp_addr_0x00890cba                           // 0x00890c87    7431
                         {disp8} mov      esi, dword ptr [esp + 0x1c]                    // 0x00890c89    8b74241c
                         mov.s            ecx, ebx                                       // 0x00890c8d    8bcb
                         mov.s            edx, ecx                                       // 0x00890c8f    8bd1
                         mov.s            edi, eax                                       // 0x00890c91    8bf8
                         shr              ecx, 2                                         // 0x00890c93    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00890c96    f3a5
                         mov.s            ecx, edx                                       // 0x00890c98    8bca
                         and              ecx, 0x03                                      // 0x00890c9a    83e103
                         rep movsb                                                       // 0x00890c9d    f3a4
                         {disp8} mov      eax, dword ptr [ebp + 0x10]                    // 0x00890c9f    8b4510
                         pop              ebp                                            // 0x00890ca2    5d
                         pop              edi                                            // 0x00890ca3    5f
                         pop              esi                                            // 0x00890ca4    5e
                         mov              byte ptr [eax + ebx * 0x1], 0x00               // 0x00890ca5    c6041800
                         mov              eax, 0x00000001                                // 0x00890ca9    b801000000
                         pop              ebx                                            // 0x00890cae    5b
                         add              esp, 0x10                                      // 0x00890caf    83c410
                         ret                                                             // 0x00890cb2    c3
_jmp_addr_0x00890cb3:    {disp8} mov      dword ptr [ebp + 0x10], 0x00000000             // 0x00890cb3    c7451000000000
_jmp_addr_0x00890cba:    pop              ebp                                            // 0x00890cba    5d
                         pop              edi                                            // 0x00890cbb    5f
                         pop              esi                                            // 0x00890cbc    5e
                         mov              eax, 0x00000001                                // 0x00890cbd    b801000000
                         pop              ebx                                            // 0x00890cc2    5b
                         add              esp, 0x10                                      // 0x00890cc3    83c410
                         ret                                                             // 0x00890cc6    c3
_jmp_addr_0x00890cc7:    pop              edi                                            // 0x00890cc7    5f
                         pop              esi                                            // 0x00890cc8    5e
                         xor.s            eax, eax                                       // 0x00890cc9    33c0
                         pop              ebx                                            // 0x00890ccb    5b
                         add              esp, 0x10                                      // 0x00890ccc    83c410
                         ret                                                             // 0x00890ccf    c3
_jmp_addr_0x00890cd0:    push             0x00890d00                                     // 0x00890cd0    68000d8900
                         push             0x00000080                                     // 0x00890cd5    6880000000
                         push             0x18                                           // 0x00890cda    6a18
                         call             _jmp_addr_0x00887d90                           // 0x00890cdc    e8af70ffff
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x00890ce1    8b4c2410
                         add              esp, 0x0c                                      // 0x00890ce5    83c40c
                         xor.s            edx, edx                                       // 0x00890ce8    33d2
                         test             eax, eax                                       // 0x00890cea    85c0
                         setne            dl                                             // 0x00890cec    0f95c2
                         {disp32} mov     dword ptr [ecx + 0x00000390], eax              // 0x00890cef    898190030000
                         mov.s            eax, edx                                       // 0x00890cf5    8bc2
                         ret                                                             // 0x00890cf7    c3
                         nop                                                             // 0x00890cf8    90
                         nop                                                             // 0x00890cf9    90
                         nop                                                             // 0x00890cfa    90
                         nop                                                             // 0x00890cfb    90
                         nop                                                             // 0x00890cfc    90
                         nop                                                             // 0x00890cfd    90
                         nop                                                             // 0x00890cfe    90
                         nop                                                             // 0x00890cff    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00890d00    8b442404
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                    // 0x00890d04    8b4814
                         push             ecx                                            // 0x00890d07    51
                         call             _free                                          // 0x00890d08    e8795af3ff
                         pop              ecx                                            // 0x00890d0d    59
                         ret                                                             // 0x00890d0e    c3
                         nop                                                             // 0x00890d0f    90
_jmp_addr_0x00890d10:    push             ebx                                            // 0x00890d10    53
                         {disp8} mov      ebx, dword ptr [esp + 0x08]                    // 0x00890d11    8b5c2408
                         {disp32} mov     eax, dword ptr [ebx + 0x00000390]              // 0x00890d15    8b8390030000
                         test             eax, eax                                       // 0x00890d1b    85c0
                         {disp8} je       _jmp_addr_0x00890d5e                           // 0x00890d1d    743f
                         push             esi                                            // 0x00890d1f    56
                         push             edi                                            // 0x00890d20    57
                         push             eax                                            // 0x00890d21    50
                         call             _jmp_addr_0x00887e40                           // 0x00890d22    e81971ffff
                         mov.s            edi, eax                                       // 0x00890d27    8bf8
                         add              esp, 0x04                                      // 0x00890d29    83c404
                         xor.s            esi, esi                                       // 0x00890d2c    33f6
                         test             edi, edi                                       // 0x00890d2e    85ff
                         {disp8} jle      _jmp_addr_0x00890d4d                           // 0x00890d30    7e1b
_jmp_addr_0x00890d32:    {disp32} mov     eax, dword ptr [ebx + 0x00000390]              // 0x00890d32    8b8390030000
                         push             esi                                            // 0x00890d38    56
                         push             eax                                            // 0x00890d39    50
                         call             _jmp_addr_0x00887e50                           // 0x00890d3a    e81171ffff
                         push             eax                                            // 0x00890d3f    50
                         call             _jmp_addr_0x00890d60                           // 0x00890d40    e81b000000
                         add              esp, 0x0c                                      // 0x00890d45    83c40c
                         inc              esi                                            // 0x00890d48    46
                         cmp.s            esi, edi                                       // 0x00890d49    3bf7
                         {disp8} jl       _jmp_addr_0x00890d32                           // 0x00890d4b    7ce5
_jmp_addr_0x00890d4d:    {disp32} mov     ecx, dword ptr [ebx + 0x00000390]              // 0x00890d4d    8b8b90030000
                         push             ecx                                            // 0x00890d53    51
                         call             _jmp_addr_0x00887de0                           // 0x00890d54    e88770ffff
                         add              esp, 0x04                                      // 0x00890d59    83c404
                         pop              edi                                            // 0x00890d5c    5f
                         pop              esi                                            // 0x00890d5d    5e
_jmp_addr_0x00890d5e:    pop              ebx                                            // 0x00890d5e    5b
                         ret                                                             // 0x00890d5f    c3
_jmp_addr_0x00890d60:    push             ebx                                            // 0x00890d60    53
                         push             esi                                            // 0x00890d61    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x00890d62    8b74240c
                         push             edi                                            // 0x00890d66    57
                         mov              eax, dword ptr [esi]                           // 0x00890d67    8b06
                         cmp              eax, 0x1b                                      // 0x00890d69    83f81b
                         {disp32} ja      _jmp_addr_0x00891094                           // 0x00890d6c    0f8722030000
                         jmp              dword ptr [eax*4 + 0x8910a4]                   // 0x00890d72    ff2485a4108900
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00890d79    8b4608
                         mov              ecx, dword ptr [eax]                           // 0x00890d7c    8b08
                         push             ecx                                            // 0x00890d7e    51
                         call             _free                                          // 0x00890d7f    e8025af3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00890d84    8b4608
                         add              esp, 0x04                                      // 0x00890d87    83c404
                         push             eax                                            // 0x00890d8a    50
                         call             _free                                          // 0x00890d8b    e8f659f3ff
                         add              esp, 0x04                                      // 0x00890d90    83c404
                         pop              edi                                            // 0x00890d93    5f
                         pop              esi                                            // 0x00890d94    5e
                         pop              ebx                                            // 0x00890d95    5b
                         ret                                                             // 0x00890d96    c3
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890d97    8b7e08
                         mov              eax, dword ptr [edi]                           // 0x00890d9a    8b07
                         push             eax                                            // 0x00890d9c    50
                         call             _free                                          // 0x00890d9d    e8e459f3ff
                         {disp8} mov      ecx, dword ptr [edi + 0x04]                    // 0x00890da2    8b4f04
                         push             ecx                                            // 0x00890da5    51
                         {disp32} jmp     _jmp_addr_0x0089108c                           // 0x00890da6    e9e1020000
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890dab    8b7e08
                         mov              ecx, dword ptr [edi]                           // 0x00890dae    8b0f
                         push             ecx                                            // 0x00890db0    51
                         call             _free                                          // 0x00890db1    e8d059f3ff
                         {disp8} mov      edx, dword ptr [edi + 0x04]                    // 0x00890db6    8b5704
                         push             edx                                            // 0x00890db9    52
                         call             _free                                          // 0x00890dba    e8c759f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x0c]                    // 0x00890dbf    8b470c
                         push             eax                                            // 0x00890dc2    50
                         call             _free                                          // 0x00890dc3    e8be59f3ff
                         {disp8} mov      ecx, dword ptr [edi + 0x10]                    // 0x00890dc8    8b4f10
                         push             ecx                                            // 0x00890dcb    51
                         call             _free                                          // 0x00890dcc    e8b559f3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00890dd1    8b4608
                         add              esp, 0x10                                      // 0x00890dd4    83c410
                         push             eax                                            // 0x00890dd7    50
                         call             _free                                          // 0x00890dd8    e8a959f3ff
                         add              esp, 0x04                                      // 0x00890ddd    83c404
                         pop              edi                                            // 0x00890de0    5f
                         pop              esi                                            // 0x00890de1    5e
                         pop              ebx                                            // 0x00890de2    5b
                         ret                                                             // 0x00890de3    c3
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890de4    8b7e08
                         mov              edx, dword ptr [edi]                           // 0x00890de7    8b17
                         push             edx                                            // 0x00890de9    52
                         call             _free                                          // 0x00890dea    e89759f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x00890def    8b4704
                         push             eax                                            // 0x00890df2    50
                         call             _free                                          // 0x00890df3    e88e59f3ff
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                    // 0x00890df8    8b4f08
                         push             ecx                                            // 0x00890dfb    51
                         call             _free                                          // 0x00890dfc    e88559f3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00890e01    8b4608
                         add              esp, 0x0c                                      // 0x00890e04    83c40c
                         push             eax                                            // 0x00890e07    50
                         call             _free                                          // 0x00890e08    e87959f3ff
                         add              esp, 0x04                                      // 0x00890e0d    83c404
                         pop              edi                                            // 0x00890e10    5f
                         pop              esi                                            // 0x00890e11    5e
                         pop              ebx                                            // 0x00890e12    5b
                         ret                                                             // 0x00890e13    c3
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890e14    8b7e08
                         mov              edx, dword ptr [edi]                           // 0x00890e17    8b17
                         push             edx                                            // 0x00890e19    52
                         call             _free                                          // 0x00890e1a    e86759f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x00890e1f    8b4704
                         push             eax                                            // 0x00890e22    50
                         {disp32} jmp     _jmp_addr_0x0089108c                           // 0x00890e23    e964020000
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890e28    8b7e08
                         mov              ecx, dword ptr [edi]                           // 0x00890e2b    8b0f
                         push             ecx                                            // 0x00890e2d    51
                         call             _free                                          // 0x00890e2e    e85359f3ff
                         {disp8} mov      edx, dword ptr [edi + 0x04]                    // 0x00890e33    8b5704
                         {disp32} jmp     _jmp_addr_0x0089108b                           // 0x00890e36    e950020000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x00890e3b    8b5608
                         mov              eax, dword ptr [edx]                           // 0x00890e3e    8b02
                         push             eax                                            // 0x00890e40    50
                         call             _free                                          // 0x00890e41    e84059f3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00890e46    8b4608
                         add              esp, 0x04                                      // 0x00890e49    83c404
                         push             eax                                            // 0x00890e4c    50
                         call             _free                                          // 0x00890e4d    e83459f3ff
                         add              esp, 0x04                                      // 0x00890e52    83c404
                         pop              edi                                            // 0x00890e55    5f
                         pop              esi                                            // 0x00890e56    5e
                         pop              ebx                                            // 0x00890e57    5b
                         ret                                                             // 0x00890e58    c3
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890e59    8b7e08
                         {disp32} jmp     _jmp_addr_0x0089107f                           // 0x00890e5c    e91e020000
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890e61    8b7e08
                         xor.s            ebx, ebx                                       // 0x00890e64    33db
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x00890e66    8b4704
                         test             eax, eax                                       // 0x00890e69    85c0
                         {disp8} jle      _jmp_addr_0x00890e90                           // 0x00890e6b    7e23
_jmp_addr_0x00890e6d:    {disp8} mov      eax, dword ptr [edi + 0x08]                    // 0x00890e6d    8b4708
                         mov              ecx, dword ptr [eax + ebx * 0x4]               // 0x00890e70    8b0c98
                         push             ecx                                            // 0x00890e73    51
                         call             _free                                          // 0x00890e74    e80d59f3ff
                         {disp8} mov      edx, dword ptr [edi + 0x0c]                    // 0x00890e79    8b570c
                         mov              eax, dword ptr [edx + ebx * 0x4]               // 0x00890e7c    8b049a
                         push             eax                                            // 0x00890e7f    50
                         call             _free                                          // 0x00890e80    e80159f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x00890e85    8b4704
                         add              esp, 0x08                                      // 0x00890e88    83c408
                         inc              ebx                                            // 0x00890e8b    43
                         cmp.s            ebx, eax                                       // 0x00890e8c    3bd8
                         {disp8} jl       _jmp_addr_0x00890e6d                           // 0x00890e8e    7cdd
_jmp_addr_0x00890e90:    {disp8} mov      ecx, dword ptr [edi + 0x08]                    // 0x00890e90    8b4f08
                         push             ecx                                            // 0x00890e93    51
                         call             _free                                          // 0x00890e94    e8ed58f3ff
                         {disp8} mov      edx, dword ptr [edi + 0x0c]                    // 0x00890e99    8b570c
                         push             edx                                            // 0x00890e9c    52
                         call             _free                                          // 0x00890e9d    e8e458f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x10]                    // 0x00890ea2    8b4710
                         push             eax                                            // 0x00890ea5    50
                         call             _free                                          // 0x00890ea6    e8db58f3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00890eab    8b4608
                         add              esp, 0x0c                                      // 0x00890eae    83c40c
                         push             eax                                            // 0x00890eb1    50
                         call             _free                                          // 0x00890eb2    e8cf58f3ff
                         add              esp, 0x04                                      // 0x00890eb7    83c404
                         pop              edi                                            // 0x00890eba    5f
                         pop              esi                                            // 0x00890ebb    5e
                         pop              ebx                                            // 0x00890ebc    5b
                         ret                                                             // 0x00890ebd    c3
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x00890ebe    8b4e08
                         {disp8} mov      edx, dword ptr [ecx + 0x04]                    // 0x00890ec1    8b5104
                         push             edx                                            // 0x00890ec4    52
                         call             _free                                          // 0x00890ec5    e8bc58f3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00890eca    8b4608
                         add              esp, 0x04                                      // 0x00890ecd    83c404
                         push             eax                                            // 0x00890ed0    50
                         call             _free                                          // 0x00890ed1    e8b058f3ff
                         add              esp, 0x04                                      // 0x00890ed6    83c404
                         pop              edi                                            // 0x00890ed9    5f
                         pop              esi                                            // 0x00890eda    5e
                         pop              ebx                                            // 0x00890edb    5b
                         ret                                                             // 0x00890edc    c3
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890edd    8b7e08
                         {disp8} mov      ecx, dword ptr [edi + 0x04]                    // 0x00890ee0    8b4f04
                         {disp32} jmp     _jmp_addr_0x00891082                           // 0x00890ee3    e99a010000
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890ee8    8b7e08
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x00890eeb    8b4704
                         push             eax                                            // 0x00890eee    50
                         call             _free                                          // 0x00890eef    e89258f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x08]                    // 0x00890ef4    8b4708
                         add              esp, 0x04                                      // 0x00890ef7    83c404
                         xor.s            ebx, ebx                                       // 0x00890efa    33db
                         test             eax, eax                                       // 0x00890efc    85c0
                         {disp8} jle      _jmp_addr_0x00890f17                           // 0x00890efe    7e17
_jmp_addr_0x00890f00:    {disp8} mov      ecx, dword ptr [edi + 0x0c]                    // 0x00890f00    8b4f0c
                         mov              edx, dword ptr [ecx + ebx * 0x4]               // 0x00890f03    8b1499
                         push             edx                                            // 0x00890f06    52
                         call             _free                                          // 0x00890f07    e87a58f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x08]                    // 0x00890f0c    8b4708
                         add              esp, 0x04                                      // 0x00890f0f    83c404
                         inc              ebx                                            // 0x00890f12    43
                         cmp.s            ebx, eax                                       // 0x00890f13    3bd8
                         {disp8} jl       _jmp_addr_0x00890f00                           // 0x00890f15    7ce9
_jmp_addr_0x00890f17:    {disp8} mov      eax, dword ptr [edi + 0x0c]                    // 0x00890f17    8b470c
                         push             eax                                            // 0x00890f1a    50
                         call             _free                                          // 0x00890f1b    e86658f3ff
                         {disp8} mov      ecx, dword ptr [edi + 0x10]                    // 0x00890f20    8b4f10
                         push             ecx                                            // 0x00890f23    51
                         {disp32} jmp     _jmp_addr_0x0089108c                           // 0x00890f24    e963010000
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890f29    8b7e08
                         {disp8} mov      edx, dword ptr [edi + 0x04]                    // 0x00890f2c    8b5704
                         push             edx                                            // 0x00890f2f    52
                         call             _free                                          // 0x00890f30    e85158f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x08]                    // 0x00890f35    8b4708
                         push             eax                                            // 0x00890f38    50
                         call             _free                                          // 0x00890f39    e84858f3ff
                         {disp8} mov      ecx, dword ptr [edi + 0x0c]                    // 0x00890f3e    8b4f0c
                         push             ecx                                            // 0x00890f41    51
                         call             _free                                          // 0x00890f42    e83f58f3ff
                         {disp8} mov      edx, dword ptr [edi + 0x10]                    // 0x00890f47    8b5710
                         push             edx                                            // 0x00890f4a    52
                         call             _free                                          // 0x00890f4b    e83658f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x14]                    // 0x00890f50    8b4714
                         add              esp, 0x10                                      // 0x00890f53    83c410
                         xor.s            ebx, ebx                                       // 0x00890f56    33db
                         test             eax, eax                                       // 0x00890f58    85c0
                         {disp8} jle      _jmp_addr_0x00890f73                           // 0x00890f5a    7e17
_jmp_addr_0x00890f5c:    {disp8} mov      eax, dword ptr [edi + 0x18]                    // 0x00890f5c    8b4718
                         mov              ecx, dword ptr [eax + ebx * 0x4]               // 0x00890f5f    8b0c98
                         push             ecx                                            // 0x00890f62    51
                         call             _free                                          // 0x00890f63    e81e58f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x14]                    // 0x00890f68    8b4714
                         add              esp, 0x04                                      // 0x00890f6b    83c404
                         inc              ebx                                            // 0x00890f6e    43
                         cmp.s            ebx, eax                                       // 0x00890f6f    3bd8
                         {disp8} jl       _jmp_addr_0x00890f5c                           // 0x00890f71    7ce9
_jmp_addr_0x00890f73:    {disp8} mov      edx, dword ptr [edi + 0x18]                    // 0x00890f73    8b5718
                         push             edx                                            // 0x00890f76    52
                         call             _free                                          // 0x00890f77    e80a58f3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00890f7c    8b4608
                         add              esp, 0x04                                      // 0x00890f7f    83c404
                         push             eax                                            // 0x00890f82    50
                         call             _free                                          // 0x00890f83    e8fe57f3ff
                         add              esp, 0x04                                      // 0x00890f88    83c404
                         pop              edi                                            // 0x00890f8b    5f
                         pop              esi                                            // 0x00890f8c    5e
                         pop              ebx                                            // 0x00890f8d    5b
                         ret                                                             // 0x00890f8e    c3
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890f8f    8b7e08
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x00890f92    8b4704
                         push             eax                                            // 0x00890f95    50
                         call             _free                                          // 0x00890f96    e8eb57f3ff
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                    // 0x00890f9b    8b4f08
                         push             ecx                                            // 0x00890f9e    51
                         call             _free                                          // 0x00890f9f    e8e257f3ff
                         {disp8} mov      edx, dword ptr [edi + 0x0c]                    // 0x00890fa4    8b570c
                         push             edx                                            // 0x00890fa7    52
                         call             _free                                          // 0x00890fa8    e8d957f3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00890fad    8b4608
                         add              esp, 0x0c                                      // 0x00890fb0    83c40c
                         push             eax                                            // 0x00890fb3    50
                         call             _free                                          // 0x00890fb4    e8cd57f3ff
                         add              esp, 0x04                                      // 0x00890fb9    83c404
                         pop              edi                                            // 0x00890fbc    5f
                         pop              esi                                            // 0x00890fbd    5e
                         pop              ebx                                            // 0x00890fbe    5b
                         ret                                                             // 0x00890fbf    c3
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890fc0    8b7e08
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x00890fc3    8b4704
                         push             eax                                            // 0x00890fc6    50
                         call             _free                                          // 0x00890fc7    e8ba57f3ff
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                    // 0x00890fcc    8b4f08
                         push             ecx                                            // 0x00890fcf    51
                         {disp32} jmp     _jmp_addr_0x0089108c                           // 0x00890fd0    e9b7000000
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00890fd5    8b7e08
                         {disp8} mov      edx, dword ptr [edi + 0x04]                    // 0x00890fd8    8b5704
                         push             edx                                            // 0x00890fdb    52
                         call             _free                                          // 0x00890fdc    e8a557f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x08]                    // 0x00890fe1    8b4708
                         add              esp, 0x04                                      // 0x00890fe4    83c404
                         xor.s            ebx, ebx                                       // 0x00890fe7    33db
                         test             eax, eax                                       // 0x00890fe9    85c0
                         {disp8} jle      _jmp_addr_0x00891004                           // 0x00890feb    7e17
_jmp_addr_0x00890fed:    {disp8} mov      eax, dword ptr [edi + 0x0c]                    // 0x00890fed    8b470c
                         mov              ecx, dword ptr [eax + ebx * 0x4]               // 0x00890ff0    8b0c98
                         push             ecx                                            // 0x00890ff3    51
                         call             _free                                          // 0x00890ff4    e88d57f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x08]                    // 0x00890ff9    8b4708
                         add              esp, 0x04                                      // 0x00890ffc    83c404
                         inc              ebx                                            // 0x00890fff    43
                         cmp.s            ebx, eax                                       // 0x00891000    3bd8
                         {disp8} jl       _jmp_addr_0x00890fed                           // 0x00891002    7ce9
_jmp_addr_0x00891004:    {disp8} mov      edx, dword ptr [edi + 0x0c]                    // 0x00891004    8b570c
                         push             edx                                            // 0x00891007    52
                         call             _free                                          // 0x00891008    e87957f3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x0089100d    8b4608
                         add              esp, 0x04                                      // 0x00891010    83c404
                         push             eax                                            // 0x00891013    50
                         call             _free                                          // 0x00891014    e86d57f3ff
                         add              esp, 0x04                                      // 0x00891019    83c404
                         pop              edi                                            // 0x0089101c    5f
                         pop              esi                                            // 0x0089101d    5e
                         pop              ebx                                            // 0x0089101e    5b
                         ret                                                             // 0x0089101f    c3
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00891020    8b4608
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x00891023    8b4804
                         push             ecx                                            // 0x00891026    51
                         call             _free                                          // 0x00891027    e85a57f3ff
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x0089102c    8b4608
                         add              esp, 0x04                                      // 0x0089102f    83c404
                         push             eax                                            // 0x00891032    50
                         call             _free                                          // 0x00891033    e84e57f3ff
                         add              esp, 0x04                                      // 0x00891038    83c404
                         pop              edi                                            // 0x0089103b    5f
                         pop              esi                                            // 0x0089103c    5e
                         pop              ebx                                            // 0x0089103d    5b
                         ret                                                             // 0x0089103e    c3
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x0089103f    8b7e08
                         {disp8} mov      edx, dword ptr [edi + 0x04]                    // 0x00891042    8b5704
                         push             edx                                            // 0x00891045    52
                         call             _free                                          // 0x00891046    e83b57f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x08]                    // 0x0089104b    8b4708
                         push             eax                                            // 0x0089104e    50
                         {disp8} jmp      _jmp_addr_0x0089108c                           // 0x0089104f    eb3b
                         {disp8} mov      edi, dword ptr [esi + 0x08]                    // 0x00891051    8b7e08
                         mov              ecx, dword ptr [edi]                           // 0x00891054    8b0f
                         push             ecx                                            // 0x00891056    51
                         call             _free                                          // 0x00891057    e82a57f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x0089105c    8b4704
                         add              esp, 0x04                                      // 0x0089105f    83c404
                         xor.s            ebx, ebx                                       // 0x00891062    33db
                         test             eax, eax                                       // 0x00891064    85c0
                         {disp8} jle      _jmp_addr_0x0089107f                           // 0x00891066    7e17
_jmp_addr_0x00891068:    {disp8} mov      edx, dword ptr [edi + 0x08]                    // 0x00891068    8b5708
                         mov              eax, dword ptr [edx + ebx * 0x4]               // 0x0089106b    8b049a
                         push             eax                                            // 0x0089106e    50
                         call             _free                                          // 0x0089106f    e81257f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x00891074    8b4704
                         add              esp, 0x04                                      // 0x00891077    83c404
                         inc              ebx                                            // 0x0089107a    43
                         cmp.s            ebx, eax                                       // 0x0089107b    3bd8
                         {disp8} jl       _jmp_addr_0x00891068                           // 0x0089107d    7ce9
_jmp_addr_0x0089107f:    {disp8} mov      ecx, dword ptr [edi + 0x08]                    // 0x0089107f    8b4f08
_jmp_addr_0x00891082:    push             ecx                                            // 0x00891082    51
                         call             _free                                          // 0x00891083    e8fe56f3ff
                         {disp8} mov      edx, dword ptr [edi + 0x0c]                    // 0x00891088    8b570c
_jmp_addr_0x0089108b:    push             edx                                            // 0x0089108b    52
_jmp_addr_0x0089108c:    call             _free                                          // 0x0089108c    e8f556f3ff
                         add              esp, 0x08                                      // 0x00891091    83c408
_jmp_addr_0x00891094:    {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x00891094    8b4608
                         push             eax                                            // 0x00891097    50
                         call             _free                                          // 0x00891098    e8e956f3ff
                         add              esp, 0x04                                      // 0x0089109d    83c404
                         pop              edi                                            // 0x008910a0    5f
                         pop              esi                                            // 0x008910a1    5e
                         pop              ebx                                            // 0x008910a2    5b
                         ret                                                             // 0x008910a3    c3

// Snippet: jmptbl, [0x008910a4, 0x00891114)
.byte 0x79, 0x0d, 0x89, 0x00      // 0x008910a4
.byte 0x3b, 0x0e, 0x89, 0x00      // 0x008910a8
.byte 0x28, 0x0e, 0x89, 0x00      // 0x008910ac
.byte 0x97, 0x0d, 0x89, 0x00      // 0x008910b0
.byte 0xe4, 0x0d, 0x89, 0x00      // 0x008910b4
.byte 0xe4, 0x0d, 0x89, 0x00      // 0x008910b8
.byte 0x14, 0x0e, 0x89, 0x00      // 0x008910bc
.byte 0xab, 0x0d, 0x89, 0x00      // 0x008910c0
.byte 0xe4, 0x0d, 0x89, 0x00      // 0x008910c4
.byte 0x14, 0x0e, 0x89, 0x00      // 0x008910c8
.byte 0x28, 0x0e, 0x89, 0x00      // 0x008910cc
.byte 0x97, 0x0d, 0x89, 0x00      // 0x008910d0
.byte 0x3b, 0x0e, 0x89, 0x00      // 0x008910d4
.byte 0x94, 0x10, 0x89, 0x00      // 0x008910d8
.byte 0x59, 0x0e, 0x89, 0x00      // 0x008910dc
.byte 0x61, 0x0e, 0x89, 0x00      // 0x008910e0
.byte 0xbe, 0x0e, 0x89, 0x00      // 0x008910e4
.byte 0xc0, 0x0f, 0x89, 0x00      // 0x008910e8
.byte 0x3f, 0x10, 0x89, 0x00      // 0x008910ec
.byte 0xdd, 0x0e, 0x89, 0x00      // 0x008910f0
.byte 0xe8, 0x0e, 0x89, 0x00      // 0x008910f4
.byte 0x29, 0x0f, 0x89, 0x00      // 0x008910f8
.byte 0x8f, 0x0f, 0x89, 0x00      // 0x008910fc
.byte 0xc0, 0x0f, 0x89, 0x00      // 0x00891100
.byte 0xd5, 0x0f, 0x89, 0x00      // 0x00891104
.byte 0x20, 0x10, 0x89, 0x00      // 0x00891108
.byte 0x3f, 0x10, 0x89, 0x00      // 0x0089110c
.byte 0x51, 0x10, 0x89, 0x00      // 0x00891110

// Snippet: db, [0x00891114, 0x00891120)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00891114
.byte 0x90, 0x90, 0x90, 0x90      // 0x00891118
.byte 0x90, 0x90, 0x90, 0x90      // 0x0089111c

