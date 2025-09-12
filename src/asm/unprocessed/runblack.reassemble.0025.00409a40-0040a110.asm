.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern ??1SetupControl@@UAE@XZ  
.extern ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z
.extern ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z
.extern ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4
.extern @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20

.globl @__ct__11SetupSliderFiiiiifPw@36
.globl @AutoScroll__9SetupListFb@9
.globl _MouseDown__11SetupSliderFiib
.globl ??_GSetupSlider@@UAEPAXI@Z
.globl _Draw__11SetupSliderFbb
.globl _MouseUp__11SetupSliderFiib
.globl _Drag__11SetupSliderFii
.globl _KeyDown__9SetupListFii

_Draw__11SetupSliderFbb:
                         push               ecx                                      // 0x00409a40    51
                         push               ebx                                      // 0x00409a41    53
                         push               ebp                                      // 0x00409a42    55
                         push               esi                                      // 0x00409a43    56
                         push               edi                                      // 0x00409a44    57
                         push               -0x1                                     // 0x00409a45    6aff
                         push               -0x1                                     // 0x00409a47    6aff
                         mov.s              esi, ecx                                 // 0x00409a49    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x14]              // 0x00409a4b    8b4614
                         {disp8} mov        ecx, dword ptr [esi + 0x10]              // 0x00409a4e    8b4e10
                         {disp8} mov        edx, dword ptr [esi + 0x0c]              // 0x00409a51    8b560c
                         push               0x10                                     // 0x00409a54    6a10
                         push               0x1                                      // 0x00409a56    6a01
                         push               eax                                      // 0x00409a58    50
                         {disp8} mov        eax, dword ptr [esi + 0x08]              // 0x00409a59    8b4608
                         push               ecx                                      // 0x00409a5c    51
                         push               edx                                      // 0x00409a5d    52
                         push               eax                                      // 0x00409a5e    50
                         call               ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z    // 0x00409a5f    e8bca10000
                         {disp32} mov       ebp, dword ptr [esi + 0x0000024c]        // 0x00409a64    8bae4c020000
                         {disp8} mov        ecx, dword ptr [esi + 0x10]              // 0x00409a6a    8b4e10
                         {disp8} mov        ebx, dword ptr [esi + 0x08]              // 0x00409a6d    8b5e08
                         sub.s              ecx, ebp                                 // 0x00409a70    2bcd
                         sub.s              ecx, ebx                                 // 0x00409a72    2bcb
                         {disp8} mov        dword ptr [esp + 0x30], ecx              // 0x00409a74    894c2430
                         {disp8} fild       dword ptr [esp + 0x30]                   // 0x00409a78    db442430
                         add                esp, 0x20                                // 0x00409a7c    83c420
                         {disp32} fmul      dword ptr [esi + 0x0000023c]             // 0x00409a7f    d88e3c020000
                         call               _jmp_addr_0x007a1400                     // 0x00409a85    e876793900
                         mov.s              edi, eax                                 // 0x00409a8a    8bf8
                         {disp8} mov        eax, dword ptr [esi + 0x1c]              // 0x00409a8c    8b461c
                         add.s              edi, ebx                                 // 0x00409a8f    03fb
                         test               eax, 0x40000000                          // 0x00409a91    a900000040
                         {disp8} je         _jmp_addr_0x00409b04                     // 0x00409a96    746c
                         {disp8} mov        ebx, dword ptr [esi + 0x0c]              // 0x00409a98    8b5e0c
                         {disp8} mov        ecx, dword ptr [esi + 0x14]              // 0x00409a9b    8b4e14
                         sub.s              ecx, ebx                                 // 0x00409a9e    2bcb
                         push               -0x1                                     // 0x00409aa0    6aff
                         mov.s              eax, ecx                                 // 0x00409aa2    8bc1
                         cdq                                                         // 0x00409aa4    99
                         push               -0x1                                     // 0x00409aa5    6aff
                         sub.s              eax, edx                                 // 0x00409aa7    2bc2
                         push               0x10                                     // 0x00409aa9    6a10
                         mov.s              ebp, eax                                 // 0x00409aab    8be8
                         {disp32} mov       eax, dword ptr [esi + 0x0000024c]        // 0x00409aad    8b864c020000
                         push               0x0                                      // 0x00409ab3    6a00
                         {disp8} lea        edx, dword ptr [ebx + ecx * 0x1 + -0x02] // 0x00409ab5    8d540bfe
                         push               edx                                      // 0x00409ab9    52
                         add.s              eax, edi                                 // 0x00409aba    03c7
                         push               eax                                      // 0x00409abc    50
                         sar                ebp, 1                                   // 0x00409abd    d1fd
                         lea                eax, dword ptr [ebx + ebp * 0x1]         // 0x00409abf    8d042b
                         push               eax                                      // 0x00409ac2    50
                         push               edi                                      // 0x00409ac3    57
                         call               ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z    // 0x00409ac4    e857a10000
                         {disp8} mov        al, byte ptr [esp + 0x3c]                // 0x00409ac9    8a44243c
                         add                esp, 0x20                                // 0x00409acd    83c420
                         add                ebp, 0x02                                // 0x00409ad0    83c502
                         test               al, al                                   // 0x00409ad3    84c0
                         mov                edx, 0x00c4ccf8                          // 0x00409ad5    baf8ccc400
                         {disp8} jne        _jmp_addr_0x00409ae1                     // 0x00409ada    7505
                         mov                edx, 0x00c4ccd8                          // 0x00409adc    bad8ccc400
