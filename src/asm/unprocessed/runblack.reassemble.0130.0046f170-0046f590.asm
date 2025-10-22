.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x0046ee30
.extern _jmp_addr_0x0046ee50
.extern _jmp_addr_0x0046eed0
.extern _jmp_addr_0x0046efd0
.extern @GetDisplayText__10ControlKeyFPw@12
.extern _jmp_addr_0x0046f030
.extern _jmp_addr_0x0046f040
.extern _jmp_addr_0x0046f050
.extern _wcscpy

.globl _jmp_addr_0x0046f170
.globl @GetDisplayText__12ControlMouseFPw@12
.globl ??0BindableAction@@QAE@XZ  
.globl _jmp_addr_0x0046f1e0
.globl _jmp_addr_0x0046f200
.globl _jmp_addr_0x0046f220
.globl _jmp_addr_0x0046f240
.globl _jmp_addr_0x0046f260
.globl _jmp_addr_0x0046f2b0
.globl _jmp_addr_0x0046f2f0
.globl _jmp_addr_0x0046f330
.globl ?IsKeyDown@BindableAction@@SA_NW4LH_KEY@@@Z
.globl _jmp_addr_0x0046f440
.globl _jmp_addr_0x0046f460
.globl _jmp_addr_0x0046f480
.globl ?IsKeyBeingPressed@BindableAction@@QAE_NXZ
.globl _jmp_addr_0x0046f500

start_0x0046f170_0x0046f590:
// Snippet: asm, [0x0046f170, 0x0046f570)
_jmp_addr_0x0046f170:    mov              edx, dword ptr [ecx]                          // 0x0046f170    8b11
                         xor.s            eax, eax                                      // 0x0046f172    33c0
                         test             edx, edx                                      // 0x0046f174    85d2
                         setne            al                                            // 0x0046f176    0f95c0
                         ret                                                            // 0x0046f179    c3
                         call             dword ptr [__imp__DirectXSetupGetVersion]     // 0x0046f17a    ff153c908a00
@GetDisplayText__12ControlMouseFPw@12:    cmp              dword ptr [ecx], 0x00                         // 0x0046f180    833900
                         {disp8} je       _jmp_addr_0x0046f19c                          // 0x0046f183    7417
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x0046f185    8b442404
                         add              ecx, 0x4                                      // 0x0046f189    83c104
                         push             ecx                                           // 0x0046f18c    51
                         push             0x009cedf8                                    // 0x0046f18d    68f8ed9c00
                         push             eax                                           // 0x0046f192    50
                         call             dword ptr [rdata_bytes + 0x360]               // 0x0046f193    ff1560938a00
                         add              esp, 0x0c                                     // 0x0046f199    83c40c
_jmp_addr_0x0046f19c:    ret              0x0004                                        // 0x0046f19c    c20400
                         nop                                                            // 0x0046f19f    90
??0BindableAction@@QAE@XZ:
                                push             esi                                           // 0x0046f1a0    56
                         mov.s            esi, ecx                                      // 0x0046f1a1    8bf1
                         {disp32} lea     ecx, dword ptr [esi + 0x00000100]             // 0x0046f1a3    8d8e00010000
                         call             _jmp_addr_0x0046ee30                          // 0x0046f1a9    e882fcffff
                         {disp32} lea     ecx, dword ptr [esi + 0x00000208]             // 0x0046f1ae    8d8e08020000
                         call             _jmp_addr_0x0046f030                          // 0x0046f1b4    e877feffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001a89 // 0x0046f1b9    813dac7cd100891a0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0046f1c3    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0046f1cf                          // 0x0046f1c8    7605
                         add              eax, 0x00013e6c                               // 0x0046f1ca    056c3e0100
