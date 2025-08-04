.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @AutoScroll__9SetupListFb@9
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern _jmp_addr_0x0040b000
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x005471c0
.extern _jmp_addr_0x00549930
.extern _jmp_addr_0x005990a0
.extern _jmp_addr_0x005990f0
.extern _jmp_addr_0x00599370
.extern _jmp_addr_0x0059a260
.extern _jmp_addr_0x0059c160
.extern _jmp_addr_0x0059cae0
.extern _jmp_addr_0x0059cc50
.extern _jmp_addr_0x0059ced0
.extern _jmp_addr_0x0059cee0
.extern _jmp_addr_0x0059cf20
.extern _jmp_addr_0x0059cf80
.extern _jmp_addr_0x0059cfd0
.extern _jmp_addr_0x005ea980
.extern _jmp_addr_0x005f5200
.extern _jmp_addr_0x00713e00
.extern _jmp_addr_0x00714270
.extern _jmp_addr_0x007143a0
.extern _jmp_addr_0x00714420
.extern  ??3@YAXPAX@Z
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _swprintf
.extern ??2@YAPAXI@Z
.extern _malloc
.extern _free
.extern __chkstk
.extern ___nw__FUl
.extern _CHAR2WCHAR__FPc
.extern _jmp_addr_0x008850d0
.extern _jmp_addr_0x008855f0
.extern _jmp_addr_0x00885790
.extern _jmp_addr_0x008859e0
.extern _jmp_addr_0x00885a50
.extern _jmp_addr_0x008866c0
.extern _jmp_addr_0x00886780

.globl _jmp_addr_0x0059b1d0
.globl _jmp_addr_0x0059b260
.globl _jmp_addr_0x0059b2b0
.globl _jmp_addr_0x0059b360
.globl _jmp_addr_0x0059b5d0
.globl _jmp_addr_0x0059b680
.globl _jmp_addr_0x0059bae0

start_0x0059b1d0_0x0059be30:
// Snippet: asm, [0x0059b1d0, 0x0059be1f)
_jmp_addr_0x0059b1d0:    push             ebx                                           // 0x0059b1d0    53
                         push             esi                                           // 0x0059b1d1    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x0059b1d2    8b742418
                         push             edi                                           // 0x0059b1d6    57
                         {disp32} mov     edi, dword ptr [esi + 0x00000294]             // 0x0059b1d7    8bbe94020000
                         mov.s            ecx, esi                                      // 0x0059b1dd    8bce
                         call             _jmp_addr_0x0059c160                          // 0x0059b1df    e87c0f0000
                         test             edi, edi                                      // 0x0059b1e4    85ff
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x0059b1e6    8b442414
                         {disp32} mov     dword ptr [esi + 0x000002a0], eax             // 0x0059b1ea    8986a0020000
                         {disp8} je       _jmp_addr_0x0059b1fb                          // 0x0059b1f0    7409
                         push             edi                                           // 0x0059b1f2    57
                         call             _free                                         // 0x0059b1f3    e88eb52200
                         add              esp, 0x04                                     // 0x0059b1f8    83c404
_jmp_addr_0x0059b1fb:    {disp8} mov      ebx, dword ptr [esp + 0x18]                   // 0x0059b1fb    8b5c2418
                         or               ecx, 0xffffffff                               // 0x0059b1ff    83c9ff
                         xor.s            eax, eax                                      // 0x0059b202    33c0
                         mov.s            edi, ebx                                      // 0x0059b204    8bfb
                         repne scasb                                                    // 0x0059b206    f2ae
                         not              ecx                                           // 0x0059b208    f7d1
                         dec              ecx                                           // 0x0059b20a    49
                         lea              ecx, dword ptr [ecx + ecx * 0x2]              // 0x0059b20b    8d0c49
                         shr              ecx, 2                                        // 0x0059b20e    c1e902
                         add              ecx, 0x5                                      // 0x0059b211    83c105
                         push             ecx                                           // 0x0059b214    51
                         call             _malloc                                       // 0x0059b215    e832b42200
                         {disp32} lea     edx, dword ptr [esi + 0x00000298]             // 0x0059b21a    8d9698020000
                         push             edx                                           // 0x0059b220    52
                         mov.s            edi, eax                                      // 0x0059b221    8bf8
                         push             edi                                           // 0x0059b223    57
                         push             ebx                                           // 0x0059b224    53
                         call             _jmp_addr_0x00599370                          // 0x0059b225    e846e1ffff
                         {disp32} mov     dword ptr [esi + 0x00000294], edi             // 0x0059b22a    89be94020000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x35a4e4]        // 0x0059b230    a1e404d200
                         push             eax                                           // 0x0059b235    50
                         call             _jmp_addr_0x00885790                          // 0x0059b236    e855a52e00
                         add              esp, 0x14                                     // 0x0059b23b    83c414
                         pop              edi                                           // 0x0059b23e    5f
                         pop              esi                                           // 0x0059b23f    5e
                         pop              ebx                                           // 0x0059b240    5b
                         ret                                                            // 0x0059b241    c3
                         nop                                                            // 0x0059b242    90
                         nop                                                            // 0x0059b243    90
                         nop                                                            // 0x0059b244    90
                         nop                                                            // 0x0059b245    90
                         nop                                                            // 0x0059b246    90
                         nop                                                            // 0x0059b247    90
                         nop                                                            // 0x0059b248    90
                         nop                                                            // 0x0059b249    90
                         nop                                                            // 0x0059b24a    90
                         nop                                                            // 0x0059b24b    90
                         nop                                                            // 0x0059b24c    90
                         nop                                                            // 0x0059b24d    90
                         nop                                                            // 0x0059b24e    90
                         nop                                                            // 0x0059b24f    90
                         ret                                                            // 0x0059b250    c3
                         nop                                                            // 0x0059b251    90
                         nop                                                            // 0x0059b252    90
                         nop                                                            // 0x0059b253    90
                         nop                                                            // 0x0059b254    90
                         nop                                                            // 0x0059b255    90
                         nop                                                            // 0x0059b256    90
                         nop                                                            // 0x0059b257    90
                         nop                                                            // 0x0059b258    90
                         nop                                                            // 0x0059b259    90
                         nop                                                            // 0x0059b25a    90
                         nop                                                            // 0x0059b25b    90
                         nop                                                            // 0x0059b25c    90
                         nop                                                            // 0x0059b25d    90
                         nop                                                            // 0x0059b25e    90
                         nop                                                            // 0x0059b25f    90
_jmp_addr_0x0059b260:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x0059b260    8b442404
                         push             esi                                           // 0x0059b264    56
                         mov.s            esi, ecx                                      // 0x0059b265    8bf1
                         {disp32} mov     ecx, dword ptr [esi + 0x00000234]             // 0x0059b267    8b8e34020000
                         push             eax                                           // 0x0059b26d    50
                         add              ecx, 0x24                                     // 0x0059b26e    83c124
                         push             ecx                                           // 0x0059b271    51
                         call             _wcscpy                                       // 0x0059b272    e83fad2200
                         {disp32} mov     edx, dword ptr [esi + 0x00000228]             // 0x0059b277    8b9628020000
                         {disp32} mov     al, byte ptr [edx + 0x00000229]               // 0x0059b27d    8a8229020000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000234]             // 0x0059b283    8b8e34020000
                         add              esp, 0x08                                     // 0x0059b289    83c408
                         test             al, al                                        // 0x0059b28c    84c0
                         {disp8} je       _jmp_addr_0x0059b29b                          // 0x0059b28e    740b
                         mov              eax, dword ptr [ecx]                          // 0x0059b290    8b01
                         push             0x1                                           // 0x0059b292    6a01
                         call             dword ptr [eax + 8]                           // 0x0059b294    ff5008
                         pop              esi                                           // 0x0059b297    5e
                         ret              0x0008                                        // 0x0059b298    c20800
_jmp_addr_0x0059b29b:    {disp8} mov      al, byte ptr [esp + 0x0c]                     // 0x0059b29b    8a44240c
                         mov              edx, dword ptr [ecx]                          // 0x0059b29f    8b11
                         test             al, al                                        // 0x0059b2a1    84c0
                         sete             al                                            // 0x0059b2a3    0f94c0
                         push             eax                                           // 0x0059b2a6    50
                         call             dword ptr [edx + 8]                           // 0x0059b2a7    ff5208
                         pop              esi                                           // 0x0059b2aa    5e
                         ret              0x0008                                        // 0x0059b2ab    c20800
                         nop                                                            // 0x0059b2ae    90
                         nop                                                            // 0x0059b2af    90
_jmp_addr_0x0059b2b0:    push             esi                                           // 0x0059b2b0    56
                         mov.s            esi, ecx                                      // 0x0059b2b1    8bf1
                         call             _jmp_addr_0x0059a260                          // 0x0059b2b3    e8a8efffff
                         {disp32} mov     eax, dword ptr [esi + 0x00000228]             // 0x0059b2b8    8b8628020000
                         {disp32} mov     cl, byte ptr [eax + 0x00000229]               // 0x0059b2be    8a8829020000
                         test             cl, cl                                        // 0x0059b2c4    84c9
                         {disp8} je       _jmp_addr_0x0059b317                          // 0x0059b2c6    744f
                         {disp32} mov     ecx, dword ptr [esi + 0x0000024c]             // 0x0059b2c8    8b8e4c020000
                         mov              edx, dword ptr [ecx]                          // 0x0059b2ce    8b11
                         push             0x1                                           // 0x0059b2d0    6a01
                         call             dword ptr [edx + 8]                           // 0x0059b2d2    ff5208
                         {disp8} mov      ecx, dword ptr [esi + 0x1c]                   // 0x0059b2d5    8b4e1c
                         mov              eax, dword ptr [ecx]                          // 0x0059b2d8    8b01
                         push             0x0                                           // 0x0059b2da    6a00
                         call             dword ptr [eax + 8]                           // 0x0059b2dc    ff5008
                         mov.s            ecx, esi                                      // 0x0059b2df    8bce
                         call             _jmp_addr_0x0059cc50                          // 0x0059b2e1    e86a190000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x35a4e4]        // 0x0059b2e6    8b0de404d200
                         push             0x2                                           // 0x0059b2ec    6a02
                         push             ecx                                           // 0x0059b2ee    51
                         call             _jmp_addr_0x008855f0                          // 0x0059b2ef    e8fca22e00
                         push             0x0                                           // 0x0059b2f4    6a00
                         push             esi                                           // 0x0059b2f6    56
                         {disp32} mov     dword ptr [esi + 0x0000027c], 0x00000003      // 0x0059b2f7    c7867c02000003000000
                         {disp32} mov     edx, dword ptr [data_bytes + 0x35a4e4]        // 0x0059b301    8b15e404d200
                         push             0x005996a0                                    // 0x0059b307    68a0965900
                         push             edx                                           // 0x0059b30c    52
                         call             _jmp_addr_0x008850d0                          // 0x0059b30d    e8be9d2e00
                         add              esp, 0x18                                     // 0x0059b312    83c418
                         pop              esi                                           // 0x0059b315    5e
                         ret                                                            // 0x0059b316    c3