_jmp_addr_0x00409ae1:    {disp8} mov        eax, dword ptr [esi + 0x10]              // 0x00409ae1    8b4610
                         {disp8} mov        ecx, dword ptr [esi + 0x08]              // 0x00409ae4    8b4e08
                         push               0x0                                      // 0x00409ae7    6a00
                         push               edx                                      // 0x00409ae9    52
                         push               ebp                                      // 0x00409aea    55
                         {disp8} lea        edx, dword ptr [esi + 0x24]              // 0x00409aeb    8d5624
                         push               edx                                      // 0x00409aee    52
                         mov.s              edx, eax                                 // 0x00409aef    8bd0
                         sub.s              edx, ecx                                 // 0x00409af1    2bd1
                         push               0x1                                      // 0x00409af3    6a01
                         push               edx                                      // 0x00409af5    52
                         {disp8} mov        edx, dword ptr [esi + 0x0c]              // 0x00409af6    8b560c
                         add                edx, 0x02                                // 0x00409af9    83c202
                         push               edx                                      // 0x00409afc    52
                         add.s              eax, ecx                                 // 0x00409afd    03c1
                         {disp32} jmp       _jmp_addr_0x00409bd2                     // 0x00409aff    e9ce000000
_jmp_addr_0x00409b04:    {disp8} mov        al, byte ptr [esp + 0x18]                // 0x00409b04    8a442418
                         test               al, al                                   // 0x00409b08    84c0
                         {disp8} mov        bl, byte ptr [esp + 0x1c]                // 0x00409b0a    8a5c241c
                         {disp8} jne        _jmp_addr_0x00409b18                     // 0x00409b0e    7508
                         test               bl, bl                                   // 0x00409b10    84db
                         {disp8} jne        _jmp_addr_0x00409b18                     // 0x00409b12    7504
                         xor.s              eax, eax                                 // 0x00409b14    33c0
                         {disp8} jmp        _jmp_addr_0x00409b1d                     // 0x00409b16    eb05
_jmp_addr_0x00409b18:    mov                eax, 0x00000001                          // 0x00409b18    b801000000
_jmp_addr_0x00409b1d:    push               0x0000a000                               // 0x00409b1d    6800a00000
                         push               0xffff6000                               // 0x00409b22    680060ffff
                         push               0x0                                      // 0x00409b27    6a00
                         push               0x0                                      // 0x00409b29    6a00
                         add                ebp, -0x06                               // 0x00409b2b    83c5fa
                         push               ebp                                      // 0x00409b2e    55
                         push               eax                                      // 0x00409b2f    50
                         {disp8} mov        eax, dword ptr [esi + 0x0c]              // 0x00409b30    8b460c
                         push               0x1                                      // 0x00409b33    6a01
                         add                eax, 0x03                                // 0x00409b35    83c003
                         push               eax                                      // 0x00409b38    50
                         add                edi, 0x03                                // 0x00409b39    83c703
                         push               edi                                      // 0x00409b3c    57
                         call               ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z              // 0x00409b3d    e80e860000
                         add                esp, 0x24                                // 0x00409b42    83c424
                         test               bl, bl                                   // 0x00409b45    84db
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00c4ccf8       // 0x00409b47    c744241cf8ccc400
                         {disp8} jne        _jmp_addr_0x00409b59                     // 0x00409b4f    7508
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00c4ccd8       // 0x00409b51    c744241cd8ccc400
_jmp_addr_0x00409b59:    {disp8} mov        eax, dword ptr [esi + 0x20]              // 0x00409b59    8b4620
                         test               eax, eax                                 // 0x00409b5c    85c0
                         {disp8} je         _jmp_addr_0x00409b64                     // 0x00409b5e    7404
                         mov.s              ebp, eax                                 // 0x00409b60    8be8
                         {disp8} jmp        _jmp_addr_0x00409b7b                     // 0x00409b62    eb17
_jmp_addr_0x00409b64:    {disp32} mov       ecx, dword ptr [esi + 0x00000234]        // 0x00409b64    8b8e34020000
                         test               ecx, ecx                                 // 0x00409b6a    85c9
                         {disp8} je         _jmp_addr_0x00409b76                     // 0x00409b6c    7408
                         {disp32} mov       ebp, dword ptr [ecx + 0x000000ac]        // 0x00409b6e    8ba9ac000000
                         {disp8} jmp        _jmp_addr_0x00409b7b                     // 0x00409b74    eb05
_jmp_addr_0x00409b76:    mov                ebp, 0x0000000a                          // 0x00409b76    bd0a000000
_jmp_addr_0x00409b7b:    test               eax, eax                                 // 0x00409b7b    85c0
                         {disp8} je         _jmp_addr_0x00409b88                     // 0x00409b7d    7409
                         cdq                                                         // 0x00409b7f    99
                         sub.s              eax, edx                                 // 0x00409b80    2bc2
                         mov.s              ebx, eax                                 // 0x00409b82    8bd8
                         sar                ebx, 1                                   // 0x00409b84    d1fb
                         {disp8} jmp        _jmp_addr_0x00409ba6                     // 0x00409b86    eb1e
_jmp_addr_0x00409b88:    {disp32} mov       eax, dword ptr [esi + 0x00000234]        // 0x00409b88    8b8634020000
                         test               eax, eax                                 // 0x00409b8e    85c0
                         {disp8} je         _jmp_addr_0x00409ba1                     // 0x00409b90    740f
                         {disp32} mov       eax, dword ptr [eax + 0x000000ac]        // 0x00409b92    8b80ac000000
                         cdq                                                         // 0x00409b98    99
                         sub.s              eax, edx                                 // 0x00409b99    2bc2
                         mov.s              ebx, eax                                 // 0x00409b9b    8bd8
                         sar                ebx, 1                                   // 0x00409b9d    d1fb
                         {disp8} jmp        _jmp_addr_0x00409ba6                     // 0x00409b9f    eb05
