.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x0054ae20

.globl ?Destroy@SkipBox@@UAEXXZ
.globl ?InitControls@SkipBox@@UAEXXZ


start_0x00544430_0x005445b0:
// Snippet: asm, [0x00544430, 0x0054459d)
?Destroy@SkipBox@@UAEXXZ:
                         call             ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00544430    e85bf1fcff
                         {disp32} mov     dword ptr [data_bytes + 0x30ab80], 0x00000000 // 0x00544435    c705800bcd0000000000
                         ret                                                            // 0x0054443f    c3
?InitControls@SkipBox@@UAEXXZ:
                         push             esi                                           // 0x00544440    56
                         mov.s            esi, ecx                                      // 0x00544441    8bf1
                         {disp8} mov      eax, dword ptr [esi + 0x20]                   // 0x00544443    8b4620
                         test             eax, eax                                      // 0x00544446    85c0
                         push             edi                                           // 0x00544448    57
                         {disp8} jle      _jmp_addr_0x00544457                          // 0x00544449    7e0c
                         cmp              eax, 0x03                                     // 0x0054444b    83f803
                         {disp8} jl       _jmp_addr_0x00544459                          // 0x0054444e    7c09
                         mov              eax, 0x00000003                               // 0x00544450    b803000000
                         {disp8} jmp      _jmp_addr_0x00544459                          // 0x00544455    eb02
_jmp_addr_0x00544457:    xor.s            eax, eax                                      // 0x00544457    33c0
_jmp_addr_0x00544459:    {disp8} mov      dword ptr [esi + 0x20], eax                   // 0x00544459    894620
                         xor.s            eax, eax                                      // 0x0054445c    33c0
                         {disp8} lea      edx, dword ptr [esi + 0x10]                   // 0x0054445e    8d5610
_jmp_addr_0x00544461:    {disp8} mov      edi, dword ptr [esi + 0x20]                   // 0x00544461    8b7e20
                         xor.s            ecx, ecx                                      // 0x00544464    33c9
                         cmp.s            eax, edi                                      // 0x00544466    3bc7
                         mov              edi, dword ptr [edx]                          // 0x00544468    8b3a
                         sete             cl                                            // 0x0054446a    0f94c1
                         inc              eax                                           // 0x0054446d    40
                         add              edx, 0x04                                     // 0x0054446e    83c204
                         cmp              eax, 0x04                                     // 0x00544471    83f804
                         {disp32} mov     dword ptr [edi + 0x00000248], ecx             // 0x00544474    898f48020000
                         {disp8} jl       _jmp_addr_0x00544461                          // 0x0054447a    7ce5
                         pop              edi                                           // 0x0054447c    5f
                         pop              esi                                           // 0x0054447d    5e
                         ret                                                            // 0x0054447e    c3
                         nop                                                            // 0x0054447f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00544480    8b442404
                         dec              eax                                           // 0x00544484    48
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab80]        // 0x00544485    8b0d800bcd00
                         push             esi                                           // 0x0054448b    56
                         push             edi                                           // 0x0054448c    57
                         {disp8} je       _jmp_addr_0x005444a2                          // 0x0054448d    7413
                         sub              eax, 0x05                                     // 0x0054448f    83e805
                         {disp32} jne     _jmp_addr_0x00544598                          // 0x00544492    0f8500010000
                         mov              eax, dword ptr [ecx]                          // 0x00544498    8b01
                         call             dword ptr [eax + 0x20]                        // 0x0054449a    ff5020
                         pop              edi                                           // 0x0054449d    5f
                         pop              esi                                           // 0x0054449e    5e
                         ret              0x0014                                        // 0x0054449f    c21400