_jmp_addr_0x0059b317:    {disp32} mov     eax, dword ptr [_game]                        // 0x0059b317    a15c19d000
                         cmp              dword ptr [eax + 0x00205a28], 0x01            // 0x0059b31c    83b8285a200001
                         {disp8} jne      _jmp_addr_0x0059b32c                          // 0x0059b323    7507
                         call             _jmp_addr_0x00513640                          // 0x0059b325    e81683f7ff
                         pop              esi                                           // 0x0059b32a    5e
                         ret                                                            // 0x0059b32b    c3
_jmp_addr_0x0059b32c:    call             _jmp_addr_0x00513640                          // 0x0059b32c    e80f83f7ff
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x35a4cc]        // 0x0059b331    8b0dcc04d200
                         test             ecx, ecx                                      // 0x0059b337    85c9
                         {disp8} je       _jmp_addr_0x0059b345                          // 0x0059b339    740a
                         call             dword ptr [rdata_bytes + 0x444]               // 0x0059b33b    ff1544948a00
                         test             eax, eax                                      // 0x0059b341    85c0
                         {disp8} je       _jmp_addr_0x0059b34f                          // 0x0059b343    740a
_jmp_addr_0x0059b345:    mov              ecx, 0x00d204a8                               // 0x0059b345    b9a804d200
                         call             _jmp_addr_0x005ea980                          // 0x0059b34a    e831f60400
_jmp_addr_0x0059b34f:    pop              esi                                           // 0x0059b34f    5e
                         ret                                                            // 0x0059b350    c3
                         nop                                                            // 0x0059b351    90
                         nop                                                            // 0x0059b352    90
                         nop                                                            // 0x0059b353    90
                         nop                                                            // 0x0059b354    90
                         nop                                                            // 0x0059b355    90
                         nop                                                            // 0x0059b356    90
                         nop                                                            // 0x0059b357    90
                         nop                                                            // 0x0059b358    90
                         nop                                                            // 0x0059b359    90
                         nop                                                            // 0x0059b35a    90
                         nop                                                            // 0x0059b35b    90
                         nop                                                            // 0x0059b35c    90
                         nop                                                            // 0x0059b35d    90
                         nop                                                            // 0x0059b35e    90
                         nop                                                            // 0x0059b35f    90
_jmp_addr_0x0059b360:    push             ebx                                           // 0x0059b360    53
                         push             ebp                                           // 0x0059b361    55
                         push             esi                                           // 0x0059b362    56
                         push             edi                                           // 0x0059b363    57
                         mov.s            edi, ecx                                      // 0x0059b364    8bf9
                         {disp32} mov     ecx, dword ptr [edi + 0x00000228]             // 0x0059b366    8b8f28020000
                         {disp32} mov     eax, dword ptr [ecx + 0x00000248]             // 0x0059b36c    8b8148020000
                         test             eax, eax                                      // 0x0059b372    85c0
                         {disp32} jl      _jmp_addr_0x0059b4e1                          // 0x0059b374    0f8c67010000
                         cmp              eax, dword ptr [ecx + 0x00000250]             // 0x0059b37a    3b8150020000
                         {disp32} jge     _jmp_addr_0x0059b4e1                          // 0x0059b380    0f8d5b010000
                         {disp32} mov     ecx, dword ptr [ecx + 0x00000264]             // 0x0059b386    8b8964020000
                         mov              ebp, dword ptr [ecx + eax * 0x4]              // 0x0059b38c    8b2c81
                         test             ebp, ebp                                      // 0x0059b38f    85ed
                         {disp32} je      _jmp_addr_0x0059b4e1                          // 0x0059b391    0f844a010000
                         push             0x2                                           // 0x0059b397    6a02
                         push             0x009cd798                                    // 0x0059b399    6898d79c00
                         push             ebp                                           // 0x0059b39e    55
                         call             _jmp_addr_0x00886780                          // 0x0059b39f    e8dcb32e00
                         add              esp, 0x0c                                     // 0x0059b3a4    83c40c
                         cmp              eax, 0x02                                     // 0x0059b3a7    83f802
                         {disp32} je      _jmp_addr_0x0059b45f                          // 0x0059b3aa    0f84af000000
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001ab7 // 0x0059b3b0    813dac7cd100b71a0000
                         {disp8} ja       _jmp_addr_0x0059b3c3                          // 0x0059b3ba    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0059b3bc    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0059b3cf                          // 0x0059b3c1    eb0c
