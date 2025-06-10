.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _atexit@4
.extern _malloc
.extern _free
.extern _jmp_addr_0x007c6eb0
.extern __errno
.extern ___doserrno
.extern _strncpy
.extern _strchr
.extern _calloc
.extern __tolower_lk
.extern _strlen
.extern _memset
.extern __lock
.extern __unlock
.extern _jmp_addr_0x007d211b
.extern __lseek_lk
.extern _strcpy
.extern _jmp_addr_0x007d9974
.extern __lock_fhandle
.extern __unlock_fhandle
.extern _jmp_addr_0x007dc8b0
.extern _jmp_addr_0x007dc920
.extern _jmp_addr_0x007dcaf0
.extern @__ct__8LHScreenFv@4
.extern @__dt__8LHScreenFv@4
.extern _jmp_addr_0x007de6f0
.extern _jmp_addr_0x007de820
.extern _jmp_addr_0x007de8d0
.extern _jmp_addr_0x007dece0
.extern _jmp_addr_0x007ded10
.extern _jmp_addr_0x007e4b80
.extern @__ct__7LHMouseFv@4
.extern @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16
.extern _jmp_addr_0x007e5b20
.extern _jmp_addr_0x007ef780
.extern _jmp_addr_0x007f3b80
.extern _jmp_addr_0x007f3d20
.extern _jmp_addr_0x007f42b0
.extern __getpid

.globl _jmp_addr_0x007da710
.globl _jmp_addr_0x007da811
.globl _jmp_addr_0x007da8eb
.globl _jmp_addr_0x007da9b2
.globl _jmp_addr_0x007dac45
.globl _jmp_addr_0x007dacdc
.globl _jmp_addr_0x007dad60
.globl _jmp_addr_0x007db0a5
.globl _jmp_addr_0x007db121
.globl ___crtGetLocaleInfoA
.globl _jmp_addr_0x007db352
.globl _jmp_addr_0x007db410
.globl _LHRand__FlRU
.globl _jmp_addr_0x007db770
.globl ___nw__FUl
.globl _jmp_addr_0x007db7a0
.globl @__ct__5LHSysFv@4
.globl _jmp_addr_0x007db8a0
.globl _jmp_addr_0x007db8e0
.globl _jmp_addr_0x007db8f0
.globl _jmp_addr_0x007db910
.globl _jmp_addr_0x007db940
.globl _jmp_addr_0x007dbc30@16
.globl _jmp_addr_0x007dbed0

.globl _globl_ct_0x007db7b0

start_0x007da710_0x007dc8b0:
// Snippet: asm, [0x007da710, 0x007dc656)
_jmp_addr_0x007da710:    push              ebp                                            // 0x007da710    55
                         mov.s             ebp, esp                                       // 0x007da711    8bec
                         push              edi                                            // 0x007da713    57
                         push              esi                                            // 0x007da714    56
                         push              ebx                                            // 0x007da715    53
                         {disp8} mov       ecx, dword ptr [ebp + 0x10]                    // 0x007da716    8b4d10
                         or.s              ecx, ecx                                       // 0x007da719    0bc9
                         {disp32} je       _jmp_addr_0x007da80a                           // 0x007da71b    0f84e9000000
                         {disp8} mov       esi, dword ptr [ebp + 0x08]                    // 0x007da721    8b7508
                         {disp8} mov       edi, dword ptr [ebp + 0x0c]                    // 0x007da724    8b7d0c
                         {disp32} lea      eax, dword ptr [data_bytes + 0x4be298]         // 0x007da727    8d059842e800
                         cmp               dword ptr [eax + 0x08], 0x00                   // 0x007da72d    83780800
                         {disp8} jne       _jmp_addr_0x007da781                           // 0x007da731    754e
                         mov               bh, 0x41                                       // 0x007da733    b741
                         mov               bl, 0x5a                                       // 0x007da735    b35a
                         mov               dh, 0x20                                       // 0x007da737    b620
                         {disp8} lea       ecx, dword ptr [ecx + 0x00]                    // 0x007da739    8d4900
_jmp_addr_0x007da73c:    mov               ah, byte ptr [esi]                             // 0x007da73c    8a26
                         or.s              ah, ah                                         // 0x007da73e    0ae4
                         mov               al, byte ptr [edi]                             // 0x007da740    8a07
                         {disp8} je        _jmp_addr_0x007da765                           // 0x007da742    7421
                         or.s              al, al                                         // 0x007da744    0ac0
                         {disp8} je        _jmp_addr_0x007da765                           // 0x007da746    741d
                         inc               esi                                            // 0x007da748    46
                         inc               edi                                            // 0x007da749    47
                         cmp               ah, bh                                         // 0x007da74a    38fc
                         .byte             0x72, 0x6// {disp8} jb _jmp_addr_0x007da754    // 0x007da74c    7206
                         cmp               ah, bl                                         // 0x007da74e    38dc
                         {disp8} ja        _jmp_addr_0x007da754                           // 0x007da750    7702
                         add.s             ah, dh                                         // 0x007da752    02e6
_jmp_addr_0x007da754:    cmp               al, bh                                         // 0x007da754    38f8
                         .byte             0x72, 0x6// {disp8} jb _jmp_addr_0x007da75e    // 0x007da756    7206
                         cmp               al, bl                                         // 0x007da758    38d8
                         {disp8} ja        _jmp_addr_0x007da75e                           // 0x007da75a    7702
                         add.s             al, dh                                         // 0x007da75c    02c6
_jmp_addr_0x007da75e:    cmp               ah, al                                         // 0x007da75e    38c4
                         {disp8} jne       _jmp_addr_0x007da76f                           // 0x007da760    750d
                         dec               ecx                                            // 0x007da762    49
                         {disp8} jne       _jmp_addr_0x007da73c                           // 0x007da763    75d7
_jmp_addr_0x007da765:    xor.s             ecx, ecx                                       // 0x007da765    33c9
                         cmp               ah, al                                         // 0x007da767    38c4
                         {disp32} je       _jmp_addr_0x007da80a                           // 0x007da769    0f849b000000
_jmp_addr_0x007da76f:    mov               ecx, 0xffffffff                                // 0x007da76f    b9ffffffff
                         {disp32} jb       _jmp_addr_0x007da80a                           // 0x007da774    0f8290000000
                         neg               ecx                                            // 0x007da77a    f7d9
                         {disp32} jmp      _jmp_addr_0x007da80a                           // 0x007da77c    e989000000
_jmp_addr_0x007da781:    lock inc          dword ptr [data_bytes + 0x5e7cc8]              // 0x007da781    f0ff05c8dcfa00
                         cmp               dword ptr [data_bytes + 0x5e7cc4], 0x00        // 0x007da788    833dc4dcfa0000
                         {disp8} jg        _jmp_addr_0x007da795                           // 0x007da78f    7f04
                         push              0x0                                            // 0x007da791    6a00
                         {disp8} jmp       _jmp_addr_0x007da7ae                           // 0x007da793    eb19
_jmp_addr_0x007da795:    lock dec          dword ptr [data_bytes + 0x5e7cc8]              // 0x007da795    f0ff0dc8dcfa00
                         mov.s             ebx, ecx                                       // 0x007da79c    8bd9
                         push              0x13                                           // 0x007da79e    6a13
                         call              __lock                                          // 0x007da7a0    e8110fffff
                         mov               dword ptr [esp], 0x00000001                    // 0x007da7a5    c7042401000000
                         mov.s             ecx, ebx                                       // 0x007da7ac    8bcb
_jmp_addr_0x007da7ae:    xor.s             eax, eax                                       // 0x007da7ae    33c0
                         xor.s             ebx, ebx                                       // 0x007da7b0    33db
                         mov.s             edi, edi                                       // 0x007da7b2    8bff
_jmp_addr_0x007da7b4:    mov               al, byte ptr [esi]                             // 0x007da7b4    8a06
                         or.s              eax, eax                                       // 0x007da7b6    0bc0
                         mov               bl, byte ptr [edi]                             // 0x007da7b8    8a1f
                         {disp8} je        _jmp_addr_0x007da7df                           // 0x007da7ba    7423
                         or.s              ebx, ebx                                       // 0x007da7bc    0bdb
                         {disp8} je        _jmp_addr_0x007da7df                           // 0x007da7be    741f
                         inc               esi                                            // 0x007da7c0    46
                         inc               edi                                            // 0x007da7c1    47
                         push              ecx                                            // 0x007da7c2    51
                         push              eax                                            // 0x007da7c3    50
                         push              ebx                                            // 0x007da7c4    53
                         call              __tolower_lk                                   // 0x007da7c5    e88deefeff
                         mov.s             ebx, eax                                       // 0x007da7ca    8bd8
                         add               esp, 0x04                                      // 0x007da7cc    83c404
                         call              __tolower_lk                                   // 0x007da7cf    e883eefeff
                         add               esp, 0x04                                      // 0x007da7d4    83c404
                         pop               ecx                                            // 0x007da7d7    59
                         cmp.s             eax, ebx                                       // 0x007da7d8    3bc3
                         {disp8} jne       _jmp_addr_0x007da7e5                           // 0x007da7da    7509
                         dec               ecx                                            // 0x007da7dc    49
                         {disp8} jne       _jmp_addr_0x007da7b4                           // 0x007da7dd    75d5
_jmp_addr_0x007da7df:    xor.s             ecx, ecx                                       // 0x007da7df    33c9
                         cmp.s             eax, ebx                                       // 0x007da7e1    3bc3
                         {disp8} je        _jmp_addr_0x007da7ee                           // 0x007da7e3    7409
_jmp_addr_0x007da7e5:    mov               ecx, 0xffffffff                                // 0x007da7e5    b9ffffffff
                         .byte             0x72, 0x2// {disp8} jb _jmp_addr_0x007da7ee    // 0x007da7ea    7202
                         neg               ecx                                            // 0x007da7ec    f7d9
_jmp_addr_0x007da7ee:    pop               eax                                            // 0x007da7ee    58
                         or.s              eax, eax                                       // 0x007da7ef    0bc0
                         {disp8} jne       _jmp_addr_0x007da7fc                           // 0x007da7f1    7509
                         lock dec          dword ptr [data_bytes + 0x5e7cc8]              // 0x007da7f3    f0ff0dc8dcfa00
                         {disp8} jmp       _jmp_addr_0x007da80a                           // 0x007da7fa    eb0e
_jmp_addr_0x007da7fc:    mov.s             ebx, ecx                                       // 0x007da7fc    8bd9
                         push              0x13                                           // 0x007da7fe    6a13
                         call              __unlock                                       // 0x007da800    e8120fffff
                         add               esp, 0x04                                      // 0x007da805    83c404
                         mov.s             ecx, ebx                                       // 0x007da808    8bcb
_jmp_addr_0x007da80a:    mov.s             eax, ecx                                       // 0x007da80a    8bc1
                         pop               ebx                                            // 0x007da80c    5b
                         pop               esi                                            // 0x007da80d    5e
                         pop               edi                                            // 0x007da80e    5f
                         leave                                                            // 0x007da80f    c9
                         ret                                                              // 0x007da810    c3
_jmp_addr_0x007da811:    {disp8} mov       edx, dword ptr [esp + 0x04]                    // 0x007da811    8b542404
                         push              esi                                            // 0x007da815    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                    // 0x007da816    8b74240c
                         xor.s             eax, eax                                       // 0x007da81a    33c0
                         lea               ecx, dword ptr [edx + esi * 0x1]               // 0x007da81c    8d0c32
                         cmp.s             ecx, edx                                       // 0x007da81f    3bca
                         .byte             0x72, 0x4// {disp8} jb _jmp_addr_0x007da827    // 0x007da821    7204
                         cmp.s             ecx, esi                                       // 0x007da823    3bce
                         {disp8} jae       _jmp_addr_0x007da82a                           // 0x007da825    7303
_jmp_addr_0x007da827:    push              0x1                                            // 0x007da827    6a01
                         pop               eax                                            // 0x007da829    58
_jmp_addr_0x007da82a:    {disp8} mov       edx, dword ptr [esp + 0x10]                    // 0x007da82a    8b542410
                         pop               esi                                            // 0x007da82e    5e
                         mov               dword ptr [edx], ecx                           // 0x007da82f    890a
                         ret                                                              // 0x007da831    c3
_jmp_addr_0x007da832:    push              esi                                            // 0x007da832    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                    // 0x007da833    8b742408
                         push              edi                                            // 0x007da837    57
                         {disp8} mov       edi, dword ptr [esp + 0x10]                    // 0x007da838    8b7c2410
                         push              esi                                            // 0x007da83c    56
                         push              dword ptr [edi]                                // 0x007da83d    ff37
                         push              dword ptr [esi]                                // 0x007da83f    ff36
                         call              _jmp_addr_0x007da811                           // 0x007da841    e8cbffffff
                         add               esp, 0x0c                                      // 0x007da846    83c40c
                         test              eax, eax                                       // 0x007da849    85c0
                         {disp8} je        _jmp_addr_0x007da864                           // 0x007da84b    7417
                         {disp8} lea       eax, dword ptr [esi + 0x04]                    // 0x007da84d    8d4604
                         push              eax                                            // 0x007da850    50
                         push              0x1                                            // 0x007da851    6a01
                         push              dword ptr [eax]                                // 0x007da853    ff30
                         call              _jmp_addr_0x007da811                           // 0x007da855    e8b7ffffff
                         add               esp, 0x0c                                      // 0x007da85a    83c40c
                         test              eax, eax                                       // 0x007da85d    85c0
                         {disp8} je        _jmp_addr_0x007da864                           // 0x007da85f    7403
                         {disp8} inc       dword ptr [esi + 0x08]                         // 0x007da861    ff4608
_jmp_addr_0x007da864:    {disp8} lea       eax, dword ptr [esi + 0x04]                    // 0x007da864    8d4604
                         push              eax                                            // 0x007da867    50
                         push              dword ptr [edi + 0x04]                         // 0x007da868    ff7704
                         push              dword ptr [eax]                                // 0x007da86b    ff30
                         call              _jmp_addr_0x007da811                           // 0x007da86d    e89fffffff
                         add               esp, 0x0c                                      // 0x007da872    83c40c
                         test              eax, eax                                       // 0x007da875    85c0
                         {disp8} je        _jmp_addr_0x007da87c                           // 0x007da877    7403
                         {disp8} inc       dword ptr [esi + 0x08]                         // 0x007da879    ff4608
_jmp_addr_0x007da87c:    {disp8} lea       eax, dword ptr [esi + 0x08]                    // 0x007da87c    8d4608
                         push              eax                                            // 0x007da87f    50
                         push              dword ptr [edi + 0x08]                         // 0x007da880    ff7708
                         push              dword ptr [eax]                                // 0x007da883    ff30
                         call              _jmp_addr_0x007da811                           // 0x007da885    e887ffffff
                         add               esp, 0x0c                                      // 0x007da88a    83c40c
                         pop               edi                                            // 0x007da88d    5f
                         pop               esi                                            // 0x007da88e    5e
                         ret                                                              // 0x007da88f    c3
