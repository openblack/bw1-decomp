.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _sprintf
.extern _atoi
.extern _malloc
.extern _free
.extern __strcmpi
.extern _strncpy
.extern _strchr
.extern _strtok
.extern _strstr
.extern _realloc
.extern _jmp_addr_0x008864d0
.extern _jmp_addr_0x008866a0
.extern _jmp_addr_0x008866b0
.extern _jmp_addr_0x00886a50
.extern _jmp_addr_0x00887d90
.extern _jmp_addr_0x00887de0
.extern _jmp_addr_0x00887e40
.extern _jmp_addr_0x00887e50
.extern _jmp_addr_0x00887e70
.extern _jmp_addr_0x00887e90
.extern _jmp_addr_0x00887fb0
.extern _jmp_addr_0x00888000
.extern _jmp_addr_0x0088a8d0
.extern _jmp_addr_0x0088a8e0
.extern _jmp_addr_0x0088a8f0
.extern _jmp_addr_0x0088a910
.extern _jmp_addr_0x0088d070
.extern _jmp_addr_0x0088d150
.extern _jmp_addr_0x0088fa60
.extern _jmp_addr_0x0088fad0
.extern _jmp_addr_0x008903c0
.extern _jmp_addr_0x00891120
.extern _jmp_addr_0x00892250
.extern _jmp_addr_0x008922b0
.extern _jmp_addr_0x00892410
.extern _jmp_addr_0x008924a0
.extern _jmp_addr_0x00892650
.extern _jmp_addr_0x00892670
.extern _jmp_addr_0x008926b0
.extern _jmp_addr_0x008926f0
.extern _jmp_addr_0x00892790
.extern _jmp_addr_0x008927c0
.extern _jmp_addr_0x008927e0
.extern _jmp_addr_0x00892840
.extern _jmp_addr_0x00892940
.extern _jmp_addr_0x008929b0
.extern _jmp_addr_0x00892a70
.extern _jmp_addr_0x00892b90
.extern _jmp_addr_0x00892e90
.extern _jmp_addr_0x00893410
.extern _jmp_addr_0x00893d00
.extern _jmp_addr_0x00893f30
.extern _jmp_addr_0x00896a80
.extern _jmp_addr_0x00896b80
.extern _jmp_addr_0x00897010
.extern _jmp_addr_0x008974c0
.extern _jmp_addr_0x008a507e
.extern _jmp_addr_0x008a5096
.extern _jmp_addr_0x008a50b4
.extern _jmp_addr_0x008a50c6
.extern _jmp_addr_0x008a50cc
.extern _jmp_addr_0x008a50d2
.extern _jmp_addr_0x008a50d8
.extern _jmp_addr_0x008a50de
.extern _jmp_addr_0x008a50ea
.extern _jmp_addr_0x008a50fc

.globl _jmp_addr_0x00896090
.globl _jmp_addr_0x008961b0
.globl _jmp_addr_0x00896210
.globl _jmp_addr_0x00896560
.globl _jmp_addr_0x008966f0
.globl _jmp_addr_0x008967a0
.globl _jmp_addr_0x00896830
.globl _jmp_addr_0x008969b0
.globl _jmp_addr_0x00896a30

start_0x00893fd0_0x00896a80:
// Snippet: asm, [0x00893fd0, 0x00896a63)
_jmp_addr_0x00893fd0:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00893fd0    8b442404
                         sub              esp, 0x08                                      // 0x00893fd4    83ec08
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x00893fd7    8b4808
                         test             ecx, ecx                                       // 0x00893fda    85c9
                         {disp8} je       _jmp_addr_0x00894019                           // 0x00893fdc    743b
                         xor.s            edx, edx                                       // 0x00893fde    33d2
                         push             0x8                                            // 0x00893fe0    6a08
                         {disp8} mov      dword ptr [esp + 0x04], edx                    // 0x00893fe2    89542404
                         push             0x0                                            // 0x00893fe6    6a00
                         {disp8} mov      dword ptr [esp + 0x0c], edx                    // 0x00893fe8    8954240c
                         {disp8} mov      edx, dword ptr [esp + 0x18]                    // 0x00893fec    8b542418
                         {disp8} mov      dword ptr [esp + 0x08], edx                    // 0x00893ff0    89542408
                         {disp32} lea     edx, dword ptr [eax + 0x00000160]              // 0x00893ff4    8d9060010000
                         {disp8} mov      dword ptr [esp + 0x0c], edx                    // 0x00893ffa    8954240c
                         {disp8} mov      edx, dword ptr [eax + 0x14]                    // 0x00893ffe    8b5014
                         push             0x0                                            // 0x00894001    6a00
                         push             edx                                            // 0x00894003    52
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x00894004    8d542410
                         push             edx                                            // 0x00894008    52
                         push             ecx                                            // 0x00894009    51
                         push             0x19                                           // 0x0089400a    6a19
                         push             eax                                            // 0x0089400c    50
                         call             _jmp_addr_0x00891120                           // 0x0089400d    e80ed1ffff
                         add              esp, 0x20                                      // 0x00894012    83c420
                         add              esp, 0x08                                      // 0x00894015    83c408
                         ret                                                             // 0x00894018    c3
_jmp_addr_0x00894019:    {disp8} mov      ecx, dword ptr [eax + 0x10]                    // 0x00894019    8b4810
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000             // 0x0089401c    c7400400000000
                         test             ecx, ecx                                       // 0x00894023    85c9
                         {disp8} je       _jmp_addr_0x00894033                           // 0x00894025    740c
                         {disp8} mov      edx, dword ptr [eax + 0x14]                    // 0x00894027    8b5014
                         push             edx                                            // 0x0089402a    52
                         push             0x0                                            // 0x0089402b    6a00
                         push             eax                                            // 0x0089402d    50
                         call             ecx                                            // 0x0089402e    ffd1
                         add              esp, 0x0c                                      // 0x00894030    83c40c
_jmp_addr_0x00894033:    add              esp, 0x08                                      // 0x00894033    83c408
                         ret                                                             // 0x00894036    c3
                         nop                                                             // 0x00894037    90
                         nop                                                             // 0x00894038    90
                         nop                                                             // 0x00894039    90
                         nop                                                             // 0x0089403a    90
                         nop                                                             // 0x0089403b    90
                         nop                                                             // 0x0089403c    90
                         nop                                                             // 0x0089403d    90
                         nop                                                             // 0x0089403e    90
                         nop                                                             // 0x0089403f    90
                         sub              esp, 0x14                                      // 0x00894040    83ec14
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                    // 0x00894043    8b4c241c
                         push             ebx                                            // 0x00894047    53
                         push             ebp                                            // 0x00894048    55
                         push             esi                                            // 0x00894049    56
                         {disp8} mov      eax, dword ptr [ecx + 0x24]                    // 0x0089404a    8b4124
                         push             edi                                            // 0x0089404d    57
                         cmp              eax, 0x02                                      // 0x0089404e    83f802
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000000             // 0x00894051    c744241000000000
                         {disp32} jne     _jmp_addr_0x00894211                           // 0x00894059    0f85b2010000
                         {disp8} mov      eax, dword ptr [ecx + 0x20]                    // 0x0089405f    8b4120
                         mov              ebx, dword ptr [eax]                           // 0x00894062    8b18
                         {disp8} mov      ebp, dword ptr [eax + 0x04]                    // 0x00894064    8b6804
                         {disp8} mov      eax, dword ptr [ecx + 0x08]                    // 0x00894067    8b4108
                         mov.s            edi, ebp                                       // 0x0089406a    8bfd
                         {disp8} mov      dword ptr [esp + 0x2c], eax                    // 0x0089406c    8944242c
                         or               ecx, 0xffffffff                                // 0x00894070    83c9ff
                         xor.s            eax, eax                                       // 0x00894073    33c0
                         repne scasb                                                     // 0x00894075    f2ae
                         {disp8} mov      al, byte ptr [ebp + 0x00]                      // 0x00894077    8a4500
                         mov              edi, 0x00c58370                                // 0x0089407a    bf7083c500
                         not              ecx                                            // 0x0089407f    f7d1
                         dec              ecx                                            // 0x00894081    49
                         cmp              al, 0x01                                       // 0x00894082    3c01
                         {disp8} jne      _jmp_addr_0x008940bf                           // 0x00894084    7539
                         {disp8} mov      al, byte ptr [ebp + 0x01]                      // 0x00894086    8a4501
                         {disp8} lea      esi, dword ptr [ebp + 0x01]                    // 0x00894089    8d7501
                         cmp              al, 0x41                                       // 0x0089408c    3c41
                         {disp8} jl       _jmp_addr_0x00894094                           // 0x0089408e    7c04
                         cmp              al, 0x5a                                       // 0x00894090    3c5a
                         {disp8} jle      _jmp_addr_0x0089409c                           // 0x00894092    7e08
_jmp_addr_0x00894094:    cmp              al, 0x61                                       // 0x00894094    3c61
                         {disp8} jl       _jmp_addr_0x008940bf                           // 0x00894096    7c27
                         cmp              al, 0x7a                                       // 0x00894098    3c7a
                         {disp8} jg       _jmp_addr_0x008940bf                           // 0x0089409a    7f23
_jmp_addr_0x0089409c:    cmp              byte ptr [ecx + ebp * 0x1 + -0x01], 0x01       // 0x0089409c    807c29ff01
                         {disp8} jne      _jmp_addr_0x008940bf                           // 0x008940a1    751c
                         push             0x20                                           // 0x008940a3    6a20
                         push             ebp                                            // 0x008940a5    55
                         {disp8} mov      byte ptr [ecx + ebp * 0x1 + -0x01], 0x00       // 0x008940a6    c64429ff00
                         call             _strchr                                        // 0x008940ab    e84051f3ff
                         add              esp, 0x08                                      // 0x008940b0    83c408
                         test             eax, eax                                       // 0x008940b3    85c0
                         {disp8} je       _jmp_addr_0x008940bf                           // 0x008940b5    7408
                         mov.s            edi, esi                                       // 0x008940b7    8bfe
                         mov              byte ptr [eax], 0x00                           // 0x008940b9    c60000
                         {disp8} lea      ebp, dword ptr [eax + 0x01]                    // 0x008940bc    8d6801
_jmp_addr_0x008940bf:    mov              esi, 0x00c3a360                                // 0x008940bf    be60a3c300
                         mov.s            eax, edi                                       // 0x008940c4    8bc7
_jmp_addr_0x008940c6:    mov              dl, byte ptr [eax]                             // 0x008940c6    8a10
                         mov.s            cl, dl                                         // 0x008940c8    8aca
                         cmp              dl, byte ptr [esi]                             // 0x008940ca    3a16
                         {disp8} jne      _jmp_addr_0x008940ea                           // 0x008940cc    751c
                         test             cl, cl                                         // 0x008940ce    84c9
                         {disp8} je       _jmp_addr_0x008940e6                           // 0x008940d0    7414
                         {disp8} mov      dl, byte ptr [eax + 0x01]                      // 0x008940d2    8a5001
                         mov.s            cl, dl                                         // 0x008940d5    8aca
                         cmp              dl, byte ptr [esi + 0x01]                      // 0x008940d7    3a5601
                         {disp8} jne      _jmp_addr_0x008940ea                           // 0x008940da    750e
                         add              eax, 0x02                                      // 0x008940dc    83c002
                         add              esi, 0x02                                      // 0x008940df    83c602
                         test             cl, cl                                         // 0x008940e2    84c9
                         {disp8} jne      _jmp_addr_0x008940c6                           // 0x008940e4    75e0
_jmp_addr_0x008940e6:    xor.s            eax, eax                                       // 0x008940e6    33c0
                         {disp8} jmp      _jmp_addr_0x008940ef                           // 0x008940e8    eb05
_jmp_addr_0x008940ea:    sbb.s            eax, eax                                       // 0x008940ea    1bc0
                         sbb              eax, -0x01                                     // 0x008940ec    83d8ff
_jmp_addr_0x008940ef:    test             eax, eax                                       // 0x008940ef    85c0
                         {disp8} jne      _jmp_addr_0x00894116                           // 0x008940f1    7523
                         {disp8} mov      eax, dword ptr [esp + 0x2c]                    // 0x008940f3    8b44242c
                         {disp8} mov      ecx, dword ptr [esp + 0x28]                    // 0x008940f7    8b4c2428
                         push             ebp                                            // 0x008940fb    55
                         push             eax                                            // 0x008940fc    50
                         add              ecx, 0x18                                      // 0x008940fd    83c118
                         push             0x00c3ac6c                                     // 0x00894100    686cacc300
                         push             ecx                                            // 0x00894105    51
                         call             _jmp_addr_0x008903c0                           // 0x00894106    e8b5c2ffff
                         add              esp, 0x10                                      // 0x0089410b    83c410
                         pop              edi                                            // 0x0089410e    5f
                         pop              esi                                            // 0x0089410f    5e
                         pop              ebp                                            // 0x00894110    5d
                         pop              ebx                                            // 0x00894111    5b
                         add              esp, 0x14                                      // 0x00894112    83c414
                         ret                                                             // 0x00894115    c3
_jmp_addr_0x00894116:    mov              esi, 0x00c3ac64                                // 0x00894116    be64acc300
                         mov.s            eax, edi                                       // 0x0089411b    8bc7
_jmp_addr_0x0089411d:    mov              dl, byte ptr [eax]                             // 0x0089411d    8a10
                         mov.s            cl, dl                                         // 0x0089411f    8aca
                         cmp              dl, byte ptr [esi]                             // 0x00894121    3a16
                         {disp8} jne      _jmp_addr_0x00894141                           // 0x00894123    751c
                         test             cl, cl                                         // 0x00894125    84c9
                         {disp8} je       _jmp_addr_0x0089413d                           // 0x00894127    7414
                         {disp8} mov      dl, byte ptr [eax + 0x01]                      // 0x00894129    8a5001
                         mov.s            cl, dl                                         // 0x0089412c    8aca
                         cmp              dl, byte ptr [esi + 0x01]                      // 0x0089412e    3a5601
                         {disp8} jne      _jmp_addr_0x00894141                           // 0x00894131    750e
                         add              eax, 0x02                                      // 0x00894133    83c002
                         add              esi, 0x02                                      // 0x00894136    83c602
                         test             cl, cl                                         // 0x00894139    84c9
                         {disp8} jne      _jmp_addr_0x0089411d                           // 0x0089413b    75e0
_jmp_addr_0x0089413d:    xor.s            eax, eax                                       // 0x0089413d    33c0
                         {disp8} jmp      _jmp_addr_0x00894146                           // 0x0089413f    eb05
_jmp_addr_0x00894141:    sbb.s            eax, eax                                       // 0x00894141    1bc0
                         sbb              eax, -0x01                                     // 0x00894143    83d8ff
_jmp_addr_0x00894146:    test             eax, eax                                       // 0x00894146    85c0
                         {disp8} jne      _jmp_addr_0x00894154                           // 0x00894148    750a
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000001             // 0x0089414a    c744241001000000
                         {disp8} jmp      _jmp_addr_0x0089415d                           // 0x00894152    eb09
_jmp_addr_0x00894154:    cmp              byte ptr [edi], 0x00                           // 0x00894154    803f00
                         {disp32} jne     _jmp_addr_0x00894211                           // 0x00894157    0f85b4000000
_jmp_addr_0x0089415d:    {disp8} mov      esi, dword ptr [esp + 0x28]                    // 0x0089415d    8b742428
                         {disp32} lea     eax, dword ptr [esi + 0x00000160]              // 0x00894161    8d8660010000
                         push             eax                                            // 0x00894167    50
                         push             ebx                                            // 0x00894168    53
                         call             __strcmpi                                      // 0x00894169    e8722bf3ff
                         add              esp, 0x08                                      // 0x0089416e    83c408
                         test             eax, eax                                       // 0x00894171    85c0
                         {disp8} jne      _jmp_addr_0x008941c4                           // 0x00894173    754f
                         {disp32} mov     eax, dword ptr [esi + 0x00000370]              // 0x00894175    8b8670030000
                         test             eax, eax                                       // 0x0089417b    85c0
                         {disp32} je      _jmp_addr_0x00894211                           // 0x0089417d    0f848e000000
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                    // 0x00894183    8b5c2410
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                    // 0x00894187    8b4c242c
                         xor.s            edx, edx                                       // 0x0089418b    33d2
                         {disp8} mov      dword ptr [esp + 0x14], ecx                    // 0x0089418d    894c2414
                         {disp32} mov     ecx, dword ptr [esi + 0x00000378]              // 0x00894191    8b8e78030000
                         push             0xc                                            // 0x00894197    6a0c
                         test             ebx, ebx                                       // 0x00894199    85db
                         setne            dl                                             // 0x0089419b    0f95c2
                         {disp8} mov      dword ptr [esp + 0x20], edx                    // 0x0089419e    89542420
                         push             0x0                                            // 0x008941a2    6a00
                         push             0x0                                            // 0x008941a4    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x20]                    // 0x008941a6    8d542420
                         push             ecx                                            // 0x008941aa    51
                         push             edx                                            // 0x008941ab    52
                         push             eax                                            // 0x008941ac    50
                         push             0x2                                            // 0x008941ad    6a02
                         push             esi                                            // 0x008941af    56
                         {disp8} mov      dword ptr [esp + 0x38], ebp                    // 0x008941b0    896c2438
                         call             _jmp_addr_0x00891120                           // 0x008941b4    e867cfffff
                         add              esp, 0x20                                      // 0x008941b9    83c420
                         pop              edi                                            // 0x008941bc    5f
                         pop              esi                                            // 0x008941bd    5e
                         pop              ebp                                            // 0x008941be    5d
                         pop              ebx                                            // 0x008941bf    5b
                         add              esp, 0x14                                      // 0x008941c0    83c414
                         ret                                                             // 0x008941c3    c3
_jmp_addr_0x008941c4:    push             ebx                                            // 0x008941c4    53
                         push             esi                                            // 0x008941c5    56
                         call             _jmp_addr_0x008924a0                           // 0x008941c6    e8d5e2ffff
                         add              esp, 0x08                                      // 0x008941cb    83c408
                         test             eax, eax                                       // 0x008941ce    85c0
                         {disp8} je       _jmp_addr_0x00894211                           // 0x008941d0    743f
                         mov              ecx, dword ptr [eax]                           // 0x008941d2    8b08
                         test             ecx, ecx                                       // 0x008941d4    85c9
                         {disp8} je       _jmp_addr_0x00894211                           // 0x008941d6    7439
                         {disp8} mov      edx, dword ptr [esp + 0x2c]                    // 0x008941d8    8b54242c
                         {disp8} mov      edi, dword ptr [esp + 0x10]                    // 0x008941dc    8b7c2410
                         {disp8} mov      eax, dword ptr [eax + 0x28]                    // 0x008941e0    8b4028
                         {disp8} mov      dword ptr [esp + 0x18], edx                    // 0x008941e3    89542418
                         xor.s            edx, edx                                       // 0x008941e7    33d2
                         push             0x10                                           // 0x008941e9    6a10
                         test             edi, edi                                       // 0x008941eb    85ff
                         setne            dl                                             // 0x008941ed    0f95c2
                         {disp8} mov      dword ptr [esp + 0x24], edx                    // 0x008941f0    89542424
                         push             ebx                                            // 0x008941f4    53
                         push             0x0                                            // 0x008941f5    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x20]                    // 0x008941f7    8d542420
                         push             eax                                            // 0x008941fb    50
                         push             edx                                            // 0x008941fc    52
                         push             ecx                                            // 0x008941fd    51
                         push             0x4                                            // 0x008941fe    6a04
                         push             esi                                            // 0x00894200    56
                         {disp8} mov      dword ptr [esp + 0x34], ebx                    // 0x00894201    895c2434
                         {disp8} mov      dword ptr [esp + 0x3c], ebp                    // 0x00894205    896c243c
                         call             _jmp_addr_0x00891120                           // 0x00894209    e812cfffff
                         add              esp, 0x20                                      // 0x0089420e    83c420
_jmp_addr_0x00894211:    pop              edi                                            // 0x00894211    5f
                         pop              esi                                            // 0x00894212    5e
                         pop              ebp                                            // 0x00894213    5d
                         pop              ebx                                            // 0x00894214    5b
                         add              esp, 0x14                                      // 0x00894215    83c414
                         ret                                                             // 0x00894218    c3
                         nop                                                             // 0x00894219    90
                         nop                                                             // 0x0089421a    90
                         nop                                                             // 0x0089421b    90
                         nop                                                             // 0x0089421c    90
                         nop                                                             // 0x0089421d    90
                         nop                                                             // 0x0089421e    90
                         nop                                                             // 0x0089421f    90
                         sub              esp, 0x10                                      // 0x00894220    83ec10
                         push             ebx                                            // 0x00894223    53
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x00894224    8b5c241c
                         push             ebp                                            // 0x00894228    55
                         push             esi                                            // 0x00894229    56
                         {disp8} mov      eax, dword ptr [ebx + 0x24]                    // 0x0089422a    8b4324
                         push             edi                                            // 0x0089422d    57
                         cmp              eax, 0x02                                      // 0x0089422e    83f802
                         {disp32} jne     _jmp_addr_0x008942df                           // 0x00894231    0f85a8000000
                         {disp8} mov      eax, dword ptr [ebx + 0x20]                    // 0x00894237    8b4320
                         {disp8} mov      esi, dword ptr [esp + 0x24]                    // 0x0089423a    8b742424
                         mov              edi, dword ptr [eax]                           // 0x0089423e    8b38
                         {disp8} mov      ebp, dword ptr [eax + 0x04]                    // 0x00894240    8b6804
                         {disp32} lea     eax, dword ptr [esi + 0x00000160]              // 0x00894243    8d8660010000
                         push             eax                                            // 0x00894249    50
                         push             edi                                            // 0x0089424a    57
                         call             __strcmpi                                      // 0x0089424b    e8902af3ff
                         add              esp, 0x08                                      // 0x00894250    83c408
                         test             eax, eax                                       // 0x00894253    85c0
                         {disp8} jne      _jmp_addr_0x0089429a                           // 0x00894255    7543
                         {disp32} mov     eax, dword ptr [esi + 0x00000370]              // 0x00894257    8b8670030000
                         test             eax, eax                                       // 0x0089425d    85c0
                         {disp8} je       _jmp_addr_0x008942df                           // 0x0089425f    747e
                         {disp32} mov     ecx, dword ptr [esi + 0x00000378]              // 0x00894261    8b8e78030000
                         {disp8} mov      ebx, dword ptr [ebx + 0x08]                    // 0x00894267    8b5b08
                         push             0xc                                            // 0x0089426a    6a0c
                         push             0x0                                            // 0x0089426c    6a00
                         push             0x0                                            // 0x0089426e    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x1c]                    // 0x00894270    8d54241c
                         push             ecx                                            // 0x00894274    51
                         push             edx                                            // 0x00894275    52
                         push             eax                                            // 0x00894276    50
                         push             0x2                                            // 0x00894277    6a02
                         push             esi                                            // 0x00894279    56
                         {disp8} mov      dword ptr [esp + 0x30], ebx                    // 0x0089427a    895c2430
                         {disp8} mov      dword ptr [esp + 0x34], ebp                    // 0x0089427e    896c2434
                         {disp8} mov      dword ptr [esp + 0x38], 0x00000002             // 0x00894282    c744243802000000
                         call             _jmp_addr_0x00891120                           // 0x0089428a    e891ceffff
                         add              esp, 0x20                                      // 0x0089428f    83c420
                         pop              edi                                            // 0x00894292    5f
                         pop              esi                                            // 0x00894293    5e
                         pop              ebp                                            // 0x00894294    5d
                         pop              ebx                                            // 0x00894295    5b
                         add              esp, 0x10                                      // 0x00894296    83c410
                         ret                                                             // 0x00894299    c3
_jmp_addr_0x0089429a:    push             edi                                            // 0x0089429a    57
                         push             esi                                            // 0x0089429b    56
                         call             _jmp_addr_0x008924a0                           // 0x0089429c    e8ffe1ffff
                         add              esp, 0x08                                      // 0x008942a1    83c408
                         test             eax, eax                                       // 0x008942a4    85c0
                         {disp8} je       _jmp_addr_0x008942df                           // 0x008942a6    7437
                         mov              edx, dword ptr [eax]                           // 0x008942a8    8b10
                         test             edx, edx                                       // 0x008942aa    85d2
                         {disp8} je       _jmp_addr_0x008942df                           // 0x008942ac    7431
                         {disp8} mov      ecx, dword ptr [ebx + 0x08]                    // 0x008942ae    8b4b08
                         {disp8} mov      eax, dword ptr [eax + 0x28]                    // 0x008942b1    8b4028
                         push             0x10                                           // 0x008942b4    6a10
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x008942b6    894c2418
                         push             edi                                            // 0x008942ba    57
                         push             0x0                                            // 0x008942bb    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                    // 0x008942bd    8d4c241c
                         push             eax                                            // 0x008942c1    50
                         push             ecx                                            // 0x008942c2    51
                         push             edx                                            // 0x008942c3    52
                         push             0x4                                            // 0x008942c4    6a04
                         push             esi                                            // 0x008942c6    56
                         {disp8} mov      dword ptr [esp + 0x30], edi                    // 0x008942c7    897c2430
                         {disp8} mov      dword ptr [esp + 0x38], ebp                    // 0x008942cb    896c2438
                         {disp8} mov      dword ptr [esp + 0x3c], 0x00000002             // 0x008942cf    c744243c02000000
                         call             _jmp_addr_0x00891120                           // 0x008942d7    e844ceffff
                         add              esp, 0x20                                      // 0x008942dc    83c420
_jmp_addr_0x008942df:    pop              edi                                            // 0x008942df    5f
                         pop              esi                                            // 0x008942e0    5e
                         pop              ebp                                            // 0x008942e1    5d
                         pop              ebx                                            // 0x008942e2    5b
                         add              esp, 0x10                                      // 0x008942e3    83c410
                         ret                                                             // 0x008942e6    c3
                         nop                                                             // 0x008942e7    90
                         nop                                                             // 0x008942e8    90
                         nop                                                             // 0x008942e9    90
                         nop                                                             // 0x008942ea    90
                         nop                                                             // 0x008942eb    90
                         nop                                                             // 0x008942ec    90
                         nop                                                             // 0x008942ed    90
                         nop                                                             // 0x008942ee    90
                         nop                                                             // 0x008942ef    90
                         sub              esp, 0x10                                      // 0x008942f0    83ec10
                         push             ebx                                            // 0x008942f3    53
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x008942f4    8b5c241c
                         push             ebp                                            // 0x008942f8    55
                         push             esi                                            // 0x008942f9    56
                         {disp8} mov      eax, dword ptr [ebx + 0x24]                    // 0x008942fa    8b4324
                         push             edi                                            // 0x008942fd    57
                         cmp              eax, 0x02                                      // 0x008942fe    83f802
                         {disp32} jne     _jmp_addr_0x008943af                           // 0x00894301    0f85a8000000
                         {disp8} mov      eax, dword ptr [ebx + 0x20]                    // 0x00894307    8b4320
                         {disp8} mov      esi, dword ptr [esp + 0x24]                    // 0x0089430a    8b742424
                         mov              edi, dword ptr [eax]                           // 0x0089430e    8b38
                         {disp8} mov      ebp, dword ptr [eax + 0x04]                    // 0x00894310    8b6804
                         {disp32} lea     eax, dword ptr [esi + 0x00000160]              // 0x00894313    8d8660010000
                         push             eax                                            // 0x00894319    50
                         push             edi                                            // 0x0089431a    57
                         call             __strcmpi                                      // 0x0089431b    e8c029f3ff
                         add              esp, 0x08                                      // 0x00894320    83c408
                         test             eax, eax                                       // 0x00894323    85c0
                         {disp8} jne      _jmp_addr_0x0089436a                           // 0x00894325    7543
                         {disp32} mov     eax, dword ptr [esi + 0x00000370]              // 0x00894327    8b8670030000
                         test             eax, eax                                       // 0x0089432d    85c0
                         {disp8} je       _jmp_addr_0x008943af                           // 0x0089432f    747e
                         {disp32} mov     ecx, dword ptr [esi + 0x00000378]              // 0x00894331    8b8e78030000
                         {disp8} mov      ebx, dword ptr [ebx + 0x08]                    // 0x00894337    8b5b08
                         push             0xc                                            // 0x0089433a    6a0c
                         push             0x0                                            // 0x0089433c    6a00
                         push             0x0                                            // 0x0089433e    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x1c]                    // 0x00894340    8d54241c
                         push             ecx                                            // 0x00894344    51
                         push             edx                                            // 0x00894345    52
                         push             eax                                            // 0x00894346    50
                         push             0x2                                            // 0x00894347    6a02
                         push             esi                                            // 0x00894349    56
                         {disp8} mov      dword ptr [esp + 0x30], ebx                    // 0x0089434a    895c2430
                         {disp8} mov      dword ptr [esp + 0x34], ebp                    // 0x0089434e    896c2434
                         {disp8} mov      dword ptr [esp + 0x38], 0x00000003             // 0x00894352    c744243803000000
                         call             _jmp_addr_0x00891120                           // 0x0089435a    e8c1cdffff
                         add              esp, 0x20                                      // 0x0089435f    83c420
                         pop              edi                                            // 0x00894362    5f
                         pop              esi                                            // 0x00894363    5e
                         pop              ebp                                            // 0x00894364    5d
                         pop              ebx                                            // 0x00894365    5b
                         add              esp, 0x10                                      // 0x00894366    83c410
                         ret                                                             // 0x00894369    c3
_jmp_addr_0x0089436a:    push             edi                                            // 0x0089436a    57
                         push             esi                                            // 0x0089436b    56
                         call             _jmp_addr_0x008924a0                           // 0x0089436c    e82fe1ffff
                         add              esp, 0x08                                      // 0x00894371    83c408
                         test             eax, eax                                       // 0x00894374    85c0
                         {disp8} je       _jmp_addr_0x008943af                           // 0x00894376    7437
                         mov              ecx, dword ptr [eax]                           // 0x00894378    8b08
                         test             ecx, ecx                                       // 0x0089437a    85c9
                         {disp8} je       _jmp_addr_0x008943af                           // 0x0089437c    7431
                         {disp8} mov      eax, dword ptr [eax + 0x28]                    // 0x0089437e    8b4028
                         {disp8} mov      ebx, dword ptr [ebx + 0x08]                    // 0x00894381    8b5b08
                         push             0x10                                           // 0x00894384    6a10
                         push             edi                                            // 0x00894386    57
                         push             0x0                                            // 0x00894387    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x1c]                    // 0x00894389    8d54241c
                         push             eax                                            // 0x0089438d    50
                         push             edx                                            // 0x0089438e    52
                         push             ecx                                            // 0x0089438f    51
                         push             0x4                                            // 0x00894390    6a04
                         push             esi                                            // 0x00894392    56
                         {disp8} mov      dword ptr [esp + 0x30], edi                    // 0x00894393    897c2430
                         {disp8} mov      dword ptr [esp + 0x34], ebx                    // 0x00894397    895c2434
                         {disp8} mov      dword ptr [esp + 0x38], ebp                    // 0x0089439b    896c2438
                         {disp8} mov      dword ptr [esp + 0x3c], 0x00000003             // 0x0089439f    c744243c03000000
                         call             _jmp_addr_0x00891120                           // 0x008943a7    e874cdffff
                         add              esp, 0x20                                      // 0x008943ac    83c420
_jmp_addr_0x008943af:    pop              edi                                            // 0x008943af    5f
                         pop              esi                                            // 0x008943b0    5e
                         pop              ebp                                            // 0x008943b1    5d
                         pop              ebx                                            // 0x008943b2    5b
                         add              esp, 0x10                                      // 0x008943b3    83c410
                         ret                                                             // 0x008943b6    c3
                         nop                                                             // 0x008943b7    90
                         nop                                                             // 0x008943b8    90
                         nop                                                             // 0x008943b9    90
                         nop                                                             // 0x008943ba    90
                         nop                                                             // 0x008943bb    90
                         nop                                                             // 0x008943bc    90
                         nop                                                             // 0x008943bd    90
                         nop                                                             // 0x008943be    90
                         nop                                                             // 0x008943bf    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x008943c0    8b442408
                         {disp8} mov      edx, dword ptr [esp + 0x04]                    // 0x008943c4    8b542404
                         add              edx, 0x18                                      // 0x008943c8    83c218
                         {disp8} mov      ecx, dword ptr [eax + 0x1c]                    // 0x008943cb    8b481c
                         push             ecx                                            // 0x008943ce    51
                         push             0x00c3ac84                                     // 0x008943cf    6884acc300
                         push             edx                                            // 0x008943d4    52
                         call             _jmp_addr_0x008903c0                           // 0x008943d5    e8e6bfffff
                         add              esp, 0x0c                                      // 0x008943da    83c40c
                         ret                                                             // 0x008943dd    c3
                         nop                                                             // 0x008943de    90
                         nop                                                             // 0x008943df    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x008943e0    8b442408
                         sub              esp, 0x18                                      // 0x008943e4    83ec18
                         cmp              dword ptr [eax + 0x24], 0x01                   // 0x008943e7    83782401
                         {disp32} jne     _jmp_addr_0x00894488                           // 0x008943eb    0f8597000000
                         push             ebx                                            // 0x008943f1    53
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                    // 0x008943f2    8b5808
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x008943f5    8b4020
                         push             ebp                                            // 0x008943f8    55
                         push             esi                                            // 0x008943f9    56
                         push             edi                                            // 0x008943fa    57
                         {disp8} mov      edi, dword ptr [esp + 0x2c]                    // 0x008943fb    8b7c242c
                         mov              esi, dword ptr [eax]                           // 0x008943ff    8b30
                         {disp32} lea     ebp, dword ptr [edi + 0x00000160]              // 0x00894401    8daf60010000
                         push             ebp                                            // 0x00894407    55
                         push             ebx                                            // 0x00894408    53
                         call             __strcmpi                                      // 0x00894409    e8d228f3ff
                         add              esp, 0x08                                      // 0x0089440e    83c408
                         test             eax, eax                                       // 0x00894411    85c0
                         {disp8} jne      _jmp_addr_0x00894479                           // 0x00894413    7564
                         push             0x00000080                                     // 0x00894415    6880000000
                         push             esi                                            // 0x0089441a    56
                         push             ebp                                            // 0x0089441b    55
                         call             _strncpy                                       // 0x0089441c    e87f4cf3ff
                         xor.s            ecx, ecx                                       // 0x00894421    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x1c]                    // 0x00894423    8d54241c
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                    // 0x00894427    894c241c
                         push             edx                                            // 0x0089442b    52
                         {disp8} mov      dword ptr [esp + 0x24], ecx                    // 0x0089442c    894c2424
                         push             0x1                                            // 0x00894430    6a01
                         {disp8} mov      dword ptr [esp + 0x2c], ecx                    // 0x00894432    894c242c
                         push             edi                                            // 0x00894436    57
                         {disp32} mov     byte ptr [edi + 0x000001df], 0x00              // 0x00894437    c687df01000000
                         {disp8} mov      dword ptr [esp + 0x28], 0x00000009             // 0x0089443e    c744242809000000
                         {disp8} mov      dword ptr [esp + 0x2c], ebx                    // 0x00894446    895c242c
                         {disp8} mov      dword ptr [esp + 0x30], esi                    // 0x0089444a    89742430
                         call             _jmp_addr_0x00894490                           // 0x0089444e    e83d000000
                         add              esp, 0x18                                      // 0x00894453    83c418
                         test             eax, eax                                       // 0x00894456    85c0
                         {disp8} je       _jmp_addr_0x00894479                           // 0x00894458    741f
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                    // 0x0089445a    8d4c241c
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000001             // 0x0089445e    c744241c01000000
                         push             ecx                                            // 0x00894466    51
                         push             eax                                            // 0x00894467    50
                         push             edi                                            // 0x00894468    57
                         {disp8} mov      dword ptr [esp + 0x2c], ebx                    // 0x00894469    895c242c
                         {disp8} mov      dword ptr [esp + 0x30], esi                    // 0x0089446d    89742430
                         call             _jmp_addr_0x00893410                           // 0x00894471    e89aefffff
                         add              esp, 0x0c                                      // 0x00894476    83c40c
_jmp_addr_0x00894479:    push             esi                                            // 0x00894479    56
                         push             ebx                                            // 0x0089447a    53
                         push             edi                                            // 0x0089447b    57
                         call             _jmp_addr_0x00892a70                           // 0x0089447c    e8efe5ffff
                         add              esp, 0x0c                                      // 0x00894481    83c40c
                         pop              edi                                            // 0x00894484    5f
                         pop              esi                                            // 0x00894485    5e
                         pop              ebp                                            // 0x00894486    5d
                         pop              ebx                                            // 0x00894487    5b
_jmp_addr_0x00894488:    add              esp, 0x18                                      // 0x00894488    83c418
                         ret                                                             // 0x0089448b    c3
                         nop                                                             // 0x0089448c    90
                         nop                                                             // 0x0089448d    90
                         nop                                                             // 0x0089448e    90
                         nop                                                             // 0x0089448f    90
_jmp_addr_0x00894490:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00894490    8b442404
                         push             ebx                                            // 0x00894494    53
                         push             ebp                                            // 0x00894495    55
                         push             esi                                            // 0x00894496    56
                         {disp32} mov     esi, dword ptr [eax + 0x00000384]              // 0x00894497    8bb084030000
                         push             edi                                            // 0x0089449d    57
                         test             esi, esi                                       // 0x0089449e    85f6
                         {disp8} je       _jmp_addr_0x00894515                           // 0x008944a0    7473
