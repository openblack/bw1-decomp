.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern _GetSmallTextSize__Fv
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__9SetupListFiiiii@28
.extern @DeleteString__9SetupListFi@12
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__15SetupHLineGraphFiiiiiPwb@33
.extern @__ct__14SetupVBarGraphFiiiiiPw@32
.extern @__ct__14SetupTabButtonFiiiiiPwiii@35
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern _jmp_addr_0x0056aca0
.extern _jmp_addr_0x0056b4b0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ___nw__FUl

.globl _jmp_addr_0x0056d220
.globl _jmp_addr_0x0056d270
.globl ?Init@StatsBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z

start_0x0056d220_0x0056d960:
// Snippet: asm, [0x0056d220, 0x0056d93a)
_jmp_addr_0x0056d220:    push              esi                                           // 0x0056d220    56
                         push              edi                                           // 0x0056d221    57
                         mov.s             edi, ecx                                      // 0x0056d222    8bf9
                         {disp8} mov       eax, dword ptr [edi + 0x70]                   // 0x0056d224    8b4770
                         push              eax                                           // 0x0056d227    50
                         call              ??3@YAXPAX@Z                                  // 0x0056d228    e86b1c2400
                         {disp8} mov       esi, dword ptr [edi + 0x34]                   // 0x0056d22d    8b7734
                         add               esp, 0x04                                     // 0x0056d230    83c404
                         test              esi, esi                                      // 0x0056d233    85f6
                         {disp8} mov       dword ptr [edi + 0x70], 0x00000000            // 0x0056d235    c7477000000000
                         {disp8} je        _jmp_addr_0x0056d25b                          // 0x0056d23c    741d
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]             // 0x0056d23e    8b8650020000
                         test              eax, eax                                      // 0x0056d244    85c0
                         {disp8} jle       _jmp_addr_0x0056d25b                          // 0x0056d246    7e13
_jmp_addr_0x0056d248:    dec               eax                                           // 0x0056d248    48
                         push              eax                                           // 0x0056d249    50
                         mov.s             ecx, esi                                      // 0x0056d24a    8bce
                         call              @DeleteString__9SetupListFi@12                // 0x0056d24c    e80fdbe9ff
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]             // 0x0056d251    8b8650020000
                         test              eax, eax                                      // 0x0056d257    85c0
                         {disp8} jg        _jmp_addr_0x0056d248                          // 0x0056d259    7fed
_jmp_addr_0x0056d25b:    push              0x0                                           // 0x0056d25b    6a00
                         push              -0x1                                          // 0x0056d25d    6aff
                         mov.s             ecx, edi                                      // 0x0056d25f    8bcf
                         call              _jmp_addr_0x0056aca0                          // 0x0056d261    e83adaffff
                         pop               edi                                           // 0x0056d266    5f
                         pop               esi                                           // 0x0056d267    5e
                         ret                                                             // 0x0056d268    c3
                         nop                                                             // 0x0056d269    90
                         nop                                                             // 0x0056d26a    90
                         nop                                                             // 0x0056d26b    90
                         nop                                                             // 0x0056d26c    90
                         nop                                                             // 0x0056d26d    90
                         nop                                                             // 0x0056d26e    90
                         nop                                                             // 0x0056d26f    90
_jmp_addr_0x0056d270:    push              ebx                                           // 0x0056d270    53
                         push              esi                                           // 0x0056d271    56
                         mov.s             esi, ecx                                      // 0x0056d272    8bf1
                         push              edi                                           // 0x0056d274    57
                         {disp8} mov       edi, dword ptr [esp + 0x10]                   // 0x0056d275    8b7c2410
                         xor.s             eax, eax                                      // 0x0056d279    33c0
                         {disp8} lea       ecx, dword ptr [esi + 0x14]                   // 0x0056d27b    8d4e14
