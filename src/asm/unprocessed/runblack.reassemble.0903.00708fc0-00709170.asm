.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x005dfc40
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern _jmp_addr_0x006f6bc0
.extern _jmp_addr_0x0070d220
.extern _jmp_addr_0x007a1400

start_0x00708fc0_0x00709170:
// Snippet: asm, [0x00708fc0, 0x0070912e)
                         push              ecx                                    // 0x00708fc0    51
                         {disp32} mov      ecx, dword ptr [_script_dll]           // 0x00708fc1    8b0d105cd900
                         push              esi                                    // 0x00708fc7    56
                         {disp8} lea       eax, dword ptr [esp + 0x04]            // 0x00708fc8    8d442404
                         push              eax                                    // 0x00708fcc    50
                         call              _jmp_addr_0x006f6bc0                   // 0x00708fcd    e8eedbfeff
                         {disp8} mov       dword ptr [esp + 0x04], eax            // 0x00708fd2    89442404
                         {disp8} fld       dword ptr [esp + 0x04]                 // 0x00708fd6    d9442404
                         mov               esi, 0x00000001                        // 0x00708fda    be01000000
                         call              _jmp_addr_0x007a1400                   // 0x00708fdf    e81c840900
                         cmp               eax, 0x0d                              // 0x00708fe4    83f80d
                         {disp8} jne       _jmp_addr_0x00708fef                   // 0x00708fe7    7506
                         {disp32} mov      esi, dword ptr [data_bytes + 0x353c94] // 0x00708fe9    8b35949cd100
_jmp_addr_0x00708fef:    {disp32} mov      ecx, dword ptr [_script_dll]           // 0x00708fef    8b0d105cd900
                         push              0x6                                    // 0x00708ff5    6a06
                         push              esi                                    // 0x00708ff7    56
                         call              ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z   // 0x00708ff8    e8a3dbfeff
                         pop               esi                                    // 0x00708ffd    5e
                         pop               ecx                                    // 0x00708ffe    59
                         ret                                                      // 0x00708fff    c3
                         {disp32} mov      ecx, dword ptr [_script_dll]           // 0x00709000    8b0d105cd900
                         sub               esp, 0x08                              // 0x00709006    83ec08
                         push              ebx                                    // 0x00709009    53
                         push              esi                                    // 0x0070900a    56
                         push              edi                                    // 0x0070900b    57
                         {disp8} lea       eax, dword ptr [esp + 0x0c]            // 0x0070900c    8d44240c
                         push              eax                                    // 0x00709010    50
                         call              _jmp_addr_0x006f6bc0                   // 0x00709011    e8aadbfeff
                         push              eax                                    // 0x00709016    50
                         call              _jmp_addr_0x0070d220                   // 0x00709017    e804420000
                         {disp32} mov      ecx, dword ptr [_script_dll]           // 0x0070901c    8b0d105cd900
                         add               esp, 0x04                              // 0x00709022    83c404
                         {disp8} lea       edx, dword ptr [esp + 0x10]            // 0x00709025    8d542410
                         push              edx                                    // 0x00709029    52
                         mov.s             edi, eax                               // 0x0070902a    8bf8
                         call              _jmp_addr_0x006f6bc0                   // 0x0070902c    e88fdbfeff
                         {disp32} mov      ecx, dword ptr [_script_dll]           // 0x00709031    8b0d105cd900
                         mov.s             ebx, eax                               // 0x00709037    8bd8
                         {disp8} lea       eax, dword ptr [esp + 0x10]            // 0x00709039    8d442410
                         push              eax                                    // 0x0070903d    50
                         call              _jmp_addr_0x006f6bc0                   // 0x0070903e    e87ddbfeff
                         test              edi, edi                               // 0x00709043    85ff
                         {disp8} jne       _jmp_addr_0x0070905b                   // 0x00709045    7514
                         push              0x00c0d428                             // 0x00709047    6828d4c000
                         call              ?ScriptErrorMessage@GScript@@QAEXPAD@Z // 0x0070904c    e85fd2feff
                         add               esp, 0x04                              // 0x00709051    83c404
                         pop               edi                                    // 0x00709054    5f
                         pop               esi                                    // 0x00709055    5e
                         pop               ebx                                    // 0x00709056    5b
                         add               esp, 0x08                              // 0x00709057    83c408
                         ret                                                      // 0x0070905a    c3