_jmp_addr_0x0046f1cf:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x0046f1cf    8b4808
                         push             ecx                                           // 0x0046f1d2    51
                         push             esi                                           // 0x0046f1d3    56
                         call             _wcscpy                                       // 0x0046f1d4    e8dd6d3500
                         add              esp, 0x08                                     // 0x0046f1d9    83c408
                         mov.s            eax, esi                                      // 0x0046f1dc    8bc6
                         pop              esi                                           // 0x0046f1de    5e
                         ret                                                            // 0x0046f1df    c3
_jmp_addr_0x0046f1e0:    push             esi                                           // 0x0046f1e0    56
                         mov.s            esi, ecx                                      // 0x0046f1e1    8bf1
                         {disp32} lea     ecx, dword ptr [esi + 0x00000208]             // 0x0046f1e3    8d8e08020000
                         call             _jmp_addr_0x0046f040                          // 0x0046f1e9    e852feffff
                         {disp32} lea     ecx, dword ptr [esi + 0x00000100]             // 0x0046f1ee    8d8e00010000
                         call             _jmp_addr_0x0046ee50                          // 0x0046f1f4    e857fcffff
                         pop              esi                                           // 0x0046f1f9    5e
                         ret                                                            // 0x0046f1fa    c3
                         call             ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0046f1fb    e87926f9ff
_jmp_addr_0x0046f200:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x0046f200    8b442404
                         push             eax                                           // 0x0046f204    50
                         push             ecx                                           // 0x0046f205    51
                         call             _wcscpy                                       // 0x0046f206    e8ab6d3500
                         add              esp, 0x08                                     // 0x0046f20b    83c408
                         ret              0x0004                                        // 0x0046f20e    c20400
                         nop                                                            // 0x0046f211    90
                         nop                                                            // 0x0046f212    90
                         nop                                                            // 0x0046f213    90
                         nop                                                            // 0x0046f214    90
                         nop                                                            // 0x0046f215    90
                         nop                                                            // 0x0046f216    90
                         nop                                                            // 0x0046f217    90
                         nop                                                            // 0x0046f218    90
                         nop                                                            // 0x0046f219    90
                         nop                                                            // 0x0046f21a    90
                         nop                                                            // 0x0046f21b    90
                         nop                                                            // 0x0046f21c    90
                         nop                                                            // 0x0046f21d    90
                         nop                                                            // 0x0046f21e    90
                         nop                                                            // 0x0046f21f    90
_jmp_addr_0x0046f220:    push             esi                                           // 0x0046f220    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                   // 0x0046f221    8b742408
                         push             edi                                           // 0x0046f225    57
                         {disp32} lea     edi, dword ptr [ecx + 0x00000100]             // 0x0046f226    8db900010000
                         mov              ecx, 0x00000042                               // 0x0046f22c    b942000000
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x0046f231    f3a5
                         pop              edi                                           // 0x0046f233    5f
                         pop              esi                                           // 0x0046f234    5e
                         ret              0x0004                                        // 0x0046f235    c20400
                         nop                                                            // 0x0046f238    90
                         nop                                                            // 0x0046f239    90
                         nop                                                            // 0x0046f23a    90
                         nop                                                            // 0x0046f23b    90
                         nop                                                            // 0x0046f23c    90
                         nop                                                            // 0x0046f23d    90
                         nop                                                            // 0x0046f23e    90
                         nop                                                            // 0x0046f23f    90
_jmp_addr_0x0046f240:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x0046f240    8b442404
                         push             ecx                                           // 0x0046f244    51
                         push             eax                                           // 0x0046f245    50
                         call             _wcscpy                                       // 0x0046f246    e86b6d3500
                         add              esp, 0x08                                     // 0x0046f24b    83c408
                         ret              0x0004                                        // 0x0046f24e    c20400
                         nop                                                            // 0x0046f251    90
                         nop                                                            // 0x0046f252    90
                         nop                                                            // 0x0046f253    90
                         nop                                                            // 0x0046f254    90
                         nop                                                            // 0x0046f255    90
                         nop                                                            // 0x0046f256    90
                         nop                                                            // 0x0046f257    90
                         nop                                                            // 0x0046f258    90
                         nop                                                            // 0x0046f259    90
                         nop                                                            // 0x0046f25a    90
                         nop                                                            // 0x0046f25b    90
                         nop                                                            // 0x0046f25c    90
                         nop                                                            // 0x0046f25d    90
                         nop                                                            // 0x0046f25e    90
                         nop                                                            // 0x0046f25f    90