_jmp_addr_0x0056d27e:    mov               ebx, dword ptr [ecx]                          // 0x0056d27e    8b19
                         xor.s             edx, edx                                      // 0x0056d280    33d2
                         cmp.s             eax, edi                                      // 0x0056d282    3bc7
                         sete              dl                                            // 0x0056d284    0f94c2
                         inc               eax                                           // 0x0056d287    40
                         add               ecx, 0x4                                      // 0x0056d288    83c104
                         cmp               eax, 0x06                                     // 0x0056d28b    83f806
                         {disp32} mov      dword ptr [ebx + 0x00000244], edx             // 0x0056d28e    899344020000
                         {disp8} jl        _jmp_addr_0x0056d27e                          // 0x0056d294    7ce8
                         {disp8} mov       ecx, dword ptr [esi + 0x44]                   // 0x0056d296    8b4e44
                         mov               eax, dword ptr [ecx]                          // 0x0056d299    8b01
                         push              0x0                                           // 0x0056d29b    6a00
                         call              dword ptr [eax + 8]                           // 0x0056d29d    ff5008
                         {disp8} mov       ecx, dword ptr [esi + 0x48]                   // 0x0056d2a0    8b4e48
                         mov               edx, dword ptr [ecx]                          // 0x0056d2a3    8b11
                         push              0x0                                           // 0x0056d2a5    6a00
                         call              dword ptr [edx + 8]                           // 0x0056d2a7    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x4c]                   // 0x0056d2aa    8b4e4c
                         mov               eax, dword ptr [ecx]                          // 0x0056d2ad    8b01
                         push              0x0                                           // 0x0056d2af    6a00
                         call              dword ptr [eax + 8]                           // 0x0056d2b1    ff5008
                         {disp8} mov       ecx, dword ptr [esi + 0x50]                   // 0x0056d2b4    8b4e50
                         mov               edx, dword ptr [ecx]                          // 0x0056d2b7    8b11
                         push              0x1                                           // 0x0056d2b9    6a01
                         call              dword ptr [edx + 8]                           // 0x0056d2bb    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x54]                   // 0x0056d2be    8b4e54
                         mov               eax, dword ptr [ecx]                          // 0x0056d2c1    8b01
                         push              0x1                                           // 0x0056d2c3    6a01
                         call              dword ptr [eax + 8]                           // 0x0056d2c5    ff5008
                         cmp               edi, dword ptr [esi + 0x10]                   // 0x0056d2c8    3b7e10
                         {disp8} je        _jmp_addr_0x0056d303                          // 0x0056d2cb    7436
                         {disp8} mov       ecx, dword ptr [esi + 0x44]                   // 0x0056d2cd    8b4e44
                         mov               edx, dword ptr [ecx]                          // 0x0056d2d0    8b11
                         call              dword ptr [edx + 0x34]                        // 0x0056d2d2    ff5234
                         {disp8} mov       ecx, dword ptr [esi + 0x48]                   // 0x0056d2d5    8b4e48
                         mov               eax, dword ptr [ecx]                          // 0x0056d2d8    8b01
                         call              dword ptr [eax + 0x34]                        // 0x0056d2da    ff5034
                         {disp8} mov       ecx, dword ptr [esi + 0x4c]                   // 0x0056d2dd    8b4e4c
                         mov               edx, dword ptr [ecx]                          // 0x0056d2e0    8b11
                         call              dword ptr [edx + 0x34]                        // 0x0056d2e2    ff5234
                         {disp8} mov       ecx, dword ptr [esi + 0x44]                   // 0x0056d2e5    8b4e44
                         mov               eax, dword ptr [ecx]                          // 0x0056d2e8    8b01
                         push              0x0                                           // 0x0056d2ea    6a00
                         call              dword ptr [eax + 0x38]                        // 0x0056d2ec    ff5038
                         {disp8} mov       ecx, dword ptr [esi + 0x48]                   // 0x0056d2ef    8b4e48
                         mov               edx, dword ptr [ecx]                          // 0x0056d2f2    8b11
                         push              0x0                                           // 0x0056d2f4    6a00
                         call              dword ptr [edx + 0x38]                        // 0x0056d2f6    ff5238
                         {disp8} mov       ecx, dword ptr [esi + 0x4c]                   // 0x0056d2f9    8b4e4c
                         mov               eax, dword ptr [ecx]                          // 0x0056d2fc    8b01
                         push              0x0                                           // 0x0056d2fe    6a00
                         call              dword ptr [eax + 0x38]                        // 0x0056d300    ff5038
_jmp_addr_0x0056d303:    mov.s             eax, edi                                      // 0x0056d303    8bc7
                         dec               eax                                           // 0x0056d305    48
                         {disp8} je        _jmp_addr_0x0056d32f                          // 0x0056d306    7427
                         dec               eax                                           // 0x0056d308    48
                         {disp8} jne       _jmp_addr_0x0056d357                          // 0x0056d309    754c
                         {disp8} mov       ecx, dword ptr [esi + 0x44]                   // 0x0056d30b    8b4e44
                         mov               edx, dword ptr [ecx]                          // 0x0056d30e    8b11
                         push              0x1                                           // 0x0056d310    6a01
                         call              dword ptr [edx + 8]                           // 0x0056d312    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x48]                   // 0x0056d315    8b4e48
                         mov               eax, dword ptr [ecx]                          // 0x0056d318    8b01
                         push              0x1                                           // 0x0056d31a    6a01
                         call              dword ptr [eax + 8]                           // 0x0056d31c    ff5008
                         mov.s             ecx, esi                                      // 0x0056d31f    8bce
                         {disp8} mov       dword ptr [esi + 0x10], edi                   // 0x0056d321    897e10
                         call              _jmp_addr_0x0056b4b0                          // 0x0056d324    e887e1ffff
                         pop               edi                                           // 0x0056d329    5f
                         pop               esi                                           // 0x0056d32a    5e
                         pop               ebx                                           // 0x0056d32b    5b
                         ret               0x0004                                        // 0x0056d32c    c20400
_jmp_addr_0x0056d32f:    {disp8} mov       ecx, dword ptr [esi + 0x44]                   // 0x0056d32f    8b4e44
                         mov               edx, dword ptr [ecx]                          // 0x0056d332    8b11
                         push              0x1                                           // 0x0056d334    6a01
                         call              dword ptr [edx + 8]                           // 0x0056d336    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x48]                   // 0x0056d339    8b4e48
                         mov               eax, dword ptr [ecx]                          // 0x0056d33c    8b01
                         push              0x1                                           // 0x0056d33e    6a01
                         call              dword ptr [eax + 8]                           // 0x0056d340    ff5008
                         {disp8} mov       ecx, dword ptr [esi + 0x50]                   // 0x0056d343    8b4e50
                         mov               edx, dword ptr [ecx]                          // 0x0056d346    8b11
                         push              0x0                                           // 0x0056d348    6a00
                         call              dword ptr [edx + 8]                           // 0x0056d34a    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x54]                   // 0x0056d34d    8b4e54
                         mov               eax, dword ptr [ecx]                          // 0x0056d350    8b01
                         push              0x0                                           // 0x0056d352    6a00
                         call              dword ptr [eax + 8]                           // 0x0056d354    ff5008