_jmp_addr_0x007da890:    {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x007da890    8b442404
                         push              esi                                            // 0x007da894    56
                         push              edi                                            // 0x007da895    57
                         mov               esi, dword ptr [eax]                           // 0x007da896    8b30
                         {disp8} mov       edi, dword ptr [eax + 0x04]                    // 0x007da898    8b7804
                         mov.s             ecx, esi                                       // 0x007da89b    8bce
                         add.s             esi, esi                                       // 0x007da89d    03f6
                         mov               dword ptr [eax], esi                           // 0x007da89f    8930
                         lea               esi, dword ptr [edi + edi * 0x1]               // 0x007da8a1    8d343f
                         shr               ecx, 0x1f                                      // 0x007da8a4    c1e91f
                         or.s              esi, ecx                                       // 0x007da8a7    0bf1
                         {disp8} mov       ecx, dword ptr [eax + 0x08]                    // 0x007da8a9    8b4808
                         mov.s             edx, edi                                       // 0x007da8ac    8bd7
                         {disp8} mov       dword ptr [eax + 0x04], esi                    // 0x007da8ae    897004
                         shr               edx, 0x1f                                      // 0x007da8b1    c1ea1f
                         shl               ecx, 1                                         // 0x007da8b4    d1e1
                         or.s              ecx, edx                                       // 0x007da8b6    0bca
                         pop               edi                                            // 0x007da8b8    5f
                         {disp8} mov       dword ptr [eax + 0x08], ecx                    // 0x007da8b9    894808
                         pop               esi                                            // 0x007da8bc    5e
                         ret                                                              // 0x007da8bd    c3
_jmp_addr_0x007da8be:    {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x007da8be    8b442404
                         push              esi                                            // 0x007da8c2    56
                         push              edi                                            // 0x007da8c3    57
                         {disp8} mov       edx, dword ptr [eax + 0x08]                    // 0x007da8c4    8b5008
                         {disp8} mov       ecx, dword ptr [eax + 0x04]                    // 0x007da8c7    8b4804
                         mov.s             esi, edx                                       // 0x007da8ca    8bf2
                         mov.s             edi, ecx                                       // 0x007da8cc    8bf9
                         shl               esi, 0x1f                                      // 0x007da8ce    c1e61f
                         shr               ecx, 1                                         // 0x007da8d1    d1e9
                         or.s              ecx, esi                                       // 0x007da8d3    0bce
                         {disp8} mov       dword ptr [eax + 0x04], ecx                    // 0x007da8d5    894804
                         mov               ecx, dword ptr [eax]                           // 0x007da8d8    8b08
                         shl               edi, 0x1f                                      // 0x007da8da    c1e71f
                         shr               ecx, 1                                         // 0x007da8dd    d1e9
                         shr               edx, 1                                         // 0x007da8df    d1ea
                         or.s              ecx, edi                                       // 0x007da8e1    0bcf
                         pop               edi                                            // 0x007da8e3    5f
                         {disp8} mov       dword ptr [eax + 0x08], edx                    // 0x007da8e4    895008
                         mov               dword ptr [eax], ecx                           // 0x007da8e7    8908
                         pop               esi                                            // 0x007da8e9    5e
                         ret                                                              // 0x007da8ea    c3
_jmp_addr_0x007da8eb:    push              ebp                                            // 0x007da8eb    55
                         mov.s             ebp, esp                                       // 0x007da8ec    8bec
                         sub               esp, 0x10                                      // 0x007da8ee    83ec10
                         {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007da8f1    8b450c
                         push              ebx                                            // 0x007da8f4    53
                         {disp8} mov       ebx, dword ptr [ebp + 0x10]                    // 0x007da8f5    8b5d10
                         xor.s             edx, edx                                       // 0x007da8f8    33d2
                         cmp.s             eax, edx                                       // 0x007da8fa    3bc2
                         push              esi                                            // 0x007da8fc    56
                         {disp8} mov       dword ptr [ebp + -0x04], 0x0000404e            // 0x007da8fd    c745fc4e400000
                         mov               dword ptr [ebx], edx                           // 0x007da904    8913
                         {disp8} mov       dword ptr [ebx + 0x04], edx                    // 0x007da906    895304
                         {disp8} mov       dword ptr [ebx + 0x08], edx                    // 0x007da909    895308
                         {disp8} jbe       _jmp_addr_0x007da95f                           // 0x007da90c    7651
                         push              edi                                            // 0x007da90e    57
                         {disp8} mov       dword ptr [ebp + 0x10], eax                    // 0x007da90f    894510
_jmp_addr_0x007da912:    mov.s             esi, ebx                                       // 0x007da912    8bf3
                         {disp8} lea       edi, dword ptr [ebp + -0x10]                   // 0x007da914    8d7df0
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007da917    a5
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007da918    a5
                         push              ebx                                            // 0x007da919    53
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007da91a    a5
                         call              _jmp_addr_0x007da890                           // 0x007da91b    e870ffffff
                         push              ebx                                            // 0x007da920    53
                         call              _jmp_addr_0x007da890                           // 0x007da921    e86affffff
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007da926    8d45f0
                         push              eax                                            // 0x007da929    50
                         push              ebx                                            // 0x007da92a    53
                         call              _jmp_addr_0x007da832                           // 0x007da92b    e802ffffff
                         push              ebx                                            // 0x007da930    53
                         call              _jmp_addr_0x007da890                           // 0x007da931    e85affffff
                         {disp8} mov       eax, dword ptr [ebp + 0x08]                    // 0x007da936    8b4508
                         and               dword ptr [ebp + -0x0c], 0x00                  // 0x007da939    8365f400
                         and               dword ptr [ebp + -0x08], 0x00                  // 0x007da93d    8365f800
                         movsx             eax, byte ptr [eax]                            // 0x007da941    0fbe00
                         {disp8} mov       dword ptr [ebp + -0x10], eax                   // 0x007da944    8945f0
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007da947    8d45f0
                         push              eax                                            // 0x007da94a    50
                         push              ebx                                            // 0x007da94b    53
                         call              _jmp_addr_0x007da832                           // 0x007da94c    e8e1feffff
                         add               esp, 0x1c                                      // 0x007da951    83c41c
                         {disp8} inc       dword ptr [ebp + 0x08]                         // 0x007da954    ff4508
                         dec               dword ptr [ebp + 0x10]                         // 0x007da957    ff4d10
                         {disp8} jne       _jmp_addr_0x007da912                           // 0x007da95a    75b6
                         xor.s             edx, edx                                       // 0x007da95c    33d2
                         pop               edi                                            // 0x007da95e    5f
_jmp_addr_0x007da95f:    cmp               dword ptr [ebx + 0x08], edx                    // 0x007da95f    395308
                         {disp8} jne       _jmp_addr_0x007da98c                           // 0x007da962    7528
                         {disp8} mov       ecx, dword ptr [ebx + 0x04]                    // 0x007da964    8b4b04
                         mov.s             eax, ecx                                       // 0x007da967    8bc1
                         shr               eax, 0x10                                      // 0x007da969    c1e810
                         {disp8} mov       dword ptr [ebx + 0x08], eax                    // 0x007da96c    894308
                         mov               eax, dword ptr [ebx]                           // 0x007da96f    8b03
                         mov.s             esi, eax                                       // 0x007da971    8bf0
                         shr               esi, 0x10                                      // 0x007da973    c1ee10
                         shl               ecx, 0x10                                      // 0x007da976    c1e110
                         or.s              esi, ecx                                       // 0x007da979    0bf1
                         shl               eax, 0x10                                      // 0x007da97b    c1e010
                         add               dword ptr [ebp + -0x04], 0x0000fff0            // 0x007da97e    8145fcf0ff0000
                         {disp8} mov       dword ptr [ebx + 0x04], esi                    // 0x007da985    897304
                         mov               dword ptr [ebx], eax                           // 0x007da988    8903
                         {disp8} jmp       _jmp_addr_0x007da95f                           // 0x007da98a    ebd3
_jmp_addr_0x007da98c:    mov               esi, 0x00008000                                // 0x007da98c    be00800000
_jmp_addr_0x007da991:    test              dword ptr [ebx + 0x08], esi                    // 0x007da991    857308
                         {disp8} jne       _jmp_addr_0x007da9a6                           // 0x007da994    7510
                         push              ebx                                            // 0x007da996    53
                         call              _jmp_addr_0x007da890                           // 0x007da997    e8f4feffff
                         add               dword ptr [ebp + -0x04], 0x0000ffff            // 0x007da99c    8145fcffff0000
                         pop               ecx                                            // 0x007da9a3    59
                         {disp8} jmp       _jmp_addr_0x007da991                           // 0x007da9a4    ebeb
_jmp_addr_0x007da9a6:    {disp8} mov       ax, word ptr [ebp + -0x04]                     // 0x007da9a6    668b45fc
                         pop               esi                                            // 0x007da9aa    5e
                         {disp8} mov       word ptr [ebx + 0x0a], ax                      // 0x007da9ab    6689430a
                         pop               ebx                                            // 0x007da9af    5b
                         leave                                                            // 0x007da9b0    c9
                         ret                                                              // 0x007da9b1    c3
_jmp_addr_0x007da9b2:    push              ebp                                            // 0x007da9b2    55
                         mov.s             ebp, esp                                       // 0x007da9b3    8bec
                         sub               esp, 0x1c                                      // 0x007da9b5    83ec1c
                         {disp8} mov       eax, dword ptr [ebp + 0x10]                    // 0x007da9b8    8b4510
                         push              ebx                                            // 0x007da9bb    53
                         {disp8} mov       ebx, dword ptr [ebp + 0x1c]                    // 0x007da9bc    8b5d1c
                         push              esi                                            // 0x007da9bf    56
                         mov.s             ecx, eax                                       // 0x007da9c0    8bc8
                         mov               esi, 0x00007fff                                // 0x007da9c2    beff7f0000
                         and               ecx, 0x00008000                                // 0x007da9c7    81e100800000
                         and.s             eax, esi                                       // 0x007da9cd    23c6
                         test              cx, cx                                         // 0x007da9cf    6685c9
                         push              edi                                            // 0x007da9d2    57
                         {disp8} mov       byte ptr [ebp + -0x1c], -0x34                  // 0x007da9d3    c645e4cc
                         {disp8} mov       byte ptr [ebp + -0x1b], -0x34                  // 0x007da9d7    c645e5cc
                         {disp8} mov       byte ptr [ebp + -0x1a], -0x34                  // 0x007da9db    c645e6cc
                         {disp8} mov       byte ptr [ebp + -0x19], -0x34                  // 0x007da9df    c645e7cc
                         {disp8} mov       byte ptr [ebp + -0x18], -0x34                  // 0x007da9e3    c645e8cc
                         {disp8} mov       byte ptr [ebp + -0x17], -0x34                  // 0x007da9e7    c645e9cc
                         {disp8} mov       byte ptr [ebp + -0x16], -0x34                  // 0x007da9eb    c645eacc
                         {disp8} mov       byte ptr [ebp + -0x15], -0x34                  // 0x007da9ef    c645ebcc
                         {disp8} mov       byte ptr [ebp + -0x14], -0x34                  // 0x007da9f3    c645eccc
                         {disp8} mov       byte ptr [ebp + -0x13], -0x34                  // 0x007da9f7    c645edcc
                         {disp8} mov       byte ptr [ebp + -0x12], -0x05                  // 0x007da9fb    c645eefb
                         {disp8} mov       byte ptr [ebp + -0x11], 0x3f                   // 0x007da9ff    c645ef3f
                         {disp8} mov       dword ptr [ebp + -0x04], 0x00000001            // 0x007daa03    c745fc01000000
                         mov.s             edx, eax                                       // 0x007daa0a    8bd0
                         {disp8} je        _jmp_addr_0x007daa14                           // 0x007daa0c    7406
                         {disp8} mov       byte ptr [ebx + 0x02], 0x2d                    // 0x007daa0e    c643022d
                         {disp8} jmp       _jmp_addr_0x007daa18                           // 0x007daa12    eb04
_jmp_addr_0x007daa14:    {disp8} mov       byte ptr [ebx + 0x02], 0x20                    // 0x007daa14    c6430220
_jmp_addr_0x007daa18:    {disp8} mov       edi, dword ptr [ebp + 0x0c]                    // 0x007daa18    8b7d0c
                         test              dx, dx                                         // 0x007daa1b    6685d2
                         {disp8} jne       _jmp_addr_0x007daa3e                           // 0x007daa1e    751e
                         test              edi, edi                                       // 0x007daa20    85ff
                         {disp8} jne       _jmp_addr_0x007daa3e                           // 0x007daa22    751a
                         cmp               dword ptr [ebp + 0x08], edi                    // 0x007daa24    397d08
                         {disp8} jne       _jmp_addr_0x007daa3e                           // 0x007daa27    7515
_jmp_addr_0x007daa29:    and               word ptr [ebx], 0x00                           // 0x007daa29    66832300
                         {disp8} mov       byte ptr [ebx + 0x02], 0x20                    // 0x007daa2d    c6430220
                         {disp8} mov       byte ptr [ebx + 0x03], 0x01                    // 0x007daa31    c6430301
                         {disp8} mov       byte ptr [ebx + 0x04], 0x30                    // 0x007daa35    c6430430
                         {disp32} jmp      _jmp_addr_0x007dac3c                           // 0x007daa39    e9fe010000
_jmp_addr_0x007daa3e:    cmp.s             dx, si                                         // 0x007daa3e    663bd6
                         {disp8} jne       _jmp_addr_0x007daabd                           // 0x007daa41    757a
                         mov               eax, 0x80000000                                // 0x007daa43    b800000080
                         mov               word ptr [ebx], 0x0001                         // 0x007daa48    66c7030100
                         cmp.s             edi, eax                                       // 0x007daa4d    3bf8
                         {disp8} jne       _jmp_addr_0x007daa57                           // 0x007daa4f    7506
                         cmp               dword ptr [ebp + 0x08], 0x00                   // 0x007daa51    837d0800
                         {disp8} je        _jmp_addr_0x007daa66                           // 0x007daa55    740f
_jmp_addr_0x007daa57:    test              edi, 0x40000000                                // 0x007daa57    f7c700000040
                         {disp8} jne       _jmp_addr_0x007daa66                           // 0x007daa5d    7507
                         push              0x009a15f4                                     // 0x007daa5f    68f4159a00
                         {disp8} jmp       _jmp_addr_0x007daaac                           // 0x007daa64    eb46
_jmp_addr_0x007daa66:    test              cx, cx                                         // 0x007daa66    6685c9
                         {disp8} je        _jmp_addr_0x007daa80                           // 0x007daa69    7415
                         cmp               edi, 0xc0000000                                // 0x007daa6b    81ff000000c0
                         {disp8} jne       _jmp_addr_0x007daa80                           // 0x007daa71    750d
                         cmp               dword ptr [ebp + 0x08], 0x00                   // 0x007daa73    837d0800
                         {disp8} jne       _jmp_addr_0x007daaa7                           // 0x007daa77    752e
                         push              0x009a15ec                                     // 0x007daa79    68ec159a00
                         {disp8} jmp       _jmp_addr_0x007daa8f                           // 0x007daa7e    eb0f
_jmp_addr_0x007daa80:    cmp.s             edi, eax                                       // 0x007daa80    3bf8
                         {disp8} jne       _jmp_addr_0x007daaa7                           // 0x007daa82    7523
                         cmp               dword ptr [ebp + 0x08], 0x00                   // 0x007daa84    837d0800
                         {disp8} jne       _jmp_addr_0x007daaa7                           // 0x007daa88    751d
                         push              0x009a15e4                                     // 0x007daa8a    68e4159a00
_jmp_addr_0x007daa8f:    {disp8} lea       eax, dword ptr [ebx + 0x04]                    // 0x007daa8f    8d4304
                         push              eax                                            // 0x007daa92    50
                         call              _strcpy                                        // 0x007daa93    e8d8a5ffff
                         pop               ecx                                            // 0x007daa98    59
                         {disp8} mov       byte ptr [ebx + 0x03], 0x05                    // 0x007daa99    c6430305
                         pop               ecx                                            // 0x007daa9d    59
_jmp_addr_0x007daa9e:    and               dword ptr [ebp + -0x04], 0x00                  // 0x007daa9e    8365fc00
                         {disp32} jmp      _jmp_addr_0x007dac15                           // 0x007daaa2    e96e010000
_jmp_addr_0x007daaa7:    push              0x009a15dc                                     // 0x007daaa7    68dc159a00
_jmp_addr_0x007daaac:    {disp8} lea       eax, dword ptr [ebx + 0x04]                    // 0x007daaac    8d4304
                         push              eax                                            // 0x007daaaf    50
                         call              _strcpy                                        // 0x007daab0    e8bba5ffff
                         pop               ecx                                            // 0x007daab5    59
                         {disp8} mov       byte ptr [ebx + 0x03], 0x06                    // 0x007daab6    c6430306
                         pop               ecx                                            // 0x007daaba    59
                         {disp8} jmp       _jmp_addr_0x007daa9e                           // 0x007daabb    ebe1
_jmp_addr_0x007daabd:    movzx             eax, dx                                        // 0x007daabd    0fb7c2
                         mov.s             ecx, edi                                       // 0x007daac0    8bcf
                         mov.s             esi, eax                                       // 0x007daac2    8bf0
                         shr               ecx, 0x18                                      // 0x007daac4    c1e918
                         imul              eax, eax, 0x00004d10                           // 0x007daac7    69c0104d0000
                         shr               esi, 8                                         // 0x007daacd    c1ee08
                         and               word ptr [ebp + -0x10], 0x00                   // 0x007daad0    668365f000
                         push              0x1                                            // 0x007daad5    6a01
                         lea               ecx, dword ptr [esi + ecx * 0x2]               // 0x007daad7    8d0c4e
                         {disp8} mov       word ptr [ebp + -0x06], dx                     // 0x007daada    668955fa
                         imul              ecx, ecx, 0x4d                                 // 0x007daade    6bc94d
                         {disp8} mov       dword ptr [ebp + -0x0a], edi                   // 0x007daae1    897df6
                         {disp32} lea      esi, dword ptr [ecx + eax * 0x1 + -0x134312f4] // 0x007daae4    8db4010cedbcec
                         {disp8} mov       eax, dword ptr [ebp + 0x08]                    // 0x007daaeb    8b4508
                         sar               esi, 0x10                                      // 0x007daaee    c1fe10
                         {disp8} mov       dword ptr [ebp + -0x0e], eax                   // 0x007daaf1    8945f2
                         movsx             eax, si                                        // 0x007daaf4    0fbfc6
                         neg               eax                                            // 0x007daaf7    f7d8
                         push              eax                                            // 0x007daaf9    50
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007daafa    8d45f0
                         push              eax                                            // 0x007daafd    50
                         call              _jmp_addr_0x007db0a5                           // 0x007daafe    e8a2050000
                         add               esp, 0x0c                                      // 0x007dab03    83c40c
                         cmp               word ptr [ebp + -0x06], 0x3fff                 // 0x007dab06    66817dfaff3f
                         .byte             0x72, 0x10// {disp8} jb _jmp_addr_0x007dab1e   // 0x007dab0c    7210
                         {disp8} lea       eax, dword ptr [ebp + -0x1c]                   // 0x007dab0e    8d45e4
                         inc               esi                                            // 0x007dab11    46
                         push              eax                                            // 0x007dab12    50
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dab13    8d45f0
                         push              eax                                            // 0x007dab16    50
                         call              _jmp_addr_0x007dae85                           // 0x007dab17    e869030000
                         pop               ecx                                            // 0x007dab1c    59
                         pop               ecx                                            // 0x007dab1d    59
_jmp_addr_0x007dab1e:    test              byte ptr [ebp + 0x18], 0x01                    // 0x007dab1e    f6451801
                         mov               word ptr [ebx], si                             // 0x007dab22    668933
                         {disp8} je        _jmp_addr_0x007dab38                           // 0x007dab25    7411
                         {disp8} mov       edi, dword ptr [ebp + 0x14]                    // 0x007dab27    8b7d14
                         movsx             eax, si                                        // 0x007dab2a    0fbfc6
                         add.s             edi, eax                                       // 0x007dab2d    03f8
                         test              edi, edi                                       // 0x007dab2f    85ff
                         {disp8} jg        _jmp_addr_0x007dab3b                           // 0x007dab31    7f08
                         {disp32} jmp      _jmp_addr_0x007daa29                           // 0x007dab33    e9f1feffff
_jmp_addr_0x007dab38:    {disp8} mov       edi, dword ptr [ebp + 0x14]                    // 0x007dab38    8b7d14
_jmp_addr_0x007dab3b:    cmp               edi, 0x15                                      // 0x007dab3b    83ff15
                         {disp8} jle       _jmp_addr_0x007dab43                           // 0x007dab3e    7e03
                         push              0x15                                           // 0x007dab40    6a15
                         pop               edi                                            // 0x007dab42    5f
_jmp_addr_0x007dab43:    movzx             esi, word ptr [ebp + -0x06]                    // 0x007dab43    0fb775fa
                         sub               esi, 0x00003ffe                                // 0x007dab47    81eefe3f0000
                         and               word ptr [ebp + -0x06], 0x00                   // 0x007dab4d    668365fa00
                         {disp8} mov       dword ptr [ebp + 0x1c], 0x00000008             // 0x007dab52    c7451c08000000
_jmp_addr_0x007dab59:    {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dab59    8d45f0
                         push              eax                                            // 0x007dab5c    50
                         call              _jmp_addr_0x007da890                           // 0x007dab5d    e82efdffff
                         dec               dword ptr [ebp + 0x1c]                         // 0x007dab62    ff4d1c
                         pop               ecx                                            // 0x007dab65    59
                         {disp8} jne       _jmp_addr_0x007dab59                           // 0x007dab66    75f1
                         test              esi, esi                                       // 0x007dab68    85f6
                         {disp8} jge       _jmp_addr_0x007dab83                           // 0x007dab6a    7d17
                         neg               esi                                            // 0x007dab6c    f7de
                         and               esi, 0x000000ff                                // 0x007dab6e    81e6ff000000
                         {disp8} jle       _jmp_addr_0x007dab83                           // 0x007dab74    7e0d
_jmp_addr_0x007dab76:    {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dab76    8d45f0
                         push              eax                                            // 0x007dab79    50
                         call              _jmp_addr_0x007da8be                           // 0x007dab7a    e83ffdffff
                         dec               esi                                            // 0x007dab7f    4e
                         pop               ecx                                            // 0x007dab80    59
                         {disp8} jne       _jmp_addr_0x007dab76                           // 0x007dab81    75f3
_jmp_addr_0x007dab83:    {disp8} lea       ecx, dword ptr [edi + 0x01]                    // 0x007dab83    8d4f01
                         {disp8} lea       eax, dword ptr [ebx + 0x04]                    // 0x007dab86    8d4304
                         test              ecx, ecx                                       // 0x007dab89    85c9
                         {disp8} mov       dword ptr [ebp + 0x1c], eax                    // 0x007dab8b    89451c
                         {disp8} jle       _jmp_addr_0x007dabe0                           // 0x007dab8e    7e50
                         {disp8} mov       dword ptr [ebp + 0x14], ecx                    // 0x007dab90    894d14
_jmp_addr_0x007dab93:    {disp8} lea       esi, dword ptr [ebp + -0x10]                   // 0x007dab93    8d75f0
                         {disp8} lea       edi, dword ptr [ebp + 0x08]                    // 0x007dab96    8d7d08
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007dab99    a5
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007dab9a    a5
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dab9b    8d45f0
                         push              eax                                            // 0x007dab9e    50
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007dab9f    a5
                         call              _jmp_addr_0x007da890                           // 0x007daba0    e8ebfcffff
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007daba5    8d45f0
                         push              eax                                            // 0x007daba8    50
                         call              _jmp_addr_0x007da890                           // 0x007daba9    e8e2fcffff
                         {disp8} lea       eax, dword ptr [ebp + 0x08]                    // 0x007dabae    8d4508
                         push              eax                                            // 0x007dabb1    50
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dabb2    8d45f0
                         push              eax                                            // 0x007dabb5    50
                         call              _jmp_addr_0x007da832                           // 0x007dabb6    e877fcffff
                         {disp8} lea       eax, dword ptr [ebp + -0x10]                   // 0x007dabbb    8d45f0
                         push              eax                                            // 0x007dabbe    50
                         call              _jmp_addr_0x007da890                           // 0x007dabbf    e8ccfcffff
                         {disp8} mov       al, byte ptr [ebp + -0x05]                     // 0x007dabc4    8a45fb
                         {disp8} mov       ecx, dword ptr [ebp + 0x1c]                    // 0x007dabc7    8b4d1c
                         and               byte ptr [ebp + -0x05], 0x00                   // 0x007dabca    8065fb00
                         add               esp, 0x14                                      // 0x007dabce    83c414
                         add               al, 0x30                                       // 0x007dabd1    0430
                         {disp8} inc       dword ptr [ebp + 0x1c]                         // 0x007dabd3    ff451c
                         dec               dword ptr [ebp + 0x14]                         // 0x007dabd6    ff4d14
                         mov               byte ptr [ecx], al                             // 0x007dabd9    8801
                         {disp8} jne       _jmp_addr_0x007dab93                           // 0x007dabdb    75b6
                         {disp8} mov       eax, dword ptr [ebp + 0x1c]                    // 0x007dabdd    8b451c
_jmp_addr_0x007dabe0:    {disp8} mov       cl, byte ptr [eax + -0x01]                     // 0x007dabe0    8a48ff
                         dec               eax                                            // 0x007dabe3    48
                         dec               eax                                            // 0x007dabe4    48
                         cmp               cl, 0x35                                       // 0x007dabe5    80f935
                         {disp8} lea       ecx, dword ptr [ebx + 0x04]                    // 0x007dabe8    8d4b04
                         {disp8} jl        _jmp_addr_0x007dac1d                           // 0x007dabeb    7c30
_jmp_addr_0x007dabed:    cmp.s             eax, ecx                                       // 0x007dabed    3bc1
                         .byte             0x72, 0xf// {disp8} jb _jmp_addr_0x007dac00    // 0x007dabef    720f
                         cmp               byte ptr [eax], 0x39                           // 0x007dabf1    803839
                         {disp8} jne       _jmp_addr_0x007dabfc                           // 0x007dabf4    7506
                         mov               byte ptr [eax], 0x30                           // 0x007dabf6    c60030
                         dec               eax                                            // 0x007dabf9    48
                         {disp8} jmp       _jmp_addr_0x007dabed                           // 0x007dabfa    ebf1
_jmp_addr_0x007dabfc:    cmp.s             eax, ecx                                       // 0x007dabfc    3bc1
                         {disp8} jae       _jmp_addr_0x007dac04                           // 0x007dabfe    7304
_jmp_addr_0x007dac00:    inc               eax                                            // 0x007dac00    40
                         inc               word ptr [ebx]                                 // 0x007dac01    66ff03
_jmp_addr_0x007dac04:    inc               byte ptr [eax]                                 // 0x007dac04    fe00
_jmp_addr_0x007dac06:    sub.s             al, bl                                         // 0x007dac06    2ac3
                         sub               al, 0x03                                       // 0x007dac08    2c03
                         {disp8} mov       byte ptr [ebx + 0x03], al                      // 0x007dac0a    884303
                         movsx             eax, al                                        // 0x007dac0d    0fbec0
                         and               byte ptr [eax + ebx * 0x1 + 0x04], 0x00        // 0x007dac10    8064180400
_jmp_addr_0x007dac15:    {disp8} mov       eax, dword ptr [ebp + -0x04]                   // 0x007dac15    8b45fc
_jmp_addr_0x007dac18:    pop               edi                                            // 0x007dac18    5f
                         pop               esi                                            // 0x007dac19    5e
                         pop               ebx                                            // 0x007dac1a    5b
                         leave                                                            // 0x007dac1b    c9
                         ret                                                              // 0x007dac1c    c3
_jmp_addr_0x007dac1d:    cmp.s             eax, ecx                                       // 0x007dac1d    3bc1
                         .byte             0x72, 0xc// {disp8} jb _jmp_addr_0x007dac2d    // 0x007dac1f    720c
                         cmp               byte ptr [eax], 0x30                           // 0x007dac21    803830
                         {disp8} jne       _jmp_addr_0x007dac29                           // 0x007dac24    7503
                         dec               eax                                            // 0x007dac26    48
                         {disp8} jmp       _jmp_addr_0x007dac1d                           // 0x007dac27    ebf4
_jmp_addr_0x007dac29:    cmp.s             eax, ecx                                       // 0x007dac29    3bc1
                         {disp8} jae       _jmp_addr_0x007dac06                           // 0x007dac2b    73d9
_jmp_addr_0x007dac2d:    and               word ptr [ebx], 0x00                           // 0x007dac2d    66832300
                         {disp8} mov       byte ptr [ebx + 0x02], 0x20                    // 0x007dac31    c6430220
                         {disp8} mov       byte ptr [ebx + 0x03], 0x01                    // 0x007dac35    c6430301
                         mov               byte ptr [ecx], 0x30                           // 0x007dac39    c60130
_jmp_addr_0x007dac3c:    and               byte ptr [ebx + 0x05], 0x00                    // 0x007dac3c    80630500
                         push              0x1                                            // 0x007dac40    6a01
                         pop               eax                                            // 0x007dac42    58
                         {disp8} jmp       _jmp_addr_0x007dac18                           // 0x007dac43    ebd3
_jmp_addr_0x007dac45:    push              ebp                                            // 0x007dac45    55
                         mov.s             ebp, esp                                       // 0x007dac46    8bec
                         cmp               dword ptr [data_bytes + 0x5e6a7c], 0x00        // 0x007dac48    833d7ccafa0000
                         push              ebx                                            // 0x007dac4f    53
                         push              esi                                            // 0x007dac50    56
                         {disp8} jne       _jmp_addr_0x007dac62                           // 0x007dac51    750f
                         push              dword ptr [ebp + 0x0c]                         // 0x007dac53    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007dac56    ff7508
                         call              _strchr                                        // 0x007dac59    e892e5feff
                         pop               ecx                                            // 0x007dac5e    59
                         pop               ecx                                            // 0x007dac5f    59
                         {disp8} jmp       _jmp_addr_0x007dacd8                           // 0x007dac60    eb76
_jmp_addr_0x007dac62:    push              0x19                                           // 0x007dac62    6a19
                         call              __lock                                          // 0x007dac64    e84d0affff
                         {disp8} mov       esi, dword ptr [ebp + 0x08]                    // 0x007dac69    8b7508
                         pop               ecx                                            // 0x007dac6c    59
_jmp_addr_0x007dac6d:    movzx             bx, byte ptr [esi]                             // 0x007dac6d    660fb61e
                         test              bx, bx                                         // 0x007dac71    6685db
                         {disp8} je        _jmp_addr_0x007dacc0                           // 0x007dac74    744a
                         movzx             eax, bl                                        // 0x007dac76    0fb6c3
                         test              byte ptr [eax + 0x00facb81], 0x04              // 0x007dac79    f68081cbfa0004
                         {disp8} je        _jmp_addr_0x007dac9c                           // 0x007dac80    741a
                         {disp8} mov       al, byte ptr [esi + 0x01]                      // 0x007dac82    8a4601
                         inc               esi                                            // 0x007dac85    46
                         test              al, al                                         // 0x007dac86    84c0
                         {disp8} je        _jmp_addr_0x007daca7                           // 0x007dac88    741d
                         movzx             ecx, bx                                        // 0x007dac8a    0fb7cb
                         movzx             eax, al                                        // 0x007dac8d    0fb6c0
                         shl               ecx, 8                                         // 0x007dac90    c1e108
                         or.s              ecx, eax                                       // 0x007dac93    0bc8
                         cmp               dword ptr [ebp + 0x0c], ecx                    // 0x007dac95    394d0c
                         {disp8} je        _jmp_addr_0x007dacb3                           // 0x007dac98    7419
                         {disp8} jmp       _jmp_addr_0x007daca4                           // 0x007dac9a    eb08
_jmp_addr_0x007dac9c:    movzx             eax, bx                                        // 0x007dac9c    0fb7c3
                         cmp               dword ptr [ebp + 0x0c], eax                    // 0x007dac9f    39450c
                         {disp8} je        _jmp_addr_0x007dacc0                           // 0x007daca2    741c
_jmp_addr_0x007daca4:    inc               esi                                            // 0x007daca4    46
                         {disp8} jmp       _jmp_addr_0x007dac6d                           // 0x007daca5    ebc6
_jmp_addr_0x007daca7:    push              0x19                                           // 0x007daca7    6a19
                         call              __unlock                                       // 0x007daca9    e8690affff
                         pop               ecx                                            // 0x007dacae    59
                         xor.s             eax, eax                                       // 0x007dacaf    33c0
                         {disp8} jmp       _jmp_addr_0x007dacd8                           // 0x007dacb1    eb25
_jmp_addr_0x007dacb3:    push              0x19                                           // 0x007dacb3    6a19
                         call              __unlock                                       // 0x007dacb5    e85d0affff
                         pop               ecx                                            // 0x007dacba    59
                         {disp8} lea       eax, dword ptr [esi + -0x01]                   // 0x007dacbb    8d46ff
                         {disp8} jmp       _jmp_addr_0x007dacd8                           // 0x007dacbe    eb18
_jmp_addr_0x007dacc0:    push              0x19                                           // 0x007dacc0    6a19
                         call              __unlock                                       // 0x007dacc2    e8500affff
                         {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007dacc7    8b450c
                         pop               ecx                                            // 0x007dacca    59
                         movzx             ecx, bx                                        // 0x007daccb    0fb7cb
                         sub.s             eax, ecx                                       // 0x007dacce    2bc1
                         neg               eax                                            // 0x007dacd0    f7d8
                         sbb.s             eax, eax                                       // 0x007dacd2    1bc0
                         not               eax                                            // 0x007dacd4    f7d0
                         and.s             eax, esi                                       // 0x007dacd6    23c6
_jmp_addr_0x007dacd8:    pop               esi                                            // 0x007dacd8    5e
                         pop               ebx                                            // 0x007dacd9    5b
                         pop               ebp                                            // 0x007dacda    5d
                         ret                                                              // 0x007dacdb    c3
_jmp_addr_0x007dacdc:    push              esi                                            // 0x007dacdc    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                    // 0x007dacdd    8b742408
                         test              esi, esi                                       // 0x007dace1    85f6
                         {disp8} je        _jmp_addr_0x007dad03                           // 0x007dace3    741e
                         push              esi                                            // 0x007dace5    56
                         call              _strlen                                        // 0x007dace6    e805f9feff
                         inc               eax                                            // 0x007daceb    40
                         push              eax                                            // 0x007dacec    50
                         call              _malloc                                        // 0x007daced    e85ab9feff
                         pop               ecx                                            // 0x007dacf2    59
                         test              eax, eax                                       // 0x007dacf3    85c0
                         pop               ecx                                            // 0x007dacf5    59
                         {disp8} je        _jmp_addr_0x007dad03                           // 0x007dacf6    740b
                         push              esi                                            // 0x007dacf8    56
                         push              eax                                            // 0x007dacf9    50
                         call              _strcpy                                        // 0x007dacfa    e871a3ffff
                         pop               ecx                                            // 0x007dacff    59
                         pop               ecx                                            // 0x007dad00    59
                         pop               esi                                            // 0x007dad01    5e
                         ret                                                              // 0x007dad02    c3
_jmp_addr_0x007dad03:    xor.s             eax, eax                                       // 0x007dad03    33c0
                         pop               esi                                            // 0x007dad05    5e
                         ret                                                              // 0x007dad06    c3
                         push              esi                                            // 0x007dad07    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                    // 0x007dad08    8b742408
                         cmp               esi, dword ptr [data_bytes + 0x5e6a60]         // 0x007dad0c    3b3560cafa00
                         {disp8} jae       _jmp_addr_0x007dad50                           // 0x007dad12    733c
                         mov.s             ecx, esi                                       // 0x007dad14    8bce
                         mov.s             eax, esi                                       // 0x007dad16    8bc6
                         sar               ecx, 5                                         // 0x007dad18    c1f905
                         and               eax, 0x1f                                      // 0x007dad1b    83e01f
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007dad1e    8b0c8d60c9fa00
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007dad25    8d04c0
                         test              byte ptr [ecx + eax * 0x4 + 0x04], 0x01        // 0x007dad28    f644810401
                         {disp8} je        _jmp_addr_0x007dad50                           // 0x007dad2d    7421
                         push              edi                                            // 0x007dad2f    57
                         push              esi                                            // 0x007dad30    56
                         call              __lock_fhandle                                 // 0x007dad31    e827edffff
                         push              dword ptr [esp + 0x14]                         // 0x007dad36    ff742414
                         push              esi                                            // 0x007dad3a    56
                         call              _jmp_addr_0x007dad60                           // 0x007dad3b    e820000000
                         push              esi                                            // 0x007dad40    56
                         mov.s             edi, eax                                       // 0x007dad41    8bf8
                         call              __unlock_fhandle                               // 0x007dad43    e874edffff
                         add               esp, 0x10                                      // 0x007dad48    83c410
                         mov.s             eax, edi                                       // 0x007dad4b    8bc7
                         pop               edi                                            // 0x007dad4d    5f
                         pop               esi                                            // 0x007dad4e    5e
                         ret                                                              // 0x007dad4f    c3
_jmp_addr_0x007dad50:    call              __errno                                        // 0x007dad50    e82ce3feff
                         mov               dword ptr [eax], 0x00000009                    // 0x007dad55    c70009000000
                         or                eax, -0x1                                      // 0x007dad5b    83c8ff
                         pop               esi                                            // 0x007dad5e    5e
                         ret                                                              // 0x007dad5f    c3
_jmp_addr_0x007dad60:    push              ebp                                            // 0x007dad60    55
                         mov.s             ebp, esp                                       // 0x007dad61    8bec
                         mov               eax, 0x00001004                                // 0x007dad63    b804100000
                         call              _jmp_addr_0x007c6eb0                           // 0x007dad68    e843c1feff
                         push              ebx                                            // 0x007dad6d    53
                         push              esi                                            // 0x007dad6e    56
                         xor.s             esi, esi                                       // 0x007dad6f    33f6
                         push              0x1                                            // 0x007dad71    6a01
                         push              esi                                            // 0x007dad73    56
                         push              dword ptr [ebp + 0x08]                         // 0x007dad74    ff7508
                         call              __lseek_lk                                     // 0x007dad77    e862a0ffff
                         or                ebx, 0xffffffff                                // 0x007dad7c    83cbff
                         add               esp, 0x0c                                      // 0x007dad7f    83c40c
                         cmp.s             eax, ebx                                       // 0x007dad82    3bc3
                         {disp8} mov       dword ptr [ebp + -0x04], eax                   // 0x007dad84    8945fc
                         {disp32} je       _jmp_addr_0x007dae7f                           // 0x007dad87    0f84f2000000
                         push              0x2                                            // 0x007dad8d    6a02
                         push              esi                                            // 0x007dad8f    56
                         push              dword ptr [ebp + 0x08]                         // 0x007dad90    ff7508
                         call              __lseek_lk                                     // 0x007dad93    e846a0ffff
                         add               esp, 0x0c                                      // 0x007dad98    83c40c
                         cmp.s             eax, ebx                                       // 0x007dad9b    3bc3
                         {disp32} je       _jmp_addr_0x007dae7f                           // 0x007dad9d    0f84dc000000
                         push              edi                                            // 0x007dada3    57
                         {disp8} mov       edi, dword ptr [ebp + 0x0c]                    // 0x007dada4    8b7d0c
                         sub.s             edi, eax                                       // 0x007dada7    2bf8
                         test              edi, edi                                       // 0x007dada9    85ff
                         {disp8} jle       _jmp_addr_0x007dae22                           // 0x007dadab    7e75
                         mov               ebx, 0x00001000                                // 0x007dadad    bb00100000
                         {disp32} lea      eax, dword ptr [ebp + -0x00001004]             // 0x007dadb2    8d85fcefffff
                         push              ebx                                            // 0x007dadb8    53
                         push              esi                                            // 0x007dadb9    56
                         push              eax                                            // 0x007dadba    50
                         call              _memset                                        // 0x007dadbb    e84003ffff
                         push              0x00008000                                     // 0x007dadc0    6800800000
                         push              dword ptr [ebp + 0x08]                         // 0x007dadc5    ff7508
                         call              _jmp_addr_0x007db3ab                           // 0x007dadc8    e8de050000
                         add               esp, 0x14                                      // 0x007dadcd    83c414
                         {disp8} mov       dword ptr [ebp + 0x0c], eax                    // 0x007dadd0    89450c
_jmp_addr_0x007dadd3:    cmp.s             edi, ebx                                       // 0x007dadd3    3bfb
                         mov.s             eax, ebx                                       // 0x007dadd5    8bc3
                         {disp8} jge       _jmp_addr_0x007daddb                           // 0x007dadd7    7d02
                         mov.s             eax, edi                                       // 0x007dadd9    8bc7
_jmp_addr_0x007daddb:    push              eax                                            // 0x007daddb    50
                         {disp32} lea      eax, dword ptr [ebp + -0x00001004]             // 0x007daddc    8d85fcefffff
                         push              eax                                            // 0x007dade2    50
                         push              dword ptr [ebp + 0x08]                         // 0x007dade3    ff7508
                         call              _jmp_addr_0x007d211b                           // 0x007dade6    e83073ffff
                         add               esp, 0x0c                                      // 0x007dadeb    83c40c
                         cmp               eax, -0x01                                     // 0x007dadee    83f8ff
                         {disp8} je        _jmp_addr_0x007dadfb                           // 0x007dadf1    7408
                         sub.s             edi, eax                                       // 0x007dadf3    2bf8
                         test              edi, edi                                       // 0x007dadf5    85ff
                         {disp8} jle       _jmp_addr_0x007dae13                           // 0x007dadf7    7e1a
                         {disp8} jmp       _jmp_addr_0x007dadd3                           // 0x007dadf9    ebd8
_jmp_addr_0x007dadfb:    call              ___doserrno                                    // 0x007dadfb    e88ae2feff
                         cmp               dword ptr [eax], 0x05                          // 0x007dae00    833805
                         {disp8} jne       _jmp_addr_0x007dae10                           // 0x007dae03    750b
                         call              __errno                                        // 0x007dae05    e877e2feff
                         mov               dword ptr [eax], 0x0000000d                    // 0x007dae0a    c7000d000000
_jmp_addr_0x007dae10:    or                esi, 0xffffffff                                // 0x007dae10    83ceff
_jmp_addr_0x007dae13:    push              dword ptr [ebp + 0x0c]                         // 0x007dae13    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007dae16    ff7508
                         call              _jmp_addr_0x007db3ab                           // 0x007dae19    e88d050000
                         pop               ecx                                            // 0x007dae1e    59
                         pop               ecx                                            // 0x007dae1f    59
                         {disp8} jmp       _jmp_addr_0x007dae6a                           // 0x007dae20    eb48
_jmp_addr_0x007dae22:    {disp8} jge       _jmp_addr_0x007dae6a                           // 0x007dae22    7d46
                         push              0x0                                            // 0x007dae24    6a00
                         push              dword ptr [ebp + 0x0c]                         // 0x007dae26    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007dae29    ff7508
                         call              __lseek_lk                                     // 0x007dae2c    e8ad9fffff
                         push              dword ptr [ebp + 0x08]                         // 0x007dae31    ff7508
                         call              _jmp_addr_0x007d9974                           // 0x007dae34    e83bebffff
                         add               esp, 0x10                                      // 0x007dae39    83c410
                         push              eax                                            // 0x007dae3c    50
                         call              dword ptr [__imp__SetEndOfFile@4]              // 0x007dae3d    ff150c928a00
                         mov.s             esi, eax                                       // 0x007dae43    8bf0
                         neg               esi                                            // 0x007dae45    f7de
                         sbb.s             esi, esi                                       // 0x007dae47    1bf6
                         neg               esi                                            // 0x007dae49    f7de
                         dec               esi                                            // 0x007dae4b    4e
                         cmp.s             esi, ebx                                       // 0x007dae4c    3bf3
                         {disp8} jne       _jmp_addr_0x007dae6a                           // 0x007dae4e    751a
                         call              __errno                                        // 0x007dae50    e82ce2feff
                         mov               dword ptr [eax], 0x0000000d                    // 0x007dae55    c7000d000000
                         call              dword ptr [__imp__GetLastError@0]              // 0x007dae5b    ff15fc918a00
                         mov.s             edi, eax                                       // 0x007dae61    8bf8
                         call              ___doserrno                                    // 0x007dae63    e822e2feff
                         mov               dword ptr [eax], edi                           // 0x007dae68    8938
_jmp_addr_0x007dae6a:    push              0x0                                            // 0x007dae6a    6a00
                         push              dword ptr [ebp + -0x04]                        // 0x007dae6c    ff75fc
                         push              dword ptr [ebp + 0x08]                         // 0x007dae6f    ff7508
                         call              __lseek_lk                                     // 0x007dae72    e8679fffff
                         add               esp, 0x0c                                      // 0x007dae77    83c40c
                         mov.s             eax, esi                                       // 0x007dae7a    8bc6
                         pop               edi                                            // 0x007dae7c    5f
                         {disp8} jmp       _jmp_addr_0x007dae81                           // 0x007dae7d    eb02
_jmp_addr_0x007dae7f:    mov.s             eax, ebx                                       // 0x007dae7f    8bc3
_jmp_addr_0x007dae81:    pop               esi                                            // 0x007dae81    5e
                         pop               ebx                                            // 0x007dae82    5b
                         leave                                                            // 0x007dae83    c9
                         ret                                                              // 0x007dae84    c3
_jmp_addr_0x007dae85:    push              ebp                                            // 0x007dae85    55
                         mov.s             ebp, esp                                       // 0x007dae86    8bec
                         sub               esp, 0x24                                      // 0x007dae88    83ec24
                         push              ebx                                            // 0x007dae8b    53
                         {disp8} mov       ebx, dword ptr [ebp + 0x0c]                    // 0x007dae8c    8b5d0c
                         push              esi                                            // 0x007dae8f    56
                         {disp8} mov       esi, dword ptr [ebp + 0x08]                    // 0x007dae90    8b7508
                         {disp8} mov       cx, word ptr [ebx + 0x0a]                      // 0x007dae93    668b4b0a
                         xor.s             eax, eax                                       // 0x007dae97    33c0
                         push              edi                                            // 0x007dae99    57
                         {disp8} mov       dword ptr [ebp + -0x14], eax                   // 0x007dae9a    8945ec
                         {disp8} mov       dword ptr [ebp + -0x24], eax                   // 0x007dae9d    8945dc
                         {disp8} mov       dword ptr [ebp + -0x20], eax                   // 0x007daea0    8945e0
                         {disp8} mov       dword ptr [ebp + -0x1c], eax                   // 0x007daea3    8945e4
                         {disp8} mov       ax, word ptr [esi + 0x0a]                      // 0x007daea6    668b460a
                         mov.s             edi, ecx                                       // 0x007daeaa    8bf9
                         mov               edx, 0x00007fff                                // 0x007daeac    baff7f0000
                         xor.s             edi, eax                                       // 0x007daeb1    33f8
                         and.s             eax, edx                                       // 0x007daeb3    23c2
                         and.s             ecx, edx                                       // 0x007daeb5    23ca
                         and               edi, 0x00008000                                // 0x007daeb7    81e700800000
                         cmp               ax, 0x7fff                                     // 0x007daebd    663dff7f
                         lea               edx, dword ptr [ecx + eax * 0x1]               // 0x007daec1    8d1401
                         {disp8} mov       dword ptr [ebp + 0x08], edx                    // 0x007daec4    895508
                         {disp32} jae      _jmp_addr_0x007db085                           // 0x007daec7    0f83b8010000
                         cmp               cx, 0x7fff                                     // 0x007daecd    6681f9ff7f
                         {disp32} jae      _jmp_addr_0x007db085                           // 0x007daed2    0f83ad010000
                         cmp               dx, -0x4003                                    // 0x007daed8    6681fafdbf
                         {disp32} ja       _jmp_addr_0x007db085                           // 0x007daedd    0f87a2010000
                         cmp               dx, 0x3fbf                                     // 0x007daee3    6681fabf3f
                         {disp8} ja        _jmp_addr_0x007daeee                           // 0x007daee8    7704
                         xor.s             eax, eax                                       // 0x007daeea    33c0
                         {disp8} jmp       _jmp_addr_0x007daf28                           // 0x007daeec    eb3a
_jmp_addr_0x007daeee:    test              ax, ax                                         // 0x007daeee    6685c0
                         mov               edx, 0x7fffffff                                // 0x007daef1    baffffff7f
                         {disp8} jne       _jmp_addr_0x007daf10                           // 0x007daef6    7518
                         {disp8} inc       dword ptr [ebp + 0x08]                         // 0x007daef8    ff4508
                         test              dword ptr [esi + 0x08], edx                    // 0x007daefb    855608
                         {disp8} jne       _jmp_addr_0x007daf10                           // 0x007daefe    7510
                         xor.s             eax, eax                                       // 0x007daf00    33c0
                         cmp               dword ptr [esi + 0x04], eax                    // 0x007daf02    394604
                         {disp8} jne       _jmp_addr_0x007daf12                           // 0x007daf05    750b
                         cmp               dword ptr [esi], eax                           // 0x007daf07    3906
                         {disp8} jne       _jmp_addr_0x007daf12                           // 0x007daf09    7507
                         {disp32} jmp      _jmp_addr_0x007db07f                           // 0x007daf0b    e96f010000
_jmp_addr_0x007daf10:    xor.s             eax, eax                                       // 0x007daf10    33c0
_jmp_addr_0x007daf12:    cmp.s             cx, ax                                         // 0x007daf12    663bc8
                         {disp8} jne       _jmp_addr_0x007daf35                           // 0x007daf15    751e
                         {disp8} inc       dword ptr [ebp + 0x08]                         // 0x007daf17    ff4508
                         test              dword ptr [ebx + 0x08], edx                    // 0x007daf1a    855308
                         {disp8} jne       _jmp_addr_0x007daf35                           // 0x007daf1d    7516
                         cmp               dword ptr [ebx + 0x04], eax                    // 0x007daf1f    394304
                         {disp8} jne       _jmp_addr_0x007daf35                           // 0x007daf22    7511
                         cmp               dword ptr [ebx], eax                           // 0x007daf24    3903
                         {disp8} jne       _jmp_addr_0x007daf35                           // 0x007daf26    750d
_jmp_addr_0x007daf28:    {disp8} mov       dword ptr [esi + 0x08], eax                    // 0x007daf28    894608
                         {disp8} mov       dword ptr [esi + 0x04], eax                    // 0x007daf2b    894604
                         mov               dword ptr [esi], eax                           // 0x007daf2e    8906
                         {disp32} jmp      _jmp_addr_0x007db0a0                           // 0x007daf30    e96b010000
_jmp_addr_0x007daf35:    {disp8} mov       dword ptr [ebp + -0x10], eax                   // 0x007daf35    8945f0
                         {disp8} lea       eax, dword ptr [ebp + -0x20]                   // 0x007daf38    8d45e0
                         {disp8} mov       dword ptr [ebp + -0x04], eax                   // 0x007daf3b    8945fc
                         {disp8} mov       dword ptr [ebp + 0x0c], 0x00000005             // 0x007daf3e    c7450c05000000
_jmp_addr_0x007daf45:    {disp8} mov       eax, dword ptr [ebp + -0x10]                   // 0x007daf45    8b45f0
                         add.s             eax, eax                                       // 0x007daf48    03c0
                         cmp               dword ptr [ebp + 0x0c], 0x00                   // 0x007daf4a    837d0c00
                         {disp8} jle       _jmp_addr_0x007daf99                           // 0x007daf4e    7e49
                         add.s             eax, esi                                       // 0x007daf50    03c6
                         {disp8} lea       ecx, dword ptr [ebx + 0x08]                    // 0x007daf52    8d4b08
                         {disp8} mov       dword ptr [ebp + -0x08], eax                   // 0x007daf55    8945f8
                         {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007daf58    8b450c
                         {disp8} mov       dword ptr [ebp + -0x0c], ecx                   // 0x007daf5b    894df4
                         {disp8} mov       dword ptr [ebp + -0x18], eax                   // 0x007daf5e    8945e8
_jmp_addr_0x007daf61:    {disp8} mov       eax, dword ptr [ebp + -0x08]                   // 0x007daf61    8b45f8
                         {disp8} mov       ecx, dword ptr [ebp + -0x0c]                   // 0x007daf64    8b4df4
                         movzx             eax, word ptr [eax]                            // 0x007daf67    0fb700
                         movzx             ecx, word ptr [ecx]                            // 0x007daf6a    0fb709
                         imul              eax, ecx                                       // 0x007daf6d    0fafc1
                         {disp8} mov       ecx, dword ptr [ebp + -0x04]                   // 0x007daf70    8b4dfc
                         add               ecx, -0x4                                      // 0x007daf73    83c1fc
                         push              ecx                                            // 0x007daf76    51
                         push              eax                                            // 0x007daf77    50
                         push              dword ptr [ecx]                                // 0x007daf78    ff31
                         call              _jmp_addr_0x007da811                           // 0x007daf7a    e892f8ffff
                         add               esp, 0x0c                                      // 0x007daf7f    83c40c
                         test              eax, eax                                       // 0x007daf82    85c0
                         {disp8} je        _jmp_addr_0x007daf8c                           // 0x007daf84    7406
                         {disp8} mov       eax, dword ptr [ebp + -0x04]                   // 0x007daf86    8b45fc
                         inc               word ptr [eax]                                 // 0x007daf89    66ff00
_jmp_addr_0x007daf8c:    add               dword ptr [ebp + -0x08], 0x02                  // 0x007daf8c    8345f802
                         sub               dword ptr [ebp + -0x0c], 0x02                  // 0x007daf90    836df402
                         dec               dword ptr [ebp + -0x18]                        // 0x007daf94    ff4de8
                         {disp8} jne       _jmp_addr_0x007daf61                           // 0x007daf97    75c8
_jmp_addr_0x007daf99:    add               dword ptr [ebp + -0x04], 0x02                  // 0x007daf99    8345fc02
                         {disp8} inc       dword ptr [ebp + -0x10]                        // 0x007daf9d    ff45f0
                         dec               dword ptr [ebp + 0x0c]                         // 0x007dafa0    ff4d0c
                         cmp               dword ptr [ebp + 0x0c], 0x00                   // 0x007dafa3    837d0c00
                         {disp8} jg        _jmp_addr_0x007daf45                           // 0x007dafa7    7f9c
                         add               dword ptr [ebp + 0x08], 0x0000c002             // 0x007dafa9    81450802c00000
                         cmp               word ptr [ebp + 0x08], 0x00                    // 0x007dafb0    66837d0800
                         {disp8} jle       _jmp_addr_0x007dafdc                           // 0x007dafb5    7e25
_jmp_addr_0x007dafb7:    test              byte ptr [ebp + -0x19], -0x80                  // 0x007dafb7    f645e780
                         {disp8} jne       _jmp_addr_0x007dafd5                           // 0x007dafbb    7518
                         {disp8} lea       eax, dword ptr [ebp + -0x24]                   // 0x007dafbd    8d45dc
                         push              eax                                            // 0x007dafc0    50
                         call              _jmp_addr_0x007da890                           // 0x007dafc1    e8caf8ffff
                         add               dword ptr [ebp + 0x08], 0x0000ffff             // 0x007dafc6    814508ffff0000
                         pop               ecx                                            // 0x007dafcd    59
                         cmp               word ptr [ebp + 0x08], 0x00                    // 0x007dafce    66837d0800
                         {disp8} jg        _jmp_addr_0x007dafb7                           // 0x007dafd3    7fe2
_jmp_addr_0x007dafd5:    cmp               word ptr [ebp + 0x08], 0x00                    // 0x007dafd5    66837d0800
                         {disp8} jg        _jmp_addr_0x007db015                           // 0x007dafda    7f39
_jmp_addr_0x007dafdc:    add               dword ptr [ebp + 0x08], 0x0000ffff             // 0x007dafdc    814508ffff0000
                         cmp               word ptr [ebp + 0x08], 0x00                    // 0x007dafe3    66837d0800
                         {disp8} jge       _jmp_addr_0x007db015                           // 0x007dafe8    7d2b
                         movsx             eax, word ptr [ebp + 0x08]                     // 0x007dafea    0fbf4508
                         neg               eax                                            // 0x007dafee    f7d8
                         add               dword ptr [ebp + 0x08], eax                    // 0x007daff0    014508
                         mov.s             ebx, eax                                       // 0x007daff3    8bd8
_jmp_addr_0x007daff5:    test              byte ptr [ebp + -0x24], 0x01                   // 0x007daff5    f645dc01
                         {disp8} je        _jmp_addr_0x007daffe                           // 0x007daff9    7403
                         {disp8} inc       dword ptr [ebp + -0x14]                        // 0x007daffb    ff45ec
_jmp_addr_0x007daffe:    {disp8} lea       eax, dword ptr [ebp + -0x24]                   // 0x007daffe    8d45dc
                         push              eax                                            // 0x007db001    50
                         call              _jmp_addr_0x007da8be                           // 0x007db002    e8b7f8ffff
                         dec               ebx                                            // 0x007db007    4b
                         pop               ecx                                            // 0x007db008    59
                         {disp8} jne       _jmp_addr_0x007daff5                           // 0x007db009    75ea
                         cmp               dword ptr [ebp + -0x14], 0x00                  // 0x007db00b    837dec00
                         {disp8} je        _jmp_addr_0x007db015                           // 0x007db00f    7404
                         or                byte ptr [ebp - 0x24], 1                       // 0x007db011    804ddc01
_jmp_addr_0x007db015:    cmp               word ptr [ebp + -0x24], -0x8000                // 0x007db015    66817ddc0080
                         {disp8} ja        _jmp_addr_0x007db02c                           // 0x007db01b    770f
                         {disp8} mov       eax, dword ptr [ebp + -0x24]                   // 0x007db01d    8b45dc
                         and               eax, 0x0001ffff                                // 0x007db020    25ffff0100
                         cmp               eax, 0x00018000                                // 0x007db025    3d00800100
                         {disp8} jne       _jmp_addr_0x007db061                           // 0x007db02a    7535
_jmp_addr_0x007db02c:    cmp               dword ptr [ebp + -0x22], -0x01                 // 0x007db02c    837ddeff
                         {disp8} jne       _jmp_addr_0x007db05e                           // 0x007db030    752c
                         and               dword ptr [ebp + -0x22], 0x00                  // 0x007db032    8365de00
                         cmp               dword ptr [ebp + -0x1e], -0x01                 // 0x007db036    837de2ff
                         {disp8} jne       _jmp_addr_0x007db059                           // 0x007db03a    751d
                         and               dword ptr [ebp + -0x1e], 0x00                  // 0x007db03c    8365e200
                         .byte             0x66, 0x81, 0x7d, 0xe6, 0xff, 0xff// cmp word ptr [ebp + -0x1a], -0x0001 // 0x007db040    66817de6ffff
                         {disp8} jne       _jmp_addr_0x007db053                           // 0x007db046    750b
                         {disp8} inc       dword ptr [ebp + 0x08]                         // 0x007db048    ff4508
                         {disp8} mov       word ptr [ebp + -0x1a], -0x8000                // 0x007db04b    66c745e60080
                         {disp8} jmp       _jmp_addr_0x007db061                           // 0x007db051    eb0e
_jmp_addr_0x007db053:    {disp8} inc       word ptr [ebp + -0x1a]                         // 0x007db053    66ff45e6
                         {disp8} jmp       _jmp_addr_0x007db061                           // 0x007db057    eb08
_jmp_addr_0x007db059:    {disp8} inc       dword ptr [ebp + -0x1e]                        // 0x007db059    ff45e2
                         {disp8} jmp       _jmp_addr_0x007db061                           // 0x007db05c    eb03
_jmp_addr_0x007db05e:    {disp8} inc       dword ptr [ebp + -0x22]                        // 0x007db05e    ff45de
_jmp_addr_0x007db061:    {disp8} mov       eax, dword ptr [ebp + 0x08]                    // 0x007db061    8b4508
                         cmp               ax, 0x7fff                                     // 0x007db064    663dff7f
                         {disp8} jae       _jmp_addr_0x007db085                           // 0x007db068    731b
                         {disp8} mov       cx, word ptr [ebp + -0x22]                     // 0x007db06a    668b4dde
                         or.s              eax, edi                                       // 0x007db06e    0bc7
                         mov               word ptr [esi], cx                             // 0x007db070    66890e
                         {disp8} mov       ecx, dword ptr [ebp + -0x20]                   // 0x007db073    8b4de0
                         {disp8} mov       dword ptr [esi + 0x02], ecx                    // 0x007db076    894e02
                         {disp8} mov       ecx, dword ptr [ebp + -0x1c]                   // 0x007db079    8b4de4
                         {disp8} mov       dword ptr [esi + 0x06], ecx                    // 0x007db07c    894e06
_jmp_addr_0x007db07f:    {disp8} mov       word ptr [esi + 0x0a], ax                      // 0x007db07f    6689460a
                         {disp8} jmp       _jmp_addr_0x007db0a0                           // 0x007db083    eb1b
_jmp_addr_0x007db085:    neg               di                                             // 0x007db085    66f7df
                         sbb.s             edi, edi                                       // 0x007db088    1bff
                         and               dword ptr [esi + 0x04], 0x00                   // 0x007db08a    83660400
                         and               edi, 0x80000000                                // 0x007db08e    81e700000080
                         add               edi, 0x7fff8000                                // 0x007db094    81c70080ff7f
                         and               dword ptr [esi], 0x00                          // 0x007db09a    832600
                         {disp8} mov       dword ptr [esi + 0x08], edi                    // 0x007db09d    897e08
_jmp_addr_0x007db0a0:    pop               edi                                            // 0x007db0a0    5f
                         pop               esi                                            // 0x007db0a1    5e
                         pop               ebx                                            // 0x007db0a2    5b
                         leave                                                            // 0x007db0a3    c9
                         ret                                                              // 0x007db0a4    c3
_jmp_addr_0x007db0a5:    push              ebp                                            // 0x007db0a5    55
                         mov.s             ebp, esp                                       // 0x007db0a6    8bec
                         sub               esp, 0x0c                                      // 0x007db0a8    83ec0c
                         push              ebx                                            // 0x007db0ab    53
                         mov               ebx, 0x00c30cb0                                // 0x007db0ac    bbb00cc300
                         xor.s             ecx, ecx                                       // 0x007db0b1    33c9
                         sub               ebx, 0x60                                      // 0x007db0b3    83eb60
                         cmp               dword ptr [ebp + 0x0c], ecx                    // 0x007db0b6    394d0c
                         {disp8} je        _jmp_addr_0x007db11e                           // 0x007db0b9    7463
                         {disp8} jge       _jmp_addr_0x007db0cd                           // 0x007db0bb    7d10
                         {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007db0bd    8b450c
                         mov               ebx, 0x00c30e10                                // 0x007db0c0    bb100ec300
                         neg               eax                                            // 0x007db0c5    f7d8
                         {disp8} mov       dword ptr [ebp + 0x0c], eax                    // 0x007db0c7    89450c
                         sub               ebx, 0x60                                      // 0x007db0ca    83eb60
_jmp_addr_0x007db0cd:    cmp               dword ptr [ebp + 0x10], ecx                    // 0x007db0cd    394d10
                         {disp8} jne       _jmp_addr_0x007db0d8                           // 0x007db0d0    7506
                         {disp8} mov       eax, dword ptr [ebp + 0x08]                    // 0x007db0d2    8b4508
                         mov               word ptr [eax], cx                             // 0x007db0d5    668908
_jmp_addr_0x007db0d8:    cmp               dword ptr [ebp + 0x0c], ecx                    // 0x007db0d8    394d0c
                         {disp8} je        _jmp_addr_0x007db11e                           // 0x007db0db    7441
                         push              esi                                            // 0x007db0dd    56
                         push              edi                                            // 0x007db0de    57
_jmp_addr_0x007db0df:    {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007db0df    8b450c
                         add               ebx, 0x54                                      // 0x007db0e2    83c354
                         sar               dword ptr [ebp + 0xc], 3                       // 0x007db0e5    c17d0c03
                         and               eax, 0x07                                      // 0x007db0e9    83e007
                         cmp.s             eax, ecx                                       // 0x007db0ec    3bc1
                         {disp8} je        _jmp_addr_0x007db117                           // 0x007db0ee    7427
                         lea               eax, dword ptr [eax + eax * 0x2]               // 0x007db0f0    8d0440
                         cmp               word ptr [ebx + eax * 0x4], -0x8000            // 0x007db0f3    66813c830080
                         lea               esi, dword ptr [ebx + eax * 0x4]               // 0x007db0f9    8d3483
                         .byte             0x72, 0xc// {disp8} jb _jmp_addr_0x007db10a    // 0x007db0fc    720c
                         {disp8} lea       edi, dword ptr [ebp + -0x0c]                   // 0x007db0fe    8d7df4
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007db101    a5
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007db102    a5
                         movsd             es:[edi], dword ptr ds:[esi]                   // 0x007db103    a5
                         dec               dword ptr [ebp + -0x0a]                        // 0x007db104    ff4df6
                         {disp8} lea       esi, dword ptr [ebp + -0x0c]                   // 0x007db107    8d75f4
_jmp_addr_0x007db10a:    push              esi                                            // 0x007db10a    56
                         push              dword ptr [ebp + 0x08]                         // 0x007db10b    ff7508
                         call              _jmp_addr_0x007dae85                           // 0x007db10e    e872fdffff
                         pop               ecx                                            // 0x007db113    59
                         pop               ecx                                            // 0x007db114    59
                         xor.s             ecx, ecx                                       // 0x007db115    33c9
_jmp_addr_0x007db117:    cmp               dword ptr [ebp + 0x0c], ecx                    // 0x007db117    394d0c
                         {disp8} jne       _jmp_addr_0x007db0df                           // 0x007db11a    75c3
                         pop               edi                                            // 0x007db11c    5f
                         pop               esi                                            // 0x007db11d    5e
_jmp_addr_0x007db11e:    pop               ebx                                            // 0x007db11e    5b
                         leave                                                            // 0x007db11f    c9
                         ret                                                              // 0x007db120    c3
_jmp_addr_0x007db121:    push              ebp                                            // 0x007db121    55
                         mov.s             ebp, esp                                       // 0x007db122    8bec
                         push              -0x1                                           // 0x007db124    6aff
                         push              0x009a1600                                     // 0x007db126    6800169a00
                         push              0x007cd8ac /*__except_handler3*/               // 0x007db12b    68acd87c00
                         {disp32} mov      eax, fs:[0x0]                                  // 0x007db130    64a100000000
                         push              eax                                            // 0x007db136    50
                         {disp32} mov      fs:[0x0], esp                                  // 0x007db137    64892500000000
                         sub               esp, 0x14                                      // 0x007db13e    83ec14
                         push              ebx                                            // 0x007db141    53
                         push              esi                                            // 0x007db142    56
                         push              edi                                            // 0x007db143    57
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db144    8965e8
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be570]         // 0x007db147    a17045e800
                         xor.s             edi, edi                                       // 0x007db14c    33ff
                         cmp.s             eax, edi                                       // 0x007db14e    3bc7
                         {disp8} jne       _jmp_addr_0x007db180                           // 0x007db150    752e
                         push              edi                                            // 0x007db152    57
                         push              edi                                            // 0x007db153    57
                         push              0x1                                            // 0x007db154    6a01
                         push              edi                                            // 0x007db156    57
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db157    ff1560928a00
                         test              eax, eax                                       // 0x007db15d    85c0
                         {disp8} je        _jmp_addr_0x007db165                           // 0x007db15f    7404
                         push              0x1                                            // 0x007db161    6a01
                         {disp8} jmp       _jmp_addr_0x007db17a                           // 0x007db163    eb15
_jmp_addr_0x007db165:    push              edi                                            // 0x007db165    57
                         push              edi                                            // 0x007db166    57
                         push              0x1                                            // 0x007db167    6a01
                         push              edi                                            // 0x007db169    57
                         call              dword ptr [__imp__GetLocaleInfoA@4]            // 0x007db16a    ff1580928a00
                         test              eax, eax                                       // 0x007db170    85c0
                         {disp32} je       _jmp_addr_0x007db220                           // 0x007db172    0f84a8000000
                         push              0x2                                            // 0x007db178    6a02
_jmp_addr_0x007db17a:    pop               eax                                            // 0x007db17a    58
                         {disp32} mov      dword ptr [data_bytes + 0x4be570], eax         // 0x007db17b    a37045e800
_jmp_addr_0x007db180:    cmp               eax, 0x01                                      // 0x007db180    83f801
                         {disp8} jne       _jmp_addr_0x007db19c                           // 0x007db183    7517
                         push              dword ptr [ebp + 0x14]                         // 0x007db185    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db188    ff7510
                         push              dword ptr [ebp + 0x0c]                         // 0x007db18b    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db18e    ff7508
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db191    ff1560928a00
                         {disp32} jmp      _jmp_addr_0x007db222                           // 0x007db197    e986000000
_jmp_addr_0x007db19c:    cmp               eax, 0x02                                      // 0x007db19c    83f802
                         {disp8} jne       _jmp_addr_0x007db220                           // 0x007db19f    757f
                         cmp               dword ptr [ebp + 0x18], edi                    // 0x007db1a1    397d18
                         {disp8} jne       _jmp_addr_0x007db1ae                           // 0x007db1a4    7508
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be2b0]         // 0x007db1a6    a1b042e800
                         {disp8} mov       dword ptr [ebp + 0x18], eax                    // 0x007db1ab    894518
_jmp_addr_0x007db1ae:    push              edi                                            // 0x007db1ae    57
                         push              edi                                            // 0x007db1af    57
                         push              dword ptr [ebp + 0x0c]                         // 0x007db1b0    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db1b3    ff7508
                         call              dword ptr [__imp__GetLocaleInfoA@4]            // 0x007db1b6    ff1580928a00
                         {disp8} mov       dword ptr [ebp + -0x1c], eax                   // 0x007db1bc    8945e4
                         cmp.s             eax, edi                                       // 0x007db1bf    3bc7
                         {disp8} je        _jmp_addr_0x007db220                           // 0x007db1c1    745d
                         {disp8} mov       dword ptr [ebp + -0x04], edi                   // 0x007db1c3    897dfc
                         add               eax, 0x03                                      // 0x007db1c6    83c003
                         and               al, -0x04                                      // 0x007db1c9    24fc
                         call              _jmp_addr_0x007c6eb0                           // 0x007db1cb    e8e0bcfeff
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db1d0    8965e8
                         mov.s             esi, esp                                       // 0x007db1d3    8bf4
                         {disp8} mov       dword ptr [ebp + -0x20], esi                   // 0x007db1d5    8975e0
                         {disp8} jmp       _jmp_addr_0x007db1e5                           // 0x007db1d8    eb0b
                         push              0x1                                            // 0x007db1da    6a01
                         pop               eax                                            // 0x007db1dc    58
                         ret                                                              // 0x007db1dd    c3
                         {disp8} mov       esp, dword ptr [ebp + -0x18]                   // 0x007db1de    8b65e8
                         xor.s             edi, edi                                       // 0x007db1e1    33ff
                         xor.s             esi, esi                                       // 0x007db1e3    33f6
_jmp_addr_0x007db1e5:    or                dword ptr [ebp - 4], 0xffffffff                // 0x007db1e5    834dfcff
                         cmp.s             esi, edi                                       // 0x007db1e9    3bf7
                         {disp8} je        _jmp_addr_0x007db220                           // 0x007db1eb    7433
                         push              dword ptr [ebp + -0x1c]                        // 0x007db1ed    ff75e4
                         push              esi                                            // 0x007db1f0    56
                         push              dword ptr [ebp + 0x0c]                         // 0x007db1f1    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db1f4    ff7508
                         call              dword ptr [__imp__GetLocaleInfoA@4]            // 0x007db1f7    ff1580928a00
                         test              eax, eax                                       // 0x007db1fd    85c0
                         {disp8} je        _jmp_addr_0x007db220                           // 0x007db1ff    741f
                         cmp               dword ptr [ebp + 0x14], edi                    // 0x007db201    397d14
                         {disp8} jne       _jmp_addr_0x007db20a                           // 0x007db204    7504
                         push              edi                                            // 0x007db206    57
                         push              edi                                            // 0x007db207    57
                         {disp8} jmp       _jmp_addr_0x007db210                           // 0x007db208    eb06
_jmp_addr_0x007db20a:    push              dword ptr [ebp + 0x14]                         // 0x007db20a    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db20d    ff7510
_jmp_addr_0x007db210:    push              -0x1                                           // 0x007db210    6aff
                         push              esi                                            // 0x007db212    56
                         push              0x1                                            // 0x007db213    6a01
                         push              dword ptr [ebp + 0x18]                         // 0x007db215    ff7518
                         call              dword ptr [__imp__MultiByteToWideChar@4]       // 0x007db218    ff153c918a00
                         {disp8} jmp       _jmp_addr_0x007db222                           // 0x007db21e    eb02
_jmp_addr_0x007db220:    xor.s             eax, eax                                       // 0x007db220    33c0
_jmp_addr_0x007db222:    {disp8} lea       esp, dword ptr [ebp + -0x30]                   // 0x007db222    8d65d0
                         {disp8} mov       ecx, dword ptr [ebp + -0x10]                   // 0x007db225    8b4df0
                         {disp32} mov      fs:[0x0], ecx                                  // 0x007db228    64890d00000000
                         pop               edi                                            // 0x007db22f    5f
                         pop               esi                                            // 0x007db230    5e
                         pop               ebx                                            // 0x007db231    5b
                         leave                                                            // 0x007db232    c9
                         ret                                                              // 0x007db233    c3
___crtGetLocaleInfoA:    push              ebp                                            // 0x007db234    55
                         mov.s             ebp, esp                                       // 0x007db235    8bec
                         push              -0x1                                           // 0x007db237    6aff
                         push              0x009a1610                                     // 0x007db239    6810169a00
                         push              0x007cd8ac /*__except_handler3*/               // 0x007db23e    68acd87c00
                         {disp32} mov      eax, fs:[0x0]                                  // 0x007db243    64a100000000
                         push              eax                                            // 0x007db249    50
                         {disp32} mov      fs:[0x0], esp                                  // 0x007db24a    64892500000000
                         sub               esp, 0x14                                      // 0x007db251    83ec14
                         push              ebx                                            // 0x007db254    53
                         push              esi                                            // 0x007db255    56
                         push              edi                                            // 0x007db256    57
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db257    8965e8
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be574]         // 0x007db25a    a17445e800
                         xor.s             esi, esi                                       // 0x007db25f    33f6
                         cmp.s             eax, esi                                       // 0x007db261    3bc6
                         {disp8} jne       _jmp_addr_0x007db293                           // 0x007db263    752e
                         push              esi                                            // 0x007db265    56
                         push              esi                                            // 0x007db266    56
                         push              0x1                                            // 0x007db267    6a01
                         push              esi                                            // 0x007db269    56
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db26a    ff1560928a00
                         test              eax, eax                                       // 0x007db270    85c0
                         {disp8} je        _jmp_addr_0x007db278                           // 0x007db272    7404
                         push              0x1                                            // 0x007db274    6a01
                         {disp8} jmp       _jmp_addr_0x007db28d                           // 0x007db276    eb15
_jmp_addr_0x007db278:    push              esi                                            // 0x007db278    56
                         push              esi                                            // 0x007db279    56
                         push              0x1                                            // 0x007db27a    6a01
                         push              esi                                            // 0x007db27c    56
                         call              dword ptr [__imp__GetLocaleInfoA@4]            // 0x007db27d    ff1580928a00
                         test              eax, eax                                       // 0x007db283    85c0
                         {disp32} je       _jmp_addr_0x007db33e                           // 0x007db285    0f84b3000000
                         push              0x2                                            // 0x007db28b    6a02
_jmp_addr_0x007db28d:    pop               eax                                            // 0x007db28d    58
                         {disp32} mov      dword ptr [data_bytes + 0x4be574], eax         // 0x007db28e    a37445e800
_jmp_addr_0x007db293:    cmp               eax, 0x02                                      // 0x007db293    83f802
                         {disp8} jne       _jmp_addr_0x007db2af                           // 0x007db296    7517
                         push              dword ptr [ebp + 0x14]                         // 0x007db298    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db29b    ff7510
                         push              dword ptr [ebp + 0x0c]                         // 0x007db29e    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db2a1    ff7508
                         call              dword ptr [__imp__GetLocaleInfoA@4]            // 0x007db2a4    ff1580928a00
                         {disp32} jmp      _jmp_addr_0x007db340                           // 0x007db2aa    e991000000
_jmp_addr_0x007db2af:    cmp               eax, 0x01                                      // 0x007db2af    83f801
                         {disp32} jne      _jmp_addr_0x007db33e                           // 0x007db2b2    0f8586000000
                         cmp               dword ptr [ebp + 0x18], esi                    // 0x007db2b8    397518
                         {disp8} jne       _jmp_addr_0x007db2c5                           // 0x007db2bb    7508
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be2b0]         // 0x007db2bd    a1b042e800
                         {disp8} mov       dword ptr [ebp + 0x18], eax                    // 0x007db2c2    894518
_jmp_addr_0x007db2c5:    push              esi                                            // 0x007db2c5    56
                         push              esi                                            // 0x007db2c6    56
                         push              dword ptr [ebp + 0x0c]                         // 0x007db2c7    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db2ca    ff7508
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db2cd    ff1560928a00
                         {disp8} mov       dword ptr [ebp + -0x1c], eax                   // 0x007db2d3    8945e4
                         cmp.s             eax, esi                                       // 0x007db2d6    3bc6
                         {disp8} je        _jmp_addr_0x007db33e                           // 0x007db2d8    7464
                         {disp8} mov       dword ptr [ebp + -0x04], esi                   // 0x007db2da    8975fc
                         add.s             eax, eax                                       // 0x007db2dd    03c0
                         add               eax, 0x03                                      // 0x007db2df    83c003
                         and               al, -0x04                                      // 0x007db2e2    24fc
                         call              _jmp_addr_0x007c6eb0                           // 0x007db2e4    e8c7bbfeff
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db2e9    8965e8
                         mov.s             edi, esp                                       // 0x007db2ec    8bfc
                         {disp8} mov       dword ptr [ebp + -0x20], edi                   // 0x007db2ee    897de0
                         {disp8} jmp       _jmp_addr_0x007db2fe                           // 0x007db2f1    eb0b
                         push              0x1                                            // 0x007db2f3    6a01
                         pop               eax                                            // 0x007db2f5    58
                         ret                                                              // 0x007db2f6    c3
                         {disp8} mov       esp, dword ptr [ebp + -0x18]                   // 0x007db2f7    8b65e8
                         xor.s             esi, esi                                       // 0x007db2fa    33f6
                         xor.s             edi, edi                                       // 0x007db2fc    33ff
_jmp_addr_0x007db2fe:    or                dword ptr [ebp - 4], 0xffffffff                // 0x007db2fe    834dfcff
                         cmp.s             edi, esi                                       // 0x007db302    3bfe
                         {disp8} je        _jmp_addr_0x007db33e                           // 0x007db304    7438
                         push              dword ptr [ebp + -0x1c]                        // 0x007db306    ff75e4
                         push              edi                                            // 0x007db309    57
                         push              dword ptr [ebp + 0x0c]                         // 0x007db30a    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db30d    ff7508
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db310    ff1560928a00
                         test              eax, eax                                       // 0x007db316    85c0
                         {disp8} je        _jmp_addr_0x007db33e                           // 0x007db318    7424
                         cmp               dword ptr [ebp + 0x14], esi                    // 0x007db31a    397514
                         push              esi                                            // 0x007db31d    56
                         push              esi                                            // 0x007db31e    56
                         {disp8} jne       _jmp_addr_0x007db325                           // 0x007db31f    7504
                         push              esi                                            // 0x007db321    56
                         push              esi                                            // 0x007db322    56
                         {disp8} jmp       _jmp_addr_0x007db32b                           // 0x007db323    eb06
_jmp_addr_0x007db325:    push              dword ptr [ebp + 0x14]                         // 0x007db325    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db328    ff7510
_jmp_addr_0x007db32b:    push              -0x1                                           // 0x007db32b    6aff
                         push              edi                                            // 0x007db32d    57
                         push              0x00000220                                     // 0x007db32e    6820020000
                         push              dword ptr [ebp + 0x18]                         // 0x007db333    ff7518
                         call              dword ptr [__imp__WideCharToMultiByte@4]       // 0x007db336    ff152c928a00
                         {disp8} jmp       _jmp_addr_0x007db340                           // 0x007db33c    eb02
_jmp_addr_0x007db33e:    xor.s             eax, eax                                       // 0x007db33e    33c0
_jmp_addr_0x007db340:    {disp8} lea       esp, dword ptr [ebp + -0x30]                   // 0x007db340    8d65d0
                         {disp8} mov       ecx, dword ptr [ebp + -0x10]                   // 0x007db343    8b4df0
                         {disp32} mov      fs:[0x0], ecx                                  // 0x007db346    64890d00000000
                         pop               edi                                            // 0x007db34d    5f
                         pop               esi                                            // 0x007db34e    5e
                         pop               ebx                                            // 0x007db34f    5b
                         leave                                                            // 0x007db350    c9
                         ret                                                              // 0x007db351    c3
_jmp_addr_0x007db352:    push              esi                                            // 0x007db352    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                    // 0x007db353    8b742408
                         cmp               esi, dword ptr [data_bytes + 0x5e6a60]         // 0x007db357    3b3560cafa00
                         {disp8} jae       _jmp_addr_0x007db39b                           // 0x007db35d    733c
                         mov.s             ecx, esi                                       // 0x007db35f    8bce
                         mov.s             eax, esi                                       // 0x007db361    8bc6
                         sar               ecx, 5                                         // 0x007db363    c1f905
                         and               eax, 0x1f                                      // 0x007db366    83e01f
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007db369    8b0c8d60c9fa00
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007db370    8d04c0
                         test              byte ptr [ecx + eax * 0x4 + 0x04], 0x01        // 0x007db373    f644810401
                         {disp8} je        _jmp_addr_0x007db39b                           // 0x007db378    7421
                         push              edi                                            // 0x007db37a    57
                         push              esi                                            // 0x007db37b    56
                         call              __lock_fhandle                                 // 0x007db37c    e8dce6ffff
                         push              dword ptr [esp + 0x14]                         // 0x007db381    ff742414
                         push              esi                                            // 0x007db385    56
                         call              _jmp_addr_0x007db3ab                           // 0x007db386    e820000000
                         push              esi                                            // 0x007db38b    56
                         mov.s             edi, eax                                       // 0x007db38c    8bf8
                         call              __unlock_fhandle                               // 0x007db38e    e829e7ffff
                         add               esp, 0x10                                      // 0x007db393    83c410
                         mov.s             eax, edi                                       // 0x007db396    8bc7
                         pop               edi                                            // 0x007db398    5f
                         pop               esi                                            // 0x007db399    5e
                         ret                                                              // 0x007db39a    c3
_jmp_addr_0x007db39b:    call              __errno                                        // 0x007db39b    e8e1dcfeff
                         mov               dword ptr [eax], 0x00000009                    // 0x007db3a0    c70009000000
                         or                eax, -0x1                                      // 0x007db3a6    83c8ff
                         pop               esi                                            // 0x007db3a9    5e
                         ret                                                              // 0x007db3aa    c3
_jmp_addr_0x007db3ab:    {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x007db3ab    8b442404
                         push              esi                                            // 0x007db3af    56
                         mov.s             ecx, eax                                       // 0x007db3b0    8bc8
                         and               eax, 0x1f                                      // 0x007db3b2    83e01f
                         sar               ecx, 5                                         // 0x007db3b5    c1f905
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007db3b8    8d04c0
                         mov               esi, 0x00008000                                // 0x007db3bb    be00800000
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007db3c0    8b0c8d60c9fa00
                         {disp8} lea       edx, dword ptr [ecx + eax * 0x4 + 0x04]        // 0x007db3c7    8d548104
                         {disp8} mov       cl, byte ptr [ecx + eax * 0x4 + 0x04]          // 0x007db3cb    8a4c8104
                         mov.s             al, cl                                         // 0x007db3cf    8ac1
                         and               eax, 0x00000080                                // 0x007db3d1    2580000000
                         cmp               dword ptr [esp + 0x0c], esi                    // 0x007db3d6    3974240c
                         {disp8} jne       _jmp_addr_0x007db3e1                           // 0x007db3da    7505
                         and               cl, 0x7f                                       // 0x007db3dc    80e17f
                         {disp8} jmp       _jmp_addr_0x007db3ee                           // 0x007db3df    eb0d
_jmp_addr_0x007db3e1:    cmp               dword ptr [esp + 0x0c], 0x00004000             // 0x007db3e1    817c240c00400000
                         {disp8} jne       _jmp_addr_0x007db3fc                           // 0x007db3e9    7511
                         or                cl, 0x80                                       // 0x007db3eb    80c980
_jmp_addr_0x007db3ee:    neg               eax                                            // 0x007db3ee    f7d8
                         sbb.s             eax, eax                                       // 0x007db3f0    1bc0
                         mov               byte ptr [edx], cl                             // 0x007db3f2    880a
                         and               ax, -0x4000                                    // 0x007db3f4    662500c0
                         add.s             eax, esi                                       // 0x007db3f8    03c6
                         pop               esi                                            // 0x007db3fa    5e
                         ret                                                              // 0x007db3fb    c3
_jmp_addr_0x007db3fc:    call              __errno                                        // 0x007db3fc    e880dcfeff
                         mov               dword ptr [eax], 0x00000016                    // 0x007db401    c70016000000
                         or                eax, -0x1                                      // 0x007db407    83c8ff
                         pop               esi                                            // 0x007db40a    5e
                         ret                                                              // 0x007db40b    c3
                         int3                                                             // 0x007db40c    cc
                         int3                                                             // 0x007db40d    cc
                         int3                                                             // 0x007db40e    cc
                         int3                                                             // 0x007db40f    cc
_jmp_addr_0x007db410:    {disp8} mov       eax, dword ptr [esp + 0x08]                    // 0x007db410    8b442408
                         push              0x00000103                                     // 0x007db414    6803010000
                         mov               dword ptr [eax], 0x00e84fec                    // 0x007db419    c700ec4fe800
                         call              dword ptr [__imp__GetCommandLineA@0]           // 0x007db41f    ff1548918a00
                         push              eax                                            // 0x007db425    50
                         push              0x00e84ee8                                     // 0x007db426    68e84ee800
                         call              _strncpy                                       // 0x007db42b    e870dcfeff
                         {disp8} mov       edx, dword ptr [esp + 0x10]                    // 0x007db430    8b542410
                         add               esp, 0x0c                                      // 0x007db434    83c40c
                         mov               eax, 0x00e84ee8                                // 0x007db437    b8e84ee800
                         mov               dword ptr [edx], 0x00000000                    // 0x007db43c    c70200000000
                         {disp32} mov      cl, byte ptr [data_bytes + 0x4beee8]           // 0x007db442    8a0de84ee800
                         test              cl, cl                                         // 0x007db448    84c9
                         {disp8} je        _jmp_addr_0x007db4c3                           // 0x007db44a    7477
_jmp_addr_0x007db44c:    mov               cl, byte ptr [eax]                             // 0x007db44c    8a08
                         cmp               cl, 0x09                                       // 0x007db44e    80f909
                         {disp8} je        _jmp_addr_0x007db458                           // 0x007db451    7405
                         cmp               cl, 0x20                                       // 0x007db453    80f920
                         {disp8} jne       _jmp_addr_0x007db45b                           // 0x007db456    7503
_jmp_addr_0x007db458:    inc               eax                                            // 0x007db458    40
                         {disp8} jmp       _jmp_addr_0x007db44c                           // 0x007db459    ebf1
_jmp_addr_0x007db45b:    mov               cl, byte ptr [eax]                             // 0x007db45b    8a08
                         test              cl, cl                                         // 0x007db45d    84c9
                         {disp8} je        _jmp_addr_0x007db4be                           // 0x007db45f    745d
                         cmp               cl, 0x22                                       // 0x007db461    80f922
                         {disp8} jne       _jmp_addr_0x007db48f                           // 0x007db464    7529
                         mov               ecx, dword ptr [edx]                           // 0x007db466    8b0a
                         inc               eax                                            // 0x007db468    40
                         {disp32} mov      dword ptr [ecx * 0x4 + 0x00e84fec], eax        // 0x007db469    89048dec4fe800
                         mov               ecx, dword ptr [edx]                           // 0x007db470    8b0a
                         inc               ecx                                            // 0x007db472    41
                         mov               dword ptr [edx], ecx                           // 0x007db473    890a
                         mov               cl, byte ptr [eax]                             // 0x007db475    8a08
                         test              cl, cl                                         // 0x007db477    84c9
                         {disp8} je        _jmp_addr_0x007db488                           // 0x007db479    740d
_jmp_addr_0x007db47b:    cmp               cl, 0x22                                       // 0x007db47b    80f922
                         {disp8} je        _jmp_addr_0x007db488                           // 0x007db47e    7408
                         {disp8} mov       cl, byte ptr [eax + 0x01]                      // 0x007db480    8a4801
                         inc               eax                                            // 0x007db483    40
                         test              cl, cl                                         // 0x007db484    84c9
                         {disp8} jne       _jmp_addr_0x007db47b                           // 0x007db486    75f3
_jmp_addr_0x007db488:    cmp               byte ptr [eax], 0x22                           // 0x007db488    803822
                         {disp8} jne       _jmp_addr_0x007db4be                           // 0x007db48b    7531
                         {disp8} jmp       _jmp_addr_0x007db4ba                           // 0x007db48d    eb2b
_jmp_addr_0x007db48f:    mov               ecx, dword ptr [edx]                           // 0x007db48f    8b0a
                         {disp32} mov      dword ptr [ecx * 0x4 + 0x00e84fec], eax        // 0x007db491    89048dec4fe800
                         mov               ecx, dword ptr [edx]                           // 0x007db498    8b0a
                         inc               ecx                                            // 0x007db49a    41
                         mov               dword ptr [edx], ecx                           // 0x007db49b    890a
                         mov               cl, byte ptr [eax]                             // 0x007db49d    8a08
                         test              cl, cl                                         // 0x007db49f    84c9
                         {disp8} je        _jmp_addr_0x007db4b5                           // 0x007db4a1    7412
_jmp_addr_0x007db4a3:    cmp               cl, 0x09                                       // 0x007db4a3    80f909
                         {disp8} je        _jmp_addr_0x007db4b5                           // 0x007db4a6    740d
                         cmp               cl, 0x20                                       // 0x007db4a8    80f920
                         {disp8} je        _jmp_addr_0x007db4b5                           // 0x007db4ab    7408
                         {disp8} mov       cl, byte ptr [eax + 0x01]                      // 0x007db4ad    8a4801
                         inc               eax                                            // 0x007db4b0    40
                         test              cl, cl                                         // 0x007db4b1    84c9
                         {disp8} jne       _jmp_addr_0x007db4a3                           // 0x007db4b3    75ee
_jmp_addr_0x007db4b5:    cmp               byte ptr [eax], 0x00                           // 0x007db4b5    803800
                         {disp8} je        _jmp_addr_0x007db4c3                           // 0x007db4b8    7409
_jmp_addr_0x007db4ba:    mov               byte ptr [eax], 0x00                           // 0x007db4ba    c60000
                         inc               eax                                            // 0x007db4bd    40
_jmp_addr_0x007db4be:    cmp               byte ptr [eax], 0x00                           // 0x007db4be    803800
                         {disp8} jne       _jmp_addr_0x007db44c                           // 0x007db4c1    7589
_jmp_addr_0x007db4c3:    ret                                                              // 0x007db4c3    c3
                         nop                                                              // 0x007db4c4    90
                         nop                                                              // 0x007db4c5    90
                         nop                                                              // 0x007db4c6    90
                         nop                                                              // 0x007db4c7    90
                         nop                                                              // 0x007db4c8    90
                         nop                                                              // 0x007db4c9    90
                         nop                                                              // 0x007db4ca    90
                         nop                                                              // 0x007db4cb    90
                         nop                                                              // 0x007db4cc    90
                         nop                                                              // 0x007db4cd    90
                         nop                                                              // 0x007db4ce    90
                         nop                                                              // 0x007db4cf    90
_jmp_addr_0x007db4d0:    push              ebp                                            // 0x007db4d0    55
                         mov.s             ebp, esp                                       // 0x007db4d1    8bec
                         sub               esp, 0x30                                      // 0x007db4d3    83ec30
                         {disp32} mov      eax, dword ptr [data_bytes + 0x26af70]         // 0x007db4d6    a1700fc300
                         test              eax, eax                                       // 0x007db4db    85c0
                         {disp8} je        _jmp_addr_0x007db53a                           // 0x007db4dd    745b
                         call              __getpid                                       // 0x007db4df    e879aa0c00
                         push              0x00c3119c                                     // 0x007db4e4    689c11c300
                         {disp32} mov      dword ptr [data_bytes + 0x4be584], eax         // 0x007db4e9    a38445e800
                         call              dword ptr [__imp__LoadLibraryA@4]              // 0x007db4ee    ff156c918a00
                         test              eax, eax                                       // 0x007db4f4    85c0
                         {disp32} mov      dword ptr [data_bytes + 0x4be580], eax         // 0x007db4f6    a38045e800
                         {disp8} jne       _jmp_addr_0x007db501                           // 0x007db4fb    7504
                         mov.s             esp, ebp                                       // 0x007db4fd    8be5
                         pop               ebp                                            // 0x007db4ff    5d
                         ret                                                              // 0x007db500    c3
_jmp_addr_0x007db501:    push              0x00c31184                                     // 0x007db501    688411c300
                         push              eax                                            // 0x007db506    50
                         call              dword ptr [__imp__GetProcAddress@4]            // 0x007db507    ff1570918a00
                         test              eax, eax                                       // 0x007db50d    85c0
                         {disp32} mov      dword ptr [data_bytes + 0x4be57c], eax         // 0x007db50f    a37c45e800
                         {disp8} jne       _jmp_addr_0x007db51a                           // 0x007db514    7504
                         mov.s             esp, ebp                                       // 0x007db516    8be5
                         pop               ebp                                            // 0x007db518    5d
                         ret                                                              // 0x007db519    c3
_jmp_addr_0x007db51a:    {disp32} mov      eax, dword ptr [data_bytes + 0x4be584]         // 0x007db51a    a18445e800
                         push              eax                                            // 0x007db51f    50
                         push              0x0                                            // 0x007db520    6a00
                         push              0x00000410                                     // 0x007db522    6810040000
                         call              dword ptr [__imp__OpenProcess@4]               // 0x007db527    ff155c928a00
                         test              eax, eax                                       // 0x007db52d    85c0
                         {disp32} mov      dword ptr [data_bytes + 0x4be578], eax         // 0x007db52f    a37845e800
                         {disp8} jne       _jmp_addr_0x007db53a                           // 0x007db534    7504
                         mov.s             esp, ebp                                       // 0x007db536    8be5
                         pop               ebp                                            // 0x007db538    5d
                         ret                                                              // 0x007db539    c3
_jmp_addr_0x007db53a:    {disp32} mov      eax, dword ptr [data_bytes + 0x4be57c]         // 0x007db53a    a17c45e800
                         test              eax, eax                                       // 0x007db53f    85c0
                         {disp8} jne       _jmp_addr_0x007db549                           // 0x007db541    7506
                         xor.s             eax, eax                                       // 0x007db543    33c0
                         mov.s             esp, ebp                                       // 0x007db545    8be5
                         pop               ebp                                            // 0x007db547    5d
                         ret                                                              // 0x007db548    c3
_jmp_addr_0x007db549:    {disp8} lea       ecx, dword ptr [ebp + -0x30]                   // 0x007db549    8d4dd0
                         {disp8} mov       dword ptr [ebp + -0x08], 0x00000028            // 0x007db54c    c745f828000000
                         {disp8} mov       dword ptr [ebp + -0x04], ecx                   // 0x007db553    894dfc
                         push              dword ptr [ebp + -0x08]                        // 0x007db556    ff75f8
                         push              dword ptr [ebp + -0x04]                        // 0x007db559    ff75fc
                         push              dword ptr [data_bytes + 0x4be578]              // 0x007db55c    ff357845e800
                         call              dword ptr [data_bytes + 0x4be57c]              // 0x007db562    ff157c45e800
                         {disp32} mov      eax, dword ptr [data_bytes + 0x26af70]         // 0x007db568    a1700fc300
                         test              eax, eax                                       // 0x007db56d    85c0
                         {disp8} mov       eax, dword ptr [ebp + -0x24]                   // 0x007db56f    8b45dc
                         {disp8} je        _jmp_addr_0x007db58d                           // 0x007db572    7419
                         {disp32} mov      dword ptr [data_bytes + 0x4be58c], eax         // 0x007db574    a38c45e800
                         {disp32} mov      dword ptr [data_bytes + 0x4be588], 0x00c31178  // 0x007db579    c7058845e8007811c300
                         {disp32} mov      dword ptr [data_bytes + 0x26af70], 0x00000000  // 0x007db583    c705700fc30000000000
_jmp_addr_0x007db58d:    mov.s             esp, ebp                                       // 0x007db58d    8be5
                         pop               ebp                                            // 0x007db58f    5d
                         ret                                                              // 0x007db590    c3
                         nop                                                              // 0x007db591    90
                         nop                                                              // 0x007db592    90
                         nop                                                              // 0x007db593    90
                         nop                                                              // 0x007db594    90
                         nop                                                              // 0x007db595    90
                         nop                                                              // 0x007db596    90
                         nop                                                              // 0x007db597    90
                         nop                                                              // 0x007db598    90
                         nop                                                              // 0x007db599    90
                         nop                                                              // 0x007db59a    90
                         nop                                                              // 0x007db59b    90
                         nop                                                              // 0x007db59c    90
                         nop                                                              // 0x007db59d    90
                         nop                                                              // 0x007db59e    90
                         nop                                                              // 0x007db59f    90
                         {disp32} mov      eax, dword ptr [data_bytes + 0x26af6c]         // 0x007db5a0    a16c0fc300
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                    // 0x007db5a5    8b4c2404
                         {disp32} mov      dword ptr [eax * 0x8 + 0x00e84588], ecx        // 0x007db5a9    890cc58845e800
                         call              _jmp_addr_0x007db4d0                           // 0x007db5b0    e81bffffff
                         {disp32} mov      edx, dword ptr [data_bytes + 0x26af6c]         // 0x007db5b5    8b156c0fc300
                         {disp32} mov      dword ptr [edx * 0x8 + 0x00e8458c], eax        // 0x007db5bb    8904d58c45e800
                         ret                                                              // 0x007db5c2    c3
                         nop                                                              // 0x007db5c3    90
                         nop                                                              // 0x007db5c4    90
                         nop                                                              // 0x007db5c5    90
                         nop                                                              // 0x007db5c6    90
                         nop                                                              // 0x007db5c7    90
                         nop                                                              // 0x007db5c8    90
                         nop                                                              // 0x007db5c9    90
                         nop                                                              // 0x007db5ca    90
                         nop                                                              // 0x007db5cb    90
                         nop                                                              // 0x007db5cc    90
                         nop                                                              // 0x007db5cd    90
                         nop                                                              // 0x007db5ce    90
                         nop                                                              // 0x007db5cf    90
                         {disp32} mov      eax, dword ptr [data_bytes + 0x26af6c]         // 0x007db5d0    a16c0fc300
                         push              esi                                            // 0x007db5d5    56
                         {disp32} lea      esi, dword ptr [eax * 0x8 + 0x00e8458c]        // 0x007db5d6    8d34c58c45e800
                         call              _jmp_addr_0x007db4d0                           // 0x007db5dd    e8eefeffff
                         sub               eax, dword ptr [esi]                           // 0x007db5e2    2b06
                         mov               dword ptr [esi], eax                           // 0x007db5e4    8906
                         {disp32} mov      eax, dword ptr [data_bytes + 0x26af6c]         // 0x007db5e6    a16c0fc300
                         inc               eax                                            // 0x007db5eb    40
                         pop               esi                                            // 0x007db5ec    5e
                         cmp               eax, 0x0000012b                                // 0x007db5ed    3d2b010000
                         {disp32} mov      dword ptr [data_bytes + 0x26af6c], eax         // 0x007db5f2    a36c0fc300
                         .byte             0x72, 0x6// {disp8} jb _jmp_addr_0x007db5ff    // 0x007db5f7    7206
                         dec               eax                                            // 0x007db5f9    48
                         {disp32} mov      dword ptr [data_bytes + 0x26af6c], eax         // 0x007db5fa    a36c0fc300
_jmp_addr_0x007db5ff:    ret                                                              // 0x007db5ff    c3
_LHRand__FlRU:           push              ebp                                            // 0x007db600    55
                         mov.s             ebp, esp                                       // 0x007db601    8bec
                         {disp8} mov       ecx, dword ptr [ebp + 0x0c]                    // 0x007db603    8b4d0c
                         mov               eax, dword ptr [ecx]                           // 0x007db606    8b01
                         lea               edx, dword ptr [eax + eax * 0x8]               // 0x007db608    8d14c0
                         lea               edx, dword ptr [eax + edx * 0x8]               // 0x007db60b    8d14d0
                         lea               edx, dword ptr [eax + edx * 0x4]               // 0x007db60e    8d1490
                         shl               edx, 5                                         // 0x007db611    c1e205
                         {disp32} lea      eax, dword ptr [edx + eax * 0x1 + 0x000024df]  // 0x007db614    8d8402df240000
                         mov               dword ptr [ecx], eax                           // 0x007db61b    8901
                         {disp8} mov       dword ptr [ebp + 0x0c], eax                    // 0x007db61d    89450c
                         ror               dword ptr [ebp + 0x0c], 0x0d                   // 0x007db620    c14d0c0d
                         {disp8} mov       eax, dword ptr [ebp + 0x0c]                    // 0x007db624    8b450c
                         xor.s             edx, edx                                       // 0x007db627    33d2
                         mov               dword ptr [ecx], eax                           // 0x007db629    8901
                         div               dword ptr [ebp + 0x08]                         // 0x007db62b    f77508
                         mov.s             eax, edx                                       // 0x007db62e    8bc2
                         pop               ebp                                            // 0x007db630    5d
                         ret                                                              // 0x007db631    c3
                         nop                                                              // 0x007db632    90
                         nop                                                              // 0x007db633    90
                         nop                                                              // 0x007db634    90
                         nop                                                              // 0x007db635    90
                         nop                                                              // 0x007db636    90
                         nop                                                              // 0x007db637    90
                         nop                                                              // 0x007db638    90
                         nop                                                              // 0x007db639    90
                         nop                                                              // 0x007db63a    90
                         nop                                                              // 0x007db63b    90
                         nop                                                              // 0x007db63c    90
                         nop                                                              // 0x007db63d    90
                         nop                                                              // 0x007db63e    90
                         nop                                                              // 0x007db63f    90
                         push              ebp                                            // 0x007db640    55
                         mov.s             ebp, esp                                       // 0x007db641    8bec
                         push              ecx                                            // 0x007db643    51
                         push              ebx                                            // 0x007db644    53
                         {disp8} mov       eax, dword ptr [ebp + 0x08]                    // 0x007db645    8b4508
                         or.s              eax, eax                                       // 0x007db648    0bc0
                         {disp8} jne       _jmp_addr_0x007db65f                           // 0x007db64a    7513
                         {disp8} mov       ebx, dword ptr [ebp + 0x0c]                    // 0x007db64c    8b5d0c
                         or.s              ebx, ebx                                       // 0x007db64f    0bdb
                         {disp8} jne       _jmp_addr_0x007db662                           // 0x007db651    750f
                         xor.s             ax, ax                                         // 0x007db653    6633c0
                         {disp8} mov       word ptr [ebp + -0x02], ax                     // 0x007db656    668945fe
                         {disp32} jmp      _jmp_addr_0x007db75f                           // 0x007db65a    e900010000
_jmp_addr_0x007db65f:    {disp8} mov       ebx, dword ptr [ebp + 0x0c]                    // 0x007db65f    8b5d0c
_jmp_addr_0x007db662:    or.s              eax, eax                                       // 0x007db662    0bc0
                         {disp8} js        _jmp_addr_0x007db6e5                           // 0x007db664    787f
                         or.s              ebx, ebx                                       // 0x007db666    0bdb
                         {disp8} js        _jmp_addr_0x007db6aa                           // 0x007db668    7840
                         cmp.s             eax, ebx                                       // 0x007db66a    3bc3
                         {disp8} jl        _jmp_addr_0x007db68b                           // 0x007db66c    7c1d
                         xchg              eax, ebx                                       // 0x007db66e    93
                         shl               eax, 8                                         // 0x007db66f    c1e008
                         xor.s             edx, edx                                       // 0x007db672    33d2
                         div               ebx                                            // 0x007db674    f7f3
                         {disp32} mov      ax, word ptr [eax * 0x2 + 0x00c30f74]          // 0x007db676    668b0445740fc300
                         add               ax, 0x0200                                     // 0x007db67e    66050002
                         {disp8} mov       word ptr [ebp + -0x02], ax                     // 0x007db682    668945fe
                         {disp32} jmp      _jmp_addr_0x007db75f                           // 0x007db686    e9d4000000
_jmp_addr_0x007db68b:    shl               eax, 8                                         // 0x007db68b    c1e008
                         xor.s             edx, edx                                       // 0x007db68e    33d2
                         div               ebx                                            // 0x007db690    f7f3
                         {disp32} mov      ax, word ptr [eax * 0x2 + 0x00c30f74]          // 0x007db692    668b0445740fc300
                         neg               ax                                             // 0x007db69a    66f7d8
                         add               ax, 0x0400                                     // 0x007db69d    66050004
                         {disp8} mov       word ptr [ebp + -0x02], ax                     // 0x007db6a1    668945fe
                         {disp32} jmp      _jmp_addr_0x007db75f                           // 0x007db6a5    e9b5000000
_jmp_addr_0x007db6aa:    neg               ebx                                            // 0x007db6aa    f7db
                         cmp.s             eax, ebx                                       // 0x007db6ac    3bc3
                         {disp8} jl        _jmp_addr_0x007db6d0                           // 0x007db6ae    7c20
                         xchg              eax, ebx                                       // 0x007db6b0    93
                         shl               eax, 8                                         // 0x007db6b1    c1e008
                         xor.s             edx, edx                                       // 0x007db6b4    33d2
                         div               ebx                                            // 0x007db6b6    f7f3
                         {disp32} mov      ax, word ptr [eax * 0x2 + 0x00c30f74]          // 0x007db6b8    668b0445740fc300
                         neg               ax                                             // 0x007db6c0    66f7d8
                         add               ax, 0x0200                                     // 0x007db6c3    66050002
                         {disp8} mov       word ptr [ebp + -0x02], ax                     // 0x007db6c7    668945fe
                         {disp32} jmp      _jmp_addr_0x007db75f                           // 0x007db6cb    e98f000000
_jmp_addr_0x007db6d0:    shl               eax, 8                                         // 0x007db6d0    c1e008
                         xor.s             edx, edx                                       // 0x007db6d3    33d2
                         div               ebx                                            // 0x007db6d5    f7f3
                         {disp32} mov      ax, word ptr [eax * 0x2 + 0x00c30f74]          // 0x007db6d7    668b0445740fc300
                         {disp8} mov       word ptr [ebp + -0x02], ax                     // 0x007db6df    668945fe
                         {disp8} jmp       _jmp_addr_0x007db75f                           // 0x007db6e3    eb7a
_jmp_addr_0x007db6e5:    neg               eax                                            // 0x007db6e5    f7d8
                         or.s              ebx, ebx                                       // 0x007db6e7    0bdb
                         {disp8} js        _jmp_addr_0x007db725                           // 0x007db6e9    783a
                         cmp.s             eax, ebx                                       // 0x007db6eb    3bc3
                         {disp8} jl        _jmp_addr_0x007db70c                           // 0x007db6ed    7c1d
                         xchg              eax, ebx                                       // 0x007db6ef    93
                         shl               eax, 8                                         // 0x007db6f0    c1e008
                         xor.s             edx, edx                                       // 0x007db6f3    33d2
                         div               ebx                                            // 0x007db6f5    f7f3
                         {disp32} mov      ax, word ptr [eax * 0x2 + 0x00c30f74]          // 0x007db6f7    668b0445740fc300
                         neg               ax                                             // 0x007db6ff    66f7d8
                         add               ax, 0x0600                                     // 0x007db702    66050006
                         {disp8} mov       word ptr [ebp + -0x02], ax                     // 0x007db706    668945fe
                         {disp8} jmp       _jmp_addr_0x007db75f                           // 0x007db70a    eb53
_jmp_addr_0x007db70c:    shl               eax, 8                                         // 0x007db70c    c1e008
                         xor.s             edx, edx                                       // 0x007db70f    33d2
                         div               ebx                                            // 0x007db711    f7f3
                         {disp32} mov      ax, word ptr [eax * 0x2 + 0x00c30f74]          // 0x007db713    668b0445740fc300
                         add               ax, 0x0400                                     // 0x007db71b    66050004
                         {disp8} mov       word ptr [ebp + -0x02], ax                     // 0x007db71f    668945fe
                         {disp8} jmp       _jmp_addr_0x007db75f                           // 0x007db723    eb3a
_jmp_addr_0x007db725:    neg               ebx                                            // 0x007db725    f7db
                         cmp.s             eax, ebx                                       // 0x007db727    3bc3
                         {disp8} jl        _jmp_addr_0x007db745                           // 0x007db729    7c1a
                         xchg              eax, ebx                                       // 0x007db72b    93
                         shl               eax, 8                                         // 0x007db72c    c1e008
                         xor.s             edx, edx                                       // 0x007db72f    33d2
                         div               ebx                                            // 0x007db731    f7f3
                         {disp32} mov      ax, word ptr [eax * 0x2 + 0x00c30f74]          // 0x007db733    668b0445740fc300
                         add               ax, 0x0600                                     // 0x007db73b    66050006
                         {disp8} mov       word ptr [ebp + -0x02], ax                     // 0x007db73f    668945fe
                         {disp8} jmp       _jmp_addr_0x007db75f                           // 0x007db743    eb1a
_jmp_addr_0x007db745:    shl               eax, 8                                         // 0x007db745    c1e008
                         xor.s             edx, edx                                       // 0x007db748    33d2
                         div               ebx                                            // 0x007db74a    f7f3
                         {disp32} mov      ax, word ptr [eax * 0x2 + 0x00c30f74]          // 0x007db74c    668b0445740fc300
                         neg               ax                                             // 0x007db754    66f7d8
                         add               ax, 0x0800                                     // 0x007db757    66050008
                         {disp8} mov       word ptr [ebp + -0x02], ax                     // 0x007db75b    668945fe
_jmp_addr_0x007db75f:    and               word ptr [ebp + -0x02], 0x07ff                 // 0x007db75f    668165feff07
                         {disp8} mov       ax, word ptr [ebp + -0x02]                     // 0x007db765    668b45fe
                         pop               ebx                                            // 0x007db769    5b
                         mov.s             esp, ebp                                       // 0x007db76a    8be5
                         pop               ebp                                            // 0x007db76c    5d
                         ret                                                              // 0x007db76d    c3
                         nop                                                              // 0x007db76e    90
                         nop                                                              // 0x007db76f    90
_jmp_addr_0x007db770:    {disp8} fld       dword ptr [esp + 0x08]                         // 0x007db770    d9442408
                         {disp8} fld       dword ptr [esp + 0x04]                         // 0x007db774    d9442404
                         fpatan                                                           // 0x007db778    d9f3
                         {disp32} fcom     dword ptr [rdata_bytes + 0x1398]               // 0x007db77a    d81598a38a00
                         fnstsw            ax                                             // 0x007db780    dfe0
                         test              ah, 0x01                                       // 0x007db782    f6c401
                         {disp8} je        _jmp_addr_0x007db78d                           // 0x007db785    7406
                         {disp32} fadd     dword ptr [rdata_bytes + 0x2210]               // 0x007db787    d80510b28a00
_jmp_addr_0x007db78d:    ret                                                              // 0x007db78d    c3
                         nop                                                              // 0x007db78e    90
                         nop                                                              // 0x007db78f    90
___nw__FUl:              {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x007db790    8b442404
                         push              0x1                                            // 0x007db794    6a01
                         push              eax                                            // 0x007db796    50
                         call              _calloc                                        // 0x007db797    e810dbfeff
                         add               esp, 0x08                                      // 0x007db79c    83c408
                         ret                                                              // 0x007db79f    c3
_jmp_addr_0x007db7a0:    {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x007db7a0    8b442404
                         push              eax                                            // 0x007db7a4    50
                         call              _free                                          // 0x007db7a5    e8dcaffeff
                         pop               ecx                                            // 0x007db7aa    59
                         ret                                                              // 0x007db7ab    c3
                         nop                                                              // 0x007db7ac    90
                         nop                                                              // 0x007db7ad    90
                         nop                                                              // 0x007db7ae    90
                         nop                                                              // 0x007db7af    90
_globl_ct_0x007db7b0:    call              _jmp_addr_0x007db7c0                           // 0x007db7b0    e80b000000
                         {disp32} jmp      _jmp_addr_0x007db7d0                           // 0x007db7b5    e916000000
                         nop                                                              // 0x007db7ba    90
                         nop                                                              // 0x007db7bb    90
                         nop                                                              // 0x007db7bc    90
                         nop                                                              // 0x007db7bd    90
                         nop                                                              // 0x007db7be    90
                         nop                                                              // 0x007db7bf    90
_jmp_addr_0x007db7c0:    mov               ecx, 0x00e85040                                // 0x007db7c0    b94050e800
                         {disp32} jmp      @__ct__5LHSysFv@4                              // 0x007db7c5    e936000000
                         nop                                                              // 0x007db7ca    90
                         nop                                                              // 0x007db7cb    90
                         nop                                                              // 0x007db7cc    90
                         nop                                                              // 0x007db7cd    90
                         nop                                                              // 0x007db7ce    90
                         nop                                                              // 0x007db7cf    90
_jmp_addr_0x007db7d0:    push              0x007db7e0                                     // 0x007db7d0    68e0b77d00
                         call              _atexit@4                                      // 0x007db7d5    e8b79ffeff
                         pop               ecx                                            // 0x007db7da    59
                         ret                                                              // 0x007db7db    c3
                         nop                                                              // 0x007db7dc    90
                         nop                                                              // 0x007db7dd    90
                         nop                                                              // 0x007db7de    90
                         nop                                                              // 0x007db7df    90
                         mov               ecx, 0x00e85040                                // 0x007db7e0    b94050e800
                         {disp32} jmp      _jmp_addr_0x007db7f0                           // 0x007db7e5    e906000000
                         nop                                                              // 0x007db7ea    90
                         nop                                                              // 0x007db7eb    90
                         nop                                                              // 0x007db7ec    90
                         nop                                                              // 0x007db7ed    90
                         nop                                                              // 0x007db7ee    90
                         nop                                                              // 0x007db7ef    90
_jmp_addr_0x007db7f0:    add               ecx, 0x10                                      // 0x007db7f0    83c110
                         {disp32} jmp      @__dt__8LHScreenFv@4                           // 0x007db7f3    e9f8200000
                         nop                                                              // 0x007db7f8    90
                         nop                                                              // 0x007db7f9    90
                         nop                                                              // 0x007db7fa    90
                         nop                                                              // 0x007db7fb    90
                         nop                                                              // 0x007db7fc    90
                         nop                                                              // 0x007db7fd    90
                         nop                                                              // 0x007db7fe    90
                         nop                                                              // 0x007db7ff    90
@__ct__5LHSysFv@4:       push              -0x1                                           // 0x007db800    6aff
                         push              0x008a797b                                     // 0x007db802    687b798a00
                         {disp32} mov      eax, fs:[0x0]                                  // 0x007db807    64a100000000
                         push              eax                                            // 0x007db80d    50
                         {disp32} mov      fs:[0x0], esp                                  // 0x007db80e    64892500000000
                         push              ecx                                            // 0x007db815    51
                         push              ebx                                            // 0x007db816    53
                         push              esi                                            // 0x007db817    56
                         mov.s             esi, ecx                                       // 0x007db818    8bf1
                         {disp8} mov       dword ptr [esp + 0x08], esi                    // 0x007db81a    89742408
                         {disp8} lea       ecx, dword ptr [esi + 0x10]                    // 0x007db81e    8d4e10
                         call              @__ct__8LHScreenFv@4                           // 0x007db821    e8fa150000
                         xor.s             ebx, ebx                                       // 0x007db826    33db
                         {disp32} lea      ecx, dword ptr [esi + 0x000001c4]              // 0x007db828    8d8ec4010000
                         {disp8} mov       dword ptr [esp + 0x14], ebx                    // 0x007db82e    895c2414
                         call              @__ct__7LHMouseFv@4                            // 0x007db832    e8e9960000
                         push              0x00e8c118                                     // 0x007db837    6818c1e800
                         call              dword ptr [__imp__InitializeCriticalSection@4] // 0x007db83c    ff157c918a00
                         {disp32} lea      eax, dword ptr [esi + 0x000005ad]              // 0x007db842    8d86ad050000
                         mov               ecx, 0x00000002                                // 0x007db848    b902000000
_jmp_addr_0x007db84d:    {disp8} mov       byte ptr [eax + -0x01], bl                     // 0x007db84d    8858ff
                         mov               byte ptr [eax], bl                             // 0x007db850    8818
                         add               eax, 0x00000140                                // 0x007db852    0540010000
                         dec               ecx                                            // 0x007db857    49
                         {disp8} jne       _jmp_addr_0x007db84d                           // 0x007db858    75f3
                         {disp32} lea      ecx, dword ptr [esi + 0x000008b8]              // 0x007db85a    8d8eb8080000
                         {disp32} mov      dword ptr [esi + 0x00000828], ebx              // 0x007db860    899e28080000
                         call              _jmp_addr_0x007ef780                           // 0x007db866    e8153f0100
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]                    // 0x007db86b    8b4c240c
                         {disp32} mov      dword ptr [esi + 0x00007048], ebx              // 0x007db86f    899e48700000
                         {disp32} mov      dword ptr [esi + 0x0000704c], ebx              // 0x007db875    899e4c700000
                         {disp32} mov      dword ptr [esi + 0x00007044], 0x00000001       // 0x007db87b    c7864470000001000000
                         mov.s             eax, esi                                       // 0x007db885    8bc6
                         pop               esi                                            // 0x007db887    5e
                         pop               ebx                                            // 0x007db888    5b
                         {disp32} mov      fs:[0x0], ecx                                  // 0x007db889    64890d00000000
                         add               esp, 0x10                                      // 0x007db890    83c410
                         ret                                                              // 0x007db893    c3
                         nop                                                              // 0x007db894    90
                         nop                                                              // 0x007db895    90
                         nop                                                              // 0x007db896    90
                         nop                                                              // 0x007db897    90
                         nop                                                              // 0x007db898    90
                         nop                                                              // 0x007db899    90
                         nop                                                              // 0x007db89a    90
                         nop                                                              // 0x007db89b    90
                         nop                                                              // 0x007db89c    90
                         nop                                                              // 0x007db89d    90
                         nop                                                              // 0x007db89e    90
                         nop                                                              // 0x007db89f    90
_jmp_addr_0x007db8a0:    {disp8} mov       eax, dword ptr [ecx + 0x0c]                    // 0x007db8a0    8b410c
                         test              eax, eax                                       // 0x007db8a3    85c0
                         {disp8} jne       _jmp_addr_0x007db8d6                           // 0x007db8a5    752f
                         {disp8} mov       dword ptr [ecx + 0x0c], 0x00000001             // 0x007db8a7    c7410c01000000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf078]         // 0x007db8ae    a17850e800
                         push              eax                                            // 0x007db8b3    50
                         call              dword ptr [__imp__IsWindow@4]                  // 0x007db8b4    ff1574988a00
                         test              eax, eax                                       // 0x007db8ba    85c0
                         {disp8} je        _jmp_addr_0x007db8d6                           // 0x007db8bc    7418
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf078]         // 0x007db8be    a17850e800
                         push              0x0                                            // 0x007db8c3    6a00
                         push              0x0000f060                                     // 0x007db8c5    6860f00000
                         push              0x00000112                                     // 0x007db8ca    6812010000
                         push              eax                                            // 0x007db8cf    50
                         call              dword ptr [__imp__SendMessageA@4]              // 0x007db8d0    ff15dc978a00
_jmp_addr_0x007db8d6:    ret                                                              // 0x007db8d6    c3
                         nop                                                              // 0x007db8d7    90
                         nop                                                              // 0x007db8d8    90
                         nop                                                              // 0x007db8d9    90
                         nop                                                              // 0x007db8da    90
                         nop                                                              // 0x007db8db    90
                         nop                                                              // 0x007db8dc    90
                         nop                                                              // 0x007db8dd    90
                         nop                                                              // 0x007db8de    90
                         nop                                                              // 0x007db8df    90
_jmp_addr_0x007db8e0:    {disp32} mov      eax, dword ptr [data_bytes + 0x4c60f4]         // 0x007db8e0    a1f4c0e800
                         push              0x0                                            // 0x007db8e5    6a00
                         push              eax                                            // 0x007db8e7    50
                         call              dword ptr [__imp__SetMenu@4]                   // 0x007db8e8    ff157c988a00
                         ret                                                              // 0x007db8ee    c3
                         nop                                                              // 0x007db8ef    90
_jmp_addr_0x007db8f0:    {disp32} mov      eax, dword ptr [data_bytes + 0x4c60f0]         // 0x007db8f0    a1f0c0e800
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c60f4]         // 0x007db8f5    8b0df4c0e800
                         push              eax                                            // 0x007db8fb    50
                         push              ecx                                            // 0x007db8fc    51
                         call              dword ptr [__imp__SetMenu@4]                   // 0x007db8fd    ff157c988a00
                         ret                                                              // 0x007db903    c3
                         nop                                                              // 0x007db904    90
                         nop                                                              // 0x007db905    90
                         nop                                                              // 0x007db906    90
                         nop                                                              // 0x007db907    90
                         nop                                                              // 0x007db908    90
                         nop                                                              // 0x007db909    90
                         nop                                                              // 0x007db90a    90
                         nop                                                              // 0x007db90b    90
                         nop                                                              // 0x007db90c    90
                         nop                                                              // 0x007db90d    90
                         nop                                                              // 0x007db90e    90
                         nop                                                              // 0x007db90f    90
_jmp_addr_0x007db910:    {disp32} mov      eax, dword ptr [data_bytes + 0x4c60f4]         // 0x007db910    a1f4c0e800
                         sub               esp, 0x1c                                      // 0x007db915    83ec1c
                         {disp8} lea       ecx, dword ptr [esp + 0x00]                    // 0x007db918    8d4c2400
                         push              0x0                                            // 0x007db91c    6a00
                         push              0x0                                            // 0x007db91e    6a00
                         push              0x0                                            // 0x007db920    6a00
                         push              eax                                            // 0x007db922    50
                         push              ecx                                            // 0x007db923    51
                         call              dword ptr [__imp__PeekMessageA@4]              // 0x007db924    ff1534988a00
                         dec               eax                                            // 0x007db92a    48
                         neg               eax                                            // 0x007db92b    f7d8
                         sbb.s             eax, eax                                       // 0x007db92d    1bc0
                         inc               eax                                            // 0x007db92f    40
                         add               esp, 0x1c                                      // 0x007db930    83c41c
                         ret                                                              // 0x007db933    c3
                         nop                                                              // 0x007db934    90
                         nop                                                              // 0x007db935    90
                         nop                                                              // 0x007db936    90
                         nop                                                              // 0x007db937    90
                         nop                                                              // 0x007db938    90
                         nop                                                              // 0x007db939    90
                         nop                                                              // 0x007db93a    90
                         nop                                                              // 0x007db93b    90
                         nop                                                              // 0x007db93c    90
                         nop                                                              // 0x007db93d    90
                         nop                                                              // 0x007db93e    90
                         nop                                                              // 0x007db93f    90
_jmp_addr_0x007db940:    sub               esp, 0x1c                                      // 0x007db940    83ec1c
                         push              ebp                                            // 0x007db943    55
                         {disp32} mov      ebp, dword ptr [__imp__TranslateAcceleratorA@4]// 0x007db944    8b2d1c988a00
                         push              esi                                            // 0x007db94a    56
                         {disp32} mov      esi, dword ptr [__imp__PeekMessageA@4]         // 0x007db94b    8b3534988a00
                         push              edi                                            // 0x007db951    57
                         {disp32} mov      edi, dword ptr [__imp__GetMessageA@4]          // 0x007db952    8b3d20988a00
_jmp_addr_0x007db958:    {disp32} mov      eax, dword ptr [data_bytes + 0x4c60f4]         // 0x007db958    a1f4c0e800
                         push              0x0                                            // 0x007db95d    6a00
                         push              0x0                                            // 0x007db95f    6a00
                         push              0x0                                            // 0x007db961    6a00
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                    // 0x007db963    8d4c2418
                         push              eax                                            // 0x007db967    50
                         push              ecx                                            // 0x007db968    51
                         call              esi                                            // 0x007db969    ffd6
                         test              eax, eax                                       // 0x007db96b    85c0
                         {disp8} je        _jmp_addr_0x007db9c6                           // 0x007db96d    7457
_jmp_addr_0x007db96f:    {disp32} mov      edx, dword ptr [data_bytes + 0x4c60f4]         // 0x007db96f    8b15f4c0e800
                         push              0x0                                            // 0x007db975    6a00
                         push              0x0                                            // 0x007db977    6a00
                         {disp8} lea       eax, dword ptr [esp + 0x14]                    // 0x007db979    8d442414
                         push              edx                                            // 0x007db97d    52
                         push              eax                                            // 0x007db97e    50
                         call              edi                                            // 0x007db97f    ffd7
                         {disp32} mov      edx, dword ptr [data_bytes + 0x4c60e8]         // 0x007db981    8b15e8c0e800
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4c60f4]         // 0x007db987    a1f4c0e800
                         {disp8} lea       ecx, dword ptr [esp + 0x0c]                    // 0x007db98c    8d4c240c
                         push              ecx                                            // 0x007db990    51
                         push              edx                                            // 0x007db991    52
                         push              eax                                            // 0x007db992    50
                         call              ebp                                            // 0x007db993    ffd5
                         test              eax, eax                                       // 0x007db995    85c0
                         {disp8} jne       _jmp_addr_0x007db9af                           // 0x007db997    7516
                         {disp8} lea       ecx, dword ptr [esp + 0x0c]                    // 0x007db999    8d4c240c
                         push              ecx                                            // 0x007db99d    51
                         call              dword ptr [__imp__TranslateMessage@4]          // 0x007db99e    ff1564988a00
                         {disp8} lea       edx, dword ptr [esp + 0x0c]                    // 0x007db9a4    8d54240c
                         push              edx                                            // 0x007db9a8    52
                         call              dword ptr [__imp__DispatchMessageA@4]          // 0x007db9a9    ff1530988a00
_jmp_addr_0x007db9af:    {disp32} mov      eax, dword ptr [data_bytes + 0x4c60f4]         // 0x007db9af    a1f4c0e800
                         push              0x0                                            // 0x007db9b4    6a00
                         push              0x0                                            // 0x007db9b6    6a00
                         push              0x0                                            // 0x007db9b8    6a00
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                    // 0x007db9ba    8d4c2418
                         push              eax                                            // 0x007db9be    50
                         push              ecx                                            // 0x007db9bf    51
                         call              esi                                            // 0x007db9c0    ffd6
                         test              eax, eax                                       // 0x007db9c2    85c0
                         {disp8} jne       _jmp_addr_0x007db96f                           // 0x007db9c4    75a9
_jmp_addr_0x007db9c6:    {disp32} mov      al, byte ptr [data_bytes + 0x4c60fb]           // 0x007db9c6    a0fbc0e800
                         test              al, al                                         // 0x007db9cb    84c0
                         {disp8} je        _jmp_addr_0x007db9e0                           // 0x007db9cd    7411
                         mov               ecx, 0x00e85050                                // 0x007db9cf    b95050e800
                         {disp32} mov      byte ptr [data_bytes + 0x4c60fb], 0x00         // 0x007db9d4    c605fbc0e80000
                         call              _jmp_addr_0x007de6f0                           // 0x007db9db    e8102d0000
_jmp_addr_0x007db9e0:    {disp32} mov      eax, dword ptr [data_bytes + 0x4c65e0]         // 0x007db9e0    a1e0c5e800
                         test              eax, eax                                       // 0x007db9e5    85c0
                         {disp32} jne      _jmp_addr_0x007db958                           // 0x007db9e7    0f856bffffff
                         pop               edi                                            // 0x007db9ed    5f
                         pop               esi                                            // 0x007db9ee    5e
                         pop               ebp                                            // 0x007db9ef    5d
                         add               esp, 0x1c                                      // 0x007db9f0    83c41c
                         ret                                                              // 0x007db9f3    c3
                         nop                                                              // 0x007db9f4    90
                         nop                                                              // 0x007db9f5    90
                         nop                                                              // 0x007db9f6    90
                         nop                                                              // 0x007db9f7    90
                         nop                                                              // 0x007db9f8    90
                         nop                                                              // 0x007db9f9    90
                         nop                                                              // 0x007db9fa    90
                         nop                                                              // 0x007db9fb    90
                         nop                                                              // 0x007db9fc    90
                         nop                                                              // 0x007db9fd    90
                         nop                                                              // 0x007db9fe    90
                         nop                                                              // 0x007db9ff    90
_jmp_addr_0x007dba00:    sub               esp, 0x28                                      // 0x007dba00    83ec28
                         {disp8} mov       eax, dword ptr [esp + 0x30]                    // 0x007dba03    8b442430
                         push              esi                                            // 0x007dba07    56
                         {disp8} mov       esi, dword ptr [esp + 0x30]                    // 0x007dba08    8b742430
                         push              edi                                            // 0x007dba0c    57
                         xor.s             edi, edi                                       // 0x007dba0d    33ff
                         push              0x00c311d0                                     // 0x007dba0f    68d011c300
                         push              esi                                            // 0x007dba14    56
                         {disp8} mov       dword ptr [esp + 0x10], 0x0000000b             // 0x007dba15    c74424100b000000
                         {disp8} mov       dword ptr [esp + 0x14], eax                    // 0x007dba1d    89442414
                         {disp8} mov       dword ptr [esp + 0x18], edi                    // 0x007dba21    897c2418
                         {disp8} mov       dword ptr [esp + 0x1c], edi                    // 0x007dba25    897c241c
                         {disp8} mov       dword ptr [esp + 0x20], esi                    // 0x007dba29    89742420
                         call              dword ptr [__imp__LoadIconA@4]                 // 0x007dba2d    ff1510988a00
                         {disp8} lea       ecx, dword ptr [esp + 0x08]                    // 0x007dba33    8d4c2408
                         {disp8} mov       dword ptr [esp + 0x1c], eax                    // 0x007dba37    8944241c
                         push              ecx                                            // 0x007dba3b    51
                         {disp8} mov       dword ptr [esp + 0x24], edi                    // 0x007dba3c    897c2424
                         {disp8} mov       dword ptr [esp + 0x28], edi                    // 0x007dba40    897c2428
                         {disp8} mov       dword ptr [esp + 0x2c], 0x00c311c8             // 0x007dba44    c744242cc811c300
                         {disp8} mov       dword ptr [esp + 0x30], 0x00c311bc             // 0x007dba4c    c7442430bc11c300
                         call              dword ptr [__imp__RegisterClassA@4]            // 0x007dba54    ff1514988a00
                         test              ax, ax                                         // 0x007dba5a    6685c0
                         {disp8} jne       _jmp_addr_0x007dba6a                           // 0x007dba5d    750b
                         pop               edi                                            // 0x007dba5f    5f
                         mov               eax, 0x00000002                                // 0x007dba60    b802000000
                         pop               esi                                            // 0x007dba65    5e
                         add               esp, 0x28                                      // 0x007dba66    83c428
                         ret                                                              // 0x007dba69    c3
_jmp_addr_0x007dba6a:    push              0x00c311b0                                     // 0x007dba6a    68b011c300
                         push              esi                                            // 0x007dba6f    56
                         call              dword ptr [__imp__LoadAcceleratorsA@4]         // 0x007dba70    ff1524988a00
                         {disp32} mov      dword ptr [data_bytes + 0x4c60e8], eax         // 0x007dba76    a3e8c0e800
                         pop               edi                                            // 0x007dba7b    5f
                         xor.s             eax, eax                                       // 0x007dba7c    33c0
                         pop               esi                                            // 0x007dba7e    5e
                         add               esp, 0x28                                      // 0x007dba7f    83c428
                         ret                                                              // 0x007dba82    c3
                         nop                                                              // 0x007dba83    90
                         nop                                                              // 0x007dba84    90
                         nop                                                              // 0x007dba85    90
                         nop                                                              // 0x007dba86    90
                         nop                                                              // 0x007dba87    90
                         nop                                                              // 0x007dba88    90
                         nop                                                              // 0x007dba89    90
                         nop                                                              // 0x007dba8a    90
                         nop                                                              // 0x007dba8b    90
                         nop                                                              // 0x007dba8c    90
                         nop                                                              // 0x007dba8d    90
                         nop                                                              // 0x007dba8e    90
                         nop                                                              // 0x007dba8f    90
_jmp_addr_0x007dba90:    {disp32} mov      eax, fs:[0x0]                                  // 0x007dba90    64a100000000
                         push              -0x1                                           // 0x007dba96    6aff
                         push              0x008a79a7                                     // 0x007dba98    68a7798a00
                         push              eax                                            // 0x007dba9d    50
                         {disp32} mov      fs:[0x0], esp                                  // 0x007dba9e    64892500000000
                         sub               esp, 0x10                                      // 0x007dbaa5    83ec10
                         mov               ecx, 0x0000003f                                // 0x007dbaa8    b93f000000
                         xor.s             eax, eax                                       // 0x007dbaad    33c0
                         push              ebx                                            // 0x007dbaaf    53
                         push              esi                                            // 0x007dbab0    56
                         push              edi                                            // 0x007dbab1    57
                         mov               edi, 0x00e85374                                // 0x007dbab2    bf7453e800
                         rep stosd                                                        // 0x007dbab7    f3ab
                         stosw                                                            // 0x007dbab9    66ab
                         stosb                                                            // 0x007dbabb    aa
                         {disp8} mov       eax, dword ptr [esp + 0x34]                    // 0x007dbabc    8b442434
                         mov               edi, 0x00000001                                // 0x007dbac0    bf01000000
                         xor.s             ebx, ebx                                       // 0x007dbac5    33db
                         cmp.s             eax, edi                                       // 0x007dbac7    3bc7
                         {disp32} mov      byte ptr [data_bytes + 0x4bf478], bl           // 0x007dbac9    881d7854e800
                         {disp8} jne       _jmp_addr_0x007dbb2e                           // 0x007dbacf    755d
                         push              edi                                            // 0x007dbad1    57
                         {disp8} lea       eax, dword ptr [esp + 0x10]                    // 0x007dbad2    8d442410
                         push              0x00cf0000                                     // 0x007dbad6    680000cf00
                         push              eax                                            // 0x007dbadb    50
                         {disp8} mov       dword ptr [esp + 0x18], ebx                    // 0x007dbadc    895c2418
                         {disp8} mov       dword ptr [esp + 0x1c], ebx                    // 0x007dbae0    895c241c
                         {disp8} mov       dword ptr [esp + 0x24], 0x00000258             // 0x007dbae4    c744242458020000
                         {disp8} mov       dword ptr [esp + 0x20], 0x00000320             // 0x007dbaec    c744242020030000
                         call              dword ptr [__imp__AdjustWindowRect@4]          // 0x007dbaf4    ff150c988a00
                         {disp8} mov       ecx, dword ptr [esp + 0x2c]                    // 0x007dbafa    8b4c242c
                         {disp8} mov       edx, dword ptr [esp + 0x18]                    // 0x007dbafe    8b542418
                         {disp8} mov       eax, dword ptr [esp + 0x14]                    // 0x007dbb02    8b442414
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                    // 0x007dbb06    8b74240c
                         push              ebx                                            // 0x007dbb0a    53
                         push              ecx                                            // 0x007dbb0b    51
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                    // 0x007dbb0c    8b4c2418
                         push              ebx                                            // 0x007dbb10    53
                         sub.s             edx, ecx                                       // 0x007dbb11    2bd1
                         push              ebx                                            // 0x007dbb13    53
                         sub.s             eax, esi                                       // 0x007dbb14    2bc6
                         push              edx                                            // 0x007dbb16    52
                         push              eax                                            // 0x007dbb17    50
                         push              0x32                                           // 0x007dbb18    6a32
                         push              0x32                                           // 0x007dbb1a    6a32
                         push              0x00cf0000                                     // 0x007dbb1c    680000cf00
                         push              0x00c311bc                                     // 0x007dbb21    68bc11c300
                         push              0x00c311bc                                     // 0x007dbb26    68bc11c300
                         push              ebx                                            // 0x007dbb2b    53
                         {disp8} jmp       _jmp_addr_0x007dbb59                           // 0x007dbb2c    eb2b
_jmp_addr_0x007dbb2e:    {disp8} mov       ecx, dword ptr [esp + 0x2c]                    // 0x007dbb2e    8b4c242c
                         {disp32} mov      esi, dword ptr [__imp__GetSystemMetrics@4]     // 0x007dbb32    8b3504988a00
                         push              ebx                                            // 0x007dbb38    53
                         push              ecx                                            // 0x007dbb39    51
                         push              ebx                                            // 0x007dbb3a    53
                         push              ebx                                            // 0x007dbb3b    53
                         push              edi                                            // 0x007dbb3c    57
                         call              esi                                            // 0x007dbb3d    ffd6
                         push              eax                                            // 0x007dbb3f    50
                         push              ebx                                            // 0x007dbb40    53
                         call              esi                                            // 0x007dbb41    ffd6
                         push              eax                                            // 0x007dbb43    50
                         push              0x32                                           // 0x007dbb44    6a32
                         push              0x32                                           // 0x007dbb46    6a32
                         push              0x80000000                                     // 0x007dbb48    6800000080
                         push              0x00c311bc                                     // 0x007dbb4d    68bc11c300
                         push              0x00c311bc                                     // 0x007dbb52    68bc11c300
                         push              0x8                                            // 0x007dbb57    6a08
_jmp_addr_0x007dbb59:    call              dword ptr [__imp__CreateWindowExA@4]           // 0x007dbb59    ff1508988a00
                         cmp.s             eax, ebx                                       // 0x007dbb5f    3bc3
                         {disp32} mov      dword ptr [data_bytes + 0x4c60f4], eax         // 0x007dbb61    a3f4c0e800
                         {disp8} jne       _jmp_addr_0x007dbb7f                           // 0x007dbb66    7517
                         pop               edi                                            // 0x007dbb68    5f
                         pop               esi                                            // 0x007dbb69    5e
                         mov               eax, 0x00000002                                // 0x007dbb6a    b802000000
                         pop               ebx                                            // 0x007dbb6f    5b
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                    // 0x007dbb70    8b4c2410
                         {disp32} mov      fs:[0x0], ecx                                  // 0x007dbb74    64890d00000000
                         add               esp, 0x1c                                      // 0x007dbb7b    83c41c
                         ret                                                              // 0x007dbb7e    c3
_jmp_addr_0x007dbb7f:    push              edi                                            // 0x007dbb7f    57
                         push              eax                                            // 0x007dbb80    50
                         call              dword ptr [__imp__ShowWindow@4]                // 0x007dbb81    ff15d0978a00
                         {disp32} mov      edx, dword ptr [data_bytes + 0x4c60f4]         // 0x007dbb87    8b15f4c0e800
                         push              edx                                            // 0x007dbb8d    52
                         call              dword ptr [__imp__GetMenu@4]                   // 0x007dbb8e    ff1518988a00
                         {disp32} mov      dword ptr [data_bytes + 0x4c60f0], eax         // 0x007dbb94    a3f0c0e800
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4c60f4]         // 0x007dbb99    a1f4c0e800
                         push              0x00e8c0d8                                     // 0x007dbb9e    68d8c0e800
                         {disp32} mov      dword ptr [data_bytes + 0x4c60d8], 0x00000010  // 0x007dbba3    c705d8c0e80010000000
                         {disp32} mov      dword ptr [data_bytes + 0x4c60dc], 0x00000002  // 0x007dbbad    c705dcc0e80002000000
                         {disp32} mov      dword ptr [data_bytes + 0x4c60e0], eax         // 0x007dbbb7    a3e0c0e800
                         call              dword ptr [__imp__TrackMouseEvent@4]           // 0x007dbbbc    ff151c908a00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf270]         // 0x007dbbc2    a17052e800
                         {disp32} mov      dword ptr [data_bytes + 0x26b1ac], edi         // 0x007dbbc7    893dac11c300
                         cmp               eax, 0x03                                      // 0x007dbbcd    83f803
                         {disp8} jne       _jmp_addr_0x007dbbe6                           // 0x007dbbd0    7514
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c60f4]         // 0x007dbbd2    8b0df4c0e800
                         push              ebx                                            // 0x007dbbd8    53
                         push              ebx                                            // 0x007dbbd9    53
                         push              0x00008005                                     // 0x007dbbda    6805800000
                         push              ecx                                            // 0x007dbbdf    51
                         call              dword ptr [__imp__SendMessageA@4]              // 0x007dbbe0    ff15dc978a00
_jmp_addr_0x007dbbe6:    call              _jmp_addr_0x007db8f0                           // 0x007dbbe6    e805fdffff
                         push              0x000000c1                                     // 0x007dbbeb    68c1000000
                         push              0x00c311d8                                     // 0x007dbbf0    68d811c300
                         push              0x4                                            // 0x007dbbf5    6a04
                         call              ___nw__FUl                                     // 0x007dbbf7    e894fbffff
                         add               esp, 0x0c                                      // 0x007dbbfc    83c40c
                         {disp8} mov       dword ptr [esp + 0x2c], eax                    // 0x007dbbff    8944242c
                         cmp.s             eax, ebx                                       // 0x007dbc03    3bc3
                         {disp8} mov       dword ptr [esp + 0x24], ebx                    // 0x007dbc05    895c2424
                         {disp8} je        _jmp_addr_0x007dbc14                           // 0x007dbc09    7409
                         mov.s             ecx, eax                                       // 0x007dbc0b    8bc8
                         call              _jmp_addr_0x007f3b80                           // 0x007dbc0d    e86e7f0100
                         {disp8} jmp       _jmp_addr_0x007dbc16                           // 0x007dbc12    eb02
_jmp_addr_0x007dbc14:    xor.s             eax, eax                                       // 0x007dbc14    33c0
_jmp_addr_0x007dbc16:    {disp8} mov       ecx, dword ptr [esp + 0x1c]                    // 0x007dbc16    8b4c241c
                         pop               edi                                            // 0x007dbc1a    5f
                         {disp32} mov      dword ptr [data_bytes + 0x4c6104], eax         // 0x007dbc1b    a304c1e800
                         pop               esi                                            // 0x007dbc20    5e
                         xor.s             eax, eax                                       // 0x007dbc21    33c0
                         pop               ebx                                            // 0x007dbc23    5b
                         {disp32} mov      fs:[0x0], ecx                                  // 0x007dbc24    64890d00000000
                         add               esp, 0x1c                                      // 0x007dbc2b    83c41c
                         ret                                                              // 0x007dbc2e    c3
                         nop                                                              // 0x007dbc2f    90
_jmp_addr_0x007dbc30@16: {disp32} mov      eax, dword ptr [rdata_bytes + 0x358]           // 0x007dbc30    a158938a00
                         push              ebx                                            // 0x007dbc35    53
                         {disp32} mov      ebx, dword ptr [__imp__LoadCursorA@4]          // 0x007dbc36    8b1d58988a00
                         push              esi                                            // 0x007dbc3c    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                    // 0x007dbc3d    8b74240c
                         mov               dword ptr [eax], 0x007dbcf0                    // 0x007dbc41    c700f0bc7d00
                         {disp32} mov      ecx, dword ptr [rdata_bytes + 0x3d0]           // 0x007dbc47    8b0dd0938a00
                         push              edi                                            // 0x007dbc4d    57
                         {disp8} mov       edi, dword ptr [esp + 0x1c]                    // 0x007dbc4e    8b7c241c
                         push              0x6c                                           // 0x007dbc52    6a6c
                         mov               dword ptr [ecx], 0x007dbd00                    // 0x007dbc54    c70100bd7d00
                         push              esi                                            // 0x007dbc5a    56
                         {disp32} mov      dword ptr [data_bytes + 0x4bf040], esi         // 0x007dbc5b    89354050e800
                         {disp32} mov      dword ptr [data_bytes + 0x4bf044], edi         // 0x007dbc61    893d4450e800
                         {disp32} mov      dword ptr [data_bytes + 0x4bf04c], 0x00000000  // 0x007dbc67    c7054c50e80000000000
                         call              ebx                                            // 0x007dbc71    ffd3
                         push              0x00007f00                                     // 0x007dbc73    68007f0000
                         push              0x0                                            // 0x007dbc78    6a00
                         {disp32} mov      dword ptr [data_bytes + 0x4c60d4], eax         // 0x007dbc7a    a3d4c0e800
                         call              ebx                                            // 0x007dbc7f    ffd3
                         push              0x0                                            // 0x007dbc81    6a00
                         push              0x0                                            // 0x007dbc83    6a00
                         push              0x0                                            // 0x007dbc85    6a00
                         push              0x0                                            // 0x007dbc87    6a00
                         {disp32} mov      dword ptr [data_bytes + 0x4c60d0], eax         // 0x007dbc89    a3d0c0e800
                         call              dword ptr [__imp__CreateEventA@4]              // 0x007dbc8e    ff1558928a00
                         push              0x007dbf30                                     // 0x007dbc94    6830bf7d00
                         push              esi                                            // 0x007dbc99    56
                         {disp32} mov      dword ptr [data_bytes + 0x4c60cc], eax         // 0x007dbc9a    a3ccc0e800
                         call              _jmp_addr_0x007dba00                           // 0x007dbc9f    e85cfdffff
                         {disp32} mov      edx, dword ptr [data_bytes + 0x4bf0b4]         // 0x007dbca4    8b15b450e800
                         push              edx                                            // 0x007dbcaa    52
                         push              edi                                            // 0x007dbcab    57
                         push              esi                                            // 0x007dbcac    56
                         call              _jmp_addr_0x007dba90                           // 0x007dbcad    e8defdffff
                         add               esp, 0x14                                      // 0x007dbcb2    83c414
                         call              _jmp_addr_0x007db910                           // 0x007dbcb5    e856fcffff
                         pop               edi                                            // 0x007dbcba    5f
                         pop               esi                                            // 0x007dbcbb    5e
                         test              al, al                                         // 0x007dbcbc    84c0
                         pop               ebx                                            // 0x007dbcbe    5b
                         {disp8} jne       _jmp_addr_0x007dbcca                           // 0x007dbcbf    7509
_jmp_addr_0x007dbcc1:    call              _jmp_addr_0x007db910                           // 0x007dbcc1    e84afcffff
                         test              al, al                                         // 0x007dbcc6    84c0
                         {disp8} je        _jmp_addr_0x007dbcc1                           // 0x007dbcc8    74f7
_jmp_addr_0x007dbcca:    call              _jmp_addr_0x007db940                           // 0x007dbcca    e871fcffff
                         push              0xffffff01                                     // 0x007dbccf    6801ffffff
                         push              0x0                                            // 0x007dbcd4    6a00
                         push              0x0                                            // 0x007dbcd6    6a00
                         push              0x007dbd10                                     // 0x007dbcd8    6810bd7d00
                         push              0x00c31204                                     // 0x007dbcdd    680412c300
                         call              dword ptr [rdata_bytes + 0x3dc]                // 0x007dbce2    ff15dc938a00
                         add               esp, 0x14                                      // 0x007dbce8    83c414
                         xor.s             eax, eax                                       // 0x007dbceb    33c0
                         ret               0x0010                                         // 0x007dbced    c21000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf0b4]         // 0x007dbcf0    a1b450e800
                         test              eax, eax                                       // 0x007dbcf5    85c0
                         {disp8} jne       _jmp_addr_0x007dbcfe                           // 0x007dbcf7    7505
                         {disp32} jmp      _jmp_addr_0x007dece0                           // 0x007dbcf9    e9e22f0000
_jmp_addr_0x007dbcfe:    ret                                                              // 0x007dbcfe    c3
                         nop                                                              // 0x007dbcff    90
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf0b4]         // 0x007dbd00    a1b450e800
                         test              eax, eax                                       // 0x007dbd05    85c0
                         {disp8} jne       _jmp_addr_0x007dbd0e                           // 0x007dbd07    7505
                         {disp32} jmp      _jmp_addr_0x007ded10                           // 0x007dbd09    e902300000
_jmp_addr_0x007dbd0e:    ret                                                              // 0x007dbd0e    c3
                         nop                                                              // 0x007dbd0f    90
                         {disp32} mov      al, byte ptr [data_bytes + 0x4c6108]           // 0x007dbd10    a008c1e800
                         sub               esp, 0x20                                      // 0x007dbd15    83ec20
                         test              al, al                                         // 0x007dbd18    84c0
                         push              ebx                                            // 0x007dbd1a    53
                         push              ebp                                            // 0x007dbd1b    55
                         push              esi                                            // 0x007dbd1c    56
                         push              edi                                            // 0x007dbd1d    57
                         {disp32} jne      _jmp_addr_0x007dbe9b                           // 0x007dbd1e    0f8577010000
_jmp_addr_0x007dbd24:    {disp32} mov      eax, dword ptr [data_bytes + 0x4c60cc]         // 0x007dbd24    a1ccc0e800
                         push              0x28                                           // 0x007dbd29    6a28
                         push              eax                                            // 0x007dbd2b    50
                         call              dword ptr [__imp__WaitForSingleObject@4]       // 0x007dbd2c    ff1554928a00
                         {disp32} mov      cl, byte ptr [data_bytes + 0x4c6108]           // 0x007dbd32    8a0d08c1e800
                         test              cl, cl                                         // 0x007dbd38    84c9
                         {disp32} jne      _jmp_addr_0x007dbe9b                           // 0x007dbd3a    0f855b010000
                         test              eax, eax                                       // 0x007dbd40    85c0
                         {disp8} je        _jmp_addr_0x007dbd24                           // 0x007dbd42    74e0
_jmp_addr_0x007dbd44:    {disp32} mov      ecx, dword ptr [__imp__InAssertDialog__3_NA@4] // 0x007dbd44    8b0d38938a00
                         cmp               byte ptr [ecx], 0x00                           // 0x007dbd4a    803900
                         {disp8} jne       _jmp_addr_0x007dbd6a                           // 0x007dbd4d    751b
                         {disp32} mov      al, byte ptr [data_bytes + 0x4c60fa]           // 0x007dbd4f    a0fac0e800
                         test              al, al                                         // 0x007dbd54    84c0
                         {disp8} jne       _jmp_addr_0x007dbd6a                           // 0x007dbd56    7512
                         {disp32} mov      eax, dword ptr [data_bytes + 0x26b1a8]         // 0x007dbd58    a1a811c300
                         test              eax, eax                                       // 0x007dbd5d    85c0
                         {disp8} je        _jmp_addr_0x007dbd6a                           // 0x007dbd5f    7409
                         {disp32} mov      al, byte ptr [data_bytes + 0x4c60f8]           // 0x007dbd61    a0f8c0e800
                         test              al, al                                         // 0x007dbd66    84c0
                         {disp8} je        _jmp_addr_0x007dbd80                           // 0x007dbd68    7416
_jmp_addr_0x007dbd6a:    {disp32} mov      al, byte ptr [data_bytes + 0x4c6108]           // 0x007dbd6a    a008c1e800
                         test              al, al                                         // 0x007dbd6f    84c0
                         {disp8} jne       _jmp_addr_0x007dbd80                           // 0x007dbd71    750d
                         push              0x0000012c                                     // 0x007dbd73    682c010000
                         call              dword ptr [__imp__Sleep@4]                     // 0x007dbd78    ff1530928a00
                         {disp8} jmp       _jmp_addr_0x007dbd44                           // 0x007dbd7e    ebc4
_jmp_addr_0x007dbd80:    {disp32} mov      esi, dword ptr [__imp__GetAsyncKeyState@4]     // 0x007dbd80    8b3560988a00
                         mov               ebx, 0x00000001                                // 0x007dbd86    bb01000000
                         push              ebx                                            // 0x007dbd8b    53
                         call              esi                                            // 0x007dbd8c    ffd6
                         push              0x2                                            // 0x007dbd8e    6a02
                         movsx             edi, ax                                        // 0x007dbd90    0fbff8
                         call              esi                                            // 0x007dbd93    ffd6
                         push              0x17                                           // 0x007dbd95    6a17
                         movsx             ebp, ax                                        // 0x007dbd97    0fbfe8
                         call              dword ptr [__imp__GetSystemMetrics@4]          // 0x007dbd9a    ff1504988a00
                         cmp.s             eax, ebx                                       // 0x007dbda0    3bc3
                         {disp8} jne       _jmp_addr_0x007dbdaa                           // 0x007dbda2    7506
                         mov.s             eax, edi                                       // 0x007dbda4    8bc7
                         mov.s             edi, ebp                                       // 0x007dbda6    8bfd
                         mov.s             ebp, eax                                       // 0x007dbda8    8be8
_jmp_addr_0x007dbdaa:    push              0x4                                            // 0x007dbdaa    6a04
                         call              esi                                            // 0x007dbdac    ffd6
                         movsx             edx, ax                                        // 0x007dbdae    0fbfd0
                         push              0x000000a1                                     // 0x007dbdb1    68a1000000
                         {disp8} mov       dword ptr [esp + 0x18], edx                    // 0x007dbdb6    89542418
                         call              esi                                            // 0x007dbdba    ffd6
                         test              ax, ax                                         // 0x007dbdbc    6685c0
                         {disp8} jne       _jmp_addr_0x007dbdd5                           // 0x007dbdbf    7514
                         push              0x000000a0                                     // 0x007dbdc1    68a0000000
                         call              esi                                            // 0x007dbdc6    ffd6
                         test              ax, ax                                         // 0x007dbdc8    6685c0
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000000             // 0x007dbdcb    c744241000000000
                         {disp8} je        _jmp_addr_0x007dbdd9                           // 0x007dbdd3    7404
_jmp_addr_0x007dbdd5:    {disp8} mov       dword ptr [esp + 0x10], ebx                    // 0x007dbdd5    895c2410
_jmp_addr_0x007dbdd9:    push              0x000000a3                                     // 0x007dbdd9    68a3000000
                         call              esi                                            // 0x007dbdde    ffd6
                         test              ax, ax                                         // 0x007dbde0    6685c0
                         {disp8} jne       _jmp_addr_0x007dbdf3                           // 0x007dbde3    750e
                         push              0x000000a2                                     // 0x007dbde5    68a2000000
                         call              esi                                            // 0x007dbdea    ffd6
                         test              ax, ax                                         // 0x007dbdec    6685c0
                         {disp8} jne       _jmp_addr_0x007dbdf3                           // 0x007dbdef    7502
                         xor.s             ebx, ebx                                       // 0x007dbdf1    33db
_jmp_addr_0x007dbdf3:    {disp8} lea       eax, dword ptr [esp + 0x18]                    // 0x007dbdf3    8d442418
                         push              eax                                            // 0x007dbdf7    50
                         call              dword ptr [__imp__GetCursorPos@4]              // 0x007dbdf8    ff1578988a00
                         xor.s             esi, esi                                       // 0x007dbdfe    33f6
                         test              edi, edi                                       // 0x007dbe00    85ff
                         {disp8} je        _jmp_addr_0x007dbe09                           // 0x007dbe02    7405
                         mov               esi, 0x00000001                                // 0x007dbe04    be01000000
_jmp_addr_0x007dbe09:    test              ebp, ebp                                       // 0x007dbe09    85ed
                         {disp8} je        _jmp_addr_0x007dbe10                           // 0x007dbe0b    7403
                         or                esi, 2                                         // 0x007dbe0d    83ce02
_jmp_addr_0x007dbe10:    {disp8} mov       eax, dword ptr [esp + 0x14]                    // 0x007dbe10    8b442414
                         test              eax, eax                                       // 0x007dbe14    85c0
                         {disp8} je        _jmp_addr_0x007dbe1b                           // 0x007dbe16    7403
                         or                esi, 0x10                                      // 0x007dbe18    83ce10
_jmp_addr_0x007dbe1b:    {disp8} mov       eax, dword ptr [esp + 0x10]                    // 0x007dbe1b    8b442410
                         test              eax, eax                                       // 0x007dbe1f    85c0
                         {disp8} je        _jmp_addr_0x007dbe26                           // 0x007dbe21    7403
                         or                esi, 4                                         // 0x007dbe23    83ce04
_jmp_addr_0x007dbe26:    test              ebx, ebx                                       // 0x007dbe26    85db
                         {disp8} je        _jmp_addr_0x007dbe2d                           // 0x007dbe28    7403
                         or                esi, 8                                         // 0x007dbe2a    83ce08
_jmp_addr_0x007dbe2d:    {disp32} mov      edx, dword ptr [data_bytes + 0x4c60f4]         // 0x007dbe2d    8b15f4c0e800
                         {disp8} lea       ecx, dword ptr [esp + 0x20]                    // 0x007dbe33    8d4c2420
                         push              ecx                                            // 0x007dbe37    51
                         push              edx                                            // 0x007dbe38    52
                         call              dword ptr [__imp__GetWindowRect@4]             // 0x007dbe39    ff15f4978a00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf0b4]         // 0x007dbe3f    a1b450e800
                         test              eax, eax                                       // 0x007dbe44    85c0
                         {disp8} je        _jmp_addr_0x007dbe5c                           // 0x007dbe46    7414
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c60f4]         // 0x007dbe48    8b0df4c0e800
                         {disp8} lea       eax, dword ptr [esp + 0x18]                    // 0x007dbe4e    8d442418
                         push              eax                                            // 0x007dbe52    50
                         push              ecx                                            // 0x007dbe53    51
                         call              _jmp_addr_0x007dbeb0                           // 0x007dbe54    e857000000
                         add               esp, 0x08                                      // 0x007dbe59    83c408