_jmp_addr_0x00409ba1:    mov                ebx, 0x00000005                          // 0x00409ba1    bb05000000
_jmp_addr_0x00409ba6:    {disp8} mov        edx, dword ptr [esp + 0x1c]              // 0x00409ba6    8b54241c
                         {disp8} mov        ecx, dword ptr [esi + 0x10]              // 0x00409baa    8b4e10
                         {disp8} mov        edi, dword ptr [esi + 0x08]              // 0x00409bad    8b7e08
                         push               0x0                                      // 0x00409bb0    6a00
                         push               edx                                      // 0x00409bb2    52
                         push               ebp                                      // 0x00409bb3    55
                         {disp8} mov        ebp, dword ptr [esi + 0x14]              // 0x00409bb4    8b6e14
                         {disp8} lea        eax, dword ptr [esi + 0x24]              // 0x00409bb7    8d4624
                         push               eax                                      // 0x00409bba    50
                         {disp8} mov        eax, dword ptr [esi + 0x0c]              // 0x00409bbb    8b460c
                         add.s              eax, ebp                                 // 0x00409bbe    03c5
                         mov.s              edx, ecx                                 // 0x00409bc0    8bd1
                         sub.s              edx, edi                                 // 0x00409bc2    2bd7
                         push               0x1                                      // 0x00409bc4    6a01
                         push               edx                                      // 0x00409bc6    52
                         cdq                                                         // 0x00409bc7    99
                         sub.s              eax, edx                                 // 0x00409bc8    2bc2
                         sar                eax, 1                                   // 0x00409bca    d1f8
                         sub.s              eax, ebx                                 // 0x00409bcc    2bc3
                         push               eax                                      // 0x00409bce    50
                         lea                eax, dword ptr [edi + ecx * 0x1]         // 0x00409bcf    8d040f
_jmp_addr_0x00409bd2:    cdq                                                         // 0x00409bd2    99
                         sub.s              eax, edx                                 // 0x00409bd3    2bc2
                         sar                eax, 1                                   // 0x00409bd5    d1f8
                         push               eax                                      // 0x00409bd7    50
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z           // 0x00409bd8    e8d37d0000
                         add                esp, 0x20                                // 0x00409bdd    83c420
                         fstp               st(0)                                    // 0x00409be0    ddd8
                         pop                edi                                      // 0x00409be2    5f
                         pop                esi                                      // 0x00409be3    5e
                         pop                ebp                                      // 0x00409be4    5d
                         pop                ebx                                      // 0x00409be5    5b
                         pop                ecx                                      // 0x00409be6    59
                         ret                0x0008                                   // 0x00409be7    c20800
                         call               dword ptr [rdata_bytes + 0xe0]           // 0x00409bea    ff15e0908a00
@__ct__11SetupSliderFiiiiifPw@36:    {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x00409bf0    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x10]              // 0x00409bf4    8b542410
                         push               esi                                      // 0x00409bf8    56
                         push               edi                                      // 0x00409bf9    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]              // 0x00409bfa    8b7c2414
                         push               eax                                      // 0x00409bfe    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00409bff    8b442414
                         mov.s              esi, ecx                                 // 0x00409c03    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x20]              // 0x00409c05    8b4c2420
                         push               ecx                                      // 0x00409c09    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x00409c0a    8b4c2414
                         push               edx                                      // 0x00409c0e    52
                         push               edi                                      // 0x00409c0f    57
                         push               eax                                      // 0x00409c10    50
                         push               ecx                                      // 0x00409c11    51
                         mov.s              ecx, esi                                 // 0x00409c12    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z         // 0x00409c14    e837f6ffff
                         {disp8} mov        edx, dword ptr [esp + 0x20]              // 0x00409c19    8b542420
                         {disp8} mov        ecx, dword ptr [esi + 0x14]              // 0x00409c1d    8b4e14
                         mov.s              eax, edx                                 // 0x00409c20    8bc2
                         sub.s              ecx, edi                                 // 0x00409c22    2bcf
                         {disp32} mov       dword ptr [esi + 0x0000023c], eax        // 0x00409c24    89863c020000
                         pop                edi                                      // 0x00409c2a    5f
                         mov                dword ptr [esi], 0x008ab2ec              // 0x00409c2b    c706ecb28a00
                         {disp32} mov       dword ptr [esi + 0x00000240], edx        // 0x00409c31    899640020000
                         {disp32} mov       dword ptr [esi + 0x0000024c], ecx        // 0x00409c37    898e4c020000
                         mov.s              eax, esi                                 // 0x00409c3d    8bc6
                         pop                esi                                      // 0x00409c3f    5e
                         ret                0x001c                                   // 0x00409c40    c21c00
                         nop                                                         // 0x00409c43    90
                         nop                                                         // 0x00409c44    90
                         nop                                                         // 0x00409c45    90
                         nop                                                         // 0x00409c46    90
                         nop                                                         // 0x00409c47    90
                         nop                                                         // 0x00409c48    90
                         nop                                                         // 0x00409c49    90
                         nop                                                         // 0x00409c4a    90
                         nop                                                         // 0x00409c4b    90
                         nop                                                         // 0x00409c4c    90
                         nop                                                         // 0x00409c4d    90
                         nop                                                         // 0x00409c4e    90
                         nop                                                         // 0x00409c4f    90
??_GSetupSlider@@UAEPAXI@Z:
                         push               esi                                      // 0x00409c50    56
                         mov.s              esi, ecx                                 // 0x00409c51    8bf1
                         call               ??1SetupControl@@UAE@XZ                  // 0x00409c53    e868f7ffff
                         test               byte ptr [esp + 0x08], 0x01              // 0x00409c58    f644240801
                         {disp8} je         _jmp_addr_0x00409c68                     // 0x00409c5d    7409
                         push               esi                                      // 0x00409c5f    56
                         call               ??3@YAXPAX@Z                             // 0x00409c60    e833523a00
                         add                esp, 0x04                                // 0x00409c65    83c404
_jmp_addr_0x00409c68:    mov.s              eax, esi                                 // 0x00409c68    8bc6
                         pop                esi                                      // 0x00409c6a    5e
                         ret                0x0004                                   // 0x00409c6b    c20400
                         nop                                                         // 0x00409c6e    90
                         nop                                                         // 0x00409c6f    90