_jmp_addr_0x0056d357:    mov.s             ecx, esi                                      // 0x0056d357    8bce
                         {disp8} mov       dword ptr [esi + 0x10], edi                   // 0x0056d359    897e10
                         call              _jmp_addr_0x0056b4b0                          // 0x0056d35c    e84fe1ffff
                         pop               edi                                           // 0x0056d361    5f
                         pop               esi                                           // 0x0056d362    5e
                         pop               ebx                                           // 0x0056d363    5b
                         ret               0x0004                                        // 0x0056d364    c20400
                         nop                                                             // 0x0056d367    90
                         nop                                                             // 0x0056d368    90
                         nop                                                             // 0x0056d369    90
                         nop                                                             // 0x0056d36a    90
                         nop                                                             // 0x0056d36b    90
                         nop                                                             // 0x0056d36c    90
                         nop                                                             // 0x0056d36d    90
                         nop                                                             // 0x0056d36e    90
                         nop                                                             // 0x0056d36f    90
?Init@StatsBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         sub               esp, 0x0c                                     // 0x0056d370    83ec0c
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0056d373    8b442418
                         push              ebx                                           // 0x0056d377    53
                         push              ebp                                           // 0x0056d378    55
                         push              esi                                           // 0x0056d379    56
                         {disp8} mov       esi, dword ptr [esp + 0x1c]                   // 0x0056d37a    8b74241c
                         push              edi                                           // 0x0056d37e    57
                         mov.s             edi, ecx                                      // 0x0056d37f    8bf9
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                   // 0x0056d381    8b4c2424
                         push              eax                                           // 0x0056d385    50
                         push              ecx                                           // 0x0056d386    51
                         xor.s             ebx, ebx                                      // 0x0056d387    33db
                         push              esi                                           // 0x0056d389    56
                         mov.s             ecx, edi                                      // 0x0056d38a    8bcf
                         {disp8} mov       dword ptr [esp + 0x1c], edi                   // 0x0056d38c    897c241c
                         {disp8} mov       dword ptr [edi + 0x6c], ebx                   // 0x0056d390    895f6c
                         {disp8} mov       dword ptr [edi + 0x70], ebx                   // 0x0056d393    895f70
                         call              @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x0056d396    e86560faff
                         {disp8} mov       dword ptr [esp + 0x14], esi                   // 0x0056d39b    89742414
                         {disp8} mov       dword ptr [esp + 0x18], ebx                   // 0x0056d39f    895c2418
                         {disp8} fild      qword ptr [esp + 0x14]                        // 0x0056d3a3    df6c2414
                         shr               esi, 1                                        // 0x0056d3a7    d1ee
                         mov               edx, 0x00000190                               // 0x0056d3a9    ba90010000
                         {disp32} fmul     dword ptr [__real@3e2aaaab]                   // 0x0056d3ae    d80d68b28a00
                         sub.s             edx, esi                                      // 0x0056d3b4    2bd6
                         {disp8} mov       dword ptr [esp + 0x18], ebx                   // 0x0056d3b6    895c2418
                         {disp8} mov       ebx, dword ptr [esp + 0x24]                   // 0x0056d3ba    8b5c2424
                         {disp8} fstp      dword ptr [esp + 0x20]                        // 0x0056d3be    d95c2420
                         {disp8} mov       dword ptr [esp + 0x14], edx                   // 0x0056d3c2    89542414
                         {disp8} fild      qword ptr [esp + 0x14]                        // 0x0056d3c6    df6c2414
                         {disp32} mov      dword ptr [data_bytes + 0x340068], edi        // 0x0056d3ca    893d6860d000
                         {disp8} mov       dword ptr [edi + 0x10], 0x00000001            // 0x0056d3d0    c7471001000000
                         xor.s             esi, esi                                      // 0x0056d3d7    33f6
                         {disp8} fstp      dword ptr [esp + 0x28]                        // 0x0056d3d9    d95c2428
_jmp_addr_0x0056d3dd:    cmp               esi, 0x05                                     // 0x0056d3dd    83fe05
                         {disp32} ja       _jmp_addr_0x0056d4c9                          // 0x0056d3e0    0f87e3000000
                         jmp               dword ptr [esi*4 + 0x56d93c]                  // 0x0056d3e6    ff24b53cd95600
                         {disp8} mov       al, byte ptr [edi + 0x40]                     // 0x0056d3ed    8a4740
                         test              al, al                                        // 0x0056d3f0    84c0
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]        // 0x0056d3f2    a1ac7cd100
                         {disp8} je        _jmp_addr_0x0056d413                          // 0x0056d3f7    741a
                         cmp               eax, 0x00001a0e                               // 0x0056d3f9    3d0e1a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d3fe    a1a87cd100
                         {disp32} jbe      _jmp_addr_0x0056d4c6                          // 0x0056d403    0f86bd000000
                         add               eax, 0x000138a8                               // 0x0056d409    05a8380100
                         {disp32} jmp      _jmp_addr_0x0056d4c6                          // 0x0056d40e    e9b3000000
_jmp_addr_0x0056d413:    cmp               eax, 0x00001a7a                               // 0x0056d413    3d7a1a0000
                         {disp8} ja        _jmp_addr_0x0056d424                          // 0x0056d418    770a
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d41a    a1a87cd100
                         {disp32} jmp      _jmp_addr_0x0056d4c6                          // 0x0056d41f    e9a2000000
_jmp_addr_0x0056d424:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d424    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x00013db8]             // 0x0056d42a    8d81b83d0100
                         {disp32} jmp      _jmp_addr_0x0056d4c6                          // 0x0056d430    e991000000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a50 // 0x0056d435    813dac7cd100501a0000
                         {disp8} ja        _jmp_addr_0x0056d448                          // 0x0056d43f    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d441    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056d4c6                          // 0x0056d446    eb7e
