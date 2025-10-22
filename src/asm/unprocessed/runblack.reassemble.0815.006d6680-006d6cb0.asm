.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ
.extern @AreWeThere__13MobileWallHugFf@12
.extern _jmp_addr_0x0063e580
.extern _jmp_addr_0x006d61d0
.extern _jmp_addr_0x006d9290
.extern _jmp_addr_0x006db520
.extern _jmp_addr_0x007a1400

.globl _jmp_addr_0x006d6680
.globl _jmp_addr_0x006d66e0

start_0x006d6680_0x006d6cb0:
// Snippet: asm, [0x006d6680, 0x006d6c65)
_jmp_addr_0x006d6680:    push              esi                                // 0x006d6680    56
                         push              edi                                // 0x006d6681    57
                         push              0x000000a8                         // 0x006d6682    68a8000000
                         push              0x00c09908                         // 0x006d6687    680899c000
                         push              0x00000588                         // 0x006d668c    6888050000
                         call              ?__nw@Base@@SAPAXK@Z               // 0x006d6691    e85a00d6ff
                         add               esp, 0x0c                          // 0x006d6696    83c40c
                         test              eax, eax                           // 0x006d6699    85c0
                         {disp8} je        _jmp_addr_0x006d66ce               // 0x006d669b    7431
                         {disp8} mov       ecx, dword ptr [esp + 0x18]        // 0x006d669d    8b4c2418
                         {disp8} mov       edx, dword ptr [esp + 0x14]        // 0x006d66a1    8b542414
                         {disp8} mov       edi, dword ptr [esp + 0x0c]        // 0x006d66a5    8b7c240c
                         push              ecx                                // 0x006d66a9    51
                         {disp8} mov       ecx, dword ptr [esp + 0x14]        // 0x006d66aa    8b4c2414
                         push              edx                                // 0x006d66ae    52
                         push              ecx                                // 0x006d66af    51
                         push              edi                                // 0x006d66b0    57
                         mov.s             ecx, eax                           // 0x006d66b1    8bc8
                         call              _jmp_addr_0x006d61d0               // 0x006d66b3    e818fbffff
                         mov.s             esi, eax                           // 0x006d66b8    8bf0
                         test              esi, esi                           // 0x006d66ba    85f6
                         {disp8} je        _jmp_addr_0x006d66ce               // 0x006d66bc    7410
                         mov               edx, dword ptr [esi]               // 0x006d66be    8b16
                         push              edi                                // 0x006d66c0    57
                         mov.s             ecx, esi                           // 0x006d66c1    8bce
                         call              dword ptr [edx + 0x500]            // 0x006d66c3    ff9200050000
                         pop               edi                                // 0x006d66c9    5f
                         mov.s             eax, esi                           // 0x006d66ca    8bc6
                         pop               esi                                // 0x006d66cc    5e
                         ret                                                  // 0x006d66cd    c3
_jmp_addr_0x006d66ce:    pop               edi                                // 0x006d66ce    5f
                         xor.s             eax, eax                           // 0x006d66cf    33c0
                         pop               esi                                // 0x006d66d1    5e
                         ret                                                  // 0x006d66d2    c3
                         nop                                                  // 0x006d66d3    90
                         nop                                                  // 0x006d66d4    90
                         nop                                                  // 0x006d66d5    90
                         nop                                                  // 0x006d66d6    90
                         nop                                                  // 0x006d66d7    90
                         nop                                                  // 0x006d66d8    90
                         nop                                                  // 0x006d66d9    90
                         nop                                                  // 0x006d66da    90
                         nop                                                  // 0x006d66db    90
                         nop                                                  // 0x006d66dc    90
                         nop                                                  // 0x006d66dd    90
                         nop                                                  // 0x006d66de    90
                         nop                                                  // 0x006d66df    90
_jmp_addr_0x006d66e0:    sub               esp, 0x24                          // 0x006d66e0    83ec24
                         push              ebx                                // 0x006d66e3    53
                         push              ebp                                // 0x006d66e4    55
                         mov.s             ebp, ecx                           // 0x006d66e5    8be9
                         {disp8} mov       eax, dword ptr [ebp + 0x48]        // 0x006d66e7    8b4548
                         dec               eax                                // 0x006d66ea    48
                         cmp               eax, 0x12                          // 0x006d66eb    83f812
                         push              esi                                // 0x006d66ee    56
                         push              edi                                // 0x006d66ef    57
                         {disp32} ja       _jmp_addr_0x006d6c55               // 0x006d66f0    0f875f050000
                         xor.s             ecx, ecx                           // 0x006d66f6    33c9
                         {disp32} mov      cl, byte ptr [eax + 0x006d6c94]    // 0x006d66f8    8a88946c6d00
                         jmp               dword ptr [ecx*4 + 0x6d6c68]       // 0x006d66fe    ff248d686c6d00
                         cmp               dword ptr [ebp + 0x0000057c], 0x04 // 0x006d6705    83bd7c05000004
                         {disp8} jne       _jmp_addr_0x006d6718               // 0x006d670c    750a
                         pop               edi                                // 0x006d670e    5f
                         pop               esi                                // 0x006d670f    5e
                         pop               ebp                                // 0x006d6710    5d
                         xor.s             eax, eax                           // 0x006d6711    33c0
                         pop               ebx                                // 0x006d6713    5b
                         add               esp, 0x24                          // 0x006d6714    83c424
                         ret                                                  // 0x006d6717    c3