_Drag__11SetupSliderFii:
                         push               ecx                                      // 0x00409c70    51
                         push               ebx                                      // 0x00409c71    53
                         push               esi                                      // 0x00409c72    56
                         mov.s              esi, ecx                                 // 0x00409c73    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x10]              // 0x00409c75    8b4610
                         {disp32} mov       ebx, dword ptr [esi + 0x0000024c]        // 0x00409c78    8b9e4c020000
                         push               edi                                      // 0x00409c7e    57
                         {disp8} mov        edi, dword ptr [esi + 0x08]              // 0x00409c7f    8b7e08
                         sub.s              eax, edi                                 // 0x00409c82    2bc7
                         sub.s              eax, ebx                                 // 0x00409c84    2bc3
                         {disp8} mov        dword ptr [esp + 0x0c], eax              // 0x00409c86    8944240c
                         {disp8} fild       dword ptr [esp + 0x0c]                   // 0x00409c8a    db44240c
                         {disp8} fst        dword ptr [esp + 0x0c]                   // 0x00409c8e    d954240c
                         {disp32} fmul      dword ptr [esi + 0x00000240]             // 0x00409c92    d88e40020000
                         call               _jmp_addr_0x007a1400                     // 0x00409c98    e863773900
                         {disp32} mov       ecx, dword ptr [esi + 0x00000244]        // 0x00409c9d    8b8e44020000
                         add.s              eax, edi                                 // 0x00409ca3    03c7
                         cmp.s              ecx, eax                                 // 0x00409ca5    3bc8
                         {disp8} jl         _jmp_addr_0x00409cce                     // 0x00409ca7    7c25
                         lea                edx, dword ptr [ebx + eax * 0x1]         // 0x00409ca9    8d1403
                         cmp.s              ecx, edx                                 // 0x00409cac    3bca
                         {disp8} jge        _jmp_addr_0x00409cca                     // 0x00409cae    7d1a
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00409cb0    8b442414
                         sub.s              eax, ecx                                 // 0x00409cb4    2bc1
                         {disp8} mov        dword ptr [esp + 0x14], eax              // 0x00409cb6    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                   // 0x00409cba    db442414
                         {disp8} fdiv       dword ptr [esp + 0x0c]                   // 0x00409cbe    d874240c
                         {disp32} fadd      dword ptr [esi + 0x00000240]             // 0x00409cc2    d88640020000
                         {disp8} jmp        _jmp_addr_0x00409cf2                     // 0x00409cc8    eb28
_jmp_addr_0x00409cca:    cmp.s              ecx, eax                                 // 0x00409cca    3bc8
                         {disp8} jge        _jmp_addr_0x00409ce0                     // 0x00409ccc    7d12
_jmp_addr_0x00409cce:    {disp32} fld       dword ptr [esi + 0x00000240]             // 0x00409cce    d98640020000
                         {disp32} fsub      dword ptr [__real@3dcccccd]              // 0x00409cd4    d8252cb28a00
                         {disp32} fstp      dword ptr [esi + 0x0000023c]             // 0x00409cda    d99e3c020000
_jmp_addr_0x00409ce0:    add.s              ebx, eax                                 // 0x00409ce0    03d8
                         cmp.s              ecx, ebx                                 // 0x00409ce2    3bcb
                         {disp8} jl         _jmp_addr_0x00409cf8                     // 0x00409ce4    7c12
                         {disp32} fld       dword ptr [esi + 0x00000240]             // 0x00409ce6    d98640020000
                         {disp32} fadd      dword ptr [__real@3dcccccd]              // 0x00409cec    d8052cb28a00
_jmp_addr_0x00409cf2:    {disp32} fstp      dword ptr [esi + 0x0000023c]             // 0x00409cf2    d99e3c020000
_jmp_addr_0x00409cf8:    {disp32} fld       dword ptr [esi + 0x0000023c]             // 0x00409cf8    d9863c020000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00409cfe    d81d98a38a00
                         fnstsw             ax                                       // 0x00409d04    dfe0
                         test               ah, 0x41                                 // 0x00409d06    f6c441
                         {disp8} jne        _jmp_addr_0x00409d42                     // 0x00409d09    7537
                         {disp32} fld       dword ptr [esi + 0x0000023c]             // 0x00409d0b    d9863c020000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x00409d11    d81d90a38a00
                         fnstsw             ax                                       // 0x00409d17    dfe0
                         test               ah, 0x01                                 // 0x00409d19    f6c401
                         {disp8} je         _jmp_addr_0x00409d31                     // 0x00409d1c    7413
                         {disp32} fld       dword ptr [esi + 0x0000023c]             // 0x00409d1e    d9863c020000
                         pop                edi                                      // 0x00409d24    5f
                         {disp32} fstp      dword ptr [esi + 0x0000023c]             // 0x00409d25    d99e3c020000
                         pop                esi                                      // 0x00409d2b    5e
                         pop                ebx                                      // 0x00409d2c    5b
                         pop                ecx                                      // 0x00409d2d    59
                         ret                0x0008                                   // 0x00409d2e    c20800
_jmp_addr_0x00409d31:    pop                edi                                      // 0x00409d31    5f
                         {disp32} mov       dword ptr [esi + 0x0000023c], 0x3f800000 // 0x00409d32    c7863c0200000000803f
                         pop                esi                                      // 0x00409d3c    5e
                         pop                ebx                                      // 0x00409d3d    5b
                         pop                ecx                                      // 0x00409d3e    59
                         ret                0x0008                                   // 0x00409d3f    c20800