_jmp_addr_0x0056d448:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d448    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00013bc0]             // 0x0056d44e    8d82c03b0100
                         {disp8} jmp       _jmp_addr_0x0056d4c6                          // 0x0056d454    eb70
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a91 // 0x0056d456    813dac7cd100911a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d460    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0056d4c6                          // 0x0056d465    765f
                         add               eax, 0x00013ecc                               // 0x0056d467    05cc3e0100
                         {disp8} jmp       _jmp_addr_0x0056d4c6                          // 0x0056d46c    eb58
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001aac // 0x0056d46e    813dac7cd100ac1a0000
                         {disp8} ja        _jmp_addr_0x0056d481                          // 0x0056d478    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d47a    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056d4c6                          // 0x0056d47f    eb45
_jmp_addr_0x0056d481:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d481    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x00014010]             // 0x0056d487    8d8110400100
                         {disp8} jmp       _jmp_addr_0x0056d4c6                          // 0x0056d48d    eb37
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a79 // 0x0056d48f    813dac7cd100791a0000
                         {disp8} ja        _jmp_addr_0x0056d4a2                          // 0x0056d499    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d49b    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056d4c6                          // 0x0056d4a0    eb24
_jmp_addr_0x0056d4a2:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d4a2    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00013dac]             // 0x0056d4a8    8d82ac3d0100
                         {disp8} jmp       _jmp_addr_0x0056d4c6                          // 0x0056d4ae    eb16
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a9e // 0x0056d4b0    813dac7cd1009e1a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d4ba    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0056d4c6                          // 0x0056d4bf    7605
                         add               eax, 0x00013f68                               // 0x0056d4c1    05683f0100
_jmp_addr_0x0056d4c6:    {disp8} mov       ebx, dword ptr [eax + 0x08]                   // 0x0056d4c6    8b5808
_jmp_addr_0x0056d4c9:    push              0x000000ea                                    // 0x0056d4c9    68ea000000
                         push              0x00bef098                                    // 0x0056d4ce    6898f0be00
                         push              0x00000254                                    // 0x0056d4d3    6854020000
                         call              ___nw__FUl                                    // 0x0056d4d8    e8b3e22600
                         mov.s             ebp, eax                                      // 0x0056d4dd    8be8
                         add               esp, 0x0c                                     // 0x0056d4df    83c40c
                         test              ebp, ebp                                      // 0x0056d4e2    85ed
                         {disp8} je        _jmp_addr_0x0056d545                          // 0x0056d4e4    745f
                         {disp8} fld       dword ptr [esp + 0x28]                        // 0x0056d4e6    d9442428
                         call              _jmp_addr_0x007a1400                          // 0x0056d4ea    e8113f2300
                         {disp8} fld       dword ptr [esp + 0x28]                        // 0x0056d4ef    d9442428
                         xor.s             ecx, ecx                                      // 0x0056d4f3    33c9
                         {disp8} fadd      dword ptr [esp + 0x20]                        // 0x0056d4f5    d8442420
                         cmp               esi, 0x05                                     // 0x0056d4f9    83fe05
                         sete              cl                                            // 0x0056d4fc    0f94c1
                         xor.s             edx, edx                                      // 0x0056d4ff    33d2
                         test              esi, esi                                      // 0x0056d501    85f6
                         sete              dl                                            // 0x0056d503    0f94c2
                         mov.s             edi, eax                                      // 0x0056d506    8bf8
                         xor.s             eax, eax                                      // 0x0056d508    33c0
                         push              ecx                                           // 0x0056d50a    51
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x0056d50b    8b4c2414
                         push              edx                                           // 0x0056d50f    52
                         cmp               esi, dword ptr [ecx + 0x10]                   // 0x0056d510    3b7110
                         sete              al                                            // 0x0056d513    0f94c0
                         push              eax                                           // 0x0056d516    50
                         push              ebx                                           // 0x0056d517    53
                         push              0x28                                          // 0x0056d518    6a28
                         call              _jmp_addr_0x007a1400                          // 0x0056d51a    e8e13e2300
                         {disp8} mov       edx, dword ptr [esp + 0x38]                   // 0x0056d51f    8b542438
                         sub.s             eax, edi                                      // 0x0056d523    2bc7
                         push              eax                                           // 0x0056d525    50
                         shr               edx, 1                                        // 0x0056d526    d1ea
                         mov               eax, 0x00000104                               // 0x0056d528    b804010000
                         sub.s             eax, edx                                      // 0x0056d52d    2bc2
                         push              eax                                           // 0x0056d52f    50
                         push              edi                                           // 0x0056d530    57
                         {disp32} lea      ecx, dword ptr [esi + 0x000008fc]             // 0x0056d531    8d8efc080000
                         push              ecx                                           // 0x0056d537    51
                         mov.s             ecx, ebp                                      // 0x0056d538    8bcd
                         call              @__ct__14SetupTabButtonFiiiiiPwiii@35         // 0x0056d53a    e8a120eaff
                         {disp8} mov       edi, dword ptr [esp + 0x10]                   // 0x0056d53f    8b7c2410
                         {disp8} jmp       _jmp_addr_0x0056d547                          // 0x0056d543    eb02