_jmp_addr_0x007dbe5c:    {disp8} mov       edx, dword ptr [esp + 0x1c]                    // 0x007dbe5c    8b54241c
                         {disp8} mov       eax, dword ptr [esp + 0x18]                    // 0x007dbe60    8b442418
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c60f4]         // 0x007dbe64    8b0df4c0e800
                         and               edx, 0x0000ffff                                // 0x007dbe6a    81e2ffff0000
                         shl               edx, 0x10                                      // 0x007dbe70    c1e210
                         and               eax, 0x0000ffff                                // 0x007dbe73    25ffff0000
                         and               esi, 0x0000ffff                                // 0x007dbe78    81e6ffff0000
                         or.s              edx, eax                                       // 0x007dbe7e    0bd0
                         push              edx                                            // 0x007dbe80    52
                         push              esi                                            // 0x007dbe81    56
                         push              0x00008009                                     // 0x007dbe82    6809800000
                         push              ecx                                            // 0x007dbe87    51
                         call              dword ptr [__imp__PostMessageA@4]              // 0x007dbe88    ff15fc978a00
                         {disp32} mov      al, byte ptr [data_bytes + 0x4c6108]           // 0x007dbe8e    a008c1e800
                         test              al, al                                         // 0x007dbe93    84c0
                         {disp32} je       _jmp_addr_0x007dbd24                           // 0x007dbe95    0f8489feffff