_jmp_addr_0x008944a2:    {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x008944a2    8b442418
                         xor.s            ebp, ebp                                       // 0x008944a6    33ed
                         test             eax, eax                                       // 0x008944a8    85c0
                         {disp8} jle      _jmp_addr_0x0089450e                           // 0x008944aa    7e62
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                    // 0x008944ac    8b4c241c
                         {disp8} lea      edi, dword ptr [ecx + 0x08]                    // 0x008944b0    8d7908
_jmp_addr_0x008944b3:    mov              edx, dword ptr [esi]                           // 0x008944b3    8b16
                         {disp8} mov      eax, dword ptr [edi + -0x08]                   // 0x008944b5    8b47f8
                         cmp.s            edx, eax                                       // 0x008944b8    3bd0
                         {disp8} jne      _jmp_addr_0x00894502                           // 0x008944ba    7546
                         {disp8} mov      eax, dword ptr [edi + -0x04]                   // 0x008944bc    8b47fc
                         mov              ebx, dword ptr [edi]                           // 0x008944bf    8b1f
                         test             eax, eax                                       // 0x008944c1    85c0
                         {disp8} jne      _jmp_addr_0x008944ce                           // 0x008944c3    7509
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x008944c5    8b4608
                         test             eax, eax                                       // 0x008944c8    85c0
                         {disp8} je       _jmp_addr_0x008944e3                           // 0x008944ca    7417
                         {disp8} jmp      _jmp_addr_0x00894502                           // 0x008944cc    eb34
_jmp_addr_0x008944ce:    {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x008944ce    8b4e08
                         test             ecx, ecx                                       // 0x008944d1    85c9
                         {disp8} je       _jmp_addr_0x00894502                           // 0x008944d3    742d
                         push             ecx                                            // 0x008944d5    51
                         push             eax                                            // 0x008944d6    50
                         call             __strcmpi                                      // 0x008944d7    e80428f3ff
                         add              esp, 0x08                                      // 0x008944dc    83c408
                         test             eax, eax                                       // 0x008944df    85c0
                         {disp8} jne      _jmp_addr_0x00894502                           // 0x008944e1    751f
_jmp_addr_0x008944e3:    {disp8} mov      eax, dword ptr [esi + 0x0c]                    // 0x008944e3    8b460c
                         test             ebx, ebx                                       // 0x008944e6    85db
                         {disp8} jne      _jmp_addr_0x008944f0                           // 0x008944e8    7506
                         test             eax, eax                                       // 0x008944ea    85c0
                         {disp8} je       _jmp_addr_0x0089451c                           // 0x008944ec    742e
                         {disp8} jmp      _jmp_addr_0x00894502                           // 0x008944ee    eb12
_jmp_addr_0x008944f0:    test             eax, eax                                       // 0x008944f0    85c0
                         {disp8} je       _jmp_addr_0x00894502                           // 0x008944f2    740e
                         push             eax                                            // 0x008944f4    50
                         push             ebx                                            // 0x008944f5    53
                         call             __strcmpi                                      // 0x008944f6    e8e527f3ff
                         add              esp, 0x08                                      // 0x008944fb    83c408
                         test             eax, eax                                       // 0x008944fe    85c0
                         {disp8} je       _jmp_addr_0x0089451c                           // 0x00894500    741a
_jmp_addr_0x00894502:    {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x00894502    8b442418
                         inc              ebp                                            // 0x00894506    45
                         add              edi, 0x0c                                      // 0x00894507    83c70c
                         cmp.s            ebp, eax                                       // 0x0089450a    3be8
                         {disp8} jl       _jmp_addr_0x008944b3                           // 0x0089450c    7ca5
_jmp_addr_0x0089450e:    {disp8} mov      esi, dword ptr [esi + 0x24]                    // 0x0089450e    8b7624
                         test             esi, esi                                       // 0x00894511    85f6
                         {disp8} jne      _jmp_addr_0x008944a2                           // 0x00894513    758d
_jmp_addr_0x00894515:    pop              edi                                            // 0x00894515    5f
                         pop              esi                                            // 0x00894516    5e
                         pop              ebp                                            // 0x00894517    5d
                         xor.s            eax, eax                                       // 0x00894518    33c0
                         pop              ebx                                            // 0x0089451a    5b
                         ret                                                             // 0x0089451b    c3
_jmp_addr_0x0089451c:    call             _jmp_addr_0x0088a8d0                           // 0x0089451c    e8af63ffff
                         add              eax, 0x00007530                                // 0x00894521    0530750000
                         pop              edi                                            // 0x00894526    5f
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x00894527    894604
                         mov.s            eax, esi                                       // 0x0089452a    8bc6
                         pop              esi                                            // 0x0089452c    5e
                         pop              ebp                                            // 0x0089452d    5d
                         pop              ebx                                            // 0x0089452e    5b
                         ret                                                             // 0x0089452f    c3
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00894530    8b442408
                         sub              esp, 0x18                                      // 0x00894534    83ec18
                         mov              ecx, 0x00000001                                // 0x00894537    b901000000
                         {disp8} mov      edx, dword ptr [eax + 0x24]                    // 0x0089453c    8b5024
                         push             ebx                                            // 0x0089453f    53
                         push             ebp                                            // 0x00894540    55
                         push             esi                                            // 0x00894541    56
                         cmp.s            edx, ecx                                       // 0x00894542    3bd1
                         push             edi                                            // 0x00894544    57
                         {disp32} jne     _jmp_addr_0x008946e0                           // 0x00894545    0f8595010000
                         {disp8} mov      edx, dword ptr [eax + 0x20]                    // 0x0089454b    8b5020
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                    // 0x0089454e    8b5808
                         {disp8} mov      dword ptr [esp + 0x10], ebx                    // 0x00894551    895c2410
                         mov              esi, dword ptr [edx]                           // 0x00894555    8b32
                         {disp8} mov      edx, dword ptr [eax + 0x0c]                    // 0x00894557    8b500c
                         {disp8} mov      eax, dword ptr [eax + 0x10]                    // 0x0089455a    8b4010
                         {disp8} mov      dword ptr [esp + 0x18], edx                    // 0x0089455d    89542418
                         {disp8} mov      dword ptr [esp + 0x14], eax                    // 0x00894561    89442414
                         mov              al, byte ptr [ebx]                             // 0x00894565    8a03
                         cmp              al, 0x40                                       // 0x00894567    3c40
                         {disp8} jne      _jmp_addr_0x0089457a                           // 0x00894569    750f
                         inc              ebx                                            // 0x0089456b    43
                         {disp8} mov      dword ptr [esp + 0x30], 0x00000002             // 0x0089456c    c744243002000000
                         {disp8} mov      dword ptr [esp + 0x10], ebx                    // 0x00894574    895c2410
                         {disp8} jmp      _jmp_addr_0x00894591                           // 0x00894578    eb17
_jmp_addr_0x0089457a:    cmp              al, 0x2b                                       // 0x0089457a    3c2b
                         {disp8} jne      _jmp_addr_0x00894589                           // 0x0089457c    750b
                         inc              ebx                                            // 0x0089457e    43
                         {disp8} mov      dword ptr [esp + 0x30], ecx                    // 0x0089457f    894c2430
                         {disp8} mov      dword ptr [esp + 0x10], ebx                    // 0x00894583    895c2410
                         {disp8} jmp      _jmp_addr_0x00894591                           // 0x00894587    eb08
_jmp_addr_0x00894589:    {disp8} mov      dword ptr [esp + 0x30], 0x00000000             // 0x00894589    c744243000000000
_jmp_addr_0x00894591:    {disp8} mov      edi, dword ptr [esp + 0x2c]                    // 0x00894591    8b7c242c
                         mov.s            eax, ebx                                       // 0x00894595    8bc3
                         {disp32} lea     ebp, dword ptr [edi + 0x00000160]              // 0x00894597    8daf60010000
_jmp_addr_0x0089459d:    mov              dl, byte ptr [eax]                             // 0x0089459d    8a10
                         mov.s            cl, dl                                         // 0x0089459f    8aca
                         cmp              dl, byte ptr [ebp + 0x00]                      // 0x008945a1    3a5500
                         {disp8} jne      _jmp_addr_0x008945c2                           // 0x008945a4    751c
                         test             cl, cl                                         // 0x008945a6    84c9
                         {disp8} je       _jmp_addr_0x008945be                           // 0x008945a8    7414
                         {disp8} mov      dl, byte ptr [eax + 0x01]                      // 0x008945aa    8a5001
                         mov.s            cl, dl                                         // 0x008945ad    8aca
                         cmp              dl, byte ptr [ebp + 0x01]                      // 0x008945af    3a5501
                         {disp8} jne      _jmp_addr_0x008945c2                           // 0x008945b2    750e
                         add              eax, 0x02                                      // 0x008945b4    83c002
                         add              ebp, 0x02                                      // 0x008945b7    83c502
                         test             cl, cl                                         // 0x008945ba    84c9
                         {disp8} jne      _jmp_addr_0x0089459d                           // 0x008945bc    75df
_jmp_addr_0x008945be:    xor.s            eax, eax                                       // 0x008945be    33c0
                         {disp8} jmp      _jmp_addr_0x008945c7                           // 0x008945c0    eb05
_jmp_addr_0x008945c2:    sbb.s            eax, eax                                       // 0x008945c2    1bc0
                         sbb              eax, -0x01                                     // 0x008945c4    83d8ff
_jmp_addr_0x008945c7:    test             eax, eax                                       // 0x008945c7    85c0
                         push             esi                                            // 0x008945c9    56
                         push             edi                                            // 0x008945ca    57
                         {disp8} jne      _jmp_addr_0x00894642                           // 0x008945cb    7575
                         call             _jmp_addr_0x00892250                           // 0x008945cd    e87edcffff
                         add              esp, 0x08                                      // 0x008945d2    83c408
                         test             eax, eax                                       // 0x008945d5    85c0
                         {disp32} je      _jmp_addr_0x008946e0                           // 0x008945d7    0f8403010000
                         xor.s            eax, eax                                       // 0x008945dd    33c0
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                    // 0x008945df    8d4c241c
                         {disp8} mov      dword ptr [esp + 0x1c], eax                    // 0x008945e3    8944241c
                         mov              ebx, 0x00000001                                // 0x008945e7    bb01000000
                         push             ecx                                            // 0x008945ec    51
                         {disp8} mov      dword ptr [esp + 0x24], eax                    // 0x008945ed    89442424
                         push             ebx                                            // 0x008945f1    53
                         push             edi                                            // 0x008945f2    57
                         {disp8} mov      dword ptr [esp + 0x30], eax                    // 0x008945f3    89442430
                         {disp8} mov      dword ptr [esp + 0x28], ebx                    // 0x008945f7    895c2428
                         {disp8} mov      dword ptr [esp + 0x2c], esi                    // 0x008945fb    8974242c
                         call             _jmp_addr_0x00894490                           // 0x008945ff    e88cfeffff
                         add              esp, 0x0c                                      // 0x00894604    83c40c
                         test             eax, eax                                       // 0x00894607    85c0
                         {disp32} je      _jmp_addr_0x008946e0                           // 0x00894609    0f84d1000000
                         {disp8} mov      ebp, dword ptr [eax + 0x1c]                    // 0x0089460f    8b681c
                         push             ebp                                            // 0x00894612    55
                         push             esi                                            // 0x00894613    56
                         push             edi                                            // 0x00894614    57
                         call             _jmp_addr_0x008922b0                           // 0x00894615    e896dcffff
                         {disp8} lea      edx, dword ptr [ebp + 0x30]                    // 0x0089461a    8d5530
                         push             edx                                            // 0x0089461d    52
                         push             esi                                            // 0x0089461e    56
                         push             edi                                            // 0x0089461f    57
                         call             _jmp_addr_0x008926f0                           // 0x00894620    e8cbe0ffff
                         push             esi                                            // 0x00894625    56
                         add              edi, 0x18                                      // 0x00894626    83c718
                         push             0x00c3a540                                     // 0x00894629    6840a5c300
                         push             edi                                            // 0x0089462e    57
                         {disp8} mov      dword ptr [ebp + 0x2c], ebx                    // 0x0089462f    895d2c
                         call             _jmp_addr_0x008903c0                           // 0x00894632    e889bdffff
                         add              esp, 0x24                                      // 0x00894637    83c424
                         pop              edi                                            // 0x0089463a    5f
                         pop              esi                                            // 0x0089463b    5e
                         pop              ebp                                            // 0x0089463c    5d
                         pop              ebx                                            // 0x0089463d    5b
                         add              esp, 0x18                                      // 0x0089463e    83c418
                         ret                                                             // 0x00894641    c3
_jmp_addr_0x00894642:    call             _jmp_addr_0x00892650                           // 0x00894642    e809e0ffff
                         add              esp, 0x08                                      // 0x00894647    83c408
                         test             eax, eax                                       // 0x0089464a    85c0
                         {disp8} je       _jmp_addr_0x00894668                           // 0x0089464c    741a
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x0089464e    8b442414
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                    // 0x00894652    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x30]                    // 0x00894656    8b542430
                         push             eax                                            // 0x0089465a    50
                         push             ecx                                            // 0x0089465b    51
                         push             edx                                            // 0x0089465c    52
                         push             esi                                            // 0x0089465d    56
                         push             ebx                                            // 0x0089465e    53
                         push             edi                                            // 0x0089465f    57
                         call             _jmp_addr_0x00892840                           // 0x00894660    e8dbe1ffff
                         add              esp, 0x18                                      // 0x00894665    83c418
_jmp_addr_0x00894668:    push             esi                                            // 0x00894668    56
                         push             edi                                            // 0x00894669    57
                         call             _jmp_addr_0x008927c0                           // 0x0089466a    e851e1ffff
                         add              esp, 0x08                                      // 0x0089466f    83c408
                         test             eax, eax                                       // 0x00894672    85c0
                         {disp8} je       _jmp_addr_0x008946e0                           // 0x00894674    746a
                         push             esi                                            // 0x00894676    56
                         push             edi                                            // 0x00894677    57
                         call             _jmp_addr_0x008924a0                           // 0x00894678    e823deffff
                         mov.s            ebx, eax                                       // 0x0089467d    8bd8
                         add              esp, 0x08                                      // 0x0089467f    83c408
                         test             ebx, ebx                                       // 0x00894682    85db
                         {disp8} je       _jmp_addr_0x008946e0                           // 0x00894684    745a
                         {disp8} mov      eax, dword ptr [ebx + 0x08]                    // 0x00894686    8b4308
                         test             eax, eax                                       // 0x00894689    85c0
                         {disp8} je       _jmp_addr_0x008946bb                           // 0x0089468b    742e
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x0089468d    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x30]                    // 0x00894691    8b542430
                         {disp8} mov      dword ptr [esp + 0x20], ecx                    // 0x00894695    894c2420
                         {disp8} mov      ecx, dword ptr [ebx + 0x28]                    // 0x00894699    8b4b28
                         push             0xc                                            // 0x0089469c    6a0c
                         {disp8} mov      dword ptr [esp + 0x28], edx                    // 0x0089469e    89542428
                         push             esi                                            // 0x008946a2    56
                         push             0x0                                            // 0x008946a3    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x28]                    // 0x008946a5    8d542428
                         push             ecx                                            // 0x008946a9    51
                         push             edx                                            // 0x008946aa    52
                         push             eax                                            // 0x008946ab    50
                         push             0x6                                            // 0x008946ac    6a06
                         push             edi                                            // 0x008946ae    57
                         {disp8} mov      dword ptr [esp + 0x3c], esi                    // 0x008946af    8974243c
                         call             _jmp_addr_0x00891120                           // 0x008946b3    e868caffff
                         add              esp, 0x20                                      // 0x008946b8    83c420
_jmp_addr_0x008946bb:    {disp8} mov      eax, dword ptr [ebx + 0x20]                    // 0x008946bb    8b4320
                         test             eax, eax                                       // 0x008946be    85c0
                         {disp8} je       _jmp_addr_0x008946e0                           // 0x008946c0    741e
                         {disp8} mov      ecx, dword ptr [ebx + 0x28]                    // 0x008946c2    8b4b28
                         push             0x4                                            // 0x008946c5    6a04
                         push             esi                                            // 0x008946c7    56
                         push             0x0                                            // 0x008946c8    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x3c]                    // 0x008946ca    8d54243c
                         push             ecx                                            // 0x008946ce    51
                         push             edx                                            // 0x008946cf    52
                         push             eax                                            // 0x008946d0    50
                         push             0xc                                            // 0x008946d1    6a0c
                         push             edi                                            // 0x008946d3    57
                         {disp8} mov      dword ptr [esp + 0x50], esi                    // 0x008946d4    89742450
                         call             _jmp_addr_0x00891120                           // 0x008946d8    e843caffff
                         add              esp, 0x20                                      // 0x008946dd    83c420
_jmp_addr_0x008946e0:    pop              edi                                            // 0x008946e0    5f
                         pop              esi                                            // 0x008946e1    5e
                         pop              ebp                                            // 0x008946e2    5d
                         pop              ebx                                            // 0x008946e3    5b
                         add              esp, 0x18                                      // 0x008946e4    83c418
                         ret                                                             // 0x008946e7    c3
                         nop                                                             // 0x008946e8    90
                         nop                                                             // 0x008946e9    90
                         nop                                                             // 0x008946ea    90
                         nop                                                             // 0x008946eb    90
                         nop                                                             // 0x008946ec    90
                         nop                                                             // 0x008946ed    90
                         nop                                                             // 0x008946ee    90
                         nop                                                             // 0x008946ef    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x008946f0    8b442408
                         sub              esp, 0x14                                      // 0x008946f4    83ec14
                         push             ebx                                            // 0x008946f7    53
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                    // 0x008946f8    8b5808
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x008946fb    8b4020
                         push             ebp                                            // 0x008946fe    55
                         {disp8} mov      ebp, dword ptr [esp + 0x20]                    // 0x008946ff    8b6c2420
                         push             esi                                            // 0x00894703    56
                         push             edi                                            // 0x00894704    57
                         mov              edi, dword ptr [eax]                           // 0x00894705    8b38
                         {disp32} lea     esi, dword ptr [ebp + 0x00000160]              // 0x00894707    8db560010000
                         mov.s            eax, ebx                                       // 0x0089470d    8bc3
_jmp_addr_0x0089470f:    mov              dl, byte ptr [eax]                             // 0x0089470f    8a10
                         mov.s            cl, dl                                         // 0x00894711    8aca
                         cmp              dl, byte ptr [esi]                             // 0x00894713    3a16
                         {disp8} jne      _jmp_addr_0x00894733                           // 0x00894715    751c
                         test             cl, cl                                         // 0x00894717    84c9
                         {disp8} je       _jmp_addr_0x0089472f                           // 0x00894719    7414
                         {disp8} mov      dl, byte ptr [eax + 0x01]                      // 0x0089471b    8a5001
                         mov.s            cl, dl                                         // 0x0089471e    8aca
                         cmp              dl, byte ptr [esi + 0x01]                      // 0x00894720    3a5601
                         {disp8} jne      _jmp_addr_0x00894733                           // 0x00894723    750e
                         add              eax, 0x02                                      // 0x00894725    83c002
                         add              esi, 0x02                                      // 0x00894728    83c602
                         test             cl, cl                                         // 0x0089472b    84c9
                         {disp8} jne      _jmp_addr_0x0089470f                           // 0x0089472d    75e0
_jmp_addr_0x0089472f:    xor.s            eax, eax                                       // 0x0089472f    33c0
                         {disp8} jmp      _jmp_addr_0x00894738                           // 0x00894731    eb05
_jmp_addr_0x00894733:    sbb.s            eax, eax                                       // 0x00894733    1bc0
                         sbb              eax, -0x01                                     // 0x00894735    83d8ff
_jmp_addr_0x00894738:    test             eax, eax                                       // 0x00894738    85c0
                         {disp32} je      _jmp_addr_0x008947c2                           // 0x0089473a    0f8482000000
                         push             edi                                            // 0x00894740    57
                         push             ebx                                            // 0x00894741    53
                         push             ebp                                            // 0x00894742    55
                         call             _jmp_addr_0x00892940                           // 0x00894743    e8f8e1ffff
                         push             edi                                            // 0x00894748    57
                         push             ebp                                            // 0x00894749    55
                         call             _jmp_addr_0x008927c0                           // 0x0089474a    e871e0ffff
                         add              esp, 0x14                                      // 0x0089474f    83c414
                         test             eax, eax                                       // 0x00894752    85c0
                         {disp8} je       _jmp_addr_0x008947c2                           // 0x00894754    746c
                         push             edi                                            // 0x00894756    57
                         push             ebp                                            // 0x00894757    55
                         call             _jmp_addr_0x008924a0                           // 0x00894758    e843ddffff
                         mov.s            esi, eax                                       // 0x0089475d    8bf0
                         xor.s            ecx, ecx                                       // 0x0089475f    33c9
                         add              esp, 0x08                                      // 0x00894761    83c408
                         cmp.s            esi, ecx                                       // 0x00894764    3bf1
                         {disp8} je       _jmp_addr_0x008947c2                           // 0x00894766    745a
                         {disp8} mov      eax, dword ptr [esi + 0x0c]                    // 0x00894768    8b460c
                         cmp.s            eax, ecx                                       // 0x0089476b    3bc1
                         {disp8} je       _jmp_addr_0x0089479e                           // 0x0089476d    742f
                         push             0x14                                           // 0x0089476f    6a14
                         push             edi                                            // 0x00894771    57
                         {disp8} mov      dword ptr [esp + 0x20], ecx                    // 0x00894772    894c2420
                         {disp8} mov      dword ptr [esp + 0x24], ecx                    // 0x00894776    894c2424
                         {disp8} mov      dword ptr [esp + 0x28], ecx                    // 0x0089477a    894c2428
                         push             ecx                                            // 0x0089477e    51
                         {disp8} mov      ecx, dword ptr [esi + 0x28]                    // 0x0089477f    8b4e28
                         {disp8} lea      edx, dword ptr [esp + 0x1c]                    // 0x00894782    8d54241c
                         push             ecx                                            // 0x00894786    51
                         push             edx                                            // 0x00894787    52
                         push             eax                                            // 0x00894788    50
                         push             0x7                                            // 0x00894789    6a07
                         push             ebp                                            // 0x0089478b    55
                         {disp8} mov      dword ptr [esp + 0x30], edi                    // 0x0089478c    897c2430
                         {disp8} mov      dword ptr [esp + 0x34], ebx                    // 0x00894790    895c2434
                         call             _jmp_addr_0x00891120                           // 0x00894794    e887c9ffff
                         add              esp, 0x20                                      // 0x00894799    83c420
                         xor.s            ecx, ecx                                       // 0x0089479c    33c9
_jmp_addr_0x0089479e:    {disp8} mov      eax, dword ptr [esi + 0x20]                    // 0x0089479e    8b4620
                         cmp.s            eax, ecx                                       // 0x008947a1    3bc1
                         {disp8} je       _jmp_addr_0x008947c2                           // 0x008947a3    741d
                         push             0x4                                            // 0x008947a5    6a04
                         push             edi                                            // 0x008947a7    57
                         push             ecx                                            // 0x008947a8    51
                         {disp8} mov      ecx, dword ptr [esi + 0x28]                    // 0x008947a9    8b4e28
                         {disp8} lea      edx, dword ptr [esp + 0x38]                    // 0x008947ac    8d542438
                         push             ecx                                            // 0x008947b0    51
                         push             edx                                            // 0x008947b1    52
                         push             eax                                            // 0x008947b2    50
                         push             0xc                                            // 0x008947b3    6a0c
                         push             ebp                                            // 0x008947b5    55
                         {disp8} mov      dword ptr [esp + 0x4c], edi                    // 0x008947b6    897c244c
                         call             _jmp_addr_0x00891120                           // 0x008947ba    e861c9ffff
                         add              esp, 0x20                                      // 0x008947bf    83c420
_jmp_addr_0x008947c2:    pop              edi                                            // 0x008947c2    5f
                         pop              esi                                            // 0x008947c3    5e
                         pop              ebp                                            // 0x008947c4    5d
                         pop              ebx                                            // 0x008947c5    5b
                         add              esp, 0x14                                      // 0x008947c6    83c414
                         ret                                                             // 0x008947c9    c3
                         nop                                                             // 0x008947ca    90
                         nop                                                             // 0x008947cb    90
                         nop                                                             // 0x008947cc    90
                         nop                                                             // 0x008947cd    90
                         nop                                                             // 0x008947ce    90
                         nop                                                             // 0x008947cf    90
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x008947d0    8b4c2408
                         sub              esp, 0x18                                      // 0x008947d4    83ec18
                         {disp8} mov      edx, dword ptr [ecx + 0x24]                    // 0x008947d7    8b5124
                         push             ebx                                            // 0x008947da    53
                         push             ebp                                            // 0x008947db    55
                         push             esi                                            // 0x008947dc    56
                         cmp              edx, 0x02                                      // 0x008947dd    83fa02
                         push             edi                                            // 0x008947e0    57
                         {disp8} je       _jmp_addr_0x008947ec                           // 0x008947e1    7409
                         cmp              edx, 0x03                                      // 0x008947e3    83fa03
                         {disp32} jne     _jmp_addr_0x00894901                           // 0x008947e6    0f8515010000
_jmp_addr_0x008947ec:    {disp8} mov      eax, dword ptr [ecx + 0x20]                    // 0x008947ec    8b4120
                         {disp8} mov      ecx, dword ptr [ecx + 0x08]                    // 0x008947ef    8b4908
                         cmp              edx, 0x03                                      // 0x008947f2    83fa03
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x008947f5    894c2410
                         mov              esi, dword ptr [eax]                           // 0x008947f9    8b30
                         {disp8} mov      ebp, dword ptr [eax + 0x04]                    // 0x008947fb    8b6804
                         {disp8} jne      _jmp_addr_0x00894809                           // 0x008947fe    7509
                         {disp8} mov      edx, dword ptr [eax + 0x08]                    // 0x00894800    8b5008
                         {disp8} mov      dword ptr [esp + 0x30], edx                    // 0x00894803    89542430
                         {disp8} jmp      _jmp_addr_0x00894811                           // 0x00894807    eb08
_jmp_addr_0x00894809:    {disp8} mov      dword ptr [esp + 0x30], 0x00c58370             // 0x00894809    c74424307083c500
_jmp_addr_0x00894811:    {disp8} mov      ebx, dword ptr [esp + 0x2c]                    // 0x00894811    8b5c242c
                         push             esi                                            // 0x00894815    56
                         push             ebp                                            // 0x00894816    55
                         push             ebx                                            // 0x00894817    53
                         call             _jmp_addr_0x00892940                           // 0x00894818    e823e1ffff
                         push             esi                                            // 0x0089481d    56
                         push             ebx                                            // 0x0089481e    53
                         call             _jmp_addr_0x008924a0                           // 0x0089481f    e87cdcffff
                         mov.s            edi, eax                                       // 0x00894824    8bf8
                         add              esp, 0x14                                      // 0x00894826    83c414
                         test             edi, edi                                       // 0x00894829    85ff
                         {disp32} je      _jmp_addr_0x00894901                           // 0x0089482b    0f84d0000000
                         {disp32} lea     eax, dword ptr [ebx + 0x00000160]              // 0x00894831    8d8360010000
                         push             eax                                            // 0x00894837    50
                         push             ebp                                            // 0x00894838    55
                         call             __strcmpi                                      // 0x00894839    e8a224f3ff
                         add              esp, 0x08                                      // 0x0089483e    83c408
                         test             eax, eax                                       // 0x00894841    85c0
                         {disp8} jne      _jmp_addr_0x0089488d                           // 0x00894843    7548
                         {disp8} mov      eax, dword ptr [edi + 0x04]                    // 0x00894845    8b4704
                         test             eax, eax                                       // 0x00894848    85c0
                         {disp8} je       _jmp_addr_0x0089487b                           // 0x0089484a    742f
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x0089484c    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x30]                    // 0x00894850    8b542430
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x00894854    894c2418
                         {disp8} mov      ecx, dword ptr [edi + 0x28]                    // 0x00894858    8b4f28
                         push             0xc                                            // 0x0089485b    6a0c
                         {disp8} mov      dword ptr [esp + 0x20], edx                    // 0x0089485d    89542420
                         push             0x0                                            // 0x00894861    6a00
                         push             0x0                                            // 0x00894863    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x20]                    // 0x00894865    8d542420
                         push             ecx                                            // 0x00894869    51
                         push             edx                                            // 0x0089486a    52
                         push             eax                                            // 0x0089486b    50
                         push             0x5                                            // 0x0089486c    6a05
                         push             ebx                                            // 0x0089486e    53
                         {disp8} mov      dword ptr [esp + 0x34], esi                    // 0x0089486f    89742434
                         call             _jmp_addr_0x00891120                           // 0x00894873    e8a8c8ffff
                         add              esp, 0x20                                      // 0x00894878    83c420
_jmp_addr_0x0089487b:    push             esi                                            // 0x0089487b    56
                         push             ebx                                            // 0x0089487c    53
                         call             _jmp_addr_0x00892410                           // 0x0089487d    e88edbffff
                         add              esp, 0x08                                      // 0x00894882    83c408
                         pop              edi                                            // 0x00894885    5f
                         pop              esi                                            // 0x00894886    5e
                         pop              ebp                                            // 0x00894887    5d
                         pop              ebx                                            // 0x00894888    5b
                         add              esp, 0x18                                      // 0x00894889    83c418
                         ret                                                             // 0x0089488c    c3
_jmp_addr_0x0089488d:    push             esi                                            // 0x0089488d    56
                         push             ebx                                            // 0x0089488e    53
                         call             _jmp_addr_0x008927c0                           // 0x0089488f    e82cdfffff
                         add              esp, 0x08                                      // 0x00894894    83c408
                         test             eax, eax                                       // 0x00894897    85c0
                         {disp8} je       _jmp_addr_0x00894901                           // 0x00894899    7466
                         {disp8} mov      eax, dword ptr [edi + 0x0c]                    // 0x0089489b    8b470c
                         test             eax, eax                                       // 0x0089489e    85c0
                         {disp8} je       _jmp_addr_0x008948dc                           // 0x008948a0    743a
                         {disp8} mov      ecx, dword ptr [esp + 0x30]                    // 0x008948a2    8b4c2430
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x008948a6    8b542410
                         {disp8} mov      dword ptr [esp + 0x20], ecx                    // 0x008948aa    894c2420
                         {disp8} mov      ecx, dword ptr [edi + 0x28]                    // 0x008948ae    8b4f28
                         push             0x14                                           // 0x008948b1    6a14
                         {disp8} mov      dword ptr [esp + 0x28], edx                    // 0x008948b3    89542428
                         push             esi                                            // 0x008948b7    56
                         push             0x0                                            // 0x008948b8    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x20]                    // 0x008948ba    8d542420
                         push             ecx                                            // 0x008948be    51
                         push             edx                                            // 0x008948bf    52
                         push             eax                                            // 0x008948c0    50
                         push             0x7                                            // 0x008948c1    6a07
                         push             ebx                                            // 0x008948c3    53
                         {disp8} mov      dword ptr [esp + 0x34], esi                    // 0x008948c4    89742434
                         {disp8} mov      dword ptr [esp + 0x38], ebp                    // 0x008948c8    896c2438
                         {disp8} mov      dword ptr [esp + 0x3c], 0x00000002             // 0x008948cc    c744243c02000000
                         call             _jmp_addr_0x00891120                           // 0x008948d4    e847c8ffff
                         add              esp, 0x20                                      // 0x008948d9    83c420
_jmp_addr_0x008948dc:    {disp8} mov      eax, dword ptr [edi + 0x20]                    // 0x008948dc    8b4720
                         test             eax, eax                                       // 0x008948df    85c0
                         {disp8} je       _jmp_addr_0x00894901                           // 0x008948e1    741e
                         {disp8} mov      ecx, dword ptr [edi + 0x28]                    // 0x008948e3    8b4f28
                         push             0x4                                            // 0x008948e6    6a04
                         push             esi                                            // 0x008948e8    56
                         push             0x0                                            // 0x008948e9    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x3c]                    // 0x008948eb    8d54243c
                         push             ecx                                            // 0x008948ef    51
                         push             edx                                            // 0x008948f0    52
                         push             eax                                            // 0x008948f1    50
                         push             0xc                                            // 0x008948f2    6a0c
                         push             ebx                                            // 0x008948f4    53
                         {disp8} mov      dword ptr [esp + 0x50], esi                    // 0x008948f5    89742450
                         call             _jmp_addr_0x00891120                           // 0x008948f9    e822c8ffff
                         add              esp, 0x20                                      // 0x008948fe    83c420
_jmp_addr_0x00894901:    pop              edi                                            // 0x00894901    5f
                         pop              esi                                            // 0x00894902    5e
                         pop              ebp                                            // 0x00894903    5d
                         pop              ebx                                            // 0x00894904    5b
                         add              esp, 0x18                                      // 0x00894905    83c418
                         ret                                                             // 0x00894908    c3
                         nop                                                             // 0x00894909    90
                         nop                                                             // 0x0089490a    90
                         nop                                                             // 0x0089490b    90
                         nop                                                             // 0x0089490c    90
                         nop                                                             // 0x0089490d    90
                         nop                                                             // 0x0089490e    90
                         nop                                                             // 0x0089490f    90
                         sub              esp, 0x14                                      // 0x00894910    83ec14
                         push             ebx                                            // 0x00894913    53
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x00894914    8b5c241c
                         push             ebp                                            // 0x00894918    55
                         {disp8} mov      ebp, dword ptr [esp + 0x24]                    // 0x00894919    8b6c2424
                         push             esi                                            // 0x0089491d    56
                         {disp8} mov      esi, dword ptr [esp + 0x2c]                    // 0x0089491e    8b74242c
                         push             edi                                            // 0x00894922    57
                         push             esi                                            // 0x00894923    56
                         push             ebp                                            // 0x00894924    55
                         push             ebx                                            // 0x00894925    53
                         call             _jmp_addr_0x00892940                           // 0x00894926    e815e0ffff
                         push             esi                                            // 0x0089492b    56
                         push             ebx                                            // 0x0089492c    53
                         call             _jmp_addr_0x008927c0                           // 0x0089492d    e88edeffff
                         add              esp, 0x14                                      // 0x00894932    83c414
                         test             eax, eax                                       // 0x00894935    85c0
                         {disp8} je       _jmp_addr_0x008949af                           // 0x00894937    7476
                         push             esi                                            // 0x00894939    56
                         push             ebx                                            // 0x0089493a    53
                         call             _jmp_addr_0x008924a0                           // 0x0089493b    e860dbffff
                         mov.s            edi, eax                                       // 0x00894940    8bf8
                         add              esp, 0x08                                      // 0x00894942    83c408
                         test             edi, edi                                       // 0x00894945    85ff
                         {disp8} je       _jmp_addr_0x008949af                           // 0x00894947    7466
                         {disp8} mov      eax, dword ptr [edi + 0x0c]                    // 0x00894949    8b470c
                         test             eax, eax                                       // 0x0089494c    85c0
                         {disp8} je       _jmp_addr_0x0089498a                           // 0x0089494e    743a
                         {disp8} mov      ecx, dword ptr [esp + 0x34]                    // 0x00894950    8b4c2434
                         {disp8} mov      edx, dword ptr [edi + 0x28]                    // 0x00894954    8b5728
                         push             0x14                                           // 0x00894957    6a14
                         {disp8} mov      dword ptr [esp + 0x20], ecx                    // 0x00894959    894c2420
                         push             esi                                            // 0x0089495d    56
                         push             0x0                                            // 0x0089495e    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                    // 0x00894960    8d4c241c
                         push             edx                                            // 0x00894964    52
                         push             ecx                                            // 0x00894965    51
                         push             eax                                            // 0x00894966    50
                         push             0x7                                            // 0x00894967    6a07
                         push             ebx                                            // 0x00894969    53
                         {disp8} mov      dword ptr [esp + 0x30], esi                    // 0x0089496a    89742430
                         {disp8} mov      dword ptr [esp + 0x34], ebp                    // 0x0089496e    896c2434
                         {disp8} mov      dword ptr [esp + 0x38], 0x00000001             // 0x00894972    c744243801000000
                         {disp8} mov      dword ptr [esp + 0x40], 0x00000000             // 0x0089497a    c744244000000000
                         call             _jmp_addr_0x00891120                           // 0x00894982    e899c7ffff
                         add              esp, 0x20                                      // 0x00894987    83c420
_jmp_addr_0x0089498a:    {disp8} mov      eax, dword ptr [edi + 0x20]                    // 0x0089498a    8b4720
                         test             eax, eax                                       // 0x0089498d    85c0
                         {disp8} je       _jmp_addr_0x008949af                           // 0x0089498f    741e
                         {disp8} mov      edx, dword ptr [edi + 0x28]                    // 0x00894991    8b5728
                         push             0x4                                            // 0x00894994    6a04
                         push             esi                                            // 0x00894996    56
                         push             0x0                                            // 0x00894997    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x3c]                    // 0x00894999    8d4c243c
                         push             edx                                            // 0x0089499d    52
                         push             ecx                                            // 0x0089499e    51
                         push             eax                                            // 0x0089499f    50
                         push             0xc                                            // 0x008949a0    6a0c
                         push             ebx                                            // 0x008949a2    53
                         {disp8} mov      dword ptr [esp + 0x50], esi                    // 0x008949a3    89742450
                         call             _jmp_addr_0x00891120                           // 0x008949a7    e874c7ffff
                         add              esp, 0x20                                      // 0x008949ac    83c420
_jmp_addr_0x008949af:    pop              edi                                            // 0x008949af    5f
                         pop              esi                                            // 0x008949b0    5e
                         pop              ebp                                            // 0x008949b1    5d
                         pop              ebx                                            // 0x008949b2    5b
                         add              esp, 0x14                                      // 0x008949b3    83c414
                         ret                                                             // 0x008949b6    c3
                         nop                                                             // 0x008949b7    90
                         nop                                                             // 0x008949b8    90
                         nop                                                             // 0x008949b9    90
                         nop                                                             // 0x008949ba    90
                         nop                                                             // 0x008949bb    90
                         nop                                                             // 0x008949bc    90
                         nop                                                             // 0x008949bd    90
                         nop                                                             // 0x008949be    90
                         nop                                                             // 0x008949bf    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x008949c0    8b442408
                         cmp              dword ptr [eax + 0x24], 0x01                   // 0x008949c4    83782401
                         {disp8} jne      _jmp_addr_0x008949e6                           // 0x008949c8    751c
                         {disp8} mov      ecx, dword ptr [eax + 0x20]                    // 0x008949ca    8b4820
                         {disp8} mov      eax, dword ptr [eax + 0x08]                    // 0x008949cd    8b4008
                         mov              edx, dword ptr [ecx]                           // 0x008949d0    8b11
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                    // 0x008949d2    8b4c2404
                         push             edx                                            // 0x008949d6    52
                         push             0x00894910                                     // 0x008949d7    6810498900
                         push             eax                                            // 0x008949dc    50
                         push             ecx                                            // 0x008949dd    51
                         call             _jmp_addr_0x008929b0                           // 0x008949de    e8cddfffff
                         add              esp, 0x10                                      // 0x008949e3    83c410
_jmp_addr_0x008949e6:    ret                                                             // 0x008949e6    c3
                         nop                                                             // 0x008949e7    90
                         nop                                                             // 0x008949e8    90
                         nop                                                             // 0x008949e9    90
                         nop                                                             // 0x008949ea    90
                         nop                                                             // 0x008949eb    90
                         nop                                                             // 0x008949ec    90
                         nop                                                             // 0x008949ed    90
                         nop                                                             // 0x008949ee    90
                         nop                                                             // 0x008949ef    90
                         sub              esp, 0x14                                      // 0x008949f0    83ec14
                         push             ebx                                            // 0x008949f3    53
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x008949f4    8b5c241c
                         push             ebp                                            // 0x008949f8    55
                         {disp8} mov      ebp, dword ptr [esp + 0x24]                    // 0x008949f9    8b6c2424
                         push             esi                                            // 0x008949fd    56
                         {disp8} mov      esi, dword ptr [esp + 0x2c]                    // 0x008949fe    8b74242c
                         push             edi                                            // 0x00894a02    57
                         push             esi                                            // 0x00894a03    56
                         push             ebp                                            // 0x00894a04    55
                         push             ebx                                            // 0x00894a05    53
                         call             _jmp_addr_0x00892940                           // 0x00894a06    e835dfffff
                         push             esi                                            // 0x00894a0b    56
                         push             ebx                                            // 0x00894a0c    53
                         call             _jmp_addr_0x008927c0                           // 0x00894a0d    e8aeddffff
                         add              esp, 0x14                                      // 0x00894a12    83c414
                         test             eax, eax                                       // 0x00894a15    85c0
                         {disp8} je       _jmp_addr_0x00894a8f                           // 0x00894a17    7476
                         push             esi                                            // 0x00894a19    56
                         push             ebx                                            // 0x00894a1a    53
                         call             _jmp_addr_0x008924a0                           // 0x00894a1b    e880daffff
                         mov.s            edi, eax                                       // 0x00894a20    8bf8
                         add              esp, 0x08                                      // 0x00894a22    83c408
                         test             edi, edi                                       // 0x00894a25    85ff
                         {disp8} je       _jmp_addr_0x00894a8f                           // 0x00894a27    7466
                         {disp8} mov      eax, dword ptr [edi + 0x0c]                    // 0x00894a29    8b470c
                         test             eax, eax                                       // 0x00894a2c    85c0
                         {disp8} je       _jmp_addr_0x00894a6a                           // 0x00894a2e    743a
                         {disp8} mov      ecx, dword ptr [esp + 0x34]                    // 0x00894a30    8b4c2434
                         {disp8} mov      edx, dword ptr [edi + 0x28]                    // 0x00894a34    8b5728
                         push             0x14                                           // 0x00894a37    6a14
                         {disp8} mov      dword ptr [esp + 0x20], ecx                    // 0x00894a39    894c2420
                         push             esi                                            // 0x00894a3d    56
                         push             0x0                                            // 0x00894a3e    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                    // 0x00894a40    8d4c241c
                         push             edx                                            // 0x00894a44    52
                         push             ecx                                            // 0x00894a45    51
                         push             eax                                            // 0x00894a46    50
                         push             0x7                                            // 0x00894a47    6a07
                         push             ebx                                            // 0x00894a49    53
                         {disp8} mov      dword ptr [esp + 0x30], esi                    // 0x00894a4a    89742430
                         {disp8} mov      dword ptr [esp + 0x34], ebp                    // 0x00894a4e    896c2434
                         {disp8} mov      dword ptr [esp + 0x38], 0x00000003             // 0x00894a52    c744243803000000
                         {disp8} mov      dword ptr [esp + 0x40], 0x00000000             // 0x00894a5a    c744244000000000
                         call             _jmp_addr_0x00891120                           // 0x00894a62    e8b9c6ffff
                         add              esp, 0x20                                      // 0x00894a67    83c420
_jmp_addr_0x00894a6a:    {disp8} mov      eax, dword ptr [edi + 0x20]                    // 0x00894a6a    8b4720
                         test             eax, eax                                       // 0x00894a6d    85c0
                         {disp8} je       _jmp_addr_0x00894a8f                           // 0x00894a6f    741e
                         {disp8} mov      edx, dword ptr [edi + 0x28]                    // 0x00894a71    8b5728
                         push             0x4                                            // 0x00894a74    6a04
                         push             esi                                            // 0x00894a76    56
                         push             0x0                                            // 0x00894a77    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x3c]                    // 0x00894a79    8d4c243c
                         push             edx                                            // 0x00894a7d    52
                         push             ecx                                            // 0x00894a7e    51
                         push             eax                                            // 0x00894a7f    50
                         push             0xc                                            // 0x00894a80    6a0c
                         push             ebx                                            // 0x00894a82    53
                         {disp8} mov      dword ptr [esp + 0x50], esi                    // 0x00894a83    89742450
                         call             _jmp_addr_0x00891120                           // 0x00894a87    e894c6ffff
                         add              esp, 0x20                                      // 0x00894a8c    83c420
_jmp_addr_0x00894a8f:    pop              edi                                            // 0x00894a8f    5f
                         pop              esi                                            // 0x00894a90    5e
                         pop              ebp                                            // 0x00894a91    5d
                         pop              ebx                                            // 0x00894a92    5b
                         add              esp, 0x14                                      // 0x00894a93    83c414
                         ret                                                             // 0x00894a96    c3
                         nop                                                             // 0x00894a97    90
                         nop                                                             // 0x00894a98    90
                         nop                                                             // 0x00894a99    90
                         nop                                                             // 0x00894a9a    90
                         nop                                                             // 0x00894a9b    90
                         nop                                                             // 0x00894a9c    90
                         nop                                                             // 0x00894a9d    90
                         nop                                                             // 0x00894a9e    90
                         nop                                                             // 0x00894a9f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00894aa0    8b442408
                         cmp              dword ptr [eax + 0x24], 0x02                   // 0x00894aa4    83782402
                         {disp8} jne      _jmp_addr_0x00894ac6                           // 0x00894aa8    751c
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00894aaa    8b4020
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x00894aad    8b4804
                         mov              edx, dword ptr [eax]                           // 0x00894ab0    8b10
                         {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00894ab2    8b442404
                         push             ecx                                            // 0x00894ab6    51
                         push             0x008949f0                                     // 0x00894ab7    68f0498900
                         push             edx                                            // 0x00894abc    52
                         push             eax                                            // 0x00894abd    50
                         call             _jmp_addr_0x008929b0                           // 0x00894abe    e8eddeffff
                         add              esp, 0x10                                      // 0x00894ac3    83c410
_jmp_addr_0x00894ac6:    ret                                                             // 0x00894ac6    c3
                         nop                                                             // 0x00894ac7    90
                         nop                                                             // 0x00894ac8    90
                         nop                                                             // 0x00894ac9    90
                         nop                                                             // 0x00894aca    90
                         nop                                                             // 0x00894acb    90
                         nop                                                             // 0x00894acc    90
                         nop                                                             // 0x00894acd    90
                         nop                                                             // 0x00894ace    90
                         nop                                                             // 0x00894acf    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00894ad0    8b442408
                         sub              esp, 0x08                                      // 0x00894ad4    83ec08
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00894ad7    8b4824
                         push             ebx                                            // 0x00894ada    53
                         push             esi                                            // 0x00894adb    56
                         cmp              ecx, 0x02                                      // 0x00894adc    83f902
                         push             edi                                            // 0x00894adf    57
                         {disp8} jne      _jmp_addr_0x00894b2d                           // 0x00894ae0    754b
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00894ae2    8b4020
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                    // 0x00894ae5    8b5c2418
                         {disp8} mov      edi, dword ptr [eax + 0x04]                    // 0x00894ae9    8b7804
                         mov              esi, dword ptr [eax]                           // 0x00894aec    8b30
                         push             edi                                            // 0x00894aee    57
                         push             esi                                            // 0x00894aef    56
                         push             ebx                                            // 0x00894af0    53
                         call             _jmp_addr_0x008927e0                           // 0x00894af1    e8eadcffff
                         push             esi                                            // 0x00894af6    56
                         push             ebx                                            // 0x00894af7    53
                         call             _jmp_addr_0x008924a0                           // 0x00894af8    e8a3d9ffff
                         add              esp, 0x14                                      // 0x00894afd    83c414
                         test             eax, eax                                       // 0x00894b00    85c0
                         {disp8} je       _jmp_addr_0x00894b2d                           // 0x00894b02    7429
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                    // 0x00894b04    8b4814
                         test             ecx, ecx                                       // 0x00894b07    85c9
                         {disp8} je       _jmp_addr_0x00894b2d                           // 0x00894b09    7422
                         {disp8} mov      eax, dword ptr [eax + 0x28]                    // 0x00894b0b    8b4028
                         push             0x8                                            // 0x00894b0e    6a08
                         push             esi                                            // 0x00894b10    56
                         push             0x0                                            // 0x00894b11    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x18]                    // 0x00894b13    8d542418
                         push             eax                                            // 0x00894b17    50
                         push             edx                                            // 0x00894b18    52
                         push             ecx                                            // 0x00894b19    51
                         push             0x9                                            // 0x00894b1a    6a09
                         push             ebx                                            // 0x00894b1c    53
                         {disp8} mov      dword ptr [esp + 0x2c], esi                    // 0x00894b1d    8974242c
                         {disp8} mov      dword ptr [esp + 0x30], edi                    // 0x00894b21    897c2430
                         call             _jmp_addr_0x00891120                           // 0x00894b25    e8f6c5ffff
                         add              esp, 0x20                                      // 0x00894b2a    83c420
_jmp_addr_0x00894b2d:    pop              edi                                            // 0x00894b2d    5f
                         pop              esi                                            // 0x00894b2e    5e
                         pop              ebx                                            // 0x00894b2f    5b
                         add              esp, 0x08                                      // 0x00894b30    83c408
                         ret                                                             // 0x00894b33    c3
                         nop                                                             // 0x00894b34    90
                         nop                                                             // 0x00894b35    90
                         nop                                                             // 0x00894b36    90
                         nop                                                             // 0x00894b37    90
                         nop                                                             // 0x00894b38    90
                         nop                                                             // 0x00894b39    90
                         nop                                                             // 0x00894b3a    90
                         nop                                                             // 0x00894b3b    90
                         nop                                                             // 0x00894b3c    90
                         nop                                                             // 0x00894b3d    90
                         nop                                                             // 0x00894b3e    90
                         nop                                                             // 0x00894b3f    90
                         sub              esp, 0x1c                                      // 0x00894b40    83ec1c
                         push             ebx                                            // 0x00894b43    53
                         push             ebp                                            // 0x00894b44    55
                         push             esi                                            // 0x00894b45    56
                         {disp8} mov      esi, dword ptr [esp + 0x30]                    // 0x00894b46    8b742430
                         push             edi                                            // 0x00894b4a    57
                         cmp              dword ptr [esi + 0x24], 0x02                   // 0x00894b4b    837e2402
                         {disp32} jl      _jmp_addr_0x00894c44                           // 0x00894b4f    0f8cef000000
                         {disp8} mov      eax, dword ptr [esi + 0x20]                    // 0x00894b55    8b4620
                         {disp8} mov      ebx, dword ptr [esp + 0x30]                    // 0x00894b58    8b5c2430
                         mov              edi, dword ptr [eax]                           // 0x00894b5c    8b38
                         {disp8} mov      ebp, dword ptr [eax + 0x04]                    // 0x00894b5e    8b6804
                         push             edi                                            // 0x00894b61    57
                         push             ebx                                            // 0x00894b62    53
                         call             _jmp_addr_0x00892650                           // 0x00894b63    e8e8daffff
                         add              esp, 0x08                                      // 0x00894b68    83c408
                         test             eax, eax                                       // 0x00894b6b    85c0
                         {disp32} je      _jmp_addr_0x00894c44                           // 0x00894b6d    0f84d1000000
                         {disp8} mov      eax, dword ptr [esi + 0x24]                    // 0x00894b73    8b4624
                         {disp8} mov      ecx, dword ptr [esi + 0x20]                    // 0x00894b76    8b4e20
                         sub              eax, 0x02                                      // 0x00894b79    83e802
                         add              ecx, 0x8                                       // 0x00894b7c    83c108
                         push             eax                                            // 0x00894b7f    50
                         push             ecx                                            // 0x00894b80    51
                         push             ebp                                            // 0x00894b81    55
                         call             _jmp_addr_0x00893d00                           // 0x00894b82    e879f1ffff
                         mov.s            ebp, eax                                       // 0x00894b87    8be8
                         add              esp, 0x0c                                      // 0x00894b89    83c40c
                         test             ebp, ebp                                       // 0x00894b8c    85ed
                         {disp32} je      _jmp_addr_0x00894c44                           // 0x00894b8e    0f84b0000000
                         cmp              dword ptr [ebp + 0x00], 0x00                   // 0x00894b94    837d0000
                         {disp8} je       _jmp_addr_0x00894c01                           // 0x00894b98    7467
                         {disp8} lea      esi, dword ptr [ebp + 0x08]                    // 0x00894b9a    8d7508
_jmp_addr_0x00894b9d:    {disp8} mov      eax, dword ptr [esi + -0x08]                   // 0x00894b9d    8b46f8
                         sub              eax, 0x06                                      // 0x00894ba0    83e806
                         {disp8} je       _jmp_addr_0x00894bdf                           // 0x00894ba3    743a
                         sub              eax, 0x04                                      // 0x00894ba5    83e804
                         {disp8} je       _jmp_addr_0x00894bc6                           // 0x00894ba8    741c
                         dec              eax                                            // 0x00894baa    48
                         {disp8} jne      _jmp_addr_0x00894bf7                           // 0x00894bab    754a
                         mov              eax, dword ptr [esi]                           // 0x00894bad    8b06
                         test             eax, eax                                       // 0x00894baf    85c0
                         {disp8} je       _jmp_addr_0x00894bf7                           // 0x00894bb1    7444
                         {disp8} mov      edx, dword ptr [esi + -0x04]                   // 0x00894bb3    8b56fc
                         push             edx                                            // 0x00894bb6    52
                         push             0x1                                            // 0x00894bb7    6a01
                         push             edi                                            // 0x00894bb9    57
                         push             eax                                            // 0x00894bba    50
                         push             ebx                                            // 0x00894bbb    53
                         call             _jmp_addr_0x00892b90                           // 0x00894bbc    e8cfdfffff
                         add              esp, 0x14                                      // 0x00894bc1    83c414
                         {disp8} jmp      _jmp_addr_0x00894bf7                           // 0x00894bc4    eb31
_jmp_addr_0x00894bc6:    mov              eax, dword ptr [esi]                           // 0x00894bc6    8b06
                         test             eax, eax                                       // 0x00894bc8    85c0
                         {disp8} je       _jmp_addr_0x00894bf7                           // 0x00894bca    742b
                         {disp8} mov      ecx, dword ptr [esi + -0x04]                   // 0x00894bcc    8b4efc
                         push             ecx                                            // 0x00894bcf    51
                         push             0x2                                            // 0x00894bd0    6a02
                         push             edi                                            // 0x00894bd2    57
                         push             eax                                            // 0x00894bd3    50
                         push             ebx                                            // 0x00894bd4    53
                         call             _jmp_addr_0x00892b90                           // 0x00894bd5    e8b6dfffff
                         add              esp, 0x14                                      // 0x00894bda    83c414
                         {disp8} jmp      _jmp_addr_0x00894bf7                           // 0x00894bdd    eb18
_jmp_addr_0x00894bdf:    {disp8} mov      eax, dword ptr [esi + -0x04]                   // 0x00894bdf    8b46fc
                         test             eax, eax                                       // 0x00894be2    85c0
                         {disp8} je       _jmp_addr_0x00894beb                           // 0x00894be4    7405
                         mov              edx, dword ptr [esi]                           // 0x00894be6    8b16
                         push             edx                                            // 0x00894be8    52
                         {disp8} jmp      _jmp_addr_0x00894bed                           // 0x00894be9    eb02
_jmp_addr_0x00894beb:    push             0x0                                            // 0x00894beb    6a00
_jmp_addr_0x00894bed:    push             edi                                            // 0x00894bed    57
                         push             ebx                                            // 0x00894bee    53
                         call             _jmp_addr_0x008926f0                           // 0x00894bef    e8fcdaffff
                         add              esp, 0x0c                                      // 0x00894bf4    83c40c
_jmp_addr_0x00894bf7:    {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x00894bf7    8b4604
                         add              esi, 0x0c                                      // 0x00894bfa    83c60c
                         test             eax, eax                                       // 0x00894bfd    85c0
                         {disp8} jne      _jmp_addr_0x00894b9d                           // 0x00894bff    759c
_jmp_addr_0x00894c01:    {disp8} lea      eax, dword ptr [esp + 0x10]                    // 0x00894c01    8d442410
                         push             eax                                            // 0x00894c05    50
                         push             edi                                            // 0x00894c06    57
                         push             ebx                                            // 0x00894c07    53
                         call             _jmp_addr_0x00892670                           // 0x00894c08    e863daffff
                         add              esp, 0x0c                                      // 0x00894c0d    83c40c
                         test             eax, eax                                       // 0x00894c10    85c0
                         push             ebp                                            // 0x00894c12    55
                         {disp8} jne      _jmp_addr_0x00894c25                           // 0x00894c13    7510
                         call             _free                                          // 0x00894c15    e86c1bf3ff
                         add              esp, 0x04                                      // 0x00894c1a    83c404
                         pop              edi                                            // 0x00894c1d    5f
                         pop              esi                                            // 0x00894c1e    5e
                         pop              ebp                                            // 0x00894c1f    5d
                         pop              ebx                                            // 0x00894c20    5b
                         add              esp, 0x1c                                      // 0x00894c21    83c41c
                         ret                                                             // 0x00894c24    c3
_jmp_addr_0x00894c25:    {disp8} lea      ecx, dword ptr [esp + 0x14]                    // 0x00894c25    8d4c2414
                         push             ecx                                            // 0x00894c29    51
                         call             _jmp_addr_0x00893f30                           // 0x00894c2a    e801f3ffff
                         {disp8} lea      edx, dword ptr [esp + 0x18]                    // 0x00894c2f    8d542418
                         push             edx                                            // 0x00894c33    52
                         push             edi                                            // 0x00894c34    57
                         push             ebx                                            // 0x00894c35    53
                         call             _jmp_addr_0x008926b0                           // 0x00894c36    e875daffff
                         push             ebp                                            // 0x00894c3b    55
                         call             _free                                          // 0x00894c3c    e8451bf3ff
                         add              esp, 0x18                                      // 0x00894c41    83c418
_jmp_addr_0x00894c44:    pop              edi                                            // 0x00894c44    5f
                         pop              esi                                            // 0x00894c45    5e
                         pop              ebp                                            // 0x00894c46    5d
                         pop              ebx                                            // 0x00894c47    5b
                         add              esp, 0x1c                                      // 0x00894c48    83c41c
                         ret                                                             // 0x00894c4b    c3
                         nop                                                             // 0x00894c4c    90
                         nop                                                             // 0x00894c4d    90
                         nop                                                             // 0x00894c4e    90
                         nop                                                             // 0x00894c4f    90
                         {disp8} mov      edx, dword ptr [esp + 0x08]                    // 0x00894c50    8b542408
                         cmp              dword ptr [edx + 0x24], 0x01                   // 0x00894c54    837a2401
                         {disp8} jne      _jmp_addr_0x00894cb1                           // 0x00894c58    7557
                         {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00894c5a    8b442404
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x00894c5e    8b4804
                         test             ecx, ecx                                       // 0x00894c61    85c9
                         {disp8} je       _jmp_addr_0x00894c80                           // 0x00894c63    741b
                         {disp8} mov      ecx, dword ptr [eax + 0x10]                    // 0x00894c65    8b4810
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000             // 0x00894c68    c7400400000000
                         test             ecx, ecx                                       // 0x00894c6f    85c9
                         {disp8} je       _jmp_addr_0x00894cb1                           // 0x00894c71    743e
                         {disp8} mov      edx, dword ptr [eax + 0x14]                    // 0x00894c73    8b5014
                         push             edx                                            // 0x00894c76    52
                         push             0x0                                            // 0x00894c77    6a00
                         push             eax                                            // 0x00894c79    50
                         call             ecx                                            // 0x00894c7a    ffd1
                         add              esp, 0x0c                                      // 0x00894c7c    83c40c
                         ret                                                             // 0x00894c7f    c3
_jmp_addr_0x00894c80:    {disp32} mov     ecx, dword ptr [eax + 0x0000036c]              // 0x00894c80    8b886c030000
                         test             ecx, ecx                                       // 0x00894c86    85c9
                         {disp8} je       _jmp_addr_0x00894cb1                           // 0x00894c88    7427
                         {disp8} mov      edx, dword ptr [edx + 0x20]                    // 0x00894c8a    8b5220
                         push             0x4                                            // 0x00894c8d    6a04
                         push             0x0                                            // 0x00894c8f    6a00
                         push             0x0                                            // 0x00894c91    6a00
                         mov              edx, dword ptr [edx]                           // 0x00894c93    8b12
                         {disp8} mov      dword ptr [esp + 0x14], edx                    // 0x00894c95    89542414
                         {disp32} mov     edx, dword ptr [eax + 0x00000378]              // 0x00894c99    8b9078030000
                         push             edx                                            // 0x00894c9f    52
                         {disp8} lea      edx, dword ptr [esp + 0x18]                    // 0x00894ca0    8d542418
                         push             edx                                            // 0x00894ca4    52
                         push             ecx                                            // 0x00894ca5    51
                         push             0x1                                            // 0x00894ca6    6a01
                         push             eax                                            // 0x00894ca8    50
                         call             _jmp_addr_0x00891120                           // 0x00894ca9    e872c4ffff
                         add              esp, 0x20                                      // 0x00894cae    83c420
_jmp_addr_0x00894cb1:    ret                                                             // 0x00894cb1    c3
                         nop                                                             // 0x00894cb2    90
                         nop                                                             // 0x00894cb3    90
                         nop                                                             // 0x00894cb4    90
                         nop                                                             // 0x00894cb5    90
                         nop                                                             // 0x00894cb6    90
                         nop                                                             // 0x00894cb7    90
                         nop                                                             // 0x00894cb8    90
                         nop                                                             // 0x00894cb9    90
                         nop                                                             // 0x00894cba    90
                         nop                                                             // 0x00894cbb    90
                         nop                                                             // 0x00894cbc    90
                         nop                                                             // 0x00894cbd    90
                         nop                                                             // 0x00894cbe    90
                         nop                                                             // 0x00894cbf    90
                         {disp8} mov      edx, dword ptr [esp + 0x08]                    // 0x00894cc0    8b542408
                         sub              esp, 0x08                                      // 0x00894cc4    83ec08
                         cmp              dword ptr [edx + 0x24], 0x02                   // 0x00894cc7    837a2402
                         {disp8} jne      _jmp_addr_0x00894d0c                           // 0x00894ccb    753f
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x00894ccd    8b44240c
                         {disp32} mov     ecx, dword ptr [eax + 0x00000374]              // 0x00894cd1    8b8874030000
                         test             ecx, ecx                                       // 0x00894cd7    85c9
                         {disp8} je       _jmp_addr_0x00894d0c                           // 0x00894cd9    7431
                         push             esi                                            // 0x00894cdb    56
                         {disp8} mov      esi, dword ptr [edx + 0x20]                    // 0x00894cdc    8b7220
                         {disp8} mov      edx, dword ptr [edx + 0x08]                    // 0x00894cdf    8b5208
                         push             0x8                                            // 0x00894ce2    6a08
                         {disp8} mov      esi, dword ptr [esi + 0x04]                    // 0x00894ce4    8b7604
                         {disp8} mov      dword ptr [esp + 0x0c], edx                    // 0x00894ce7    8954240c
                         {disp32} mov     edx, dword ptr [eax + 0x00000378]              // 0x00894ceb    8b9078030000
                         push             0x0                                            // 0x00894cf1    6a00
                         push             0x0                                            // 0x00894cf3    6a00
                         push             edx                                            // 0x00894cf5    52
                         {disp8} lea      edx, dword ptr [esp + 0x14]                    // 0x00894cf6    8d542414
                         {disp8} mov      dword ptr [esp + 0x14], esi                    // 0x00894cfa    89742414
                         push             edx                                            // 0x00894cfe    52
                         push             ecx                                            // 0x00894cff    51
                         push             0x3                                            // 0x00894d00    6a03
                         push             eax                                            // 0x00894d02    50
                         call             _jmp_addr_0x00891120                           // 0x00894d03    e818c4ffff
                         add              esp, 0x20                                      // 0x00894d08    83c420
                         pop              esi                                            // 0x00894d0b    5e
_jmp_addr_0x00894d0c:    add              esp, 0x08                                      // 0x00894d0c    83c408
                         ret                                                             // 0x00894d0f    c3
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00894d10    8b442408
                         sub              esp, 0x38                                      // 0x00894d14    83ec38
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00894d17    8b4824
                         push             ebx                                            // 0x00894d1a    53
                         push             ebp                                            // 0x00894d1b    55
                         push             esi                                            // 0x00894d1c    56
                         cmp              ecx, 0x04                                      // 0x00894d1d    83f904
                         push             edi                                            // 0x00894d20    57
                         {disp32} jne     _jmp_addr_0x00894ec6                           // 0x00894d21    0f859f010000
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00894d27    8b4020
                         mov              ecx, 0x0000000c                                // 0x00894d2a    b90c000000
                         {disp8} lea      edi, dword ptr [esp + 0x18]                    // 0x00894d2f    8d7c2418
                         {disp8} mov      esi, dword ptr [eax + 0x08]                    // 0x00894d33    8b7008
                         {disp8} mov      ebp, dword ptr [eax + 0x0c]                    // 0x00894d36    8b680c
                         xor.s            eax, eax                                       // 0x00894d39    33c0
                         {disp8} mov      dword ptr [esp + 0x14], esi                    // 0x00894d3b    89742414
                         rep stosd                                                       // 0x00894d3f    f3ab
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]                    // 0x00894d41    8b4c244c
                         mov              eax, 0x00000003                                // 0x00894d45    b803000000
                         {disp8} mov      dword ptr [esp + 0x30], eax                    // 0x00894d4a    89442430
                         {disp8} mov      dword ptr [esp + 0x3c], eax                    // 0x00894d4e    8944243c
                         {disp8} lea      eax, dword ptr [esp + 0x18]                    // 0x00894d52    8d442418
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000001             // 0x00894d56    c744241801000000
                         push             eax                                            // 0x00894d5e    50
                         push             0x4                                            // 0x00894d5f    6a04
                         push             ecx                                            // 0x00894d61    51
                         {disp8} mov      dword ptr [esp + 0x28], esi                    // 0x00894d62    89742428
                         {disp8} mov      dword ptr [esp + 0x30], 0x0000000c             // 0x00894d66    c74424300c000000
                         {disp8} mov      dword ptr [esp + 0x34], esi                    // 0x00894d6e    89742434
                         {disp8} mov      dword ptr [esp + 0x40], esi                    // 0x00894d72    89742440
                         call             _jmp_addr_0x00894490                           // 0x00894d76    e815f7ffff
                         mov.s            edi, eax                                       // 0x00894d7b    8bf8
                         add              esp, 0x0c                                      // 0x00894d7d    83c40c
                         test             edi, edi                                       // 0x00894d80    85ff
                         {disp8} mov      dword ptr [esp + 0x10], edi                    // 0x00894d82    897c2410
                         {disp32} je      _jmp_addr_0x00894ec6                           // 0x00894d86    0f843a010000
                         cmp              dword ptr [edi], 0x01                          // 0x00894d8c    833f01
                         {disp8} je       _jmp_addr_0x00894d96                           // 0x00894d8f    7405
                         {disp8} mov      ebx, dword ptr [edi + 0x1c]                    // 0x00894d91    8b5f1c
                         {disp8} jmp      _jmp_addr_0x00894d9a                           // 0x00894d94    eb04
_jmp_addr_0x00894d96:    {disp8} mov      ebx, dword ptr [esp + 0x4c]                    // 0x00894d96    8b5c244c
_jmp_addr_0x00894d9a:    push             0x009d00cc                                     // 0x00894d9a    68cc009d00
                         push             ebp                                            // 0x00894d9f    55
                         call             _strtok                                        // 0x00894da0    e88546f3ff
                         mov.s            ebp, eax                                       // 0x00894da5    8be8
                         add              esp, 0x08                                      // 0x00894da7    83c408
                         test             ebp, ebp                                       // 0x00894daa    85ed
                         {disp32} je      _jmp_addr_0x00894ec6                           // 0x00894dac    0f8414010000
_jmp_addr_0x00894db2:    {disp8} mov      al, byte ptr [ebp + 0x00]                      // 0x00894db2    8a4500
                         cmp              al, 0x40                                       // 0x00894db5    3c40
                         {disp8} jne      _jmp_addr_0x00894dc4                           // 0x00894db7    750b
                         {disp8} mov      dword ptr [esp + 0x50], 0x00000002             // 0x00894db9    c744245002000000
                         inc              ebp                                            // 0x00894dc1    45
                         {disp8} jmp      _jmp_addr_0x00894ddb                           // 0x00894dc2    eb17
_jmp_addr_0x00894dc4:    cmp              al, 0x2b                                       // 0x00894dc4    3c2b
                         {disp8} jne      _jmp_addr_0x00894dd3                           // 0x00894dc6    750b
                         {disp8} mov      dword ptr [esp + 0x50], 0x00000001             // 0x00894dc8    c744245001000000
                         inc              ebp                                            // 0x00894dd0    45
                         {disp8} jmp      _jmp_addr_0x00894ddb                           // 0x00894dd1    eb08
_jmp_addr_0x00894dd3:    {disp8} mov      dword ptr [esp + 0x50], 0x00000000             // 0x00894dd3    c744245000000000
_jmp_addr_0x00894ddb:    cmp              dword ptr [edi], 0x01                          // 0x00894ddb    833f01
                         {disp32} je      _jmp_addr_0x00894e89                           // 0x00894dde    0f84a5000000
                         mov              eax, dword ptr [ebx]                           // 0x00894de4    8b03
                         {disp8} mov      ecx, dword ptr [ebx + 0x04]                    // 0x00894de6    8b4b04
                         cmp.s            ecx, eax                                       // 0x00894de9    3bc8
                         {disp8} jne      _jmp_addr_0x00894e34                           // 0x00894deb    7547
                         {disp32} lea     edx, dword ptr [eax * 0x4 + 0x00000190]        // 0x00894ded    8d148590010000
                         {disp8} mov      eax, dword ptr [ebx + 0x08]                    // 0x00894df4    8b4308
                         push             edx                                            // 0x00894df7    52
                         push             eax                                            // 0x00894df8    50
                         call             _realloc                                       // 0x00894df9    e8a14af3ff
                         add              esp, 0x08                                      // 0x00894dfe    83c408
                         test             eax, eax                                       // 0x00894e01    85c0
                         {disp32} je      _jmp_addr_0x00894ec6                           // 0x00894e03    0f84bd000000
                         mov              ecx, dword ptr [ebx]                           // 0x00894e09    8b0b
                         {disp8} mov      dword ptr [ebx + 0x08], eax                    // 0x00894e0b    894308
                         {disp8} mov      eax, dword ptr [ebx + 0x0c]                    // 0x00894e0e    8b430c
                         {disp32} lea     edx, dword ptr [ecx * 0x4 + 0x00000190]        // 0x00894e11    8d148d90010000
                         push             edx                                            // 0x00894e18    52
                         push             eax                                            // 0x00894e19    50
                         call             _realloc                                       // 0x00894e1a    e8804af3ff
                         add              esp, 0x08                                      // 0x00894e1f    83c408
                         test             eax, eax                                       // 0x00894e22    85c0
                         {disp32} je      _jmp_addr_0x00894ec6                           // 0x00894e24    0f849c000000
                         {disp8} mov      dword ptr [ebx + 0x0c], eax                    // 0x00894e2a    89430c
                         mov              eax, dword ptr [ebx]                           // 0x00894e2d    8b03
                         add              eax, 0x64                                      // 0x00894e2f    83c064
                         mov              dword ptr [ebx], eax                           // 0x00894e32    8903
_jmp_addr_0x00894e34:    mov.s            edi, ebp                                       // 0x00894e34    8bfd
                         or               ecx, 0xffffffff                                // 0x00894e36    83c9ff
                         xor.s            eax, eax                                       // 0x00894e39    33c0
                         repne scasb                                                     // 0x00894e3b    f2ae
                         not              ecx                                            // 0x00894e3d    f7d1
                         dec              ecx                                            // 0x00894e3f    49
                         mov.s            esi, ecx                                       // 0x00894e40    8bf1
                         inc              esi                                            // 0x00894e42    46
                         push             esi                                            // 0x00894e43    56
                         call             _malloc                                        // 0x00894e44    e80318f3ff
                         add              esp, 0x04                                      // 0x00894e49    83c404
                         test             eax, eax                                       // 0x00894e4c    85c0
                         {disp8} je       _jmp_addr_0x00894ec6                           // 0x00894e4e    7476
                         mov.s            ecx, esi                                       // 0x00894e50    8bce
                         mov.s            esi, ebp                                       // 0x00894e52    8bf5
                         mov.s            edx, ecx                                       // 0x00894e54    8bd1
                         mov.s            edi, eax                                       // 0x00894e56    8bf8
                         shr              ecx, 2                                         // 0x00894e58    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00894e5b    f3a5
                         mov.s            ecx, edx                                       // 0x00894e5d    8bca
                         and              ecx, 0x03                                      // 0x00894e5f    83e103
                         rep movsb                                                       // 0x00894e62    f3a4
                         {disp8} mov      ecx, dword ptr [ebx + 0x04]                    // 0x00894e64    8b4b04
                         {disp8} mov      edx, dword ptr [ebx + 0x08]                    // 0x00894e67    8b5308
                         {disp8} mov      edi, dword ptr [esp + 0x10]                    // 0x00894e6a    8b7c2410
                         {disp8} mov      esi, dword ptr [esp + 0x14]                    // 0x00894e6e    8b742414
                         mov              dword ptr [edx + ecx * 0x4], eax               // 0x00894e72    89048a
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x00894e75    8b4304
                         {disp8} mov      ecx, dword ptr [ebx + 0x0c]                    // 0x00894e78    8b4b0c
                         {disp8} mov      edx, dword ptr [esp + 0x50]                    // 0x00894e7b    8b542450
                         mov              dword ptr [ecx + eax * 0x4], edx               // 0x00894e7f    891481
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x00894e82    8b4304
                         inc              eax                                            // 0x00894e85    40
                         {disp8} mov      dword ptr [ebx + 0x04], eax                    // 0x00894e86    894304
_jmp_addr_0x00894e89:    mov              eax, dword ptr [edi]                           // 0x00894e89    8b07
                         cmp              eax, 0x01                                      // 0x00894e8b    83f801
                         {disp8} je       _jmp_addr_0x00894e95                           // 0x00894e8e    7405
                         cmp              eax, 0x0c                                      // 0x00894e90    83f80c
                         {disp8} jne      _jmp_addr_0x00894ead                           // 0x00894e93    7518
_jmp_addr_0x00894e95:    {disp8} mov      eax, dword ptr [esp + 0x50]                    // 0x00894e95    8b442450
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]                    // 0x00894e99    8b4c244c
                         push             0x0                                            // 0x00894e9d    6a00
                         push             0x0                                            // 0x00894e9f    6a00
                         push             eax                                            // 0x00894ea1    50
                         push             esi                                            // 0x00894ea2    56
                         push             ebp                                            // 0x00894ea3    55
                         push             ecx                                            // 0x00894ea4    51
                         call             _jmp_addr_0x00892840                           // 0x00894ea5    e896d9ffff
                         add              esp, 0x18                                      // 0x00894eaa    83c418
_jmp_addr_0x00894ead:    push             0x009d00cc                                     // 0x00894ead    68cc009d00
                         push             0x0                                            // 0x00894eb2    6a00
                         call             _strtok                                        // 0x00894eb4    e87145f3ff
                         mov.s            ebp, eax                                       // 0x00894eb9    8be8
                         add              esp, 0x08                                      // 0x00894ebb    83c408
                         test             ebp, ebp                                       // 0x00894ebe    85ed
                         {disp32} jne     _jmp_addr_0x00894db2                           // 0x00894ec0    0f85ecfeffff
_jmp_addr_0x00894ec6:    pop              edi                                            // 0x00894ec6    5f
                         pop              esi                                            // 0x00894ec7    5e
                         pop              ebp                                            // 0x00894ec8    5d
                         pop              ebx                                            // 0x00894ec9    5b
                         add              esp, 0x38                                      // 0x00894eca    83c438
                         ret                                                             // 0x00894ecd    c3
                         nop                                                             // 0x00894ece    90
                         nop                                                             // 0x00894ecf    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00894ed0    8b442408
                         sub              esp, 0x44                                      // 0x00894ed4    83ec44
                         mov              edx, 0x00000003                                // 0x00894ed7    ba03000000
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00894edc    8b4824
                         push             ebx                                            // 0x00894edf    53
                         push             esi                                            // 0x00894ee0    56
                         cmp.s            ecx, edx                                       // 0x00894ee1    3bca
                         push             edi                                            // 0x00894ee3    57
                         {disp32} jne     _jmp_addr_0x0089501a                           // 0x00894ee4    0f8530010000
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00894eea    8b4020
                         mov              edi, 0x00befc88                                // 0x00894eed    bf88fcbe00
                         {disp8} mov      ebx, dword ptr [eax + 0x04]                    // 0x00894ef2    8b5804
                         mov.s            esi, ebx                                       // 0x00894ef5    8bf3
_jmp_addr_0x00894ef7:    mov              cl, byte ptr [esi]                             // 0x00894ef7    8a0e
                         mov.s            al, cl                                         // 0x00894ef9    8ac1
                         cmp              cl, byte ptr [edi]                             // 0x00894efb    3a0f
                         {disp8} jne      _jmp_addr_0x00894f1b                           // 0x00894efd    751c
                         test             al, al                                         // 0x00894eff    84c0
                         {disp8} je       _jmp_addr_0x00894f17                           // 0x00894f01    7414
                         {disp8} mov      cl, byte ptr [esi + 0x01]                      // 0x00894f03    8a4e01
                         mov.s            al, cl                                         // 0x00894f06    8ac1
                         cmp              cl, byte ptr [edi + 0x01]                      // 0x00894f08    3a4f01
                         {disp8} jne      _jmp_addr_0x00894f1b                           // 0x00894f0b    750e
                         add              esi, 0x02                                      // 0x00894f0d    83c602
                         add              edi, 0x02                                      // 0x00894f10    83c702
                         test             al, al                                         // 0x00894f13    84c0
                         {disp8} jne      _jmp_addr_0x00894ef7                           // 0x00894f15    75e0
_jmp_addr_0x00894f17:    xor.s            eax, eax                                       // 0x00894f17    33c0
                         {disp8} jmp      _jmp_addr_0x00894f20                           // 0x00894f19    eb05
_jmp_addr_0x00894f1b:    sbb.s            eax, eax                                       // 0x00894f1b    1bc0
                         sbb              eax, -0x01                                     // 0x00894f1d    83d8ff
_jmp_addr_0x00894f20:    test             eax, eax                                       // 0x00894f20    85c0
                         {disp8} jne      _jmp_addr_0x00894f26                           // 0x00894f22    7502
                         xor.s            ebx, ebx                                       // 0x00894f24    33db
_jmp_addr_0x00894f26:    mov              ecx, 0x0000000c                                // 0x00894f26    b90c000000
                         xor.s            eax, eax                                       // 0x00894f2b    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x20]                    // 0x00894f2d    8d7c2420
                         rep stosd                                                       // 0x00894f31    f3ab
                         {disp8} mov      edi, dword ptr [esp + 0x54]                    // 0x00894f33    8b7c2454
                         {disp8} mov      dword ptr [esp + 0x38], edx                    // 0x00894f37    89542438
                         {disp8} mov      dword ptr [esp + 0x44], edx                    // 0x00894f3b    89542444
                         {disp8} lea      edx, dword ptr [esp + 0x20]                    // 0x00894f3f    8d542420
                         push             edx                                            // 0x00894f43    52
                         push             0x4                                            // 0x00894f44    6a04
                         push             edi                                            // 0x00894f46    57
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000001             // 0x00894f47    c744242c01000000
                         {disp8} mov      dword ptr [esp + 0x30], ebx                    // 0x00894f4f    895c2430
                         {disp8} mov      dword ptr [esp + 0x38], 0x0000000c             // 0x00894f53    c74424380c000000
                         {disp8} mov      dword ptr [esp + 0x3c], ebx                    // 0x00894f5b    895c243c
                         {disp8} mov      dword ptr [esp + 0x48], ebx                    // 0x00894f5f    895c2448
                         call             _jmp_addr_0x00894490                           // 0x00894f63    e828f5ffff
                         mov.s            esi, eax                                       // 0x00894f68    8bf0
                         add              esp, 0x0c                                      // 0x00894f6a    83c40c
                         test             esi, esi                                       // 0x00894f6d    85f6
                         {disp32} je      _jmp_addr_0x0089501a                           // 0x00894f6f    0f84a5000000
                         mov              eax, dword ptr [esi]                           // 0x00894f75    8b06
                         cmp              eax, 0x01                                      // 0x00894f77    83f801
                         {disp8} jne      _jmp_addr_0x00894fab                           // 0x00894f7a    752f
                         {disp8} mov      dword ptr [esp + 0x0c], eax                    // 0x00894f7c    8944240c
                         {disp8} mov      eax, dword ptr [esi + 0x10]                    // 0x00894f80    8b4610
                         test             eax, eax                                       // 0x00894f83    85c0
                         {disp8} mov      dword ptr [esp + 0x10], ebx                    // 0x00894f85    895c2410
                         {disp8} jne      _jmp_addr_0x00894f95                           // 0x00894f89    750a
                         push             ebx                                            // 0x00894f8b    53
                         push             edi                                            // 0x00894f8c    57
                         call             _jmp_addr_0x00892790                           // 0x00894f8d    e8fed7ffff
                         add              esp, 0x08                                      // 0x00894f92    83c408
_jmp_addr_0x00894f95:    {disp8} lea      eax, dword ptr [esp + 0x0c]                    // 0x00894f95    8d44240c
                         push             eax                                            // 0x00894f99    50
                         push             esi                                            // 0x00894f9a    56
                         push             edi                                            // 0x00894f9b    57
                         call             _jmp_addr_0x00893410                           // 0x00894f9c    e86fe4ffff
                         add              esp, 0x0c                                      // 0x00894fa1    83c40c
                         pop              edi                                            // 0x00894fa4    5f
                         pop              esi                                            // 0x00894fa5    5e
                         pop              ebx                                            // 0x00894fa6    5b
                         add              esp, 0x44                                      // 0x00894fa7    83c444
                         ret                                                             // 0x00894faa    c3
_jmp_addr_0x00894fab:    cmp              eax, 0x0c                                      // 0x00894fab    83f80c
                         {disp8} jne      _jmp_addr_0x00894fe2                           // 0x00894fae    7532
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x00894fb0    8b461c
                         {disp8} mov      dword ptr [esp + 0x0c], ebx                    // 0x00894fb3    895c240c
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x00894fb7    8b4804
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00894fba    894c2410
                         {disp8} mov      edx, dword ptr [eax + 0x08]                    // 0x00894fbe    8b5008
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                    // 0x00894fc1    8d4c240c
                         {disp8} mov      dword ptr [esp + 0x14], edx                    // 0x00894fc5    89542414
                         {disp8} mov      eax, dword ptr [eax + 0x0c]                    // 0x00894fc9    8b400c
                         push             ecx                                            // 0x00894fcc    51
                         push             esi                                            // 0x00894fcd    56
                         push             edi                                            // 0x00894fce    57
                         {disp8} mov      dword ptr [esp + 0x24], eax                    // 0x00894fcf    89442424
                         call             _jmp_addr_0x00893410                           // 0x00894fd3    e838e4ffff
                         add              esp, 0x0c                                      // 0x00894fd8    83c40c
                         pop              edi                                            // 0x00894fdb    5f
                         pop              esi                                            // 0x00894fdc    5e
                         pop              ebx                                            // 0x00894fdd    5b
                         add              esp, 0x44                                      // 0x00894fde    83c444
                         ret                                                             // 0x00894fe1    c3
_jmp_addr_0x00894fe2:    cmp              eax, 0x03                                      // 0x00894fe2    83f803
                         {disp8} jne      _jmp_addr_0x0089501a                           // 0x00894fe5    7533
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x00894fe7    8b461c
                         {disp8} mov      dword ptr [esp + 0x0c], 0x00000001             // 0x00894fea    c744240c01000000
                         {disp8} mov      dword ptr [esp + 0x10], ebx                    // 0x00894ff2    895c2410
                         {disp8} mov      edx, dword ptr [eax + 0x04]                    // 0x00894ff6    8b5004
                         {disp8} mov      dword ptr [esp + 0x14], edx                    // 0x00894ff9    89542414
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x00894ffd    8b4808
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x00895000    894c2418
                         {disp8} mov      edx, dword ptr [eax + 0x0c]                    // 0x00895004    8b500c
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                    // 0x00895007    8d44240c
                         {disp8} mov      dword ptr [esp + 0x1c], edx                    // 0x0089500b    8954241c
                         push             eax                                            // 0x0089500f    50
                         push             esi                                            // 0x00895010    56
                         push             edi                                            // 0x00895011    57
                         call             _jmp_addr_0x00893410                           // 0x00895012    e8f9e3ffff
                         add              esp, 0x0c                                      // 0x00895017    83c40c
_jmp_addr_0x0089501a:    pop              edi                                            // 0x0089501a    5f
                         pop              esi                                            // 0x0089501b    5e
                         pop              ebx                                            // 0x0089501c    5b
                         add              esp, 0x44                                      // 0x0089501d    83c444
                         ret                                                             // 0x00895020    c3
                         nop                                                             // 0x00895021    90
                         nop                                                             // 0x00895022    90
                         nop                                                             // 0x00895023    90
                         nop                                                             // 0x00895024    90
                         nop                                                             // 0x00895025    90
                         nop                                                             // 0x00895026    90
                         nop                                                             // 0x00895027    90
                         nop                                                             // 0x00895028    90
                         nop                                                             // 0x00895029    90
                         nop                                                             // 0x0089502a    90
                         nop                                                             // 0x0089502b    90
                         nop                                                             // 0x0089502c    90
                         nop                                                             // 0x0089502d    90
                         nop                                                             // 0x0089502e    90
                         nop                                                             // 0x0089502f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895030    8b442408
                         sub              esp, 0x18                                      // 0x00895034    83ec18
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895037    8b4824
                         push             ebx                                            // 0x0089503a    53
                         push             esi                                            // 0x0089503b    56
                         cmp              ecx, 0x03                                      // 0x0089503c    83f903
                         push             edi                                            // 0x0089503f    57
                         {disp32} jne     _jmp_addr_0x008950e6                           // 0x00895040    0f85a0000000
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895046    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x28]                    // 0x00895049    8b7c2428
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                    // 0x0089504d    8b5808
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895050    8b7004
                         push             ebx                                            // 0x00895053    53
                         push             esi                                            // 0x00895054    56
                         push             edi                                            // 0x00895055    57
                         call             _jmp_addr_0x008927e0                           // 0x00895056    e885d7ffff
                         xor.s            eax, eax                                       // 0x0089505b    33c0
                         {disp8} lea      ecx, dword ptr [esp + 0x24]                    // 0x0089505d    8d4c2424
                         {disp8} mov      dword ptr [esp + 0x24], eax                    // 0x00895061    89442424
                         push             ecx                                            // 0x00895065    51
                         {disp8} mov      dword ptr [esp + 0x2c], eax                    // 0x00895066    8944242c
                         push             0x1                                            // 0x0089506a    6a01
                         push             edi                                            // 0x0089506c    57
                         {disp8} mov      dword ptr [esp + 0x38], eax                    // 0x0089506d    89442438
                         {disp8} mov      dword ptr [esp + 0x30], 0x00000002             // 0x00895071    c744243002000000
                         {disp8} mov      dword ptr [esp + 0x34], esi                    // 0x00895079    89742434
                         call             _jmp_addr_0x00894490                           // 0x0089507d    e80ef4ffff
                         add              esp, 0x18                                      // 0x00895082    83c418
                         test             eax, eax                                       // 0x00895085    85c0
                         {disp8} je       _jmp_addr_0x008950af                           // 0x00895087    7426
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                    // 0x00895089    8d54240c
                         {disp8} mov      dword ptr [esp + 0x0c], 0x00000001             // 0x0089508d    c744240c01000000
                         push             edx                                            // 0x00895095    52
                         push             eax                                            // 0x00895096    50
                         push             edi                                            // 0x00895097    57
                         {disp8} mov      dword ptr [esp + 0x1c], esi                    // 0x00895098    8974241c
                         {disp8} mov      dword ptr [esp + 0x20], ebx                    // 0x0089509c    895c2420
                         call             _jmp_addr_0x00893410                           // 0x008950a0    e86be3ffff
                         add              esp, 0x0c                                      // 0x008950a5    83c40c
                         pop              edi                                            // 0x008950a8    5f
                         pop              esi                                            // 0x008950a9    5e
                         pop              ebx                                            // 0x008950aa    5b
                         add              esp, 0x18                                      // 0x008950ab    83c418
                         ret                                                             // 0x008950ae    c3
_jmp_addr_0x008950af:    push             esi                                            // 0x008950af    56
                         push             edi                                            // 0x008950b0    57
                         call             _jmp_addr_0x008924a0                           // 0x008950b1    e8ead3ffff
                         add              esp, 0x08                                      // 0x008950b6    83c408
                         test             eax, eax                                       // 0x008950b9    85c0
                         {disp8} je       _jmp_addr_0x008950e6                           // 0x008950bb    7429
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                    // 0x008950bd    8b4814
                         test             ecx, ecx                                       // 0x008950c0    85c9
                         {disp8} je       _jmp_addr_0x008950e6                           // 0x008950c2    7422
                         {disp8} mov      eax, dword ptr [eax + 0x28]                    // 0x008950c4    8b4028
                         push             0x8                                            // 0x008950c7    6a08
                         push             esi                                            // 0x008950c9    56
                         push             0x0                                            // 0x008950ca    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x18]                    // 0x008950cc    8d542418
                         push             eax                                            // 0x008950d0    50
                         push             edx                                            // 0x008950d1    52
                         push             ecx                                            // 0x008950d2    51
                         push             0x9                                            // 0x008950d3    6a09
                         push             edi                                            // 0x008950d5    57
                         {disp8} mov      dword ptr [esp + 0x2c], esi                    // 0x008950d6    8974242c
                         {disp8} mov      dword ptr [esp + 0x30], ebx                    // 0x008950da    895c2430
                         call             _jmp_addr_0x00891120                           // 0x008950de    e83dc0ffff
                         add              esp, 0x20                                      // 0x008950e3    83c420
_jmp_addr_0x008950e6:    pop              edi                                            // 0x008950e6    5f
                         pop              esi                                            // 0x008950e7    5e
                         pop              ebx                                            // 0x008950e8    5b
                         add              esp, 0x18                                      // 0x008950e9    83c418
                         ret                                                             // 0x008950ec    c3
                         nop                                                             // 0x008950ed    90
                         nop                                                             // 0x008950ee    90
                         nop                                                             // 0x008950ef    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x008950f0    8b442408
                         sub              esp, 0x18                                      // 0x008950f4    83ec18
                         mov              ecx, 0x00000002                                // 0x008950f7    b902000000
                         {disp8} mov      edx, dword ptr [eax + 0x24]                    // 0x008950fc    8b5024
                         push             esi                                            // 0x008950ff    56
                         cmp.s            edx, ecx                                       // 0x00895100    3bd1
                         push             edi                                            // 0x00895102    57
                         {disp32} jl      _jmp_addr_0x008951a1                           // 0x00895103    0f8c98000000
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895109    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x24]                    // 0x0089510c    8b7c2424
                         xor.s            edx, edx                                       // 0x00895110    33d2
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895112    8b7004
                         {disp8} lea      eax, dword ptr [esp + 0x14]                    // 0x00895115    8d442414
                         {disp8} mov      dword ptr [esp + 0x14], edx                    // 0x00895119    89542414
                         push             eax                                            // 0x0089511d    50
                         {disp8} mov      dword ptr [esp + 0x1c], edx                    // 0x0089511e    8954241c
                         push             0x1                                            // 0x00895122    6a01
                         push             edi                                            // 0x00895124    57
                         {disp8} mov      dword ptr [esp + 0x28], edx                    // 0x00895125    89542428
                         {disp8} mov      dword ptr [esp + 0x20], ecx                    // 0x00895129    894c2420
                         {disp8} mov      dword ptr [esp + 0x24], esi                    // 0x0089512d    89742424
                         call             _jmp_addr_0x00894490                           // 0x00895131    e85af3ffff
                         add              esp, 0x0c                                      // 0x00895136    83c40c
                         test             eax, eax                                       // 0x00895139    85c0
                         {disp8} je       _jmp_addr_0x00895166                           // 0x0089513b    7429
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x0089513d    8d4c2408
                         {disp8} mov      dword ptr [esp + 0x08], 0x00000001             // 0x00895141    c744240801000000
                         push             ecx                                            // 0x00895149    51
                         push             eax                                            // 0x0089514a    50
                         push             edi                                            // 0x0089514b    57
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x0089514c    89742418
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00c58370             // 0x00895150    c744241c7083c500
                         call             _jmp_addr_0x00893410                           // 0x00895158    e8b3e2ffff
                         add              esp, 0x0c                                      // 0x0089515d    83c40c
                         pop              edi                                            // 0x00895160    5f
                         pop              esi                                            // 0x00895161    5e
                         add              esp, 0x18                                      // 0x00895162    83c418
                         ret                                                             // 0x00895165    c3
