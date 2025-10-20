.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00483160
.extern _jmp_addr_0x004846e0
.extern _jmp_addr_0x00484ec0
.extern _jmp_addr_0x004867b0
.extern _jmp_addr_0x004ebe10
.extern ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z
.extern @GetAnim__9MorphableFll@16
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x00841170
.extern _jmp_addr_0x008683c0

.globl _jmp_addr_0x00489540
.globl _jmp_addr_0x00489a20
.globl _jmp_addr_0x00489b90
.globl _jmp_addr_0x00489cb0
.globl _jmp_addr_0x00489ce0

start_0x00489540_0x0048a370:
// Snippet: asm, [0x00489540, 0x0048a356)
_jmp_addr_0x00489540:    sub                esp, 0x08                                            // 0x00489540    83ec08
                         push               esi                                                  // 0x00489543    56
                         mov.s              esi, ecx                                             // 0x00489544    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000528c]                    // 0x00489546    8b868c520000
                         test               eax, eax                                             // 0x0048954c    85c0
                         push               edi                                                  // 0x0048954e    57
                         {disp8} je         _jmp_addr_0x0048958f                                 // 0x0048954f    743e
                         {disp8} fld        dword ptr [eax + 0x78]                               // 0x00489551    d94078
                         {disp32} fsub      dword ptr [esi + 0x00004a98]                         // 0x00489554    d8a6984a0000
                         {disp32} fld       dword ptr [eax + 0x00000080]                         // 0x0048955a    d98080000000
                         {disp32} fsub      dword ptr [esi + 0x00004aa0]                         // 0x00489560    d8a6a04a0000
                         fld                st(0)                                                // 0x00489566    d9c0
                         fmul               st, st(1)                                            // 0x00489568    d8c9
                         fld                st(2)                                                // 0x0048956a    d9c2
                         fmul               st, st(3)                                            // 0x0048956c    d8cb
                         faddp              st(1), st                                            // 0x0048956e    dec1
                         fsqrt                                                                   // 0x00489570    d9fa
                         fstp               st(2)                                                // 0x00489572    ddda
                         fstp               st(0)                                                // 0x00489574    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2609c]                    // 0x00489576    d9059cf08c00
                         {disp32} fmul      dword ptr [esi + 0x00004aa4]                         // 0x0048957c    d88ea44a0000
                         fcompp                                                                  // 0x00489582    ded9
                         fnstsw             ax                                                   // 0x00489584    dfe0
                         test               ah, 0x01                                             // 0x00489586    f6c401
                         {disp32} jne       _jmp_addr_0x00489923                                 // 0x00489589    0f8594030000
_jmp_addr_0x0048958f:    {disp32} mov       eax, dword ptr [esi + 0x00004ac0]                    // 0x0048958f    8b86c04a0000
                         test               eax, eax                                             // 0x00489595    85c0
                         {disp32} je        _jmp_addr_0x00489923                                 // 0x00489597    0f8486030000
                         {disp32} fld       dword ptr [rdata_bytes + 0x260ac]                    // 0x0048959d    d905acf08c00
                         call               _jmp_addr_0x007a1400                                 // 0x004895a3    e8587e3100
                         {disp32} mov       edi, dword ptr [esi + 0x00004ac4]                    // 0x004895a8    8bbec44a0000
                         {disp32} mov       dword ptr [esi + 0x00004ab8], eax                    // 0x004895ae    8986b84a0000
                         {disp32} mov       eax, dword ptr [esi + 0x00004994]                    // 0x004895b4    8b8694490000
                         cmp                eax, 0x1b                                            // 0x004895ba    83f81b
                         {disp8} jne        _jmp_addr_0x004895da                                 // 0x004895bd    751b
                         cmp                edi, 0x03                                            // 0x004895bf    83ff03
                         {disp8} jne        _jmp_addr_0x004895cb                                 // 0x004895c2    7507
                         mov.s              ecx, esi                                             // 0x004895c4    8bce
                         call               _jmp_addr_0x00489930                                 // 0x004895c6    e865030000
_jmp_addr_0x004895cb:    push               0x1d                                                 // 0x004895cb    6a1d
                         mov.s              ecx, esi                                             // 0x004895cd    8bce
                         call               _jmp_addr_0x00484ec0                                 // 0x004895cf    e8ecb8ffff
                         pop                edi                                                  // 0x004895d4    5f
                         pop                esi                                                  // 0x004895d5    5e
                         add                esp, 0x08                                            // 0x004895d6    83c408
                         ret                                                                     // 0x004895d9    c3
_jmp_addr_0x004895da:    cmp                eax, 0x17                                            // 0x004895da    83f817
                         {disp32} jne       _jmp_addr_0x00489923                                 // 0x004895dd    0f8540030000
                         test               edi, 0x00008000                                      // 0x004895e3    f7c700800000
                         {disp32} je        _jmp_addr_0x004896da                                 // 0x004895e9    0f84eb000000
                         push               0x0                                                  // 0x004895ef    6a00
                         and                edi, 0x00003fff                                      // 0x004895f1    81e7ff3f0000
                         push               edi                                                  // 0x004895f7    57
                         mov.s              ecx, esi                                             // 0x004895f8    8bce
                         call               _jmp_addr_0x004846e0                                 // 0x004895fa    e8e1b0ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x004895ff    8b8e34480000
                         mov                eax, dword ptr [ecx]                                 // 0x00489605    8b01
                         call               dword ptr [eax + 0x1c]                               // 0x00489607    ff501c
                         {disp32} mov       edx, dword ptr [_game]                               // 0x0048960a    8b155c19d000
                         xor.s              ecx, ecx                                             // 0x00489610    33c9
                         {disp32} mov       cl, byte ptr [edx + 0x00205a59]                      // 0x00489612    8a8a595a2000
                         lea                edi, dword ptr [ecx + ecx * 0x4]                     // 0x00489618    8d3c89
                         lea                edi, dword ptr [ecx + edi * 0x8]                     // 0x0048961b    8d3cf9
                         lea                ecx, dword ptr [ecx + edi * 0x2]                     // 0x0048961e    8d0c79
                         shl                ecx, 5                                               // 0x00489621    c1e105
                         {disp8} lea        ecx, dword ptr [ecx + edx * 0x1 + 0x18]              // 0x00489624    8d4c1118
                         cmp.s              ecx, eax                                             // 0x00489628    3bc8
                         {disp8} jne        _jmp_addr_0x00489639                                 // 0x0048962a    750d
                         {disp32} mov       ecx, dword ptr [edx + 0x00250060]                    // 0x0048962c    8b8a60002500
                         push               0x27                                                 // 0x00489632    6a27
                         call               ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z      // 0x00489634    e8a7b01300
_jmp_addr_0x00489639:    mov.s              ecx, esi                                             // 0x00489639    8bce
                         call               _jmp_addr_0x00489930                                 // 0x0048963b    e8f0020000
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00489640    8b8634480000
                         test               eax, eax                                             // 0x00489646    85c0
                         {disp32} je        _jmp_addr_0x00489923                                 // 0x00489648    0f84d5020000
                         {disp32} mov       eax, dword ptr [eax + 0x00000164]                    // 0x0048964e    8b8064010000
                         {disp32} fld       dword ptr [eax + 0x00017d04]                         // 0x00489654    d980047d0100
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2617c]                    // 0x0048965a    d80d7cf18c00
                         {disp32} fstp      dword ptr [eax + 0x00017d04]                         // 0x00489660    d998047d0100
                         {disp32} mov       edx, dword ptr [esi + 0x00004834]                    // 0x00489666    8b9634480000
                         {disp32} mov       eax, dword ptr [edx + 0x00000164]                    // 0x0048966c    8b8264010000
                         {disp32} fld       dword ptr [eax + 0x00017d04]                         // 0x00489672    d980047d0100
                         {disp32} fsub      dword ptr [rdata_bytes + 0x26178]                    // 0x00489678    d82578f18c00
                         {disp32} fstp      dword ptr [eax + 0x00017d04]                         // 0x0048967e    d998047d0100
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00489684    8b8634480000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]                    // 0x0048968a    8b8864010000
                         {disp32} fld       dword ptr [ecx + 0x00017d04]                         // 0x00489690    d981047d0100
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]                     // 0x00489696    d81d78b68a00
                         fnstsw             ax                                                   // 0x0048969c    dfe0
                         test               ah, 0x01                                             // 0x0048969e    f6c401
                         {disp8} je         _jmp_addr_0x004896b3                                 // 0x004896a1    7410
                         pop                edi                                                  // 0x004896a3    5f
                         {disp32} mov       dword ptr [ecx + 0x00017d04], 0xbf800000             // 0x004896a4    c781047d0100000080bf
                         pop                esi                                                  // 0x004896ae    5e
                         add                esp, 0x08                                            // 0x004896af    83c408
                         ret                                                                     // 0x004896b2    c3
_jmp_addr_0x004896b3:    {disp32} fld       dword ptr [ecx + 0x00017d04]                         // 0x004896b3    d981047d0100
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x004896b9    d81d90a38a00
                         fnstsw             ax                                                   // 0x004896bf    dfe0
                         test               ah, 0x41                                             // 0x004896c1    f6c441
                         {disp32} jne       _jmp_addr_0x00489923                                 // 0x004896c4    0f8559020000
                         pop                edi                                                  // 0x004896ca    5f
                         {disp32} mov       dword ptr [ecx + 0x00017d04], 0x3f800000             // 0x004896cb    c781047d01000000803f
                         pop                esi                                                  // 0x004896d5    5e
                         add                esp, 0x08                                            // 0x004896d6    83c408
                         ret                                                                     // 0x004896d9    c3