_jmp_addr_0x007dbe9b:    pop               edi                                            // 0x007dbe9b    5f
                         pop               esi                                            // 0x007dbe9c    5e
                         pop               ebp                                            // 0x007dbe9d    5d
                         {disp32} mov      byte ptr [data_bytes + 0x4c6108], 0x00         // 0x007dbe9e    c60508c1e80000
                         pop               ebx                                            // 0x007dbea5    5b
                         add               esp, 0x20                                      // 0x007dbea6    83c420
                         ret                                                              // 0x007dbea9    c3
                         nop                                                              // 0x007dbeaa    90
                         nop                                                              // 0x007dbeab    90
                         nop                                                              // 0x007dbeac    90
                         nop                                                              // 0x007dbead    90
                         nop                                                              // 0x007dbeae    90
                         nop                                                              // 0x007dbeaf    90
_jmp_addr_0x007dbeb0:    push              esi                                            // 0x007dbeb0    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                    // 0x007dbeb1    8b74240c
                         push              esi                                            // 0x007dbeb5    56
                         call              dword ptr [__imp__GetCursorPos@4]              // 0x007dbeb6    ff1578988a00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4c60f4]         // 0x007dbebc    a1f4c0e800
                         push              esi                                            // 0x007dbec1    56
                         push              eax                                            // 0x007dbec2    50
                         call              dword ptr [__imp__ScreenToClient@4]            // 0x007dbec3    ff155c988a00
                         pop               esi                                            // 0x007dbec9    5e
                         ret                                                              // 0x007dbeca    c3
                         nop                                                              // 0x007dbecb    90
                         nop                                                              // 0x007dbecc    90
                         nop                                                              // 0x007dbecd    90
                         nop                                                              // 0x007dbece    90
                         nop                                                              // 0x007dbecf    90