_jmp_addr_0x00895166:    push             esi                                            // 0x00895166    56
                         push             edi                                            // 0x00895167    57
                         call             _jmp_addr_0x008924a0                           // 0x00895168    e833d3ffff
                         add              esp, 0x08                                      // 0x0089516d    83c408
                         test             eax, eax                                       // 0x00895170    85c0
                         {disp8} je       _jmp_addr_0x008951a1                           // 0x00895172    742d
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                    // 0x00895174    8b4814
                         test             ecx, ecx                                       // 0x00895177    85c9
                         {disp8} je       _jmp_addr_0x008951a1                           // 0x00895179    7426
                         {disp8} mov      edx, dword ptr [eax + 0x28]                    // 0x0089517b    8b5028
                         push             0x8                                            // 0x0089517e    6a08
                         push             esi                                            // 0x00895180    56
                         push             0x0                                            // 0x00895181    6a00
                         {disp8} lea      eax, dword ptr [esp + 0x14]                    // 0x00895183    8d442414
                         push             edx                                            // 0x00895187    52
                         push             eax                                            // 0x00895188    50
                         push             ecx                                            // 0x00895189    51
                         push             0x9                                            // 0x0089518a    6a09
                         push             edi                                            // 0x0089518c    57
                         {disp8} mov      dword ptr [esp + 0x28], esi                    // 0x0089518d    89742428
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00c58370             // 0x00895191    c744242c7083c500
                         call             _jmp_addr_0x00891120                           // 0x00895199    e882bfffff
                         add              esp, 0x20                                      // 0x0089519e    83c420