_jmp_addr_0x004896da:    test               edi, 0x00004000                                      // 0x004896da    f7c700400000
                         {disp8} je         _jmp_addr_0x00489748                                 // 0x004896e0    7466
                         and                edi, 0x00003fff                                      // 0x004896e2    81e7ff3f0000
                         push               0x20                                                 // 0x004896e8    6a20
                         mov.s              ecx, esi                                             // 0x004896ea    8bce
                         {disp32} mov       dword ptr [esi + 0x00004b28], edi                    // 0x004896ec    89be284b0000
                         call               _jmp_addr_0x00484ec0                                 // 0x004896f2    e8c9b7ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x004896f7    8b8e34480000
                         {disp32} mov       dword ptr [esi + 0x000049a0], 0x0000006f             // 0x004896fd    c786a04900006f000000
                         mov                edx, dword ptr [ecx]                                 // 0x00489707    8b11
                         call               dword ptr [edx + 0x1c]                               // 0x00489709    ff521c
                         {disp32} mov       edx, dword ptr [_game]                               // 0x0048970c    8b155c19d000
                         xor.s              ecx, ecx                                             // 0x00489712    33c9
                         {disp32} mov       cl, byte ptr [edx + 0x00205a59]                      // 0x00489714    8a8a595a2000
                         lea                edi, dword ptr [ecx + ecx * 0x4]                     // 0x0048971a    8d3c89
                         lea                edi, dword ptr [ecx + edi * 0x8]                     // 0x0048971d    8d3cf9
                         lea                ecx, dword ptr [ecx + edi * 0x2]                     // 0x00489720    8d0c79
                         shl                ecx, 5                                               // 0x00489723    c1e105
                         {disp8} lea        ecx, dword ptr [ecx + edx * 0x1 + 0x18]              // 0x00489726    8d4c1118
                         cmp.s              ecx, eax                                             // 0x0048972a    3bc8
                         {disp8} jne        _jmp_addr_0x0048973b                                 // 0x0048972c    750d
                         {disp32} mov       ecx, dword ptr [edx + 0x00250060]                    // 0x0048972e    8b8a60002500
                         push               0x26                                                 // 0x00489734    6a26
                         call               ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z      // 0x00489736    e8a5af1300
_jmp_addr_0x0048973b:    mov.s              ecx, esi                                             // 0x0048973b    8bce
                         call               _jmp_addr_0x00489930                                 // 0x0048973d    e8ee010000
                         pop                edi                                                  // 0x00489742    5f
                         pop                esi                                                  // 0x00489743    5e
                         add                esp, 0x08                                            // 0x00489744    83c408
                         ret                                                                     // 0x00489747    c3
_jmp_addr_0x00489748:    {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x00489748    8b8e34480000
                         mov                edx, dword ptr [ecx]                                 // 0x0048974e    8b11
                         push               ebx                                                  // 0x00489750    53
                         call               dword ptr [edx + 0x1c]                               // 0x00489751    ff521c
                         {disp32} mov       edx, dword ptr [_game]                               // 0x00489754    8b155c19d000
                         xor.s              ecx, ecx                                             // 0x0048975a    33c9
                         {disp32} mov       cl, byte ptr [edx + 0x00205a59]                      // 0x0048975c    8a8a595a2000
                         lea                ebx, dword ptr [ecx + ecx * 0x4]                     // 0x00489762    8d1c89
                         lea                ebx, dword ptr [ecx + ebx * 0x8]                     // 0x00489765    8d1cd9
                         lea                ecx, dword ptr [ecx + ebx * 0x2]                     // 0x00489768    8d0c59
                         shl                ecx, 5                                               // 0x0048976b    c1e105
                         {disp8} lea        ecx, dword ptr [ecx + edx * 0x1 + 0x18]              // 0x0048976e    8d4c1118
                         cmp.s              ecx, eax                                             // 0x00489772    3bc8
                         pop                ebx                                                  // 0x00489774    5b
                         {disp32} jne       _jmp_addr_0x004898da                                 // 0x00489775    0f855f010000
                         cmp                edi, 0x03                                            // 0x0048977b    83ff03
                         {disp32} jne       _jmp_addr_0x00489840                                 // 0x0048977e    0f85bc000000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250060]                    // 0x00489784    8b8a60002500
                         push               0x24                                                 // 0x0048978a    6a24
                         call               ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z      // 0x0048978c    e84faf1300
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00489791    8b8634480000
                         test               eax, eax                                             // 0x00489797    85c0
                         {disp32} je        _jmp_addr_0x004898df                                 // 0x00489799    0f8440010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000164]                    // 0x0048979f    8b8064010000
                         {disp32} fld       dword ptr [eax + 0x00017d04]                         // 0x004897a5    d980047d0100
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2617c]                    // 0x004897ab    d80d7cf18c00
                         {disp32} fstp      dword ptr [eax + 0x00017d04]                         // 0x004897b1    d998047d0100
                         {disp32} mov       edx, dword ptr [esi + 0x00004834]                    // 0x004897b7    8b9634480000
                         {disp32} mov       eax, dword ptr [edx + 0x00000164]                    // 0x004897bd    8b8264010000
                         {disp32} fld       dword ptr [eax + 0x00017d04]                         // 0x004897c3    d980047d0100
                         {disp32} fsub      dword ptr [rdata_bytes + 0x26178]                    // 0x004897c9    d82578f18c00
                         {disp32} fstp      dword ptr [eax + 0x00017d04]                         // 0x004897cf    d998047d0100
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x004897d5    8b8634480000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]                    // 0x004897db    8b8864010000
                         {disp32} fld       dword ptr [ecx + 0x00017d04]                         // 0x004897e1    d981047d0100
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]                     // 0x004897e7    d81d78b68a00
                         fnstsw             ax                                                   // 0x004897ed    dfe0
                         test               ah, 0x01                                             // 0x004897ef    f6c401
                         {disp8} je         _jmp_addr_0x0048980e                                 // 0x004897f2    741a
                         push               0x0                                                  // 0x004897f4    6a00
                         {disp32} mov       dword ptr [ecx + 0x00017d04], 0xbf800000             // 0x004897f6    c781047d0100000080bf
                         push               edi                                                  // 0x00489800    57
                         mov.s              ecx, esi                                             // 0x00489801    8bce
                         call               _jmp_addr_0x00489ce0                                 // 0x00489803    e8d8040000
                         pop                edi                                                  // 0x00489808    5f
                         pop                esi                                                  // 0x00489809    5e
                         add                esp, 0x08                                            // 0x0048980a    83c408
                         ret                                                                     // 0x0048980d    c3
_jmp_addr_0x0048980e:    {disp32} fld       dword ptr [ecx + 0x00017d04]                         // 0x0048980e    d981047d0100
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x00489814    d81d90a38a00
                         fnstsw             ax                                                   // 0x0048981a    dfe0
                         test               ah, 0x41                                             // 0x0048981c    f6c441
                         {disp32} jne       _jmp_addr_0x004898df                                 // 0x0048981f    0f85ba000000
                         push               0x0                                                  // 0x00489825    6a00
                         {disp32} mov       dword ptr [ecx + 0x00017d04], 0x3f800000             // 0x00489827    c781047d01000000803f
                         push               0x3                                                  // 0x00489831    6a03
                         mov.s              ecx, esi                                             // 0x00489833    8bce
                         call               _jmp_addr_0x00489ce0                                 // 0x00489835    e8a6040000
                         pop                edi                                                  // 0x0048983a    5f
                         pop                esi                                                  // 0x0048983b    5e
                         add                esp, 0x08                                            // 0x0048983c    83c408
                         ret                                                                     // 0x0048983f    c3
_jmp_addr_0x00489840:    {disp32} mov       eax, dword ptr [esi + 0x00004834]                    // 0x00489840    8b8634480000
                         test               eax, eax                                             // 0x00489846    85c0
                         {disp8} je         _jmp_addr_0x004898c8                                 // 0x00489848    747e
                         {disp32} mov       eax, dword ptr [eax + 0x00000164]                    // 0x0048984a    8b8064010000
                         {disp32} fld       dword ptr [eax + 0x00017d04]                         // 0x00489850    d980047d0100
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2617c]                    // 0x00489856    d80d7cf18c00
                         {disp32} fstp      dword ptr [eax + 0x00017d04]                         // 0x0048985c    d998047d0100
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]                    // 0x00489862    8b8e34480000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]                    // 0x00489868    8b8164010000
                         {disp32} fld       dword ptr [eax + 0x00017d04]                         // 0x0048986e    d980047d0100
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26178]                    // 0x00489874    d80578f18c00
                         {disp32} fstp      dword ptr [eax + 0x00017d04]                         // 0x0048987a    d998047d0100
                         {disp32} mov       edx, dword ptr [esi + 0x00004834]                    // 0x00489880    8b9634480000
                         {disp32} mov       ecx, dword ptr [edx + 0x00000164]                    // 0x00489886    8b8a64010000
                         {disp32} fld       dword ptr [ecx + 0x00017d04]                         // 0x0048988c    d981047d0100
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]                     // 0x00489892    d81d78b68a00
                         fnstsw             ax                                                   // 0x00489898    dfe0
                         test               ah, 0x01                                             // 0x0048989a    f6c401
                         {disp8} je         _jmp_addr_0x004898ab                                 // 0x0048989d    740c
                         {disp32} mov       dword ptr [ecx + 0x00017d04], 0xbf800000             // 0x0048989f    c781047d0100000080bf
                         {disp8} jmp        _jmp_addr_0x004898c8                                 // 0x004898a9    eb1d
_jmp_addr_0x004898ab:    {disp32} fld       dword ptr [ecx + 0x00017d04]                         // 0x004898ab    d981047d0100
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x004898b1    d81d90a38a00
                         fnstsw             ax                                                   // 0x004898b7    dfe0
                         test               ah, 0x41                                             // 0x004898b9    f6c441
                         {disp8} jne        _jmp_addr_0x004898c8                                 // 0x004898bc    750a
                         {disp32} mov       dword ptr [ecx + 0x00017d04], 0x3f800000             // 0x004898be    c781047d01000000803f
_jmp_addr_0x004898c8:    {disp32} mov       eax, dword ptr [_game]                               // 0x004898c8    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250060]                    // 0x004898cd    8b8860002500
                         push               0x25                                                 // 0x004898d3    6a25
                         call               ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z      // 0x004898d5    e806ae1300
_jmp_addr_0x004898da:    cmp                edi, 0x03                                            // 0x004898da    83ff03
                         {disp8} jne        _jmp_addr_0x004898f0                                 // 0x004898dd    7511
_jmp_addr_0x004898df:    push               0x0                                                  // 0x004898df    6a00
                         push               0x3                                                  // 0x004898e1    6a03
                         mov.s              ecx, esi                                             // 0x004898e3    8bce
                         call               _jmp_addr_0x00489ce0                                 // 0x004898e5    e8f6030000
                         pop                edi                                                  // 0x004898ea    5f
                         pop                esi                                                  // 0x004898eb    5e
                         add                esp, 0x08                                            // 0x004898ec    83c408
                         ret                                                                     // 0x004898ef    c3