_jmp_addr_0x0070905b:    {disp32} mov      esi, dword ptr [data_bytes + 0x4f3a08] // 0x0070905b    8b35089aeb00
                         xor.s             ecx, ecx                               // 0x00709061    33c9
                         test              esi, esi                               // 0x00709063    85f6
                         {disp8} je        _jmp_addr_0x00709082                   // 0x00709065    741b
_jmp_addr_0x00709067:    test              ecx, ecx                               // 0x00709067    85c9
                         {disp8} jne       _jmp_addr_0x0070908b                   // 0x00709069    7520
                         cmp               dword ptr [esi + 0x18], edi            // 0x0070906b    397e18
                         {disp8} jne       _jmp_addr_0x00709077                   // 0x0070906e    7507
                         mov               ecx, 0x00000001                        // 0x00709070    b901000000
                         {disp8} jmp       _jmp_addr_0x0070907a                   // 0x00709075    eb03
_jmp_addr_0x00709077:    {disp8} mov       esi, dword ptr [esi + 0x08]            // 0x00709077    8b7608
_jmp_addr_0x0070907a:    test              esi, esi                               // 0x0070907a    85f6
                         {disp8} jne       _jmp_addr_0x00709067                   // 0x0070907c    75e9
                         test              ecx, ecx                               // 0x0070907e    85c9
                         {disp8} jne       _jmp_addr_0x0070908b                   // 0x00709080    7509
_jmp_addr_0x00709082:    cmp               ebx, 0x13                              // 0x00709082    83fb13
                         {disp32} jne      _jmp_addr_0x00709127                   // 0x00709085    0f859c000000
_jmp_addr_0x0070908b:    {disp8} lea       ecx, dword ptr [ebx + -0x07]           // 0x0070908b    8d4bf9
                         cmp               ecx, 0x0c                              // 0x0070908e    83f90c
                         {disp32} ja       _jmp_addr_0x00709127                   // 0x00709091    0f8790000000
                         jmp               dword ptr [ecx*4 + 0x709130]           // 0x00709097    ff248d30917000
                         {disp8} mov       eax, dword ptr [esi + 0x30]            // 0x0070909e    8b4630
                         or                eax, 0x1                               // 0x007090a1    83c801
                         pop               edi                                    // 0x007090a4    5f
                         {disp8} mov       dword ptr [esi + 0x30], eax            // 0x007090a5    894630
                         pop               esi                                    // 0x007090a8    5e
                         pop               ebx                                    // 0x007090a9    5b
                         add               esp, 0x08                              // 0x007090aa    83c408
                         ret                                                      // 0x007090ad    c3
                         test              eax, eax                               // 0x007090ae    85c0
                         {disp8} mov       eax, dword ptr [esi + 0x30]            // 0x007090b0    8b4630
                         {disp8} je        _jmp_addr_0x00709101                   // 0x007090b3    744c
                         and               eax, 0xfffffffd                        // 0x007090b5    83e0fd
                         pop               edi                                    // 0x007090b8    5f
                         {disp8} mov       dword ptr [esi + 0x30], eax            // 0x007090b9    894630
                         pop               esi                                    // 0x007090bc    5e
                         pop               ebx                                    // 0x007090bd    5b
                         add               esp, 0x08                              // 0x007090be    83c408
                         ret                                                      // 0x007090c1    c3
                         mov               ebx, dword ptr [edi]                   // 0x007090c2    8b1f
                         mov.s             ecx, edi                               // 0x007090c4    8bcf
                         call              dword ptr [ebx + 0x508]                // 0x007090c6    ff9308050000
                         fchs                                                     // 0x007090cc    d9e0
                         {disp8} jmp       _jmp_addr_0x007090f2                   // 0x007090ce    eb22
                         mov               ebx, dword ptr [edi]                   // 0x007090d0    8b1f
                         mov.s             ecx, edi                               // 0x007090d2    8bcf
                         call              dword ptr [ebx + 0x508]                // 0x007090d4    ff9308050000
                         {disp32} fadd     dword ptr [rdata_bytes + 0x1e8d8]      // 0x007090da    d805d8788c00
                         {disp8} jmp       _jmp_addr_0x007090f2                   // 0x007090e0    eb10
                         mov               ebx, dword ptr [edi]                   // 0x007090e2    8b1f
                         mov.s             ecx, edi                               // 0x007090e4    8bcf
                         call              dword ptr [ebx + 0x508]                // 0x007090e6    ff9308050000
                         {disp32} fsub     dword ptr [rdata_bytes + 0x1e8d8]      // 0x007090ec    d825d8788c00