_jmp_addr_0x006d6718:    xor.s             eax, eax                           // 0x006d6718    33c0
                         {disp32} lea      edi, dword ptr [ebp + 0x000004e4]  // 0x006d671a    8dbde4040000
                         mov               ecx, 0x00000012                    // 0x006d6720    b912000000
                         rep stosd                                            // 0x006d6725    f3ab
                         pop               edi                                // 0x006d6727    5f
                         pop               esi                                // 0x006d6728    5e
                         {disp32} mov      dword ptr [ebp + 0x00000384], eax  // 0x006d6729    898584030000
                         pop               ebp                                // 0x006d672f    5d
                         mov               eax, 0x00000001                    // 0x006d6730    b801000000
                         pop               ebx                                // 0x006d6735    5b
                         add               esp, 0x24                          // 0x006d6736    83c424
                         ret                                                  // 0x006d6739    c3
                         {disp32} lea      edi, dword ptr [ebp + 0x00000494]  // 0x006d673a    8dbd94040000
                         xor.s             edx, edx                           // 0x006d6740    33d2
                         mov.s             eax, edi                           // 0x006d6742    8bc7
                         mov               ecx, 0x00000008                    // 0x006d6744    b908000000
_jmp_addr_0x006d6749:    cmp               dword ptr [eax], 0x00              // 0x006d6749    833800
                         {disp8} je        _jmp_addr_0x006d674f               // 0x006d674c    7401
                         inc               edx                                // 0x006d674e    42
_jmp_addr_0x006d674f:    add               eax, 0x04                          // 0x006d674f    83c004
                         dec               ecx                                // 0x006d6752    49
                         {disp8} jne       _jmp_addr_0x006d6749               // 0x006d6753    75f4
                         cmp               edx, 0x01                          // 0x006d6755    83fa01
                         {disp8} je        _jmp_addr_0x006d6764               // 0x006d6758    740a
                         pop               edi                                // 0x006d675a    5f
                         pop               esi                                // 0x006d675b    5e
                         pop               ebp                                // 0x006d675c    5d
                         xor.s             eax, eax                           // 0x006d675d    33c0
                         pop               ebx                                // 0x006d675f    5b
                         add               esp, 0x24                          // 0x006d6760    83c424
                         ret                                                  // 0x006d6763    c3
_jmp_addr_0x006d6764:    xor.s             eax, eax                           // 0x006d6764    33c0
                         mov               ecx, 0x00000014                    // 0x006d6766    b914000000
                         rep stosd                                            // 0x006d676b    f3ab
                         pop               edi                                // 0x006d676d    5f
                         pop               esi                                // 0x006d676e    5e
                         pop               ebp                                // 0x006d676f    5d
                         mov               eax, 0x00000001                    // 0x006d6770    b801000000
                         pop               ebx                                // 0x006d6775    5b
                         add               esp, 0x24                          // 0x006d6776    83c424
                         ret                                                  // 0x006d6779    c3
                         {disp8} lea       eax, dword ptr [ebp + 0x4c]        // 0x006d677a    8d454c
                         {disp8} lea       edi, dword ptr [ebp + 0x58]        // 0x006d677d    8d7d58
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000000 // 0x006d6780    c744241400000000
                         {disp8} mov       dword ptr [esp + 0x10], eax        // 0x006d6788    89442410
                         {disp8} mov       dword ptr [esp + 0x18], edi        // 0x006d678c    897c2418
_jmp_addr_0x006d6790:    xor.s             esi, esi                           // 0x006d6790    33f6
_jmp_addr_0x006d6792:    mov               ecx, dword ptr [edi]               // 0x006d6792    8b0f
                         test              ecx, ecx                           // 0x006d6794    85c9
                         {disp32} je       _jmp_addr_0x006d6c0b               // 0x006d6796    0f846f040000
                         mov               edx, dword ptr [ecx]               // 0x006d679c    8b11
                         call              dword ptr [edx + 0x120]            // 0x006d679e    ff9220010000
                         mov               eax, dword ptr [edi]               // 0x006d67a4    8b07
                         {disp8} fcomp     dword ptr [eax + 0x64]             // 0x006d67a6    d85864
                         fnstsw            ax                                 // 0x006d67a9    dfe0
                         test              ah, 0x01                           // 0x006d67ab    f6c401
                         {disp32} jne      _jmp_addr_0x006d6c0b               // 0x006d67ae    0f8557040000
                         {disp8} mov       ebx, dword ptr [ebp + 0x48]        // 0x006d67b4    8b5d48
                         {disp8} mov       edx, dword ptr [esp + 0x10]        // 0x006d67b7    8b542410
                         movsx             eax, byte ptr [edx + esi * 0x1]    // 0x006d67bb    0fbe0432
                         xor.s             ecx, ecx                           // 0x006d67bf    33c9
                         cmp               ebx, 0x01                          // 0x006d67c1    83fb01
                         setne             cl                                 // 0x006d67c4    0f95c1
                         cdq                                                  // 0x006d67c7    99
                         add               ecx, 0x2                           // 0x006d67c8    83c102
                         idiv              ecx                                // 0x006d67cb    f7f9
                         movsx             eax, byte ptr [ebp + 0x4c]         // 0x006d67cd    0fbe454c
                         mov.s             ebx, edx                           // 0x006d67d1    8bda
                         cdq                                                  // 0x006d67d3    99
                         idiv              ecx                                // 0x006d67d4    f7f9
                         cmp.s             ebx, edx                           // 0x006d67d6    3bda
                         {disp32} jne      _jmp_addr_0x006d6c0b               // 0x006d67d8    0f852d040000
                         inc               esi                                // 0x006d67de    46
                         add               edi, 0x04                          // 0x006d67df    83c704
                         cmp               esi, 0x03                          // 0x006d67e2    83fe03
                         {disp8} jl        _jmp_addr_0x006d6792               // 0x006d67e5    7cab
                         {disp8} mov       eax, dword ptr [esp + 0x14]        // 0x006d67e7    8b442414
                         {disp8} mov       edi, dword ptr [esp + 0x18]        // 0x006d67eb    8b7c2418
                         {disp8} mov       edx, dword ptr [esp + 0x10]        // 0x006d67ef    8b542410
                         inc               eax                                // 0x006d67f3    40
                         add               edi, 0x0c                          // 0x006d67f4    83c70c
                         add               edx, 0x03                          // 0x006d67f7    83c203
                         cmp               eax, 0x03                          // 0x006d67fa    83f803
                         {disp8} mov       dword ptr [esp + 0x14], eax        // 0x006d67fd    89442414
                         {disp8} mov       dword ptr [esp + 0x18], edi        // 0x006d6801    897c2418
                         {disp8} mov       dword ptr [esp + 0x10], edx        // 0x006d6805    89542410
                         {disp8} jl        _jmp_addr_0x006d6790               // 0x006d6809    7c85
                         {disp8} lea       esi, dword ptr [ebp + 0x58]        // 0x006d680b    8d7558
                         {disp8} mov       dword ptr [esp + 0x18], 0x00000003 // 0x006d680e    c744241803000000
                         xor.s             edi, edi                           // 0x006d6816    33ff