_jmp_addr_0x0046f260:    sub              esp, 0x00000080                               // 0x0046f260    81ec80000000
                         push             esi                                           // 0x0046f266    56
                         {disp32} lea     esi, dword ptr [ecx + 0x00000100]             // 0x0046f267    8db100010000
                         mov.s            ecx, esi                                      // 0x0046f26d    8bce
                         call             _jmp_addr_0x0046efd0                          // 0x0046f26f    e85cfdffff
                         test             eax, eax                                      // 0x0046f274    85c0
                         {disp8} je       _jmp_addr_0x0046f29f                          // 0x0046f276    7427
                         {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x0046f278    8d442404
                         push             eax                                           // 0x0046f27c    50
                         mov.s            ecx, esi                                      // 0x0046f27d    8bce
                         call             @GetDisplayText__10ControlKeyFPw@12           // 0x0046f27f    e85cfdffff
                         {disp32} mov     edx, dword ptr [esp + 0x00000088]             // 0x0046f284    8b942488000000
                         {disp8} lea      ecx, dword ptr [esp + 0x04]                   // 0x0046f28b    8d4c2404
                         push             ecx                                           // 0x0046f28f    51
                         push             0x009cd6c8                                    // 0x0046f290    68c8d69c00
                         push             edx                                           // 0x0046f295    52
                         call             dword ptr [rdata_bytes + 0x360]               // 0x0046f296    ff1560938a00
                         add              esp, 0x0c                                     // 0x0046f29c    83c40c
_jmp_addr_0x0046f29f:    pop              esi                                           // 0x0046f29f    5e
                         add              esp, 0x00000080                               // 0x0046f2a0    81c480000000
                         ret              0x0004                                        // 0x0046f2a6    c20400
                         nop                                                            // 0x0046f2a9    90
                         nop                                                            // 0x0046f2aa    90
                         nop                                                            // 0x0046f2ab    90
                         nop                                                            // 0x0046f2ac    90
                         nop                                                            // 0x0046f2ad    90
                         nop                                                            // 0x0046f2ae    90
                         nop                                                            // 0x0046f2af    90
_jmp_addr_0x0046f2b0:    sub              esp, 0x00000080                               // 0x0046f2b0    81ec80000000
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x0046f2b6    8d442400
                         push             eax                                           // 0x0046f2ba    50
                         add              ecx, 0x00000208                               // 0x0046f2bb    81c108020000
                         {disp8} mov      word ptr [esp + 0x04], 0x0000                 // 0x0046f2c1    66c74424040000
                         call             @GetDisplayText__12ControlMouseFPw@12         // 0x0046f2c8    e8b3feffff
                         {disp32} mov     edx, dword ptr [esp + 0x00000084]             // 0x0046f2cd    8b942484000000
                         {disp8} lea      ecx, dword ptr [esp + 0x00]                   // 0x0046f2d4    8d4c2400
                         push             ecx                                           // 0x0046f2d8    51
                         push             edx                                           // 0x0046f2d9    52
                         call             _wcscpy                                       // 0x0046f2da    e8d76c3500
                         add              esp, 0x00000088                               // 0x0046f2df    81c488000000
                         ret              0x0004                                        // 0x0046f2e5    c20400
                         nop                                                            // 0x0046f2e8    90
                         nop                                                            // 0x0046f2e9    90
                         nop                                                            // 0x0046f2ea    90
                         nop                                                            // 0x0046f2eb    90
                         nop                                                            // 0x0046f2ec    90
                         nop                                                            // 0x0046f2ed    90
                         nop                                                            // 0x0046f2ee    90
                         nop                                                            // 0x0046f2ef    90
_jmp_addr_0x0046f2f0:    {disp32} mov     edx, dword ptr [ecx + 0x00000100]             // 0x0046f2f0    8b9100010000
                         push             esi                                           // 0x0046f2f6    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                   // 0x0046f2f7    8b742408
                         {disp32} lea     eax, dword ptr [ecx + 0x00000100]             // 0x0046f2fb    8d8100010000
                         cmp.s            edx, esi                                      // 0x0046f301    3bd6
                         pop              esi                                           // 0x0046f303    5e
                         {disp8} jne      _jmp_addr_0x0046f325                          // 0x0046f304    751f
                         {disp32} mov     ecx, dword ptr [ecx + 0x00000184]             // 0x0046f306    8b8984010000
                         cmp              ecx, dword ptr [esp + 0x08]                   // 0x0046f30c    3b4c2408
                         {disp8} jne      _jmp_addr_0x0046f325                          // 0x0046f310    7513
                         push             0x0                                           // 0x0046f312    6a00
                         push             0x0                                           // 0x0046f314    6a00
                         mov.s            ecx, eax                                      // 0x0046f316    8bc8
                         call             _jmp_addr_0x0046eed0                          // 0x0046f318    e8b3fbffff
                         mov              eax, 0x00000001                               // 0x0046f31d    b801000000
                         ret              0x0008                                        // 0x0046f322    c20800
_jmp_addr_0x0046f325:    xor.s            eax, eax                                      // 0x0046f325    33c0
                         ret              0x0008                                        // 0x0046f327    c20800
                         call             dword ptr [__imp__MessageBoxA@16]             // 0x0046f32a    ff15b8978a00
_jmp_addr_0x0046f330:    {disp32} mov     eax, dword ptr [ecx + 0x00000208]             // 0x0046f330    8b8108020000
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x0046f336    8b542404
                         add              ecx, 0x00000208                               // 0x0046f33a    81c108020000
                         cmp.s            eax, edx                                      // 0x0046f340    3bc2
                         {disp8} jne      _jmp_addr_0x0046f353                          // 0x0046f342    750f
                         push             0x0                                           // 0x0046f344    6a00
                         call             _jmp_addr_0x0046f050                          // 0x0046f346    e805fdffff
                         mov              eax, 0x00000001                               // 0x0046f34b    b801000000
                         ret              0x0004                                        // 0x0046f350    c20400
_jmp_addr_0x0046f353:    xor.s            eax, eax                                      // 0x0046f353    33c0
                         ret              0x0004                                        // 0x0046f355    c20400
                         nop                                                            // 0x0046f358    90
                         nop                                                            // 0x0046f359    90
                         nop                                                            // 0x0046f35a    90
                         nop                                                            // 0x0046f35b    90
                         nop                                                            // 0x0046f35c    90
                         nop                                                            // 0x0046f35d    90
                         nop                                                            // 0x0046f35e    90
                         nop                                                            // 0x0046f35f    90
_jmp_addr_0x0046f360:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x0046f360    8b442404
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x0046f364    8b4c2408
                         cmp.s            eax, ecx                                      // 0x0046f368    3bc1
                         {disp8} je       _jmp_addr_0x0046f3b5                          // 0x0046f36a    7449
                         cmp              eax, 0x2a                                     // 0x0046f36c    83f82a
                         {disp8} je       _jmp_addr_0x0046f376                          // 0x0046f36f    7405
                         cmp              eax, 0x36                                     // 0x0046f371    83f836
                         {disp8} jne      _jmp_addr_0x0046f380                          // 0x0046f374    750a
_jmp_addr_0x0046f376:    cmp              ecx, 0x2a                                     // 0x0046f376    83f92a
                         {disp8} je       _jmp_addr_0x0046f3b5                          // 0x0046f379    743a
                         cmp              ecx, 0x36                                     // 0x0046f37b    83f936
                         {disp8} je       _jmp_addr_0x0046f3b5                          // 0x0046f37e    7435
_jmp_addr_0x0046f380:    cmp              eax, 0x38                                     // 0x0046f380    83f838
                         {disp8} je       _jmp_addr_0x0046f38c                          // 0x0046f383    7407
                         cmp              eax, 0x000000b8                               // 0x0046f385    3db8000000
                         {disp8} jne      _jmp_addr_0x0046f399                          // 0x0046f38a    750d
_jmp_addr_0x0046f38c:    cmp              ecx, 0x38                                     // 0x0046f38c    83f938
                         {disp8} je       _jmp_addr_0x0046f3b5                          // 0x0046f38f    7424
                         cmp              ecx, 0x000000b8                               // 0x0046f391    81f9b8000000
                         {disp8} je       _jmp_addr_0x0046f3b5                          // 0x0046f397    741c
_jmp_addr_0x0046f399:    cmp              eax, 0x1d                                     // 0x0046f399    83f81d
                         {disp8} je       _jmp_addr_0x0046f3a5                          // 0x0046f39c    7407
                         cmp              eax, 0x0000009d                               // 0x0046f39e    3d9d000000
                         {disp8} jne      _jmp_addr_0x0046f3b2                          // 0x0046f3a3    750d
_jmp_addr_0x0046f3a5:    cmp              ecx, 0x1d                                     // 0x0046f3a5    83f91d
                         {disp8} je       _jmp_addr_0x0046f3b5                          // 0x0046f3a8    740b
                         cmp              ecx, 0x0000009d                               // 0x0046f3aa    81f99d000000
                         {disp8} je       _jmp_addr_0x0046f3b5                          // 0x0046f3b0    7403
_jmp_addr_0x0046f3b2:    xor.s            eax, eax                                      // 0x0046f3b2    33c0
                         ret                                                            // 0x0046f3b4    c3
_jmp_addr_0x0046f3b5:    mov              eax, 0x00000001                               // 0x0046f3b5    b801000000
                         ret                                                            // 0x0046f3ba    c3
                         call             ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0046f3bb    e8b924f9ff
?IsKeyDown@BindableAction@@SA_NW4LH_KEY@@@Z:
                                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x0046f3c0    8b442404
                         cmp              eax, 0x2a                                     // 0x0046f3c4    83f82a
                         {disp8} je       _jmp_addr_0x0046f3ce                          // 0x0046f3c7    7405
                         cmp              eax, 0x36                                     // 0x0046f3c9    83f836
                         {disp8} jne      _jmp_addr_0x0046f3e2                          // 0x0046f3cc    7514
_jmp_addr_0x0046f3ce:    {disp32} mov     cl, byte ptr [data_bytes + 0x4bf39e]          // 0x0046f3ce    8a0d9e53e800
                         test             cl, cl                                        // 0x0046f3d4    84c9
                         {disp8} jne      _jmp_addr_0x0046f432                          // 0x0046f3d6    755a
                         {disp32} mov     cl, byte ptr [data_bytes + 0x4bf3aa]          // 0x0046f3d8    8a0daa53e800
                         test             cl, cl                                        // 0x0046f3de    84c9
                         {disp8} jne      _jmp_addr_0x0046f432                          // 0x0046f3e0    7550
_jmp_addr_0x0046f3e2:    cmp              eax, 0x38                                     // 0x0046f3e2    83f838
                         {disp8} je       _jmp_addr_0x0046f3ee                          // 0x0046f3e5    7407
                         cmp              eax, 0x000000b8                               // 0x0046f3e7    3db8000000
                         {disp8} jne      _jmp_addr_0x0046f402                          // 0x0046f3ec    7514
_jmp_addr_0x0046f3ee:    {disp32} mov     cl, byte ptr [data_bytes + 0x4bf3ac]          // 0x0046f3ee    8a0dac53e800
                         test             cl, cl                                        // 0x0046f3f4    84c9
                         {disp8} jne      _jmp_addr_0x0046f432                          // 0x0046f3f6    753a
                         {disp32} mov     cl, byte ptr [data_bytes + 0x4bf42c]          // 0x0046f3f8    8a0d2c54e800
                         test             cl, cl                                        // 0x0046f3fe    84c9
                         {disp8} jne      _jmp_addr_0x0046f432                          // 0x0046f400    7530
_jmp_addr_0x0046f402:    cmp              eax, 0x1d                                     // 0x0046f402    83f81d
                         {disp8} je       _jmp_addr_0x0046f40e                          // 0x0046f405    7407
                         cmp              eax, 0x0000009d                               // 0x0046f407    3d9d000000
                         {disp8} jne      _jmp_addr_0x0046f422                          // 0x0046f40c    7514
_jmp_addr_0x0046f40e:    {disp32} mov     cl, byte ptr [data_bytes + 0x4bf391]          // 0x0046f40e    8a0d9153e800
                         test             cl, cl                                        // 0x0046f414    84c9
                         {disp8} jne      _jmp_addr_0x0046f432                          // 0x0046f416    751a
                         {disp32} mov     cl, byte ptr [data_bytes + 0x4bf411]          // 0x0046f418    8a0d1154e800
                         test             cl, cl                                        // 0x0046f41e    84c9
                         {disp8} jne      _jmp_addr_0x0046f432                          // 0x0046f420    7510
_jmp_addr_0x0046f422:    {disp32} mov     dl, byte ptr [eax + 0x00e85374]               // 0x0046f422    8a907453e800
                         xor.s            ecx, ecx                                      // 0x0046f428    33c9
                         test             dl, dl                                        // 0x0046f42a    84d2
                         setne            cl                                            // 0x0046f42c    0f95c1
                         mov.s            eax, ecx                                      // 0x0046f42f    8bc1
                         ret                                                            // 0x0046f431    c3
_jmp_addr_0x0046f432:    mov              eax, 0x00000001                               // 0x0046f432    b801000000
                         ret                                                            // 0x0046f437    c3
                         nop                                                            // 0x0046f438    90
                         nop                                                            // 0x0046f439    90
                         nop                                                            // 0x0046f43a    90
                         nop                                                            // 0x0046f43b    90
                         nop                                                            // 0x0046f43c    90
                         nop                                                            // 0x0046f43d    90
                         nop                                                            // 0x0046f43e    90
                         nop                                                            // 0x0046f43f    90
_jmp_addr_0x0046f440:    {disp32} mov     ecx, dword ptr [ecx + 0x00000100]             // 0x0046f440    8b8900010000
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x0046f446    8b542404
                         xor.s            eax, eax                                      // 0x0046f44a    33c0
                         cmp.s            ecx, edx                                      // 0x0046f44c    3bca
                         sete             al                                            // 0x0046f44e    0f94c0
                         ret              0x0004                                        // 0x0046f451    c20400
                         nop                                                            // 0x0046f454    90
                         nop                                                            // 0x0046f455    90
                         nop                                                            // 0x0046f456    90
                         nop                                                            // 0x0046f457    90
                         nop                                                            // 0x0046f458    90
                         nop                                                            // 0x0046f459    90
                         nop                                                            // 0x0046f45a    90
                         nop                                                            // 0x0046f45b    90
                         nop                                                            // 0x0046f45c    90
                         nop                                                            // 0x0046f45d    90
                         nop                                                            // 0x0046f45e    90
                         nop                                                            // 0x0046f45f    90
_jmp_addr_0x0046f460:    {disp32} mov     ecx, dword ptr [ecx + 0x00000208]             // 0x0046f460    8b8908020000
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x0046f466    8b542404
                         xor.s            eax, eax                                      // 0x0046f46a    33c0
                         cmp.s            ecx, edx                                      // 0x0046f46c    3bca
                         sete             al                                            // 0x0046f46e    0f94c0
                         ret              0x0004                                        // 0x0046f471    c20400
                         nop                                                            // 0x0046f474    90
                         nop                                                            // 0x0046f475    90
                         nop                                                            // 0x0046f476    90
                         nop                                                            // 0x0046f477    90
                         nop                                                            // 0x0046f478    90
                         nop                                                            // 0x0046f479    90
                         nop                                                            // 0x0046f47a    90
                         nop                                                            // 0x0046f47b    90
                         nop                                                            // 0x0046f47c    90
                         nop                                                            // 0x0046f47d    90
                         nop                                                            // 0x0046f47e    90
                         nop                                                            // 0x0046f47f    90
_jmp_addr_0x0046f480:    {disp32} mov     eax, dword ptr [ecx + 0x00000100]             // 0x0046f480    8b8100010000
                         push             esi                                           // 0x0046f486    56
                         {disp32} mov     esi, dword ptr [ecx + 0x00000184]             // 0x0046f487    8bb184010000
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x0046f48d    8b4c2408
                         push             ecx                                           // 0x0046f491    51
                         push             eax                                           // 0x0046f492    50
                         call             _jmp_addr_0x0046f360                          // 0x0046f493    e8c8feffff
                         add              esp, 0x08                                     // 0x0046f498    83c408
                         test             eax, eax                                      // 0x0046f49b    85c0
                         {disp8} je       _jmp_addr_0x0046f4ba                          // 0x0046f49d    741b
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                   // 0x0046f49f    8b54240c
                         push             edx                                           // 0x0046f4a3    52
                         push             esi                                           // 0x0046f4a4    56
                         call             _jmp_addr_0x0046f360                          // 0x0046f4a5    e8b6feffff
                         add              esp, 0x08                                     // 0x0046f4aa    83c408
                         test             eax, eax                                      // 0x0046f4ad    85c0
                         {disp8} je       _jmp_addr_0x0046f4ba                          // 0x0046f4af    7409
                         mov              eax, 0x00000001                               // 0x0046f4b1    b801000000
                         pop              esi                                           // 0x0046f4b6    5e
                         ret              0x0008                                        // 0x0046f4b7    c20800
_jmp_addr_0x0046f4ba:    xor.s            eax, eax                                      // 0x0046f4ba    33c0
                         pop              esi                                           // 0x0046f4bc    5e
                         ret              0x0008                                        // 0x0046f4bd    c20800
?IsKeyBeingPressed@BindableAction@@QAE_NXZ:
                                             {disp32} mov     eax, dword ptr [ecx + 0x00000100]             // 0x0046f4c0    8b8100010000
                         test             eax, eax                                      // 0x0046f4c6    85c0
                         push             esi                                           // 0x0046f4c8    56
                         {disp32} mov     esi, dword ptr [ecx + 0x00000184]             // 0x0046f4c9    8bb184010000
                         {disp8} je       _jmp_addr_0x0046f4f6                          // 0x0046f4cf    7425
                         push             eax                                           // 0x0046f4d1    50
                         call             ?IsKeyDown@BindableAction@@SA_NW4LH_KEY@@@Z   // 0x0046f4d2    e8e9feffff
                         add              esp, 0x04                                     // 0x0046f4d7    83c404
                         test             eax, eax                                      // 0x0046f4da    85c0
                         {disp8} je       _jmp_addr_0x0046f4f6                          // 0x0046f4dc    7418
                         test             esi, esi                                      // 0x0046f4de    85f6
                         {disp8} je       _jmp_addr_0x0046f4ef                          // 0x0046f4e0    740d
                         push             esi                                           // 0x0046f4e2    56
                         call             ?IsKeyDown@BindableAction@@SA_NW4LH_KEY@@@Z   // 0x0046f4e3    e8d8feffff
                         add              esp, 0x04                                     // 0x0046f4e8    83c404
                         test             eax, eax                                      // 0x0046f4eb    85c0
                         {disp8} je       _jmp_addr_0x0046f4f6                          // 0x0046f4ed    7407
_jmp_addr_0x0046f4ef:    mov              eax, 0x00000001                               // 0x0046f4ef    b801000000
                         pop              esi                                           // 0x0046f4f4    5e
                         ret                                                            // 0x0046f4f5    c3
_jmp_addr_0x0046f4f6:    xor.s            eax, eax                                      // 0x0046f4f6    33c0
                         pop              esi                                           // 0x0046f4f8    5e
                         ret                                                            // 0x0046f4f9    c3
                         call             dword ptr [rdata_bytes + 0x5d0]               // 0x0046f4fa    ff15d0958a00
_jmp_addr_0x0046f500:    {disp32} mov     ecx, dword ptr [ecx + 0x00000208]             // 0x0046f500    8b8908020000
                         {disp8} lea      eax, dword ptr [ecx + -0x01]                  // 0x0046f506    8d41ff
                         cmp              eax, 0x04                                     // 0x0046f509    83f804
                         {disp8} ja       _jmp_addr_0x0046f56d                          // 0x0046f50c    775f
                         jmp              dword ptr [eax*4 + 0x46f570]                  // 0x0046f50e    ff248570f54600
                         {disp32} mov     cl, byte ptr [data_bytes + 0x4bf304]          // 0x0046f515    8a0d0453e800
                         mov              eax, 0x00000001                               // 0x0046f51b    b801000000
                         test             al, cl                                        // 0x0046f520    84c8
                         {disp8} je       _jmp_addr_0x0046f56d                          // 0x0046f522    7449
                         ret                                                            // 0x0046f524    c3
                         test             byte ptr [data_bytes + 0x4bf304], 0x02        // 0x0046f525    f6050453e80002
                         {disp8} je       _jmp_addr_0x0046f56d                          // 0x0046f52c    743f
                         mov              eax, 0x00000001                               // 0x0046f52e    b801000000
                         ret                                                            // 0x0046f533    c3
                         test             byte ptr [data_bytes + 0x4bf304], 0x40        // 0x0046f534    f6050453e80040
                         {disp8} je       _jmp_addr_0x0046f56d                          // 0x0046f53b    7430
                         mov              eax, 0x00000001                               // 0x0046f53d    b801000000
                         ret                                                            // 0x0046f542    c3
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf300]        // 0x0046f543    a10053e800
                         test             eax, eax                                      // 0x0046f548    85c0
                         {disp8} jle      _jmp_addr_0x0046f56d                          // 0x0046f54a    7e21
                         {disp8} jmp      _jmp_addr_0x0046f557                          // 0x0046f54c    eb09
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf300]        // 0x0046f54e    a10053e800
                         test             eax, eax                                      // 0x0046f553    85c0
                         {disp8} jge      _jmp_addr_0x0046f56d                          // 0x0046f555    7d16