_jmp_addr_0x004898f0:    {disp32} mov       eax, dword ptr [esi + 0x00004af4]                    // 0x004898f0    8b86f44a0000
                         cmp                eax, -0x01                                           // 0x004898f6    83f8ff
                         {disp8} je         _jmp_addr_0x00489923                                 // 0x004898f9    7428
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x004898fb    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000                   // 0x004898ff    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                               // 0x00489907    df6c2408
                         push               ecx                                                  // 0x0048990b    51
                         mov.s              ecx, esi                                             // 0x0048990c    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26174]                    // 0x0048990e    d80d74f18c00
                         {disp32} fadd      qword ptr [__real@3fe0000000000000]                  // 0x00489914    dc0560b28a00
                         fstp               dword ptr [esp]                                      // 0x0048991a    d91c24
                         push               edi                                                  // 0x0048991d    57
                         call               _jmp_addr_0x00489ce0                                 // 0x0048991e    e8bd030000
_jmp_addr_0x00489923:    pop                edi                                                  // 0x00489923    5f
                         pop                esi                                                  // 0x00489924    5e
                         add                esp, 0x08                                            // 0x00489925    83c408
                         ret                                                                     // 0x00489928    c3
                         nop                                                                     // 0x00489929    90
                         nop                                                                     // 0x0048992a    90
                         nop                                                                     // 0x0048992b    90
                         nop                                                                     // 0x0048992c    90
                         nop                                                                     // 0x0048992d    90
                         nop                                                                     // 0x0048992e    90
                         nop                                                                     // 0x0048992f    90
_jmp_addr_0x00489930:    push               ecx                                                  // 0x00489930    51
                         push               ebx                                                  // 0x00489931    53
                         mov.s              ebx, ecx                                             // 0x00489932    8bd9
                         cmp                dword ptr [ebx + 0x0000579c], 0x02                   // 0x00489934    83bb9c57000002
                         push               esi                                                  // 0x0048993b    56
                         {disp32} je        _jmp_addr_0x00489a1b                                 // 0x0048993c    0f84d9000000
                         {disp32} mov       esi, dword ptr [ebx + 0x00004ac0]                    // 0x00489942    8bb3c04a0000
                         dec                esi                                                  // 0x00489948    4e
                         mov.s              eax, esi                                             // 0x00489949    8bc6
                         xor.s              ecx, ecx                                             // 0x0048994b    33c9
                         test               eax, eax                                             // 0x0048994d    85c0
                         {disp32} mov       dword ptr [ebx + 0x00004ac0], esi                    // 0x0048994f    89b3c04a0000
                         {disp8} jle        _jmp_addr_0x00489976                                 // 0x00489955    7e1f
                         {disp32} lea       eax, dword ptr [ebx + 0x00004ac4]                    // 0x00489957    8d83c44a0000
_jmp_addr_0x0048995d:    {disp8} mov        edx, dword ptr [eax + 0x04]                          // 0x0048995d    8b5004
                         mov                dword ptr [eax], edx                                 // 0x00489960    8910
                         {disp8} mov        edx, dword ptr [eax + 0x34]                          // 0x00489962    8b5034
                         {disp8} mov        dword ptr [eax + 0x30], edx                          // 0x00489965    895030
                         {disp32} mov       edx, dword ptr [ebx + 0x00004ac0]                    // 0x00489968    8b93c04a0000
                         inc                ecx                                                  // 0x0048996e    41
                         add                eax, 0x04                                            // 0x0048996f    83c004
                         cmp.s              ecx, edx                                             // 0x00489972    3bca
                         {disp8} jl         _jmp_addr_0x0048995d                                 // 0x00489974    7ce7
_jmp_addr_0x00489976:    {disp32} mov       eax, dword ptr [ebx + 0x00004b30]                    // 0x00489976    8b83304b0000
                         test               eax, eax                                             // 0x0048997c    85c0
                         {disp32} jle       _jmp_addr_0x00489a1b                                 // 0x0048997e    0f8e97000000
                         dec                eax                                                  // 0x00489984    48
                         test               eax, eax                                             // 0x00489985    85c0
                         {disp32} mov       dword ptr [ebx + 0x00004b30], eax                    // 0x00489987    8983304b0000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000                   // 0x0048998d    c744240800000000
                         {disp32} jle       _jmp_addr_0x00489a1b                                 // 0x00489995    0f8e80000000
                         push               ebp                                                  // 0x0048999b    55
                         push               edi                                                  // 0x0048999c    57
                         {disp32} lea       edx, dword ptr [ebx + 0x00004da4]                    // 0x0048999d    8d93a44d0000
                         {disp32} lea       ebp, dword ptr [ebx + 0x00004bc4]                    // 0x004899a3    8dabc44b0000
                         {disp32} lea       eax, dword ptr [ebx + 0x00004b34]                    // 0x004899a9    8d83344b0000