_jmp_addr_0x008951a1:    pop              edi                                            // 0x008951a1    5f
                         pop              esi                                            // 0x008951a2    5e
                         add              esp, 0x18                                      // 0x008951a3    83c418
                         ret                                                             // 0x008951a6    c3
                         nop                                                             // 0x008951a7    90
                         nop                                                             // 0x008951a8    90
                         nop                                                             // 0x008951a9    90
                         nop                                                             // 0x008951aa    90
                         nop                                                             // 0x008951ab    90
                         nop                                                             // 0x008951ac    90
                         nop                                                             // 0x008951ad    90
                         nop                                                             // 0x008951ae    90
                         nop                                                             // 0x008951af    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x008951b0    8b442408
                         sub              esp, 0x18                                      // 0x008951b4    83ec18
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x008951b7    8b4824
                         push             ebx                                            // 0x008951ba    53
                         push             esi                                            // 0x008951bb    56
                         cmp              ecx, 0x03                                      // 0x008951bc    83f903
                         push             edi                                            // 0x008951bf    57
                         {disp8} jne      _jmp_addr_0x00895238                           // 0x008951c0    7576
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x008951c2    8b4020
                         {disp8} mov      ebx, dword ptr [esp + 0x28]                    // 0x008951c5    8b5c2428
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                    // 0x008951c9    8d4c240c
                         mov              esi, dword ptr [eax]                           // 0x008951cd    8b30
                         {disp8} mov      edi, dword ptr [eax + 0x04]                    // 0x008951cf    8b7804
                         xor.s            eax, eax                                       // 0x008951d2    33c0
                         push             ecx                                            // 0x008951d4    51
                         {disp8} mov      dword ptr [esp + 0x10], eax                    // 0x008951d5    89442410
                         push             0x1                                            // 0x008951d9    6a01
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x008951db    89442418
                         push             ebx                                            // 0x008951df    53
                         {disp8} mov      dword ptr [esp + 0x20], eax                    // 0x008951e0    89442420
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000009             // 0x008951e4    c744241809000000
                         {disp8} mov      dword ptr [esp + 0x1c], esi                    // 0x008951ec    8974241c
                         {disp8} mov      dword ptr [esp + 0x20], edi                    // 0x008951f0    897c2420
                         call             _jmp_addr_0x00894490                           // 0x008951f4    e897f2ffff
                         add              esp, 0x0c                                      // 0x008951f9    83c40c
                         test             eax, eax                                       // 0x008951fc    85c0
                         {disp8} je       _jmp_addr_0x00895226                           // 0x008951fe    7426
                         {disp8} lea      edx, dword ptr [esp + 0x18]                    // 0x00895200    8d542418
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000000             // 0x00895204    c744241800000000
                         push             edx                                            // 0x0089520c    52
                         push             eax                                            // 0x0089520d    50
                         push             ebx                                            // 0x0089520e    53
                         {disp8} mov      dword ptr [esp + 0x28], esi                    // 0x0089520f    89742428
                         {disp8} mov      dword ptr [esp + 0x2c], edi                    // 0x00895213    897c242c
                         call             _jmp_addr_0x00893410                           // 0x00895217    e8f4e1ffff
                         add              esp, 0x0c                                      // 0x0089521c    83c40c
                         pop              edi                                            // 0x0089521f    5f
                         pop              esi                                            // 0x00895220    5e
                         pop              ebx                                            // 0x00895221    5b
                         add              esp, 0x18                                      // 0x00895222    83c418
                         ret                                                             // 0x00895225    c3
_jmp_addr_0x00895226:    {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x00895226    8b4304
                         test             eax, eax                                       // 0x00895229    85c0
                         {disp8} je       _jmp_addr_0x00895238                           // 0x0089522b    740b
                         push             0x0                                            // 0x0089522d    6a00
                         push             ebx                                            // 0x0089522f    53
                         call             _jmp_addr_0x00893fd0                           // 0x00895230    e89bedffff
                         add              esp, 0x08                                      // 0x00895235    83c408
_jmp_addr_0x00895238:    pop              edi                                            // 0x00895238    5f
                         pop              esi                                            // 0x00895239    5e
                         pop              ebx                                            // 0x0089523a    5b
                         add              esp, 0x18                                      // 0x0089523b    83c418
                         ret                                                             // 0x0089523e    c3
                         nop                                                             // 0x0089523f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895240    8b442408
                         sub              esp, 0x3c                                      // 0x00895244    83ec3c
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895247    8b4824
                         push             ebx                                            // 0x0089524a    53
                         push             ebp                                            // 0x0089524b    55
                         push             esi                                            // 0x0089524c    56
                         cmp              ecx, 0x08                                      // 0x0089524d    83f908
                         push             edi                                            // 0x00895250    57
                         {disp32} jne     _jmp_addr_0x00895367                           // 0x00895251    0f8510010000
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895257    8b4020
                         {disp8} mov      ebp, dword ptr [esp + 0x50]                    // 0x0089525a    8b6c2450
                         {disp8} mov      edx, dword ptr [eax + 0x0c]                    // 0x0089525e    8b500c
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x00895261    8b4808
                         {disp8} mov      esi, dword ptr [eax + 0x14]                    // 0x00895264    8b7014
                         {disp8} mov      ebx, dword ptr [eax + 0x04]                    // 0x00895267    8b5804
                         push             edx                                            // 0x0089526a    52
                         push             ecx                                            // 0x0089526b    51
                         push             esi                                            // 0x0089526c    56
                         push             ebp                                            // 0x0089526d    55
                         {disp8} mov      dword ptr [esp + 0x20], ecx                    // 0x0089526e    894c2420
                         {disp8} mov      dword ptr [esp + 0x24], edx                    // 0x00895272    89542424
                         call             _jmp_addr_0x00892e90                           // 0x00895276    e815dcffff
                         mov              ecx, 0x00000009                                // 0x0089527b    b909000000
                         xor.s            eax, eax                                       // 0x00895280    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x38]                    // 0x00895282    8d7c2438
                         rep stosd                                                       // 0x00895286    f3ab
                         {disp8} lea      eax, dword ptr [esp + 0x38]                    // 0x00895288    8d442438
                         {disp8} mov      dword ptr [esp + 0x38], 0x00000006             // 0x0089528c    c744243806000000
                         push             eax                                            // 0x00895294    50
                         push             0x3                                            // 0x00895295    6a03
                         push             ebp                                            // 0x00895297    55
                         {disp8} mov      dword ptr [esp + 0x48], esi                    // 0x00895298    89742448
                         {disp8} mov      dword ptr [esp + 0x4c], ebx                    // 0x0089529c    895c244c
                         {disp8} mov      dword ptr [esp + 0x50], 0x0000000a             // 0x008952a0    c74424500a000000
                         {disp8} mov      dword ptr [esp + 0x54], esi                    // 0x008952a8    89742454
                         {disp8} mov      dword ptr [esp + 0x5c], 0x0000000b             // 0x008952ac    c744245c0b000000
                         {disp8} mov      dword ptr [esp + 0x60], ebx                    // 0x008952b4    895c2460
                         call             _jmp_addr_0x00894490                           // 0x008952b8    e8d3f1ffff
                         mov.s            edi, eax                                       // 0x008952bd    8bf8
                         add              esp, 0x1c                                      // 0x008952bf    83c41c
                         test             edi, edi                                       // 0x008952c2    85ff
                         {disp32} je      _jmp_addr_0x00895367                           // 0x008952c4    0f849d000000
                         mov              eax, dword ptr [edi]                           // 0x008952ca    8b07
                         cmp              eax, 0x06                                      // 0x008952cc    83f806
                         {disp8} jne      _jmp_addr_0x00895337                           // 0x008952cf    7566
                         {disp8} mov      ecx, dword ptr [esp + 0x54]                    // 0x008952d1    8b4c2454
                         push             0x40                                           // 0x008952d5    6a40
                         {disp8} mov      edx, dword ptr [ecx + 0x20]                    // 0x008952d7    8b5120
                         {disp8} mov      eax, dword ptr [edx + 0x18]                    // 0x008952da    8b4218
                         push             eax                                            // 0x008952dd    50
                         call             _strchr                                        // 0x008952de    e80d3ff3ff
                         add              esp, 0x08                                      // 0x008952e3    83c408
                         test             eax, eax                                       // 0x008952e6    85c0
                         {disp8} je       _jmp_addr_0x008952f1                           // 0x008952e8    7407
                         mov              eax, 0x00000002                                // 0x008952ea    b802000000
                         {disp8} jmp      _jmp_addr_0x0089530c                           // 0x008952ef    eb1b
_jmp_addr_0x008952f1:    {disp8} mov      ecx, dword ptr [esp + 0x54]                    // 0x008952f1    8b4c2454
                         push             0x2b                                           // 0x008952f5    6a2b
                         {disp8} mov      edx, dword ptr [ecx + 0x20]                    // 0x008952f7    8b5120
                         {disp8} mov      eax, dword ptr [edx + 0x18]                    // 0x008952fa    8b4218
                         push             eax                                            // 0x008952fd    50
                         call             _strchr                                        // 0x008952fe    e8ed3ef3ff
                         add              esp, 0x08                                      // 0x00895303    83c408
                         neg              eax                                            // 0x00895306    f7d8
                         sbb.s            eax, eax                                       // 0x00895308    1bc0
                         neg              eax                                            // 0x0089530a    f7d8
_jmp_addr_0x0089530c:    {disp8} lea      ecx, dword ptr [esp + 0x18]                    // 0x0089530c    8d4c2418
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000001             // 0x00895310    c744241801000000
                         push             ecx                                            // 0x00895318    51
                         push             edi                                            // 0x00895319    57
                         push             ebp                                            // 0x0089531a    55
                         {disp8} mov      dword ptr [esp + 0x28], ebx                    // 0x0089531b    895c2428
                         {disp8} mov      dword ptr [esp + 0x2c], esi                    // 0x0089531f    8974242c
                         {disp8} mov      dword ptr [esp + 0x30], eax                    // 0x00895323    89442430
                         call             _jmp_addr_0x00893410                           // 0x00895327    e8e4e0ffff
                         add              esp, 0x0c                                      // 0x0089532c    83c40c
                         pop              edi                                            // 0x0089532f    5f
                         pop              esi                                            // 0x00895330    5e
                         pop              ebp                                            // 0x00895331    5d
                         pop              ebx                                            // 0x00895332    5b
                         add              esp, 0x3c                                      // 0x00895333    83c43c
                         ret                                                             // 0x00895336    c3
_jmp_addr_0x00895337:    cmp              eax, 0x0a                                      // 0x00895337    83f80a
                         {disp8} jne      _jmp_addr_0x00895367                           // 0x0089533a    752b
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x0089533c    8b542410
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x00895340    8b442414
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                    // 0x00895344    8d4c2418
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000001             // 0x00895348    c744241801000000
                         push             ecx                                            // 0x00895350    51
                         push             edi                                            // 0x00895351    57
                         push             ebp                                            // 0x00895352    55
                         {disp8} mov      dword ptr [esp + 0x28], esi                    // 0x00895353    89742428
                         {disp8} mov      dword ptr [esp + 0x2c], edx                    // 0x00895357    8954242c
                         {disp8} mov      dword ptr [esp + 0x30], eax                    // 0x0089535b    89442430
                         call             _jmp_addr_0x00893410                           // 0x0089535f    e8ace0ffff
                         add              esp, 0x0c                                      // 0x00895364    83c40c
_jmp_addr_0x00895367:    pop              edi                                            // 0x00895367    5f
                         pop              esi                                            // 0x00895368    5e
                         pop              ebp                                            // 0x00895369    5d
                         pop              ebx                                            // 0x0089536a    5b
                         add              esp, 0x3c                                      // 0x0089536b    83c43c
                         ret                                                             // 0x0089536e    c3
                         nop                                                             // 0x0089536f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895370    8b442408
                         sub              esp, 0x28                                      // 0x00895374    83ec28
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895377    8b4824
                         push             esi                                            // 0x0089537a    56
                         cmp              ecx, 0x03                                      // 0x0089537b    83f903
                         push             edi                                            // 0x0089537e    57
                         {disp32} jne     _jmp_addr_0x0089540a                           // 0x0089537f    0f8585000000
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895385    8b4020
                         mov              ecx, 0x00000006                                // 0x00895388    b906000000
                         {disp8} lea      edi, dword ptr [esp + 0x18]                    // 0x0089538d    8d7c2418
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895391    8b7004
                         xor.s            eax, eax                                       // 0x00895394    33c0
                         rep stosd                                                       // 0x00895396    f3ab
                         {disp8} mov      edi, dword ptr [esp + 0x34]                    // 0x00895398    8b7c2434
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                    // 0x0089539c    8d4c2418
                         push             ecx                                            // 0x008953a0    51
                         push             0x2                                            // 0x008953a1    6a02
                         push             edi                                            // 0x008953a3    57
                         {disp8} mov      dword ptr [esp + 0x24], 0x0000000a             // 0x008953a4    c74424240a000000
                         {disp8} mov      dword ptr [esp + 0x28], esi                    // 0x008953ac    89742428
                         {disp8} mov      dword ptr [esp + 0x30], 0x0000000b             // 0x008953b0    c74424300b000000
                         {disp8} mov      dword ptr [esp + 0x34], esi                    // 0x008953b8    89742434
                         call             _jmp_addr_0x00894490                           // 0x008953bc    e8cff0ffff
                         xor.s            edx, edx                                       // 0x008953c1    33d2
                         add              esp, 0x0c                                      // 0x008953c3    83c40c
                         cmp.s            eax, edx                                       // 0x008953c6    3bc2
                         {disp8} je       _jmp_addr_0x0089540a                           // 0x008953c8    7440
                         mov              ecx, dword ptr [eax]                           // 0x008953ca    8b08
                         cmp              ecx, 0x0a                                      // 0x008953cc    83f90a
                         {disp8} jne      _jmp_addr_0x008953f6                           // 0x008953cf    7525
                         {disp8} mov      dword ptr [esp + 0x08], edx                    // 0x008953d1    89542408
                         {disp8} mov      dword ptr [esp + 0x10], edx                    // 0x008953d5    89542410
                         {disp8} mov      dword ptr [esp + 0x14], edx                    // 0x008953d9    89542414
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x008953dd    8d542408
                         push             edx                                            // 0x008953e1    52
                         push             eax                                            // 0x008953e2    50
                         push             edi                                            // 0x008953e3    57
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x008953e4    89742418
                         call             _jmp_addr_0x00893410                           // 0x008953e8    e823e0ffff
                         add              esp, 0x0c                                      // 0x008953ed    83c40c
                         pop              edi                                            // 0x008953f0    5f
                         pop              esi                                            // 0x008953f1    5e
                         add              esp, 0x28                                      // 0x008953f2    83c428
                         ret                                                             // 0x008953f5    c3
_jmp_addr_0x008953f6:    cmp              ecx, 0x0b                                      // 0x008953f6    83f90b
                         {disp8} jne      _jmp_addr_0x0089540a                           // 0x008953f9    750f
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x008953fb    8d4c2408
                         push             ecx                                            // 0x008953ff    51
                         push             eax                                            // 0x00895400    50
                         push             edi                                            // 0x00895401    57
                         call             _jmp_addr_0x00893410                           // 0x00895402    e809e0ffff
                         add              esp, 0x0c                                      // 0x00895407    83c40c
_jmp_addr_0x0089540a:    pop              edi                                            // 0x0089540a    5f
                         pop              esi                                            // 0x0089540b    5e
                         add              esp, 0x28                                      // 0x0089540c    83c428
                         ret                                                             // 0x0089540f    c3
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895410    8b442408
                         sub              esp, 0x00000080                                // 0x00895414    81ec80000000
                         cmp              dword ptr [eax + 0x24], 0x01                   // 0x0089541a    83782401
                         {disp8} jne      _jmp_addr_0x00895490                           // 0x0089541e    7570
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895420    8b4020
                         push             ebx                                            // 0x00895423    53
                         push             0x40                                           // 0x00895424    6a40
                         mov              ecx, dword ptr [eax]                           // 0x00895426    8b08
                         push             ecx                                            // 0x00895428    51
                         call             _strchr                                        // 0x00895429    e8c23df3ff
                         {disp32} mov     ebx, dword ptr [esp + 0x00000090]              // 0x0089542e    8b9c2490000000
                         add              esp, 0x08                                      // 0x00895435    83c408
                         test             eax, eax                                       // 0x00895438    85c0
                         {disp8} je       _jmp_addr_0x00895486                           // 0x0089543a    744a
                         {disp8} mov      ecx, dword ptr [ebx + 0x0c]                    // 0x0089543c    8b4b0c
                         test             ecx, ecx                                       // 0x0089543f    85c9
                         {disp8} je       _jmp_addr_0x00895486                           // 0x00895441    7443
                         {disp8} mov      edx, dword ptr [ebx + 0x14]                    // 0x00895443    8b5314
                         push             esi                                            // 0x00895446    56
                         push             edi                                            // 0x00895447    57
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                    // 0x00895448    8d4c240c
                         push             edx                                            // 0x0089544c    52
                         inc              eax                                            // 0x0089544d    40
                         push             ecx                                            // 0x0089544e    51
                         push             eax                                            // 0x0089544f    50
                         call             _jmp_WSOCK32_DLL__Ordinal_10                   // 0x00895450    e829fc0000
                         push             eax                                            // 0x00895455    50
                         push             ebx                                            // 0x00895456    53
                         call             dword ptr [ebx + 0xc]                          // 0x00895457    ff530c
                         {disp8} lea      edi, dword ptr [esp + 0x1c]                    // 0x0089545a    8d7c241c
                         or               ecx, 0xffffffff                                // 0x0089545e    83c9ff
                         xor.s            eax, eax                                       // 0x00895461    33c0
                         add              esp, 0x10                                      // 0x00895463    83c410
                         repne scasb                                                     // 0x00895466    f2ae
                         not              ecx                                            // 0x00895468    f7d1
                         sub.s            edi, ecx                                       // 0x0089546a    2bf9
                         {disp32} lea     edx, dword ptr [ebx + 0x00000260]              // 0x0089546c    8d9360020000
                         mov.s            eax, ecx                                       // 0x00895472    8bc1
                         mov.s            esi, edi                                       // 0x00895474    8bf7
                         mov.s            edi, edx                                       // 0x00895476    8bfa
                         shr              ecx, 2                                         // 0x00895478    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0089547b    f3a5
                         mov.s            ecx, eax                                       // 0x0089547d    8bc8
                         and              ecx, 0x03                                      // 0x0089547f    83e103
                         rep movsb                                                       // 0x00895482    f3a4
                         pop              edi                                            // 0x00895484    5f
                         pop              esi                                            // 0x00895485    5e
_jmp_addr_0x00895486:    push             ebx                                            // 0x00895486    53
                         call             _jmp_addr_0x00886a50                           // 0x00895487    e8c415ffff
                         add              esp, 0x04                                      // 0x0089548c    83c404
                         pop              ebx                                            // 0x0089548f    5b
_jmp_addr_0x00895490:    add              esp, 0x00000080                                // 0x00895490    81c480000000
                         ret                                                             // 0x00895496    c3
                         nop                                                             // 0x00895497    90
                         nop                                                             // 0x00895498    90
                         nop                                                             // 0x00895499    90
                         nop                                                             // 0x0089549a    90
                         nop                                                             // 0x0089549b    90
                         nop                                                             // 0x0089549c    90
                         nop                                                             // 0x0089549d    90
                         nop                                                             // 0x0089549e    90
                         nop                                                             // 0x0089549f    90
                         sub              esp, 0x0c                                      // 0x008954a0    83ec0c
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x008954a3    8b542410
                         xor.s            eax, eax                                       // 0x008954a7    33c0
                         {disp8} lea      ecx, dword ptr [esp + 0x00]                    // 0x008954a9    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x00], eax                    // 0x008954ad    89442400
                         push             ecx                                            // 0x008954b1    51
                         {disp8} mov      dword ptr [esp + 0x08], eax                    // 0x008954b2    89442408
                         push             0x1                                            // 0x008954b6    6a01
                         push             edx                                            // 0x008954b8    52
                         {disp8} mov      dword ptr [esp + 0x14], eax                    // 0x008954b9    89442414
                         {disp8} mov      dword ptr [esp + 0x0c], eax                    // 0x008954bd    8944240c
                         call             _jmp_addr_0x00894490                           // 0x008954c1    e8caefffff
                         add              esp, 0x0c                                      // 0x008954c6    83c40c
                         test             eax, eax                                       // 0x008954c9    85c0
                         {disp8} je       _jmp_addr_0x008954d6                           // 0x008954cb    7409
                         {disp8} mov      eax, dword ptr [eax + 0x1c]                    // 0x008954cd    8b401c
                         mov              dword ptr [eax], 0x00000001                    // 0x008954d0    c70001000000
_jmp_addr_0x008954d6:    add              esp, 0x0c                                      // 0x008954d6    83c40c
                         ret                                                             // 0x008954d9    c3
                         nop                                                             // 0x008954da    90
                         nop                                                             // 0x008954db    90
                         nop                                                             // 0x008954dc    90
                         nop                                                             // 0x008954dd    90
                         nop                                                             // 0x008954de    90
                         nop                                                             // 0x008954df    90
                         sub              esp, 0x2c                                      // 0x008954e0    83ec2c
                         push             ebx                                            // 0x008954e3    53
                         push             ebp                                            // 0x008954e4    55
                         push             esi                                            // 0x008954e5    56
                         {disp8} mov      esi, dword ptr [esp + 0x40]                    // 0x008954e6    8b742440
                         push             edi                                            // 0x008954ea    57
                         cmp              dword ptr [esi + 0x24], 0x04                   // 0x008954eb    837e2404
                         {disp32} jne     _jmp_addr_0x008956c4                           // 0x008954ef    0f85cf010000
                         {disp8} mov      edx, dword ptr [esp + 0x40]                    // 0x008954f5    8b542440
                         xor.s            eax, eax                                       // 0x008954f9    33c0
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                    // 0x008954fb    8d4c2418
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x008954ff    89442418
                         push             ecx                                            // 0x00895503    51
                         {disp8} mov      dword ptr [esp + 0x20], eax                    // 0x00895504    89442420
                         push             0x1                                            // 0x00895508    6a01
                         push             edx                                            // 0x0089550a    52
                         {disp8} mov      dword ptr [esp + 0x2c], eax                    // 0x0089550b    8944242c
                         {disp8} mov      dword ptr [esp + 0x24], eax                    // 0x0089550f    89442424
                         call             _jmp_addr_0x00894490                           // 0x00895513    e878efffff
                         mov.s            ebp, eax                                       // 0x00895518    8be8
                         add              esp, 0x0c                                      // 0x0089551a    83c40c
                         test             ebp, ebp                                       // 0x0089551d    85ed
                         {disp32} je      _jmp_addr_0x008956c4                           // 0x0089551f    0f849f010000
                         {disp8} mov      eax, dword ptr [ebp + 0x10]                    // 0x00895525    8b4510
                         test             eax, eax                                       // 0x00895528    85c0
                         {disp32} je      _jmp_addr_0x008956c4                           // 0x0089552a    0f8494010000
                         {disp8} mov      eax, dword ptr [esi + 0x20]                    // 0x00895530    8b4620
                         or               ecx, 0xffffffff                                // 0x00895533    83c9ff
                         {disp8} mov      ebx, dword ptr [ebp + 0x1c]                    // 0x00895536    8b5d1c
                         {disp8} mov      edi, dword ptr [eax + 0x04]                    // 0x00895539    8b7804
                         xor.s            eax, eax                                       // 0x0089553c    33c0
                         repne scasb                                                     // 0x0089553e    f2ae
                         not              ecx                                            // 0x00895540    f7d1
                         dec              ecx                                            // 0x00895542    49
                         mov.s            edi, ecx                                       // 0x00895543    8bf9
                         inc              edi                                            // 0x00895545    47
                         push             edi                                            // 0x00895546    57
                         call             _malloc                                        // 0x00895547    e80011f3ff
                         add              esp, 0x04                                      // 0x0089554c    83c404
                         {disp8} mov      dword ptr [esp + 0x10], eax                    // 0x0089554f    89442410
                         test             eax, eax                                       // 0x00895553    85c0
                         {disp32} je      _jmp_addr_0x008956c4                           // 0x00895555    0f8469010000
                         {disp8} mov      edx, dword ptr [esi + 0x20]                    // 0x0089555b    8b5620
                         mov.s            ecx, edi                                       // 0x0089555e    8bcf
                         mov.s            edi, eax                                       // 0x00895560    8bf8
                         mov.s            eax, ecx                                       // 0x00895562    8bc1
                         {disp8} mov      esi, dword ptr [edx + 0x04]                    // 0x00895564    8b7204
                         shr              ecx, 2                                         // 0x00895567    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0089556a    f3a5
                         mov.s            ecx, eax                                       // 0x0089556c    8bc8
                         and              ecx, 0x03                                      // 0x0089556e    83e103
                         rep movsb                                                       // 0x00895571    f3a4
                         {disp8} mov      esi, dword ptr [esp + 0x44]                    // 0x00895573    8b742444
                         {disp8} mov      ecx, dword ptr [esi + 0x20]                    // 0x00895577    8b4e20
                         {disp8} mov      edx, dword ptr [ecx + 0x08]                    // 0x0089557a    8b5108
                         push             edx                                            // 0x0089557d    52
                         call             _atoi                           // 0x0089557e    e80410f3ff
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x00895583    89442418
                         {disp8} mov      eax, dword ptr [esi + 0x20]                    // 0x00895587    8b4620
                         or               ecx, 0xffffffff                                // 0x0089558a    83c9ff
                         {disp8} mov      edi, dword ptr [eax + 0x0c]                    // 0x0089558d    8b780c
                         xor.s            eax, eax                                       // 0x00895590    33c0
                         repne scasb                                                     // 0x00895592    f2ae
                         not              ecx                                            // 0x00895594    f7d1
                         dec              ecx                                            // 0x00895596    49
                         mov.s            edi, ecx                                       // 0x00895597    8bf9
                         inc              edi                                            // 0x00895599    47
                         push             edi                                            // 0x0089559a    57
                         call             _malloc                                        // 0x0089559b    e8ac10f3ff
                         add              esp, 0x08                                      // 0x008955a0    83c408
                         {disp8} mov      dword ptr [esp + 0x44], eax                    // 0x008955a3    89442444
                         test             eax, eax                                       // 0x008955a7    85c0
                         {disp8} jne      _jmp_addr_0x008955c0                           // 0x008955a9    7515
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x008955ab    8b4c2410
                         push             ecx                                            // 0x008955af    51
                         call             _free                                          // 0x008955b0    e8d111f3ff
                         add              esp, 0x04                                      // 0x008955b5    83c404
                         pop              edi                                            // 0x008955b8    5f
                         pop              esi                                            // 0x008955b9    5e
                         pop              ebp                                            // 0x008955ba    5d
                         pop              ebx                                            // 0x008955bb    5b
                         add              esp, 0x2c                                      // 0x008955bc    83c42c
                         ret                                                             // 0x008955bf    c3
_jmp_addr_0x008955c0:    {disp8} mov      edx, dword ptr [esi + 0x20]                    // 0x008955c0    8b5620
                         mov.s            ecx, edi                                       // 0x008955c3    8bcf
                         mov.s            edi, eax                                       // 0x008955c5    8bf8
                         push             0x18                                           // 0x008955c7    6a18
                         {disp8} mov      esi, dword ptr [edx + 0x0c]                    // 0x008955c9    8b720c
                         mov.s            edx, ecx                                       // 0x008955cc    8bd1
                         shr              ecx, 2                                         // 0x008955ce    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x008955d1    f3a5
                         mov.s            ecx, edx                                       // 0x008955d3    8bca
                         push             0x0                                            // 0x008955d5    6a00
                         and              ecx, 0x03                                      // 0x008955d7    83e103
                         rep movsb                                                       // 0x008955da    f3a4
                         {disp8} mov      esi, dword ptr [ebx + 0x04]                    // 0x008955dc    8b7304
                         {disp8} mov      ecx, dword ptr [ebp + 0x20]                    // 0x008955df    8b4d20
                         {disp8} mov      edx, dword ptr [ebp + 0x18]                    // 0x008955e2    8b5518
                         {disp8} mov      edi, dword ptr [esp + 0x18]                    // 0x008955e5    8b7c2418
                         {disp8} mov      dword ptr [esp + 0x38], eax                    // 0x008955e9    89442438
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x008955ed    8b44241c
                         {disp8} mov      dword ptr [esp + 0x3c], eax                    // 0x008955f1    8944243c
                         push             ecx                                            // 0x008955f5    51
                         {disp8} mov      ecx, dword ptr [ebp + 0x10]                    // 0x008955f6    8b4d10
                         {disp8} lea      eax, dword ptr [esp + 0x30]                    // 0x008955f9    8d442430
                         push             edx                                            // 0x008955fd    52
                         {disp8} mov      edx, dword ptr [esp + 0x50]                    // 0x008955fe    8b542450
                         push             eax                                            // 0x00895602    50
                         push             ecx                                            // 0x00895603    51
                         push             0xe                                            // 0x00895604    6a0e
                         push             edx                                            // 0x00895606    52
                         {disp8} mov      dword ptr [esp + 0x44], 0x00000001             // 0x00895607    c744244401000000
                         {disp8} mov      dword ptr [esp + 0x48], esi                    // 0x0089560f    89742448
                         {disp8} mov      dword ptr [esp + 0x4c], edi                    // 0x00895613    897c244c
                         call             _jmp_addr_0x00891120                           // 0x00895617    e804bbffff
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x0089561c    8b4304
                         {disp8} mov      edx, dword ptr [ebx + 0x08]                    // 0x0089561f    8b5308
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000004]        // 0x00895622    8d0c8504000000
                         push             ecx                                            // 0x00895629    51
                         push             edx                                            // 0x0089562a    52
                         call             _realloc                                       // 0x0089562b    e86f42f3ff
                         add              esp, 0x28                                      // 0x00895630    83c428
                         test             eax, eax                                       // 0x00895633    85c0
                         {disp8} jne      _jmp_addr_0x00895652                           // 0x00895635    751b