_jmp_addr_0x006d6818:    mov               ebx, 0x00000003                    // 0x006d6818    bb03000000
_jmp_addr_0x006d681d:    mov               ecx, dword ptr [esi]               // 0x006d681d    8b0e
                         mov               eax, dword ptr [ecx]               // 0x006d681f    8b01
                         push              0x3f000000                         // 0x006d6821    680000003f
                         call              dword ptr [eax + 0x5b0]            // 0x006d6826    ff90b0050000
                         mov               ecx, dword ptr [esi]               // 0x006d682c    8b0e
                         mov               edx, dword ptr [ecx]               // 0x006d682e    8b11
                         push              0x3f800000                         // 0x006d6830    680000803f
                         call              dword ptr [edx + 0x870]            // 0x006d6835    ff9270080000
                         mov               dword ptr [esi], edi               // 0x006d683b    893e
                         {disp8} mov       ecx, dword ptr [esi + 0x24]        // 0x006d683d    8b4e24
                         cmp.s             ecx, edi                           // 0x006d6840    3bcf
                         {disp8} je        _jmp_addr_0x006d684a               // 0x006d6842    7406
                         mov               eax, dword ptr [ecx]               // 0x006d6844    8b01
                         push              edi                                // 0x006d6846    57
                         call              dword ptr [eax + 0xc]              // 0x006d6847    ff500c
_jmp_addr_0x006d684a:    {disp8} mov       dword ptr [esi + 0x24], edi        // 0x006d684a    897e24
                         {disp8} mov       ecx, dword ptr [esi + 0x48]        // 0x006d684d    8b4e48
                         cmp.s             ecx, edi                           // 0x006d6850    3bcf
                         {disp8} je        _jmp_addr_0x006d685e               // 0x006d6852    740a
                         mov               edx, dword ptr [ecx]               // 0x006d6854    8b11
                         push              0xd                                // 0x006d6856    6a0d
                         call              dword ptr [edx + 0x8e8]            // 0x006d6858    ff92e8080000
_jmp_addr_0x006d685e:    {disp8} mov       dword ptr [esi + 0x48], edi        // 0x006d685e    897e48
                         add               esi, 0x04                          // 0x006d6861    83c604
                         dec               ebx                                // 0x006d6864    4b
                         {disp8} jne       _jmp_addr_0x006d681d               // 0x006d6865    75b6
                         dec               dword ptr [esp + 0x18]             // 0x006d6867    ff4c2418
                         {disp8} jne       _jmp_addr_0x006d6818               // 0x006d686b    75ab
                         pop               edi                                // 0x006d686d    5f
                         mov               eax, 0x00000001                    // 0x006d686e    b801000000
                         pop               esi                                // 0x006d6873    5e
                         {disp8} mov       dword ptr [ebp + 0x3c], eax        // 0x006d6874    89453c
                         pop               ebp                                // 0x006d6877    5d
                         pop               ebx                                // 0x006d6878    5b
                         add               esp, 0x24                          // 0x006d6879    83c424
                         ret                                                  // 0x006d687c    c3
                         {disp32} mov      ecx, dword ptr [ebp + 0x000003c8]  // 0x006d687d    8b8dc8030000
                         {disp32} mov      eax, dword ptr [ebp + 0x000003c4]  // 0x006d6883    8b85c4030000
                         cmp               dword ptr [ecx + 0x78], eax        // 0x006d6889    394178
                         {disp8} je        _jmp_addr_0x006d6898               // 0x006d688c    740a
                         pop               edi                                // 0x006d688e    5f
                         pop               esi                                // 0x006d688f    5e
                         pop               ebp                                // 0x006d6890    5d
                         xor.s             eax, eax                           // 0x006d6891    33c0
                         pop               ebx                                // 0x006d6893    5b
                         add               esp, 0x24                          // 0x006d6894    83c424
                         ret                                                  // 0x006d6897    c3
_jmp_addr_0x006d6898:    {disp32} mov      edx, dword ptr [ebp + 0x000003c0]  // 0x006d6898    8b95c0030000
                         cmp               dword ptr [eax + 0x78], edx        // 0x006d689e    395078
                         {disp8} je        _jmp_addr_0x006d68ad               // 0x006d68a1    740a
                         pop               edi                                // 0x006d68a3    5f
                         pop               esi                                // 0x006d68a4    5e
                         pop               ebp                                // 0x006d68a5    5d
                         xor.s             eax, eax                           // 0x006d68a6    33c0
                         pop               ebx                                // 0x006d68a8    5b
                         add               esp, 0x24                          // 0x006d68a9    83c424
                         ret                                                  // 0x006d68ac    c3