_jmp_addr_0x004899af:    {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x004899af    8b4804
                         mov                dword ptr [eax], ecx                                 // 0x004899b2    8908
                         {disp8} mov        ecx, dword ptr [eax + 0x34]                          // 0x004899b4    8b4834
                         {disp8} mov        dword ptr [eax + 0x30], ecx                          // 0x004899b7    894830
                         {disp8} mov        ecx, dword ptr [eax + 0x64]                          // 0x004899ba    8b4864
                         {disp8} mov        dword ptr [eax + 0x60], ecx                          // 0x004899bd    894860
                         {disp8} lea        esi, dword ptr [ebp + 0x28]                          // 0x004899c0    8d7528
                         mov.s              edi, ebp                                             // 0x004899c3    8bfd
                         mov                ecx, 0x0000000a                                      // 0x004899c5    b90a000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x004899ca    f3a5
                         {disp8} lea        ecx, dword ptr [edx + 0x0c]                          // 0x004899cc    8d4a0c
                         mov                edi, dword ptr [ecx]                                 // 0x004899cf    8b39
                         mov.s              esi, edx                                             // 0x004899d1    8bf2
                         mov                dword ptr [esi], edi                                 // 0x004899d3    893e
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                          // 0x004899d5    8b7904
                         {disp8} mov        dword ptr [esi + 0x04], edi                          // 0x004899d8    897e04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x004899db    8b4908
                         {disp8} mov        dword ptr [esi + 0x08], ecx                          // 0x004899de    894e08
                         {disp32} lea       ecx, dword ptr [edx + 0x0000009c]                    // 0x004899e1    8d8a9c000000
                         mov                edi, dword ptr [ecx]                                 // 0x004899e7    8b39
                         {disp32} lea       esi, dword ptr [edx + 0x00000090]                    // 0x004899e9    8db290000000
                         mov                dword ptr [esi], edi                                 // 0x004899ef    893e
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                          // 0x004899f1    8b7904
                         {disp8} mov        dword ptr [esi + 0x04], edi                          // 0x004899f4    897e04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x004899f7    8b4908
                         {disp8} mov        dword ptr [esi + 0x08], ecx                          // 0x004899fa    894e08
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x004899fd    8b4c2410
                         {disp32} mov       esi, dword ptr [ebx + 0x00004b30]                    // 0x00489a01    8bb3304b0000
                         inc                ecx                                                  // 0x00489a07    41
                         add                eax, 0x04                                            // 0x00489a08    83c004
                         add                ebp, 0x28                                            // 0x00489a0b    83c528
                         add                edx, 0x0c                                            // 0x00489a0e    83c20c
                         cmp.s              ecx, esi                                             // 0x00489a11    3bce
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x00489a13    894c2410
                         {disp8} jl         _jmp_addr_0x004899af                                 // 0x00489a17    7c96
                         pop                edi                                                  // 0x00489a19    5f
                         pop                ebp                                                  // 0x00489a1a    5d
_jmp_addr_0x00489a1b:    pop                esi                                                  // 0x00489a1b    5e
                         pop                ebx                                                  // 0x00489a1c    5b
                         pop                ecx                                                  // 0x00489a1d    59
                         ret                                                                     // 0x00489a1e    c3
                         nop                                                                     // 0x00489a1f    90
_jmp_addr_0x00489a20:    push               ebx                                                  // 0x00489a20    53
                         push               ebp                                                  // 0x00489a21    55
                         mov.s              ebp, ecx                                             // 0x00489a22    8be9
                         cmp                dword ptr [ebp + 0x0000579c], 0x02                   // 0x00489a24    83bd9c57000002
                         mov                ebx, 0x00000001                                      // 0x00489a2b    bb01000000
                         {disp8} jne        _jmp_addr_0x00489a38                                 // 0x00489a30    7506
                         {disp32} mov       dword ptr [ebp + 0x0000579c], ebx                    // 0x00489a32    899d9c570000
_jmp_addr_0x00489a38:    {disp32} fld       dword ptr [rdata_bytes + 0x260ac]                    // 0x00489a38    d905acf08c00
                         call               _jmp_addr_0x007a1400                                 // 0x00489a3e    e8bd793100
                         {disp32} mov       dword ptr [ebp + 0x00004ab8], eax                    // 0x00489a43    8985b84a0000
                         {disp8} mov        al, byte ptr [esp + 0x10]                            // 0x00489a49    8a442410
                         xor.s              edx, edx                                             // 0x00489a4d    33d2
                         cmp.s              al, dl                                               // 0x00489a4f    3ac2
                         {disp32} je        _jmp_addr_0x00489af2                                 // 0x00489a51    0f849b000000
                         {disp32} mov       eax, dword ptr [ebp + 0x00004b30]                    // 0x00489a57    8b85304b0000
                         cmp.s              eax, ebx                                             // 0x00489a5d    3bc3
                         {disp32} mov       dword ptr [ebp + 0x00004ac0], edx                    // 0x00489a5f    8995c04a0000
                         {disp8} jle        _jmp_addr_0x00489ae6                                 // 0x00489a65    7e7f
                         push               esi                                                  // 0x00489a67    56
                         push               edi                                                  // 0x00489a68    57
                         lea                ecx, dword ptr [eax + eax * 0x4]                     // 0x00489a69    8d0c80
                         {disp32} lea       esi, dword ptr [ebp + ecx * 0x8 + 0x00004b9c]        // 0x00489a6c    8db4cd9c4b0000
                         {disp32} lea       edi, dword ptr [ebp + 0x00004bc4]                    // 0x00489a73    8dbdc44b0000
                         mov                ecx, 0x0000000a                                      // 0x00489a79    b90a000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                         // 0x00489a7e    f3a5
                         {disp32} mov       ecx, dword ptr [ebp + eax * 0x4 + 0x00004b30]        // 0x00489a80    8b8c85304b0000
                         {disp32} mov       dword ptr [ebp + 0x00004b34], ecx                    // 0x00489a87    898d344b0000
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x00489a8d    8d0c40
                         {disp8} lea        ecx, dword ptr [ebp + ecx * 0x4 + 0x00]              // 0x00489a90    8d4c8d00
                         {disp32} lea       esi, dword ptr [ecx + 0x00004d98]                    // 0x00489a94    8db1984d0000
                         mov                ebx, dword ptr [esi]                                 // 0x00489a9a    8b1e
                         {disp32} lea       edi, dword ptr [ebp + 0x00004da4]                    // 0x00489a9c    8dbda44d0000
                         mov                dword ptr [edi], ebx                                 // 0x00489aa2    891f
                         {disp8} mov        ebx, dword ptr [esi + 0x04]                          // 0x00489aa4    8b5e04
                         {disp8} mov        dword ptr [edi + 0x04], ebx                          // 0x00489aa7    895f04
                         {disp8} mov        esi, dword ptr [esi + 0x08]                          // 0x00489aaa    8b7608
                         {disp8} mov        dword ptr [edi + 0x08], esi                          // 0x00489aad    897708
                         add                ecx, 0x00004e28                                      // 0x00489ab0    81c1284e0000
                         mov                edi, dword ptr [ecx]                                 // 0x00489ab6    8b39
                         {disp32} lea       esi, dword ptr [ebp + 0x00004e34]                    // 0x00489ab8    8db5344e0000
                         mov                dword ptr [esi], edi                                 // 0x00489abe    893e
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                          // 0x00489ac0    8b7904
                         {disp8} mov        dword ptr [esi + 0x04], edi                          // 0x00489ac3    897e04
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x00489ac6    8b4908
                         {disp8} mov        dword ptr [esi + 0x08], ecx                          // 0x00489ac9    894e08
                         {disp32} mov       eax, dword ptr [ebp + eax * 0x4 + 0x00004b60]        // 0x00489acc    8b8485604b0000
                         mov                ebx, 0x00000001                                      // 0x00489ad3    bb01000000
                         pop                edi                                                  // 0x00489ad8    5f
                         {disp32} mov       dword ptr [ebp + 0x00004b64], eax                    // 0x00489ad9    8985644b0000
                         {disp32} mov       dword ptr [ebp + 0x00004b30], ebx                    // 0x00489adf    899d304b0000
                         pop                esi                                                  // 0x00489ae5    5e
_jmp_addr_0x00489ae6:    {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x00489ae6    8b44240c
                         {disp32} mov       dword ptr [ebp + 0x00004ac4], eax                    // 0x00489aea    8985c44a0000
                         {disp8} jmp        _jmp_addr_0x00489b16                                 // 0x00489af0    eb24
_jmp_addr_0x00489af2:    {disp32} mov       ecx, dword ptr [ebp + 0x00004ac0]                    // 0x00489af2    8b8dc04a0000
                         cmp                ecx, dword ptr [ebp + 0x00004abc]                    // 0x00489af8    3b8dbc4a0000
                         {disp8} jne        _jmp_addr_0x00489b0b                                 // 0x00489afe    750b
                         {disp32} mov       byte ptr [ebp + 0x00004b24], dl                      // 0x00489b00    8895244b0000
                         pop                ebp                                                  // 0x00489b06    5d
                         pop                ebx                                                  // 0x00489b07    5b
                         ret                0x0008                                               // 0x00489b08    c20800
_jmp_addr_0x00489b0b:    {disp8} mov        eax, dword ptr [esp + 0x0c]                          // 0x00489b0b    8b44240c
                         {disp32} mov       dword ptr [ebp + ecx * 0x4 + 0x00004ac4], eax        // 0x00489b0f    89848dc44a0000
_jmp_addr_0x00489b16:    {disp32} mov       ecx, dword ptr [ebp + 0x00004ac0]                    // 0x00489b16    8b8dc04a0000
                         {disp32} mov       dword ptr [ebp + ecx * 0x4 + 0x00004af4], 0xffffffff // 0x00489b1c    c7848df44a0000ffffffff
                         {disp32} mov       ecx, dword ptr [ebp + 0x00004ac0]                    // 0x00489b27    8b8dc04a0000
                         inc                ecx                                                  // 0x00489b2d    41
                         cmp                eax, 0x04                                            // 0x00489b2e    83f804
                         {disp32} mov       dword ptr [ebp + 0x00004ac0], ecx                    // 0x00489b31    898dc04a0000
                         {disp8} je         _jmp_addr_0x00489b73                                 // 0x00489b37    743a
                         test               ah, 0x40                                             // 0x00489b39    f6c440
                         {disp8} jne        _jmp_addr_0x00489b73                                 // 0x00489b3c    7535
                         cmp                eax, 0x03                                            // 0x00489b3e    83f803
                         {disp8} je         _jmp_addr_0x00489b5a                                 // 0x00489b41    7417
                         test               ah, -0x80                                            // 0x00489b43    f6c480
                         {disp8} jne        _jmp_addr_0x00489b5a                                 // 0x00489b46    7512
                         mov.s              ecx, ebp                                             // 0x00489b48    8bcd
                         {disp32} mov       byte ptr [ebp + 0x00004b24], bl                      // 0x00489b4a    889d244b0000
                         call               _jmp_addr_0x00489540                                 // 0x00489b50    e8ebf9ffff
                         pop                ebp                                                  // 0x00489b55    5d
                         pop                ebx                                                  // 0x00489b56    5b
                         ret                0x0008                                               // 0x00489b57    c20800
_jmp_addr_0x00489b5a:    {disp32} mov       byte ptr [ebp + 0x00004b24], dl                      // 0x00489b5a    8895244b0000
                         {disp32} mov       dword ptr [ebp + ecx * 0x4 + 0x00004af0], edx        // 0x00489b60    89948df04a0000
                         mov.s              ecx, ebp                                             // 0x00489b67    8bcd
                         call               _jmp_addr_0x00489540                                 // 0x00489b69    e8d2f9ffff
                         pop                ebp                                                  // 0x00489b6e    5d
                         pop                ebx                                                  // 0x00489b6f    5b
                         ret                0x0008                                               // 0x00489b70    c20800
_jmp_addr_0x00489b73:    {disp32} mov       byte ptr [ebp + 0x00004b24], dl                      // 0x00489b73    8895244b0000
                         {disp32} mov       dword ptr [ebp + ecx * 0x4 + 0x00004af0], 0x000004b0 // 0x00489b79    c7848df04a0000b0040000
                         mov.s              ecx, ebp                                             // 0x00489b84    8bcd
                         call               _jmp_addr_0x00489540                                 // 0x00489b86    e8b5f9ffff
                         pop                ebp                                                  // 0x00489b8b    5d
                         pop                ebx                                                  // 0x00489b8c    5b
                         ret                0x0008                                               // 0x00489b8d    c20800
_jmp_addr_0x00489b90:    sub                esp, 0x40                                            // 0x00489b90    83ec40
                         {disp8} mov        eax, dword ptr [esp + 0x44]                          // 0x00489b93    8b442444
                         fld                dword ptr [eax]                                      // 0x00489b97    d900
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000                   // 0x00489b99    c744244400000000
                         {disp8} fsub       dword ptr [ecx + 0x78]                               // 0x00489ba1    d86178
                         {disp8} fld        dword ptr [eax + 0x04]                               // 0x00489ba4    d94004
                         {disp8} fsub       dword ptr [ecx + 0x7c]                               // 0x00489ba7    d8617c
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x00489baa    d95c2408
                         {disp8} fld        dword ptr [eax + 0x08]                               // 0x00489bae    d94008
                         {disp32} fsub      dword ptr [ecx + 0x00000080]                         // 0x00489bb1    d8a180000000
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x00489bb7    d95c240c
                         {disp32} fld       dword ptr [ecx + 0x00000084]                         // 0x00489bbb    d98184000000
                         fchs                                                                    // 0x00489bc1    d9e0
                         fld                st(0)                                                // 0x00489bc3    d9c0
                         fcos                                                                    // 0x00489bc5    d9ff
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x00489bc7    d95c2430
                         fsin                                                                    // 0x00489bcb    d9fe
                         {disp8} fst        dword ptr [esp + 0x18]                               // 0x00489bcd    d9542418
                         fchs                                                                    // 0x00489bd1    d9e0
                         fld                st(1)                                                // 0x00489bd3    d9c1
                         {disp8} fstp       dword ptr [esp + 0x00]                               // 0x00489bd5    d95c2400
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x00489bd9    d9442430
                         fmul               st, st(2)                                            // 0x00489bdd    d8ca
                         fxch               st(1)                                                // 0x00489bdf    d9c9
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x00489be1    d84c240c
                         faddp              st(1), st                                            // 0x00489be5    dec1
                         {disp8} fadd       dword ptr [esp + 0x44]                               // 0x00489be7    d8442444
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x00489beb    d95c2404
                         fstp               st(0)                                                // 0x00489bef    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x00489bf1    d9442418
                         {disp8} fmul       dword ptr [esp + 0x00]                               // 0x00489bf5    d84c2400
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x00489bf9    d9442430
                         {disp8} fmul       dword ptr [esp + 0x0c]                               // 0x00489bfd    d84c240c
                         faddp              st(1), st                                            // 0x00489c01    dec1
                         {disp8} fadd       dword ptr [esp + 0x44]                               // 0x00489c03    d8442444
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x00489c07    d95c240c
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x00489c0b    d9442404
                         fabs                                                                    // 0x00489c0f    d9e1
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x00489c11    d944240c
                         fchs                                                                    // 0x00489c15    d9e0
                         fcomp              st(1)                                                // 0x00489c17    d8d9
                         fnstsw             ax                                                   // 0x00489c19    dfe0
                         test               ah, 0x41                                             // 0x00489c1b    f6c441
                         {disp8} jne        _jmp_addr_0x00489c39                                 // 0x00489c1e    7519
                         {disp8} mov        eax, dword ptr [esp + 0x48]                          // 0x00489c20    8b442448
                         fstp               st(0)                                                // 0x00489c24    ddd8
                         push               eax                                                  // 0x00489c26    50
                         push               0x00008089                                           // 0x00489c27    6889800000
                         call               _jmp_addr_0x00489a20                                 // 0x00489c2c    e8effdffff
                         mov                al, 0x01                                             // 0x00489c31    b001
                         add                esp, 0x40                                            // 0x00489c33    83c440
                         ret                0x0008                                               // 0x00489c36    c20800
_jmp_addr_0x00489c39:    {disp8} fld        dword ptr [esp + 0x0c]                               // 0x00489c39    d944240c
                         fcomp              st(1)                                                // 0x00489c3d    d8d9
                         fnstsw             ax                                                   // 0x00489c3f    dfe0
                         fstp               st(0)                                                // 0x00489c41    ddd8
                         test               ah, 0x41                                             // 0x00489c43    f6c441
                         {disp8} jne        _jmp_addr_0x00489c5f                                 // 0x00489c46    7517
                         {disp8} mov        edx, dword ptr [esp + 0x48]                          // 0x00489c48    8b542448
                         push               edx                                                  // 0x00489c4c    52
                         push               0x0000808a                                           // 0x00489c4d    688a800000
                         call               _jmp_addr_0x00489a20                                 // 0x00489c52    e8c9fdffff
                         mov                al, 0x01                                             // 0x00489c57    b001
                         add                esp, 0x40                                            // 0x00489c59    83c440
                         ret                0x0008                                               // 0x00489c5c    c20800
_jmp_addr_0x00489c5f:    {disp8} fld        dword ptr [esp + 0x04]                               // 0x00489c5f    d9442404
                         fchs                                                                    // 0x00489c63    d9e0
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x00489c65    d944240c
                         fabs                                                                    // 0x00489c69    d9e1
                         fxch               st(1)                                                // 0x00489c6b    d9c9
                         fxch               st(1)                                                // 0x00489c6d    d9c9
                         fcompp                                                                  // 0x00489c6f    ded9
                         fnstsw             ax                                                   // 0x00489c71    dfe0
                         test               ah, 0x01                                             // 0x00489c73    f6c401
                         {disp8} je         _jmp_addr_0x00489c8f                                 // 0x00489c76    7417
                         {disp8} mov        eax, dword ptr [esp + 0x48]                          // 0x00489c78    8b442448
                         push               eax                                                  // 0x00489c7c    50
                         push               0x0000808b                                           // 0x00489c7d    688b800000
                         call               _jmp_addr_0x00489a20                                 // 0x00489c82    e899fdffff
                         mov                al, 0x01                                             // 0x00489c87    b001
                         add                esp, 0x40                                            // 0x00489c89    83c440
                         ret                0x0008                                               // 0x00489c8c    c20800
_jmp_addr_0x00489c8f:    {disp8} mov        edx, dword ptr [esp + 0x48]                          // 0x00489c8f    8b542448
                         push               edx                                                  // 0x00489c93    52
                         push               0x0000808c                                           // 0x00489c94    688c800000
                         call               _jmp_addr_0x00489a20                                 // 0x00489c99    e882fdffff
                         mov                al, 0x01                                             // 0x00489c9e    b001
                         add                esp, 0x40                                            // 0x00489ca0    83c440
                         ret                0x0008                                               // 0x00489ca3    c20800
                         nop                                                                     // 0x00489ca6    90
                         nop                                                                     // 0x00489ca7    90
                         nop                                                                     // 0x00489ca8    90
                         nop                                                                     // 0x00489ca9    90
                         nop                                                                     // 0x00489caa    90
                         nop                                                                     // 0x00489cab    90
                         nop                                                                     // 0x00489cac    90
                         nop                                                                     // 0x00489cad    90
                         nop                                                                     // 0x00489cae    90
                         nop                                                                     // 0x00489caf    90
_jmp_addr_0x00489cb0:    {disp32} mov       eax, dword ptr [ecx + 0x000049a0]                    // 0x00489cb0    8b81a0490000
                         cmp                eax, 0x000000b3                                      // 0x00489cb6    3db3000000
                         {disp8} jl         _jmp_addr_0x00489cc4                                 // 0x00489cbb    7c07
                         cmp                eax, 0x000000c1                                      // 0x00489cbd    3dc1000000
                         {disp8} jle        _jmp_addr_0x00489cd7                                 // 0x00489cc2    7e13
_jmp_addr_0x00489cc4:    {disp32} mov       ecx, dword ptr [ecx + 0x00004994]                    // 0x00489cc4    8b8994490000
                         cmp                ecx, 0x1c                                            // 0x00489cca    83f91c
                         {disp8} je         _jmp_addr_0x00489cd7                                 // 0x00489ccd    7408
                         cmp                ecx, 0x1e                                            // 0x00489ccf    83f91e
                         {disp8} je         _jmp_addr_0x00489cd7                                 // 0x00489cd2    7403
                         xor.s              eax, eax                                             // 0x00489cd4    33c0
                         ret                                                                     // 0x00489cd6    c3
_jmp_addr_0x00489cd7:    mov                eax, 0x00000001                                      // 0x00489cd7    b801000000
                         ret                                                                     // 0x00489cdc    c3
                         nop                                                                     // 0x00489cdd    90
                         nop                                                                     // 0x00489cde    90
                         nop                                                                     // 0x00489cdf    90
_jmp_addr_0x00489ce0:    sub                esp, 0x00000114                                      // 0x00489ce0    81ec14010000
                         push               ebx                                                  // 0x00489ce6    53
                         push               ebp                                                  // 0x00489ce7    55
                         mov.s              ebx, ecx                                             // 0x00489ce8    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x00004994]                    // 0x00489cea    8b8394490000
                         cmp                eax, 0x17                                            // 0x00489cf0    83f817
                         push               esi                                                  // 0x00489cf3    56
                         push               edi                                                  // 0x00489cf4    57
                         {disp8} je         _jmp_addr_0x00489d05                                 // 0x00489cf5    740e
                         cmp                eax, 0x1b                                            // 0x00489cf7    83f81b
                         {disp8} je         _jmp_addr_0x00489d05                                 // 0x00489cfa    7409
                         cmp                eax, 0x24                                            // 0x00489cfc    83f824
                         {disp32} jne       _jmp_addr_0x0048a349                                 // 0x00489cff    0f8544060000
_jmp_addr_0x00489d05:    {disp32} mov       ecx, dword ptr [ebx + 0x0000528c]                    // 0x00489d05    8b8b8c520000
                         test               ecx, ecx                                             // 0x00489d0b    85c9
                         {disp32} je        _jmp_addr_0x0048a349                                 // 0x00489d0d    0f8436060000
                         call               _jmp_addr_0x004867b0                                 // 0x00489d13    e898caffff
                         {disp8} fstp       dword ptr [esp + 0x2c]                               // 0x00489d18    d95c242c
                         {disp32} mov       eax, dword ptr [esp + 0x00000128]                    // 0x00489d1c    8b842428010000
                         cmp                eax, 0x04                                            // 0x00489d23    83f804
                         {disp8} ja         _jmp_addr_0x00489d45                                 // 0x00489d26    771d
                         jmp                dword ptr [eax*4 + 0x48a358]                         // 0x00489d28    ff248558a34800
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                          // 0x00489d2f    8b44242c
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x00489d33    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26128]                    // 0x00489d37    d80d28f18c00
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x00489d3d    89442424
_jmp_addr_0x00489d41:    {disp8} fstp       dword ptr [esp + 0x28]                               // 0x00489d41    d95c2428
_jmp_addr_0x00489d45:    {disp32} mov       eax, dword ptr [ebx + 0x0000528c]                    // 0x00489d45    8b838c520000
                         {disp32} fld       dword ptr [eax + 0x00000080]                         // 0x00489d4b    d98080000000
                         add                eax, 0x78                                            // 0x00489d51    83c078
                         {disp32} fsub      dword ptr [ebx + 0x00000080]                         // 0x00489d54    d8a380000000
                         {disp8} fld        dword ptr [eax + 0x04]                               // 0x00489d5a    d94004
                         {disp8} fsub       dword ptr [ebx + 0x7c]                               // 0x00489d5d    d8637c
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x00489d60    d95c2410
                         fld                dword ptr [eax]                                      // 0x00489d64    d900
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x00489d66    8b4c2410
                         {disp8} fsub       dword ptr [ebx + 0x78]                               // 0x00489d6a    d86378
                         {disp8} mov        dword ptr [esp + 0x40], ecx                          // 0x00489d6d    894c2440
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x00489d71    d95c243c
                         {disp8} fst        dword ptr [esp + 0x44]                               // 0x00489d75    d9542444
                         {disp8} fld        dword ptr [esp + 0x3c]                               // 0x00489d79    d944243c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00489d7d    d81d98a38a00
                         fnstsw             ax                                                   // 0x00489d83    dfe0
                         test               ah, 0x40                                             // 0x00489d85    f6c440
                         {disp8} je         _jmp_addr_0x00489da8                                 // 0x00489d88    741e
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00489d8a    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x00489d8e    d81d98a38a00
                         fnstsw             ax                                                   // 0x00489d94    dfe0
                         test               ah, 0x40                                             // 0x00489d96    f6c440
                         {disp8} je         _jmp_addr_0x00489da8                                 // 0x00489d99    740d
                         {disp32} fcom      dword ptr [_rdata_float0p0]                          // 0x00489d9b    d81598a38a00
                         fnstsw             ax                                                   // 0x00489da1    dfe0
                         test               ah, 0x40                                             // 0x00489da3    f6c440
                         {disp8} jne        _jmp_addr_0x00489de2                                 // 0x00489da6    753a
_jmp_addr_0x00489da8:    {disp8} fld        dword ptr [esp + 0x3c]                               // 0x00489da8    d944243c
                         {disp8} fmul       dword ptr [esp + 0x3c]                               // 0x00489dac    d84c243c
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x00489db0    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00489db4    d84c2410
                         faddp              st(1), st                                            // 0x00489db8    dec1
                         fld                st(1)                                                // 0x00489dba    d9c1
                         fmul               st, st(2)                                            // 0x00489dbc    d8ca
                         faddp              st(1), st                                            // 0x00489dbe    dec1
                         fsqrt                                                                   // 0x00489dc0    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                          // 0x00489dc2    d83d90a38a00
                         fld                st(0)                                                // 0x00489dc8    d9c0
                         {disp8} fmul       dword ptr [esp + 0x3c]                               // 0x00489dca    d84c243c
                         {disp8} fstp       dword ptr [esp + 0x3c]                               // 0x00489dce    d95c243c
                         fld                st(0)                                                // 0x00489dd2    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00489dd4    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x40]                               // 0x00489dd8    d95c2440
                         fmul               st, st(1)                                            // 0x00489ddc    d8c9
                         {disp8} fstp       dword ptr [esp + 0x44]                               // 0x00489dde    d95c2444
_jmp_addr_0x00489de2:    {disp32} lea       edx, dword ptr [esp + 0x00000088]                    // 0x00489de2    8d942488000000
                         fstp               st(0)                                                // 0x00489de9    ddd8
                         push               edx                                                  // 0x00489deb    52
                         mov.s              ecx, ebx                                             // 0x00489dec    8bcb
                         call               _jmp_addr_0x004ebe10                                 // 0x00489dee    e81d200600
                         xor.s              eax, eax                                             // 0x00489df3    33c0
                         mov                ecx, 0x0000000c                                      // 0x00489df5    b90c000000
                         {disp32} lea       edi, dword ptr [esp + 0x000000f4]                    // 0x00489dfa    8dbc24f4000000
                         rep stosd                                                               // 0x00489e01    f3ab
                         {disp32} mov       eax, dword ptr [ebx + 0x0000528c]                    // 0x00489e03    8b838c520000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000                   // 0x00489e09    c744243400000000
                         push               ecx                                                  // 0x00489e11    51
                         {disp32} fld       dword ptr [eax + 0x00000090]                         // 0x00489e12    d98090000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x00489e18    c744242000000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]                    // 0x00489e20    d80d402c8c00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x26188]                    // 0x00489e26    dc0d88f18c00
                         {disp8} fst        dword ptr [esp + 0x14]                               // 0x00489e2c    d9542414
                         fadd.s             st(0), st(0)                                         // 0x00489e30    dcc0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x00489e32    d80d04c48a00
                         {disp8} fstp       dword ptr [esp + 0x18]                               // 0x00489e38    d95c2418
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x00489e3c    d90598a38a00
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x00489e42    d9442448
                         fsub               st, st(1)                                            // 0x00489e46    d8e1
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x00489e48    d95c2434
                         {disp8} fsub       dword ptr [esp + 0x40]                               // 0x00489e4c    d8642440
                         {disp8} fst        dword ptr [esp + 0x3c]                               // 0x00489e50    d954243c
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x00489e54    d9442438
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x00489e58    d9442434
                         {disp8} fmul       dword ptr [esp + 0x34]                               // 0x00489e5c    d84c2434
                         fld                st(1)                                                // 0x00489e60    d9c1
                         fmul               st, st(2)                                            // 0x00489e62    d8ca
                         faddp              st(1), st                                            // 0x00489e64    dec1
                         fld                st(2)                                                // 0x00489e66    d9c2
                         fmul               st, st(3)                                            // 0x00489e68    d8cb
                         faddp              st(1), st                                            // 0x00489e6a    dec1
                         fstp               dword ptr [esp]                                      // 0x00489e6c    d91c24
                         fstp               st(0)                                                // 0x00489e6f    ddd8
                         fstp               st(0)                                                // 0x00489e71    ddd8
                         call               _jmp_addr_0x00841170                                 // 0x00489e73    e8f8723b00
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x00489e78    d9442434
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000528c]                    // 0x00489e7c    8b8b8c520000
                         fmul               st, st(1)                                            // 0x00489e82    d8c9
                         add                esp, 0x04                                            // 0x00489e84    83c404
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x00489e87    d95c2430
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x00489e8b    d9442434
                         fmul               st, st(1)                                            // 0x00489e8f    d8c9
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x00489e91    d95c2434
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x00489e95    d9442438
                         fmul               st, st(1)                                            // 0x00489e99    d8c9
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x00489e9b    d95c2438
                         fstp               st(0)                                                // 0x00489e9f    ddd8
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x00489ea1    d9442430
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x00489ea5    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x64]                               // 0x00489ea9    d95c2464
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x00489ead    d9442434
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x00489eb1    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x68]                               // 0x00489eb5    d95c2468
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x00489eb9    d9442438
                         {disp8} fmul       dword ptr [esp + 0x14]                               // 0x00489ebd    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x6c]                               // 0x00489ec1    d95c246c
                         call               _jmp_addr_0x00483160                                 // 0x00489ec5    e89692ffff
                         mov                esi, 0x0000007d                                      // 0x00489eca    be7d000000
                         {disp32} lea       ebp, dword ptr [ebx + 0x00004ecc]                    // 0x00489ecf    8dabcc4e0000
                         {disp8} mov        dword ptr [esp + 0x48], eax                          // 0x00489ed5    89442448
                         {disp8} mov        dword ptr [esp + 0x18], esi                          // 0x00489ed9    89742418
                         {disp8} mov        dword ptr [esp + 0x20], ebp                          // 0x00489edd    896c2420
                         xor.s              edi, edi                                             // 0x00489ee1    33ff