_jmp_addr_0x0056d545:    xor.s             eax, eax                                      // 0x0056d545    33c0
_jmp_addr_0x0056d547:    {disp8} mov       dword ptr [edi + esi * 0x4 + 0x14], eax       // 0x0056d547    8944b714
                         call              _GetSmallTextSize__Fv                         // 0x0056d54b    e8c0a4e9ff
                         {disp8} fld       dword ptr [esp + 0x28]                        // 0x0056d550    d9442428
                         {disp8} mov       edx, dword ptr [edi + esi * 0x4 + 0x14]       // 0x0056d554    8b54b714
                         {disp8} fadd      dword ptr [esp + 0x20]                        // 0x0056d558    d8442420
                         inc               esi                                           // 0x0056d55c    46
                         cmp               esi, 0x06                                     // 0x0056d55d    83fe06
                         {disp8} fstp      dword ptr [esp + 0x28]                        // 0x0056d560    d95c2428
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x0056d564    894220
                         {disp32} jl       _jmp_addr_0x0056d3dd                          // 0x0056d567    0f8c70feffff
                         call              _GetMidTextSize__Fv                           // 0x0056d56d    e88ea4e9ff
                         {disp8} mov       ecx, dword ptr [edi + 0x04]                   // 0x0056d572    8b4f04
                         push              0x000000ef                                    // 0x0056d575    68ef000000
                         push              0x00bef098                                    // 0x0056d57a    6898f0be00
                         push              0x00000244                                    // 0x0056d57f    6844020000
                         {disp32} mov      dword ptr [ecx + 0x000000ac], eax             // 0x0056d584    8981ac000000
                         call              ___nw__FUl                                    // 0x0056d58a    e801e22600
                         mov.s             esi, eax                                      // 0x0056d58f    8bf0
                         xor.s             ebp, ebp                                      // 0x0056d591    33ed
                         add               esp, 0x0c                                     // 0x0056d593    83c40c
                         cmp.s             esi, ebp                                      // 0x0056d596    3bf5
                         {disp8} je        _jmp_addr_0x0056d5f0                          // 0x0056d598    7456
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a5f // 0x0056d59a    813dac7cd1005f1a0000
                         {disp8} ja        _jmp_addr_0x0056d5ad                          // 0x0056d5a4    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d5a6    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056d5b9                          // 0x0056d5ab    eb0c
_jmp_addr_0x0056d5ad:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d5ad    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00013c74]             // 0x0056d5b3    8d82743c0100
_jmp_addr_0x0056d5b9:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0056d5b9    8b4008
                         push              eax                                           // 0x0056d5bc    50
                         push              0x1c                                          // 0x0056d5bd    6a1c
                         push              0x000002d0                                    // 0x0056d5bf    68d0020000
                         push              0x3c                                          // 0x0056d5c4    6a3c
                         push              0x28                                          // 0x0056d5c6    6a28
                         push              0x1                                           // 0x0056d5c8    6a01
                         mov.s             ecx, esi                                      // 0x0056d5ca    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0056d5cc    e87fbce9ff
                         mov               dword ptr [esi], 0x008ab5c0                   // 0x0056d5d1    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], 0x00000001      // 0x0056d5d7    c7863c02000001000000
                         {disp32} mov      byte ptr [esi + 0x0000022a], 0x00             // 0x0056d5e1    c6862a02000000
                         {disp32} mov      dword ptr [esi + 0x00000240], ebp             // 0x0056d5e8    89ae40020000
                         {disp8} jmp       _jmp_addr_0x0056d5f2                          // 0x0056d5ee    eb02
_jmp_addr_0x0056d5f0:    xor.s             esi, esi                                      // 0x0056d5f0    33f6
_jmp_addr_0x0056d5f2:    push              0x000000f4                                    // 0x0056d5f2    68f4000000
                         push              0x00bef098                                    // 0x0056d5f7    6898f0be00
                         push              0x0000025c                                    // 0x0056d5fc    685c020000
                         {disp8} mov       dword ptr [edi + 0x2c], esi                   // 0x0056d601    89772c
                         call              ___nw__FUl                                    // 0x0056d604    e887e12600
                         add               esp, 0x0c                                     // 0x0056d609    83c40c
                         cmp.s             eax, ebp                                      // 0x0056d60c    3bc5
                         {disp8} je        _jmp_addr_0x0056d646                          // 0x0056d60e    7436
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d59 // 0x0056d610    813dac7cd100590d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d61a    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0056d628                          // 0x0056d620    7606
                         add               ecx, 0x0000a02c                               // 0x0056d622    81c12ca00000
_jmp_addr_0x0056d628:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0056d628    8b4908
                         push              0x2                                           // 0x0056d62b    6a02
                         push              ebp                                           // 0x0056d62d    55
                         push              0x28                                          // 0x0056d62e    6a28
                         push              ecx                                           // 0x0056d630    51
                         push              0x00000212                                    // 0x0056d631    6812020000
                         push              0x14                                          // 0x0056d636    6a14
                         push              0x000003e7                                    // 0x0056d638    68e7030000
                         mov.s             ecx, eax                                      // 0x0056d63d    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0056d63f    e81cfce9ff
                         {disp8} jmp       _jmp_addr_0x0056d648                          // 0x0056d644    eb02
_jmp_addr_0x0056d646:    xor.s             eax, eax                                      // 0x0056d646    33c0
_jmp_addr_0x0056d648:    {disp8} mov       dword ptr [edi + 0x30], eax                   // 0x0056d648    894730
                         call              _GetMidTextSize__Fv                           // 0x0056d64b    e8b0a3e9ff
                         {disp8} mov       edx, dword ptr [edi + 0x30]                   // 0x0056d650    8b5730
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x0056d653    894220
                         add               edi, 0x58                                     // 0x0056d656    83c758