_jmp_addr_0x00895637:    push             edi                                            // 0x00895637    57
                         call             _free                                          // 0x00895638    e84911f3ff
                         {disp8} mov      eax, dword ptr [esp + 0x48]                    // 0x0089563d    8b442448
                         push             eax                                            // 0x00895641    50
                         call             _free                                          // 0x00895642    e83f11f3ff
                         add              esp, 0x08                                      // 0x00895647    83c408
                         pop              edi                                            // 0x0089564a    5f
                         pop              esi                                            // 0x0089564b    5e
                         pop              ebp                                            // 0x0089564c    5d
                         pop              ebx                                            // 0x0089564d    5b
                         add              esp, 0x2c                                      // 0x0089564e    83c42c
                         ret                                                             // 0x00895651    c3
_jmp_addr_0x00895652:    {disp8} mov      dword ptr [ebx + 0x08], eax                    // 0x00895652    894308
                         mov              dword ptr [eax + esi * 0x4], edi               // 0x00895655    893cb0
                         {disp8} mov      ecx, dword ptr [ebx + 0x04]                    // 0x00895658    8b4b04
                         {disp8} mov      eax, dword ptr [ebx + 0x0c]                    // 0x0089565b    8b430c
                         {disp32} lea     edx, dword ptr [ecx * 0x4 + 0x00000004]        // 0x0089565e    8d148d04000000
                         push             edx                                            // 0x00895665    52
                         push             eax                                            // 0x00895666    50
                         call             _realloc                                       // 0x00895667    e83342f3ff
                         add              esp, 0x08                                      // 0x0089566c    83c408
                         test             eax, eax                                       // 0x0089566f    85c0
                         {disp8} jne      _jmp_addr_0x0089568e                           // 0x00895671    751b
                         push             edi                                            // 0x00895673    57
                         call             _free                                          // 0x00895674    e80d11f3ff
                         {disp8} mov      ecx, dword ptr [esp + 0x48]                    // 0x00895679    8b4c2448
                         push             ecx                                            // 0x0089567d    51
                         call             _free                                          // 0x0089567e    e80311f3ff
                         add              esp, 0x08                                      // 0x00895683    83c408
                         pop              edi                                            // 0x00895686    5f
                         pop              esi                                            // 0x00895687    5e
                         pop              ebp                                            // 0x00895688    5d
                         pop              ebx                                            // 0x00895689    5b
                         add              esp, 0x2c                                      // 0x0089568a    83c42c
                         ret                                                             // 0x0089568d    c3
_jmp_addr_0x0089568e:    {disp8} mov      edx, dword ptr [esp + 0x14]                    // 0x0089568e    8b542414
                         {disp8} mov      dword ptr [ebx + 0x0c], eax                    // 0x00895692    89430c
                         mov              dword ptr [eax + esi * 0x4], edx               // 0x00895695    8914b0
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x00895698    8b4304
                         {disp8} mov      edx, dword ptr [ebx + 0x10]                    // 0x0089569b    8b5310
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000004]        // 0x0089569e    8d0c8504000000
                         push             ecx                                            // 0x008956a5    51
                         push             edx                                            // 0x008956a6    52
                         call             _realloc                                       // 0x008956a7    e8f341f3ff
                         add              esp, 0x08                                      // 0x008956ac    83c408
                         test             eax, eax                                       // 0x008956af    85c0
                         {disp8} je       _jmp_addr_0x00895637                           // 0x008956b1    7484
                         {disp8} mov      ecx, dword ptr [esp + 0x44]                    // 0x008956b3    8b4c2444
                         {disp8} mov      dword ptr [ebx + 0x10], eax                    // 0x008956b7    894310
                         mov              dword ptr [eax + esi * 0x4], ecx               // 0x008956ba    890cb0
                         {disp8} mov      eax, dword ptr [ebx + 0x04]                    // 0x008956bd    8b4304
                         inc              eax                                            // 0x008956c0    40
                         {disp8} mov      dword ptr [ebx + 0x04], eax                    // 0x008956c1    894304
_jmp_addr_0x008956c4:    pop              edi                                            // 0x008956c4    5f
                         pop              esi                                            // 0x008956c5    5e
                         pop              ebp                                            // 0x008956c6    5d
                         pop              ebx                                            // 0x008956c7    5b
                         add              esp, 0x2c                                      // 0x008956c8    83c42c
                         ret                                                             // 0x008956cb    c3
                         nop                                                             // 0x008956cc    90
                         nop                                                             // 0x008956cd    90
                         nop                                                             // 0x008956ce    90
                         nop                                                             // 0x008956cf    90
                         sub              esp, 0x20                                      // 0x008956d0    83ec20
                         xor.s            eax, eax                                       // 0x008956d3    33c0
                         {disp8} lea      ecx, dword ptr [esp + 0x00]                    // 0x008956d5    8d4c2400
                         push             esi                                            // 0x008956d9    56
                         {disp8} mov      esi, dword ptr [esp + 0x28]                    // 0x008956da    8b742428
                         {disp8} mov      dword ptr [esp + 0x04], eax                    // 0x008956de    89442404
                         push             ecx                                            // 0x008956e2    51
                         {disp8} mov      dword ptr [esp + 0x0c], eax                    // 0x008956e3    8944240c
                         push             0x1                                            // 0x008956e7    6a01
                         push             esi                                            // 0x008956e9    56
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x008956ea    89442418
                         {disp8} mov      dword ptr [esp + 0x10], eax                    // 0x008956ee    89442410
                         call             _jmp_addr_0x00894490                           // 0x008956f2    e899edffff
                         add              esp, 0x0c                                      // 0x008956f7    83c40c
                         test             eax, eax                                       // 0x008956fa    85c0
                         {disp8} je       _jmp_addr_0x00895734                           // 0x008956fc    7436
                         {disp8} mov      ecx, dword ptr [eax + 0x1c]                    // 0x008956fe    8b481c
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000001             // 0x00895701    c744241001000000
                         {disp8} mov      edx, dword ptr [ecx + 0x04]                    // 0x00895709    8b5104
                         {disp8} mov      dword ptr [esp + 0x14], edx                    // 0x0089570c    89542414
                         {disp8} mov      edx, dword ptr [ecx + 0x08]                    // 0x00895710    8b5108
                         {disp8} mov      dword ptr [esp + 0x18], edx                    // 0x00895713    89542418
                         {disp8} mov      edx, dword ptr [ecx + 0x0c]                    // 0x00895717    8b510c
                         {disp8} mov      dword ptr [esp + 0x20], edx                    // 0x0089571a    89542420
                         {disp8} mov      ecx, dword ptr [ecx + 0x10]                    // 0x0089571e    8b4910
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x00895721    8d542410
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                    // 0x00895725    894c241c
                         push             edx                                            // 0x00895729    52
                         push             eax                                            // 0x0089572a    50
                         push             esi                                            // 0x0089572b    56
                         call             _jmp_addr_0x00893410                           // 0x0089572c    e8dfdcffff
                         add              esp, 0x0c                                      // 0x00895731    83c40c
_jmp_addr_0x00895734:    pop              esi                                            // 0x00895734    5e
                         add              esp, 0x20                                      // 0x00895735    83c420
                         ret                                                             // 0x00895738    c3
                         nop                                                             // 0x00895739    90
                         nop                                                             // 0x0089573a    90
                         nop                                                             // 0x0089573b    90
                         nop                                                             // 0x0089573c    90
                         nop                                                             // 0x0089573d    90
                         nop                                                             // 0x0089573e    90
                         nop                                                             // 0x0089573f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895740    8b442408
                         sub              esp, 0x50                                      // 0x00895744    83ec50
                         {disp8} mov      edx, dword ptr [eax + 0x24]                    // 0x00895747    8b5024
                         push             ebx                                            // 0x0089574a    53
                         cmp              edx, 0x03                                      // 0x0089574b    83fa03
                         push             esi                                            // 0x0089574e    56
                         {disp32} jl      _jmp_addr_0x0089584b                           // 0x0089574f    0f8cf6000000
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895755    8b4020
                         add              edx, -0x03                                     // 0x00895758    83c2fd
                         push             edx                                            // 0x0089575b    52
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x0089575c    8b7004
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                    // 0x0089575f    8b4808
                         add              eax, 0x0c                                      // 0x00895762    83c00c
                         push             eax                                            // 0x00895765    50
                         push             ecx                                            // 0x00895766    51
                         call             _jmp_addr_0x00893d00                           // 0x00895767    e894e5ffff
                         mov.s            ebx, eax                                       // 0x0089576c    8bd8
                         add              esp, 0x0c                                      // 0x0089576e    83c40c
                         test             ebx, ebx                                       // 0x00895771    85db
                         {disp32} je      _jmp_addr_0x0089584b                           // 0x00895773    0f84d2000000
                         push             edi                                            // 0x00895779    57
                         mov              ecx, 0x00000007                                // 0x0089577a    b907000000
                         xor.s            eax, eax                                       // 0x0089577f    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x24]                    // 0x00895781    8d7c2424
                         rep stosd                                                       // 0x00895785    f3ab
                         {disp8} lea      eax, dword ptr [esp + 0x24]                    // 0x00895787    8d442424
                         push             ebx                                            // 0x0089578b    53
                         push             eax                                            // 0x0089578c    50
                         call             _jmp_addr_0x00893f30                           // 0x0089578d    e89ee7ffff
                         {disp8} mov      edi, dword ptr [esp + 0x68]                    // 0x00895792    8b7c2468
                         {disp8} lea      ecx, dword ptr [esp + 0x48]                    // 0x00895796    8d4c2448
                         push             ecx                                            // 0x0089579a    51
                         push             esi                                            // 0x0089579b    56
                         push             edi                                            // 0x0089579c    57
                         call             _jmp_addr_0x00892670                           // 0x0089579d    e8ceceffff
                         add              esp, 0x14                                      // 0x008957a2    83c414
                         test             eax, eax                                       // 0x008957a5    85c0
                         {disp8} jne      _jmp_addr_0x008957f0                           // 0x008957a7    7547
                         {disp8} lea      edx, dword ptr [esp + 0x24]                    // 0x008957a9    8d542424
                         push             edx                                            // 0x008957ad    52
                         push             esi                                            // 0x008957ae    56
                         push             edi                                            // 0x008957af    57
                         call             _jmp_addr_0x008926b0                           // 0x008957b0    e8fbceffff
                         push             esi                                            // 0x008957b5    56
                         push             edi                                            // 0x008957b6    57
                         call             _jmp_addr_0x008924a0                           // 0x008957b7    e8e4ccffff
                         add              esp, 0x14                                      // 0x008957bc    83c414
                         test             eax, eax                                       // 0x008957bf    85c0
                         {disp8} je       _jmp_addr_0x008957f0                           // 0x008957c1    742d
                         {disp8} mov      ecx, dword ptr [eax + 0x18]                    // 0x008957c3    8b4818
                         test             ecx, ecx                                       // 0x008957c6    85c9
                         {disp8} je       _jmp_addr_0x008957f0                           // 0x008957c8    7426
                         {disp8} mov      eax, dword ptr [eax + 0x28]                    // 0x008957ca    8b4028
                         {disp8} lea      edx, dword ptr [esp + 0x24]                    // 0x008957cd    8d542424
                         push             0x8                                            // 0x008957d1    6a08
                         {disp8} mov      dword ptr [esp + 0x14], edx                    // 0x008957d3    89542414
                         push             esi                                            // 0x008957d7    56
                         push             0x0                                            // 0x008957d8    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x18]                    // 0x008957da    8d542418
                         push             eax                                            // 0x008957de    50
                         push             edx                                            // 0x008957df    52
                         push             ecx                                            // 0x008957e0    51
                         push             0xa                                            // 0x008957e1    6a0a
                         push             edi                                            // 0x008957e3    57
                         {disp8} mov      dword ptr [esp + 0x2c], esi                    // 0x008957e4    8974242c
                         call             _jmp_addr_0x00891120                           // 0x008957e8    e833b9ffff
                         add              esp, 0x20                                      // 0x008957ed    83c420
_jmp_addr_0x008957f0:    xor.s            eax, eax                                       // 0x008957f0    33c0
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                    // 0x008957f2    8d4c2418
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x008957f6    89442418
                         push             ecx                                            // 0x008957fa    51
                         {disp8} mov      dword ptr [esp + 0x20], eax                    // 0x008957fb    89442420
                         push             0x1                                            // 0x008957ff    6a01
                         push             edi                                            // 0x00895801    57
                         {disp8} mov      dword ptr [esp + 0x2c], eax                    // 0x00895802    8944242c
                         {disp8} mov      dword ptr [esp + 0x24], 0x00000005             // 0x00895806    c744242405000000
                         {disp8} mov      dword ptr [esp + 0x28], esi                    // 0x0089580e    89742428
                         call             _jmp_addr_0x00894490                           // 0x00895812    e879ecffff
                         add              esp, 0x0c                                      // 0x00895817    83c40c
                         test             eax, eax                                       // 0x0089581a    85c0
                         {disp8} je       _jmp_addr_0x00895841                           // 0x0089581c    7423
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                    // 0x0089581e    8d4c240c
                         {disp8} lea      edx, dword ptr [esp + 0x24]                    // 0x00895822    8d542424
                         push             ecx                                            // 0x00895826    51
                         push             eax                                            // 0x00895827    50
                         push             edi                                            // 0x00895828    57
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000001             // 0x00895829    c744241801000000
                         {disp8} mov      dword ptr [esp + 0x1c], esi                    // 0x00895831    8974241c
                         {disp8} mov      dword ptr [esp + 0x20], edx                    // 0x00895835    89542420
                         call             _jmp_addr_0x00893410                           // 0x00895839    e8d2dbffff
                         add              esp, 0x0c                                      // 0x0089583e    83c40c
_jmp_addr_0x00895841:    push             ebx                                            // 0x00895841    53
                         call             _free                                          // 0x00895842    e83f0ff3ff
                         add              esp, 0x04                                      // 0x00895847    83c404
                         pop              edi                                            // 0x0089584a    5f
_jmp_addr_0x0089584b:    pop              esi                                            // 0x0089584b    5e
                         pop              ebx                                            // 0x0089584c    5b
                         add              esp, 0x50                                      // 0x0089584d    83c450
                         ret                                                             // 0x00895850    c3
                         nop                                                             // 0x00895851    90
                         nop                                                             // 0x00895852    90
                         nop                                                             // 0x00895853    90
                         nop                                                             // 0x00895854    90
                         nop                                                             // 0x00895855    90
                         nop                                                             // 0x00895856    90
                         nop                                                             // 0x00895857    90
                         nop                                                             // 0x00895858    90
                         nop                                                             // 0x00895859    90
                         nop                                                             // 0x0089585a    90
                         nop                                                             // 0x0089585b    90
                         nop                                                             // 0x0089585c    90
                         nop                                                             // 0x0089585d    90
                         nop                                                             // 0x0089585e    90
                         nop                                                             // 0x0089585f    90
                         sub              esp, 0x18                                      // 0x00895860    83ec18
                         mov              ecx, 0x00000006                                // 0x00895863    b906000000
                         push             ebx                                            // 0x00895868    53
                         push             ebp                                            // 0x00895869    55
                         {disp8} mov      ebp, dword ptr [esp + 0x28]                    // 0x0089586a    8b6c2428
                         push             esi                                            // 0x0089586e    56
                         push             edi                                            // 0x0089586f    57
                         cmp              dword ptr [ebp + 0x24], ecx                    // 0x00895870    394d24
                         {disp32} jne     _jmp_addr_0x008959ce                           // 0x00895873    0f8555010000
                         {disp8} mov      eax, dword ptr [ebp + 0x20]                    // 0x00895879    8b4520
                         {disp8} lea      edi, dword ptr [esp + 0x10]                    // 0x0089587c    8d7c2410
                         {disp8} mov      edx, dword ptr [eax + 0x04]                    // 0x00895880    8b5004
                         xor.s            eax, eax                                       // 0x00895883    33c0
                         rep stosd                                                       // 0x00895885    f3ab
                         {disp8} mov      edi, dword ptr [esp + 0x2c]                    // 0x00895887    8b7c242c
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                    // 0x0089588b    8d4c2410
                         push             ecx                                            // 0x0089588f    51
                         push             0x2                                            // 0x00895890    6a02
                         push             edi                                            // 0x00895892    57
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000004             // 0x00895893    c744241c04000000
                         {disp8} mov      dword ptr [esp + 0x20], edx                    // 0x0089589b    89542420
                         {disp8} mov      dword ptr [esp + 0x28], 0x00000007             // 0x0089589f    c744242807000000
                         {disp8} mov      dword ptr [esp + 0x2c], edx                    // 0x008958a7    8954242c
                         call             _jmp_addr_0x00894490                           // 0x008958ab    e8e0ebffff
                         mov.s            esi, eax                                       // 0x008958b0    8bf0
                         add              esp, 0x0c                                      // 0x008958b2    83c40c
                         test             esi, esi                                       // 0x008958b5    85f6
                         {disp32} je      _jmp_addr_0x008959ce                           // 0x008958b7    0f8411010000
                         mov              eax, dword ptr [esi]                           // 0x008958bd    8b06
                         cmp              eax, 0x04                                      // 0x008958bf    83f804
                         {disp32} jne     _jmp_addr_0x008959a2                           // 0x008958c2    0f85da000000
                         {disp8} mov      eax, dword ptr [ebp + 0x20]                    // 0x008958c8    8b4520
                         {disp8} mov      ebx, dword ptr [esi + 0x1c]                    // 0x008958cb    8b5e1c
                         or               ecx, 0xffffffff                                // 0x008958ce    83c9ff
                         {disp8} mov      esi, dword ptr [eax + 0x08]                    // 0x008958d1    8b7008
                         {disp8} mov      ebp, dword ptr [eax + 0x14]                    // 0x008958d4    8b6814
                         {disp8} mov      edx, dword ptr [eax + 0x0c]                    // 0x008958d7    8b500c
                         mov.s            edi, esi                                       // 0x008958da    8bfe
                         xor.s            eax, eax                                       // 0x008958dc    33c0
                         {disp8} mov      dword ptr [esp + 0x30], edx                    // 0x008958de    89542430
                         repne scasb                                                     // 0x008958e2    f2ae
                         not              ecx                                            // 0x008958e4    f7d1
                         push             ecx                                            // 0x008958e6    51
                         call             _malloc                                        // 0x008958e7    e8600df3ff
                         mov.s            edx, eax                                       // 0x008958ec    8bd0
                         add              esp, 0x04                                      // 0x008958ee    83c404
                         test             edx, edx                                       // 0x008958f1    85d2
                         mov              dword ptr [ebx], edx                           // 0x008958f3    8913
                         {disp32} je      _jmp_addr_0x008959ce                           // 0x008958f5    0f84d3000000
                         mov.s            edi, esi                                       // 0x008958fb    8bfe
                         or               ecx, 0xffffffff                                // 0x008958fd    83c9ff
                         xor.s            eax, eax                                       // 0x00895900    33c0
                         repne scasb                                                     // 0x00895902    f2ae
                         not              ecx                                            // 0x00895904    f7d1
                         sub.s            edi, ecx                                       // 0x00895906    2bf9
                         mov.s            eax, ecx                                       // 0x00895908    8bc1
                         mov.s            esi, edi                                       // 0x0089590a    8bf7
                         mov.s            edi, edx                                       // 0x0089590c    8bfa
                         shr              ecx, 2                                         // 0x0089590e    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00895911    f3a5
                         mov.s            ecx, eax                                       // 0x00895913    8bc8
                         xor.s            eax, eax                                       // 0x00895915    33c0
                         and              ecx, 0x03                                      // 0x00895917    83e103
                         rep movsb                                                       // 0x0089591a    f3a4
                         mov.s            edi, ebp                                       // 0x0089591c    8bfd
                         or               ecx, 0xffffffff                                // 0x0089591e    83c9ff
                         repne scasb                                                     // 0x00895921    f2ae
                         not              ecx                                            // 0x00895923    f7d1
                         push             ecx                                            // 0x00895925    51
                         call             _malloc                                        // 0x00895926    e8210df3ff
                         mov.s            edx, eax                                       // 0x0089592b    8bd0
                         add              esp, 0x04                                      // 0x0089592d    83c404
                         test             edx, edx                                       // 0x00895930    85d2
                         {disp8} mov      dword ptr [ebx + 0x04], edx                    // 0x00895932    895304
                         {disp32} je      _jmp_addr_0x008959ce                           // 0x00895935    0f8493000000
                         mov.s            edi, ebp                                       // 0x0089593b    8bfd
                         or               ecx, 0xffffffff                                // 0x0089593d    83c9ff
                         xor.s            eax, eax                                       // 0x00895940    33c0
                         repne scasb                                                     // 0x00895942    f2ae
                         not              ecx                                            // 0x00895944    f7d1
                         sub.s            edi, ecx                                       // 0x00895946    2bf9
                         mov.s            eax, ecx                                       // 0x00895948    8bc1
                         mov.s            esi, edi                                       // 0x0089594a    8bf7
                         mov.s            edi, edx                                       // 0x0089594c    8bfa
                         shr              ecx, 2                                         // 0x0089594e    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00895951    f3a5
                         mov.s            ecx, eax                                       // 0x00895953    8bc8
                         xor.s            eax, eax                                       // 0x00895955    33c0
                         and              ecx, 0x03                                      // 0x00895957    83e103
                         rep movsb                                                       // 0x0089595a    f3a4
                         {disp8} mov      esi, dword ptr [esp + 0x30]                    // 0x0089595c    8b742430
                         or               ecx, 0xffffffff                                // 0x00895960    83c9ff
                         mov.s            edi, esi                                       // 0x00895963    8bfe
                         repne scasb                                                     // 0x00895965    f2ae
                         not              ecx                                            // 0x00895967    f7d1
                         push             ecx                                            // 0x00895969    51
                         call             _malloc                                        // 0x0089596a    e8dd0cf3ff
                         mov.s            edx, eax                                       // 0x0089596f    8bd0
                         add              esp, 0x04                                      // 0x00895971    83c404
                         test             edx, edx                                       // 0x00895974    85d2
                         {disp8} mov      dword ptr [ebx + 0x08], edx                    // 0x00895976    895308
                         {disp8} je       _jmp_addr_0x008959ce                           // 0x00895979    7453
                         mov.s            edi, esi                                       // 0x0089597b    8bfe
                         or               ecx, 0xffffffff                                // 0x0089597d    83c9ff
                         xor.s            eax, eax                                       // 0x00895980    33c0
                         repne scasb                                                     // 0x00895982    f2ae
                         not              ecx                                            // 0x00895984    f7d1
                         sub.s            edi, ecx                                       // 0x00895986    2bf9
                         mov.s            eax, ecx                                       // 0x00895988    8bc1
                         mov.s            esi, edi                                       // 0x0089598a    8bf7
                         mov.s            edi, edx                                       // 0x0089598c    8bfa
                         shr              ecx, 2                                         // 0x0089598e    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00895991    f3a5
                         mov.s            ecx, eax                                       // 0x00895993    8bc8
                         and              ecx, 0x03                                      // 0x00895995    83e103
                         rep movsb                                                       // 0x00895998    f3a4
                         pop              edi                                            // 0x0089599a    5f
                         pop              esi                                            // 0x0089599b    5e
                         pop              ebp                                            // 0x0089599c    5d
                         pop              ebx                                            // 0x0089599d    5b
                         add              esp, 0x18                                      // 0x0089599e    83c418
                         ret                                                             // 0x008959a1    c3
_jmp_addr_0x008959a2:    cmp              eax, 0x07                                      // 0x008959a2    83f807
                         {disp8} jne      _jmp_addr_0x008959ce                           // 0x008959a5    7527
                         {disp8} mov      ecx, dword ptr [ebp + 0x20]                    // 0x008959a7    8b4d20
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                    // 0x008959aa    8b461c
                         {disp8} mov      edx, dword ptr [ecx + 0x0c]                    // 0x008959ad    8b510c
                         mov              ecx, dword ptr [eax]                           // 0x008959b0    8b08
                         push             edx                                            // 0x008959b2    52
                         push             ecx                                            // 0x008959b3    51
                         {disp8} lea      edx, dword ptr [edi + 0x18]                    // 0x008959b4    8d5718
                         push             0x00c3ac8c                                     // 0x008959b7    688cacc300
                         push             edx                                            // 0x008959bc    52
                         call             _jmp_addr_0x008903c0                           // 0x008959bd    e8fea9ffff
                         push             0x0                                            // 0x008959c2    6a00
                         push             esi                                            // 0x008959c4    56
                         push             edi                                            // 0x008959c5    57
                         call             _jmp_addr_0x00893410                           // 0x008959c6    e845daffff
                         add              esp, 0x1c                                      // 0x008959cb    83c41c