_jmp_addr_0x007dbed0:    {disp32} mov      al, byte ptr [data_bytes + 0x4c6109]           // 0x007dbed0    a009c1e800
                         test              al, al                                         // 0x007dbed5    84c0
                         {disp8} jne       _jmp_addr_0x007dbf01                           // 0x007dbed7    7528
                         {disp32} mov      al, byte ptr [data_bytes + 0x4c6108]           // 0x007dbed9    a008c1e800
                         {disp32} mov      byte ptr [data_bytes + 0x4c6109], 0x01         // 0x007dbede    c60509c1e80001
                         test              al, al                                         // 0x007dbee5    84c0
                         {disp8} je        _jmp_addr_0x007dbf01                           // 0x007dbee7    7418
                         push              esi                                            // 0x007dbee9    56
                         {disp32} mov      esi, dword ptr [__imp__Sleep@4]                // 0x007dbeea    8b3530928a00
_jmp_addr_0x007dbef0:    push              0x0000012c                                     // 0x007dbef0    682c010000
                         call              esi                                            // 0x007dbef5    ffd6
                         {disp32} mov      al, byte ptr [data_bytes + 0x4c6108]           // 0x007dbef7    a008c1e800
                         test              al, al                                         // 0x007dbefc    84c0
                         {disp8} jne       _jmp_addr_0x007dbef0                           // 0x007dbefe    75f0
                         pop               esi                                            // 0x007dbf00    5e