_jmp_addr_0x00409d42:    pop                edi                                      // 0x00409d42    5f
                         {disp32} mov       dword ptr [esi + 0x0000023c], 0x00000000 // 0x00409d43    c7863c02000000000000
                         pop                esi                                      // 0x00409d4d    5e
                         pop                ebx                                      // 0x00409d4e    5b
                         pop                ecx                                      // 0x00409d4f    59
                         ret                0x0008                                   // 0x00409d50    c20800
                         nop                                                         // 0x00409d53    90
                         nop                                                         // 0x00409d54    90
                         nop                                                         // 0x00409d55    90
                         nop                                                         // 0x00409d56    90
                         nop                                                         // 0x00409d57    90
                         nop                                                         // 0x00409d58    90
                         nop                                                         // 0x00409d59    90
                         nop                                                         // 0x00409d5a    90
                         nop                                                         // 0x00409d5b    90
                         nop                                                         // 0x00409d5c    90
                         nop                                                         // 0x00409d5d    90
                         nop                                                         // 0x00409d5e    90
                         nop                                                         // 0x00409d5f    90
_MouseDown__11SetupSliderFiib:
                         {disp8} mov        al, byte ptr [esp + 0x0c]                // 0x00409d60    8a44240c
                         test               al, al                                   // 0x00409d64    84c0
                         {disp8} je         _jmp_addr_0x00409d88                     // 0x00409d66    7420
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00409d68    8b442404
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00409d6c    8b542408
                         {disp32} mov       dword ptr [ecx + 0x00000244], eax        // 0x00409d70    898144020000
                         {disp32} mov       eax, dword ptr [ecx + 0x0000023c]        // 0x00409d76    8b813c020000
                         {disp32} mov       dword ptr [ecx + 0x00000248], edx        // 0x00409d7c    899148020000
                         {disp32} mov       dword ptr [ecx + 0x00000240], eax        // 0x00409d82    898140020000
_jmp_addr_0x00409d88:    ret                0x000c                                   // 0x00409d88    c20c00
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                     // 0x00409d8b    e8e97affff
_MouseUp__11SetupSliderFiib:
                         push               ebx                                      // 0x00409d90    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]              // 0x00409d91    8b5c2408
                         push               esi                                      // 0x00409d95    56
                         mov.s              esi, ecx                                 // 0x00409d96    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000234]        // 0x00409d98    8b8634020000
                         {disp32} mov       ecx, dword ptr [eax + 0x000000b0]        // 0x00409d9e    8b88b0000000
                         test               ecx, ecx                                 // 0x00409da4    85c9
                         push               edi                                      // 0x00409da6    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]              // 0x00409da7    8b7c2414
                         {disp8} je         _jmp_addr_0x00409db5                     // 0x00409dab    7408
                         push               edi                                      // 0x00409dad    57
                         push               ebx                                      // 0x00409dae    53
                         push               esi                                      // 0x00409daf    56
                         push               eax                                      // 0x00409db0    50
                         push               0x1                                      // 0x00409db1    6a01
                         call               ecx                                      // 0x00409db3    ffd1
_jmp_addr_0x00409db5:    mov                eax, dword ptr [esi]                     // 0x00409db5    8b06
                         push               edi                                      // 0x00409db7    57
                         push               ebx                                      // 0x00409db8    53
                         mov.s              ecx, esi                                 // 0x00409db9    8bce
                         call               dword ptr [eax + 0x24]                   // 0x00409dbb    ff5024
                         pop                edi                                      // 0x00409dbe    5f
                         pop                esi                                      // 0x00409dbf    5e
                         pop                ebx                                      // 0x00409dc0    5b
                         ret                0x000c                                   // 0x00409dc1    c20c00
                         nop                                                         // 0x00409dc4    90
                         nop                                                         // 0x00409dc5    90
                         nop                                                         // 0x00409dc6    90
                         nop                                                         // 0x00409dc7    90
                         nop                                                         // 0x00409dc8    90
                         nop                                                         // 0x00409dc9    90
                         nop                                                         // 0x00409dca    90
                         nop                                                         // 0x00409dcb    90
                         nop                                                         // 0x00409dcc    90
                         nop                                                         // 0x00409dcd    90
                         nop                                                         // 0x00409dce    90
                         nop                                                         // 0x00409dcf    90
@AutoScroll__9SetupListFb@9:    {disp8} mov        al, byte ptr [esp + 0x04]                // 0x00409dd0    8a442404
                         test               al, al                                   // 0x00409dd4    84c0
                         push               ebx                                      // 0x00409dd6    53
                         push               esi                                      // 0x00409dd7    56
                         push               edi                                      // 0x00409dd8    57
                         mov.s              esi, ecx                                 // 0x00409dd9    8bf1
                         {disp32} jne       _jmp_addr_0x00409e93                     // 0x00409ddb    0f85b2000000
                         {disp32} mov       ebx, dword ptr [esi + 0x00000248]        // 0x00409de1    8b9e48020000
                         test               ebx, ebx                                 // 0x00409de7    85db
                         {disp32} jl        _jmp_addr_0x00409e93                     // 0x00409de9    0f8ca4000000
                         {disp32} mov       edi, dword ptr [esi + 0x0000025c]        // 0x00409def    8bbe5c020000
                         {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00409df5    d90598a38a00
                         mov                edx, dword ptr [edi + ebx * 0x4]         // 0x00409dfb    8b149f
                         {disp8} mov        eax, dword ptr [esi + 0x14]              // 0x00409dfe    8b4614
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]              // 0x00409e01    8b4e0c
                         sub.s              eax, edx                                 // 0x00409e04    2bc2
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]        // 0x00409e06    8b9650020000
                         sub.s              eax, ecx                                 // 0x00409e0c    2bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax              // 0x00409e0e    89442410
                         {disp8} fild       dword ptr [esp + 0x10]                   // 0x00409e12    db442410
                         xor.s              ecx, ecx                                 // 0x00409e16    33c9
                         test               edx, edx                                 // 0x00409e18    85d2
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00409e1a    d95c2410
                         {disp8} jle        _jmp_addr_0x00409e4e                     // 0x00409e1e    7e2e