_jmp_addr_0x00489ee3:    cmp                esi, 0x00000082                                      // 0x00489ee3    81fe82000000
                         {disp32} je        _jmp_addr_0x0048a18a                                 // 0x00489ee9    0f849b020000
                         push               0x0                                                  // 0x00489eef    6a00
                         push               esi                                                  // 0x00489ef1    56
                         mov.s              ecx, ebx                                             // 0x00489ef2    8bcb
                         call               @GetAnim__9MorphableFll@16                           // 0x00489ef4    e857f71800
                         test               eax, eax                                             // 0x00489ef9    85c0
                         {disp32} je        _jmp_addr_0x0048a18a                                 // 0x00489efb    0f8489020000
                         {disp8} fld        dword ptr [ebp + -0x04]                              // 0x00489f01    d945fc
                         {disp8} fld        dword ptr [ebp + 0x00]                               // 0x00489f04    d94500
                         {disp32} fld       dword ptr [esp + 0x000000a0]                         // 0x00489f07    d98424a0000000
                         fmul               st, st(1)                                            // 0x00489f0e    d8c9
                         {disp32} fld       dword ptr [esp + 0x00000094]                         // 0x00489f10    d9842494000000
                         fmul               st, st(3)                                            // 0x00489f17    d8cb
                         faddp              st(1), st                                            // 0x00489f19    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000ac]                         // 0x00489f1b    d88424ac000000
                         {disp8} fstp       dword ptr [esp + 0x58]                               // 0x00489f22    d95c2458
                         {disp32} fld       dword ptr [esp + 0x000000a4]                         // 0x00489f26    d98424a4000000
                         fmul               st, st(1)                                            // 0x00489f2d    d8c9
                         {disp32} fld       dword ptr [esp + 0x00000098]                         // 0x00489f2f    d9842498000000
                         fmul               st, st(3)                                            // 0x00489f36    d8cb
                         faddp              st(1), st                                            // 0x00489f38    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000b0]                         // 0x00489f3a    d88424b0000000
                         {disp8} fstp       dword ptr [esp + 0x5c]                               // 0x00489f41    d95c245c
                         {disp32} fld       dword ptr [esp + 0x000000a8]                         // 0x00489f45    d98424a8000000
                         fmul               st, st(1)                                            // 0x00489f4c    d8c9
                         {disp32} fld       dword ptr [esp + 0x0000009c]                         // 0x00489f4e    d984249c000000
                         fmul               st, st(3)                                            // 0x00489f55    d8cb
                         faddp              st(1), st                                            // 0x00489f57    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000b4]                         // 0x00489f59    d88424b4000000
                         {disp8} fstp       dword ptr [esp + 0x60]                               // 0x00489f60    d95c2460
                         fstp               st(0)                                                // 0x00489f64    ddd8
                         fstp               st(0)                                                // 0x00489f66    ddd8
                         {disp32} fld       dword ptr [ebx + 0x00000094]                         // 0x00489f68    d98394000000
                         {disp8} fmul       dword ptr [ebp + -0x04]                              // 0x00489f6e    d84dfc
                         {disp8} fst        dword ptr [esp + 0x14]                               // 0x00489f71    d9542414
                         {disp8} fcomp      dword ptr [esp + 0x2c]                               // 0x00489f75    d85c242c
                         fnstsw             ax                                                   // 0x00489f79    dfe0
                         test               ah, 0x41                                             // 0x00489f7b    f6c441
                         {disp32} je        _jmp_addr_0x0048a18a                                 // 0x00489f7e    0f8406020000
                         {disp8} fld        dword ptr [esp + 0x30]                               // 0x00489f84    d9442430
                         {disp32} mov       dword ptr [esp + edi * 0x1 + 0x000000b8], 0x447a0000 // 0x00489f88    c7843cb800000000007a44
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00489f93    d84c2410
                         xor.s              esi, esi                                             // 0x00489f97    33f6
                         {disp8} fld        dword ptr [esp + 0x34]                               // 0x00489f99    d9442434
                         mov                ebp, 0x0000000b                                      // 0x00489f9d    bd0b000000
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00489fa2    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x74]                               // 0x00489fa6    d95c2474
                         {disp8} fld        dword ptr [esp + 0x38]                               // 0x00489faa    d9442438
                         {disp8} fmul       dword ptr [esp + 0x10]                               // 0x00489fae    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x78]                               // 0x00489fb2    d95c2478
                         {disp8} fld        dword ptr [esp + 0x58]                               // 0x00489fb6    d9442458
                         fsub               st, st(1)                                            // 0x00489fba    d8e1
                         {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x00489fbc    d95c244c
                         fstp               st(0)                                                // 0x00489fc0    ddd8
                         {disp8} fld        dword ptr [esp + 0x5c]                               // 0x00489fc2    d944245c
                         {disp8} fsub       dword ptr [esp + 0x74]                               // 0x00489fc6    d8642474
                         {disp8} fstp       dword ptr [esp + 0x50]                               // 0x00489fca    d95c2450
                         {disp8} fld        dword ptr [esp + 0x60]                               // 0x00489fce    d9442460
                         {disp8} fsub       dword ptr [esp + 0x78]                               // 0x00489fd2    d8642478
                         {disp8} fstp       dword ptr [esp + 0x54]                               // 0x00489fd6    d95c2454
_jmp_addr_0x00489fda:    {disp32} mov       eax, dword ptr [ebx + 0x0000528c]                    // 0x00489fda    8b838c520000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000098]                    // 0x00489fe0    8b8898000000
                         {disp32} mov       eax, dword ptr [eax + ecx * 0x4 + 0x000000b4]        // 0x00489fe6    8b8488b4000000
                         {disp32} lea       edx, dword ptr [esp + 0x000000e8]                    // 0x00489fed    8d9424e8000000
                         push               edx                                                  // 0x00489ff4    52
                         {disp32} lea       ecx, dword ptr [esp + 0x00000080]                    // 0x00489ff5    8d8c2480000000
                         push               ecx                                                  // 0x00489ffc    51
                         {disp8} lea        edx, dword ptr [esp + 0x44]                          // 0x00489ffd    8d542444
                         push               edx                                                  // 0x0048a001    52
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                          // 0x0048a002    8d4c2458
                         push               ecx                                                  // 0x0048a006    51
                         {disp8} mov        ecx, dword ptr [esp + 0x58]                          // 0x0048a007    8b4c2458
                         push               eax                                                  // 0x0048a00b    50
                         call               _jmp_addr_0x008683c0                                 // 0x0048a00c    e8afe33d00
                         test               eax, eax                                             // 0x0048a011    85c0
                         {disp8} je         _jmp_addr_0x0048a068                                 // 0x0048a013    7453
                         {disp8} fld        dword ptr [esp + 0x7c]                               // 0x0048a015    d944247c
                         {disp8} fsub       dword ptr [esp + 0x58]                               // 0x0048a019    d8642458
                         {disp32} fld       dword ptr [esp + 0x00000080]                         // 0x0048a01d    d9842480000000
                         {disp8} fsub       dword ptr [esp + 0x5c]                               // 0x0048a024    d864245c
                         {disp32} fld       dword ptr [esp + 0x00000084]                         // 0x0048a028    d9842484000000
                         {disp8} fsub       dword ptr [esp + 0x60]                               // 0x0048a02f    d8642460
                         {disp8} fmul       dword ptr [esp + 0x44]                               // 0x0048a033    d84c2444
                         fxch               st(1)                                                // 0x0048a037    d9c9
                         {disp8} fmul       dword ptr [esp + 0x40]                               // 0x0048a039    d84c2440
                         faddp              st(1), st                                            // 0x0048a03d    dec1
                         fxch               st(1)                                                // 0x0048a03f    d9c9
                         {disp8} fmul       dword ptr [esp + 0x3c]                               // 0x0048a041    d84c243c
                         faddp              st(1), st                                            // 0x0048a045    dec1
                         {disp32} fld       dword ptr [esp + edi * 0x1 + 0x000000b8]             // 0x0048a047    d9843cb8000000
                         fcomp              st(1)                                                // 0x0048a04e    d8d9
                         fnstsw             ax                                                   // 0x0048a050    dfe0
                         test               ah, 0x01                                             // 0x0048a052    f6c401
                         {disp8} je         _jmp_addr_0x0048a060                                 // 0x0048a055    7409
                         fstp               st(0)                                                // 0x0048a057    ddd8
                         {disp32} fld       dword ptr [esp + edi * 0x1 + 0x000000b8]             // 0x0048a059    d9843cb8000000
_jmp_addr_0x0048a060:    {disp32} fstp      dword ptr [esp + edi * 0x1 + 0x000000b8]             // 0x0048a060    d99c3cb8000000
                         inc                esi                                                  // 0x0048a067    46
_jmp_addr_0x0048a068:    dec                ebp                                                  // 0x0048a068    4d
                         {disp8} fld        dword ptr [esp + 0x4c]                               // 0x0048a069    d944244c
                         {disp8} fadd       dword ptr [esp + 0x64]                               // 0x0048a06d    d8442464
                         {disp8} fstp       dword ptr [esp + 0x4c]                               // 0x0048a071    d95c244c
                         {disp8} fld        dword ptr [esp + 0x68]                               // 0x0048a075    d9442468
                         {disp8} fadd       dword ptr [esp + 0x50]                               // 0x0048a079    d8442450
                         {disp8} fstp       dword ptr [esp + 0x50]                               // 0x0048a07d    d95c2450
                         {disp8} fld        dword ptr [esp + 0x6c]                               // 0x0048a081    d944246c
                         {disp8} fadd       dword ptr [esp + 0x54]                               // 0x0048a085    d8442454
                         {disp8} fstp       dword ptr [esp + 0x54]                               // 0x0048a089    d95c2454
                         {disp32} jne       _jmp_addr_0x00489fda                                 // 0x0048a08d    0f8547ffffff
                         test               esi, esi                                             // 0x0048a093    85f6
                         {disp32} je        _jmp_addr_0x0048a182                                 // 0x0048a095    0f84e7000000
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0048a09b    d9442414
                         {disp8} fcomp      dword ptr [esp + 0x24]                               // 0x0048a09f    d85c2424
                         fnstsw             ax                                                   // 0x0048a0a3    dfe0
                         test               ah, 0x41                                             // 0x0048a0a5    f6c441
                         {disp32} je        _jmp_addr_0x0048a174                                 // 0x0048a0a8    0f84c6000000
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x0048a0ae    d9442414
                         {disp8} fcomp      dword ptr [esp + 0x28]                               // 0x0048a0b2    d85c2428
                         fnstsw             ax                                                   // 0x0048a0b6    dfe0
                         test               ah, 0x01                                             // 0x0048a0b8    f6c401
                         {disp32} jne       _jmp_addr_0x0048a174                                 // 0x0048a0bb    0f85b3000000
                         mov                eax, 0x00000001                                      // 0x0048a0c1    b801000000
                         {disp32} jmp       _jmp_addr_0x0048a176                                 // 0x0048a0c6    e9ab000000
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0048a0cb    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26128]                    // 0x0048a0cf    d80d28f18c00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0048a0d5    d95c2424
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0048a0d9    d944242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x21268]                    // 0x0048a0dd    d80d68a28c00
                         {disp32} jmp       _jmp_addr_0x00489d41                                 // 0x0048a0e3    e959fcffff
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x0048a0e8    d944242c
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000                   // 0x0048a0ec    c744242800000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x21268]                    // 0x0048a0f4    d80d68a28c00
                         {disp8} fstp       dword ptr [esp + 0x24]                               // 0x0048a0fa    d95c2424
                         {disp32} jmp       _jmp_addr_0x00489d45                                 // 0x0048a0fe    e942fcffff
                         {disp32} mov       eax, dword ptr [ebx + 0x00004994]                    // 0x0048a103    8b8394490000
                         cmp                eax, 0x17                                            // 0x0048a109    83f817
                         {disp8} jne        _jmp_addr_0x0048a135                                 // 0x0048a10c    7527
                         push               0x1a                                                 // 0x0048a10e    6a1a
                         mov.s              ecx, ebx                                             // 0x0048a110    8bcb
                         {disp32} mov       dword ptr [ebx + 0x000049a0], 0x0000008f             // 0x0048a112    c783a04900008f000000
                         call               _jmp_addr_0x00484ec0                                 // 0x0048a11c    e89fadffff
                         mov.s              ecx, ebx                                             // 0x0048a121    8bcb
                         call               _jmp_addr_0x00489930                                 // 0x0048a123    e808f8ffff
                         pop                edi                                                  // 0x0048a128    5f
                         pop                esi                                                  // 0x0048a129    5e
                         pop                ebp                                                  // 0x0048a12a    5d
                         pop                ebx                                                  // 0x0048a12b    5b
                         add                esp, 0x00000114                                      // 0x0048a12c    81c414010000
                         ret                0x0008                                               // 0x0048a132    c20800