_jmp_addr_0x007dbf01:    push              0x00e90650                                     // 0x007dbf01    685006e900
                         call              dword ptr [__imp__EnterCriticalSection@4]      // 0x007dbf06    ff1580918a00
                         mov               ecx, 0x00e85040                                // 0x007dbf0c    b94050e800
                         {disp32} jmp      _jmp_addr_0x007db8a0                           // 0x007dbf11    e98af9ffff
                         nop                                                              // 0x007dbf16    90
                         nop                                                              // 0x007dbf17    90
                         nop                                                              // 0x007dbf18    90
                         nop                                                              // 0x007dbf19    90
                         nop                                                              // 0x007dbf1a    90
                         nop                                                              // 0x007dbf1b    90
                         nop                                                              // 0x007dbf1c    90
                         nop                                                              // 0x007dbf1d    90
                         nop                                                              // 0x007dbf1e    90
                         nop                                                              // 0x007dbf1f    90
                         ret                                                              // 0x007dbf20    c3
                         nop                                                              // 0x007dbf21    90
                         nop                                                              // 0x007dbf22    90
                         nop                                                              // 0x007dbf23    90
                         nop                                                              // 0x007dbf24    90
                         nop                                                              // 0x007dbf25    90
                         nop                                                              // 0x007dbf26    90
                         nop                                                              // 0x007dbf27    90
                         nop                                                              // 0x007dbf28    90
                         nop                                                              // 0x007dbf29    90
                         nop                                                              // 0x007dbf2a    90
                         nop                                                              // 0x007dbf2b    90
                         nop                                                              // 0x007dbf2c    90
                         nop                                                              // 0x007dbf2d    90
                         nop                                                              // 0x007dbf2e    90
                         nop                                                              // 0x007dbf2f    90
                         push              ecx                                            // 0x007dbf30    51
                         {disp32} mov      al, byte ptr [data_bytes + 0x4c60c8]           // 0x007dbf31    a0c8c0e800
                         test              al, 0x01                                       // 0x007dbf36    a801
                         {disp8} jne       _jmp_addr_0x007dbf55                           // 0x007dbf38    751b
                         mov.s             cl, al                                         // 0x007dbf3a    8ac8
                         push              0x00c31218                                     // 0x007dbf3c    681812c300
                         or                cl, 1                                          // 0x007dbf41    80c901
                         {disp32} mov      byte ptr [data_bytes + 0x4c60c8], cl           // 0x007dbf44    880dc8c0e800
                         call              dword ptr [__imp__RegisterWindowMessageA@4]    // 0x007dbf4a    ff1554988a00
                         {disp32} mov      dword ptr [data_bytes + 0x4c60c4], eax         // 0x007dbf50    a3c4c0e800
