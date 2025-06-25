.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @FindControl__8SetupBoxFi@12
.extern _HideAll__13DialogBoxBaseFv@0
.extern _wcscpy

.globl _jmp_addr_0x0053f3e0

start_0x0053f3e0_0x0053f540:
// Snippet: asm, [0x0053f3e0, 0x0053f525)
_jmp_addr_0x0053f3e0:    {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x0053f3e0    8b442404
                         cmp              eax, 0x01                              // 0x0053f3e4    83f801
                         push             esi                                    // 0x0053f3e7    56
                         {disp32} jne     _jmp_addr_0x0053f4a3                   // 0x0053f3e8    0f85b5000000
                         {disp8} mov      eax, dword ptr [esp + 0x10]            // 0x0053f3ee    8b442410
                         test             eax, eax                               // 0x0053f3f2    85c0
                         {disp32} je      _jmp_addr_0x0053f521                   // 0x0053f3f4    0f8427010000
                         {disp8} mov      esi, dword ptr [eax + 0x18]            // 0x0053f3fa    8b7018
                         cmp              esi, 0x000008fc                        // 0x0053f3fd    81fefc080000
                         {disp32} jl      _jmp_addr_0x0053f521                   // 0x0053f403    0f8c18010000
                         cmp              esi, 0x00000902                        // 0x0053f409    81fe02090000
                         {disp32} jge     _jmp_addr_0x0053f521                   // 0x0053f40f    0f8d0c010000
                         call             _HideAll__13DialogBoxBaseFv@0          // 0x0053f415    e8c642fdff
                         {disp32} mov     eax, dword ptr [_game]                 // 0x0053f41a    a15c19d000
                         cmp              dword ptr [eax + 0x00205a28], 0x01     // 0x0053f41f    83b8285a200001
                         {disp8} je       _jmp_addr_0x0053f438                   // 0x0053f426    7410
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30a65c] // 0x0053f428    8b0d5c06cd00
                         mov              eax, dword ptr [ecx]                   // 0x0053f42e    8b01
                         call             dword ptr [eax + 0xc]                  // 0x0053f430    ff500c
                         {disp32} mov     eax, dword ptr [_game]                 // 0x0053f433    a15c19d000
_jmp_addr_0x0053f438:    {disp32} lea     ecx, dword ptr [esi + -0x000008fd]     // 0x0053f438    8d8e03f7ffff
                         cmp              ecx, 0x04                              // 0x0053f43e    83f904
                         {disp32} ja      _jmp_addr_0x0053f521                   // 0x0053f441    0f87da000000
                         jmp              dword ptr [ecx*4 + 0x53f528]           // 0x0053f447    ff248d28f55300
                         {disp32} mov     ecx, dword ptr [eax + 0x00250304]      // 0x0053f44e    8b8804032500
                         {disp8} mov      ecx, dword ptr [ecx + 0x60]            // 0x0053f454    8b4960
                         mov              edx, dword ptr [ecx]                   // 0x0053f457    8b11
                         call             dword ptr [edx + 0xc]                  // 0x0053f459    ff520c
                         xor.s            eax, eax                               // 0x0053f45c    33c0
                         pop              esi                                    // 0x0053f45e    5e
                         ret                                                     // 0x0053f45f    c3
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30a660] // 0x0053f460    8b0d6006cd00
                         mov              eax, dword ptr [ecx]                   // 0x0053f466    8b01
                         call             dword ptr [eax + 0xc]                  // 0x0053f468    ff500c
                         xor.s            eax, eax                               // 0x0053f46b    33c0
                         pop              esi                                    // 0x0053f46d    5e
                         ret                                                     // 0x0053f46e    c3
                         {disp32} mov     eax, dword ptr [eax + 0x00250304]      // 0x0053f46f    8b8004032500
                         mov              edx, dword ptr [eax]                   // 0x0053f475    8b10
                         mov.s            ecx, eax                               // 0x0053f477    8bc8
                         call             dword ptr [edx + 0xc]                  // 0x0053f479    ff520c
                         xor.s            eax, eax                               // 0x0053f47c    33c0
                         pop              esi                                    // 0x0053f47e    5e
                         ret                                                     // 0x0053f47f    c3
                         {disp32} mov     eax, dword ptr [eax + 0x00250308]      // 0x0053f480    8b8008032500
                         mov              edx, dword ptr [eax]                   // 0x0053f486    8b10
                         mov.s            ecx, eax                               // 0x0053f488    8bc8
                         call             dword ptr [edx + 0xc]                  // 0x0053f48a    ff520c
                         xor.s            eax, eax                               // 0x0053f48d    33c0
                         pop              esi                                    // 0x0053f48f    5e
                         ret                                                     // 0x0053f490    c3
                         {disp32} mov     eax, dword ptr [eax + 0x00250304]      // 0x0053f491    8b8004032500
                         {disp8} mov      ecx, dword ptr [eax + 0x64]            // 0x0053f497    8b4864
                         mov              edx, dword ptr [ecx]                   // 0x0053f49a    8b11
                         call             dword ptr [edx + 0xc]                  // 0x0053f49c    ff520c
                         xor.s            eax, eax                               // 0x0053f49f    33c0
                         pop              esi                                    // 0x0053f4a1    5e
                         ret                                                     // 0x0053f4a2    c3