_jmp_addr_0x0056d659:    push              0x000000f9                                    // 0x0056d659    68f9000000
                         push              0x00bef098                                    // 0x0056d65e    6898f0be00
                         push              0x00000284                                    // 0x0056d663    6884020000
                         call              ___nw__FUl                                    // 0x0056d668    e823e12600
                         mov.s             esi, eax                                      // 0x0056d66d    8bf0
                         add               esp, 0x0c                                     // 0x0056d66f    83c40c
                         test              esi, esi                                      // 0x0056d672    85f6
                         {disp8} je        _jmp_addr_0x0056d69a                          // 0x0056d674    7424
                         push              0x00c4cd30                                    // 0x0056d676    6830cdc400
                         push              0x32                                          // 0x0056d67b    6a32
                         push              0x000000c8                                    // 0x0056d67d    68c8000000
                         push              0x64                                          // 0x0056d682    6a64
                         push              0x0000015e                                    // 0x0056d684    685e010000
                         push              0x0                                           // 0x0056d689    6a00
                         mov.s             ecx, esi                                      // 0x0056d68b    8bce
                         call              @__ct__14SetupVBarGraphFiiiiiPw@32            // 0x0056d68d    e86e18eaff
                         mov               dword ptr [esi], 0x008ffee4                   // 0x0056d692    c706e4fe8f00
                         {disp8} jmp       _jmp_addr_0x0056d69c                          // 0x0056d698    eb02
_jmp_addr_0x0056d69a:    xor.s             esi, esi                                      // 0x0056d69a    33f6
_jmp_addr_0x0056d69c:    test              ebp, ebp                                      // 0x0056d69c    85ed
                         mov               dword ptr [edi], esi                          // 0x0056d69e    8937
                         {disp8} jl        _jmp_addr_0x0056d6d8                          // 0x0056d6a0    7c36
                         {disp8} mov       byte ptr [esp + 0x24], 0x00                   // 0x0056d6a2    c644242400
                         {disp8} mov       byte ptr [esp + 0x25], 0x00                   // 0x0056d6a7    c644242500
                         {disp8} mov       byte ptr [esp + 0x26], -0x01                  // 0x0056d6ac    c6442426ff
                         {disp8} mov       byte ptr [esp + 0x27], -0x01                  // 0x0056d6b1    c6442427ff
                         {disp8} mov       ebx, dword ptr [esp + 0x24]                   // 0x0056d6b6    8b5c2424
                         {disp8} lea       esi, dword ptr [ebp + 0x01]                   // 0x0056d6ba    8d7501
_jmp_addr_0x0056d6bd:    mov               ecx, dword ptr [edi]                          // 0x0056d6bd    8b0f
                         {disp8} lea       edx, dword ptr [esp + 0x14]                   // 0x0056d6bf    8d542414
                         {disp8} mov       dword ptr [esp + 0x14], ebx                   // 0x0056d6c3    895c2414
                         {disp8} mov       dword ptr [esp + 0x18], 0x3f800000            // 0x0056d6c7    c74424180000803f
                         mov               eax, dword ptr [ecx]                          // 0x0056d6cf    8b01
                         push              edx                                           // 0x0056d6d1    52
                         call              dword ptr [eax + 0x3c]                        // 0x0056d6d2    ff503c
                         dec               esi                                           // 0x0056d6d5    4e
                         {disp8} jne       _jmp_addr_0x0056d6bd                          // 0x0056d6d6    75e5
_jmp_addr_0x0056d6d8:    mov               ecx, dword ptr [edi]                          // 0x0056d6d8    8b0f
                         mov               eax, dword ptr [ecx]                          // 0x0056d6da    8b01
                         push              0x0                                           // 0x0056d6dc    6a00
                         call              dword ptr [eax + 0x38]                        // 0x0056d6de    ff5038
                         mov               ecx, dword ptr [edi]                          // 0x0056d6e1    8b0f
                         mov               edx, dword ptr [ecx]                          // 0x0056d6e3    8b11
                         push              0x1                                           // 0x0056d6e5    6a01
                         call              dword ptr [edx + 8]                           // 0x0056d6e7    ff5208
                         inc               ebp                                           // 0x0056d6ea    45
                         add               edi, 0x04                                     // 0x0056d6eb    83c704
                         cmp               ebp, 0x04                                     // 0x0056d6ee    83fd04
                         {disp32} jl       _jmp_addr_0x0056d659                          // 0x0056d6f1    0f8c62ffffff
                         {disp8} mov       ebx, dword ptr [esp + 0x10]                   // 0x0056d6f7    8b5c2410
                         mov               esi, 0x00000028                               // 0x0056d6fb    be28000000
                         {disp8} lea       edi, dword ptr [ebx + 0x44]                   // 0x0056d700    8d7b44
_jmp_addr_0x0056d703:    push              0x00000102                                    // 0x0056d703    6802010000
                         push              0x00bef098                                    // 0x0056d708    6898f0be00
                         push              0x00000284                                    // 0x0056d70d    6884020000
                         call              ___nw__FUl                                    // 0x0056d712    e879e02600
                         add               esp, 0x0c                                     // 0x0056d717    83c40c
                         test              eax, eax                                      // 0x0056d71a    85c0
                         {disp8} je        _jmp_addr_0x0056d73b                          // 0x0056d71c    741d
                         push              0x00c4cd30                                    // 0x0056d71e    6830cdc400
                         push              0x000000e6                                    // 0x0056d723    68e6000000
                         push              0x000000dc                                    // 0x0056d728    68dc000000
                         push              0x64                                          // 0x0056d72d    6a64
                         push              esi                                           // 0x0056d72f    56
                         push              0x0                                           // 0x0056d730    6a00
                         mov.s             ecx, eax                                      // 0x0056d732    8bc8
                         call              @__ct__14SetupVBarGraphFiiiiiPw@32            // 0x0056d734    e8c717eaff
                         {disp8} jmp       _jmp_addr_0x0056d73d                          // 0x0056d739    eb02