_jmp_addr_0x008959ce:    pop              edi                                            // 0x008959ce    5f
                         pop              esi                                            // 0x008959cf    5e
                         pop              ebp                                            // 0x008959d0    5d
                         pop              ebx                                            // 0x008959d1    5b
                         add              esp, 0x18                                      // 0x008959d2    83c418
                         ret                                                             // 0x008959d5    c3
                         nop                                                             // 0x008959d6    90
                         nop                                                             // 0x008959d7    90
                         nop                                                             // 0x008959d8    90
                         nop                                                             // 0x008959d9    90
                         nop                                                             // 0x008959da    90
                         nop                                                             // 0x008959db    90
                         nop                                                             // 0x008959dc    90
                         nop                                                             // 0x008959dd    90
                         nop                                                             // 0x008959de    90
                         nop                                                             // 0x008959df    90
                         sub              esp, 0x0c                                      // 0x008959e0    83ec0c
                         push             ebx                                            // 0x008959e3    53
                         push             ebp                                            // 0x008959e4    55
                         push             esi                                            // 0x008959e5    56
                         {disp8} mov      esi, dword ptr [esp + 0x20]                    // 0x008959e6    8b742420
                         push             edi                                            // 0x008959ea    57
                         cmp              dword ptr [esi + 0x24], 0x03                   // 0x008959eb    837e2403
                         {disp32} jne     _jmp_addr_0x00895af1                           // 0x008959ef    0f85fc000000
                         {disp8} mov      eax, dword ptr [esi + 0x20]                    // 0x008959f5    8b4620
                         xor.s            ecx, ecx                                       // 0x008959f8    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x008959fa    8d542410
                         {disp8} mov      eax, dword ptr [eax + 0x04]                    // 0x008959fe    8b4004
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00895a01    894c2410
                         {disp8} mov      dword ptr [esp + 0x14], ecx                    // 0x00895a05    894c2414
                         {disp8} mov      dword ptr [esp + 0x14], eax                    // 0x00895a09    89442414
                         {disp8} mov      eax, dword ptr [esp + 0x20]                    // 0x00895a0d    8b442420
                         push             edx                                            // 0x00895a11    52
                         push             0x1                                            // 0x00895a12    6a01
                         push             eax                                            // 0x00895a14    50
                         {disp8} mov      dword ptr [esp + 0x24], ecx                    // 0x00895a15    894c2424
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000004             // 0x00895a19    c744241c04000000
                         call             _jmp_addr_0x00894490                           // 0x00895a21    e86aeaffff
                         add              esp, 0x0c                                      // 0x00895a26    83c40c
                         test             eax, eax                                       // 0x00895a29    85c0
                         {disp32} je      _jmp_addr_0x00895af1                           // 0x00895a2b    0f84c0000000
                         {disp8} mov      ecx, dword ptr [esi + 0x20]                    // 0x00895a31    8b4e20
                         {disp8} mov      ebx, dword ptr [eax + 0x1c]                    // 0x00895a34    8b581c
                         push             0x009d00cc                                     // 0x00895a37    68cc009d00
                         {disp8} mov      eax, dword ptr [ecx + 0x08]                    // 0x00895a3c    8b4108
                         push             eax                                            // 0x00895a3f    50
                         call             _strtok                                        // 0x00895a40    e8e539f3ff
                         mov.s            esi, eax                                       // 0x00895a45    8bf0
                         add              esp, 0x08                                      // 0x00895a47    83c408
                         test             esi, esi                                       // 0x00895a4a    85f6
                         {disp32} je      _jmp_addr_0x00895af1                           // 0x00895a4c    0f849f000000
_jmp_addr_0x00895a52:    cmp              byte ptr [esi], 0x2d                           // 0x00895a52    803e2d
                         {disp8} jne      _jmp_addr_0x00895a58                           // 0x00895a55    7501
                         inc              esi                                            // 0x00895a57    46
_jmp_addr_0x00895a58:    mov              al, byte ptr [esi]                             // 0x00895a58    8a06
                         cmp              al, 0x40                                       // 0x00895a5a    3c40
                         {disp8} je       _jmp_addr_0x00895a62                           // 0x00895a5c    7404
                         cmp              al, 0x2b                                       // 0x00895a5e    3c2b
                         {disp8} jne      _jmp_addr_0x00895a63                           // 0x00895a60    7501
_jmp_addr_0x00895a62:    inc              esi                                            // 0x00895a62    46
_jmp_addr_0x00895a63:    mov.s            edi, esi                                       // 0x00895a63    8bfe
                         or               ecx, 0xffffffff                                // 0x00895a65    83c9ff
                         xor.s            eax, eax                                       // 0x00895a68    33c0
                         repne scasb                                                     // 0x00895a6a    f2ae
                         not              ecx                                            // 0x00895a6c    f7d1
                         push             ecx                                            // 0x00895a6e    51
                         call             _malloc                                        // 0x00895a6f    e8d80bf3ff
                         mov.s            ebp, eax                                       // 0x00895a74    8be8
                         add              esp, 0x04                                      // 0x00895a76    83c404
                         test             ebp, ebp                                       // 0x00895a79    85ed
                         {disp8} je       _jmp_addr_0x00895af1                           // 0x00895a7b    7474
                         mov.s            edi, esi                                       // 0x00895a7d    8bfe
                         or               ecx, 0xffffffff                                // 0x00895a7f    83c9ff
                         xor.s            eax, eax                                       // 0x00895a82    33c0
                         repne scasb                                                     // 0x00895a84    f2ae
                         not              ecx                                            // 0x00895a86    f7d1
                         sub.s            edi, ecx                                       // 0x00895a88    2bf9
                         mov.s            edx, ecx                                       // 0x00895a8a    8bd1
                         mov.s            esi, edi                                       // 0x00895a8c    8bf7
                         mov.s            edi, ebp                                       // 0x00895a8e    8bfd
                         shr              ecx, 2                                         // 0x00895a90    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00895a93    f3a5
                         mov.s            ecx, edx                                       // 0x00895a95    8bca
                         and              ecx, 0x03                                      // 0x00895a97    83e103
                         rep movsb                                                       // 0x00895a9a    f3a4
                         {disp8} mov      eax, dword ptr [ebx + 0x0c]                    // 0x00895a9c    8b430c
                         {disp8} mov      edx, dword ptr [ebx + 0x10]                    // 0x00895a9f    8b5310
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000004]        // 0x00895aa2    8d0c8504000000
                         push             ecx                                            // 0x00895aa9    51
                         push             edx                                            // 0x00895aaa    52
                         call             _realloc                                       // 0x00895aab    e8ef3df3ff
                         add              esp, 0x08                                      // 0x00895ab0    83c408
                         test             eax, eax                                       // 0x00895ab3    85c0
                         {disp8} je       _jmp_addr_0x00895ae8                           // 0x00895ab5    7431
                         {disp8} mov      ecx, dword ptr [ebx + 0x0c]                    // 0x00895ab7    8b4b0c
                         {disp8} mov      dword ptr [ebx + 0x10], eax                    // 0x00895aba    894310
                         push             0x009d00cc                                     // 0x00895abd    68cc009d00
                         push             0x0                                            // 0x00895ac2    6a00
                         mov              dword ptr [eax + ecx * 0x4], ebp               // 0x00895ac4    892c88
                         {disp8} mov      edi, dword ptr [ebx + 0x0c]                    // 0x00895ac7    8b7b0c
                         inc              edi                                            // 0x00895aca    47
                         {disp8} mov      dword ptr [ebx + 0x0c], edi                    // 0x00895acb    897b0c
                         call             _strtok                                        // 0x00895ace    e85739f3ff
                         mov.s            esi, eax                                       // 0x00895ad3    8bf0
                         add              esp, 0x08                                      // 0x00895ad5    83c408
                         test             esi, esi                                       // 0x00895ad8    85f6
                         {disp32} jne     _jmp_addr_0x00895a52                           // 0x00895ada    0f8572ffffff
                         pop              edi                                            // 0x00895ae0    5f
                         pop              esi                                            // 0x00895ae1    5e
                         pop              ebp                                            // 0x00895ae2    5d
                         pop              ebx                                            // 0x00895ae3    5b
                         add              esp, 0x0c                                      // 0x00895ae4    83c40c
                         ret                                                             // 0x00895ae7    c3
_jmp_addr_0x00895ae8:    push             ebp                                            // 0x00895ae8    55
                         call             _free                                          // 0x00895ae9    e8980cf3ff
                         add              esp, 0x04                                      // 0x00895aee    83c404
_jmp_addr_0x00895af1:    pop              edi                                            // 0x00895af1    5f
                         pop              esi                                            // 0x00895af2    5e
                         pop              ebp                                            // 0x00895af3    5d
                         pop              ebx                                            // 0x00895af4    5b
                         add              esp, 0x0c                                      // 0x00895af5    83c40c
                         ret                                                             // 0x00895af8    c3
                         nop                                                             // 0x00895af9    90
                         nop                                                             // 0x00895afa    90
                         nop                                                             // 0x00895afb    90
                         nop                                                             // 0x00895afc    90
                         nop                                                             // 0x00895afd    90
                         nop                                                             // 0x00895afe    90
                         nop                                                             // 0x00895aff    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895b00    8b442408
                         sub              esp, 0x28                                      // 0x00895b04    83ec28
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895b07    8b4824
                         push             esi                                            // 0x00895b0a    56
                         cmp              ecx, 0x03                                      // 0x00895b0b    83f903
                         push             edi                                            // 0x00895b0e    57
                         {disp8} jne      _jmp_addr_0x00895b90                           // 0x00895b0f    757f
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895b11    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x34]                    // 0x00895b14    8b7c2434
                         xor.s            ecx, ecx                                       // 0x00895b18    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x00895b1a    8d542408
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895b1e    8b7004
                         {disp8} mov      dword ptr [esp + 0x08], ecx                    // 0x00895b21    894c2408
                         push             edx                                            // 0x00895b25    52
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00895b26    894c2410
                         push             0x1                                            // 0x00895b2a    6a01
                         push             edi                                            // 0x00895b2c    57
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                    // 0x00895b2d    894c241c
                         {disp8} mov      dword ptr [esp + 0x14], 0x00000004             // 0x00895b31    c744241404000000
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00895b39    89742418
                         call             _jmp_addr_0x00894490                           // 0x00895b3d    e84ee9ffff
                         add              esp, 0x0c                                      // 0x00895b42    83c40c
                         test             eax, eax                                       // 0x00895b45    85c0
                         {disp8} je       _jmp_addr_0x00895b90                           // 0x00895b47    7447
                         {disp8} mov      ecx, dword ptr [eax + 0x1c]                    // 0x00895b49    8b481c
                         push             ebx                                            // 0x00895b4c    53
                         xor.s            edx, edx                                       // 0x00895b4d    33d2
                         mov              ebx, dword ptr [ecx]                           // 0x00895b4f    8b19
                         {disp8} mov      dword ptr [esp + 0x1c], esi                    // 0x00895b51    8974241c
                         test             ebx, ebx                                       // 0x00895b55    85db
                         setne            dl                                             // 0x00895b57    0f95c2
                         {disp8} mov      dword ptr [esp + 0x18], edx                    // 0x00895b5a    89542418
                         mov              edx, dword ptr [ecx]                           // 0x00895b5e    8b11
                         {disp8} mov      dword ptr [esp + 0x20], edx                    // 0x00895b60    89542420
                         {disp8} mov      edx, dword ptr [ecx + 0x04]                    // 0x00895b64    8b5104
                         {disp8} mov      dword ptr [esp + 0x24], edx                    // 0x00895b67    89542424
                         {disp8} mov      edx, dword ptr [ecx + 0x08]                    // 0x00895b6b    8b5108
                         {disp8} mov      dword ptr [esp + 0x28], edx                    // 0x00895b6e    89542428
                         {disp8} mov      edx, dword ptr [ecx + 0x0c]                    // 0x00895b72    8b510c
                         {disp8} mov      dword ptr [esp + 0x2c], edx                    // 0x00895b75    8954242c
                         {disp8} mov      ecx, dword ptr [ecx + 0x10]                    // 0x00895b79    8b4910
                         {disp8} lea      edx, dword ptr [esp + 0x18]                    // 0x00895b7c    8d542418
                         {disp8} mov      dword ptr [esp + 0x30], ecx                    // 0x00895b80    894c2430
                         push             edx                                            // 0x00895b84    52
                         push             eax                                            // 0x00895b85    50
                         push             edi                                            // 0x00895b86    57
                         call             _jmp_addr_0x00893410                           // 0x00895b87    e884d8ffff
                         add              esp, 0x0c                                      // 0x00895b8c    83c40c
                         pop              ebx                                            // 0x00895b8f    5b
_jmp_addr_0x00895b90:    pop              edi                                            // 0x00895b90    5f
                         pop              esi                                            // 0x00895b91    5e
                         add              esp, 0x28                                      // 0x00895b92    83c428
                         ret                                                             // 0x00895b95    c3
                         nop                                                             // 0x00895b96    90
                         nop                                                             // 0x00895b97    90
                         nop                                                             // 0x00895b98    90
                         nop                                                             // 0x00895b99    90
                         nop                                                             // 0x00895b9a    90
                         nop                                                             // 0x00895b9b    90
                         nop                                                             // 0x00895b9c    90
                         nop                                                             // 0x00895b9d    90
                         nop                                                             // 0x00895b9e    90
                         nop                                                             // 0x00895b9f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895ba0    8b442408
                         sub              esp, 0x0c                                      // 0x00895ba4    83ec0c
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895ba7    8b4824
                         push             ebx                                            // 0x00895baa    53
                         push             esi                                            // 0x00895bab    56
                         cmp              ecx, 0x03                                      // 0x00895bac    83f903
                         push             edi                                            // 0x00895baf    57
                         {disp32} jl      _jmp_addr_0x00895c4c                           // 0x00895bb0    0f8c96000000
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895bb6    8b4020
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                    // 0x00895bb9    8b54241c
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x00895bbd    8b4804
                         {disp8} mov      esi, dword ptr [eax + 0x08]                    // 0x00895bc0    8b7008
                         xor.s            eax, eax                                       // 0x00895bc3    33c0
                         {disp8} mov      dword ptr [esp + 0x0c], eax                    // 0x00895bc5    8944240c
                         {disp8} mov      dword ptr [esp + 0x0c], 0x00000008             // 0x00895bc9    c744240c08000000
                         {disp8} mov      dword ptr [esp + 0x10], eax                    // 0x00895bd1    89442410
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00895bd5    894c2410
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                    // 0x00895bd9    8d4c240c
                         {disp8} mov      dword ptr [esp + 0x14], eax                    // 0x00895bdd    89442414
                         push             ecx                                            // 0x00895be1    51
                         push             0x1                                            // 0x00895be2    6a01
                         push             edx                                            // 0x00895be4    52
                         call             _jmp_addr_0x00894490                           // 0x00895be5    e8a6e8ffff
                         add              esp, 0x0c                                      // 0x00895bea    83c40c
                         test             eax, eax                                       // 0x00895bed    85c0
                         {disp8} je       _jmp_addr_0x00895c4c                           // 0x00895bef    745b
                         {disp8} mov      ebx, dword ptr [eax + 0x1c]                    // 0x00895bf1    8b581c
                         mov              eax, dword ptr [ebx]                           // 0x00895bf4    8b03
                         {disp8} mov      edx, dword ptr [ebx + 0x04]                    // 0x00895bf6    8b5304
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000004]        // 0x00895bf9    8d0c8504000000
                         push             ecx                                            // 0x00895c00    51
                         push             edx                                            // 0x00895c01    52
                         call             _realloc                                       // 0x00895c02    e8983cf3ff
                         add              esp, 0x08                                      // 0x00895c07    83c408
                         test             eax, eax                                       // 0x00895c0a    85c0
                         {disp8} je       _jmp_addr_0x00895c4c                           // 0x00895c0c    743e
                         {disp8} mov      dword ptr [ebx + 0x04], eax                    // 0x00895c0e    894304
                         mov.s            edi, esi                                       // 0x00895c11    8bfe
                         or               ecx, 0xffffffff                                // 0x00895c13    83c9ff
                         xor.s            eax, eax                                       // 0x00895c16    33c0
                         repne scasb                                                     // 0x00895c18    f2ae
                         not              ecx                                            // 0x00895c1a    f7d1
                         dec              ecx                                            // 0x00895c1c    49
                         mov.s            edi, ecx                                       // 0x00895c1d    8bf9
                         inc              edi                                            // 0x00895c1f    47
                         push             edi                                            // 0x00895c20    57
                         call             _malloc                                        // 0x00895c21    e8260af3ff
                         add              esp, 0x04                                      // 0x00895c26    83c404
                         test             eax, eax                                       // 0x00895c29    85c0
                         {disp8} je       _jmp_addr_0x00895c4c                           // 0x00895c2b    741f
                         mov.s            ecx, edi                                       // 0x00895c2d    8bcf
                         mov.s            edi, eax                                       // 0x00895c2f    8bf8
                         mov.s            edx, ecx                                       // 0x00895c31    8bd1
                         shr              ecx, 2                                         // 0x00895c33    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x00895c36    f3a5
                         mov.s            ecx, edx                                       // 0x00895c38    8bca
                         and              ecx, 0x03                                      // 0x00895c3a    83e103
                         rep movsb                                                       // 0x00895c3d    f3a4
                         mov              ecx, dword ptr [ebx]                           // 0x00895c3f    8b0b
                         {disp8} mov      edx, dword ptr [ebx + 0x04]                    // 0x00895c41    8b5304
                         mov              dword ptr [edx + ecx * 0x4], eax               // 0x00895c44    89048a
                         mov              eax, dword ptr [ebx]                           // 0x00895c47    8b03
                         inc              eax                                            // 0x00895c49    40
                         mov              dword ptr [ebx], eax                           // 0x00895c4a    8903
_jmp_addr_0x00895c4c:    pop              edi                                            // 0x00895c4c    5f
                         pop              esi                                            // 0x00895c4d    5e
                         pop              ebx                                            // 0x00895c4e    5b
                         add              esp, 0x0c                                      // 0x00895c4f    83c40c
                         ret                                                             // 0x00895c52    c3
                         nop                                                             // 0x00895c53    90
                         nop                                                             // 0x00895c54    90
                         nop                                                             // 0x00895c55    90
                         nop                                                             // 0x00895c56    90
                         nop                                                             // 0x00895c57    90
                         nop                                                             // 0x00895c58    90
                         nop                                                             // 0x00895c59    90
                         nop                                                             // 0x00895c5a    90
                         nop                                                             // 0x00895c5b    90
                         nop                                                             // 0x00895c5c    90
                         nop                                                             // 0x00895c5d    90
                         nop                                                             // 0x00895c5e    90
                         nop                                                             // 0x00895c5f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895c60    8b442408
                         sub              esp, 0x1c                                      // 0x00895c64    83ec1c
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895c67    8b4824
                         push             esi                                            // 0x00895c6a    56
                         cmp              ecx, 0x03                                      // 0x00895c6b    83f903
                         push             edi                                            // 0x00895c6e    57
                         {disp8} jne      _jmp_addr_0x00895cd4                           // 0x00895c6f    7563
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895c71    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x28]                    // 0x00895c74    8b7c2428
                         xor.s            ecx, ecx                                       // 0x00895c78    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x00895c7a    8d542408
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895c7e    8b7004
                         {disp8} mov      dword ptr [esp + 0x08], ecx                    // 0x00895c81    894c2408
                         push             edx                                            // 0x00895c85    52
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00895c86    894c2410
                         push             0x1                                            // 0x00895c8a    6a01
                         push             edi                                            // 0x00895c8c    57
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                    // 0x00895c8d    894c241c
                         {disp8} mov      dword ptr [esp + 0x14], 0x00000008             // 0x00895c91    c744241408000000
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00895c99    89742418
                         call             _jmp_addr_0x00894490                           // 0x00895c9d    e8eee7ffff
                         add              esp, 0x0c                                      // 0x00895ca2    83c40c
                         test             eax, eax                                       // 0x00895ca5    85c0
                         {disp8} je       _jmp_addr_0x00895cd4                           // 0x00895ca7    742b
                         {disp8} mov      ecx, dword ptr [eax + 0x1c]                    // 0x00895ca9    8b481c
                         {disp8} mov      dword ptr [esp + 0x14], 0x00000001             // 0x00895cac    c744241401000000
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00895cb4    89742418
                         mov              edx, dword ptr [ecx]                           // 0x00895cb8    8b11
                         {disp8} mov      dword ptr [esp + 0x1c], edx                    // 0x00895cba    8954241c
                         {disp8} mov      ecx, dword ptr [ecx + 0x04]                    // 0x00895cbe    8b4904
                         {disp8} lea      edx, dword ptr [esp + 0x14]                    // 0x00895cc1    8d542414
                         {disp8} mov      dword ptr [esp + 0x20], ecx                    // 0x00895cc5    894c2420
                         push             edx                                            // 0x00895cc9    52
                         push             eax                                            // 0x00895cca    50
                         push             edi                                            // 0x00895ccb    57
                         call             _jmp_addr_0x00893410                           // 0x00895ccc    e83fd7ffff
                         add              esp, 0x0c                                      // 0x00895cd1    83c40c
_jmp_addr_0x00895cd4:    pop              edi                                            // 0x00895cd4    5f
                         pop              esi                                            // 0x00895cd5    5e
                         add              esp, 0x1c                                      // 0x00895cd6    83c41c
                         ret                                                             // 0x00895cd9    c3
                         nop                                                             // 0x00895cda    90
                         nop                                                             // 0x00895cdb    90
                         nop                                                             // 0x00895cdc    90
                         nop                                                             // 0x00895cdd    90
                         nop                                                             // 0x00895cde    90
                         nop                                                             // 0x00895cdf    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00895ce0    8b442404
                         {disp8} mov      ecx, dword ptr [eax + 0x10]                    // 0x00895ce4    8b4810
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000             // 0x00895ce7    c7400400000000
                         test             ecx, ecx                                       // 0x00895cee    85c9
                         mov              dword ptr [eax], 0x00000001                    // 0x00895cf0    c70001000000
                         {disp8} je       _jmp_addr_0x00895d04                           // 0x00895cf6    740c
                         {disp8} mov      edx, dword ptr [eax + 0x14]                    // 0x00895cf8    8b5014
                         push             edx                                            // 0x00895cfb    52
                         push             0x1                                            // 0x00895cfc    6a01
                         push             eax                                            // 0x00895cfe    50
                         call             ecx                                            // 0x00895cff    ffd1
                         add              esp, 0x0c                                      // 0x00895d01    83c40c
_jmp_addr_0x00895d04:    ret                                                             // 0x00895d04    c3
                         nop                                                             // 0x00895d05    90
                         nop                                                             // 0x00895d06    90
                         nop                                                             // 0x00895d07    90
                         nop                                                             // 0x00895d08    90
                         nop                                                             // 0x00895d09    90
                         nop                                                             // 0x00895d0a    90
                         nop                                                             // 0x00895d0b    90
                         nop                                                             // 0x00895d0c    90
                         nop                                                             // 0x00895d0d    90
                         nop                                                             // 0x00895d0e    90
                         nop                                                             // 0x00895d0f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895d10    8b442408
                         sub              esp, 0x24                                      // 0x00895d14    83ec24
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895d17    8b4824
                         push             esi                                            // 0x00895d1a    56
                         cmp              ecx, 0x03                                      // 0x00895d1b    83f903
                         push             edi                                            // 0x00895d1e    57
                         {disp32} jne     _jmp_addr_0x00895daf                           // 0x00895d1f    0f858a000000
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895d25    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x30]                    // 0x00895d28    8b7c2430
                         xor.s            ecx, ecx                                       // 0x00895d2c    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x14]                    // 0x00895d2e    8d542414
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895d32    8b7004
                         {disp8} mov      dword ptr [esp + 0x14], ecx                    // 0x00895d35    894c2414
                         push             edx                                            // 0x00895d39    52
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                    // 0x00895d3a    894c241c
                         push             0x2                                            // 0x00895d3e    6a02
                         push             edi                                            // 0x00895d40    57
                         {disp8} mov      dword ptr [esp + 0x28], ecx                    // 0x00895d41    894c2428
                         {disp8} mov      dword ptr [esp + 0x20], 0x00000001             // 0x00895d45    c744242001000000
                         {disp8} mov      dword ptr [esp + 0x24], esi                    // 0x00895d4d    89742424
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000005             // 0x00895d51    c744242c05000000
                         {disp8} mov      dword ptr [esp + 0x30], esi                    // 0x00895d59    89742430
                         call             _jmp_addr_0x00894490                           // 0x00895d5d    e82ee7ffff
                         xor.s            edx, edx                                       // 0x00895d62    33d2
                         add              esp, 0x0c                                      // 0x00895d64    83c40c
                         cmp.s            eax, edx                                       // 0x00895d67    3bc2
                         {disp8} je       _jmp_addr_0x00895daf                           // 0x00895d69    7444
                         mov              ecx, dword ptr [eax]                           // 0x00895d6b    8b08
                         cmp              ecx, 0x01                                      // 0x00895d6d    83f901
                         {disp8} jne      _jmp_addr_0x00895d8f                           // 0x00895d70    751d
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x00895d72    8d4c2408
                         {disp8} mov      dword ptr [esp + 0x08], edx                    // 0x00895d76    89542408
                         push             ecx                                            // 0x00895d7a    51
                         push             eax                                            // 0x00895d7b    50
                         push             edi                                            // 0x00895d7c    57
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00895d7d    89742418
                         call             _jmp_addr_0x00893410                           // 0x00895d81    e88ad6ffff
                         add              esp, 0x0c                                      // 0x00895d86    83c40c
                         pop              edi                                            // 0x00895d89    5f
                         pop              esi                                            // 0x00895d8a    5e
                         add              esp, 0x24                                      // 0x00895d8b    83c424
                         ret                                                             // 0x00895d8e    c3
_jmp_addr_0x00895d8f:    cmp              ecx, 0x05                                      // 0x00895d8f    83f905
                         {disp8} jne      _jmp_addr_0x00895daf                           // 0x00895d92    751b
                         {disp8} mov      dword ptr [esp + 0x08], edx                    // 0x00895d94    89542408
                         {disp8} mov      dword ptr [esp + 0x10], edx                    // 0x00895d98    89542410
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x00895d9c    8d542408
                         {disp8} mov      dword ptr [esp + 0x0c], esi                    // 0x00895da0    8974240c
                         push             edx                                            // 0x00895da4    52
                         push             eax                                            // 0x00895da5    50
                         push             edi                                            // 0x00895da6    57
                         call             _jmp_addr_0x00893410                           // 0x00895da7    e864d6ffff
                         add              esp, 0x0c                                      // 0x00895dac    83c40c
_jmp_addr_0x00895daf:    pop              edi                                            // 0x00895daf    5f
                         pop              esi                                            // 0x00895db0    5e
                         add              esp, 0x24                                      // 0x00895db1    83c424
                         ret                                                             // 0x00895db4    c3
                         nop                                                             // 0x00895db5    90
                         nop                                                             // 0x00895db6    90
                         nop                                                             // 0x00895db7    90
                         nop                                                             // 0x00895db8    90
                         nop                                                             // 0x00895db9    90
                         nop                                                             // 0x00895dba    90
                         nop                                                             // 0x00895dbb    90
                         nop                                                             // 0x00895dbc    90
                         nop                                                             // 0x00895dbd    90
                         nop                                                             // 0x00895dbe    90
                         nop                                                             // 0x00895dbf    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895dc0    8b442408
                         sub              esp, 0x14                                      // 0x00895dc4    83ec14
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895dc7    8b4824
                         push             esi                                            // 0x00895dca    56
                         cmp              ecx, 0x03                                      // 0x00895dcb    83f903
                         push             edi                                            // 0x00895dce    57
                         {disp8} jne      _jmp_addr_0x00895e24                           // 0x00895dcf    7553
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895dd1    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x20]                    // 0x00895dd4    8b7c2420
                         xor.s            ecx, ecx                                       // 0x00895dd8    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x00895dda    8d542410
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895dde    8b7004
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00895de1    894c2410
                         push             edx                                            // 0x00895de5    52
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x00895de6    894c2418
                         push             0x1                                            // 0x00895dea    6a01
                         push             edi                                            // 0x00895dec    57
                         {disp8} mov      dword ptr [esp + 0x24], ecx                    // 0x00895ded    894c2424
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000001             // 0x00895df1    c744241c01000000
                         {disp8} mov      dword ptr [esp + 0x20], esi                    // 0x00895df9    89742420
                         call             _jmp_addr_0x00894490                           // 0x00895dfd    e88ee6ffff
                         add              esp, 0x0c                                      // 0x00895e02    83c40c
                         test             eax, eax                                       // 0x00895e05    85c0
                         {disp8} je       _jmp_addr_0x00895e24                           // 0x00895e07    741b
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x00895e09    8d4c2408
                         {disp8} mov      dword ptr [esp + 0x08], 0x00000000             // 0x00895e0d    c744240800000000
                         push             ecx                                            // 0x00895e15    51
                         push             eax                                            // 0x00895e16    50
                         push             edi                                            // 0x00895e17    57
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00895e18    89742418
                         call             _jmp_addr_0x00893410                           // 0x00895e1c    e8efd5ffff
                         add              esp, 0x0c                                      // 0x00895e21    83c40c
_jmp_addr_0x00895e24:    pop              edi                                            // 0x00895e24    5f
                         pop              esi                                            // 0x00895e25    5e
                         add              esp, 0x14                                      // 0x00895e26    83c414
                         ret                                                             // 0x00895e29    c3
                         nop                                                             // 0x00895e2a    90
                         nop                                                             // 0x00895e2b    90
                         nop                                                             // 0x00895e2c    90
                         nop                                                             // 0x00895e2d    90
                         nop                                                             // 0x00895e2e    90
                         nop                                                             // 0x00895e2f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895e30    8b442408
                         sub              esp, 0x14                                      // 0x00895e34    83ec14
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895e37    8b4824
                         push             esi                                            // 0x00895e3a    56
                         cmp              ecx, 0x03                                      // 0x00895e3b    83f903
                         push             edi                                            // 0x00895e3e    57
                         {disp8} jne      _jmp_addr_0x00895e94                           // 0x00895e3f    7553
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895e41    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x20]                    // 0x00895e44    8b7c2420
                         xor.s            ecx, ecx                                       // 0x00895e48    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x00895e4a    8d542410
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895e4e    8b7004
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00895e51    894c2410
                         push             edx                                            // 0x00895e55    52
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x00895e56    894c2418
                         push             0x1                                            // 0x00895e5a    6a01
                         push             edi                                            // 0x00895e5c    57
                         {disp8} mov      dword ptr [esp + 0x24], ecx                    // 0x00895e5d    894c2424
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000001             // 0x00895e61    c744241c01000000
                         {disp8} mov      dword ptr [esp + 0x20], esi                    // 0x00895e69    89742420
                         call             _jmp_addr_0x00894490                           // 0x00895e6d    e81ee6ffff
                         add              esp, 0x0c                                      // 0x00895e72    83c40c
                         test             eax, eax                                       // 0x00895e75    85c0
                         {disp8} je       _jmp_addr_0x00895e94                           // 0x00895e77    741b
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x00895e79    8d4c2408
                         {disp8} mov      dword ptr [esp + 0x08], 0x00000000             // 0x00895e7d    c744240800000000
                         push             ecx                                            // 0x00895e85    51
                         push             eax                                            // 0x00895e86    50
                         push             edi                                            // 0x00895e87    57
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00895e88    89742418
                         call             _jmp_addr_0x00893410                           // 0x00895e8c    e87fd5ffff
                         add              esp, 0x0c                                      // 0x00895e91    83c40c
_jmp_addr_0x00895e94:    pop              edi                                            // 0x00895e94    5f
                         pop              esi                                            // 0x00895e95    5e
                         add              esp, 0x14                                      // 0x00895e96    83c414
                         ret                                                             // 0x00895e99    c3
                         nop                                                             // 0x00895e9a    90
                         nop                                                             // 0x00895e9b    90
                         nop                                                             // 0x00895e9c    90
                         nop                                                             // 0x00895e9d    90
                         nop                                                             // 0x00895e9e    90
                         nop                                                             // 0x00895e9f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895ea0    8b442408
                         sub              esp, 0x14                                      // 0x00895ea4    83ec14
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895ea7    8b4824
                         push             esi                                            // 0x00895eaa    56
                         cmp              ecx, 0x03                                      // 0x00895eab    83f903
                         push             edi                                            // 0x00895eae    57
                         {disp8} jne      _jmp_addr_0x00895f04                           // 0x00895eaf    7553
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895eb1    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x20]                    // 0x00895eb4    8b7c2420
                         xor.s            ecx, ecx                                       // 0x00895eb8    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x00895eba    8d542410
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895ebe    8b7004
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00895ec1    894c2410
                         push             edx                                            // 0x00895ec5    52
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x00895ec6    894c2418
                         push             0x1                                            // 0x00895eca    6a01
                         push             edi                                            // 0x00895ecc    57
                         {disp8} mov      dword ptr [esp + 0x24], ecx                    // 0x00895ecd    894c2424
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000001             // 0x00895ed1    c744241c01000000
                         {disp8} mov      dword ptr [esp + 0x20], esi                    // 0x00895ed9    89742420
                         call             _jmp_addr_0x00894490                           // 0x00895edd    e8aee5ffff
                         add              esp, 0x0c                                      // 0x00895ee2    83c40c
                         test             eax, eax                                       // 0x00895ee5    85c0
                         {disp8} je       _jmp_addr_0x00895f04                           // 0x00895ee7    741b
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x00895ee9    8d4c2408
                         {disp8} mov      dword ptr [esp + 0x08], 0x00000000             // 0x00895eed    c744240800000000
                         push             ecx                                            // 0x00895ef5    51
                         push             eax                                            // 0x00895ef6    50
                         push             edi                                            // 0x00895ef7    57
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00895ef8    89742418
                         call             _jmp_addr_0x00893410                           // 0x00895efc    e80fd5ffff
                         add              esp, 0x0c                                      // 0x00895f01    83c40c
_jmp_addr_0x00895f04:    pop              edi                                            // 0x00895f04    5f
                         pop              esi                                            // 0x00895f05    5e
                         add              esp, 0x14                                      // 0x00895f06    83c414
                         ret                                                             // 0x00895f09    c3
                         nop                                                             // 0x00895f0a    90
                         nop                                                             // 0x00895f0b    90
                         nop                                                             // 0x00895f0c    90
                         nop                                                             // 0x00895f0d    90
                         nop                                                             // 0x00895f0e    90
                         nop                                                             // 0x00895f0f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895f10    8b442408
                         sub              esp, 0x14                                      // 0x00895f14    83ec14
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895f17    8b4824
                         push             esi                                            // 0x00895f1a    56
                         cmp              ecx, 0x03                                      // 0x00895f1b    83f903
                         push             edi                                            // 0x00895f1e    57
                         {disp8} jne      _jmp_addr_0x00895f74                           // 0x00895f1f    7553
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895f21    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x20]                    // 0x00895f24    8b7c2420
                         xor.s            ecx, ecx                                       // 0x00895f28    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x00895f2a    8d542410
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895f2e    8b7004
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00895f31    894c2410
                         push             edx                                            // 0x00895f35    52
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x00895f36    894c2418
                         push             0x1                                            // 0x00895f3a    6a01
                         push             edi                                            // 0x00895f3c    57
                         {disp8} mov      dword ptr [esp + 0x24], ecx                    // 0x00895f3d    894c2424
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000001             // 0x00895f41    c744241c01000000
                         {disp8} mov      dword ptr [esp + 0x20], esi                    // 0x00895f49    89742420
                         call             _jmp_addr_0x00894490                           // 0x00895f4d    e83ee5ffff
                         add              esp, 0x0c                                      // 0x00895f52    83c40c
                         test             eax, eax                                       // 0x00895f55    85c0
                         {disp8} je       _jmp_addr_0x00895f74                           // 0x00895f57    741b
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x00895f59    8d4c2408
                         {disp8} mov      dword ptr [esp + 0x08], 0x00000000             // 0x00895f5d    c744240800000000
                         push             ecx                                            // 0x00895f65    51
                         push             eax                                            // 0x00895f66    50
                         push             edi                                            // 0x00895f67    57
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00895f68    89742418
                         call             _jmp_addr_0x00893410                           // 0x00895f6c    e89fd4ffff
                         add              esp, 0x0c                                      // 0x00895f71    83c40c
_jmp_addr_0x00895f74:    pop              edi                                            // 0x00895f74    5f
                         pop              esi                                            // 0x00895f75    5e
                         add              esp, 0x14                                      // 0x00895f76    83c414
                         ret                                                             // 0x00895f79    c3
                         nop                                                             // 0x00895f7a    90
                         nop                                                             // 0x00895f7b    90
                         nop                                                             // 0x00895f7c    90
                         nop                                                             // 0x00895f7d    90
                         nop                                                             // 0x00895f7e    90
                         nop                                                             // 0x00895f7f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895f80    8b442408
                         sub              esp, 0x14                                      // 0x00895f84    83ec14
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895f87    8b4824
                         push             esi                                            // 0x00895f8a    56
                         cmp              ecx, 0x03                                      // 0x00895f8b    83f903
                         push             edi                                            // 0x00895f8e    57
                         {disp8} jne      _jmp_addr_0x00895fe4                           // 0x00895f8f    7553
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00895f91    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x20]                    // 0x00895f94    8b7c2420
                         xor.s            ecx, ecx                                       // 0x00895f98    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x00895f9a    8d542410
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x00895f9e    8b7004
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00895fa1    894c2410
                         push             edx                                            // 0x00895fa5    52
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x00895fa6    894c2418
                         push             0x1                                            // 0x00895faa    6a01
                         push             edi                                            // 0x00895fac    57
                         {disp8} mov      dword ptr [esp + 0x24], ecx                    // 0x00895fad    894c2424
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000001             // 0x00895fb1    c744241c01000000
                         {disp8} mov      dword ptr [esp + 0x20], esi                    // 0x00895fb9    89742420
                         call             _jmp_addr_0x00894490                           // 0x00895fbd    e8cee4ffff
                         add              esp, 0x0c                                      // 0x00895fc2    83c40c
                         test             eax, eax                                       // 0x00895fc5    85c0
                         {disp8} je       _jmp_addr_0x00895fe4                           // 0x00895fc7    741b
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x00895fc9    8d4c2408
                         {disp8} mov      dword ptr [esp + 0x08], 0x00000000             // 0x00895fcd    c744240800000000
                         push             ecx                                            // 0x00895fd5    51
                         push             eax                                            // 0x00895fd6    50
                         push             edi                                            // 0x00895fd7    57
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00895fd8    89742418
                         call             _jmp_addr_0x00893410                           // 0x00895fdc    e82fd4ffff
                         add              esp, 0x0c                                      // 0x00895fe1    83c40c