_jmp_addr_0x0048a135:    cmp                eax, 0x1b                                            // 0x0048a135    83f81b
                         {disp32} jne       _jmp_addr_0x0048a349                                 // 0x0048a138    0f850b020000
                         push               0x1d                                                 // 0x0048a13e    6a1d
                         mov.s              ecx, ebx                                             // 0x0048a140    8bcb
                         call               _jmp_addr_0x00484ec0                                 // 0x0048a142    e879adffff
                         mov.s              ecx, ebx                                             // 0x0048a147    8bcb
                         call               _jmp_addr_0x00489930                                 // 0x0048a149    e8e2f7ffff
                         pop                edi                                                  // 0x0048a14e    5f
                         pop                esi                                                  // 0x0048a14f    5e
                         pop                ebp                                                  // 0x0048a150    5d
                         pop                ebx                                                  // 0x0048a151    5b
                         add                esp, 0x00000114                                      // 0x0048a152    81c414010000
                         ret                0x0008                                               // 0x0048a158    c20800
                         push               0x3fc00000                                           // 0x0048a15b    680000c03f
                         {disp32} mov       dword ptr [ebx + 0x000052a4], 0x00000082             // 0x0048a160    c783a452000082000000
                         push               0x00000082                                           // 0x0048a16a    6882000000
                         {disp32} jmp       _jmp_addr_0x0048a33b                                 // 0x0048a16f    e9c7010000