_jmp_addr_0x006d68ad:    {disp32} mov      ecx, dword ptr [ebp + 0x000003bc]  // 0x006d68ad    8b8dbc030000
                         cmp               dword ptr [edx + 0x78], ecx        // 0x006d68b3    394a78
                         {disp32} lea      eax, dword ptr [ebp + 0x000003bc]  // 0x006d68b6    8d85bc030000
                         {disp8} je        _jmp_addr_0x006d68c8               // 0x006d68bc    740a
                         pop               edi                                // 0x006d68be    5f
                         pop               esi                                // 0x006d68bf    5e
                         pop               ebp                                // 0x006d68c0    5d
                         xor.s             eax, eax                           // 0x006d68c1    33c0
                         pop               ebx                                // 0x006d68c3    5b
                         add               esp, 0x24                          // 0x006d68c4    83c424
                         ret                                                  // 0x006d68c7    c3
_jmp_addr_0x006d68c8:    {disp8} mov       ecx, dword ptr [ecx + 0x78]        // 0x006d68c8    8b4978
                         cmp               ecx, dword ptr [ebp + 0x000003b4]  // 0x006d68cb    3b8db4030000
                         {disp32} je       _jmp_addr_0x006d6c0b               // 0x006d68d1    0f8434030000
                         cmp               ecx, dword ptr [ebp + 0x000003b0]  // 0x006d68d7    3b8db0030000
                         {disp32} je       _jmp_addr_0x006d6c0b               // 0x006d68dd    0f8428030000
                         mov               edx, 0x00000004                    // 0x006d68e3    ba04000000
                         mov               edi, 0x00002000                    // 0x006d68e8    bf00200000
                         mov               esi, 0x00001000                    // 0x006d68ed    be00100000
_jmp_addr_0x006d68f2:    mov               ecx, dword ptr [eax]               // 0x006d68f2    8b08
                         or                word ptr [ecx + 0x24], di          // 0x006d68f4    66097924
                         mov               ecx, dword ptr [eax]               // 0x006d68f8    8b08
                         or                word ptr [ecx + 0x24], si          // 0x006d68fa    66097124
                         add               eax, 0x04                          // 0x006d68fe    83c004
                         dec               edx                                // 0x006d6901    4a
                         {disp8} jne       _jmp_addr_0x006d68f2               // 0x006d6902    75ee
                         pop               edi                                // 0x006d6904    5f
                         mov               eax, 0x00000001                    // 0x006d6905    b801000000
                         pop               esi                                // 0x006d690a    5e
                         {disp8} mov       dword ptr [ebp + 0x3c], eax        // 0x006d690b    89453c
                         pop               ebp                                // 0x006d690e    5d
                         pop               ebx                                // 0x006d690f    5b
                         add               esp, 0x24                          // 0x006d6910    83c424
                         ret                                                  // 0x006d6913    c3
                         xor.s             eax, eax                           // 0x006d6914    33c0
                         {disp32} lea      ecx, dword ptr [ebp + 0x000003cc]  // 0x006d6916    8d8dcc030000
_jmp_addr_0x006d691c:    cmp               dword ptr [ecx], 0x04              // 0x006d691c    833904
                         {disp32} jne      _jmp_addr_0x006d6c0b               // 0x006d691f    0f85e6020000
                         inc               eax                                // 0x006d6925    40
                         add               ecx, 0x4                           // 0x006d6926    83c104
                         cmp               eax, 0x06                          // 0x006d6929    83f806
                         {disp8} jl        _jmp_addr_0x006d691c               // 0x006d692c    7cee
                         {disp32} lea      esi, dword ptr [ebp + 0x000000e4]  // 0x006d692e    8db5e4000000
                         mov               edi, 0x00000006                    // 0x006d6934    bf06000000
_jmp_addr_0x006d6939:    mov               ecx, dword ptr [esi]               // 0x006d6939    8b0e
                         test              ecx, ecx                           // 0x006d693b    85c9
                         {disp8} je        _jmp_addr_0x006d6946               // 0x006d693d    7407
                         mov               edx, dword ptr [ecx]               // 0x006d693f    8b11
                         push              0x0                                // 0x006d6941    6a00
                         call              dword ptr [edx + 0xc]              // 0x006d6943    ff520c
_jmp_addr_0x006d6946:    mov               dword ptr [esi], 0x00000000        // 0x006d6946    c70600000000
                         add               esi, 0x04                          // 0x006d694c    83c604
                         dec               edi                                // 0x006d694f    4f
                         {disp8} jne       _jmp_addr_0x006d6939               // 0x006d6950    75e7
                         {disp8} mov       eax, dword ptr [ebp + 0x48]        // 0x006d6952    8b4548
                         cmp               eax, 0x06                          // 0x006d6955    83f806
                         {disp32} je       _jmp_addr_0x006d69f7               // 0x006d6958    0f8499000000
                         cmp               eax, 0x07                          // 0x006d695e    83f807
                         {disp32} je       _jmp_addr_0x006d69f7               // 0x006d6961    0f8490000000
                         xor.s             edi, edi                           // 0x006d6967    33ff