_jmp_addr_0x00895fe4:    pop              edi                                            // 0x00895fe4    5f
                         pop              esi                                            // 0x00895fe5    5e
                         add              esp, 0x14                                      // 0x00895fe6    83c414
                         ret                                                             // 0x00895fe9    c3
                         nop                                                             // 0x00895fea    90
                         nop                                                             // 0x00895feb    90
                         nop                                                             // 0x00895fec    90
                         nop                                                             // 0x00895fed    90
                         nop                                                             // 0x00895fee    90
                         nop                                                             // 0x00895fef    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00895ff0    8b442408
                         sub              esp, 0x14                                      // 0x00895ff4    83ec14
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                    // 0x00895ff7    8b4824
                         push             esi                                            // 0x00895ffa    56
                         cmp              ecx, 0x03                                      // 0x00895ffb    83f903
                         push             edi                                            // 0x00895ffe    57
                         {disp8} jne      _jmp_addr_0x00896054                           // 0x00895fff    7553
                         {disp8} mov      eax, dword ptr [eax + 0x20]                    // 0x00896001    8b4020
                         {disp8} mov      edi, dword ptr [esp + 0x20]                    // 0x00896004    8b7c2420
                         xor.s            ecx, ecx                                       // 0x00896008    33c9
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x0089600a    8d542410
                         {disp8} mov      esi, dword ptr [eax + 0x04]                    // 0x0089600e    8b7004
                         {disp8} mov      dword ptr [esp + 0x10], ecx                    // 0x00896011    894c2410
                         push             edx                                            // 0x00896015    52
                         {disp8} mov      dword ptr [esp + 0x18], ecx                    // 0x00896016    894c2418
                         push             0x1                                            // 0x0089601a    6a01
                         push             edi                                            // 0x0089601c    57
                         {disp8} mov      dword ptr [esp + 0x24], ecx                    // 0x0089601d    894c2424
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000001             // 0x00896021    c744241c01000000
                         {disp8} mov      dword ptr [esp + 0x20], esi                    // 0x00896029    89742420
                         call             _jmp_addr_0x00894490                           // 0x0089602d    e85ee4ffff
                         add              esp, 0x0c                                      // 0x00896032    83c40c
                         test             eax, eax                                       // 0x00896035    85c0
                         {disp8} je       _jmp_addr_0x00896054                           // 0x00896037    741b
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x00896039    8d4c2408
                         {disp8} mov      dword ptr [esp + 0x08], 0x00000000             // 0x0089603d    c744240800000000
                         push             ecx                                            // 0x00896045    51
                         push             eax                                            // 0x00896046    50
                         push             edi                                            // 0x00896047    57
                         {disp8} mov      dword ptr [esp + 0x18], esi                    // 0x00896048    89742418
                         call             _jmp_addr_0x00893410                           // 0x0089604c    e8bfd3ffff
                         add              esp, 0x0c                                      // 0x00896051    83c40c
_jmp_addr_0x00896054:    pop              edi                                            // 0x00896054    5f
                         pop              esi                                            // 0x00896055    5e
                         add              esp, 0x14                                      // 0x00896056    83c414
                         ret                                                             // 0x00896059    c3
                         nop                                                             // 0x0089605a    90
                         nop                                                             // 0x0089605b    90
                         nop                                                             // 0x0089605c    90
                         nop                                                             // 0x0089605d    90
                         nop                                                             // 0x0089605e    90
                         nop                                                             // 0x0089605f    90
                         ret                                                             // 0x00896060    c3
                         nop                                                             // 0x00896061    90
                         nop                                                             // 0x00896062    90
                         nop                                                             // 0x00896063    90
                         nop                                                             // 0x00896064    90
                         nop                                                             // 0x00896065    90
                         nop                                                             // 0x00896066    90
                         nop                                                             // 0x00896067    90
                         nop                                                             // 0x00896068    90
                         nop                                                             // 0x00896069    90
                         nop                                                             // 0x0089606a    90
                         nop                                                             // 0x0089606b    90
                         nop                                                             // 0x0089606c    90
                         nop                                                             // 0x0089606d    90
                         nop                                                             // 0x0089606e    90
                         nop                                                             // 0x0089606f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00896070    8b442404
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                    // 0x00896074    8b4804
                         test             ecx, ecx                                       // 0x00896077    85c9
                         {disp8} je       _jmp_addr_0x00896086                           // 0x00896079    740b
                         push             0x1                                            // 0x0089607b    6a01
                         push             eax                                            // 0x0089607d    50
                         call             _jmp_addr_0x00893fd0                           // 0x0089607e    e84ddfffff
                         add              esp, 0x08                                      // 0x00896083    83c408
_jmp_addr_0x00896086:    ret                                                             // 0x00896086    c3
                         nop                                                             // 0x00896087    90
                         nop                                                             // 0x00896088    90
                         nop                                                             // 0x00896089    90
                         nop                                                             // 0x0089608a    90
                         nop                                                             // 0x0089608b    90
                         nop                                                             // 0x0089608c    90
                         nop                                                             // 0x0089608d    90
                         nop                                                             // 0x0089608e    90
                         nop                                                             // 0x0089608f    90
_jmp_addr_0x00896090:    push             ebx                                            // 0x00896090    53
                         push             esi                                            // 0x00896091    56
                         push             edi                                            // 0x00896092    57
                         push             0x000000a0                                     // 0x00896093    68a0000000
                         call             _malloc                                        // 0x00896098    e8af05f3ff
                         mov.s            ebx, eax                                       // 0x0089609d    8bd8
                         push             0x008862b0                                     // 0x0089609f    68b0628800
                         push             0x40                                           // 0x008960a4    6a40
                         push             0x4                                            // 0x008960a6    6a04
                         mov              dword ptr [ebx], 0x00000000                    // 0x008960a8    c70300000000
                         call             _jmp_addr_0x00887d90                           // 0x008960ae    e8dd1cffff
                         push             0x00886a40                                     // 0x008960b3    68406a8800
                         push             0x00886a10                                     // 0x008960b8    68106a8800
                         push             0x00886990                                     // 0x008960bd    6890698800
                         push             0x4                                            // 0x008960c2    6a04
                         push             0x000001f4                                     // 0x008960c4    68f4010000
                         push             0x4                                            // 0x008960c9    6a04
                         {disp8} mov      dword ptr [ebx + 0x04], eax                    // 0x008960cb    894304
                         call             _jmp_addr_0x0088fa60                           // 0x008960ce    e88d99ffff
                         {disp32} mov     dword ptr [ebx + 0x00000094], eax              // 0x008960d3    898394000000
                         {disp8} mov      eax, dword ptr [esp + 0x44]                    // 0x008960d9    8b442444
                         {disp8} mov      dword ptr [ebx + 0x6c], eax                    // 0x008960dd    89436c
                         {disp32} lea     esi, dword ptr [eax * 0x8 + 0x00000000]        // 0x008960e0    8d34c500000000
                         sub.s            esi, eax                                       // 0x008960e7    2bf0
                         shl              esi, 2                                         // 0x008960e9    c1e602
                         push             esi                                            // 0x008960ec    56
                         call             _malloc                                        // 0x008960ed    e85a05f3ff
                         mov.s            ecx, esi                                       // 0x008960f2    8bce
                         mov.s            edi, eax                                       // 0x008960f4    8bf8
                         mov.s            edx, ecx                                       // 0x008960f6    8bd1
                         xor.s            eax, eax                                       // 0x008960f8    33c0
                         shr              ecx, 2                                         // 0x008960fa    c1e902
                         {disp8} mov      dword ptr [ebx + 0x08], edi                    // 0x008960fd    897b08
                         add              esp, 0x2c                                      // 0x00896100    83c42c
                         rep stosd                                                       // 0x00896103    f3ab
                         mov.s            ecx, edx                                       // 0x00896105    8bca
                         {disp8} lea      edx, dword ptr [ebx + 0x0c]                    // 0x00896107    8d530c
                         and              ecx, 0x03                                      // 0x0089610a    83e103
                         rep stosb                                                       // 0x0089610d    f3aa
                         {disp8} mov      edi, dword ptr [esp + 0x10]                    // 0x0089610f    8b7c2410
                         or               ecx, 0xffffffff                                // 0x00896113    83c9ff
                         xor.s            eax, eax                                       // 0x00896116    33c0
                         repne scasb                                                     // 0x00896118    f2ae
                         not              ecx                                            // 0x0089611a    f7d1
                         sub.s            edi, ecx                                       // 0x0089611c    2bf9
                         mov.s            eax, ecx                                       // 0x0089611e    8bc1
                         mov.s            esi, edi                                       // 0x00896120    8bf7
                         mov.s            edi, edx                                       // 0x00896122    8bfa
                         {disp8} lea      edx, dword ptr [ebx + 0x2c]                    // 0x00896124    8d532c
                         shr              ecx, 2                                         // 0x00896127    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0089612a    f3a5
                         mov.s            ecx, eax                                       // 0x0089612c    8bc8
                         xor.s            eax, eax                                       // 0x0089612e    33c0
                         and              ecx, 0x03                                      // 0x00896130    83e103
                         rep movsb                                                       // 0x00896133    f3a4
                         {disp8} mov      edi, dword ptr [esp + 0x18]                    // 0x00896135    8b7c2418
                         or               ecx, 0xffffffff                                // 0x00896139    83c9ff
                         repne scasb                                                     // 0x0089613c    f2ae
                         not              ecx                                            // 0x0089613e    f7d1
                         sub.s            edi, ecx                                       // 0x00896140    2bf9
                         mov.s            eax, ecx                                       // 0x00896142    8bc1
                         mov.s            esi, edi                                       // 0x00896144    8bf7
                         mov.s            edi, edx                                       // 0x00896146    8bfa
                         {disp8} lea      edx, dword ptr [ebx + 0x4c]                    // 0x00896148    8d534c
                         shr              ecx, 2                                         // 0x0089614b    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0089614e    f3a5
                         mov.s            ecx, eax                                       // 0x00896150    8bc8
                         xor.s            eax, eax                                       // 0x00896152    33c0
                         and              ecx, 0x03                                      // 0x00896154    83e103
                         rep movsb                                                       // 0x00896157    f3a4
                         {disp8} mov      edi, dword ptr [esp + 0x14]                    // 0x00896159    8b7c2414
                         or               ecx, 0xffffffff                                // 0x0089615d    83c9ff
                         repne scasb                                                     // 0x00896160    f2ae
                         not              ecx                                            // 0x00896162    f7d1
                         sub.s            edi, ecx                                       // 0x00896164    2bf9
                         mov.s            eax, ecx                                       // 0x00896166    8bc1
                         mov.s            esi, edi                                       // 0x00896168    8bf7
                         mov.s            edi, edx                                       // 0x0089616a    8bfa
                         shr              ecx, 2                                         // 0x0089616c    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                   // 0x0089616f    f3a5
                         mov.s            ecx, eax                                       // 0x00896171    8bc8
                         {disp8} mov      edx, dword ptr [esp + 0x28]                    // 0x00896173    8b542428
                         and              ecx, 0x03                                      // 0x00896177    83e103
                         rep movsb                                                       // 0x0089617a    f3a4
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                    // 0x0089617c    8b4c2420
                         {disp8} mov      dword ptr [ebx + 0x7c], edx                    // 0x00896180    89537c
                         {disp8} mov      dword ptr [ebx + 0x78], ecx                    // 0x00896183    894b78
                         {disp32} mov     dword ptr [ebx + 0x00000080], 0x00c58370       // 0x00896186    c783800000007083c500
                         {disp32} mov     dword ptr [ebx + 0x00000098], 0x00000000       // 0x00896190    c7839800000000000000
                         call             _jmp_addr_0x0088a8f0                           // 0x0089619a    e85147ffff
                         pop              edi                                            // 0x0089619f    5f
                         mov.s            eax, ebx                                       // 0x008961a0    8bc3
                         pop              esi                                            // 0x008961a2    5e
                         pop              ebx                                            // 0x008961a3    5b
                         ret                                                             // 0x008961a4    c3
                         nop                                                             // 0x008961a5    90
                         nop                                                             // 0x008961a6    90
                         nop                                                             // 0x008961a7    90
                         nop                                                             // 0x008961a8    90
                         nop                                                             // 0x008961a9    90
                         nop                                                             // 0x008961aa    90
                         nop                                                             // 0x008961ab    90
                         nop                                                             // 0x008961ac    90
                         nop                                                             // 0x008961ad    90
                         nop                                                             // 0x008961ae    90
                         nop                                                             // 0x008961af    90
_jmp_addr_0x008961b0:    push             esi                                            // 0x008961b0    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x008961b1    8b742408
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x008961b5    8b4604
                         push             eax                                            // 0x008961b8    50
                         call             _jmp_addr_0x00887de0                           // 0x008961b9    e8221cffff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000094]              // 0x008961be    8b8e94000000
                         push             ecx                                            // 0x008961c4    51
                         call             _jmp_addr_0x0088fad0                           // 0x008961c5    e80699ffff
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x008961ca    8b5608
                         push             edx                                            // 0x008961cd    52
                         call             _free                                          // 0x008961ce    e8b305f3ff
                         push             esi                                            // 0x008961d3    56
                         call             _free                                          // 0x008961d4    e8ad05f3ff
                         add              esp, 0x10                                      // 0x008961d9    83c410
                         call             _jmp_addr_0x0088a910                           // 0x008961dc    e82f47ffff
                         pop              esi                                            // 0x008961e1    5e
                         ret                                                             // 0x008961e2    c3
                         nop                                                             // 0x008961e3    90
                         nop                                                             // 0x008961e4    90
                         nop                                                             // 0x008961e5    90
                         nop                                                             // 0x008961e6    90
                         nop                                                             // 0x008961e7    90
                         nop                                                             // 0x008961e8    90
                         nop                                                             // 0x008961e9    90
                         nop                                                             // 0x008961ea    90
                         nop                                                             // 0x008961eb    90
                         nop                                                             // 0x008961ec    90
                         nop                                                             // 0x008961ed    90
                         nop                                                             // 0x008961ee    90
                         nop                                                             // 0x008961ef    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x008961f0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                    // 0x008961f4    8b4c2404
                         push             0x5                                            // 0x008961f8    6a05
                         push             0x0                                            // 0x008961fa    6a00
                         push             eax                                            // 0x008961fc    50
                         push             ecx                                            // 0x008961fd    51
                         call             _jmp_addr_0x00896210                           // 0x008961fe    e80d000000
                         add              esp, 0x10                                      // 0x00896203    83c410
                         ret                                                             // 0x00896206    c3
                         nop                                                             // 0x00896207    90
                         nop                                                             // 0x00896208    90
                         nop                                                             // 0x00896209    90
                         nop                                                             // 0x0089620a    90
                         nop                                                             // 0x0089620b    90
                         nop                                                             // 0x0089620c    90
                         nop                                                             // 0x0089620d    90
                         nop                                                             // 0x0089620e    90
                         nop                                                             // 0x0089620f    90
_jmp_addr_0x00896210:    push             esi                                            // 0x00896210    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x00896211    8b742408
                         push             edi                                            // 0x00896215    57
                         cmp              dword ptr [esi], 0x00                          // 0x00896216    833e00
                         {disp8} je       _jmp_addr_0x00896223                           // 0x00896219    7408
                         pop              edi                                            // 0x0089621b    5f
                         mov              eax, 0x00000004                                // 0x0089621c    b804000000
                         pop              esi                                            // 0x00896221    5e
                         ret                                                             // 0x00896222    c3
_jmp_addr_0x00896223:    {disp8} mov      edi, dword ptr [esp + 0x18]                    // 0x00896223    8b7c2418
                         push             esi                                            // 0x00896227    56
                         {disp32} mov     dword ptr [esi + 0x00000090], edi              // 0x00896228    89be90000000
                         call             _jmp_addr_0x00896310                           // 0x0089622e    e8dd000000
                         add              esp, 0x04                                      // 0x00896233    83c404
                         test             eax, eax                                       // 0x00896236    85c0
                         {disp8} jne      _jmp_addr_0x00896293                           // 0x00896238    7559
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x0089623a    8b442414
                         push             eax                                            // 0x0089623e    50
                         push             esi                                            // 0x0089623f    56
                         call             _jmp_addr_0x008963c0                           // 0x00896240    e87b010000
                         add              esp, 0x08                                      // 0x00896245    83c408
                         test             eax, eax                                       // 0x00896248    85c0
                         {disp8} jne      _jmp_addr_0x00896293                           // 0x0089624a    7547
                         cmp              edi, 0x06                                      // 0x0089624c    83ff06
                         {disp8} je       _jmp_addr_0x00896263                           // 0x0089624f    7412
                         cmp              edi, 0x07                                      // 0x00896251    83ff07
                         {disp8} je       _jmp_addr_0x00896263                           // 0x00896254    740d
                         push             esi                                            // 0x00896256    56
                         call             _jmp_addr_0x008962a0                           // 0x00896257    e844000000
                         add              esp, 0x04                                      // 0x0089625c    83c404
                         test             eax, eax                                       // 0x0089625f    85c0
                         {disp8} jne      _jmp_addr_0x00896293                           // 0x00896261    7530
_jmp_addr_0x00896263:    push             esi                                            // 0x00896263    56
                         {disp8} mov      dword ptr [esi + 0x70], 0x00000000             // 0x00896264    c7467000000000
                         {disp8} mov      dword ptr [esi + 0x74], 0x00000000             // 0x0089626b    c7467400000000
                         call             _jmp_addr_0x008974c0                           // 0x00896272    e849120000
                         {disp32} mov     dword ptr [esi + 0x00000098], eax              // 0x00896277    898698000000
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x0089627d    8b442414
                         add              esp, 0x04                                      // 0x00896281    83c404
                         test             eax, eax                                       // 0x00896284    85c0
                         {disp8} jne      _jmp_addr_0x00896291                           // 0x00896286    7509
                         push             esi                                            // 0x00896288    56
                         call             _jmp_addr_0x00896580                           // 0x00896289    e8f2020000
                         add              esp, 0x04                                      // 0x0089628e    83c404
_jmp_addr_0x00896291:    xor.s            eax, eax                                       // 0x00896291    33c0
_jmp_addr_0x00896293:    pop              edi                                            // 0x00896293    5f
                         pop              esi                                            // 0x00896294    5e
                         ret                                                             // 0x00896295    c3
                         nop                                                             // 0x00896296    90
                         nop                                                             // 0x00896297    90
                         nop                                                             // 0x00896298    90
                         nop                                                             // 0x00896299    90
                         nop                                                             // 0x0089629a    90
                         nop                                                             // 0x0089629b    90
                         nop                                                             // 0x0089629c    90
                         nop                                                             // 0x0089629d    90
                         nop                                                             // 0x0089629e    90
                         nop                                                             // 0x0089629f    90