_jmp_addr_0x0048a174:    xor.s              eax, eax                                             // 0x0048a174    33c0
_jmp_addr_0x0048a176:    inc                eax                                                  // 0x0048a176    40
                         {disp32} mov       dword ptr [esp + edi * 0x1 + 0x000000f4], eax        // 0x0048a177    89843cf4000000
                         {disp8} inc        dword ptr [esp + 0x1c]                               // 0x0048a17e    ff44241c
_jmp_addr_0x0048a182:    {disp8} mov        ebp, dword ptr [esp + 0x20]                          // 0x0048a182    8b6c2420
                         {disp8} mov        esi, dword ptr [esp + 0x18]                          // 0x0048a186    8b742418
_jmp_addr_0x0048a18a:    inc                esi                                                  // 0x0048a18a    46
                         add                ebp, 0x0c                                            // 0x0048a18b    83c50c
                         {disp8} lea        edx, dword ptr [esi + -0x7d]                         // 0x0048a18e    8d5683
                         add                edi, 0x04                                            // 0x0048a191    83c704
                         cmp                edx, 0x0c                                            // 0x0048a194    83fa0c
                         {disp8} mov        dword ptr [esp + 0x18], esi                          // 0x0048a197    89742418
                         {disp8} mov        dword ptr [esp + 0x20], ebp                          // 0x0048a19b    896c2420
                         {disp32} jl        _jmp_addr_0x00489ee3                                 // 0x0048a19f    0f8c3efdffff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                          // 0x0048a1a5    8b44241c
                         test               eax, eax                                             // 0x0048a1a9    85c0
                         {disp32} je        _jmp_addr_0x0048a349                                 // 0x0048a1ab    0f8498010000
                         push               0x0                                                  // 0x0048a1b1    6a00
                         push               0x0000008a                                           // 0x0048a1b3    688a000000
                         mov.s              ecx, ebx                                             // 0x0048a1b8    8bcb
                         {disp8} mov        dword ptr [esp + 0x50], 0xc47a0000                   // 0x0048a1ba    c744245000007ac4
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000005                   // 0x0048a1c2    c744242c05000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x0048a1ca    c744242000000000
                         mov                ebp, 0x000003e8                                      // 0x0048a1d2    bde8030000
                         call               @GetAnim__9MorphableFll@16                           // 0x0048a1d7    e874f41800
                         test               eax, eax                                             // 0x0048a1dc    85c0
                         {disp8} je         _jmp_addr_0x0048a1ef                                 // 0x0048a1de    740f
                         {disp8} fld        dword ptr [eax + 0x0c]                               // 0x0048a1e0    d9400c
                         {disp32} fmul      dword ptr [ebx + 0x00000094]                         // 0x0048a1e3    d88b94000000
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0048a1e9    d95c2428
                         {disp8} jmp        _jmp_addr_0x0048a1f7                                 // 0x0048a1ed    eb08