_jmp_addr_0x0059b3c3:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0059b3c3    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00014094]             // 0x0059b3c9    8d8294400100
_jmp_addr_0x0059b3cf:    {disp32} mov     esi, dword ptr [edi + 0x00000240]             // 0x0059b3cf    8bb740020000
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0059b3d5    8b4008
                         push             0x000000ff                                    // 0x0059b3d8    68ff000000
                         push             eax                                           // 0x0059b3dd    50
                         {disp8} lea      ebx, dword ptr [esi + 0x24]                   // 0x0059b3de    8d5e24
                         push             ebx                                           // 0x0059b3e1    53
                         call             _wcsncpy                                      // 0x0059b3e2    e83eb02200
                         xor.s            ebp, ebp                                      // 0x0059b3e7    33ed
                         push             ebx                                           // 0x0059b3e9    53
                         {disp32} mov     word ptr [esi + 0x00000222], bp               // 0x0059b3ea    6689ae22020000
                         call             _wcslen                                       // 0x0059b3f1    e86cb02200
                         {disp32} mov     dword ptr [esi + 0x0000024c], eax             // 0x0059b3f6    89864c020000
                         {disp32} mov     dword ptr [esi + 0x00000254], eax             // 0x0059b3fc    898654020000
                         {disp32} mov     dword ptr [esi + 0x00000250], eax             // 0x0059b402    898650020000
                         {disp32} mov     dword ptr [esi + 0x00000258], ebp             // 0x0059b408    89ae58020000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351cac]        // 0x0059b40e    a1ac7cd100
                         add              esp, 0x10                                     // 0x0059b413    83c410
                         cmp              eax, 0x00001ab7                               // 0x0059b416    3db71a0000
                         {disp8} ja       _jmp_addr_0x0059b439                          // 0x0059b41b    771c
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0059b41d    a1a87cd100
                         {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x0059b422    8b5008
                         push             ebp                                           // 0x0059b425    55
                         push             edx                                           // 0x0059b426    52
                         mov.s            ecx, edi                                      // 0x0059b427    8bcf
                         call             _jmp_addr_0x0059b260                          // 0x0059b429    e832feffff
                         {disp32} mov     dword ptr [edi + 0x000002ac], ebp             // 0x0059b42e    89afac020000
                         pop              edi                                           // 0x0059b434    5f
                         pop              esi                                           // 0x0059b435    5e
                         pop              ebp                                           // 0x0059b436    5d
                         pop              ebx                                           // 0x0059b437    5b
                         ret                                                            // 0x0059b438    c3
_jmp_addr_0x0059b439:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0059b439    8b0da87cd100
                         {disp32} mov     edx, dword ptr [ecx + 0x0001409c]             // 0x0059b43f    8b919c400100
                         {disp32} lea     eax, dword ptr [ecx + 0x00014094]             // 0x0059b445    8d8194400100
                         push             ebp                                           // 0x0059b44b    55
                         push             edx                                           // 0x0059b44c    52
                         mov.s            ecx, edi                                      // 0x0059b44d    8bcf
                         call             _jmp_addr_0x0059b260                          // 0x0059b44f    e80cfeffff
                         {disp32} mov     dword ptr [edi + 0x000002ac], ebp             // 0x0059b454    89afac020000
                         pop              edi                                           // 0x0059b45a    5f
                         pop              esi                                           // 0x0059b45b    5e
                         pop              ebp                                           // 0x0059b45c    5d
                         pop              ebx                                           // 0x0059b45d    5b
                         ret                                                            // 0x0059b45e    c3
_jmp_addr_0x0059b45f:    push             0x00beff9c                                    // 0x0059b45f    689cffbe00
                         push             0x009cd760                                    // 0x0059b464    6860d79c00
                         push             ebp                                           // 0x0059b469    55
                         call             _jmp_addr_0x008866c0                          // 0x0059b46a    e851b22e00
                         push             eax                                           // 0x0059b46f    50
                         call             _CHAR2WCHAR__FPc                              // 0x0059b470    e82b4c2900
                         {disp32} mov     esi, dword ptr [edi + 0x00000240]             // 0x0059b475    8bb740020000
                         push             0x000000ff                                    // 0x0059b47b    68ff000000
                         push             eax                                           // 0x0059b480    50
                         {disp8} lea      ebx, dword ptr [esi + 0x24]                   // 0x0059b481    8d5e24
                         push             ebx                                           // 0x0059b484    53
                         call             _wcsncpy                                      // 0x0059b485    e89baf2200
                         push             ebx                                           // 0x0059b48a    53
                         {disp32} mov     word ptr [esi + 0x00000222], 0x0000           // 0x0059b48b    66c786220200000000
                         call             _wcslen                                       // 0x0059b494    e8c9af2200
                         {disp32} mov     dword ptr [esi + 0x0000024c], eax             // 0x0059b499    89864c020000
                         {disp32} mov     dword ptr [esi + 0x00000254], eax             // 0x0059b49f    898654020000
                         {disp32} mov     dword ptr [esi + 0x00000250], eax             // 0x0059b4a5    898650020000
                         {disp32} mov     dword ptr [esi + 0x00000258], 0x00000000      // 0x0059b4ab    c7865802000000000000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351cac]        // 0x0059b4b5    a1ac7cd100
                         add              esp, 0x20                                     // 0x0059b4ba    83c420
                         cmp              eax, 0x00001a6d                               // 0x0059b4bd    3d6d1a0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0059b4c2    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0059b4ce                          // 0x0059b4c7    7605
                         add              eax, 0x00013d1c                               // 0x0059b4c9    051c3d0100
_jmp_addr_0x0059b4ce:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x0059b4ce    8b4808
                         push             0x1                                           // 0x0059b4d1    6a01
                         push             ecx                                           // 0x0059b4d3    51
                         mov.s            ecx, edi                                      // 0x0059b4d4    8bcf
                         call             _jmp_addr_0x0059b260                          // 0x0059b4d6    e885fdffff
                         {disp32} mov     dword ptr [edi + 0x000002ac], ebp             // 0x0059b4db    89afac020000
_jmp_addr_0x0059b4e1:    pop              edi                                           // 0x0059b4e1    5f
                         pop              esi                                           // 0x0059b4e2    5e
                         pop              ebp                                           // 0x0059b4e3    5d
                         pop              ebx                                           // 0x0059b4e4    5b
                         ret                                                            // 0x0059b4e5    c3
                         nop                                                            // 0x0059b4e6    90
                         nop                                                            // 0x0059b4e7    90
                         nop                                                            // 0x0059b4e8    90
                         nop                                                            // 0x0059b4e9    90
                         nop                                                            // 0x0059b4ea    90
                         nop                                                            // 0x0059b4eb    90
                         nop                                                            // 0x0059b4ec    90
                         nop                                                            // 0x0059b4ed    90
                         nop                                                            // 0x0059b4ee    90
                         nop                                                            // 0x0059b4ef    90
_jmp_addr_0x0059b4f0:    push             esi                                           // 0x0059b4f0    56
                         push             edi                                           // 0x0059b4f1    57
                         mov.s            edi, ecx                                      // 0x0059b4f2    8bf9
                         {disp32} mov     esi, dword ptr [edi + 0x00000230]             // 0x0059b4f4    8bb730020000
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x0059b4fa    8b8650020000
                         test             eax, eax                                      // 0x0059b500    85c0
                         {disp8} jle      _jmp_addr_0x0059b517                          // 0x0059b502    7e13
_jmp_addr_0x0059b504:    dec              eax                                           // 0x0059b504    48
                         push             eax                                           // 0x0059b505    50
                         mov.s            ecx, esi                                      // 0x0059b506    8bce
                         call             @DeleteString__9SetupListFi@12                // 0x0059b508    e853f8e6ff
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x0059b50d    8b8650020000
                         test             eax, eax                                      // 0x0059b513    85c0
                         {disp8} jg       _jmp_addr_0x0059b504                          // 0x0059b515    7fed
_jmp_addr_0x0059b517:    {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x0059b517    8b44240c
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x35a4e4]        // 0x0059b51b    8b0de404d200
                         push             edi                                           // 0x0059b521    57
                         push             0x0059b540                                    // 0x0059b522    6840b55900
                         push             eax                                           // 0x0059b527    50
                         push             ecx                                           // 0x0059b528    51
                         call             _jmp_addr_0x00885a50                          // 0x0059b529    e822a52e00
                         add              esp, 0x10                                     // 0x0059b52e    83c410
                         pop              edi                                           // 0x0059b531    5f
                         pop              esi                                           // 0x0059b532    5e
                         ret              0x0004                                        // 0x0059b533    c20400
                         nop                                                            // 0x0059b536    90
                         nop                                                            // 0x0059b537    90
                         nop                                                            // 0x0059b538    90
                         nop                                                            // 0x0059b539    90
                         nop                                                            // 0x0059b53a    90
                         nop                                                            // 0x0059b53b    90
                         nop                                                            // 0x0059b53c    90
                         nop                                                            // 0x0059b53d    90
                         nop                                                            // 0x0059b53e    90
                         nop                                                            // 0x0059b53f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x0059b540    8b442408
                         sub              esp, 0x00000804                               // 0x0059b544    81ec04080000
                         test             eax, eax                                      // 0x0059b54a    85c0
                         push             esi                                           // 0x0059b54c    56
                         {disp8} je       _jmp_addr_0x0059b5c1                          // 0x0059b54d    7472
                         {disp32} mov     esi, dword ptr [esp + 0x0000081c]             // 0x0059b54f    8bb4241c080000
                         push             esi                                           // 0x0059b556    56
                         call             _jmp_addr_0x005990a0                          // 0x0059b557    e844dbffff
                         add              esp, 0x04                                     // 0x0059b55c    83c404
                         test             eax, eax                                      // 0x0059b55f    85c0
                         push             esi                                           // 0x0059b561    56
                         {disp8} je       _jmp_addr_0x0059b56b                          // 0x0059b562    7407
                         call             _jmp_addr_0x005990f0                          // 0x0059b564    e887dbffff
                         {disp8} jmp      _jmp_addr_0x0059b570                          // 0x0059b569    eb05
_jmp_addr_0x0059b56b:    call             _CHAR2WCHAR__FPc                              // 0x0059b56b    e8304b2900
_jmp_addr_0x0059b570:    add              esp, 0x04                                     // 0x0059b570    83c404
                         push             eax                                           // 0x0059b573    50
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x0059b574    8d442408
                         push             0x009cd6c8                                    // 0x0059b578    68c8d69c00
                         push             eax                                           // 0x0059b57d    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0059b57e    ff15d8938a00
                         {disp32} mov     ecx, dword ptr [esp + 0x00000830]             // 0x0059b584    8b8c2430080000
                         {disp32} mov     esi, dword ptr [ecx + 0x00000230]             // 0x0059b58b    8bb130020000
                         {disp32} mov     edx, dword ptr [esi + 0x00000250]             // 0x0059b591    8b9650020000
                         add              esp, 0x0c                                     // 0x0059b597    83c40c
                         push             eax                                           // 0x0059b59a    50
                         push             edx                                           // 0x0059b59b    52
                         mov.s            ecx, esi                                      // 0x0059b59c    8bce
                         call             @InsertString__9SetupListFiPw@16              // 0x0059b59e    e8cdf8e6ff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x0059b5a3    8b8e50020000
                         {disp8} lea      eax, dword ptr [ecx + -0x01]                  // 0x0059b5a9    8d41ff
                         test             eax, eax                                      // 0x0059b5ac    85c0
                         {disp8} jl       _jmp_addr_0x0059b5c1                          // 0x0059b5ae    7c11
                         cmp.s            eax, ecx                                      // 0x0059b5b0    3bc1
                         {disp8} jge      _jmp_addr_0x0059b5c1                          // 0x0059b5b2    7d0d
                         {disp32} mov     ecx, dword ptr [esi + 0x00000268]             // 0x0059b5b4    8b8e68020000
                         mov              dword ptr [ecx + eax * 0x4], 0x00000000       // 0x0059b5ba    c7048100000000
_jmp_addr_0x0059b5c1:    pop              esi                                           // 0x0059b5c1    5e
                         add              esp, 0x00000804                               // 0x0059b5c2    81c404080000
                         ret                                                            // 0x0059b5c8    c3
                         nop                                                            // 0x0059b5c9    90
                         nop                                                            // 0x0059b5ca    90
                         nop                                                            // 0x0059b5cb    90
                         nop                                                            // 0x0059b5cc    90
                         nop                                                            // 0x0059b5cd    90
                         nop                                                            // 0x0059b5ce    90
                         nop                                                            // 0x0059b5cf    90
_jmp_addr_0x0059b5d0:    push             esi                                           // 0x0059b5d0    56
                         push             edi                                           // 0x0059b5d1    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                   // 0x0059b5d2    8b7c240c
                         mov.s            eax, edi                                      // 0x0059b5d6    8bc7
                         sub              eax, 0x00                                     // 0x0059b5d8    83e800
                         mov.s            esi, ecx                                      // 0x0059b5db    8bf1
                         {disp32} mov     dword ptr [esi + 0x0000027c], edi             // 0x0059b5dd    89be7c020000
                         {disp8} je       _jmp_addr_0x0059b61e                          // 0x0059b5e3    7439
                         sub              eax, 0x02                                     // 0x0059b5e5    83e802
                         {disp8} jne      _jmp_addr_0x0059b625                          // 0x0059b5e8    753b
                         {disp32} mov     eax, dword ptr [data_bytes + 0x35a4e4]        // 0x0059b5ea    a1e404d200
                         push             0x2                                           // 0x0059b5ef    6a02
                         push             eax                                           // 0x0059b5f1    50
                         call             _jmp_addr_0x008859e0                          // 0x0059b5f2    e8e9a32e00
                         push             eax                                           // 0x0059b5f7    50
                         call             _CHAR2WCHAR__FPc                              // 0x0059b5f8    e8a34a2900
                         xor.s            ecx, ecx                                      // 0x0059b5fd    33c9
                         {disp32} mov     cl, byte ptr [esi + 0x000002a8]               // 0x0059b5ff    8a8ea8020000
                         add              esp, 0x0c                                     // 0x0059b605    83c40c
                         push             eax                                           // 0x0059b608    50
                         push             ecx                                           // 0x0059b609    51
                         mov.s            ecx, esi                                      // 0x0059b60a    8bce
                         call             _jmp_addr_0x0059cae0                          // 0x0059b60c    e8cf140000
                         push             edi                                           // 0x0059b611    57
                         mov.s            ecx, esi                                      // 0x0059b612    8bce
                         call             _jmp_addr_0x0059b4f0                          // 0x0059b614    e8d7feffff
                         pop              edi                                           // 0x0059b619    5f
                         pop              esi                                           // 0x0059b61a    5e
                         ret              0x0004                                        // 0x0059b61b    c20400
_jmp_addr_0x0059b61e:    mov.s            ecx, esi                                      // 0x0059b61e    8bce
                         call             _jmp_addr_0x0059cc50                          // 0x0059b620    e82b160000
_jmp_addr_0x0059b625:    push             edi                                           // 0x0059b625    57
                         mov.s            ecx, esi                                      // 0x0059b626    8bce
                         call             _jmp_addr_0x0059b4f0                          // 0x0059b628    e8c3feffff
                         pop              edi                                           // 0x0059b62d    5f
                         pop              esi                                           // 0x0059b62e    5e
                         ret              0x0004                                        // 0x0059b62f    c20400
                         nop                                                            // 0x0059b632    90
                         nop                                                            // 0x0059b633    90
                         nop                                                            // 0x0059b634    90
                         nop                                                            // 0x0059b635    90
                         nop                                                            // 0x0059b636    90
                         nop                                                            // 0x0059b637    90
                         nop                                                            // 0x0059b638    90
                         nop                                                            // 0x0059b639    90
                         nop                                                            // 0x0059b63a    90
                         nop                                                            // 0x0059b63b    90
                         nop                                                            // 0x0059b63c    90
                         nop                                                            // 0x0059b63d    90
                         nop                                                            // 0x0059b63e    90
                         nop                                                            // 0x0059b63f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x0059b640    8b442408
                         test             eax, eax                                      // 0x0059b644    85c0
                         {disp8} je       _jmp_addr_0x0059b652                          // 0x0059b646    740a
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x0059b648    8b442414
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0059b64c    8b4c2410
                         mov              dword ptr [eax], ecx                          // 0x0059b650    8908
_jmp_addr_0x0059b652:    ret                                                            // 0x0059b652    c3
                         nop                                                            // 0x0059b653    90
                         nop                                                            // 0x0059b654    90
                         nop                                                            // 0x0059b655    90
                         nop                                                            // 0x0059b656    90
                         nop                                                            // 0x0059b657    90
                         nop                                                            // 0x0059b658    90
                         nop                                                            // 0x0059b659    90
                         nop                                                            // 0x0059b65a    90
                         nop                                                            // 0x0059b65b    90
                         nop                                                            // 0x0059b65c    90
                         nop                                                            // 0x0059b65d    90
                         nop                                                            // 0x0059b65e    90
                         nop                                                            // 0x0059b65f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x0059b660    8b442408
                         test             eax, eax                                      // 0x0059b664    85c0
                         {disp8} je       _jmp_addr_0x0059b672                          // 0x0059b666    740a
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x0059b668    8b442414
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0059b66c    8b4c2410
                         mov              dword ptr [eax], ecx                          // 0x0059b670    8908
_jmp_addr_0x0059b672:    ret                                                            // 0x0059b672    c3
                         nop                                                            // 0x0059b673    90
                         nop                                                            // 0x0059b674    90
                         nop                                                            // 0x0059b675    90
                         nop                                                            // 0x0059b676    90
                         nop                                                            // 0x0059b677    90
                         nop                                                            // 0x0059b678    90
                         nop                                                            // 0x0059b679    90
                         nop                                                            // 0x0059b67a    90
                         nop                                                            // 0x0059b67b    90
                         nop                                                            // 0x0059b67c    90
                         nop                                                            // 0x0059b67d    90
                         nop                                                            // 0x0059b67e    90
                         nop                                                            // 0x0059b67f    90
_jmp_addr_0x0059b680:    mov              eax, 0x00001848                               // 0x0059b680    b848180000
                         call             __chkstk                                      // 0x0059b685    e826b82200
                         push             ebx                                           // 0x0059b68a    53
                         push             ebp                                           // 0x0059b68b    55
                         push             esi                                           // 0x0059b68c    56
                         push             edi                                           // 0x0059b68d    57
                         {disp32} mov     edi, dword ptr [esp + 0x00001860]             // 0x0059b68e    8bbc2460180000
                         mov.s            ebp, ecx                                      // 0x0059b695    8be9
                         mov              cl, byte ptr [edi]                            // 0x0059b697    8a0f
                         mov              al, 0x40                                      // 0x0059b699    b040
                         cmp.s            cl, al                                        // 0x0059b69b    3ac8
                         {disp8} jne      _jmp_addr_0x0059b6ad                          // 0x0059b69d    750e
                         cmp              byte ptr [edi + 0x01], al                     // 0x0059b69f    384701
                         {disp8} jne      _jmp_addr_0x0059b6ad                          // 0x0059b6a2    7509
                         cmp              byte ptr [edi + 0x02], al                     // 0x0059b6a4    384702
                         {disp32} je      _jmp_addr_0x0059ba67                          // 0x0059b6a7    0f84ba030000
_jmp_addr_0x0059b6ad:    push             0x00900a18                                    // 0x0059b6ad    68180a9000
                         push             edi                                           // 0x0059b6b2    57
                         call             _jmp_addr_0x005f5200                          // 0x0059b6b3    e8489b0500
                         push             0x00900a28                                    // 0x0059b6b8    68280a9000
                         push             edi                                           // 0x0059b6bd    57
                         mov.s            esi, eax                                      // 0x0059b6be    8bf0
                         call             _jmp_addr_0x005f5200                          // 0x0059b6c0    e83b9b0500
                         xor.s            ebx, ebx                                      // 0x0059b6c5    33db
                         add              esp, 0x10                                     // 0x0059b6c7    83c410
                         cmp.s            esi, ebx                                      // 0x0059b6ca    3bf3
                         {disp32} je      _jmp_addr_0x0059b83b                          // 0x0059b6cc    0f8469010000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x343190]        // 0x0059b6d2    a19091d000
                         {disp32} mov     cl, byte ptr [eax + 0x000002a8]               // 0x0059b6d7    8a88a8020000
                         test             cl, cl                                        // 0x0059b6dd    84c9
                         {disp32} je      _jmp_addr_0x0059ba67                          // 0x0059b6df    0f8482030000
                         xor.s            eax, eax                                      // 0x0059b6e5    33c0
                         mov              ecx, 0x000000cb                               // 0x0059b6e7    b9cb000000
                         {disp32} lea     edi, dword ptr [esp + 0x00000124]             // 0x0059b6ec    8dbc2424010000
                         rep stosd                                                      // 0x0059b6f3    f3ab
                         push             esi                                           // 0x0059b6f5    56
                         {disp32} lea     ecx, dword ptr [esp + 0x00000128]             // 0x0059b6f6    8d8c2428010000
                         call             _jmp_addr_0x00714270                          // 0x0059b6fd    e86e8b1700
                         {disp32} lea     ecx, dword ptr [esp + 0x00000124]             // 0x0059b702    8d8c2424010000
                         push             ecx                                           // 0x0059b709    51
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30b670]        // 0x0059b70a    8b0d7016cd00
                         call             _jmp_addr_0x00549930                          // 0x0059b710    e81be2faff
                         test             al, al                                        // 0x0059b715    84c0
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351cac]        // 0x0059b717    a1ac7cd100
                         {disp32} jne     _jmp_addr_0x0059b7bc                          // 0x0059b71c    0f859a000000
                         cmp              eax, 0x00001a3a                               // 0x0059b722    3d3a1a0000
                         {disp8} ja       _jmp_addr_0x0059b730                          // 0x0059b727    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0059b729    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0059b73c                          // 0x0059b72e    eb0c