_jmp_addr_0x005444a2:    {disp8} mov      edi, dword ptr [esp + 0x14]                   // 0x005444a2    8b7c2414
                         test             edi, edi                                      // 0x005444a6    85ff
                         {disp32} je      _jmp_addr_0x00544598                          // 0x005444a8    0f84ea000000
                         {disp8} mov      esi, dword ptr [edi + 0x18]                   // 0x005444ae    8b7718
                         mov              eax, 0x66666667                               // 0x005444b1    b867666666
                         imul             esi                                           // 0x005444b6    f7ee
                         sar              edx, 2                                        // 0x005444b8    c1fa02
                         mov.s            eax, edx                                      // 0x005444bb    8bc2
                         shr              eax, 0x1f                                     // 0x005444bd    c1e81f
                         add.s            edx, eax                                      // 0x005444c0    03d0
                         cmp              edx, 0x06                                     // 0x005444c2    83fa06
                         {disp8} jne      _jmp_addr_0x005444e5                          // 0x005444c5    751e
                         mov.s            eax, esi                                      // 0x005444c7    8bc6
                         cdq                                                            // 0x005444c9    99
                         mov              esi, 0x0000000a                               // 0x005444ca    be0a000000
                         idiv             esi                                           // 0x005444cf    f7fe
                         {disp8} mov      dword ptr [ecx + 0x20], edx                   // 0x005444d1    895120
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab80]        // 0x005444d4    8b0d800bcd00
                         mov              edx, dword ptr [ecx]                          // 0x005444da    8b11
                         call             dword ptr [edx + 0x20]                        // 0x005444dc    ff5220
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab80]        // 0x005444df    8b0d800bcd00
_jmp_addr_0x005444e5:    cmp              dword ptr [edi + 0x18], 0x0b                  // 0x005444e5    837f180b
                         {disp32} jne     _jmp_addr_0x00544598                          // 0x005444e9    0f85a9000000
                         {disp8} mov      eax, dword ptr [ecx + 0x20]                   // 0x005444ef    8b4120
                         cmp              eax, 0x03                                     // 0x005444f2    83f803
                         {disp32} ja      _jmp_addr_0x00544589                          // 0x005444f5    0f878e000000
                         jmp              dword ptr [eax*4 + 0x5445a0]                  // 0x005444fb    ff2485a0455400
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00544502    a15c19d000
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x00544507    8b7014
                         and              esi, 0xff7fffff                               // 0x0054450a    81e6ffff7fff
_jmp_addr_0x00544510:    {disp8} mov      dword ptr [eax + 0x14], esi                   // 0x00544510    897014
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00544513    a15c19d000
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x00544518    8b5014
                         and              edx, 0xfeffffff                               // 0x0054451b    81e2fffffffe
                         {disp8} jmp      _jmp_addr_0x0054454d                          // 0x00544521    eb2a
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00544523    a15c19d000
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x00544528    8b7014
                         or               esi, 0x800000                                 // 0x0054452b    81ce00008000
                         {disp8} jmp      _jmp_addr_0x00544510                          // 0x00544531    ebdd
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00544533    a15c19d000
                         or               dword ptr [eax + 0x14], 0x800000              // 0x00544538    81481400008000
                         {disp32} mov     eax, dword ptr [_game]                        // 0x0054453f    a15c19d000
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x00544544    8b5014
                         or               edx, 0x1000000                                // 0x00544547    81ca00000001
_jmp_addr_0x0054454d:    {disp8} mov      dword ptr [eax + 0x14], edx                   // 0x0054454d    895014
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00544550    a15c19d000
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x00544555    8b4814
                         and              ecx, 0xfdffffff                               // 0x00544558    81e1fffffffd
                         {disp8} jmp      _jmp_addr_0x00544586                          // 0x0054455e    eb26
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00544560    a15c19d000
                         or               dword ptr [eax + 0x14], 0x800000              // 0x00544565    81481400008000
                         {disp32} mov     eax, dword ptr [_game]                        // 0x0054456c    a15c19d000
                         or               dword ptr [eax + 0x14], 0x1000000             // 0x00544571    81481400000001
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00544578    a15c19d000
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x0054457d    8b4814
                         or               ecx, 0x2000000                                // 0x00544580    81c900000002
_jmp_addr_0x00544586:    {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x00544586    894814
_jmp_addr_0x00544589:    push             0x0                                           // 0x00544589    6a00
                         call             _jmp_addr_0x0054ae20                          // 0x0054458b    e890680000
                         add              esp, 0x04                                     // 0x00544590    83c404
                         call             _jmp_addr_0x00513640                          // 0x00544593    e8a8f0fcff
_jmp_addr_0x00544598:    pop              edi                                           // 0x00544598    5f
                         pop              esi                                           // 0x00544599    5e
                         ret              0x0014                                        // 0x0054459a    c21400

// Snippet: db, [0x0054459d, 0x005445a0)
.byte 0x8d, 0x49, 0x00            // 0x0054459d

// Snippet: jmptbl, [0x005445a0, 0x005445b0)
.byte 0x02, 0x45, 0x54, 0x00      // 0x005445a0
.byte 0x23, 0x45, 0x54, 0x00      // 0x005445a4
.byte 0x33, 0x45, 0x54, 0x00      // 0x005445a8
.byte 0x60, 0x45, 0x54, 0x00      // 0x005445ac