_jmp_addr_0x008962a0:    push             ebx                                            // 0x008962a0    53
                         push             ebp                                            // 0x008962a1    55
                         push             esi                                            // 0x008962a2    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                    // 0x008962a3    8b742410
                         xor.s            ebp, ebp                                       // 0x008962a7    33ed
                         xor.s            ebx, ebx                                       // 0x008962a9    33db
                         {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x008962ab    8b466c
                         push             edi                                            // 0x008962ae    57
                         cmp.s            eax, ebp                                       // 0x008962af    3bc5
                         {disp8} jle      _jmp_addr_0x00896301                           // 0x008962b1    7e4e
                         xor.s            edi, edi                                       // 0x008962b3    33ff
_jmp_addr_0x008962b5:    push             0x11                                           // 0x008962b5    6a11
                         push             0x2                                            // 0x008962b7    6a02
                         push             0x2                                            // 0x008962b9    6a02
                         call             _jmp_WSOCK32_DLL__Ordinal_23                   // 0x008962bb    e8f4ed0000
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x008962c0    8b4e08
                         mov              dword ptr [ecx + edi * 0x1], eax               // 0x008962c3    890439
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x008962c6    8b5608
                         mov              ecx, dword ptr [edx + edi * 0x1]               // 0x008962c9    8b0c3a
                         lea              eax, dword ptr [edx + edi * 0x1]               // 0x008962cc    8d043a
                         cmp              ecx, -0x01                                     // 0x008962cf    83f9ff
                         {disp8} je       _jmp_addr_0x008962f0                           // 0x008962d2    741c
                         {disp8} mov      dword ptr [eax + 0x04], ebp                    // 0x008962d4    896804
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x008962d7    8b4608
                         inc              ebx                                            // 0x008962da    43
                         {disp8} mov      dword ptr [eax + edi * 0x1 + 0x08], ebp        // 0x008962db    896c3808
                         {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x008962df    8b466c
                         add              edi, 0x1c                                      // 0x008962e2    83c71c
                         cmp.s            ebx, eax                                       // 0x008962e5    3bd8
                         {disp8} jl       _jmp_addr_0x008962b5                           // 0x008962e7    7ccc
                         pop              edi                                            // 0x008962e9    5f
                         pop              esi                                            // 0x008962ea    5e
                         pop              ebp                                            // 0x008962eb    5d
                         xor.s            eax, eax                                       // 0x008962ec    33c0
                         pop              ebx                                            // 0x008962ee    5b
                         ret                                                             // 0x008962ef    c3
_jmp_addr_0x008962f0:    cmp.s            ebx, ebp                                       // 0x008962f0    3bdd
                         {disp8} jne      _jmp_addr_0x008962fe                           // 0x008962f2    750a
                         pop              edi                                            // 0x008962f4    5f
                         pop              esi                                            // 0x008962f5    5e
                         pop              ebp                                            // 0x008962f6    5d
                         mov              eax, 0x00000001                                // 0x008962f7    b801000000
                         pop              ebx                                            // 0x008962fc    5b
                         ret                                                             // 0x008962fd    c3
_jmp_addr_0x008962fe:    {disp8} mov      dword ptr [esi + 0x6c], ebx                    // 0x008962fe    895e6c
_jmp_addr_0x00896301:    pop              edi                                            // 0x00896301    5f
                         pop              esi                                            // 0x00896302    5e
                         pop              ebp                                            // 0x00896303    5d
                         xor.s            eax, eax                                       // 0x00896304    33c0
                         pop              ebx                                            // 0x00896306    5b
                         ret                                                             // 0x00896307    c3
                         nop                                                             // 0x00896308    90
                         nop                                                             // 0x00896309    90
                         nop                                                             // 0x0089630a    90
                         nop                                                             // 0x0089630b    90
                         nop                                                             // 0x0089630c    90
                         nop                                                             // 0x0089630d    90
                         nop                                                             // 0x0089630e    90
                         nop                                                             // 0x0089630f    90
_jmp_addr_0x00896310:    sub              esp, 0x10                                      // 0x00896310    83ec10
                         push             esi                                            // 0x00896313    56
                         push             0x000070e4                                     // 0x00896314    68e4700000
                         {disp8} mov      word ptr [esp + 0x08], 0x0002                  // 0x00896319    66c74424080200
                         call             _jmp_WSOCK32_DLL__Ordinal_9                    // 0x00896320    e8aded0000
                         push             0x00c3aca0                                     // 0x00896325    68a0acc300
                         {disp8} mov      word ptr [esp + 0x0a], ax                      // 0x0089632a    668944240a
                         call             _jmp_WSOCK32_DLL__Ordinal_10                   // 0x0089632f    e84aed0000
                         cmp              eax, -0x01                                     // 0x00896334    83f8ff
                         {disp8} mov      dword ptr [esp + 0x08], eax                    // 0x00896337    89442408
                         {disp8} jne      _jmp_addr_0x00896360                           // 0x0089633b    7523
                         push             0x00c3aca0                                     // 0x0089633d    68a0acc300
                         call             _jmp_WSOCK32_DLL__Ordinal_52                   // 0x00896342    e885ed0000
                         test             eax, eax                                       // 0x00896347    85c0
                         {disp8} jne      _jmp_addr_0x00896355                           // 0x00896349    750a
                         mov              eax, 0x00000002                                // 0x0089634b    b802000000
                         pop              esi                                            // 0x00896350    5e
                         add              esp, 0x10                                      // 0x00896351    83c410
                         ret                                                             // 0x00896354    c3
_jmp_addr_0x00896355:    {disp8} mov      eax, dword ptr [eax + 0x0c]                    // 0x00896355    8b400c
                         mov              ecx, dword ptr [eax]                           // 0x00896358    8b08
                         mov              edx, dword ptr [ecx]                           // 0x0089635a    8b11
                         {disp8} mov      dword ptr [esp + 0x08], edx                    // 0x0089635c    89542408
_jmp_addr_0x00896360:    push             0x6                                            // 0x00896360    6a06
                         push             0x1                                            // 0x00896362    6a01
                         push             0x2                                            // 0x00896364    6a02
                         call             _jmp_WSOCK32_DLL__Ordinal_23                   // 0x00896366    e849ed0000
                         {disp8} mov      esi, dword ptr [esp + 0x18]                    // 0x0089636b    8b742418
                         cmp              eax, -0x01                                     // 0x0089636f    83f8ff
                         {disp32} mov     dword ptr [esi + 0x00000088], eax              // 0x00896372    898688000000
                         {disp8} jne      _jmp_addr_0x00896384                           // 0x00896378    750a
                         mov              eax, 0x00000001                                // 0x0089637a    b801000000
                         pop              esi                                            // 0x0089637f    5e
                         add              esp, 0x10                                      // 0x00896380    83c410
                         ret                                                             // 0x00896383    c3
_jmp_addr_0x00896384:    {disp8} lea      ecx, dword ptr [esp + 0x04]                    // 0x00896384    8d4c2404
                         push             0x10                                           // 0x00896388    6a10
                         push             ecx                                            // 0x0089638a    51
                         push             eax                                            // 0x0089638b    50
                         call             _jmp_WSOCK32_DLL__Ordinal_4                    // 0x0089638c    e84ded0000
                         test             eax, eax                                       // 0x00896391    85c0
                         {disp8} je       _jmp_addr_0x008963ab                           // 0x00896393    7416
                         {disp32} mov     edx, dword ptr [esi + 0x00000088]              // 0x00896395    8b9688000000
                         push             edx                                            // 0x0089639b    52
                         call             _jmp_WSOCK32_DLL__Ordinal_3                    // 0x0089639c    e825ed0000
                         mov              eax, 0x00000003                                // 0x008963a1    b803000000
                         pop              esi                                            // 0x008963a6    5e
                         add              esp, 0x10                                      // 0x008963a7    83c410
                         ret                                                             // 0x008963aa    c3
_jmp_addr_0x008963ab:    xor.s            eax, eax                                       // 0x008963ab    33c0
                         pop              esi                                            // 0x008963ad    5e
                         add              esp, 0x10                                      // 0x008963ae    83c410
                         ret                                                             // 0x008963b1    c3
                         nop                                                             // 0x008963b2    90
                         nop                                                             // 0x008963b3    90
                         nop                                                             // 0x008963b4    90
                         nop                                                             // 0x008963b5    90
                         nop                                                             // 0x008963b6    90
                         nop                                                             // 0x008963b7    90
                         nop                                                             // 0x008963b8    90
                         nop                                                             // 0x008963b9    90
                         nop                                                             // 0x008963ba    90
                         nop                                                             // 0x008963bb    90
                         nop                                                             // 0x008963bc    90
                         nop                                                             // 0x008963bd    90
                         nop                                                             // 0x008963be    90
                         nop                                                             // 0x008963bf    90
_jmp_addr_0x008963c0:    sub              esp, 0x00000140                                // 0x008963c0    81ec40010000
                         {disp8} lea      eax, dword ptr [esp + 0x00]                    // 0x008963c6    8d442400
                         push             esi                                            // 0x008963ca    56
                         {disp32} mov     esi, dword ptr [esp + 0x00000148]              // 0x008963cb    8bb42448010000
                         push             edi                                            // 0x008963d2    57
                         push             0x0                                            // 0x008963d3    6a00
                         {disp32} mov     ecx, dword ptr [esi + 0x00000088]              // 0x008963d5    8b8e88000000
                         push             0x000000ff                                     // 0x008963db    68ff000000
                         push             eax                                            // 0x008963e0    50
                         push             ecx                                            // 0x008963e1    51
                         call             _jmp_WSOCK32_DLL__Ordinal_16                   // 0x008963e2    e815ed0000
                         cmp              eax, -0x01                                     // 0x008963e7    83f8ff
                         {disp32} je      _jmp_addr_0x00896546                           // 0x008963ea    0f8456010000
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x008963f0    8d542408
                         push             0x00c3add8                                     // 0x008963f4    68d8adc300
                         push             edx                                            // 0x008963f9    52
                         {disp8} mov      byte ptr [esp + eax * 0x1 + 0x10], 0x00        // 0x008963fa    c644041000
                         call             _strstr                                        // 0x008963ff    e85c31f3ff
                         mov.s            edi, eax                                       // 0x00896404    8bf8
                         add              esp, 0x08                                      // 0x00896406    83c408
                         test             edi, edi                                       // 0x00896409    85ff
                         {disp8} jne      _jmp_addr_0x0089641b                           // 0x0089640b    750e
                         pop              edi                                            // 0x0089640d    5f
                         mov              eax, 0x00000005                                // 0x0089640e    b805000000
                         pop              esi                                            // 0x00896413    5e
                         add              esp, 0x00000140                                // 0x00896414    81c440010000
                         ret                                                             // 0x0089641a    c3
_jmp_addr_0x0089641b:    add              edi, 0x08                                      // 0x0089641b    83c708
                         push             0x6                                            // 0x0089641e    6a06
                         push             edi                                            // 0x00896420    57
                         {disp8} lea      eax, dword ptr [esi + 0x2c]                    // 0x00896421    8d462c
                         push             0x6                                            // 0x00896424    6a06
                         push             eax                                            // 0x00896426    50
                         call             _jmp_addr_0x0088d150                           // 0x00896427    e8246dffff
                         {disp32} lea     ecx, dword ptr [esp + 0x00000118]              // 0x0089642c    8d8c2418010000
                         push             ecx                                            // 0x00896433    51
                         push             0x6                                            // 0x00896434    6a06
                         push             edi                                            // 0x00896436    57
                         call             _jmp_addr_0x0088d070                           // 0x00896437    e8346cffff
                         {disp32} lea     edx, dword ptr [esp + 0x00000124]              // 0x0089643c    8d942424010000
                         {disp8} lea      eax, dword ptr [esi + 0x4c]                    // 0x00896443    8d464c
                         push             edx                                            // 0x00896446    52
                         push             0x00c3add4                                     // 0x00896447    68d4adc300
                         push             eax                                            // 0x0089644c    50
                         {disp8} lea      ecx, dword ptr [esp + 0x30]                    // 0x0089644d    8d4c2430
                         push             0x00c3ad90                                     // 0x00896451    6890adc300
                         push             ecx                                            // 0x00896456    51
                         call             _sprintf                                       // 0x00896457    e876f3f2ff
                         {disp8} lea      edi, dword ptr [esp + 0x38]                    // 0x0089645c    8d7c2438
                         or               ecx, 0xffffffff                                // 0x00896460    83c9ff
                         xor.s            eax, eax                                       // 0x00896463    33c0
                         add              esp, 0x30                                      // 0x00896465    83c430
                         repne scasb                                                     // 0x00896468    f2ae
                         {disp32} mov     eax, dword ptr [esi + 0x00000088]              // 0x0089646a    8b8688000000
                         push             0x0                                            // 0x00896470    6a00
                         not              ecx                                            // 0x00896472    f7d1
                         dec              ecx                                            // 0x00896474    49
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                    // 0x00896475    8d54240c
                         push             ecx                                            // 0x00896479    51
                         push             edx                                            // 0x0089647a    52
                         push             eax                                            // 0x0089647b    50
                         call             _jmp_WSOCK32_DLL__Ordinal_19                   // 0x0089647c    e869ec0000
                         cmp              eax, -0x01                                     // 0x00896481    83f8ff
                         {disp32} je      _jmp_addr_0x00896546                           // 0x00896484    0f84bc000000
                         test             eax, eax                                       // 0x0089648a    85c0
                         {disp32} je      _jmp_addr_0x00896546                           // 0x0089648c    0f84b4000000
                         {disp32} mov     eax, dword ptr [esi + 0x00000090]              // 0x00896492    8b8690000000
                         cmp              eax, 0x06                                      // 0x00896498    83f806
                         {disp8} jne      _jmp_addr_0x008964ae                           // 0x0089649b    7511
                         mov              eax, 0x00c3ad88                                // 0x0089649d    b888adc300
                         {disp32} mov     dword ptr [esi + 0x0000009c], 0x00000000       // 0x008964a2    c7869c00000000000000
                         {disp8} jmp      _jmp_addr_0x008964c9                           // 0x008964ac    eb1b
_jmp_addr_0x008964ae:    cmp              eax, 0x07                                      // 0x008964ae    83f807
                         {disp8} jne      _jmp_addr_0x008964c4                           // 0x008964b1    7511
                         mov              eax, 0x00c3ad80                                // 0x008964b3    b880adc300
                         {disp32} mov     dword ptr [esi + 0x0000009c], 0x00000000       // 0x008964b8    c7869c00000000000000
                         {disp8} jmp      _jmp_addr_0x008964c9                           // 0x008964c2    eb05
_jmp_addr_0x008964c4:    mov              eax, 0x00c3ad7c                                // 0x008964c4    b87cadc300
_jmp_addr_0x008964c9:    {disp32} mov     ecx, dword ptr [esp + 0x00000150]              // 0x008964c9    8b8c2450010000
                         test             ecx, ecx                                       // 0x008964d0    85c9
                         {disp8} je       _jmp_addr_0x008964ee                           // 0x008964d2    741a
                         push             ecx                                            // 0x008964d4    51
                         {disp8} lea      ecx, dword ptr [esi + 0x0c]                    // 0x008964d5    8d4e0c
                         push             ecx                                            // 0x008964d8    51
                         push             eax                                            // 0x008964d9    50
                         {disp8} lea      edx, dword ptr [esp + 0x14]                    // 0x008964da    8d542414
                         push             0x00c3ad54                                     // 0x008964de    6854adc300
                         push             edx                                            // 0x008964e3    52
                         call             _sprintf                                       // 0x008964e4    e8e9f2f2ff
                         add              esp, 0x14                                      // 0x008964e9    83c414
                         {disp8} jmp      _jmp_addr_0x00896505                           // 0x008964ec    eb17
_jmp_addr_0x008964ee:    {disp8} lea      ecx, dword ptr [esi + 0x0c]                    // 0x008964ee    8d4e0c
                         {disp8} lea      edx, dword ptr [esp + 0x08]                    // 0x008964f1    8d542408
                         push             ecx                                            // 0x008964f5    51
                         push             eax                                            // 0x008964f6    50
                         push             0x00c3ad38                                     // 0x008964f7    6838adc300
                         push             edx                                            // 0x008964fc    52
                         call             _sprintf                                       // 0x008964fd    e8d0f2f2ff
                         add              esp, 0x10                                      // 0x00896502    83c410
_jmp_addr_0x00896505:    {disp8} lea      edi, dword ptr [esp + 0x08]                    // 0x00896505    8d7c2408
                         or               ecx, 0xffffffff                                // 0x00896509    83c9ff
                         xor.s            eax, eax                                       // 0x0089650c    33c0
                         push             0x0                                            // 0x0089650e    6a00
                         repne scasb                                                     // 0x00896510    f2ae
                         not              ecx                                            // 0x00896512    f7d1
                         dec              ecx                                            // 0x00896514    49
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                    // 0x00896515    8d44240c
                         push             ecx                                            // 0x00896519    51
                         {disp32} mov     ecx, dword ptr [esi + 0x00000088]              // 0x0089651a    8b8e88000000
                         push             eax                                            // 0x00896520    50
                         push             ecx                                            // 0x00896521    51
                         call             _jmp_WSOCK32_DLL__Ordinal_19                   // 0x00896522    e8c3eb0000
                         cmp              eax, -0x01                                     // 0x00896527    83f8ff
                         {disp8} je       _jmp_addr_0x00896546                           // 0x0089652a    741a
                         test             eax, eax                                       // 0x0089652c    85c0
                         {disp8} je       _jmp_addr_0x00896546                           // 0x0089652e    7416
                         push             0x1                                            // 0x00896530    6a01
                         push             esi                                            // 0x00896532    56
                         call             _jmp_addr_0x00896560                           // 0x00896533    e828000000
                         add              esp, 0x08                                      // 0x00896538    83c408
                         xor.s            eax, eax                                       // 0x0089653b    33c0
                         pop              edi                                            // 0x0089653d    5f
                         pop              esi                                            // 0x0089653e    5e
                         add              esp, 0x00000140                                // 0x0089653f    81c440010000
                         ret                                                             // 0x00896545    c3
_jmp_addr_0x00896546:    pop              edi                                            // 0x00896546    5f
                         mov              eax, 0x00000003                                // 0x00896547    b803000000
                         pop              esi                                            // 0x0089654c    5e
                         add              esp, 0x00000140                                // 0x0089654d    81c440010000
                         ret                                                             // 0x00896553    c3
                         nop                                                             // 0x00896554    90
                         nop                                                             // 0x00896555    90
                         nop                                                             // 0x00896556    90
                         nop                                                             // 0x00896557    90
                         nop                                                             // 0x00896558    90
                         nop                                                             // 0x00896559    90
                         nop                                                             // 0x0089655a    90
                         nop                                                             // 0x0089655b    90
                         nop                                                             // 0x0089655c    90
                         nop                                                             // 0x0089655d    90
                         nop                                                             // 0x0089655e    90
                         nop                                                             // 0x0089655f    90
_jmp_addr_0x00896560:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00896560    8b442404
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x00896564    8b4c2408
                         push             0x0                                            // 0x00896568    6a00
                         push             0x0                                            // 0x0089656a    6a00
                         {disp8} mov      edx, dword ptr [eax + 0x7c]                    // 0x0089656c    8b507c
                         mov              dword ptr [eax], ecx                           // 0x0089656f    8908
                         push             edx                                            // 0x00896571    52
                         push             0x1                                            // 0x00896572    6a01
                         push             eax                                            // 0x00896574    50
                         call             dword ptr [eax + 0x78]                         // 0x00896575    ff5078
                         add              esp, 0x14                                      // 0x00896578    83c414
                         ret                                                             // 0x0089657b    c3
                         nop                                                             // 0x0089657c    90
                         nop                                                             // 0x0089657d    90
                         nop                                                             // 0x0089657e    90
                         nop                                                             // 0x0089657f    90
_jmp_addr_0x00896580:    push             esi                                            // 0x00896580    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x00896581    8b742408
                         cmp              dword ptr [esi], 0x00                          // 0x00896585    833e00
                         {disp8} je       _jmp_addr_0x008965a0                           // 0x00896588    7416
_jmp_addr_0x0089658a:    push             esi                                            // 0x0089658a    56
                         call             _jmp_addr_0x00896a30                           // 0x0089658b    e8a0040000
                         push             0xa                                            // 0x00896590    6a0a
                         call             _jmp_addr_0x0088a8e0                           // 0x00896592    e84943ffff
                         mov              eax, dword ptr [esi]                           // 0x00896597    8b06
                         add              esp, 0x08                                      // 0x00896599    83c408
                         test             eax, eax                                       // 0x0089659c    85c0
                         {disp8} jne      _jmp_addr_0x0089658a                           // 0x0089659e    75ea
_jmp_addr_0x008965a0:    pop              esi                                            // 0x008965a0    5e
                         ret                                                             // 0x008965a1    c3
                         nop                                                             // 0x008965a2    90
                         nop                                                             // 0x008965a3    90
                         nop                                                             // 0x008965a4    90
                         nop                                                             // 0x008965a5    90
                         nop                                                             // 0x008965a6    90
                         nop                                                             // 0x008965a7    90
                         nop                                                             // 0x008965a8    90
                         nop                                                             // 0x008965a9    90
                         nop                                                             // 0x008965aa    90
                         nop                                                             // 0x008965ab    90
                         nop                                                             // 0x008965ac    90
                         nop                                                             // 0x008965ad    90
                         nop                                                             // 0x008965ae    90
                         nop                                                             // 0x008965af    90
                         push             esi                                            // 0x008965b0    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x008965b1    8b742408
                         cmp              dword ptr [esi], 0x00                          // 0x008965b5    833e00
                         {disp8} je       _jmp_addr_0x008965c1                           // 0x008965b8    7407
                         mov              eax, 0x00000004                                // 0x008965ba    b804000000
                         pop              esi                                            // 0x008965bf    5e
                         ret                                                             // 0x008965c0    c3
_jmp_addr_0x008965c1:    push             esi                                            // 0x008965c1    56
                         call             _jmp_addr_0x008962a0                           // 0x008965c2    e8d9fcffff
                         add              esp, 0x04                                      // 0x008965c7    83c404
                         test             eax, eax                                       // 0x008965ca    85c0
                         {disp8} jne      _jmp_addr_0x00896610                           // 0x008965cc    7542
                         push             esi                                            // 0x008965ce    56
                         call             _jmp_addr_0x00896620                           // 0x008965cf    e84c000000
                         add              esp, 0x04                                      // 0x008965d4    83c404
                         test             eax, eax                                       // 0x008965d7    85c0
                         {disp8} jne      _jmp_addr_0x00896610                           // 0x008965d9    7535
                         {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x008965db    8b442418
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x008965df    8b4c2414
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x008965e3    8b542410
                         push             eax                                            // 0x008965e7    50
                         push             ecx                                            // 0x008965e8    51
                         push             edx                                            // 0x008965e9    52
                         push             esi                                            // 0x008965ea    56
                         call             _jmp_addr_0x00896670                           // 0x008965eb    e880000000
                         add              esp, 0x10                                      // 0x008965f0    83c410
                         test             eax, eax                                       // 0x008965f3    85c0
                         {disp8} jne      _jmp_addr_0x00896610                           // 0x008965f5    7519
                         {disp8} mov      dword ptr [esi + 0x70], eax                    // 0x008965f7    894670
                         {disp8} mov      dword ptr [esi + 0x74], eax                    // 0x008965fa    894674
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x008965fd    8b44240c
                         test             eax, eax                                       // 0x00896601    85c0
                         {disp8} jne      _jmp_addr_0x0089660e                           // 0x00896603    7509
                         push             esi                                            // 0x00896605    56
                         call             _jmp_addr_0x00896580                           // 0x00896606    e875ffffff
                         add              esp, 0x04                                      // 0x0089660b    83c404
_jmp_addr_0x0089660e:    xor.s            eax, eax                                       // 0x0089660e    33c0
_jmp_addr_0x00896610:    pop              esi                                            // 0x00896610    5e
                         ret                                                             // 0x00896611    c3
                         nop                                                             // 0x00896612    90
                         nop                                                             // 0x00896613    90
                         nop                                                             // 0x00896614    90
                         nop                                                             // 0x00896615    90
                         nop                                                             // 0x00896616    90
                         nop                                                             // 0x00896617    90
                         nop                                                             // 0x00896618    90
                         nop                                                             // 0x00896619    90
                         nop                                                             // 0x0089661a    90
                         nop                                                             // 0x0089661b    90
                         nop                                                             // 0x0089661c    90
                         nop                                                             // 0x0089661d    90
                         nop                                                             // 0x0089661e    90
                         nop                                                             // 0x0089661f    90
_jmp_addr_0x00896620:    push             ecx                                            // 0x00896620    51
                         push             0x11                                           // 0x00896621    6a11
                         push             0x2                                            // 0x00896623    6a02
                         push             0x2                                            // 0x00896625    6a02
                         {disp8} mov      dword ptr [esp + 0x0c], 0x00000001             // 0x00896627    c744240c01000000
                         call             _jmp_WSOCK32_DLL__Ordinal_23                   // 0x0089662f    e880ea0000
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x00896634    8b4c2408
                         cmp              eax, -0x01                                     // 0x00896638    83f8ff
                         {disp32} mov     dword ptr [ecx + 0x00000088], eax              // 0x0089663b    898188000000
                         {disp8} jne      _jmp_addr_0x0089664a                           // 0x00896641    7507
                         mov              eax, 0x00000001                                // 0x00896643    b801000000
                         pop              ecx                                            // 0x00896648    59
                         ret                                                             // 0x00896649    c3
_jmp_addr_0x0089664a:    {disp8} lea      edx, dword ptr [esp + 0x00]                    // 0x0089664a    8d542400
                         push             0x4                                            // 0x0089664e    6a04
                         push             edx                                            // 0x00896650    52
                         push             0x20                                           // 0x00896651    6a20
                         push             0x0000ffff                                     // 0x00896653    68ffff0000
                         push             eax                                            // 0x00896658    50
                         call             _jmp_WSOCK32_DLL__Ordinal_21                   // 0x00896659    e838ea0000
                         neg              eax                                            // 0x0089665e    f7d8
                         sbb.s            eax, eax                                       // 0x00896660    1bc0
                         neg              eax                                            // 0x00896662    f7d8
                         pop              ecx                                            // 0x00896664    59
                         ret                                                             // 0x00896665    c3
                         nop                                                             // 0x00896666    90
                         nop                                                             // 0x00896667    90
                         nop                                                             // 0x00896668    90
                         nop                                                             // 0x00896669    90
                         nop                                                             // 0x0089666a    90
                         nop                                                             // 0x0089666b    90
                         nop                                                             // 0x0089666c    90
                         nop                                                             // 0x0089666d    90
                         nop                                                             // 0x0089666e    90
                         nop                                                             // 0x0089666f    90
_jmp_addr_0x00896670:    sub              esp, 0x10                                      // 0x00896670    83ec10
                         push             ebx                                            // 0x00896673    53
                         push             esi                                            // 0x00896674    56
                         {disp8} mov      esi, dword ptr [esp + 0x20]                    // 0x00896675    8b742420
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x00896679    8b5c241c
                         movsx            eax, si                                        // 0x0089667d    0fbfc6
                         push             edi                                            // 0x00896680    57
                         {disp8} mov      edi, dword ptr [esp + 0x28]                    // 0x00896681    8b7c2428
                         cmp.s            eax, edi                                       // 0x00896685    3bc7
                         {disp8} mov      word ptr [esp + 0x0c], 0x0002                  // 0x00896687    66c744240c0200
                         {disp8} mov      dword ptr [esp + 0x10], 0xffffffff             // 0x0089668e    c7442410ffffffff
                         {disp8} jg       _jmp_addr_0x008966ce                           // 0x00896696    7f36
                         push             ebp                                            // 0x00896698    55
                         {disp8} mov      ebp, dword ptr [esp + 0x30]                    // 0x00896699    8b6c2430
_jmp_addr_0x0089669d:    push             esi                                            // 0x0089669d    56
                         call             _jmp_WSOCK32_DLL__Ordinal_9                    // 0x0089669e    e82fea0000
                         {disp32} mov     edx, dword ptr [ebx + 0x00000088]              // 0x008966a3    8b9388000000
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                    // 0x008966a9    8d4c2410
                         push             0x10                                           // 0x008966ad    6a10
                         push             ecx                                            // 0x008966af    51
                         push             0x0                                            // 0x008966b0    6a00
                         push             0x8                                            // 0x008966b2    6a08
                         push             0x00c3acf8                                     // 0x008966b4    68f8acc300
                         push             edx                                            // 0x008966b9    52
                         {disp8} mov      word ptr [esp + 0x2a], ax                      // 0x008966ba    668944242a
                         call             _jmp_WSOCK32_DLL__Ordinal_20                   // 0x008966bf    e814ea0000
                         add.s            esi, ebp                                       // 0x008966c4    03f5
                         movsx            eax, si                                        // 0x008966c6    0fbfc6
                         cmp.s            eax, edi                                       // 0x008966c9    3bc7
                         {disp8} jle      _jmp_addr_0x0089669d                           // 0x008966cb    7ed0
                         pop              ebp                                            // 0x008966cd    5d
_jmp_addr_0x008966ce:    push             0x2                                            // 0x008966ce    6a02
                         push             ebx                                            // 0x008966d0    53
                         call             _jmp_addr_0x00896560                           // 0x008966d1    e88afeffff
                         add              esp, 0x08                                      // 0x008966d6    83c408
                         call             _jmp_addr_0x0088a8d0                           // 0x008966d9    e8f241ffff
                         pop              edi                                            // 0x008966de    5f
                         {disp32} mov     dword ptr [ebx + 0x0000008c], eax              // 0x008966df    89838c000000
                         pop              esi                                            // 0x008966e5    5e
                         xor.s            eax, eax                                       // 0x008966e6    33c0
                         pop              ebx                                            // 0x008966e8    5b
                         add              esp, 0x10                                      // 0x008966e9    83c410
                         ret                                                             // 0x008966ec    c3
                         nop                                                             // 0x008966ed    90
                         nop                                                             // 0x008966ee    90
                         nop                                                             // 0x008966ef    90
_jmp_addr_0x008966f0:    {disp8} mov      eax, dword ptr [esp + 0x0c]                    // 0x008966f0    8b44240c
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                    // 0x008966f4    8b4c2408
                         push             esi                                            // 0x008966f8    56
                         push             edi                                            // 0x008966f9    57
                         push             eax                                            // 0x008966fa    50
                         push             ecx                                            // 0x008966fb    51
                         call             _jmp_WSOCK32_DLL__Ordinal_10                   // 0x008966fc    e87de90000
                         {disp8} mov      esi, dword ptr [esp + 0x10]                    // 0x00896701    8b742410
                         push             eax                                            // 0x00896705    50
                         push             esi                                            // 0x00896706    56
                         call             _jmp_addr_0x00896770                           // 0x00896707    e864000000
                         mov.s            edi, eax                                       // 0x0089670c    8bf8
                         add              esp, 0x0c                                      // 0x0089670e    83c40c
                         cmp              edi, -0x01                                     // 0x00896711    83ffff
                         {disp8} je       _jmp_addr_0x0089675f                           // 0x00896714    7449
                         cmp              dword ptr [esi], 0x00                          // 0x00896716    833e00
                         {disp8} je       _jmp_addr_0x00896752                           // 0x00896719    7437
                         cmp              dword ptr [esi + 0x70], edi                    // 0x0089671b    397e70
                         {disp8} jle      _jmp_addr_0x00896752                           // 0x0089671e    7e32
                         {disp8} mov      edx, dword ptr [esi + 0x04]                    // 0x00896720    8b5604
                         push             edi                                            // 0x00896723    57
                         push             edx                                            // 0x00896724    52
                         call             _jmp_addr_0x00887e50                           // 0x00896725    e82617ffff
                         mov              eax, dword ptr [eax]                           // 0x0089672a    8b00
                         push             eax                                            // 0x0089672c    50
                         push             esi                                            // 0x0089672d    56
                         call             _jmp_addr_0x00896800                           // 0x0089672e    e8cd000000
                         add              esp, 0x10                                      // 0x00896733    83c410
                         cmp              eax, -0x01                                     // 0x00896736    83f8ff
                         {disp8} je       _jmp_addr_0x0089674f                           // 0x00896739    7414
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x0089673b    8b5608
                         {disp32} lea     ecx, dword ptr [eax * 0x8 + 0x00000000]        // 0x0089673e    8d0cc500000000
                         sub.s            ecx, eax                                       // 0x00896745    2bc8
                         {disp8} mov      dword ptr [edx + ecx * 0x4 + 0x04], 0x00000000 // 0x00896747    c7448a0400000000
_jmp_addr_0x0089674f:    dec              dword ptr [esi + 0x70]                         // 0x0089674f    ff4e70
_jmp_addr_0x00896752:    {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x00896752    8b4604
                         push             edi                                            // 0x00896755    57
                         push             eax                                            // 0x00896756    50
                         call             _jmp_addr_0x00888000                           // 0x00896757    e8a418ffff
                         add              esp, 0x08                                      // 0x0089675c    83c408
_jmp_addr_0x0089675f:    pop              edi                                            // 0x0089675f    5f
                         pop              esi                                            // 0x00896760    5e
                         ret                                                             // 0x00896761    c3
                         nop                                                             // 0x00896762    90
                         nop                                                             // 0x00896763    90
                         nop                                                             // 0x00896764    90
                         nop                                                             // 0x00896765    90
                         nop                                                             // 0x00896766    90
                         nop                                                             // 0x00896767    90
                         nop                                                             // 0x00896768    90
                         nop                                                             // 0x00896769    90
                         nop                                                             // 0x0089676a    90
                         nop                                                             // 0x0089676b    90
                         nop                                                             // 0x0089676c    90
                         nop                                                             // 0x0089676d    90
                         nop                                                             // 0x0089676e    90
                         nop                                                             // 0x0089676f    90
_jmp_addr_0x00896770:    push             esi                                            // 0x00896770    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x00896771    8b742408
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x00896775    8b4604
                         push             eax                                            // 0x00896778    50
                         call             _jmp_addr_0x00887e40                           // 0x00896779    e8c216ffff
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x0089677e    8b4c2414
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x00896782    8b542410
                         push             eax                                            // 0x00896786    50
                         push             ecx                                            // 0x00896787    51
                         push             edx                                            // 0x00896788    52
                         push             esi                                            // 0x00896789    56
                         call             _jmp_addr_0x008967a0                           // 0x0089678a    e811000000
                         add              esp, 0x14                                      // 0x0089678f    83c414
                         pop              esi                                            // 0x00896792    5e
                         ret                                                             // 0x00896793    c3
                         nop                                                             // 0x00896794    90
                         nop                                                             // 0x00896795    90
                         nop                                                             // 0x00896796    90
                         nop                                                             // 0x00896797    90
                         nop                                                             // 0x00896798    90
                         nop                                                             // 0x00896799    90
                         nop                                                             // 0x0089679a    90
                         nop                                                             // 0x0089679b    90
                         nop                                                             // 0x0089679c    90
                         nop                                                             // 0x0089679d    90
                         nop                                                             // 0x0089679e    90
                         nop                                                             // 0x0089679f    90
_jmp_addr_0x008967a0:    {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x008967a0    8b442410
                         push             ebx                                            // 0x008967a4    53
                         push             ebp                                            // 0x008967a5    55
                         push             esi                                            // 0x008967a6    56
                         push             edi                                            // 0x008967a7    57
                         xor.s            edi, edi                                       // 0x008967a8    33ff
                         test             eax, eax                                       // 0x008967aa    85c0
                         {disp8} jle      _jmp_addr_0x008967e9                           // 0x008967ac    7e3b
                         {disp8} mov      ebp, dword ptr [esp + 0x14]                    // 0x008967ae    8b6c2414
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                    // 0x008967b2    8b5c241c
_jmp_addr_0x008967b6:    {disp8} mov      eax, dword ptr [ebp + 0x04]                    // 0x008967b6    8b4504
                         push             edi                                            // 0x008967b9    57
                         push             eax                                            // 0x008967ba    50
                         call             _jmp_addr_0x00887e50                           // 0x008967bb    e89016ffff
                         mov              esi, dword ptr [eax]                           // 0x008967c0    8b30
                         push             esi                                            // 0x008967c2    56
                         call             _jmp_addr_0x008866b0                           // 0x008967c3    e8e8fefeff
                         add              esp, 0x0c                                      // 0x008967c8    83c40c
                         cmp.s            ebx, eax                                       // 0x008967cb    3bd8
                         {disp8} jne      _jmp_addr_0x008967e0                           // 0x008967cd    7511
                         push             esi                                            // 0x008967cf    56
                         call             _jmp_addr_0x008866a0                           // 0x008967d0    e8cbfefeff
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                    // 0x008967d5    8b4c241c
                         add              esp, 0x04                                      // 0x008967d9    83c404
                         cmp.s            eax, ecx                                       // 0x008967dc    3bc1
                         {disp8} je       _jmp_addr_0x008967f1                           // 0x008967de    7411
_jmp_addr_0x008967e0:    {disp8} mov      eax, dword ptr [esp + 0x20]                    // 0x008967e0    8b442420
                         inc              edi                                            // 0x008967e4    47
                         cmp.s            edi, eax                                       // 0x008967e5    3bf8
                         {disp8} jl       _jmp_addr_0x008967b6                           // 0x008967e7    7ccd
_jmp_addr_0x008967e9:    pop              edi                                            // 0x008967e9    5f
                         pop              esi                                            // 0x008967ea    5e
                         pop              ebp                                            // 0x008967eb    5d
                         or               eax, -0x1                                      // 0x008967ec    83c8ff
                         pop              ebx                                            // 0x008967ef    5b
                         ret                                                             // 0x008967f0    c3
_jmp_addr_0x008967f1:    mov.s            eax, edi                                       // 0x008967f1    8bc7
                         pop              edi                                            // 0x008967f3    5f
                         pop              esi                                            // 0x008967f4    5e
                         pop              ebp                                            // 0x008967f5    5d
                         pop              ebx                                            // 0x008967f6    5b
                         ret                                                             // 0x008967f7    c3
                         nop                                                             // 0x008967f8    90
                         nop                                                             // 0x008967f9    90
                         nop                                                             // 0x008967fa    90
                         nop                                                             // 0x008967fb    90
                         nop                                                             // 0x008967fc    90
                         nop                                                             // 0x008967fd    90
                         nop                                                             // 0x008967fe    90
                         nop                                                             // 0x008967ff    90
_jmp_addr_0x00896800:    {disp8} mov      ecx, dword ptr [esp + 0x04]                    // 0x00896800    8b4c2404
                         xor.s            eax, eax                                       // 0x00896804    33c0
                         push             esi                                            // 0x00896806    56
                         {disp8} mov      edx, dword ptr [ecx + 0x6c]                    // 0x00896807    8b516c
                         test             edx, edx                                       // 0x0089680a    85d2
                         {disp8} jle      _jmp_addr_0x00896824                           // 0x0089680c    7e16
                         {disp8} mov      ecx, dword ptr [ecx + 0x08]                    // 0x0089680e    8b4908
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                    // 0x00896811    8b74240c
                         add              ecx, 0x4                                       // 0x00896815    83c104
_jmp_addr_0x00896818:    cmp              dword ptr [ecx], esi                           // 0x00896818    3931
                         {disp8} je       _jmp_addr_0x00896827                           // 0x0089681a    740b
                         inc              eax                                            // 0x0089681c    40
                         add              ecx, 0x1c                                      // 0x0089681d    83c11c
                         cmp.s            eax, edx                                       // 0x00896820    3bc2
                         {disp8} jl       _jmp_addr_0x00896818                           // 0x00896822    7cf4
_jmp_addr_0x00896824:    or               eax, -0x1                                      // 0x00896824    83c8ff
_jmp_addr_0x00896827:    pop              esi                                            // 0x00896827    5e
                         ret                                                             // 0x00896828    c3
                         nop                                                             // 0x00896829    90
                         nop                                                             // 0x0089682a    90
                         nop                                                             // 0x0089682b    90
                         nop                                                             // 0x0089682c    90
                         nop                                                             // 0x0089682d    90
                         nop                                                             // 0x0089682e    90
                         nop                                                             // 0x0089682f    90
_jmp_addr_0x00896830:    {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00896830    8b442408
                         push             ebx                                            // 0x00896834    53
                         push             ebp                                            // 0x00896835    55
                         push             esi                                            // 0x00896836    56
                         push             edi                                            // 0x00896837    57
                         push             eax                                            // 0x00896838    50
                         call             _jmp_WSOCK32_DLL__Ordinal_10                   // 0x00896839    e840e80000
                         {disp8} mov      ebp, dword ptr [esp + 0x1c]                    // 0x0089683e    8b6c241c
                         {disp8} mov      esi, dword ptr [esp + 0x14]                    // 0x00896842    8b742414
                         mov.s            ebx, eax                                       // 0x00896846    8bd8
                         push             ebp                                            // 0x00896848    55
                         push             ebx                                            // 0x00896849    53
                         push             esi                                            // 0x0089684a    56
                         call             _jmp_addr_0x00896770                           // 0x0089684b    e820ffffff
                         mov.s            edi, eax                                       // 0x00896850    8bf8
                         mov              eax, dword ptr [esi]                           // 0x00896852    8b06
                         add              esp, 0x0c                                      // 0x00896854    83c40c
                         test             eax, eax                                       // 0x00896857    85c0
                         {disp32} jne     _jmp_addr_0x008968f3                           // 0x00896859    0f8594000000
                         push             esi                                            // 0x0089685f    56
                         call             _jmp_addr_0x008962a0                           // 0x00896860    e83bfaffff
                         add              esp, 0x04                                      // 0x00896865    83c404
                         test             eax, eax                                       // 0x00896868    85c0
                         {disp32} jne     _jmp_addr_0x0089699f                           // 0x0089686a    0f852f010000
                         cmp              edi, -0x01                                     // 0x00896870    83ffff
                         {disp8} je       _jmp_addr_0x008968a8                           // 0x00896873    7433
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                    // 0x00896875    8b4e04
                         push             edi                                            // 0x00896878    57
                         push             ecx                                            // 0x00896879    51
                         call             _jmp_addr_0x00887e50                           // 0x0089687a    e8d115ffff
                         mov              eax, dword ptr [eax]                           // 0x0089687f    8b00
                         push             edi                                            // 0x00896881    57
                         {disp8} mov      dword ptr [esp + 0x30], eax                    // 0x00896882    89442430
                         {disp8} mov      word ptr [eax + 0x06], 0x270f                  // 0x00896886    66c740060f27
                         {disp8} mov      edx, dword ptr [esi + 0x04]                    // 0x0089688c    8b5604
                         push             edx                                            // 0x0089688f    52
                         call             _jmp_addr_0x00887fb0                           // 0x00896890    e81b17ffff
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                    // 0x00896895    8b4e04
                         {disp8} lea      eax, dword ptr [esp + 0x34]                    // 0x00896898    8d442434
                         push             eax                                            // 0x0089689c    50
                         push             ecx                                            // 0x0089689d    51
                         call             _jmp_addr_0x00887e70                           // 0x0089689e    e8cd15ffff
                         add              esp, 0x18                                      // 0x008968a3    83c418
                         {disp8} jmp      _jmp_addr_0x008968b8                           // 0x008968a6    eb10
_jmp_addr_0x008968a8:    {disp8} mov      edx, dword ptr [esp + 0x24]                    // 0x008968a8    8b542424
                         push             edx                                            // 0x008968ac    52
                         push             ebp                                            // 0x008968ad    55
                         push             ebx                                            // 0x008968ae    53
                         push             esi                                            // 0x008968af    56
                         call             _jmp_addr_0x008969b0                           // 0x008968b0    e8fb000000
                         add              esp, 0x10                                      // 0x008968b5    83c410
_jmp_addr_0x008968b8:    {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x008968b8    8b4604
                         push             eax                                            // 0x008968bb    50
                         call             _jmp_addr_0x00887e40                           // 0x008968bc    e87f15ffff
                         dec              eax                                            // 0x008968c1    48
                         push             0x3                                            // 0x008968c2    6a03
                         push             esi                                            // 0x008968c4    56
                         {disp8} mov      dword ptr [esi + 0x70], eax                    // 0x008968c5    894670
                         {disp8} mov      dword ptr [esi + 0x74], 0x00000000             // 0x008968c8    c7467400000000
                         call             _jmp_addr_0x00896560                           // 0x008968cf    e88cfcffff
                         {disp8} mov      eax, dword ptr [esp + 0x2c]                    // 0x008968d4    8b44242c
                         add              esp, 0x0c                                      // 0x008968d8    83c40c
                         test             eax, eax                                       // 0x008968db    85c0
                         {disp32} jne     _jmp_addr_0x0089699d                           // 0x008968dd    0f85ba000000
                         push             esi                                            // 0x008968e3    56
                         call             _jmp_addr_0x00896580                           // 0x008968e4    e897fcffff
                         add              esp, 0x04                                      // 0x008968e9    83c404
                         xor.s            eax, eax                                       // 0x008968ec    33c0
                         pop              edi                                            // 0x008968ee    5f
                         pop              esi                                            // 0x008968ef    5e
                         pop              ebp                                            // 0x008968f0    5d
                         pop              ebx                                            // 0x008968f1    5b
                         ret                                                             // 0x008968f2    c3
_jmp_addr_0x008968f3:    cmp              edi, -0x01                                     // 0x008968f3    83ffff
                         {disp8} jne      _jmp_addr_0x00896930                           // 0x008968f6    7538
                         {disp8} mov      ecx, dword ptr [esp + 0x24]                    // 0x008968f8    8b4c2424
                         {disp8} mov      edx, dword ptr [esi + 0x70]                    // 0x008968fc    8b5670
                         push             ecx                                            // 0x008968ff    51
                         push             edx                                            // 0x00896900    52
                         push             ebp                                            // 0x00896901    55
                         push             ebx                                            // 0x00896902    53
                         push             esi                                            // 0x00896903    56
                         call             _jmp_addr_0x008969f0                           // 0x00896904    e8e7000000
                         mov              eax, dword ptr [esi]                           // 0x00896909    8b06
                         add              esp, 0x14                                      // 0x0089690b    83c414
                         cmp              eax, 0x01                                      // 0x0089690e    83f801
                         {disp8} je       _jmp_addr_0x0089691c                           // 0x00896911    7409
                         cmp              eax, 0x02                                      // 0x00896913    83f802
                         {disp32} jne     _jmp_addr_0x0089699d                           // 0x00896916    0f8581000000
_jmp_addr_0x0089691c:    {disp32} mov     eax, dword ptr [esi + 0x00000098]              // 0x0089691c    8b8698000000
                         pop              edi                                            // 0x00896922    5f
                         inc              eax                                            // 0x00896923    40
                         {disp32} mov     dword ptr [esi + 0x00000098], eax              // 0x00896924    898698000000
                         pop              esi                                            // 0x0089692a    5e
                         pop              ebp                                            // 0x0089692b    5d
                         xor.s            eax, eax                                       // 0x0089692c    33c0
                         pop              ebx                                            // 0x0089692e    5b
                         ret                                                             // 0x0089692f    c3
_jmp_addr_0x00896930:    {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x00896930    8b4604
                         push             edi                                            // 0x00896933    57
                         push             eax                                            // 0x00896934    50
                         call             _jmp_addr_0x00887e50                           // 0x00896935    e81615ffff
                         {disp8} mov      ecx, dword ptr [esi + 0x70]                    // 0x0089693a    8b4e70
                         mov              eax, dword ptr [eax]                           // 0x0089693d    8b00
                         add              esp, 0x08                                      // 0x0089693f    83c408
                         cmp.s            edi, ecx                                       // 0x00896942    3bf9
                         {disp8} mov      dword ptr [esp + 0x24], eax                    // 0x00896944    89442424
                         {disp8} jge      _jmp_addr_0x0089699d                           // 0x00896948    7d53
                         {disp8} mov      word ptr [eax + 0x06], 0x270f                  // 0x0089694a    66c740060f27
                         {disp8} mov      ecx, dword ptr [esp + 0x24]                    // 0x00896950    8b4c2424
                         push             ecx                                            // 0x00896954    51
                         push             esi                                            // 0x00896955    56
                         call             _jmp_addr_0x00896800                           // 0x00896956    e8a5feffff
                         add              esp, 0x08                                      // 0x0089695b    83c408
                         cmp              eax, -0x01                                     // 0x0089695e    83f8ff
                         {disp8} je       _jmp_addr_0x00896977                           // 0x00896961    7414
                         {disp32} lea     edx, dword ptr [eax * 0x8 + 0x00000000]        // 0x00896963    8d14c500000000
                         sub.s            edx, eax                                       // 0x0089696a    2bd0
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x0089696c    8b4608
                         {disp8} mov      dword ptr [eax + edx * 0x4 + 0x04], 0x00000000 // 0x0089696f    c744900400000000
_jmp_addr_0x00896977:    {disp8} mov      ecx, dword ptr [esi + 0x70]                    // 0x00896977    8b4e70
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x0089697a    8b4604
                         {disp8} lea      edx, dword ptr [esp + 0x24]                    // 0x0089697d    8d542424
                         push             ecx                                            // 0x00896981    51
                         push             edx                                            // 0x00896982    52
                         push             eax                                            // 0x00896983    50
                         call             _jmp_addr_0x00887e90                           // 0x00896984    e80715ffff
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                    // 0x00896989    8b4e04
                         push             edi                                            // 0x0089698c    57
                         push             ecx                                            // 0x0089698d    51
                         call             _jmp_addr_0x00887fb0                           // 0x0089698e    e81d16ffff
                         {disp8} mov      eax, dword ptr [esi + 0x70]                    // 0x00896993    8b4670
                         add              esp, 0x14                                      // 0x00896996    83c414
                         dec              eax                                            // 0x00896999    48
                         {disp8} mov      dword ptr [esi + 0x70], eax                    // 0x0089699a    894670
_jmp_addr_0x0089699d:    xor.s            eax, eax                                       // 0x0089699d    33c0
_jmp_addr_0x0089699f:    pop              edi                                            // 0x0089699f    5f
                         pop              esi                                            // 0x008969a0    5e
                         pop              ebp                                            // 0x008969a1    5d
                         pop              ebx                                            // 0x008969a2    5b
                         ret                                                             // 0x008969a3    c3
                         nop                                                             // 0x008969a4    90
                         nop                                                             // 0x008969a5    90
                         nop                                                             // 0x008969a6    90
                         nop                                                             // 0x008969a7    90
                         nop                                                             // 0x008969a8    90
                         nop                                                             // 0x008969a9    90
                         nop                                                             // 0x008969aa    90
                         nop                                                             // 0x008969ab    90
                         nop                                                             // 0x008969ac    90
                         nop                                                             // 0x008969ad    90
                         nop                                                             // 0x008969ae    90
                         nop                                                             // 0x008969af    90
_jmp_addr_0x008969b0:    {disp8} mov      ecx, dword ptr [esp + 0x10]                    // 0x008969b0    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x008969b4    8b54240c
                         push             esi                                            // 0x008969b8    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x008969b9    8b742408
                         {disp32} mov     eax, dword ptr [esi + 0x00000094]              // 0x008969bd    8b8694000000
                         push             eax                                            // 0x008969c3    50
                         {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x008969c4    8b442410
                         push             ecx                                            // 0x008969c8    51
                         push             edx                                            // 0x008969c9    52
                         push             eax                                            // 0x008969ca    50
                         call             _jmp_addr_0x008864d0                           // 0x008969cb    e800fbfeff
                         {disp8} mov      edx, dword ptr [esi + 0x04]                    // 0x008969d0    8b5604
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                    // 0x008969d3    8d4c2418
                         push             ecx                                            // 0x008969d7    51
                         push             edx                                            // 0x008969d8    52
                         {disp8} mov      dword ptr [esp + 0x20], eax                    // 0x008969d9    89442420
                         call             _jmp_addr_0x00887e70                           // 0x008969dd    e88e14ffff
                         {disp8} mov      eax, dword ptr [esp + 0x20]                    // 0x008969e2    8b442420
                         add              esp, 0x18                                      // 0x008969e6    83c418
                         pop              esi                                            // 0x008969e9    5e
                         ret                                                             // 0x008969ea    c3
                         nop                                                             // 0x008969eb    90
                         nop                                                             // 0x008969ec    90
                         nop                                                             // 0x008969ed    90
                         nop                                                             // 0x008969ee    90
                         nop                                                             // 0x008969ef    90
_jmp_addr_0x008969f0:    {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x008969f0    8b4c2414
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x008969f4    8b54240c
                         push             esi                                            // 0x008969f8    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x008969f9    8b742408
                         {disp32} mov     eax, dword ptr [esi + 0x00000094]              // 0x008969fd    8b8694000000
                         push             eax                                            // 0x00896a03    50
                         {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x00896a04    8b442410
                         push             ecx                                            // 0x00896a08    51
                         push             edx                                            // 0x00896a09    52
                         push             eax                                            // 0x00896a0a    50
                         call             _jmp_addr_0x008864d0                           // 0x00896a0b    e8c0fafeff
                         {disp8} mov      ecx, dword ptr [esp + 0x24]                    // 0x00896a10    8b4c2424
                         {disp8} mov      dword ptr [esp + 0x18], eax                    // 0x00896a14    89442418
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x00896a18    8b4604
                         {disp8} lea      edx, dword ptr [esp + 0x18]                    // 0x00896a1b    8d542418
                         push             ecx                                            // 0x00896a1f    51
                         push             edx                                            // 0x00896a20    52
                         push             eax                                            // 0x00896a21    50
                         call             _jmp_addr_0x00887e90                           // 0x00896a22    e86914ffff
                         {disp8} mov      eax, dword ptr [esp + 0x24]                    // 0x00896a27    8b442424
                         add              esp, 0x1c                                      // 0x00896a2b    83c41c
                         pop              esi                                            // 0x00896a2e    5e
                         ret                                                             // 0x00896a2f    c3
_jmp_addr_0x00896a30:    {disp8} mov      ecx, dword ptr [esp + 0x04]                    // 0x00896a30    8b4c2404
                         mov              eax, dword ptr [ecx]                           // 0x00896a34    8b01
                         cmp              eax, 0x03                                      // 0x00896a36    83f803
                         {disp8} ja       _jmp_addr_0x00896a60                           // 0x00896a39    7725
                         jmp              dword ptr [eax*4 + 0x896a64]                   // 0x00896a3b    ff2485646a8900
                         push             ecx                                            // 0x00896a42    51
                         call             _jmp_addr_0x00896b80                           // 0x00896a43    e838010000
                         add              esp, 0x04                                      // 0x00896a48    83c404
                         ret                                                             // 0x00896a4b    c3
                         push             ecx                                            // 0x00896a4c    51
                         call             _jmp_addr_0x00896a80                           // 0x00896a4d    e82e000000
                         add              esp, 0x04                                      // 0x00896a52    83c404
                         ret                                                             // 0x00896a55    c3
                         push             ecx                                            // 0x00896a56    51
                         call             _jmp_addr_0x00897010                           // 0x00896a57    e8b4050000
                         add              esp, 0x04                                      // 0x00896a5c    83c404
                         ret                                                             // 0x00896a5f    c3
_jmp_addr_0x00896a60:    xor.s            eax, eax                                       // 0x00896a60    33c0
                         ret                                                             // 0x00896a62    c3

// Snippet: db, [0x00896a63, 0x00896a64)
.byte 0x90                        // 0x00896a63

// Snippet: jmptbl, [0x00896a64, 0x00896a74)
.byte 0x60, 0x6a, 0x89, 0x00      // 0x00896a64
.byte 0x42, 0x6a, 0x89, 0x00      // 0x00896a68
.byte 0x4c, 0x6a, 0x89, 0x00      // 0x00896a6c
.byte 0x56, 0x6a, 0x89, 0x00      // 0x00896a70

// Snippet: db, [0x00896a74, 0x00896a80)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00896a74
.byte 0x90, 0x90, 0x90, 0x90      // 0x00896a78
.byte 0x90, 0x90, 0x90, 0x90      // 0x00896a7c