_jmp_addr_0x006d6969:    {disp8} lea       eax, dword ptr [ebp + 0x14]        // 0x006d6969    8d4514
                         mov               ebx, dword ptr [eax]               // 0x006d696c    8b18
                         {disp8} mov       ecx, dword ptr [eax + 0x04]        // 0x006d696e    8b4804
                         {disp8} mov       edx, dword ptr [eax + 0x08]        // 0x006d6971    8b5008
                         {disp8} mov       dword ptr [esp + 0x24], edx        // 0x006d6974    89542424
                         mov               eax, 0xaaaaaaab                    // 0x006d6978    b8abaaaaaa
                         mul               edi                                // 0x006d697d    f7e7
                         mov.s             esi, edx                           // 0x006d697f    8bf2
                         shr               esi, 2                             // 0x006d6981    c1ee02
                         shl               esi, 2                             // 0x006d6984    c1e602
                         {disp8} mov       dword ptr [esp + 0x20], ecx        // 0x006d6987    894c2420
                         {disp32} fild     dword ptr [esi + _sin_lookup_table]// 0x006d698b    db861416c300
                         {disp32} fmul     dword ptr [ebp + 0x00000388]       // 0x006d6991    d88d88030000
                         fadd.s            st(0), st(0)                       // 0x006d6997    dcc0
                         call              _jmp_addr_0x007a1400               // 0x006d6999    e862aa0c00
                         {disp32} fild     dword ptr [esi + _cos_lookup_table]// 0x006d699e    db86141ec300
                         add.s             ebx, eax                           // 0x006d69a4    03d8
                         {disp8} mov       dword ptr [esp + 0x1c], ebx        // 0x006d69a6    895c241c
                         {disp32} fmul     dword ptr [ebp + 0x00000388]       // 0x006d69aa    d88d88030000
                         fadd.s            st(0), st(0)                       // 0x006d69b0    dcc0
                         call              _jmp_addr_0x007a1400               // 0x006d69b2    e849aa0c00
                         {disp8} mov       esi, dword ptr [esp + 0x20]        // 0x006d69b7    8b742420
                         push              0x0                                // 0x006d69bb    6a00
                         push              0x3                                // 0x006d69bd    6a03
                         add.s             esi, eax                           // 0x006d69bf    03f0
                         push              0x40a00000                         // 0x006d69c1    680000a040
                         {disp8} lea       eax, dword ptr [esp + 0x28]        // 0x006d69c6    8d442428
                         push              0xc                                // 0x006d69ca    6a0c
                         push              eax                                // 0x006d69cc    50
                         {disp8} mov       dword ptr [esp + 0x34], esi        // 0x006d69cd    89742434
                         call              _jmp_addr_0x0063e580               // 0x006d69d1    e8aa7bf6ff
                         add               edi, 0x00000400                    // 0x006d69d6    81c700040000
                         add               esp, 0x14                          // 0x006d69dc    83c414
                         cmp               edi, 0x00001800                    // 0x006d69df    81ff00180000
                         {disp8} jl        _jmp_addr_0x006d6969               // 0x006d69e5    7c82
                         pop               edi                                // 0x006d69e7    5f
                         mov               eax, 0x00000001                    // 0x006d69e8    b801000000
                         pop               esi                                // 0x006d69ed    5e
                         {disp8} mov       dword ptr [ebp + 0x3c], eax        // 0x006d69ee    89453c
                         pop               ebp                                // 0x006d69f1    5d
                         pop               ebx                                // 0x006d69f2    5b
                         add               esp, 0x24                          // 0x006d69f3    83c424
                         ret                                                  // 0x006d69f6    c3
_jmp_addr_0x006d69f7:    xor.s             esi, esi                           // 0x006d69f7    33f6
_jmp_addr_0x006d69f9:    push              0x0                                // 0x006d69f9    6a00
                         push              0x3                                // 0x006d69fb    6a03
                         push              0x40a00000                         // 0x006d69fd    680000a040
                         push              0xc                                // 0x006d6a02    6a0c
                         push              0x0                                // 0x006d6a04    6a00
                         push              esi                                // 0x006d6a06    56
                         {disp8} lea       ecx, dword ptr [esp + 0x40]        // 0x006d6a07    8d4c2440
                         push              ecx                                // 0x006d6a0b    51
                         mov.s             ecx, ebp                           // 0x006d6a0c    8bcd
                         call              _jmp_addr_0x006d9290               // 0x006d6a0e    e87d280000
                         push              eax                                // 0x006d6a13    50
                         call              _jmp_addr_0x0063e580               // 0x006d6a14    e8677bf6ff
                         add               esp, 0x14                          // 0x006d6a19    83c414
                         inc               esi                                // 0x006d6a1c    46
                         cmp               esi, 0x06                          // 0x006d6a1d    83fe06
                         {disp8} jl        _jmp_addr_0x006d69f9               // 0x006d6a20    7cd7
                         pop               edi                                // 0x006d6a22    5f
                         mov               eax, 0x00000001                    // 0x006d6a23    b801000000
                         pop               esi                                // 0x006d6a28    5e
                         {disp8} mov       dword ptr [ebp + 0x3c], eax        // 0x006d6a29    89453c
                         pop               ebp                                // 0x006d6a2c    5d
                         pop               ebx                                // 0x006d6a2d    5b
                         add               esp, 0x24                          // 0x006d6a2e    83c424
                         ret                                                  // 0x006d6a31    c3
                         {disp32} mov      eax, dword ptr [ebp + 0x00000408]  // 0x006d6a32    8b8508040000
                         test              eax, eax                           // 0x006d6a38    85c0
                         {disp8} jne       _jmp_addr_0x006d6a44               // 0x006d6a3a    7508
                         pop               edi                                // 0x006d6a3c    5f
                         pop               esi                                // 0x006d6a3d    5e
                         pop               ebp                                // 0x006d6a3e    5d
                         pop               ebx                                // 0x006d6a3f    5b
                         add               esp, 0x24                          // 0x006d6a40    83c424
                         ret                                                  // 0x006d6a43    c3