_jmp_addr_0x0048a1ef:    {disp8} mov        dword ptr [esp + 0x28], 0x00000000                   // 0x0048a1ef    c744242800000000
_jmp_addr_0x0048a1f7:    push               0x0                                                  // 0x0048a1f7    6a00
                         push               0x00000089                                           // 0x0048a1f9    6889000000
                         mov.s              ecx, ebx                                             // 0x0048a1fe    8bcb
                         call               @GetAnim__9MorphableFll@16                           // 0x0048a200    e84bf41800
                         test               eax, eax                                             // 0x0048a205    85c0
                         {disp8} je         _jmp_addr_0x0048a214                                 // 0x0048a207    740b
                         {disp8} fld        dword ptr [eax + 0x0c]                               // 0x0048a209    d9400c
                         {disp32} fmul      dword ptr [ebx + 0x00000094]                         // 0x0048a20c    d88b94000000
                         {disp8} jmp        _jmp_addr_0x0048a21a                                 // 0x0048a212    eb06
_jmp_addr_0x0048a214:    {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x0048a214    d90598a38a00
_jmp_addr_0x0048a21a:    {disp32} fld       dword ptr [ebx + 0x00000090]                         // 0x0048a21a    d98390000000
                         mov                edi, 0xfffffff6                                      // 0x0048a220    bff6ffffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26180]                    // 0x0048a225    d80d80f18c00
                         {disp8} mov        dword ptr [esp + 0x20], edi                          // 0x0048a22b    897c2420
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x0048a22f    d9442448
_jmp_addr_0x0048a233:    test               edi, edi                                             // 0x0048a233    85ff
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000                   // 0x0048a235    c744241c00000000
                         {disp8} jge        _jmp_addr_0x0048a249                                 // 0x0048a23d    7d0a
                         {disp8} fild       dword ptr [esp + 0x20]                               // 0x0048a23f    db442420
                         {disp8} fmul       dword ptr [esp + 0x28]                               // 0x0048a243    d84c2428
                         {disp8} jmp        _jmp_addr_0x0048a251                                 // 0x0048a247    eb08
_jmp_addr_0x0048a249:    {disp8} jle        _jmp_addr_0x0048a255                                 // 0x0048a249    7e0a
                         {disp8} fild       dword ptr [esp + 0x20]                               // 0x0048a24b    db442420
                         fmul               st, st(3)                                            // 0x0048a24f    d8cb
_jmp_addr_0x0048a251:    {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0048a251    d95c241c
_jmp_addr_0x0048a255:    xor.s              ecx, ecx                                             // 0x0048a255    33c9
_jmp_addr_0x0048a257:    {disp32} mov       esi, dword ptr [esp + ecx * 0x4 + 0x000000f4]        // 0x0048a257    8bb48cf4000000
                         test               esi, esi                                             // 0x0048a25e    85f6
                         {disp8} je         _jmp_addr_0x0048a2c3                                 // 0x0048a260    7461
                         {disp32} fld       dword ptr [esp + ecx * 0x4 + 0x000000b8]             // 0x0048a262    d9848cb8000000
                         {disp8} fsub       dword ptr [esp + 0x1c]                               // 0x0048a269    d864241c
                         {disp8} fst        dword ptr [esp + 0x10]                               // 0x0048a26d    d9542410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0048a271    d81d98a38a00
                         fnstsw             ax                                                   // 0x0048a277    dfe0
                         test               ah, 0x01                                             // 0x0048a279    f6c401
                         {disp8} je         _jmp_addr_0x0048a2c3                                 // 0x0048a27c    7445
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0048a27e    d9442410
                         fcomp              st(2)                                                // 0x0048a282    d8da
                         fnstsw             ax                                                   // 0x0048a284    dfe0
                         test               ah, 0x41                                             // 0x0048a286    f6c441
                         {disp8} jne        _jmp_addr_0x0048a2c3                                 // 0x0048a289    7538
                         mov.s              eax, edi                                             // 0x0048a28b    8bc7
                         cdq                                                                     // 0x0048a28d    99
                         xor.s              eax, edx                                             // 0x0048a28e    33c2
                         sub.s              eax, edx                                             // 0x0048a290    2bc2
                         cmp                esi, 0x01                                            // 0x0048a292    83fe01
                         {disp8} jne        _jmp_addr_0x0048a29c                                 // 0x0048a295    7505
                         mov                eax, 0x000003e7                                      // 0x0048a297    b8e7030000
_jmp_addr_0x0048a29c:    cmp.s              eax, ebp                                             // 0x0048a29c    3bc5
                         {disp8} jne        _jmp_addr_0x0048a2b1                                 // 0x0048a29e    7511
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0048a2a0    d9442410
                         fcomp              st(1)                                                // 0x0048a2a4    d8d9
                         fnstsw             ax                                                   // 0x0048a2a6    dfe0
                         test               ah, 0x41                                             // 0x0048a2a8    f6c441
                         {disp8} jne        _jmp_addr_0x0048a2c3                                 // 0x0048a2ab    7516
                         fstp               st(0)                                                // 0x0048a2ad    ddd8
                         {disp8} jmp        _jmp_addr_0x0048a2bb                                 // 0x0048a2af    eb0a
_jmp_addr_0x0048a2b1:    {disp8} jge        _jmp_addr_0x0048a2c3                                 // 0x0048a2b1    7d10
                         fstp               st(0)                                                // 0x0048a2b3    ddd8
                         mov.s              ebp, eax                                             // 0x0048a2b5    8be8
                         {disp8} mov        dword ptr [esp + 0x24], edi                          // 0x0048a2b7    897c2424
_jmp_addr_0x0048a2bb:    {disp8} fld        dword ptr [esp + 0x10]                               // 0x0048a2bb    d9442410
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x0048a2bf    894c2418
_jmp_addr_0x0048a2c3:    inc                ecx                                                  // 0x0048a2c3    41
                         cmp                ecx, 0x0c                                            // 0x0048a2c4    83f90c
                         {disp8} jl         _jmp_addr_0x0048a257                                 // 0x0048a2c7    7c8e
                         inc                edi                                                  // 0x0048a2c9    47
                         cmp                edi, 0x0a                                            // 0x0048a2ca    83ff0a
                         {disp8} mov        dword ptr [esp + 0x20], edi                          // 0x0048a2cd    897c2420
                         {disp32} jle       _jmp_addr_0x0048a233                                 // 0x0048a2d1    0f8e5cffffff
                         cmp                ebp, 0x000003e8                                      // 0x0048a2d7    81fde8030000
                         fstp               st(0)                                                // 0x0048a2dd    ddd8
                         fstp               st(0)                                                // 0x0048a2df    ddd8
                         fstp               st(0)                                                // 0x0048a2e1    ddd8
                         {disp8} je         _jmp_addr_0x0048a349                                 // 0x0048a2e3    7464
                         {disp8} mov        eax, dword ptr [esp + 0x24]                          // 0x0048a2e5    8b442424
                         test               eax, eax                                             // 0x0048a2e9    85c0
                         {disp8} jge        _jmp_addr_0x0048a308                                 // 0x0048a2eb    7d1b
                         push               0x0                                                  // 0x0048a2ed    6a00
                         push               0x0000008a                                           // 0x0048a2ef    688a000000
                         mov.s              ecx, ebx                                             // 0x0048a2f4    8bcb
                         call               _jmp_addr_0x004846e0                                 // 0x0048a2f6    e8e5a3ffff
                         pop                edi                                                  // 0x0048a2fb    5f
                         pop                esi                                                  // 0x0048a2fc    5e
                         pop                ebp                                                  // 0x0048a2fd    5d
                         pop                ebx                                                  // 0x0048a2fe    5b
                         add                esp, 0x00000114                                      // 0x0048a2ff    81c414010000
                         ret                0x0008                                               // 0x0048a305    c20800
_jmp_addr_0x0048a308:    {disp8} jle        _jmp_addr_0x0048a325                                 // 0x0048a308    7e1b
                         push               0x0                                                  // 0x0048a30a    6a00
                         push               0x00000089                                           // 0x0048a30c    6889000000
                         mov.s              ecx, ebx                                             // 0x0048a311    8bcb
                         call               _jmp_addr_0x004846e0                                 // 0x0048a313    e8c8a3ffff
                         pop                edi                                                  // 0x0048a318    5f
                         pop                esi                                                  // 0x0048a319    5e
                         pop                ebp                                                  // 0x0048a31a    5d
                         pop                ebx                                                  // 0x0048a31b    5b
                         add                esp, 0x00000114                                      // 0x0048a31c    81c414010000
                         ret                0x0008                                               // 0x0048a322    c20800
_jmp_addr_0x0048a325:    {disp8} mov        eax, dword ptr [esp + 0x18]                          // 0x0048a325    8b442418
                         {disp32} mov       ecx, dword ptr [esp + 0x0000012c]                    // 0x0048a329    8b8c242c010000
                         add                eax, 0x7d                                            // 0x0048a330    83c07d
                         push               ecx                                                  // 0x0048a333    51
                         {disp32} mov       dword ptr [ebx + 0x000052a4], eax                    // 0x0048a334    8983a4520000
                         push               eax                                                  // 0x0048a33a    50
_jmp_addr_0x0048a33b:    mov.s              ecx, ebx                                             // 0x0048a33b    8bcb
                         call               _jmp_addr_0x004846e0                                 // 0x0048a33d    e89ea3ffff
                         mov.s              ecx, ebx                                             // 0x0048a342    8bcb
                         call               _jmp_addr_0x00489930                                 // 0x0048a344    e8e7f5ffff
_jmp_addr_0x0048a349:    pop                edi                                                  // 0x0048a349    5f
                         pop                esi                                                  // 0x0048a34a    5e
                         pop                ebp                                                  // 0x0048a34b    5d
                         pop                ebx                                                  // 0x0048a34c    5b
                         add                esp, 0x00000114                                      // 0x0048a34d    81c414010000
                         ret                0x0008                                               // 0x0048a353    c20800

// Snippet: db, [0x0048a356, 0x0048a358)
.byte 0x8b, 0xff                  // 0x0048a356

// Snippet: jmptbl, [0x0048a358, 0x0048a36c)
.byte 0x2f, 0x9d, 0x48, 0x00      // 0x0048a358
.byte 0xcb, 0xa0, 0x48, 0x00      // 0x0048a35c
.byte 0xe8, 0xa0, 0x48, 0x00      // 0x0048a360
.byte 0x03, 0xa1, 0x48, 0x00      // 0x0048a364
.byte 0x5b, 0xa1, 0x48, 0x00      // 0x0048a368

// Snippet: db, [0x0048a36c, 0x0048a370)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0048a36c