_jmp_addr_0x00409e20:    cmp.s              ecx, ebx                                 // 0x00409e20    3bcb
                         {disp8} jne        _jmp_addr_0x00409e44                     // 0x00409e22    7520
                         {disp32} fild      dword ptr [esi + 0x0000027c]             // 0x00409e24    db867c020000
                         fld                st(1)                                    // 0x00409e2a    d9c1
                         fcomp              st(1)                                    // 0x00409e2c    d8d9
                         fnstsw             ax                                       // 0x00409e2e    dfe0
                         test               ah, 0x01                                 // 0x00409e30    f6c401
                         {disp8} jne        _jmp_addr_0x00409e56                     // 0x00409e33    7521
                         {disp8} fadd       dword ptr [esp + 0x10]                   // 0x00409e35    d8442410
                         fld                st(1)                                    // 0x00409e39    d9c1
                         fcompp                                                      // 0x00409e3b    ded9
                         fnstsw             ax                                       // 0x00409e3d    dfe0
                         test               ah, 0x41                                 // 0x00409e3f    f6c441
                         {disp8} je         _jmp_addr_0x00409e5a                     // 0x00409e42    7416
_jmp_addr_0x00409e44:    fiadd              dword ptr [edi]                          // 0x00409e44    da07
                         inc                ecx                                      // 0x00409e46    41
                         add                edi, 0x04                                // 0x00409e47    83c704
                         cmp.s              ecx, edx                                 // 0x00409e4a    3bca
                         {disp8} jl         _jmp_addr_0x00409e20                     // 0x00409e4c    7cd2
_jmp_addr_0x00409e4e:    pop                edi                                      // 0x00409e4e    5f
                         fstp               st(0)                                    // 0x00409e4f    ddd8
                         pop                esi                                      // 0x00409e51    5e
                         pop                ebx                                      // 0x00409e52    5b
                         ret                0x0004                                   // 0x00409e53    c20400
_jmp_addr_0x00409e56:    fstp               st(0)                                    // 0x00409e56    ddd8
                         {disp8} jmp        _jmp_addr_0x00409e5e                     // 0x00409e58    eb04
_jmp_addr_0x00409e5a:    {disp8} fsub       dword ptr [esp + 0x10]                   // 0x00409e5a    d8642410
_jmp_addr_0x00409e5e:    call               _jmp_addr_0x007a1400                     // 0x00409e5e    e89d753900
                         test               eax, eax                                 // 0x00409e63    85c0
                         {disp32} mov       dword ptr [esi + 0x0000027c], eax        // 0x00409e65    89867c020000
                         {disp8} jle        _jmp_addr_0x00409e85                     // 0x00409e6b    7e18
                         {disp32} mov       ecx, dword ptr [esi + 0x00000278]        // 0x00409e6d    8b8e78020000
                         cmp.s              eax, ecx                                 // 0x00409e73    3bc1
                         {disp8} jl         _jmp_addr_0x00409e87                     // 0x00409e75    7c10
                         mov.s              eax, ecx                                 // 0x00409e77    8bc1
                         pop                edi                                      // 0x00409e79    5f
                         {disp32} mov       dword ptr [esi + 0x0000027c], eax        // 0x00409e7a    89867c020000
                         pop                esi                                      // 0x00409e80    5e
                         pop                ebx                                      // 0x00409e81    5b
                         ret                0x0004                                   // 0x00409e82    c20400
_jmp_addr_0x00409e85:    xor.s              eax, eax                                 // 0x00409e85    33c0
_jmp_addr_0x00409e87:    pop                edi                                      // 0x00409e87    5f
                         {disp32} mov       dword ptr [esi + 0x0000027c], eax        // 0x00409e88    89867c020000
                         pop                esi                                      // 0x00409e8e    5e
                         pop                ebx                                      // 0x00409e8f    5b
                         ret                0x0004                                   // 0x00409e90    c20400
_jmp_addr_0x00409e93:    {disp32} mov       ecx, dword ptr [esi + 0x00000278]        // 0x00409e93    8b8e78020000
                         pop                edi                                      // 0x00409e99    5f
                         {disp32} mov       dword ptr [esi + 0x0000027c], ecx        // 0x00409e9a    898e7c020000
                         pop                esi                                      // 0x00409ea0    5e
                         pop                ebx                                      // 0x00409ea1    5b
                         ret                0x0004                                   // 0x00409ea2    c20400
                         nop                                                         // 0x00409ea5    90
                         nop                                                         // 0x00409ea6    90
                         nop                                                         // 0x00409ea7    90
                         nop                                                         // 0x00409ea8    90
                         nop                                                         // 0x00409ea9    90
                         nop                                                         // 0x00409eaa    90
                         nop                                                         // 0x00409eab    90
                         nop                                                         // 0x00409eac    90
                         nop                                                         // 0x00409ead    90
                         nop                                                         // 0x00409eae    90
                         nop                                                         // 0x00409eaf    90
_KeyDown__9SetupListFii:
                         push               esi                                      // 0x00409eb0    56
                         mov.s              esi, ecx                                 // 0x00409eb1    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000284]          // 0x00409eb3    8a8684020000
                         test               al, al                                   // 0x00409eb9    84c0
                         {disp32} jne       _jmp_addr_0x0040a0e8                     // 0x00409ebb    0f8527020000
                         {disp32} mov       al, byte ptr [esi + 0x00000291]          // 0x00409ec1    8a8691020000
                         test               al, al                                   // 0x00409ec7    84c0
                         {disp32} je        _jmp_addr_0x0040a0e8                     // 0x00409ec9    0f8419020000
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00409ecf    8b442408
                         add                eax, 0xffffff39                          // 0x00409ed3    0539ffffff
                         cmp                eax, 0x09                                // 0x00409ed8    83f809
                         push               edi                                      // 0x00409edb    57
                         {disp32} ja        _jmp_addr_0x0040a0cf                     // 0x00409edc    0f87ed010000
                         xor.s              ecx, ecx                                 // 0x00409ee2    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0040a100]          // 0x00409ee4    8a8800a14000
                         jmp                dword ptr [ecx*4 + 0x40a0ec]             // 0x00409eea    ff248deca04000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]        // 0x00409ef1    8b8650020000
                         test               eax, eax                                 // 0x00409ef7    85c0
                         {disp8} jle        _jmp_addr_0x00409f07                     // 0x00409ef9    7e0c
                         {disp32} mov       dword ptr [esi + 0x00000248], 0x00000000 // 0x00409efb    c7864802000000000000
                         {disp8} jmp        _jmp_addr_0x00409f11                     // 0x00409f05    eb0a