_jmp_addr_0x007dbf55:    {disp32} mov      ecx, dword ptr [data_bytes + 0x4c6104]         // 0x007dbf55    8b0d04c1e800
                         push              ebx                                            // 0x007dbf5b    53
                         xor.s             ebx, ebx                                       // 0x007dbf5c    33db
                         push              ebp                                            // 0x007dbf5e    55
                         {disp8} mov       ebp, dword ptr [esp + 0x10]                    // 0x007dbf5f    8b6c2410
                         push              esi                                            // 0x007dbf63    56
                         cmp.s             ecx, ebx                                       // 0x007dbf64    3bcb
                         push              edi                                            // 0x007dbf66    57
                         {disp8} je        _jmp_addr_0x007dbf93                           // 0x007dbf67    742a
                         {disp8} lea       eax, dword ptr [esp + 0x10]                    // 0x007dbf69    8d442410
                         {disp8} lea       edx, dword ptr [esp + 0x24]                    // 0x007dbf6d    8d542424
                         push              eax                                            // 0x007dbf71    50
                         push              edx                                            // 0x007dbf72    52
                         {disp8} lea       eax, dword ptr [esp + 0x28]                    // 0x007dbf73    8d442428
                         {disp8} lea       edx, dword ptr [esp + 0x24]                    // 0x007dbf77    8d542424
                         push              eax                                            // 0x007dbf7b    50
                         push              edx                                            // 0x007dbf7c    52
                         push              ebp                                            // 0x007dbf7d    55
                         call              _jmp_addr_0x007f3d20                           // 0x007dbf7e    e89d7d0100
                         test              al, al                                         // 0x007dbf83    84c0
                         {disp8} jne       _jmp_addr_0x007dbf93                           // 0x007dbf85    750c
                         {disp8} mov       eax, dword ptr [esp + 0x10]                    // 0x007dbf87    8b442410
                         pop               edi                                            // 0x007dbf8b    5f
                         pop               esi                                            // 0x007dbf8c    5e
                         pop               ebp                                            // 0x007dbf8d    5d
                         pop               ebx                                            // 0x007dbf8e    5b
                         pop               ecx                                            // 0x007dbf8f    59
                         ret               0x0010                                         // 0x007dbf90    c21000
_jmp_addr_0x007dbf93:    {disp8} mov       eax, dword ptr [esp + 0x1c]                    // 0x007dbf93    8b44241c
                         cmp               eax, 0x00000500                                // 0x007dbf97    3d00050000
                         .byte             0x72, 0x27// {disp8} jb _jmp_addr_0x007dbfc5   // 0x007dbf9c    7227
                         cmp               eax, 0x00000600                                // 0x007dbf9e    3d00060000
                         {disp8} jae       _jmp_addr_0x007dbfc5                           // 0x007dbfa3    7320
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c610c]         // 0x007dbfa5    8b0d0cc1e800
                         cmp.s             ecx, ebx                                       // 0x007dbfab    3bcb
                         {disp8} je        _jmp_addr_0x007dbfc5                           // 0x007dbfad    7416
                         {disp8} mov       edx, dword ptr [esp + 0x24]                    // 0x007dbfaf    8b542424
                         add               eax, 0xfffffb00                                // 0x007dbfb3    0500fbffff
                         push              edx                                            // 0x007dbfb8    52
                         {disp8} mov       edx, dword ptr [esp + 0x24]                    // 0x007dbfb9    8b542424
                         push              edx                                            // 0x007dbfbd    52
                         push              eax                                            // 0x007dbfbe    50
                         call              ecx                                            // 0x007dbfbf    ffd1
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                    // 0x007dbfc1    8b44241c
_jmp_addr_0x007dbfc5:    cmp               eax, 0x1c                                      // 0x007dbfc5    83f81c
                         {disp32} ja       _jmp_addr_0x007dc0f0                           // 0x007dbfc8    0f8722010000
                         {disp32} je       _jmp_addr_0x007dc073                           // 0x007dbfce    0f849f000000
                         {disp8} lea       ecx, dword ptr [eax + -0x01]                   // 0x007dbfd4    8d48ff
                         cmp               ecx, 0x07                                      // 0x007dbfd7    83f907
                         {disp32} ja       _jmp_addr_0x007dc577                           // 0x007dbfda    0f8797050000
                         jmp               dword ptr [ecx*4 + 0x7dc658]                   // 0x007dbfe0    ff248d58c67d00
_jmp_addr_0x007dbfe7:    mov               ecx, 0x00e85050                                // 0x007dbfe7    b95050e800
                         call              _jmp_addr_0x007de820                           // 0x007dbfec    e82f280000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dbff1    e93d060000
                         {disp8} mov       eax, dword ptr [esp + 0x20]                    // 0x007dbff6    8b442420
                         mov               ecx, 0x00000001                                // 0x007dbffa    b901000000
                         cmp.s             eax, ecx                                       // 0x007dbfff    3bc1
                         {disp8} jne       _jmp_addr_0x007dc018                           // 0x007dc001    7515
                         {disp32} mov      dword ptr [data_bytes + 0x4c60fc], ecx         // 0x007dc003    890dfcc0e800
                         {disp32} mov      dword ptr [data_bytes + 0x4c60ac], 0x00008002  // 0x007dc009    c705acc0e80002800000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc013    e91b060000
_jmp_addr_0x007dc018:    cmp               eax, 0x02                                      // 0x007dc018    83f802
                         {disp8} je        _jmp_addr_0x007dc029                           // 0x007dc01b    740c
                         cmp.s             eax, ebx                                       // 0x007dc01d    3bc3
                         {disp8} je        _jmp_addr_0x007dc029                           // 0x007dc01f    7408
                         {disp32} mov      dword ptr [data_bytes + 0x4c6100], ecx         // 0x007dc021    890d00c1e800
                         {disp8} jmp       _jmp_addr_0x007dc035                           // 0x007dc027    eb0c
_jmp_addr_0x007dc029:    {disp32} mov      dword ptr [data_bytes + 0x4c60fc], ebx         // 0x007dc029    891dfcc0e800
                         {disp32} mov      dword ptr [data_bytes + 0x4c6100], ebx         // 0x007dc02f    891d00c1e800
_jmp_addr_0x007dc035:    {disp8} mov       eax, dword ptr [esp + 0x24]                    // 0x007dc035    8b442424
                         {disp32} mov      dword ptr [data_bytes + 0x4c60ac], 0x00008003  // 0x007dc039    c705acc0e80003800000
                         {disp32} mov      dword ptr [data_bytes + 0x4c60b0], eax         // 0x007dc043    a3b0c0e800
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc048    e9e6050000
                         {disp32} mov      dword ptr [data_bytes + 0x4c60ac], 0x00008001  // 0x007dc04d    c705acc0e80001800000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc057    e9d7050000
                         push              0x00e90650                                     // 0x007dc05c    685006e900
                         call              dword ptr [__imp__EnterCriticalSection@4]      // 0x007dc061    ff1580918a00
                         push              ebx                                            // 0x007dc067    53
                         call              dword ptr [__imp__PostQuitMessage@4]           // 0x007dc068    ff15bc978a00
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc06e    e9c0050000
_jmp_addr_0x007dc073:    {disp8} mov       eax, dword ptr [esp + 0x20]                    // 0x007dc073    8b442420
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x26b1a8]         // 0x007dc077    8b0da811c300
                         cmp.s             ecx, eax                                       // 0x007dc07d    3bc8
                         {disp32} mov      byte ptr [data_bytes + 0x26b1a4], 0x01         // 0x007dc07f    c605a411c30001
                         {disp32} je       _jmp_addr_0x007dc633                           // 0x007dc086    0f84a7050000
                         {disp32} mov      dword ptr [data_bytes + 0x26b1a8], eax         // 0x007dc08c    a3a811c300
                         {disp32} mov      dword ptr [data_bytes + 0x4c60ac], 0x00008008  // 0x007dc091    c705acc0e80008800000
                         mov               ecx, 0x0000003f                                // 0x007dc09b    b93f000000
                         xor.s             eax, eax                                       // 0x007dc0a0    33c0
                         mov               edi, 0x00e85374                                // 0x007dc0a2    bf7453e800
                         push              0x4                                            // 0x007dc0a7    6a04
                         rep stosd                                                        // 0x007dc0a9    f3ab
                         stosw                                                            // 0x007dc0ab    66ab
                         stosb                                                            // 0x007dc0ad    aa
                         mov               ecx, 0x00e85204                                // 0x007dc0ae    b90452e800
                         {disp32} mov      byte ptr [data_bytes + 0x4bf478], bl           // 0x007dc0b3    881d7854e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc0b9    e8c28a0000
                         push              0x8                                            // 0x007dc0be    6a08
                         mov               ecx, 0x00e85204                                // 0x007dc0c0    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc0c5    e8b68a0000
                         push              0x00000080                                     // 0x007dc0ca    6880000000
                         mov               ecx, 0x00e85204                                // 0x007dc0cf    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc0d4    e8a78a0000
                         {disp32} mov      dword ptr [data_bytes + 0x4bf2e4], ebx         // 0x007dc0d9    891de452e800
                         {disp32} mov      dword ptr [data_bytes + 0x4bf2e8], ebx         // 0x007dc0df    891de852e800
                         {disp32} mov      dword ptr [data_bytes + 0x4bf300], ebx         // 0x007dc0e5    891d0053e800
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc0eb    e943050000
_jmp_addr_0x007dc0f0:    cmp               eax, 0x00000205                                // 0x007dc0f0    3d05020000
                         {disp32} ja       _jmp_addr_0x007dc375                           // 0x007dc0f5    0f877a020000
                         {disp32} je       _jmp_addr_0x007dc343                           // 0x007dc0fb    0f8442020000
                         cmp               eax, 0x00000112                                // 0x007dc101    3d12010000
                         {disp32} ja       _jmp_addr_0x007dc251                           // 0x007dc106    0f8745010000
                         {disp32} je       _jmp_addr_0x007dc200                           // 0x007dc10c    0f84ee000000
                         {disp8} lea       ecx, dword ptr [eax + -0x20]                   // 0x007dc112    8d48e0
                         cmp               ecx, 0x000000f1                                // 0x007dc115    81f9f1000000
                         {disp32} ja       _jmp_addr_0x007dc577                           // 0x007dc11b    0f8756040000
                         xor.s             edx, edx                                       // 0x007dc121    33d2
                         {disp32} mov      dl, byte ptr [ecx + 0x007dc690]                // 0x007dc123    8a9190c67d00
                         jmp               dword ptr [edx*4 + 0x7dc678]                   // 0x007dc129    ff249578c67d00
                         {disp8} mov       ecx, dword ptr [esp + 0x20]                    // 0x007dc130    8b4c2420
                         mov.s             eax, ecx                                       // 0x007dc134    8bc1
                         and               eax, 0x0000ffff                                // 0x007dc136    25ffff0000
                         cmp               eax, 0x00008004                                // 0x007dc13b    3d04800000
                         {disp32} je       _jmp_addr_0x007dbfe7                           // 0x007dc140    0f84a1feffff
                         {disp32} mov      dword ptr [data_bytes + 0x4c60ac], eax         // 0x007dc146    a3acc0e800
                         {disp32} mov      dword ptr [data_bytes + 0x4c60b0], ecx         // 0x007dc14b    890db0c0e800
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc151    e9dd040000
                         cmp               dword ptr [data_bytes + 0x26b1ac], ebx         // 0x007dc156    391dac11c300
                         {disp8} jne       _jmp_addr_0x007dc173                           // 0x007dc15c    7515
                         push              0x00e8c0d8                                     // 0x007dc15e    68d8c0e800
                         call              dword ptr [__imp__TrackMouseEvent@4]           // 0x007dc163    ff151c908a00
                         {disp32} mov      dword ptr [data_bytes + 0x26b1ac], 0x00000001  // 0x007dc169    c705ac11c30001000000
_jmp_addr_0x007dc173:    cmp               dword ptr [data_bytes + 0x4bf0b4], ebx         // 0x007dc173    391db450e800
                         {disp32} jne      _jmp_addr_0x007dc633                           // 0x007dc179    0f85b4040000
                         call              dword ptr [__imp__GetMessageTime@4]            // 0x007dc17f    ff15ec978a00
                         push              eax                                            // 0x007dc185    50
                         {disp8} mov       eax, dword ptr [esp + 0x28]                    // 0x007dc186    8b442428
                         push              eax                                            // 0x007dc18a    50
                         push              ebp                                            // 0x007dc18b    55
                         call              _jmp_addr_0x007dc920                           // 0x007dc18c    e88f070000
                         add               esp, 0x0c                                      // 0x007dc191    83c40c
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc194    e99a040000
                         {disp8} mov       ecx, dword ptr [esp + 0x20]                    // 0x007dc199    8b4c2420
                         push              ecx                                            // 0x007dc19d    51
                         call              _jmp_addr_0x007f42b0                           // 0x007dc19e    e80d810100
                         add               esp, 0x04                                      // 0x007dc1a3    83c404
                         and               eax, 0x0000ffff                                // 0x007dc1a6    25ffff0000
                         {disp32} je       _jmp_addr_0x007dc633                           // 0x007dc1ab    0f8482040000
                         {disp32} mov      edx, dword ptr [data_bytes + 0x4bf5e0]         // 0x007dc1b1    8b15e055e800
                         {disp32} mov      esi, dword ptr [data_bytes + 0x4bf5e4]         // 0x007dc1b7    8b35e455e800
                         mov.s             ecx, edx                                       // 0x007dc1bd    8bca
                         sub.s             ecx, esi                                       // 0x007dc1bf    2bce
                         {disp8} jns       _jmp_addr_0x007dc1c6                           // 0x007dc1c1    7903
                         add               ecx, 0x10                                      // 0x007dc1c3    83c110
_jmp_addr_0x007dc1c6:    cmp               ecx, 0x0f                                      // 0x007dc1c6    83f90f
                         {disp32} jge      _jmp_addr_0x007dc633                           // 0x007dc1c9    0f8d64040000
                         {disp32} mov      dword ptr [edx * 0x4 + 0x00e855a0], eax        // 0x007dc1cf    890495a055e800
                         {disp32} mov      edx, dword ptr [data_bytes + 0x4bf5e0]         // 0x007dc1d6    8b15e055e800
                         inc               edx                                            // 0x007dc1dc    42
                         and               edx, 0x0f                                      // 0x007dc1dd    83e20f
                         {disp32} mov      dword ptr [data_bytes + 0x4bf5e0], edx         // 0x007dc1e0    8915e055e800
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc1e6    e948040000
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                    // 0x007dc1eb    8b4c2424
                         push              ecx                                            // 0x007dc1ef    51
                         push              eax                                            // 0x007dc1f0    50
                         mov               ecx, 0x00e8536c                                // 0x007dc1f1    b96c53e800
                         call              _jmp_addr_0x007dcaf0                           // 0x007dc1f6    e8f5080000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc1fb    e933040000