_jmp_addr_0x007090f2:    push              ecx                                    // 0x007090f2    51
                         mov.s             ecx, edi                               // 0x007090f3    8bcf
                         fstp              dword ptr [esp]                        // 0x007090f5    d91c24
                         call              dword ptr [ebx + 0x524]                // 0x007090f8    ff9324050000
                         {disp8} mov       eax, dword ptr [esi + 0x30]            // 0x007090fe    8b4630
_jmp_addr_0x00709101:    or                eax, 0x2                               // 0x00709101    83c802
                         pop               edi                                    // 0x00709104    5f
                         {disp8} mov       dword ptr [esi + 0x30], eax            // 0x00709105    894630
                         pop               esi                                    // 0x00709108    5e
                         pop               ebx                                    // 0x00709109    5b
                         add               esp, 0x08                              // 0x0070910a    83c408
                         ret                                                      // 0x0070910d    c3
                         call              _jmp_addr_0x005dfc40                   // 0x0070910e    e82d6bedff
                         pop               edi                                    // 0x00709113    5f
                         pop               esi                                    // 0x00709114    5e
                         pop               ebx                                    // 0x00709115    5b
                         add               esp, 0x08                              // 0x00709116    83c408
                         ret                                                      // 0x00709119    c3
                         {disp8} mov       ecx, dword ptr [edi + 0x40]            // 0x0070911a    8b4f40
                         mov               eax, dword ptr [ecx]                   // 0x0070911d    8b01
                         xor.s             edx, edx                               // 0x0070911f    33d2
                         call              dword ptr [eax + 0x98]                 // 0x00709121    ff9098000000
_jmp_addr_0x00709127:    pop               edi                                    // 0x00709127    5f
                         pop               esi                                    // 0x00709128    5e
                         pop               ebx                                    // 0x00709129    5b
                         add               esp, 0x08                              // 0x0070912a    83c408
                         ret                                                      // 0x0070912d    c3

// Snippet: db, [0x0070912e, 0x00709130)
.byte 0x8b, 0xff                  // 0x0070912e

// Snippet: jmptbl, [0x00709130, 0x00709164)
.byte 0x9e, 0x90, 0x70, 0x00      // 0x00709130
.byte 0xae, 0x90, 0x70, 0x00      // 0x00709134
.byte 0xc2, 0x90, 0x70, 0x00      // 0x00709138
.byte 0x27, 0x91, 0x70, 0x00      // 0x0070913c
.byte 0x27, 0x91, 0x70, 0x00      // 0x00709140
.byte 0x27, 0x91, 0x70, 0x00      // 0x00709144
.byte 0x27, 0x91, 0x70, 0x00      // 0x00709148
.byte 0x27, 0x91, 0x70, 0x00      // 0x0070914c
.byte 0x27, 0x91, 0x70, 0x00      // 0x00709150
.byte 0xd0, 0x90, 0x70, 0x00      // 0x00709154
.byte 0xe2, 0x90, 0x70, 0x00      // 0x00709158
.byte 0x0e, 0x91, 0x70, 0x00      // 0x0070915c
.byte 0x1a, 0x91, 0x70, 0x00      // 0x00709160

// Snippet: db, [0x00709164, 0x00709170)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00709164
.byte 0x90, 0x90, 0x90, 0x90      // 0x00709168
.byte 0x90, 0x90, 0x90, 0x90      // 0x0070916c