_jmp_addr_0x0046f557:    add              dword ptr [data_bytes + 0x2988d8], eax        // 0x0046f557    0105d8e8c500
                         {disp32} mov     dword ptr [data_bytes + 0x4bf300], 0x00000000 // 0x0046f55d    c7050053e80000000000
                         mov              eax, 0x00000001                               // 0x0046f567    b801000000
                         ret                                                            // 0x0046f56c    c3
_jmp_addr_0x0046f56d:    xor.s            eax, eax                                      // 0x0046f56d    33c0
                         ret                                                            // 0x0046f56f    c3

// Snippet: jmptbl, [0x0046f570, 0x0046f584)
.byte 0x15, 0xf5, 0x46, 0x00      // 0x0046f570
.byte 0x34, 0xf5, 0x46, 0x00      // 0x0046f574
.byte 0x43, 0xf5, 0x46, 0x00      // 0x0046f578
.byte 0x4e, 0xf5, 0x46, 0x00      // 0x0046f57c
.byte 0x25, 0xf5, 0x46, 0x00      // 0x0046f580

// Snippet: db, [0x0046f584, 0x0046f590)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0046f584
.byte 0x90, 0x90, 0x90, 0x90      // 0x0046f588
.byte 0x90, 0x90, 0x90, 0x90      // 0x0046f58c