_jmp_addr_0x0056d73b:    xor.s             eax, eax                                      // 0x0056d73b    33c0
_jmp_addr_0x0056d73d:    mov               dword ptr [edi], eax                          // 0x0056d73d    8907
                         mov               edx, dword ptr [eax]                          // 0x0056d73f    8b10
                         push              0x0                                           // 0x0056d741    6a00
                         mov.s             ecx, eax                                      // 0x0056d743    8bc8
                         call              dword ptr [edx + 0x38]                        // 0x0056d745    ff5238
                         add               esi, 0x000000fa                               // 0x0056d748    81c6fa000000
                         add               edi, 0x04                                     // 0x0056d74e    83c704
                         cmp               esi, 0x00000316                               // 0x0056d751    81fe16030000
                         {disp8} jl        _jmp_addr_0x0056d703                          // 0x0056d757    7caa
                         push              0x00000106                                    // 0x0056d759    6806010000
                         push              0x00bef098                                    // 0x0056d75e    6898f0be00
                         push              0x00000258                                    // 0x0056d763    6858020000
                         call              ___nw__FUl                                    // 0x0056d768    e823e02600
                         add               esp, 0x0c                                     // 0x0056d76d    83c40c
                         test              eax, eax                                      // 0x0056d770    85c0
                         {disp8} je        _jmp_addr_0x0056d7a8                          // 0x0056d772    7434
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001966 // 0x0056d774    813dac7cd10066190000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d77e    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0056d78c                          // 0x0056d784    7606
                         add               ecx, 0x000130c8                               // 0x0056d786    81c1c8300100
_jmp_addr_0x0056d78c:    {disp8} mov       edx, dword ptr [ecx + 0x08]                   // 0x0056d78c    8b5108
                         push              0x1                                           // 0x0056d78f    6a01
                         push              edx                                           // 0x0056d791    52
                         push              0x64                                          // 0x0056d792    6a64
                         push              0x000001d6                                    // 0x0056d794    68d6010000
                         push              0x64                                          // 0x0056d799    6a64
                         push              0x28                                          // 0x0056d79b    6a28
                         push              0x0                                           // 0x0056d79d    6a00
                         mov.s             ecx, eax                                      // 0x0056d79f    8bc8
                         call              @__ct__15SetupHLineGraphFiiiiiPwb@33          // 0x0056d7a1    e86a0deaff
                         {disp8} jmp       _jmp_addr_0x0056d7aa                          // 0x0056d7a6    eb02
_jmp_addr_0x0056d7a8:    xor.s             eax, eax                                      // 0x0056d7a8    33c0
_jmp_addr_0x0056d7aa:    push              0x00000107                                    // 0x0056d7aa    6807010000
                         push              0x00bef098                                    // 0x0056d7af    6898f0be00
                         push              0x00000258                                    // 0x0056d7b4    6858020000
                         {disp8} mov       dword ptr [ebx + 0x50], eax                   // 0x0056d7b9    894350
                         call              ___nw__FUl                                    // 0x0056d7bc    e8cfdf2600
                         add               esp, 0x0c                                     // 0x0056d7c1    83c40c
                         test              eax, eax                                      // 0x0056d7c4    85c0
                         {disp8} je        _jmp_addr_0x0056d807                          // 0x0056d7c6    743f
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001967 // 0x0056d7c8    813dac7cd10067190000
                         {disp8} ja        _jmp_addr_0x0056d7dc                          // 0x0056d7d2    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d7d4    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x0056d7e8                          // 0x0056d7da    eb0c
_jmp_addr_0x0056d7dc:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d7dc    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x000130d4]             // 0x0056d7e2    8d8ad4300100
_jmp_addr_0x0056d7e8:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0056d7e8    8b4908
                         push              0x0                                           // 0x0056d7eb    6a00
                         push              ecx                                           // 0x0056d7ed    51
                         push              0x64                                          // 0x0056d7ee    6a64
                         push              0x000001d6                                    // 0x0056d7f0    68d6010000
                         push              0x000000e6                                    // 0x0056d7f5    68e6000000
                         push              0x28                                          // 0x0056d7fa    6a28
                         push              0x0                                           // 0x0056d7fc    6a00
                         mov.s             ecx, eax                                      // 0x0056d7fe    8bc8
                         call              @__ct__15SetupHLineGraphFiiiiiPwb@33          // 0x0056d800    e80b0deaff
                         {disp8} jmp       _jmp_addr_0x0056d809                          // 0x0056d805    eb02
_jmp_addr_0x0056d807:    xor.s             eax, eax                                      // 0x0056d807    33c0
_jmp_addr_0x0056d809:    push              0x0000010a                                    // 0x0056d809    680a010000
                         push              0x00bef098                                    // 0x0056d80e    6898f0be00
                         push              0x000002b0                                    // 0x0056d813    68b0020000
                         {disp8} mov       dword ptr [ebx + 0x54], eax                   // 0x0056d818    894354
                         call              ___nw__FUl                                    // 0x0056d81b    e870df2600
                         add               esp, 0x0c                                     // 0x0056d820    83c40c
                         test              eax, eax                                      // 0x0056d823    85c0
                         {disp8} je        _jmp_addr_0x0056d846                          // 0x0056d825    741f
                         push              0x00000096                                    // 0x0056d827    6896000000
                         push              0x000002d0                                    // 0x0056d82c    68d0020000
                         push              0x0000016d                                    // 0x0056d831    686d010000
                         push              0x28                                          // 0x0056d836    6a28
                         push              0x000003e7                                    // 0x0056d838    68e7030000
                         mov.s             ecx, eax                                      // 0x0056d83d    8bc8
                         call              @__ct__9SetupListFiiiii@28                    // 0x0056d83f    e80ccce9ff
                         {disp8} jmp       _jmp_addr_0x0056d848                          // 0x0056d844    eb02