_jmp_addr_0x00409f07:    {disp32} mov       dword ptr [esi + 0x00000248], 0xffffffff // 0x00409f07    c78648020000ffffffff
_jmp_addr_0x00409f11:    {disp8} mov        eax, dword ptr [esi + 0x04]              // 0x00409f11    8b4604
                         test               eax, eax                                 // 0x00409f14    85c0
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x00409f16    0f84aa010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]   // 0x00409f1c    a100cdc400
                         test               eax, eax                                 // 0x00409f21    85c0
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x00409f23    0f849d010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]   // 0x00409f29    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4                     // 0x00409f2f    e88c9e3e00
                         test               eax, eax                                 // 0x00409f34    85c0
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x00409f36    0f848a010000
                         {disp32} jmp       _jmp_addr_0x0040a0a6                     // 0x00409f3c    e965010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]        // 0x00409f41    8b8650020000
                         {disp8} lea        edi, dword ptr [eax + -0x01]             // 0x00409f47    8d78ff
_jmp_addr_0x00409f4a:    test               edi, edi                                 // 0x00409f4a    85ff
                         {disp8} jl         _jmp_addr_0x00409f5a                     // 0x00409f4c    7c0c
                         cmp.s              edi, eax                                 // 0x00409f4e    3bf8
                         {disp8} jge        _jmp_addr_0x00409f5a                     // 0x00409f50    7d08
                         {disp32} mov       dword ptr [esi + 0x00000248], edi        // 0x00409f52    89be48020000
                         {disp8} jmp        _jmp_addr_0x00409f64                     // 0x00409f58    eb0a
_jmp_addr_0x00409f5a:    {disp32} mov       dword ptr [esi + 0x00000248], 0xffffffff // 0x00409f5a    c78648020000ffffffff
_jmp_addr_0x00409f64:    {disp8} mov        eax, dword ptr [esi + 0x04]              // 0x00409f64    8b4604
                         test               eax, eax                                 // 0x00409f67    85c0
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x00409f69    0f8457010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]   // 0x00409f6f    a100cdc400
                         test               eax, eax                                 // 0x00409f74    85c0
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x00409f76    0f844a010000
                         test               edi, edi                                 // 0x00409f7c    85ff
                         {disp32} jl        _jmp_addr_0x0040a0c6                     // 0x00409f7e    0f8c42010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]   // 0x00409f84    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4                     // 0x00409f8a    e8319e3e00
                         cmp.s              eax, edi                                 // 0x00409f8f    3bc7
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x00409f91    0f842f010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]        // 0x00409f97    8b8650020000
                         push               edi                                      // 0x00409f9d    57
                         dec                eax                                      // 0x00409f9e    48
                         push               eax                                      // 0x00409f9f    50
                         {disp32} jmp       _jmp_addr_0x0040a0b0                     // 0x00409fa0    e90b010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000248]        // 0x00409fa5    8b8648020000
                         test               eax, eax                                 // 0x00409fab    85c0
                         {disp8} jle        _jmp_addr_0x0040a011                     // 0x00409fad    7e62
                         {disp8} lea        edi, dword ptr [eax + -0x01]             // 0x00409faf    8d78ff
                         test               edi, edi                                 // 0x00409fb2    85ff
                         {disp8} jl         _jmp_addr_0x00409fc6                     // 0x00409fb4    7c10
                         cmp                edi, dword ptr [esi + 0x00000250]        // 0x00409fb6    3bbe50020000
                         {disp8} jge        _jmp_addr_0x00409fc6                     // 0x00409fbc    7d08
                         {disp32} mov       dword ptr [esi + 0x00000248], edi        // 0x00409fbe    89be48020000
                         {disp8} jmp        _jmp_addr_0x00409fd0                     // 0x00409fc4    eb0a
_jmp_addr_0x00409fc6:    {disp32} mov       dword ptr [esi + 0x00000248], 0xffffffff // 0x00409fc6    c78648020000ffffffff
_jmp_addr_0x00409fd0:    {disp8} mov        eax, dword ptr [esi + 0x04]              // 0x00409fd0    8b4604
                         test               eax, eax                                 // 0x00409fd3    85c0
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x00409fd5    0f84eb000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]   // 0x00409fdb    a100cdc400
                         test               eax, eax                                 // 0x00409fe0    85c0
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x00409fe2    0f84de000000
                         test               edi, edi                                 // 0x00409fe8    85ff
                         {disp32} jl        _jmp_addr_0x0040a0c6                     // 0x00409fea    0f8cd6000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]   // 0x00409ff0    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4                     // 0x00409ff6    e8c59d3e00
                         cmp.s              eax, edi                                 // 0x00409ffb    3bc7
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x00409ffd    0f84c3000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]        // 0x0040a003    8b8e50020000
                         push               edi                                      // 0x0040a009    57
                         dec                ecx                                      // 0x0040a00a    49
                         push               ecx                                      // 0x0040a00b    51
                         {disp32} jmp       _jmp_addr_0x0040a0b0                     // 0x0040a00c    e99f000000
_jmp_addr_0x0040a011:    {disp32} mov       eax, dword ptr [esi + 0x00000250]        // 0x0040a011    8b8650020000
                         {disp8} lea        edi, dword ptr [eax + -0x01]             // 0x0040a017    8d78ff
                         test               edi, edi                                 // 0x0040a01a    85ff
                         {disp8} jl         _jmp_addr_0x0040a02a                     // 0x0040a01c    7c0c
                         cmp.s              edi, eax                                 // 0x0040a01e    3bf8
                         {disp8} jge        _jmp_addr_0x0040a02a                     // 0x0040a020    7d08
                         {disp32} mov       dword ptr [esi + 0x00000248], edi        // 0x0040a022    89be48020000
                         {disp8} jmp        _jmp_addr_0x0040a034                     // 0x0040a028    eb0a