_jmp_addr_0x007dc200:    {disp8} mov       eax, dword ptr [esp + 0x20]                    // 0x007dc200    8b442420
                         cmp               eax, 0x0000f060                                // 0x007dc204    3d60f00000
                         {disp8} jne       _jmp_addr_0x007dc21f                           // 0x007dc209    7514
                         mov               ecx, 0x00e85040                                // 0x007dc20b    b94050e800
                         call              _jmp_addr_0x007db8a0                           // 0x007dc210    e88bf6ffff
                         pop               edi                                            // 0x007dc215    5f
                         pop               esi                                            // 0x007dc216    5e
                         pop               ebp                                            // 0x007dc217    5d
                         xor.s             eax, eax                                       // 0x007dc218    33c0
                         pop               ebx                                            // 0x007dc21a    5b
                         pop               ecx                                            // 0x007dc21b    59
                         ret               0x0010                                         // 0x007dc21c    c21000
_jmp_addr_0x007dc21f:    cmp               eax, 0x0000f030                                // 0x007dc21f    3d30f00000
                         {disp8} jne       _jmp_addr_0x007dc23a                           // 0x007dc224    7514
                         {disp32} mov      dword ptr [data_bytes + 0x4c60ac], 0x00009c5a  // 0x007dc226    c705acc0e8005a9c0000
                         {disp32} mov      dword ptr [data_bytes + 0x4c60b0], eax         // 0x007dc230    a3b0c0e800
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc235    e9f9030000
_jmp_addr_0x007dc23a:    cmp               eax, 0x0000f120                                // 0x007dc23a    3d20f10000
                         {disp32} jne      _jmp_addr_0x007dc633                           // 0x007dc23f    0f85ee030000
                         {disp32} mov      byte ptr [data_bytes + 0x4c60fb], 0x01         // 0x007dc245    c605fbc0e80001
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc24c    e9e2030000
_jmp_addr_0x007dc251:    {disp32} lea      ecx, dword ptr [eax + -0x00000113]             // 0x007dc251    8d88edfeffff
                         cmp               ecx, 0x000000f1                                // 0x007dc257    81f9f1000000
                         {disp32} ja       _jmp_addr_0x007dc577                           // 0x007dc25d    0f8714030000
                         xor.s             edx, edx                                       // 0x007dc263    33d2
                         {disp32} mov      dl, byte ptr [ecx + 0x007dc7a0]                // 0x007dc265    8a91a0c77d00
                         jmp               dword ptr [edx*4 + 0x7dc784]                   // 0x007dc26b    ff249584c77d00
                         push              ebp                                            // 0x007dc272    55
                         call              dword ptr [__imp__SetCapture@4]                // 0x007dc273    ff15f0978a00
                         push              0x2                                            // 0x007dc279    6a02
                         {disp32} jmp      _jmp_addr_0x007dc3a5                           // 0x007dc27b    e925010000
                         push              0x10                                           // 0x007dc280    6a10
                         mov               ecx, 0x00e85204                                // 0x007dc282    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc287    e8f4880000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc28c    e9a2030000
                         push              ebp                                            // 0x007dc291    55
                         call              dword ptr [__imp__SetCapture@4]                // 0x007dc292    ff15f0978a00
                         push              0x1                                            // 0x007dc298    6a01
                         mov               ecx, 0x00e85204                                // 0x007dc29a    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc29f    e8dc880000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf270]         // 0x007dc2a4    a17052e800
                         cmp               eax, 0x01                                      // 0x007dc2a9    83f801
                         {disp8} je        _jmp_addr_0x007dc2c6                           // 0x007dc2ac    7418
                         cmp               eax, 0x02                                      // 0x007dc2ae    83f802
                         {disp8} je        _jmp_addr_0x007dc2c6                           // 0x007dc2b1    7413
                         push              0x40                                           // 0x007dc2b3    6a40
                         push              0x1                                            // 0x007dc2b5    6a01
                         mov               ecx, 0x00e85204                                // 0x007dc2b7    b90452e800
                         call              @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                           // 0x007dc2bc    e8ff940000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc2c1    e96d030000
_jmp_addr_0x007dc2c6:    push              0x1                                            // 0x007dc2c6    6a01
                         push              ebp                                            // 0x007dc2c8    55
                         call              dword ptr [__imp__KillTimer@4]                 // 0x007dc2c9    ff1500988a00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf26c]         // 0x007dc2cf    a16c52e800
                         push              ebx                                            // 0x007dc2d4    53
                         and               eax, 0x0000ffff                                // 0x007dc2d5    25ffff0000
                         push              eax                                            // 0x007dc2da    50
                         push              0x1                                            // 0x007dc2db    6a01
                         push              ebp                                            // 0x007dc2dd    55
                         call              dword ptr [__imp__SetTimer@4]                  // 0x007dc2de    ff152c988a00
                         cmp               dword ptr [data_bytes + 0x4bf270], 0x01        // 0x007dc2e4    833d7052e80001
                         {disp8} jne       _jmp_addr_0x007dc2f8                           // 0x007dc2eb    750b
                         push              ebx                                            // 0x007dc2ed    53
                         mov               ecx, 0x00e85204                                // 0x007dc2ee    b90452e800
                         call              _jmp_addr_0x007e5b20                           // 0x007dc2f3    e828980000
_jmp_addr_0x007dc2f8:    {disp32} mov      dword ptr [data_bytes + 0x4bf274], ebx         // 0x007dc2f8    891d7452e800
                         push              0x2                                            // 0x007dc2fe    6a02
                         push              0x1                                            // 0x007dc300    6a01
                         mov               ecx, 0x00e85204                                // 0x007dc302    b90452e800
                         call              @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                           // 0x007dc307    e8b4940000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc30c    e922030000
                         push              0x4                                            // 0x007dc311    6a04
                         mov               ecx, 0x00e85204                                // 0x007dc313    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc318    e863880000
                         push              0x40                                           // 0x007dc31d    6a40
                         push              0x1                                            // 0x007dc31f    6a01
                         mov               ecx, 0x00e85204                                // 0x007dc321    b90452e800
                         call              @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                           // 0x007dc326    e895940000
                         test              byte ptr [data_bytes + 0x4bf304], 0x42         // 0x007dc32b    f6050453e80042
                         {disp32} jne      _jmp_addr_0x007dc633                           // 0x007dc332    0f85fb020000
                         call              dword ptr [__imp__ReleaseCapture@4]            // 0x007dc338    ff1568988a00
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc33e    e9f0020000
_jmp_addr_0x007dc343:    push              0x8                                            // 0x007dc343    6a08
                         mov               ecx, 0x00e85204                                // 0x007dc345    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc34a    e831880000
                         push              0x40                                           // 0x007dc34f    6a40
                         push              0x1                                            // 0x007dc351    6a01
                         mov               ecx, 0x00e85204                                // 0x007dc353    b90452e800
                         call              @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                           // 0x007dc358    e863940000
                         test              byte ptr [data_bytes + 0x4bf304], 0x41         // 0x007dc35d    f6050453e80041
                         {disp32} jne      _jmp_addr_0x007dc633                           // 0x007dc364    0f85c9020000
                         call              dword ptr [__imp__ReleaseCapture@4]            // 0x007dc36a    ff1568988a00
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc370    e9be020000
_jmp_addr_0x007dc375:    cmp               eax, 0x000002a3                                // 0x007dc375    3da3020000
                         {disp32} ja       _jmp_addr_0x007dc4ac                           // 0x007dc37a    0f872c010000
                         {disp32} je       _jmp_addr_0x007dc418                           // 0x007dc380    0f8492000000
                         {disp32} lea      ecx, dword ptr [eax + -0x00000206]             // 0x007dc386    8d88fafdffff
                         cmp               ecx, 0x04                                      // 0x007dc38c    83f904
                         {disp32} ja       _jmp_addr_0x007dc577                           // 0x007dc38f    0f87e2010000
                         jmp               dword ptr [ecx*4 + 0x7dc894]                   // 0x007dc395    ff248d94c87d00
                         push              ebp                                            // 0x007dc39c    55
                         call              dword ptr [__imp__SetCapture@4]                // 0x007dc39d    ff15f0978a00
                         push              0x40                                           // 0x007dc3a3    6a40
_jmp_addr_0x007dc3a5:    mov               ecx, 0x00e85204                                // 0x007dc3a5    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc3aa    e8d1870000
                         push              0x40                                           // 0x007dc3af    6a40
                         push              0x1                                            // 0x007dc3b1    6a01
                         mov               ecx, 0x00e85204                                // 0x007dc3b3    b90452e800
                         call              @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                           // 0x007dc3b8    e803940000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc3bd    e971020000
                         push              ebx                                            // 0x007dc3c2    53
                         mov               ecx, 0x00e85204                                // 0x007dc3c3    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc3c8    e8b3870000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc3cd    e961020000
                         push              0x20                                           // 0x007dc3d2    6a20
                         mov               ecx, 0x00e85204                                // 0x007dc3d4    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc3d9    e8a2870000
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc3de    e950020000
                         push              0x00000080                                     // 0x007dc3e3    6880000000
                         mov               ecx, 0x00e85204                                // 0x007dc3e8    b90452e800
                         call              _jmp_addr_0x007e4b80                           // 0x007dc3ed    e88e870000
                         push              0x40                                           // 0x007dc3f2    6a40
                         push              0x1                                            // 0x007dc3f4    6a01
                         mov               ecx, 0x00e85204                                // 0x007dc3f6    b90452e800
                         call              @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                           // 0x007dc3fb    e8c0930000
                         test              byte ptr [data_bytes + 0x4bf304], 0x03         // 0x007dc400    f6050453e80003
                         {disp32} jne      _jmp_addr_0x007dc633                           // 0x007dc407    0f8526020000
                         call              dword ptr [__imp__ReleaseCapture@4]            // 0x007dc40d    ff1568988a00
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc413    e91b020000
_jmp_addr_0x007dc418:    test              byte ptr [data_bytes + 0x4bf304], 0x43         // 0x007dc418    f6050453e80043
                         {disp8} jne       _jmp_addr_0x007dc427                           // 0x007dc41f    7506
                         call              dword ptr [__imp__ReleaseCapture@4]            // 0x007dc421    ff1568988a00
_jmp_addr_0x007dc427:    {disp32} mov      eax, dword ptr [data_bytes + 0x4bf0b4]         // 0x007dc427    a1b450e800
                         {disp32} mov      dword ptr [data_bytes + 0x26b1ac], ebx         // 0x007dc42c    891dac11c300
                         cmp.s             eax, ebx                                       // 0x007dc432    3bc3
                         {disp32} je       _jmp_addr_0x007dc633                           // 0x007dc434    0f84f9010000
                         {disp32} mov      esi, dword ptr [__imp__EnterCriticalSection@4] // 0x007dc43a    8b3580918a00
                         push              0x00e90650                                     // 0x007dc440    685006e900
                         call              esi                                            // 0x007dc445    ffd6
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf210]         // 0x007dc447    a11052e800
                         {disp32} mov      edi, dword ptr [__imp__LeaveCriticalSection@4] // 0x007dc44c    8b3d84918a00
                         cmp.s             eax, ebx                                       // 0x007dc452    3bc3
                         {disp8} je        _jmp_addr_0x007dc4a0                           // 0x007dc454    744a
                         push              0x00e90650                                     // 0x007dc456    685006e900
                         call              esi                                            // 0x007dc45b    ffd6
                         cmp               dword ptr [data_bytes + 0x4bf20c], ebx         // 0x007dc45d    391d0c52e800
                         {disp8} jne       _jmp_addr_0x007dc493                           // 0x007dc463    752e
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4bf22c]         // 0x007dc465    8b0d2c52e800
                         push              0x1                                            // 0x007dc46b    6a01
                         and               ecx, 0x000000ff                                // 0x007dc46d    81e1ff000000
                         push              0x00e852a8                                     // 0x007dc473    68a852e800
                         push              0x00e85288                                     // 0x007dc478    688852e800
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + 0x00e85230]        // 0x007dc47d    8b0c8d3052e800
                         call              _jmp_addr_0x007dc8b0                           // 0x007dc484    e827040000
                         {disp32} mov      dword ptr [data_bytes + 0x4bf20c], 0x00000001  // 0x007dc489    c7050c52e80001000000
_jmp_addr_0x007dc493:    push              0x00e90650                                     // 0x007dc493    685006e900
                         call              edi                                            // 0x007dc498    ffd7
                         {disp32} mov      dword ptr [data_bytes + 0x4bf210], ebx         // 0x007dc49a    891d1052e800
_jmp_addr_0x007dc4a0:    push              0x00e90650                                     // 0x007dc4a0    685006e900
                         call              edi                                            // 0x007dc4a5    ffd7
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc4a7    e987010000
_jmp_addr_0x007dc4ac:    cmp               eax, 0x00008006                                // 0x007dc4ac    3d06800000
                         {disp32} ja       _jmp_addr_0x007dc564                           // 0x007dc4b1    0f87ad000000
                         {disp32} je       _jmp_addr_0x007dc556                           // 0x007dc4b7    0f8499000000
                         mov.s             ecx, eax                                       // 0x007dc4bd    8bc8
                         sub               ecx, 0x00000401                                // 0x007dc4bf    81e901040000
                         {disp8} je        _jmp_addr_0x007dc541                           // 0x007dc4c5    747a
                         sub               ecx, 0x0f                                      // 0x007dc4c7    83e90f
                         {disp8} je        _jmp_addr_0x007dc4fd                           // 0x007dc4ca    7431
                         sub               ecx, 0x00007bf5                                // 0x007dc4cc    81e9f57b0000
                         {disp32} jne      _jmp_addr_0x007dc577                           // 0x007dc4d2    0f859f000000
                         push              0x1                                            // 0x007dc4d8    6a01
                         push              ebp                                            // 0x007dc4da    55
                         call              dword ptr [__imp__KillTimer@4]                 // 0x007dc4db    ff1500988a00
                         {disp32} mov      edx, dword ptr [data_bytes + 0x4bf26c]         // 0x007dc4e1    8b156c52e800
                         push              ebx                                            // 0x007dc4e7    53
                         and               edx, 0x0000ffff                                // 0x007dc4e8    81e2ffff0000
                         push              edx                                            // 0x007dc4ee    52
                         push              0x1                                            // 0x007dc4ef    6a01
                         push              ebp                                            // 0x007dc4f1    55
                         call              dword ptr [__imp__SetTimer@4]                  // 0x007dc4f2    ff152c988a00
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc4f8    e936010000
_jmp_addr_0x007dc4fd:    {disp8} mov       edx, dword ptr [esp + 0x20]                    // 0x007dc4fd    8b542420
                         cmp.s             edx, ebx                                       // 0x007dc501    3bd3
                         {disp32} je       _jmp_addr_0x007dc633                           // 0x007dc503    0f842a010000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4bf5e0]         // 0x007dc509    8b0de055e800
                         {disp32} mov      esi, dword ptr [data_bytes + 0x4bf5e4]         // 0x007dc50f    8b35e455e800
                         mov.s             eax, ecx                                       // 0x007dc515    8bc1
                         sub.s             eax, esi                                       // 0x007dc517    2bc6
                         {disp8} jns       _jmp_addr_0x007dc51e                           // 0x007dc519    7903
                         add               eax, 0x10                                      // 0x007dc51b    83c010
_jmp_addr_0x007dc51e:    cmp               eax, 0x0f                                      // 0x007dc51e    83f80f
                         {disp32} jge      _jmp_addr_0x007dc633                           // 0x007dc521    0f8d0c010000
                         {disp32} mov      dword ptr [ecx * 0x4 + 0x00e855a0], edx        // 0x007dc527    89148da055e800
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf5e0]         // 0x007dc52e    a1e055e800
                         inc               eax                                            // 0x007dc533    40
                         and               eax, 0x0f                                      // 0x007dc534    83e00f
                         {disp32} mov      dword ptr [data_bytes + 0x4bf5e0], eax         // 0x007dc537    a3e055e800
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc53c    e9f2000000
_jmp_addr_0x007dc541:    {disp8} mov       eax, dword ptr [esp + 0x20]                    // 0x007dc541    8b442420
                         {disp8} mov       edx, dword ptr [esp + 0x24]                    // 0x007dc545    8b542424
                         push              edx                                            // 0x007dc549    52
                         push              ebp                                            // 0x007dc54a    55
                         mov               ecx, dword ptr [eax]                           // 0x007dc54b    8b08
                         push              eax                                            // 0x007dc54d    50
                         call              dword ptr [ecx + 0x50]                         // 0x007dc54e    ff5150
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc551    e9dd000000
_jmp_addr_0x007dc556:    push              0x1                                            // 0x007dc556    6a01
                         push              ebp                                            // 0x007dc558    55
                         call              dword ptr [__imp__KillTimer@4]                 // 0x007dc559    ff1500988a00
                         {disp32} jmp      _jmp_addr_0x007dc633                           // 0x007dc55f    e9cf000000
_jmp_addr_0x007dc564:    mov.s             ecx, eax                                       // 0x007dc564    8bc8
                         sub               ecx, 0x00008007                                // 0x007dc566    81e907800000
                         {disp32} je       _jmp_addr_0x007dc60c                           // 0x007dc56c    0f849a000000
                         sub               ecx, 0x02                                      // 0x007dc572    83e902
                         {disp8} je        _jmp_addr_0x007dc598                           // 0x007dc575    7421
_jmp_addr_0x007dc577:    cmp.s             eax, ebx                                       // 0x007dc577    3bc3
                         {disp32} je       _jmp_addr_0x007dc633                           // 0x007dc579    0f84b4000000
                         cmp               eax, dword ptr [data_bytes + 0x4c60c4]         // 0x007dc57f    3b05c4c0e800
                         {disp32} jne      _jmp_addr_0x007dc633                           // 0x007dc585    0f85a8000000
                         pop               edi                                            // 0x007dc58b    5f
                         pop               esi                                            // 0x007dc58c    5e
                         pop               ebp                                            // 0x007dc58d    5d
                         mov               eax, 0x00000001                                // 0x007dc58e    b801000000
                         pop               ebx                                            // 0x007dc593    5b
                         pop               ecx                                            // 0x007dc594    59
                         ret               0x0010                                         // 0x007dc595    c21000
_jmp_addr_0x007dc598:    cmp               byte ptr [data_bytes + 0x4c60f8], bl           // 0x007dc598    381df8c0e800
                         {disp32} jne      _jmp_addr_0x007dc633                           // 0x007dc59e    0f858f000000
                         {disp8} jmp       _jmp_addr_0x007dc5d0                           // 0x007dc5a4    eb2a
                         cmp               eax, 0x00000200                                // 0x007dc5a6    3d00020000
                         {disp8} jne       _jmp_addr_0x007dc5d0                           // 0x007dc5ab    7523
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4c60cc]         // 0x007dc5ad    a1ccc0e800
                         push              eax                                            // 0x007dc5b2    50
                         call              dword ptr [__imp__SetEvent@4]                  // 0x007dc5b3    ff1550928a00
                         {disp8} mov       eax, dword ptr [esp + 0x24]                    // 0x007dc5b9    8b442424
                         mov.s             ecx, eax                                       // 0x007dc5bd    8bc8
                         and               eax, 0x0000ffff                                // 0x007dc5bf    25ffff0000
                         shr               ecx, 0x10                                      // 0x007dc5c4    c1e910
                         shl               ecx, 0x10                                      // 0x007dc5c7    c1e110
                         or.s              ecx, eax                                       // 0x007dc5ca    0bc8
                         {disp8} mov       dword ptr [esp + 0x24], ecx                    // 0x007dc5cc    894c2424
_jmp_addr_0x007dc5d0:    cmp               byte ptr [data_bytes + 0x4c60fa], bl           // 0x007dc5d0    381dfac0e800
                         {disp8} jne       _jmp_addr_0x007dc633                           // 0x007dc5d6    755b
                         cmp               dword ptr [data_bytes + 0x26b1ac], ebx         // 0x007dc5d8    391dac11c300
                         {disp8} jne       _jmp_addr_0x007dc5f5                           // 0x007dc5de    7515
                         push              0x00e8c0d8                                     // 0x007dc5e0    68d8c0e800
                         call              dword ptr [__imp__TrackMouseEvent@4]           // 0x007dc5e5    ff151c908a00
                         {disp32} mov      dword ptr [data_bytes + 0x26b1ac], 0x00000001  // 0x007dc5eb    c705ac11c30001000000
_jmp_addr_0x007dc5f5:    call              dword ptr [__imp__GetMessageTime@4]            // 0x007dc5f5    ff15ec978a00
                         {disp8} mov       edx, dword ptr [esp + 0x24]                    // 0x007dc5fb    8b542424
                         push              eax                                            // 0x007dc5ff    50
                         push              edx                                            // 0x007dc600    52
                         push              ebp                                            // 0x007dc601    55
                         call              _jmp_addr_0x007dc920                           // 0x007dc602    e819030000
                         add               esp, 0x0c                                      // 0x007dc607    83c40c
                         {disp8} jmp       _jmp_addr_0x007dc633                           // 0x007dc60a    eb27
_jmp_addr_0x007dc60c:    {disp32} mov      eax, dword ptr [data_bytes + 0x4bf218]         // 0x007dc60c    a11852e800
                         cmp               eax, 0x04                                      // 0x007dc611    83f804
                         {disp8} jne       _jmp_addr_0x007dc61e                           // 0x007dc614    7508
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4c60d0]         // 0x007dc616    a1d0c0e800
                         push              eax                                            // 0x007dc61b    50
                         {disp8} jmp       _jmp_addr_0x007dc62d                           // 0x007dc61c    eb0f
_jmp_addr_0x007dc61e:    cmp               eax, 0x02                                      // 0x007dc61e    83f802
                         {disp8} jne       _jmp_addr_0x007dc62c                           // 0x007dc621    7509
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c60d0]         // 0x007dc623    8b0dd0c0e800
                         push              ecx                                            // 0x007dc629    51
                         {disp8} jmp       _jmp_addr_0x007dc62d                           // 0x007dc62a    eb01
_jmp_addr_0x007dc62c:    push              ebx                                            // 0x007dc62c    53
_jmp_addr_0x007dc62d:    call              dword ptr [__imp__SetCursor@4]                 // 0x007dc62d    ff156c988a00
_jmp_addr_0x007dc633:    call              _jmp_addr_0x007de8d0                           // 0x007dc633    e898220000
                         {disp8} mov       edx, dword ptr [esp + 0x24]                    // 0x007dc638    8b542424
                         {disp8} mov       eax, dword ptr [esp + 0x20]                    // 0x007dc63c    8b442420
                         {disp8} mov       ecx, dword ptr [esp + 0x1c]                    // 0x007dc640    8b4c241c
                         push              edx                                            // 0x007dc644    52
                         push              eax                                            // 0x007dc645    50
                         push              ecx                                            // 0x007dc646    51
                         push              ebp                                            // 0x007dc647    55
                         call              dword ptr [__imp__DefWindowProcA@4]            // 0x007dc648    ff1570988a00
                         pop               edi                                            // 0x007dc64e    5f
                         pop               esi                                            // 0x007dc64f    5e
                         pop               ebp                                            // 0x007dc650    5d
                         pop               ebx                                            // 0x007dc651    5b
                         pop               ecx                                            // 0x007dc652    59
                         ret               0x0010                                         // 0x007dc653    c21000

// Snippet: db, [0x007dc656, 0x007dc658)
.byte 0x8b, 0xff                  // 0x007dc656

// Snippet: jmptbl, [0x007dc658, 0x007dc690)
.byte 0x4d, 0xc0, 0x7d, 0x00      // 0x007dc658
.byte 0x5c, 0xc0, 0x7d, 0x00      // 0x007dc65c
.byte 0xe7, 0xbf, 0x7d, 0x00      // 0x007dc660
.byte 0x77, 0xc5, 0x7d, 0x00      // 0x007dc664
.byte 0xf6, 0xbf, 0x7d, 0x00      // 0x007dc668
.byte 0x77, 0xc5, 0x7d, 0x00      // 0x007dc66c
.byte 0x77, 0xc5, 0x7d, 0x00      // 0x007dc670
.byte 0x9b, 0xc0, 0x7d, 0x00      // 0x007dc674
.byte 0x33, 0xc6, 0x7d, 0x00      // 0x007dc678
.byte 0x56, 0xc1, 0x7d, 0x00      // 0x007dc67c
.byte 0xeb, 0xc1, 0x7d, 0x00      // 0x007dc680
.byte 0x99, 0xc1, 0x7d, 0x00      // 0x007dc684
.byte 0x30, 0xc1, 0x7d, 0x00      // 0x007dc688
.byte 0x77, 0xc5, 0x7d, 0x00      // 0x007dc68c

// Snippet: ijmptbl, [0x007dc690, 0x007dc782)
.byte 0x00, 0x05, 0x05, 0x05      // 0x007dc690
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc694
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc698
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc69c
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6a0
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6a4
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6a8
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6ac
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6b0
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6b4
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6b8
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6bc
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6c0
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6c4
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6c8
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6cc
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6d0
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6d4
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6d8
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6dc
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6e0
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6e4
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6e8
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6ec
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6f0
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6f4
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6f8
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc6fc
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc700
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc704
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc708
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc70c
.byte 0x01, 0x05, 0x05, 0x05      // 0x007dc710
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc714
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc718
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc71c
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc720
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc724
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc728
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc72c
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc730
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc734
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc738
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc73c
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc740
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc744
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc748
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc74c
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc750
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc754
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc758
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc75c
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc760
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc764
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc768
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc76c
.byte 0x02, 0x02, 0x03, 0x05      // 0x007dc770
.byte 0x02, 0x02, 0x05, 0x05      // 0x007dc774
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc778
.byte 0x05, 0x05, 0x05, 0x05      // 0x007dc77c
.byte 0x05, 0x04                  // 0x007dc780

// Snippet: db, [0x007dc782, 0x007dc784)
.byte 0x8b, 0xff                  // 0x007dc782

// Snippet: jmptbl, [0x007dc784, 0x007dc7a0)
.byte 0xfe, 0xc2, 0x7d, 0x00      // 0x007dc784
.byte 0xa6, 0xc5, 0x7d, 0x00      // 0x007dc788
.byte 0x91, 0xc2, 0x7d, 0x00      // 0x007dc78c
.byte 0x11, 0xc3, 0x7d, 0x00      // 0x007dc790
.byte 0x80, 0xc2, 0x7d, 0x00      // 0x007dc794
.byte 0x72, 0xc2, 0x7d, 0x00      // 0x007dc798
.byte 0x77, 0xc5, 0x7d, 0x00      // 0x007dc79c

// Snippet: ijmptbl, [0x007dc7a0, 0x007dc892)
.byte 0x00, 0x06, 0x06, 0x06      // 0x007dc7a0
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7a4
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7a8
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7ac
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7b0
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7b4
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7b8
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7bc
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7c0
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7c4
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7c8
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7cc
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7d0
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7d4
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7d8
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7dc
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7e0
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7e4
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7e8
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7ec
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7f0
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7f4
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7f8
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc7fc
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc800
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc804
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc808
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc80c
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc810
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc814
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc818
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc81c
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc820
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc824
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc828
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc82c
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc830
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc834
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc838
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc83c
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc840
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc844
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc848
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc84c
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc850
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc854
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc858
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc85c
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc860
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc864
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc868
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc86c
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc870
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc874
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc878
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc87c
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc880
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc884
.byte 0x06, 0x06, 0x06, 0x06      // 0x007dc888
.byte 0x06, 0x01, 0x02, 0x03      // 0x007dc88c
.byte 0x04, 0x05                  // 0x007dc890

// Snippet: db, [0x007dc892, 0x007dc894)
.byte 0x8b, 0xff                  // 0x007dc892

// Snippet: jmptbl, [0x007dc894, 0x007dc8a8)
.byte 0xd2, 0xc3, 0x7d, 0x00      // 0x007dc894
.byte 0x9c, 0xc3, 0x7d, 0x00      // 0x007dc898
.byte 0xe3, 0xc3, 0x7d, 0x00      // 0x007dc89c
.byte 0xc2, 0xc3, 0x7d, 0x00      // 0x007dc8a0
.byte 0x33, 0xc6, 0x7d, 0x00      // 0x007dc8a4

// Snippet: db, [0x007dc8a8, 0x007dc8b0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007dc8a8
.byte 0x90, 0x90, 0x90, 0x90      // 0x007dc8ac