_jmp_addr_0x006d6a44:    {disp8} mov       ecx, dword ptr [eax + 0x18]        // 0x006d6a44    8b4818
                         test              ecx, ecx                           // 0x006d6a47    85c9
                         {disp32} jne      _jmp_addr_0x006d6c55               // 0x006d6a49    0f8506020000
                         pop               edi                                // 0x006d6a4f    5f
                         pop               esi                                // 0x006d6a50    5e
                         pop               ebp                                // 0x006d6a51    5d
                         xor.s             eax, eax                           // 0x006d6a52    33c0
                         pop               ebx                                // 0x006d6a54    5b
                         add               esp, 0x24                          // 0x006d6a55    83c424
                         ret                                                  // 0x006d6a58    c3
                         mov.s             ecx, ebp                           // 0x006d6a59    8bcd
                         call              _jmp_addr_0x006db520               // 0x006d6a5b    e8c04a0000
                         cmp               dword ptr [ebp + 0x000003e4], eax  // 0x006d6a60    3985e4030000
                         {disp8} je        _jmp_addr_0x006d6a81               // 0x006d6a66    7419
                         mov.s             ecx, ebp                           // 0x006d6a68    8bcd
                         call              _jmp_addr_0x006db520               // 0x006d6a6a    e8b14a0000
                         cmp               dword ptr [ebp + 0x000003e8], eax  // 0x006d6a6f    3985e8030000
                         {disp8} je        _jmp_addr_0x006d6a81               // 0x006d6a75    740a
                         pop               edi                                // 0x006d6a77    5f
                         pop               esi                                // 0x006d6a78    5e
                         pop               ebp                                // 0x006d6a79    5d
                         xor.s             eax, eax                           // 0x006d6a7a    33c0
                         pop               ebx                                // 0x006d6a7c    5b
                         add               esp, 0x24                          // 0x006d6a7d    83c424
                         ret                                                  // 0x006d6a80    c3
_jmp_addr_0x006d6a81:    {disp32} mov      edx, dword ptr [ebp + 0x000003fc]  // 0x006d6a81    8b95fc030000
                         xor.s             esi, esi                           // 0x006d6a87    33f6
                         push              esi                                // 0x006d6a89    56
                         push              0x3                                // 0x006d6a8a    6a03
                         push              0x40000000                         // 0x006d6a8c    6800000040
                         add               edx, 0x14                          // 0x006d6a91    83c214
                         push              0xc                                // 0x006d6a94    6a0c
                         push              edx                                // 0x006d6a96    52
                         call              _jmp_addr_0x0063e580               // 0x006d6a97    e8e47af6ff
                         {disp32} mov      ecx, dword ptr [ebp + 0x000003fc]  // 0x006d6a9c    8b8dfc030000
                         add               esp, 0x14                          // 0x006d6aa2    83c414
                         cmp.s             ecx, esi                           // 0x006d6aa5    3bce
                         {disp8} je        _jmp_addr_0x006d6ab5               // 0x006d6aa7    740c
                         mov               eax, dword ptr [ecx]               // 0x006d6aa9    8b01
                         push              esi                                // 0x006d6aab    56
                         call              dword ptr [eax + 0xc]              // 0x006d6aac    ff500c
                         {disp32} mov      dword ptr [ebp + 0x000003fc], esi  // 0x006d6aaf    89b5fc030000
_jmp_addr_0x006d6ab5:    {disp32} mov      ecx, dword ptr [ebp + 0x000003f4]  // 0x006d6ab5    8b8df4030000
                         cmp.s             ecx, esi                           // 0x006d6abb    3bce
                         {disp8} je        _jmp_addr_0x006d6acb               // 0x006d6abd    740c
                         mov               edx, dword ptr [ecx]               // 0x006d6abf    8b11
                         push              esi                                // 0x006d6ac1    56
                         call              dword ptr [edx + 0xc]              // 0x006d6ac2    ff520c
                         {disp32} mov      dword ptr [ebp + 0x000003f4], esi  // 0x006d6ac5    89b5f4030000
_jmp_addr_0x006d6acb:    {disp8} mov       ecx, dword ptr [ebp + 0x30]        // 0x006d6acb    8b4d30
                         cmp.s             ecx, esi                           // 0x006d6ace    3bce
                         {disp32} je       _jmp_addr_0x006d6c55               // 0x006d6ad0    0f847f010000
                         mov               eax, dword ptr [ecx]               // 0x006d6ad6    8b01
                         call              dword ptr [eax + 0x2c]             // 0x006d6ad8    ff502c
                         test              eax, eax                           // 0x006d6adb    85c0
                         {disp32} je       _jmp_addr_0x006d6c55               // 0x006d6add    0f8472010000
                         {disp8} mov       ecx, dword ptr [ebp + 0x30]        // 0x006d6ae3    8b4d30
                         mov               edx, dword ptr [ecx]               // 0x006d6ae6    8b11
                         push              esi                                // 0x006d6ae8    56
                         call              dword ptr [edx + 0xc]              // 0x006d6ae9    ff520c
                         pop               edi                                // 0x006d6aec    5f
                         {disp8} mov       dword ptr [ebp + 0x30], esi        // 0x006d6aed    897530
                         mov               eax, 0x00000001                    // 0x006d6af0    b801000000
                         pop               esi                                // 0x006d6af5    5e
                         {disp8} mov       dword ptr [ebp + 0x3c], eax        // 0x006d6af6    89453c
                         pop               ebp                                // 0x006d6af9    5d
                         pop               ebx                                // 0x006d6afa    5b
                         add               esp, 0x24                          // 0x006d6afb    83c424
                         ret                                                  // 0x006d6afe    c3
                         {disp32} mov      eax, dword ptr [ebp + 0x00000490]  // 0x006d6aff    8b8590040000
                         cmp               eax, 0x02                          // 0x006d6b05    83f802
                         {disp8} jne       _jmp_addr_0x006d6b54               // 0x006d6b08    754a
                         mov.s             ecx, ebp                           // 0x006d6b0a    8bcd
                         xor.s             edi, edi                           // 0x006d6b0c    33ff
                         call              _jmp_addr_0x006db520               // 0x006d6b0e    e80d4a0000
                         test              eax, eax                           // 0x006d6b13    85c0
                         {disp32} jle      _jmp_addr_0x006d6c55               // 0x006d6b15    0f8e3a010000
                         {disp32} lea      esi, dword ptr [ebp + 0x00000450]  // 0x006d6b1b    8db550040000