_jmp_addr_0x0053f4a3:    cmp              eax, 0x06                              // 0x0053f4a3    83f806
                         {disp8} jne      _jmp_addr_0x0053f521                   // 0x0053f4a6    7579
                         {disp8} mov      esi, dword ptr [esp + 0x0c]            // 0x0053f4a8    8b74240c
                         push             0x000008fc                             // 0x0053f4ac    68fc080000
                         mov.s            ecx, esi                               // 0x0053f4b1    8bce
                         call             @FindControl__8SetupBoxFi@12           // 0x0053f4b3    e8a88cecff
                         test             eax, eax                               // 0x0053f4b8    85c0
                         {disp8} je       _jmp_addr_0x0053f521                   // 0x0053f4ba    7465
                         {disp32} mov     eax, dword ptr [_game]                 // 0x0053f4bc    a15c19d000
                         cmp              dword ptr [eax + 0x00205a28], 0x01     // 0x0053f4c1    83b8285a200001
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351cac] // 0x0053f4c8    a1ac7cd100
                         {disp8} jne      _jmp_addr_0x0053f4eb                   // 0x0053f4cd    751c
                         cmp              eax, 0x000004c4                        // 0x0053f4cf    3dc4040000
                         {disp8} ja       _jmp_addr_0x0053f4dd                   // 0x0053f4d4    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8] // 0x0053f4d6    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0053f505                   // 0x0053f4db    eb28
_jmp_addr_0x0053f4dd:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8] // 0x0053f4dd    8b0da87cd100
                         {disp32} lea     eax, dword ptr [ecx + 0x00003930]      // 0x0053f4e3    8d8130390000
                         {disp8} jmp      _jmp_addr_0x0053f505                   // 0x0053f4e9    eb1a
_jmp_addr_0x0053f4eb:    cmp              eax, 0x00001a7a                        // 0x0053f4eb    3d7a1a0000
                         {disp8} ja       _jmp_addr_0x0053f4f9                   // 0x0053f4f0    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8] // 0x0053f4f2    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0053f505                   // 0x0053f4f7    eb0c
_jmp_addr_0x0053f4f9:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8] // 0x0053f4f9    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00013db8]      // 0x0053f4ff    8d82b83d0100
_jmp_addr_0x0053f505:    {disp8} mov      eax, dword ptr [eax + 0x08]            // 0x0053f505    8b4008
                         push             eax                                    // 0x0053f508    50
                         push             0x000008fc                             // 0x0053f509    68fc080000
                         mov.s            ecx, esi                               // 0x0053f50e    8bce
                         call             @FindControl__8SetupBoxFi@12           // 0x0053f510    e84b8cecff
                         add              eax, 0x24                              // 0x0053f515    83c024
                         push             eax                                    // 0x0053f518    50
                         call             _wcscpy                                // 0x0053f519    e8986a2800
                         add              esp, 0x08                              // 0x0053f51e    83c408
_jmp_addr_0x0053f521:    xor.s            eax, eax                               // 0x0053f521    33c0
                         pop              esi                                    // 0x0053f523    5e
                         ret                                                     // 0x0053f524    c3

// Snippet: db, [0x0053f525, 0x0053f528)
.byte 0x8d, 0x49, 0x00            // 0x0053f525

// Snippet: jmptbl, [0x0053f528, 0x0053f53c)
.byte 0x4e, 0xf4, 0x53, 0x00      // 0x0053f528
.byte 0x60, 0xf4, 0x53, 0x00      // 0x0053f52c
.byte 0x6f, 0xf4, 0x53, 0x00      // 0x0053f530
.byte 0x80, 0xf4, 0x53, 0x00      // 0x0053f534
.byte 0x91, 0xf4, 0x53, 0x00      // 0x0053f538

// Snippet: db, [0x0053f53c, 0x0053f540)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0053f53c