_jmp_addr_0x0040a02a:    {disp32} mov       dword ptr [esi + 0x00000248], 0xffffffff // 0x0040a02a    c78648020000ffffffff
_jmp_addr_0x0040a034:    {disp8} mov        eax, dword ptr [esi + 0x04]              // 0x0040a034    8b4604
                         test               eax, eax                                 // 0x0040a037    85c0
                         {disp32} je        _jmp_addr_0x0040a0c6                     // 0x0040a039    0f8487000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]   // 0x0040a03f    a100cdc400
                         test               eax, eax                                 // 0x0040a044    85c0
                         {disp8} je         _jmp_addr_0x0040a0c6                     // 0x0040a046    747e
                         test               edi, edi                                 // 0x0040a048    85ff
                         {disp8} jl         _jmp_addr_0x0040a0c6                     // 0x0040a04a    7c7a
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]   // 0x0040a04c    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4                     // 0x0040a052    e8699d3e00
                         cmp.s              eax, edi                                 // 0x0040a057    3bc7
                         {disp8} je         _jmp_addr_0x0040a0c6                     // 0x0040a059    746b
                         push               edi                                      // 0x0040a05b    57
                         {disp8} jmp        _jmp_addr_0x0040a0a8                     // 0x0040a05c    eb4a
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]        // 0x0040a05e    8b8650020000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000248]        // 0x0040a064    8b8e48020000
                         {disp8} lea        edx, dword ptr [eax + -0x01]             // 0x0040a06a    8d50ff
                         cmp.s              ecx, edx                                 // 0x0040a06d    3bca
                         {disp8} jge        _jmp_addr_0x0040a079                     // 0x0040a06f    7d08
                         {disp8} lea        edi, dword ptr [ecx + 0x01]              // 0x0040a071    8d7901
                         {disp32} jmp       _jmp_addr_0x00409f4a                     // 0x0040a074    e9d1feffff
_jmp_addr_0x0040a079:    xor.s              ecx, ecx                                 // 0x0040a079    33c9
                         test               eax, eax                                 // 0x0040a07b    85c0
                         {disp8} mov        eax, dword ptr [esi + 0x04]              // 0x0040a07d    8b4604
                         setg               cl                                       // 0x0040a080    0f9fc1
                         dec                ecx                                      // 0x0040a083    49
                         test               eax, eax                                 // 0x0040a084    85c0
                         {disp32} mov       dword ptr [esi + 0x00000248], ecx        // 0x0040a086    898e48020000
                         {disp8} je         _jmp_addr_0x0040a0c6                     // 0x0040a08c    7438
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]   // 0x0040a08e    a100cdc400
                         test               eax, eax                                 // 0x0040a093    85c0
                         {disp8} je         _jmp_addr_0x0040a0c6                     // 0x0040a095    742f
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]   // 0x0040a097    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4                     // 0x0040a09d    e81e9d3e00
                         test               eax, eax                                 // 0x0040a0a2    85c0
                         {disp8} je         _jmp_addr_0x0040a0c6                     // 0x0040a0a4    7420
_jmp_addr_0x0040a0a6:    push               0x0                                      // 0x0040a0a6    6a00
_jmp_addr_0x0040a0a8:    {disp32} mov       edx, dword ptr [esi + 0x00000250]        // 0x0040a0a8    8b9650020000
                         dec                edx                                      // 0x0040a0ae    4a
                         push               edx                                      // 0x0040a0af    52
_jmp_addr_0x0040a0b0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]   // 0x0040a0b0    8b0d04c1e800
                         push               0x0                                      // 0x0040a0b6    6a00
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20                     // 0x0040a0b8    e8239d3e00
                         push               0x0                                      // 0x0040a0bd    6a00
                         mov.s              ecx, esi                                 // 0x0040a0bf    8bce
                         call               @AutoScroll__9SetupListFb@9              // 0x0040a0c1    e80afdffff
_jmp_addr_0x0040a0c6:    push               0x0                                      // 0x0040a0c6    6a00
                         mov.s              ecx, esi                                 // 0x0040a0c8    8bce
                         call               @AutoScroll__9SetupListFb@9              // 0x0040a0ca    e801fdffff
_jmp_addr_0x0040a0cf:    {disp32} mov       eax, dword ptr [esi + 0x00000248]        // 0x0040a0cf    8b8648020000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000027c]        // 0x0040a0d5    8b8e7c020000
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax        // 0x0040a0db    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000280], ecx        // 0x0040a0e1    898e80020000
                         pop                edi                                      // 0x0040a0e7    5f
_jmp_addr_0x0040a0e8:    pop                esi                                      // 0x0040a0e8    5e
                         ret                0x0008                                   // 0x0040a0e9    c20800

// Snippet: jmptbl, [0x0040a0ec, 0x0040a100)
.byte 0xf1, 0x9e, 0x40, 0x00      // 0x0040a0ec
.byte 0xa5, 0x9f, 0x40, 0x00      // 0x0040a0f0
.byte 0x41, 0x9f, 0x40, 0x00      // 0x0040a0f4
.byte 0x5e, 0xa0, 0x40, 0x00      // 0x0040a0f8
.byte 0xcf, 0xa0, 0x40, 0x00      // 0x0040a0fc

// Snippet: ijmptbl, [0x0040a100, 0x0040a10a)
.byte 0x00, 0x01, 0x04, 0x04      // 0x0040a100
.byte 0x04, 0x04, 0x04, 0x04      // 0x0040a104
.byte 0x02, 0x03                  // 0x0040a108

// Snippet: db, [0x0040a10a, 0x0040a110)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0040a10a
.byte 0x90, 0x90                  // 0x0040a10e