_jmp_addr_0x006d6b21:    mov.s             ecx, ebp                           // 0x006d6b21    8bcd
                         call              _jmp_addr_0x006db520               // 0x006d6b23    e8f8490000
                         mov               ecx, dword ptr [esi]               // 0x006d6b28    8b0e
                         sub               eax, 0x02                          // 0x006d6b2a    83e802
                         cmp.s             ecx, eax                           // 0x006d6b2d    3bc8
                         {disp32} jne      _jmp_addr_0x006d6c0b               // 0x006d6b2f    0f85d6000000
                         mov.s             ecx, ebp                           // 0x006d6b35    8bcd
                         inc               edi                                // 0x006d6b37    47
                         add               esi, 0x04                          // 0x006d6b38    83c604
                         call              _jmp_addr_0x006db520               // 0x006d6b3b    e8e0490000
                         cmp.s             edi, eax                           // 0x006d6b40    3bf8
                         {disp8} jl        _jmp_addr_0x006d6b21               // 0x006d6b42    7cdd
                         pop               edi                                // 0x006d6b44    5f
                         mov               eax, 0x00000001                    // 0x006d6b45    b801000000
                         pop               esi                                // 0x006d6b4a    5e
                         {disp8} mov       dword ptr [ebp + 0x3c], eax        // 0x006d6b4b    89453c
                         pop               ebp                                // 0x006d6b4e    5d
                         pop               ebx                                // 0x006d6b4f    5b
                         add               esp, 0x24                          // 0x006d6b50    83c424
                         ret                                                  // 0x006d6b53    c3
_jmp_addr_0x006d6b54:    cmp               eax, 0x01                          // 0x006d6b54    83f801
                         {disp32} jne      _jmp_addr_0x006d6c55               // 0x006d6b57    0f85f8000000
                         mov.s             ecx, ebp                           // 0x006d6b5d    8bcd
                         xor.s             edi, edi                           // 0x006d6b5f    33ff
                         call              _jmp_addr_0x006db520               // 0x006d6b61    e8ba490000
                         test              eax, eax                           // 0x006d6b66    85c0
                         {disp32} jle      _jmp_addr_0x006d6c55               // 0x006d6b68    0f8ee7000000
                         {disp32} lea      esi, dword ptr [ebp + 0x00000470]  // 0x006d6b6e    8db570040000
_jmp_addr_0x006d6b74:    mov.s             ecx, ebp                           // 0x006d6b74    8bcd
                         call              _jmp_addr_0x006db520               // 0x006d6b76    e8a5490000
                         mov               ecx, dword ptr [esi]               // 0x006d6b7b    8b0e
                         sub               eax, 0x02                          // 0x006d6b7d    83e802
                         cmp.s             ecx, eax                           // 0x006d6b80    3bc8
                         {disp32} jne      _jmp_addr_0x006d6c0b               // 0x006d6b82    0f8583000000
                         mov.s             ecx, ebp                           // 0x006d6b88    8bcd
                         inc               edi                                // 0x006d6b8a    47
                         add               esi, 0x04                          // 0x006d6b8b    83c604
                         call              _jmp_addr_0x006db520               // 0x006d6b8e    e88d490000
                         cmp.s             edi, eax                           // 0x006d6b93    3bf8
                         {disp8} jl        _jmp_addr_0x006d6b74               // 0x006d6b95    7cdd
                         pop               edi                                // 0x006d6b97    5f
                         mov               eax, 0x00000001                    // 0x006d6b98    b801000000
                         pop               esi                                // 0x006d6b9d    5e
                         {disp8} mov       dword ptr [ebp + 0x3c], eax        // 0x006d6b9e    89453c
                         pop               ebp                                // 0x006d6ba1    5d
                         pop               ebx                                // 0x006d6ba2    5b
                         add               esp, 0x24                          // 0x006d6ba3    83c424
                         ret                                                  // 0x006d6ba6    c3
                         {disp32} mov      ecx, dword ptr [ebp + 0x000003f4]  // 0x006d6ba7    8b8df4030000
                         xor.s             esi, esi                           // 0x006d6bad    33f6
                         cmp.s             ecx, esi                           // 0x006d6baf    3bce
                         {disp8} je        _jmp_addr_0x006d6c0b               // 0x006d6bb1    7458
                         cmp               dword ptr [ebp + 0x000003f8], esi  // 0x006d6bb3    39b5f8030000
                         {disp8} je        _jmp_addr_0x006d6c0b               // 0x006d6bb9    7450
                         call              ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ         // 0x006d6bbb    e830bcf1ff
                         cmp               al, 0x01                           // 0x006d6bc0    3c01
                         {disp8} jne       _jmp_addr_0x006d6bce               // 0x006d6bc2    750a
                         pop               edi                                // 0x006d6bc4    5f
                         pop               esi                                // 0x006d6bc5    5e
                         pop               ebp                                // 0x006d6bc6    5d
                         xor.s             eax, eax                           // 0x006d6bc7    33c0
                         pop               ebx                                // 0x006d6bc9    5b
                         add               esp, 0x24                          // 0x006d6bca    83c424
                         ret                                                  // 0x006d6bcd    c3
_jmp_addr_0x006d6bce:    cmp               word ptr [ebp + 0x44], 0x02        // 0x006d6bce    66837d4402
                         {disp8} je        _jmp_addr_0x006d6bdf               // 0x006d6bd3    740a
                         pop               edi                                // 0x006d6bd5    5f
                         pop               esi                                // 0x006d6bd6    5e
                         pop               ebp                                // 0x006d6bd7    5d
                         xor.s             eax, eax                           // 0x006d6bd8    33c0
                         pop               ebx                                // 0x006d6bda    5b
                         add               esp, 0x24                          // 0x006d6bdb    83c424
                         ret                                                  // 0x006d6bde    c3