_jmp_addr_0x0059b730:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0059b730    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00013ab8]             // 0x0059b736    8d82b83a0100
_jmp_addr_0x0059b73c:    {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x0059b73c    8b5008
                         {disp32} lea     ecx, dword ptr [esp + 0x00000124]             // 0x0059b73f    8d8c2424010000
                         push             ecx                                           // 0x0059b746    51
                         push             edx                                           // 0x0059b747    52
                         {disp32} lea     eax, dword ptr [esp + 0x00000458]             // 0x0059b748    8d842458040000
                         push             eax                                           // 0x0059b74f    50
                         call             _swprintf                                     // 0x0059b750    e82aad2200
                         {disp32} lea     ecx, dword ptr [esp + 0x0000045c]             // 0x0059b755    8d8c245c040000
                         add              esp, 0x0c                                     // 0x0059b75c    83c40c
                         test             ecx, ecx                                      // 0x0059b75f    85c9
                         {disp32} lea     edi, dword ptr [ebp + 0x00000274]             // 0x0059b761    8dbd74020000
                         {disp32} je      _jmp_addr_0x0059ba67                          // 0x0059b767    0f84fa020000
                         push             0x8                                           // 0x0059b76d    6a08
                         call             ??2@YAPAXI@Z                                  // 0x0059b76f    e87aad2200
                         mov.s            esi, eax                                      // 0x0059b774    8bf0
                         add              esp, 0x04                                     // 0x0059b776    83c404
                         cmp.s            esi, ebx                                      // 0x0059b779    3bf3
                         {disp32} je      _jmp_addr_0x0059ba67                          // 0x0059b77b    0f84e6020000
                         {disp32} lea     edx, dword ptr [esp + 0x00000450]             // 0x0059b781    8d942450040000
                         mov.s            ecx, edi                                      // 0x0059b788    8bcf
                         {disp8} mov      dword ptr [esi + 0x04], edx                   // 0x0059b78a    895604
                         mov              dword ptr [esi], ebx                          // 0x0059b78d    891e
                         call             _jmp_addr_0x0059cfd0                          // 0x0059b78f    e83c180000
                         cmp.s            eax, ebx                                      // 0x0059b794    3bc3
                         {disp8} je       _jmp_addr_0x0059b7aa                          // 0x0059b796    7412
                         mov              dword ptr [eax], esi                          // 0x0059b798    8930
                         {disp8} inc      dword ptr [edi + 0x04]                        // 0x0059b79a    ff4704
                         pop              edi                                           // 0x0059b79d    5f
                         pop              esi                                           // 0x0059b79e    5e
                         pop              ebp                                           // 0x0059b79f    5d
                         pop              ebx                                           // 0x0059b7a0    5b
                         add              esp, 0x00001848                               // 0x0059b7a1    81c448180000
                         ret              0x000c                                        // 0x0059b7a7    c20c00
_jmp_addr_0x0059b7aa:    mov              dword ptr [edi], esi                          // 0x0059b7aa    8937
                         {disp8} inc      dword ptr [edi + 0x04]                        // 0x0059b7ac    ff4704
                         pop              edi                                           // 0x0059b7af    5f
                         pop              esi                                           // 0x0059b7b0    5e
                         pop              ebp                                           // 0x0059b7b1    5d
                         pop              ebx                                           // 0x0059b7b2    5b
                         add              esp, 0x00001848                               // 0x0059b7b3    81c448180000
                         ret              0x000c                                        // 0x0059b7b9    c20c00
_jmp_addr_0x0059b7bc:    cmp              eax, 0x00001a3b                               // 0x0059b7bc    3d3b1a0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0059b7c1    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0059b7cd                          // 0x0059b7c6    7605
                         add              eax, 0x00013ac4                               // 0x0059b7c8    05c43a0100
_jmp_addr_0x0059b7cd:    {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x0059b7cd    8b5008
                         {disp32} lea     ecx, dword ptr [esp + 0x00000124]             // 0x0059b7d0    8d8c2424010000
                         push             ecx                                           // 0x0059b7d7    51
                         push             edx                                           // 0x0059b7d8    52
                         {disp32} lea     eax, dword ptr [esp + 0x00000458]             // 0x0059b7d9    8d842458040000
                         push             eax                                           // 0x0059b7e0    50
                         call             _swprintf                                     // 0x0059b7e1    e899ac2200
                         {disp32} lea     ecx, dword ptr [esp + 0x0000045c]             // 0x0059b7e6    8d8c245c040000
                         add              esp, 0x0c                                     // 0x0059b7ed    83c40c
                         test             ecx, ecx                                      // 0x0059b7f0    85c9
                         {disp32} lea     edi, dword ptr [ebp + 0x00000274]             // 0x0059b7f2    8dbd74020000
                         {disp32} je      _jmp_addr_0x0059ba67                          // 0x0059b7f8    0f8469020000
                         push             0x8                                           // 0x0059b7fe    6a08
                         call             ??2@YAPAXI@Z                                  // 0x0059b800    e8e9ac2200
                         mov.s            esi, eax                                      // 0x0059b805    8bf0
                         add              esp, 0x04                                     // 0x0059b807    83c404
                         cmp.s            esi, ebx                                      // 0x0059b80a    3bf3
                         {disp32} je      _jmp_addr_0x0059ba67                          // 0x0059b80c    0f8455020000
                         {disp32} lea     edx, dword ptr [esp + 0x00000450]             // 0x0059b812    8d942450040000
                         mov.s            ecx, edi                                      // 0x0059b819    8bcf
                         {disp8} mov      dword ptr [esi + 0x04], edx                   // 0x0059b81b    895604
                         mov              dword ptr [esi], ebx                          // 0x0059b81e    891e
                         call             _jmp_addr_0x0059cfd0                          // 0x0059b820    e8ab170000
                         cmp.s            eax, ebx                                      // 0x0059b825    3bc3
                         {disp8} je       _jmp_addr_0x0059b7aa                          // 0x0059b827    7481
                         mov              dword ptr [eax], esi                          // 0x0059b829    8930
                         {disp8} inc      dword ptr [edi + 0x04]                        // 0x0059b82b    ff4704
                         pop              edi                                           // 0x0059b82e    5f
                         pop              esi                                           // 0x0059b82f    5e
                         pop              ebp                                           // 0x0059b830    5d
                         pop              ebx                                           // 0x0059b831    5b
                         add              esp, 0x00001848                               // 0x0059b832    81c448180000
                         ret              0x000c                                        // 0x0059b838    c20c00
_jmp_addr_0x0059b83b:    cmp.s            eax, ebx                                      // 0x0059b83b    3bc3
                         {disp32} je      _jmp_addr_0x0059b973                          // 0x0059b83d    0f8430010000
                         {disp32} mov     cl, byte ptr [ebp + 0x000002a8]               // 0x0059b843    8a8da8020000
                         test             cl, cl                                        // 0x0059b849    84c9
                         {disp32} je      _jmp_addr_0x0059ba67                          // 0x0059b84b    0f8416020000
                         push             eax                                           // 0x0059b851    50
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                   // 0x0059b852    8d4c2414
                         {disp8} mov      dword ptr [esp + 0x18], ebx                   // 0x0059b856    895c2418
                         {disp8} mov      dword ptr [esp + 0x14], ebx                   // 0x0059b85a    895c2414
                         {disp8} mov      byte ptr [esp + 0x1c], 0x00                   // 0x0059b85e    c644241c00
                         {disp8} mov      dword ptr [esp + 0x21], ebx                   // 0x0059b863    895c2421
                         call             _jmp_addr_0x00713e00                          // 0x0059b867    e894851700
                         {disp32} mov     esi, dword ptr [esp + 0x0000185c]             // 0x0059b86c    8bb4245c180000
                         push             esi                                           // 0x0059b873    56
                         call             _jmp_addr_0x007143a0                          // 0x0059b874    e8278b1700
                         mov.s            ebx, eax                                      // 0x0059b879    8bd8
                         add              esp, 0x04                                     // 0x0059b87b    83c404
                         test             ebx, ebx                                      // 0x0059b87e    85db
                         {disp8} je       _jmp_addr_0x0059b8e4                          // 0x0059b880    7462
                         mov.s            ecx, ebx                                      // 0x0059b882    8bcb
                         call             _jmp_addr_0x0059cf80                          // 0x0059b884    e8f7160000
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x0059b889    8b442410
                         test             eax, eax                                      // 0x0059b88d    85c0
                         {disp32} je      _jmp_addr_0x0059b956                          // 0x0059b88f    0f84c1000000
                         {disp8} mov      ebp, dword ptr [eax + 0x04]                   // 0x0059b895    8b6804
                         test             ebp, ebp                                      // 0x0059b898    85ed
                         {disp32} je      _jmp_addr_0x0059b956                          // 0x0059b89a    0f84b6000000
_jmp_addr_0x0059b8a0:    push             0x000000ad                                    // 0x0059b8a0    68ad000000
                         push             0x00beffa4                                    // 0x0059b8a5    68a4ffbe00
                         push             0x0000032c                                    // 0x0059b8aa    682c030000
                         call             ___nw__FUl                                    // 0x0059b8af    e8dcfe2300
                         add              esp, 0x0c                                     // 0x0059b8b4    83c40c
                         test             eax, eax                                      // 0x0059b8b7    85c0
                         {disp8} je       _jmp_addr_0x0059b8c8                          // 0x0059b8b9    740d
                         mov              ecx, 0x000000cb                               // 0x0059b8bb    b9cb000000
                         mov.s            esi, ebp                                      // 0x0059b8c0    8bf5
                         mov.s            edi, eax                                      // 0x0059b8c2    8bf8
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x0059b8c4    f3a5
                         {disp8} jmp      _jmp_addr_0x0059b8ca                          // 0x0059b8c6    eb02
_jmp_addr_0x0059b8c8:    xor.s            eax, eax                                      // 0x0059b8c8    33c0
_jmp_addr_0x0059b8ca:    push             eax                                           // 0x0059b8ca    50
                         mov.s            ecx, ebx                                      // 0x0059b8cb    8bcb
                         call             _jmp_addr_0x0059cf20                          // 0x0059b8cd    e84e160000
                         push             ebp                                           // 0x0059b8d2    55
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                   // 0x0059b8d3    8d4c2414
                         call             _jmp_addr_0x0059cee0                          // 0x0059b8d7    e804160000
                         mov.s            ebp, eax                                      // 0x0059b8dc    8be8
                         test             ebp, ebp                                      // 0x0059b8de    85ed
                         {disp8} jne      _jmp_addr_0x0059b8a0                          // 0x0059b8e0    75be
                         {disp8} jmp      _jmp_addr_0x0059b956                          // 0x0059b8e2    eb72
_jmp_addr_0x0059b8e4:    push             esi                                           // 0x0059b8e4    56
                         call             _jmp_addr_0x00714420                          // 0x0059b8e5    e8368b1700
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x343190]        // 0x0059b8ea    8b0d9091d000
                         {disp32} mov     dl, byte ptr [ecx + 0x000002a8]               // 0x0059b8f0    8a91a8020000
                         mov.s            ebx, eax                                      // 0x0059b8f6    8bd8
                         add              esp, 0x04                                     // 0x0059b8f8    83c404
                         mov.s            ecx, ebx                                      // 0x0059b8fb    8bcb
                         {disp8} mov      byte ptr [ebx + 0x08], dl                     // 0x0059b8fd    885308
                         call             _jmp_addr_0x0059cf80                          // 0x0059b900    e87b160000
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x0059b905    8d4c2410
                         call             _jmp_addr_0x0059ced0                          // 0x0059b909    e8c2150000
                         mov.s            ebp, eax                                      // 0x0059b90e    8be8
                         test             ebp, ebp                                      // 0x0059b910    85ed
                         {disp8} je       _jmp_addr_0x0059b956                          // 0x0059b912    7442
_jmp_addr_0x0059b914:    push             0x000000ad                                    // 0x0059b914    68ad000000
                         push             0x00beffa4                                    // 0x0059b919    68a4ffbe00
                         push             0x0000032c                                    // 0x0059b91e    682c030000
                         call             ___nw__FUl                                    // 0x0059b923    e868fe2300
                         add              esp, 0x0c                                     // 0x0059b928    83c40c
                         test             eax, eax                                      // 0x0059b92b    85c0
                         {disp8} je       _jmp_addr_0x0059b93c                          // 0x0059b92d    740d
                         mov              ecx, 0x000000cb                               // 0x0059b92f    b9cb000000
                         mov.s            esi, ebp                                      // 0x0059b934    8bf5
                         mov.s            edi, eax                                      // 0x0059b936    8bf8
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x0059b938    f3a5
                         {disp8} jmp      _jmp_addr_0x0059b93e                          // 0x0059b93a    eb02
_jmp_addr_0x0059b93c:    xor.s            eax, eax                                      // 0x0059b93c    33c0
_jmp_addr_0x0059b93e:    push             eax                                           // 0x0059b93e    50
                         mov.s            ecx, ebx                                      // 0x0059b93f    8bcb
                         call             _jmp_addr_0x0059cf20                          // 0x0059b941    e8da150000
                         push             ebp                                           // 0x0059b946    55
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                   // 0x0059b947    8d4c2414
                         call             _jmp_addr_0x0059cee0                          // 0x0059b94b    e890150000
                         mov.s            ebp, eax                                      // 0x0059b950    8be8
                         test             ebp, ebp                                      // 0x0059b952    85ed
                         {disp8} jne      _jmp_addr_0x0059b914                          // 0x0059b954    75be
_jmp_addr_0x0059b956:    {disp8} mov      al, byte ptr [esp + 0x18]                     // 0x0059b956    8a442418
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x0059b95a    8d4c2410
                         {disp8} mov      byte ptr [ebx + 0x08], al                     // 0x0059b95e    884308
                         call             _jmp_addr_0x0059ba80                          // 0x0059b961    e81a010000
                         pop              edi                                           // 0x0059b966    5f
                         pop              esi                                           // 0x0059b967    5e
                         pop              ebp                                           // 0x0059b968    5d
                         pop              ebx                                           // 0x0059b969    5b
                         add              esp, 0x00001848                               // 0x0059b96a    81c448180000
                         ret              0x000c                                        // 0x0059b970    c20c00
_jmp_addr_0x0059b973:    {disp32} mov     esi, dword ptr [esp + 0x0000185c]             // 0x0059b973    8bb4245c180000
                         push             esi                                           // 0x0059b97a    56
                         call             _jmp_addr_0x005990a0                          // 0x0059b97b    e820d7ffff
                         add              esp, 0x04                                     // 0x0059b980    83c404
                         test             eax, eax                                      // 0x0059b983    85c0
                         push             esi                                           // 0x0059b985    56
                         {disp8} je       _jmp_addr_0x0059b98f                          // 0x0059b986    7407
                         call             _jmp_addr_0x005990f0                          // 0x0059b988    e863d7ffff
                         {disp8} jmp      _jmp_addr_0x0059b994                          // 0x0059b98d    eb05
_jmp_addr_0x0059b98f:    call             _CHAR2WCHAR__FPc                              // 0x0059b98f    e80c472900
_jmp_addr_0x0059b994:    {disp32} mov     esi, dword ptr [rdata_bytes + 0x3d8]          // 0x0059b994    8b35d8938a00
                         add              esp, 0x04                                     // 0x0059b99a    83c404
                         push             eax                                           // 0x0059b99d    50
                         {disp32} lea     ecx, dword ptr [esp + 0x00000854]             // 0x0059b99e    8d8c2454080000
                         push             0x009cd6c8                                    // 0x0059b9a5    68c8d69c00
                         push             ecx                                           // 0x0059b9aa    51
                         call             esi                                           // 0x0059b9ab    ffd6
                         push             eax                                           // 0x0059b9ad    50
                         {disp8} lea      edx, dword ptr [esp + 0x34]                   // 0x0059b9ae    8d542434
                         push             edx                                           // 0x0059b9b2    52
                         call             _wcscpy                                       // 0x0059b9b3    e8fea52200
                         push             edi                                           // 0x0059b9b8    57
                         call             _jmp_addr_0x005990a0                          // 0x0059b9b9    e8e2d6ffff
                         add              esp, 0x18                                     // 0x0059b9be    83c418
                         test             eax, eax                                      // 0x0059b9c1    85c0
                         push             edi                                           // 0x0059b9c3    57
                         {disp8} je       _jmp_addr_0x0059b9cd                          // 0x0059b9c4    7407
                         call             _jmp_addr_0x005990f0                          // 0x0059b9c6    e825d7ffff
                         {disp8} jmp      _jmp_addr_0x0059b9d2                          // 0x0059b9cb    eb05
_jmp_addr_0x0059b9cd:    call             _CHAR2WCHAR__FPc                              // 0x0059b9cd    e8ce462900
_jmp_addr_0x0059b9d2:    add              esp, 0x04                                     // 0x0059b9d2    83c404
                         push             eax                                           // 0x0059b9d5    50
                         {disp32} lea     eax, dword ptr [esp + 0x00000854]             // 0x0059b9d6    8d842454080000
                         push             0x009cd6c8                                    // 0x0059b9dd    68c8d69c00
                         push             eax                                           // 0x0059b9e2    50
                         call             esi                                           // 0x0059b9e3    ffd6
                         add              esp, 0x0c                                     // 0x0059b9e5    83c40c
                         push             eax                                           // 0x0059b9e8    50
                         {disp8} lea      ecx, dword ptr [esp + 0x28]                   // 0x0059b9e9    8d4c2428
                         push             ecx                                           // 0x0059b9ed    51
                         {disp32} lea     edx, dword ptr [esp + 0x0000105c]             // 0x0059b9ee    8d94245c100000
                         push             0x009d0400                                    // 0x0059b9f5    6800049d00
                         push             edx                                           // 0x0059b9fa    52
                         call             esi                                           // 0x0059b9fb    ffd6
                         {disp32} mov     esi, dword ptr [ebp + 0x0000022c]             // 0x0059b9fd    8bb52c020000
                         add              esp, 0x10                                     // 0x0059ba03    83c410
                         push             eax                                           // 0x0059ba06    50
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x0059ba07    8b8650020000
                         push             eax                                           // 0x0059ba0d    50
                         mov.s            ecx, esi                                      // 0x0059ba0e    8bce
                         call             @InsertString__9SetupListFiPw@16              // 0x0059ba10    e85bf4e6ff
                         {disp32} mov     eax, dword ptr [esp + 0x00001864]             // 0x0059ba15    8b842464180000
                         cmp.s            eax, ebx                                      // 0x0059ba1c    3bc3
                         sete             cl                                            // 0x0059ba1e    0f94c1
                         dec              ecx                                           // 0x0059ba21    49
                         and              ecx, 0x000000ff                               // 0x0059ba22    81e1ff000000
                         and              ecx, 0x000000ff                               // 0x0059ba28    81e1ff000000
                         shl              ecx, 8                                        // 0x0059ba2e    c1e108
                         cmp.s            eax, ebx                                      // 0x0059ba31    3bc3
                         sete             al                                            // 0x0059ba33    0f94c0
                         dec              eax                                           // 0x0059ba36    48
                         and              eax, 0x00000080                               // 0x0059ba37    2580000000
                         and              eax, 0x000000ff                               // 0x0059ba3c    25ff000000
                         mov.s            edx, eax                                      // 0x0059ba41    8bd0
                         shl              edx, 0x10                                     // 0x0059ba43    c1e210
                         add.s            edx, eax                                      // 0x0059ba46    03d0
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x0059ba48    8b8650020000
                         add.s            ecx, edx                                      // 0x0059ba4e    03ca
                         push             ecx                                           // 0x0059ba50    51
                         dec              eax                                           // 0x0059ba51    48
                         push             eax                                           // 0x0059ba52    50
                         mov.s            ecx, esi                                      // 0x0059ba53    8bce
                         call             _jmp_addr_0x005471c0                          // 0x0059ba55    e866b7faff
                         {disp32} mov     ecx, dword ptr [ebp + 0x0000022c]             // 0x0059ba5a    8b8d2c020000
                         push             0x1                                           // 0x0059ba60    6a01
                         call             @AutoScroll__9SetupListFb@9                   // 0x0059ba62    e869e3e6ff
_jmp_addr_0x0059ba67:    pop              edi                                           // 0x0059ba67    5f
                         pop              esi                                           // 0x0059ba68    5e
                         pop              ebp                                           // 0x0059ba69    5d
                         pop              ebx                                           // 0x0059ba6a    5b
                         add              esp, 0x00001848                               // 0x0059ba6b    81c448180000
                         ret              0x000c                                        // 0x0059ba71    c20c00
                         nop                                                            // 0x0059ba74    90
                         nop                                                            // 0x0059ba75    90
                         nop                                                            // 0x0059ba76    90
                         nop                                                            // 0x0059ba77    90
                         nop                                                            // 0x0059ba78    90
                         nop                                                            // 0x0059ba79    90
                         nop                                                            // 0x0059ba7a    90
                         nop                                                            // 0x0059ba7b    90
                         nop                                                            // 0x0059ba7c    90
                         nop                                                            // 0x0059ba7d    90
                         nop                                                            // 0x0059ba7e    90
                         nop                                                            // 0x0059ba7f    90
_jmp_addr_0x0059ba80:    push             ebx                                           // 0x0059ba80    53
                         push             ebp                                           // 0x0059ba81    55
                         push             esi                                           // 0x0059ba82    56
                         push             edi                                           // 0x0059ba83    57
                         mov.s            edi, ecx                                      // 0x0059ba84    8bf9
_jmp_addr_0x0059ba86:    mov              eax, dword ptr [edi]                          // 0x0059ba86    8b07
                         xor.s            ebx, ebx                                      // 0x0059ba88    33db
                         cmp.s            eax, ebx                                      // 0x0059ba8a    3bc3
                         {disp8} je       _jmp_addr_0x0059bac7                          // 0x0059ba8c    7439
                         {disp8} mov      ebp, dword ptr [eax + 0x04]                   // 0x0059ba8e    8b6804
_jmp_addr_0x0059ba91:    cmp              dword ptr [eax + 0x04], ebp                   // 0x0059ba91    396804
                         mov              esi, dword ptr [eax]                          // 0x0059ba94    8b30
                         {disp8} jne      _jmp_addr_0x0059bab4                          // 0x0059ba96    751c
                         cmp              eax, dword ptr [edi]                          // 0x0059ba98    3b07
                         {disp8} jne      _jmp_addr_0x0059baa0                          // 0x0059ba9a    7504
                         mov              dword ptr [edi], esi                          // 0x0059ba9c    8937
                         {disp8} jmp      _jmp_addr_0x0059baa2                          // 0x0059ba9e    eb02
_jmp_addr_0x0059baa0:    mov              dword ptr [ebx], esi                          // 0x0059baa0    8933
_jmp_addr_0x0059baa2:    {disp8} mov      edx, dword ptr [edi + 0x04]                   // 0x0059baa2    8b5704
                         dec              edx                                           // 0x0059baa5    4a
                         push             eax                                           // 0x0059baa6    50
                         {disp8} mov      dword ptr [edi + 0x04], edx                   // 0x0059baa7    895704
                         call             ??3@YAXPAX@Z                                  // 0x0059baaa    e8e9332100
                         add              esp, 0x04                                     // 0x0059baaf    83c404
                         {disp8} jmp      _jmp_addr_0x0059bab6                          // 0x0059bab2    eb02
_jmp_addr_0x0059bab4:    mov.s            ebx, eax                                      // 0x0059bab4    8bd8
_jmp_addr_0x0059bab6:    test             esi, esi                                      // 0x0059bab6    85f6
                         mov.s            eax, esi                                      // 0x0059bab8    8bc6
                         {disp8} jne      _jmp_addr_0x0059ba91                          // 0x0059baba    75d5
                         push             ebp                                           // 0x0059babc    55
                         call             ??3@YAXPAX@Z                                  // 0x0059babd    e8d6332100
                         add              esp, 0x04                                     // 0x0059bac2    83c404
                         {disp8} jmp      _jmp_addr_0x0059ba86                          // 0x0059bac5    ebbf
_jmp_addr_0x0059bac7:    {disp8} mov      eax, dword ptr [edi + 0x0d]                   // 0x0059bac7    8b470d
                         cmp.s            eax, ebx                                      // 0x0059baca    3bc3
                         {disp8} je       _jmp_addr_0x0059bad7                          // 0x0059bacc    7409
                         push             eax                                           // 0x0059bace    50
                         call             ??3@YAXPAX@Z                                  // 0x0059bacf    e8c4332100
                         add              esp, 0x04                                     // 0x0059bad4    83c404
_jmp_addr_0x0059bad7:    {disp8} mov      dword ptr [edi + 0x0d], ebx                   // 0x0059bad7    895f0d
                         pop              edi                                           // 0x0059bada    5f
                         pop              esi                                           // 0x0059badb    5e
                         pop              ebp                                           // 0x0059badc    5d
                         pop              ebx                                           // 0x0059badd    5b
                         ret                                                            // 0x0059bade    c3
                         nop                                                            // 0x0059badf    90
_jmp_addr_0x0059bae0:    mov              eax, 0x00001008                               // 0x0059bae0    b808100000
                         call             __chkstk                                      // 0x0059bae5    e8c6b32200
                         {disp32} mov     eax, dword ptr [esp + 0x00001014]             // 0x0059baea    8b842414100000
                         cmp              eax, 0x03                                     // 0x0059baf1    83f803
                         push             ebx                                           // 0x0059baf4    53
                         push             ebp                                           // 0x0059baf5    55
                         push             esi                                           // 0x0059baf6    56
                         push             edi                                           // 0x0059baf7    57
                         mov.s            ebp, ecx                                      // 0x0059baf8    8be9
                         {disp32} ja      _jmp_addr_0x0059be12                          // 0x0059bafa    0f8712030000
                         jmp              dword ptr [eax*4 + 0x59be20]                  // 0x0059bb00    ff248520be5900
                         {disp32} mov     esi, dword ptr [ebp + 0x00000228]             // 0x0059bb07    8bb528020000
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x0059bb0d    8b8650020000
                         test             eax, eax                                      // 0x0059bb13    85c0
                         {disp32} jle     _jmp_addr_0x0059be08                          // 0x0059bb15    0f8eed020000
_jmp_addr_0x0059bb1b:    dec              eax                                           // 0x0059bb1b    48
                         push             eax                                           // 0x0059bb1c    50
                         mov.s            ecx, esi                                      // 0x0059bb1d    8bce
                         call             @DeleteString__9SetupListFi@12                // 0x0059bb1f    e83cf2e6ff
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x0059bb24    8b8650020000
                         test             eax, eax                                      // 0x0059bb2a    85c0
                         {disp8} jg       _jmp_addr_0x0059bb1b                          // 0x0059bb2c    7fed
                         {disp32} jmp     _jmp_addr_0x0059be08                          // 0x0059bb2e    e9d5020000
                         {disp32} mov     edi, dword ptr [esp + 0x0000101c]             // 0x0059bb33    8bbc241c100000
                         push             0x0                                           // 0x0059bb3a    6a00
                         push             0x009cd748                                    // 0x0059bb3c    6848d79c00
                         push             edi                                           // 0x0059bb41    57
                         call             _jmp_addr_0x00886780                          // 0x0059bb42    e839ac2e00
                         add              esp, 0x0c                                     // 0x0059bb47    83c40c
                         cmp              eax, 0x01                                     // 0x0059bb4a    83f801
                         {disp8} jne      _jmp_addr_0x0059bb6a                          // 0x0059bb4d    751b
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001903 // 0x0059bb4f    813dac7cd10003190000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0059bb59    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0059bb65                          // 0x0059bb5e    7605
                         add              eax, 0x00012c24                               // 0x0059bb60    05242c0100
_jmp_addr_0x0059bb65:    {disp8} mov      esi, dword ptr [eax + 0x08]                   // 0x0059bb65    8b7008
                         {disp8} jmp      _jmp_addr_0x0059bb6f                          // 0x0059bb68    eb05
_jmp_addr_0x0059bb6a:    mov              esi, 0x00c4cd30                               // 0x0059bb6a    be30cdc400
_jmp_addr_0x0059bb6f:    push             0x2                                           // 0x0059bb6f    6a02
                         push             0x009cd798                                    // 0x0059bb71    6898d79c00
                         push             edi                                           // 0x0059bb76    57
                         call             _jmp_addr_0x00886780                          // 0x0059bb77    e804ac2e00
                         {disp32} mov     edx, dword ptr [data_bytes + 0x351cac]        // 0x0059bb7c    8b15ac7cd100
                         add              esp, 0x0c                                     // 0x0059bb82    83c40c
                         cmp              eax, 0x02                                     // 0x0059bb85    83f802
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0059bb88    a1a87cd100
                         {disp8} jne      _jmp_addr_0x0059bb96                          // 0x0059bb8d    7507
                         mov              ecx, 0x00c4cd30                               // 0x0059bb8f    b930cdc400
                         {disp8} jmp      _jmp_addr_0x0059bba9                          // 0x0059bb94    eb13
_jmp_addr_0x0059bb96:    cmp              edx, 0x00001902                               // 0x0059bb96    81fa02190000
                         mov.s            ecx, eax                                      // 0x0059bb9c    8bc8
                         {disp8} jbe      _jmp_addr_0x0059bba6                          // 0x0059bb9e    7606
                         {disp32} lea     ecx, dword ptr [eax + 0x00012c18]             // 0x0059bba0    8d88182c0100
_jmp_addr_0x0059bba6:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x0059bba6    8b4908
_jmp_addr_0x0059bba9:    {disp32} mov     ebx, dword ptr [esp + 0x00001020]             // 0x0059bba9    8b9c2420100000
                         test             ebx, ebx                                      // 0x0059bbb0    85db
                         {disp8} je       _jmp_addr_0x0059bbbb                          // 0x0059bbb2    7407
                         mov              eax, 0x00c4cd30                               // 0x0059bbb4    b830cdc400
                         {disp8} jmp      _jmp_addr_0x0059bbcb                          // 0x0059bbb9    eb10
_jmp_addr_0x0059bbbb:    cmp              edx, 0x00001901                               // 0x0059bbbb    81fa01190000
                         {disp8} jbe      _jmp_addr_0x0059bbc8                          // 0x0059bbc1    7605
                         add              eax, 0x00012c0c                               // 0x0059bbc3    050c2c0100
_jmp_addr_0x0059bbc8:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0059bbc8    8b4008
_jmp_addr_0x0059bbcb:    push             esi                                           // 0x0059bbcb    56
                         push             ecx                                           // 0x0059bbcc    51
                         push             eax                                           // 0x0059bbcd    50
                         push             0x0                                           // 0x0059bbce    6a00
                         push             0x009cd718                                    // 0x0059bbd0    6818d79c00
                         push             edi                                           // 0x0059bbd5    57
                         call             _jmp_addr_0x00886780                          // 0x0059bbd6    e8a5ab2e00
                         add              esp, 0x0c                                     // 0x0059bbdb    83c40c
                         push             eax                                           // 0x0059bbde    50
                         push             0x009cd76c                                    // 0x0059bbdf    686cd79c00
                         push             0x009cd760                                    // 0x0059bbe4    6860d79c00
                         push             edi                                           // 0x0059bbe9    57
                         call             _jmp_addr_0x008866c0                          // 0x0059bbea    e8d1aa2e00
                         push             eax                                           // 0x0059bbef    50
                         call             _CHAR2WCHAR__FPc                              // 0x0059bbf0    e8ab442900
                         add              esp, 0x10                                     // 0x0059bbf5    83c410
                         push             eax                                           // 0x0059bbf8    50
                         {disp8} lea      ecx, dword ptr [esp + 0x24]                   // 0x0059bbf9    8d4c2424
                         push             0x00beffcc                                    // 0x0059bbfd    68ccffbe00
                         push             ecx                                           // 0x0059bc02    51
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0059bc03    ff15d8938a00
                         {disp32} mov     esi, dword ptr [ebp + 0x00000228]             // 0x0059bc09    8bb528020000
                         {disp32} mov     edx, dword ptr [esi + 0x00000250]             // 0x0059bc0f    8b9650020000
                         add              esp, 0x1c                                     // 0x0059bc15    83c41c
                         push             eax                                           // 0x0059bc18    50
                         push             edx                                           // 0x0059bc19    52
                         mov.s            ecx, esi                                      // 0x0059bc1a    8bce
                         call             @InsertString__9SetupListFiPw@16              // 0x0059bc1c    e84ff2e6ff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x0059bc21    8b8e50020000
                         {disp8} lea      eax, dword ptr [ecx + -0x01]                  // 0x0059bc27    8d41ff
                         test             eax, eax                                      // 0x0059bc2a    85c0
                         {disp8} jl       _jmp_addr_0x0059bc3f                          // 0x0059bc2c    7c11
                         cmp.s            eax, ecx                                      // 0x0059bc2e    3bc1
                         {disp8} jge      _jmp_addr_0x0059bc3f                          // 0x0059bc30    7d0d
                         {disp32} mov     ecx, dword ptr [esi + 0x00000268]             // 0x0059bc32    8b8e68020000
                         mov              dword ptr [ecx + eax * 0x4], 0x00000000       // 0x0059bc38    c7048100000000
_jmp_addr_0x0059bc3f:    {disp32} mov     ecx, dword ptr [ebp + 0x00000228]             // 0x0059bc3f    8b8d28020000
                         {disp32} mov     eax, dword ptr [ecx + 0x00000250]             // 0x0059bc45    8b8150020000
                         dec              eax                                           // 0x0059bc4b    48
                         {disp32} js      _jmp_addr_0x0059be12                          // 0x0059bc4c    0f88c0010000
                         cmp              eax, dword ptr [ecx + 0x00000250]             // 0x0059bc52    3b8150020000
                         {disp32} jge     _jmp_addr_0x0059be12                          // 0x0059bc58    0f8db4010000
                         {disp32} mov     edx, dword ptr [ecx + 0x00000264]             // 0x0059bc5e    8b9164020000
                         mov              dword ptr [edx + eax * 0x4], edi              // 0x0059bc64    893c82
                         pop              edi                                           // 0x0059bc67    5f
                         pop              esi                                           // 0x0059bc68    5e
                         pop              ebp                                           // 0x0059bc69    5d
                         pop              ebx                                           // 0x0059bc6a    5b
                         add              esp, 0x00001008                               // 0x0059bc6b    81c408100000
                         ret              0x000c                                        // 0x0059bc71    c20c00
                         {disp32} mov     ecx, dword ptr [ebp + 0x00000228]             // 0x0059bc74    8b8d28020000
                         {disp32} mov     edx, dword ptr [ecx + 0x00000250]             // 0x0059bc7a    8b9150020000
                         xor.s            esi, esi                                      // 0x0059bc80    33f6
                         test             edx, edx                                      // 0x0059bc82    85d2
                         {disp32} jle     _jmp_addr_0x0059be12                          // 0x0059bc84    0f8e88010000
                         {disp32} mov     edi, dword ptr [esp + 0x0000101c]             // 0x0059bc8a    8bbc241c100000
_jmp_addr_0x0059bc91:    test             esi, esi                                      // 0x0059bc91    85f6
                         {disp8} jl       _jmp_addr_0x0059bca8                          // 0x0059bc93    7c13
                         cmp              esi, dword ptr [ecx + 0x00000250]             // 0x0059bc95    3bb150020000
                         {disp8} jge      _jmp_addr_0x0059bca8                          // 0x0059bc9b    7d0b
                         {disp32} mov     eax, dword ptr [ecx + 0x00000264]             // 0x0059bc9d    8b8164020000
                         mov              eax, dword ptr [eax + esi * 0x4]              // 0x0059bca3    8b04b0
                         {disp8} jmp      _jmp_addr_0x0059bcaa                          // 0x0059bca6    eb02
_jmp_addr_0x0059bca8:    xor.s            eax, eax                                      // 0x0059bca8    33c0
_jmp_addr_0x0059bcaa:    cmp.s            eax, edi                                      // 0x0059bcaa    3bc7
                         {disp8} je       _jmp_addr_0x0059bcc0                          // 0x0059bcac    7412
                         inc              esi                                           // 0x0059bcae    46
                         cmp.s            esi, edx                                      // 0x0059bcaf    3bf2
                         {disp8} jl       _jmp_addr_0x0059bc91                          // 0x0059bcb1    7cde
                         pop              edi                                           // 0x0059bcb3    5f
                         pop              esi                                           // 0x0059bcb4    5e
                         pop              ebp                                           // 0x0059bcb5    5d
                         pop              ebx                                           // 0x0059bcb6    5b
                         add              esp, 0x00001008                               // 0x0059bcb7    81c408100000
                         ret              0x000c                                        // 0x0059bcbd    c20c00
_jmp_addr_0x0059bcc0:    push             0x0                                           // 0x0059bcc0    6a00
                         push             0x009cd748                                    // 0x0059bcc2    6848d79c00
                         push             edi                                           // 0x0059bcc7    57
                         call             _jmp_addr_0x00886780                          // 0x0059bcc8    e8b3aa2e00
                         add              esp, 0x0c                                     // 0x0059bccd    83c40c
                         cmp              eax, 0x01                                     // 0x0059bcd0    83f801
                         {disp8} jne      _jmp_addr_0x0059bcff                          // 0x0059bcd3    752a
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001903 // 0x0059bcd5    813dac7cd10003190000
                         {disp8} ja       _jmp_addr_0x0059bceb                          // 0x0059bcdf    770a
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0059bce1    a1a87cd100
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x0059bce6    8b5808
                         {disp8} jmp      _jmp_addr_0x0059bd04                          // 0x0059bce9    eb19
_jmp_addr_0x0059bceb:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0059bceb    8b0da87cd100
                         {disp32} mov     ebx, dword ptr [ecx + 0x00012c2c]             // 0x0059bcf1    8b992c2c0100
                         {disp32} lea     eax, dword ptr [ecx + 0x00012c24]             // 0x0059bcf7    8d81242c0100
                         {disp8} jmp      _jmp_addr_0x0059bd04                          // 0x0059bcfd    eb05
_jmp_addr_0x0059bcff:    mov              ebx, 0x00c4cd30                               // 0x0059bcff    bb30cdc400
_jmp_addr_0x0059bd04:    push             0x2                                           // 0x0059bd04    6a02
                         push             0x009cd798                                    // 0x0059bd06    6898d79c00
                         push             edi                                           // 0x0059bd0b    57
                         call             _jmp_addr_0x00886780                          // 0x0059bd0c    e86faa2e00
                         {disp32} mov     edx, dword ptr [data_bytes + 0x351cac]        // 0x0059bd11    8b15ac7cd100
                         add              esp, 0x0c                                     // 0x0059bd17    83c40c
                         cmp              eax, 0x02                                     // 0x0059bd1a    83f802
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0059bd1d    a1a87cd100
                         {disp8} jne      _jmp_addr_0x0059bd2b                          // 0x0059bd22    7507
                         mov              ecx, 0x00c4cd30                               // 0x0059bd24    b930cdc400
                         {disp8} jmp      _jmp_addr_0x0059bd3e                          // 0x0059bd29    eb13
_jmp_addr_0x0059bd2b:    cmp              edx, 0x00001902                               // 0x0059bd2b    81fa02190000
                         mov.s            ecx, eax                                      // 0x0059bd31    8bc8
                         {disp8} jbe      _jmp_addr_0x0059bd3b                          // 0x0059bd33    7606
                         {disp32} lea     ecx, dword ptr [eax + 0x00012c18]             // 0x0059bd35    8d88182c0100
_jmp_addr_0x0059bd3b:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x0059bd3b    8b4908
_jmp_addr_0x0059bd3e:    cmp              dword ptr [esp + 0x00001020], 0x00            // 0x0059bd3e    83bc242010000000
                         {disp8} je       _jmp_addr_0x0059bd4f                          // 0x0059bd46    7407
                         mov              eax, 0x00c4cd30                               // 0x0059bd48    b830cdc400
                         {disp8} jmp      _jmp_addr_0x0059bd5f                          // 0x0059bd4d    eb10
_jmp_addr_0x0059bd4f:    cmp              edx, 0x00001901                               // 0x0059bd4f    81fa01190000
                         {disp8} jbe      _jmp_addr_0x0059bd5c                          // 0x0059bd55    7605
                         add              eax, 0x00012c0c                               // 0x0059bd57    050c2c0100
_jmp_addr_0x0059bd5c:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0059bd5c    8b4008
_jmp_addr_0x0059bd5f:    push             ebx                                           // 0x0059bd5f    53
                         push             ecx                                           // 0x0059bd60    51
                         push             eax                                           // 0x0059bd61    50
                         push             0x0                                           // 0x0059bd62    6a00
                         push             0x009cd718                                    // 0x0059bd64    6818d79c00
                         push             edi                                           // 0x0059bd69    57
                         call             _jmp_addr_0x00886780                          // 0x0059bd6a    e811aa2e00
                         add              esp, 0x0c                                     // 0x0059bd6f    83c40c
                         push             eax                                           // 0x0059bd72    50
                         push             0x009cd76c                                    // 0x0059bd73    686cd79c00
                         push             0x009cd760                                    // 0x0059bd78    6860d79c00
                         push             edi                                           // 0x0059bd7d    57
                         call             _jmp_addr_0x008866c0                          // 0x0059bd7e    e83da92e00
                         push             eax                                           // 0x0059bd83    50
                         call             _CHAR2WCHAR__FPc                              // 0x0059bd84    e817432900
                         add              esp, 0x10                                     // 0x0059bd89    83c410
                         push             eax                                           // 0x0059bd8c    50
                         {disp32} lea     edx, dword ptr [esp + 0x00000828]             // 0x0059bd8d    8d942428080000
                         push             0x00beffcc                                    // 0x0059bd94    68ccffbe00
                         push             edx                                           // 0x0059bd99    52
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0059bd9a    ff15d8938a00
                         {disp32} mov     ecx, dword ptr [ebp + 0x00000228]             // 0x0059bda0    8b8d28020000
                         add              esp, 0x1c                                     // 0x0059bda6    83c41c
                         push             eax                                           // 0x0059bda9    50
                         push             esi                                           // 0x0059bdaa    56
                         call             _jmp_addr_0x0040b000                          // 0x0059bdab    e850f2e6ff
                         pop              edi                                           // 0x0059bdb0    5f
                         pop              esi                                           // 0x0059bdb1    5e
                         pop              ebp                                           // 0x0059bdb2    5d
                         pop              ebx                                           // 0x0059bdb3    5b
                         add              esp, 0x00001008                               // 0x0059bdb4    81c408100000
                         ret              0x000c                                        // 0x0059bdba    c20c00
                         {disp32} mov     ecx, dword ptr [ebp + 0x00000228]             // 0x0059bdbd    8b8d28020000
                         {disp32} mov     esi, dword ptr [ecx + 0x00000250]             // 0x0059bdc3    8bb150020000
                         {disp32} mov     edi, dword ptr [esp + 0x0000101c]             // 0x0059bdc9    8bbc241c100000
                         xor.s            eax, eax                                      // 0x0059bdd0    33c0
                         test             esi, esi                                      // 0x0059bdd2    85f6
                         {disp8} jle      _jmp_addr_0x0059be00                          // 0x0059bdd4    7e2a
_jmp_addr_0x0059bdd6:    test             eax, eax                                      // 0x0059bdd6    85c0
                         {disp8} jl       _jmp_addr_0x0059bded                          // 0x0059bdd8    7c13
                         cmp              eax, dword ptr [ecx + 0x00000250]             // 0x0059bdda    3b8150020000
                         {disp8} jge      _jmp_addr_0x0059bded                          // 0x0059bde0    7d0b
                         {disp32} mov     edx, dword ptr [ecx + 0x00000264]             // 0x0059bde2    8b9164020000
                         mov              edx, dword ptr [edx + eax * 0x4]              // 0x0059bde8    8b1482
                         {disp8} jmp      _jmp_addr_0x0059bdef                          // 0x0059bdeb    eb02
_jmp_addr_0x0059bded:    xor.s            edx, edx                                      // 0x0059bded    33d2
_jmp_addr_0x0059bdef:    cmp.s            edx, edi                                      // 0x0059bdef    3bd7
                         {disp8} je       _jmp_addr_0x0059bdfa                          // 0x0059bdf1    7407
                         inc              eax                                           // 0x0059bdf3    40
                         cmp.s            eax, esi                                      // 0x0059bdf4    3bc6
                         {disp8} jl       _jmp_addr_0x0059bdd6                          // 0x0059bdf6    7cde
                         {disp8} jmp      _jmp_addr_0x0059be00                          // 0x0059bdf8    eb06
_jmp_addr_0x0059bdfa:    push             eax                                           // 0x0059bdfa    50
                         call             @DeleteString__9SetupListFi@12                // 0x0059bdfb    e860efe6ff
_jmp_addr_0x0059be00:    cmp              dword ptr [ebp + 0x000002ac], edi             // 0x0059be00    39bdac020000
                         {disp8} jne      _jmp_addr_0x0059be12                          // 0x0059be06    750a
_jmp_addr_0x0059be08:    {disp32} mov     dword ptr [ebp + 0x000002ac], 0x00000000      // 0x0059be08    c785ac02000000000000
_jmp_addr_0x0059be12:    pop              edi                                           // 0x0059be12    5f
                         pop              esi                                           // 0x0059be13    5e
                         pop              ebp                                           // 0x0059be14    5d
                         pop              ebx                                           // 0x0059be15    5b
                         add              esp, 0x00001008                               // 0x0059be16    81c408100000
                         ret              0x000c                                        // 0x0059be1c    c20c00

// Snippet: db, [0x0059be1f, 0x0059be20)
.byte 0x90                        // 0x0059be1f

// Snippet: jmptbl, [0x0059be20, 0x0059be30)
.byte 0x33, 0xbb, 0x59, 0x00      // 0x0059be20
.byte 0x74, 0xbc, 0x59, 0x00      // 0x0059be24
.byte 0xbd, 0xbd, 0x59, 0x00      // 0x0059be28
.byte 0x07, 0xbb, 0x59, 0x00      // 0x0059be2c