_jmp_addr_0x0056d846:    xor.s             eax, eax                                      // 0x0056d846    33c0
_jmp_addr_0x0056d848:    {disp8} mov       dword ptr [ebx + 0x34], eax                   // 0x0056d848    894334
                         {disp32} mov      byte ptr [eax + 0x0000023c], 0x01             // 0x0056d84b    c6803c02000001
                         call              _GetSmallTextSize__Fv                         // 0x0056d852    e8b9a1e9ff
                         {disp8} mov       ecx, dword ptr [ebx + 0x34]                   // 0x0056d857    8b4b34
                         push              0x0000010d                                    // 0x0056d85a    680d010000
                         push              0x00bef098                                    // 0x0056d85f    6898f0be00
                         push              0x00000260                                    // 0x0056d864    6860020000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                   // 0x0056d869    894120
                         call              ___nw__FUl                                    // 0x0056d86c    e81fdf2600
                         add               esp, 0x0c                                     // 0x0056d871    83c40c
                         test              eax, eax                                      // 0x0056d874    85c0
                         {disp8} je        _jmp_addr_0x0056d8ba                          // 0x0056d876    7442
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001968 // 0x0056d878    813dac7cd10068190000
                         {disp8} ja        _jmp_addr_0x0056d88c                          // 0x0056d882    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d884    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x0056d898                          // 0x0056d88a    eb0c
_jmp_addr_0x0056d88c:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d88c    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x000130e0]             // 0x0056d892    8d8ae0300100
_jmp_addr_0x0056d898:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0056d898    8b4908
                         push              0x14                                          // 0x0056d89b    6a14
                         push              ecx                                           // 0x0056d89d    51
                         push              0x1                                           // 0x0056d89e    6a01
                         push              0x1                                           // 0x0056d8a0    6a01
                         push              0x00000212                                    // 0x0056d8a2    6812020000
                         push              0x00000122                                    // 0x0056d8a7    6822010000
                         push              0x000003e7                                    // 0x0056d8ac    68e7030000
                         mov.s             ecx, eax                                      // 0x0056d8b1    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x0056d8b3    e85836eaff
                         {disp8} jmp       _jmp_addr_0x0056d8bc                          // 0x0056d8b8    eb02
_jmp_addr_0x0056d8ba:    xor.s             eax, eax                                      // 0x0056d8ba    33c0
_jmp_addr_0x0056d8bc:    push              0x0000010e                                    // 0x0056d8bc    680e010000
                         push              0x00bef098                                    // 0x0056d8c1    6898f0be00
                         push              0x00000260                                    // 0x0056d8c6    6860020000
                         {disp8} mov       dword ptr [ebx + 0x38], eax                   // 0x0056d8cb    894338
                         call              ___nw__FUl                                    // 0x0056d8ce    e8bdde2600
                         add               esp, 0x0c                                     // 0x0056d8d3    83c40c
                         test              eax, eax                                      // 0x0056d8d6    85c0
                         {disp8} je        _jmp_addr_0x0056d914                          // 0x0056d8d8    743a
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001969 // 0x0056d8da    813dac7cd10069190000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056d8e4    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0056d8f2                          // 0x0056d8ea    7606
                         add               ecx, 0x000130ec                               // 0x0056d8ec    81c1ec300100
_jmp_addr_0x0056d8f2:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0056d8f2    8b4908
                         push              0x14                                          // 0x0056d8f5    6a14
                         push              ecx                                           // 0x0056d8f7    51
                         push              0x0                                           // 0x0056d8f8    6a00
                         push              0x1                                           // 0x0056d8fa    6a01
                         push              0x00000212                                    // 0x0056d8fc    6812020000
                         push              0x000001ea                                    // 0x0056d901    68ea010000
                         push              0x000003e7                                    // 0x0056d906    68e7030000
                         mov.s             ecx, eax                                      // 0x0056d90b    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x0056d90d    e8fe35eaff
                         {disp8} jmp       _jmp_addr_0x0056d916                          // 0x0056d912    eb02
_jmp_addr_0x0056d914:    xor.s             eax, eax                                      // 0x0056d914    33c0
_jmp_addr_0x0056d916:    pop               edi                                           // 0x0056d916    5f
                         {disp8} mov       dword ptr [ebx + 0x3c], eax                   // 0x0056d917    89433c
                         pop               esi                                           // 0x0056d91a    5e
                         {disp32} mov      dword ptr [eax + 0x00000244], 0x00000001      // 0x0056d91b    c7804402000001000000
                         {disp8} mov       edx, dword ptr [ebx + 0x38]                   // 0x0056d925    8b5338
                         pop               ebp                                           // 0x0056d928    5d
                         {disp32} mov      dword ptr [edx + 0x00000244], 0x00000000      // 0x0056d929    c7824402000000000000
                         pop               ebx                                           // 0x0056d933    5b
                         add               esp, 0x0c                                     // 0x0056d934    83c40c
                         ret               0x000c                                        // 0x0056d937    c20c00

// Snippet: db, [0x0056d93a, 0x0056d93c)
.byte 0x8b, 0xff                  // 0x0056d93a

// Snippet: jmptbl, [0x0056d93c, 0x0056d954)
.byte 0xed, 0xd3, 0x56, 0x00      // 0x0056d93c
.byte 0x56, 0xd4, 0x56, 0x00      // 0x0056d940
.byte 0x35, 0xd4, 0x56, 0x00      // 0x0056d944
.byte 0x6e, 0xd4, 0x56, 0x00      // 0x0056d948
.byte 0x8f, 0xd4, 0x56, 0x00      // 0x0056d94c
.byte 0xb0, 0xd4, 0x56, 0x00      // 0x0056d950

// Snippet: db, [0x0056d954, 0x0056d960)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0056d954
.byte 0x90, 0x90, 0x90, 0x90      // 0x0056d958
.byte 0x90, 0x90, 0x90, 0x90      // 0x0056d95c