_jmp_addr_0x006d6bdf:    {disp32} mov      ecx, dword ptr [ebp + 0x000003f4]  // 0x006d6bdf    8b8df4030000
                         push              esi                                // 0x006d6be5    56
                         call              @AreWeThere__13MobileWallHugFf@12  // 0x006d6be6    e85541f3ff
                         test              eax, eax                           // 0x006d6beb    85c0
                         {disp8} je        _jmp_addr_0x006d6c0b               // 0x006d6bed    741c
                         {disp32} mov      eax, dword ptr [ebp + 0x000003ec]  // 0x006d6bef    8b85ec030000
                         cmp               eax, dword ptr [ebp + 0x000003e4]  // 0x006d6bf5    3b85e4030000
                         {disp8} jne       _jmp_addr_0x006d6c0b               // 0x006d6bfb    750e
                         {disp32} mov      ecx, dword ptr [ebp + 0x000003f0]  // 0x006d6bfd    8b8df0030000
                         cmp               ecx, dword ptr [ebp + 0x000003e8]  // 0x006d6c03    3b8de8030000
                         {disp8} je        _jmp_addr_0x006d6c15               // 0x006d6c09    740a
_jmp_addr_0x006d6c0b:    pop               edi                                // 0x006d6c0b    5f
                         pop               esi                                // 0x006d6c0c    5e
                         pop               ebp                                // 0x006d6c0d    5d
                         xor.s             eax, eax                           // 0x006d6c0e    33c0
                         pop               ebx                                // 0x006d6c10    5b
                         add               esp, 0x24                          // 0x006d6c11    83c424
                         ret                                                  // 0x006d6c14    c3
_jmp_addr_0x006d6c15:    {disp32} mov      edx, dword ptr [ebp + 0x000003f8]  // 0x006d6c15    8b95f8030000
                         push              esi                                // 0x006d6c1b    56
                         push              0x3                                // 0x006d6c1c    6a03
                         push              0x40000000                         // 0x006d6c1e    6800000040
                         add               edx, 0x14                          // 0x006d6c23    83c214
                         push              0xc                                // 0x006d6c26    6a0c
                         push              edx                                // 0x006d6c28    52
                         call              _jmp_addr_0x0063e580               // 0x006d6c29    e85279f6ff
                         {disp32} mov      ecx, dword ptr [ebp + 0x000003f8]  // 0x006d6c2e    8b8df8030000
                         mov               eax, dword ptr [ecx]               // 0x006d6c34    8b01
                         add               esp, 0x14                          // 0x006d6c36    83c414
                         push              esi                                // 0x006d6c39    56
                         call              dword ptr [eax + 0xc]              // 0x006d6c3a    ff500c
                         {disp32} mov      ecx, dword ptr [ebp + 0x000003f4]  // 0x006d6c3d    8b8df4030000
                         {disp32} mov      dword ptr [ebp + 0x000003f8], esi  // 0x006d6c43    89b5f8030000
                         mov               edx, dword ptr [ecx]               // 0x006d6c49    8b11
                         push              esi                                // 0x006d6c4b    56
                         call              dword ptr [edx + 0xc]              // 0x006d6c4c    ff520c
                         {disp32} mov      dword ptr [ebp + 0x000003f4], esi  // 0x006d6c4f    89b5f4030000
_jmp_addr_0x006d6c55:    pop               edi                                // 0x006d6c55    5f
                         mov               eax, 0x00000001                    // 0x006d6c56    b801000000
                         pop               esi                                // 0x006d6c5b    5e
                         {disp8} mov       dword ptr [ebp + 0x3c], eax        // 0x006d6c5c    89453c
                         pop               ebp                                // 0x006d6c5f    5d
                         pop               ebx                                // 0x006d6c60    5b
                         add               esp, 0x24                          // 0x006d6c61    83c424
                         ret                                                  // 0x006d6c64    c3

// Snippet: db, [0x006d6c65, 0x006d6c68)
.byte 0x8d, 0x49, 0x00            // 0x006d6c65

// Snippet: jmptbl, [0x006d6c68, 0x006d6c94)
.byte 0x7a, 0x67, 0x6d, 0x00      // 0x006d6c68
.byte 0x7d, 0x68, 0x6d, 0x00      // 0x006d6c6c
.byte 0x14, 0x69, 0x6d, 0x00      // 0x006d6c70
.byte 0x59, 0x6a, 0x6d, 0x00      // 0x006d6c74
.byte 0xa7, 0x6b, 0x6d, 0x00      // 0x006d6c78
.byte 0x32, 0x6a, 0x6d, 0x00      // 0x006d6c7c
.byte 0x05, 0x67, 0x6d, 0x00      // 0x006d6c80
.byte 0x3a, 0x67, 0x6d, 0x00      // 0x006d6c84
.byte 0xff, 0x6a, 0x6d, 0x00      // 0x006d6c88
.byte 0x0b, 0x6c, 0x6d, 0x00      // 0x006d6c8c
.byte 0x55, 0x6c, 0x6d, 0x00      // 0x006d6c90

// Snippet: ijmptbl, [0x006d6c94, 0x006d6ca7)
.byte 0x00, 0x00, 0x01, 0x0a      // 0x006d6c94
.byte 0x0a, 0x02, 0x02, 0x02      // 0x006d6c98
.byte 0x02, 0x03, 0x03, 0x04      // 0x006d6c9c
.byte 0x04, 0x05, 0x0a, 0x06      // 0x006d6ca0
.byte 0x07, 0x08, 0x09            // 0x006d6ca4

// Snippet: db, [0x006d6ca7, 0x006d6cb0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006d6ca7
.byte 0x90, 0x90, 0x90, 0x90      // 0x006d6cab
.byte 0x90                        // 0x006d6caf

