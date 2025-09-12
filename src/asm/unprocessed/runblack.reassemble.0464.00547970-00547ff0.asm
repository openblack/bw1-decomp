.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern _GetSmallTextSize__Fv
.extern _jmp_addr_0x00408100
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__14SetupMultiListFiiiiii@32
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x007197f0
.extern _jmp_addr_0x00719840
.extern _wcsncpy
.extern _wcslen
.extern ___nw__FUl

.globl ?Init@SpellSetupBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@SpellSetupBox@@UAEXXZ
.globl ?InitControls@SpellSetupBox@@UAEXXZ


start_0x00547970_0x00547ff0:
// Snippet: asm, [0x00547970, 0x00547fd3)
?Init@SpellSetupBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x00547970    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x00547974    8b542404
                         push             ebx                                           // 0x00547978    53
                         push             edi                                           // 0x00547979    57
                         mov.s            edi, ecx                                      // 0x0054797a    8bf9
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0054797c    8b4c2410
                         push             eax                                           // 0x00547980    50
                         push             ecx                                           // 0x00547981    51
                         push             edx                                           // 0x00547982    52
                         mov.s            ecx, edi                                      // 0x00547983    8bcf
                         call             @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00547985    e876bafcff
                         push             0x00000145                                    // 0x0054798a    6845010000
                         push             0x00bea7c8                                    // 0x0054798f    68c8a7be00
                         push             0x00000468                                    // 0x00547994    6868040000
                         {disp32} mov     dword ptr [data_bytes + 0x30b668], edi        // 0x00547999    893d6816cd00
                         call             ___nw__FUl                                    // 0x0054799f    e8ec3d2900
                         xor.s            ebx, ebx                                      // 0x005479a4    33db
                         add              esp, 0x0c                                     // 0x005479a6    83c40c
                         cmp.s            eax, ebx                                      // 0x005479a9    3bc3
                         {disp8} je       _jmp_addr_0x005479d2                          // 0x005479ab    7425
                         push             ebx                                           // 0x005479ad    53
                         push             0x009cee0c                                    // 0x005479ae    680cee9c00
                         push             0x1e                                          // 0x005479b3    6a1e
                         push             0x000001f4                                    // 0x005479b5    68f4010000
                         push             0x0000020d                                    // 0x005479ba    680d020000
                         push             0x00000096                                    // 0x005479bf    6896000000
                         push             0x000003e6                                    // 0x005479c4    68e6030000
                         mov.s            ecx, eax                                      // 0x005479c9    8bc8
                         call             @__ct__9SetupEditFiiiiiPwi@33                 // 0x005479cb    e85048ecff
                         {disp8} jmp      _jmp_addr_0x005479d4                          // 0x005479d0    eb02
_jmp_addr_0x005479d2:    xor.s            eax, eax                                      // 0x005479d2    33c0
_jmp_addr_0x005479d4:    {disp32} mov     dword ptr [edi + 0x00000440], eax             // 0x005479d4    898740040000
                         call             _GetSmallTextSize__Fv                         // 0x005479da    e83100ecff
                         {disp32} mov     ecx, dword ptr [edi + 0x00000440]             // 0x005479df    8b8f40040000
                         push             0x0000014a                                    // 0x005479e5    684a010000
                         push             0x00bea7c8                                    // 0x005479ea    68c8a7be00
                         push             0x0000025c                                    // 0x005479ef    685c020000
                         {disp8} mov      dword ptr [ecx + 0x20], eax                   // 0x005479f4    894120
                         call             ___nw__FUl                                    // 0x005479f7    e8943d2900
                         add              esp, 0x0c                                     // 0x005479fc    83c40c
                         cmp.s            eax, ebx                                      // 0x005479ff    3bc3
                         {disp8} je       _jmp_addr_0x00547a3d                          // 0x00547a01    743a
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000a24 // 0x00547a03    813dac7cd100240a0000
                         {disp8} ja       _jmp_addr_0x00547a17                          // 0x00547a0d    7708
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00547a0f    8b0da87cd100
                         {disp8} jmp      _jmp_addr_0x00547a23                          // 0x00547a15    eb0c
_jmp_addr_0x00547a17:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x00547a17    8b15a87cd100
                         {disp32} lea     ecx, dword ptr [edx + 0x000079b0]             // 0x00547a1d    8d8ab0790000
_jmp_addr_0x00547a23:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x00547a23    8b4908
                         push             0x2                                           // 0x00547a26    6a02
                         push             ebx                                           // 0x00547a28    53
                         push             0x28                                          // 0x00547a29    6a28
                         push             ecx                                           // 0x00547a2b    51
                         push             0x00000208                                    // 0x00547a2c    6808020000
                         push             0x28                                          // 0x00547a31    6a28
                         push             ebx                                           // 0x00547a33    53
                         mov.s            ecx, eax                                      // 0x00547a34    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00547a36    e82558ecff
                         {disp8} jmp      _jmp_addr_0x00547a3f                          // 0x00547a3b    eb02
_jmp_addr_0x00547a3d:    xor.s            eax, eax                                      // 0x00547a3d    33c0
_jmp_addr_0x00547a3f:    push             0x0000014b                                    // 0x00547a3f    684b010000
                         push             0x00bea7c8                                    // 0x00547a44    68c8a7be00
                         push             0x0000025c                                    // 0x00547a49    685c020000
                         {disp32} mov     dword ptr [edi + 0x00000444], eax             // 0x00547a4e    898744040000
                         call             ___nw__FUl                                    // 0x00547a54    e8373d2900
                         add              esp, 0x0c                                     // 0x00547a59    83c40c
                         cmp.s            eax, ebx                                      // 0x00547a5c    3bc3
                         {disp8} je       _jmp_addr_0x00547a97                          // 0x00547a5e    7437
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000a23 // 0x00547a60    813dac7cd100230a0000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00547a6a    8b0da87cd100
                         {disp8} jbe      _jmp_addr_0x00547a78                          // 0x00547a70    7606
                         add              ecx, 0x000079a4                               // 0x00547a72    81c1a4790000
_jmp_addr_0x00547a78:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x00547a78    8b4908
                         push             0x3                                           // 0x00547a7b    6a03
                         push             0x1                                           // 0x00547a7d    6a01
                         push             0x28                                          // 0x00547a7f    6a28
                         push             ecx                                           // 0x00547a81    51
                         push             0x00000208                                    // 0x00547a82    6808020000
                         push             0x000002d0                                    // 0x00547a87    68d0020000
                         push             0x1                                           // 0x00547a8c    6a01
                         mov.s            ecx, eax                                      // 0x00547a8e    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00547a90    e8cb57ecff
                         {disp8} jmp      _jmp_addr_0x00547a99                          // 0x00547a95    eb02
_jmp_addr_0x00547a97:    xor.s            eax, eax                                      // 0x00547a97    33c0
_jmp_addr_0x00547a99:    push             esi                                           // 0x00547a99    56
                         push             0x00000150                                    // 0x00547a9a    6850010000
                         push             0x00bea7c8                                    // 0x00547a9f    68c8a7be00
                         push             0x00000244                                    // 0x00547aa4    6844020000
                         {disp32} mov     dword ptr [edi + 0x00000448], eax             // 0x00547aa9    898748040000
                         call             ___nw__FUl                                    // 0x00547aaf    e8dc3c2900
                         mov.s            esi, eax                                      // 0x00547ab4    8bf0
                         add              esp, 0x0c                                     // 0x00547ab6    83c40c
                         cmp.s            esi, ebx                                      // 0x00547ab9    3bf3
                         {disp8} je       _jmp_addr_0x00547b11                          // 0x00547abb    7454
                         cmp              dword ptr [data_bytes + 0x351cac], 0x000010ed // 0x00547abd    813dac7cd100ed100000
                         {disp8} ja       _jmp_addr_0x00547ad0                          // 0x00547ac7    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547ac9    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00547adc                          // 0x00547ace    eb0c
_jmp_addr_0x00547ad0:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x00547ad0    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x0000cb1c]             // 0x00547ad6    8d821ccb0000
_jmp_addr_0x00547adc:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x00547adc    8b4008
                         push             eax                                           // 0x00547adf    50
                         push             0x1e                                          // 0x00547ae0    6a1e
                         push             0x000000c8                                    // 0x00547ae2    68c8000000
                         push             0x64                                          // 0x00547ae7    6a64
                         push             0x5a                                          // 0x00547ae9    6a5a
                         push             0x000003e7                                    // 0x00547aeb    68e7030000
                         mov.s            ecx, esi                                      // 0x00547af0    8bce
                         call             ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00547af2    e85917ecff
                         mov              dword ptr [esi], 0x008ab5c0                   // 0x00547af7    c706c0b58a00
                         {disp32} mov     dword ptr [esi + 0x0000023c], ebx             // 0x00547afd    899e3c020000
                         {disp32} mov     byte ptr [esi + 0x0000022a], bl               // 0x00547b03    889e2a020000
                         {disp32} mov     dword ptr [esi + 0x00000240], ebx             // 0x00547b09    899e40020000
                         {disp8} jmp      _jmp_addr_0x00547b13                          // 0x00547b0f    eb02
_jmp_addr_0x00547b11:    xor.s            esi, esi                                      // 0x00547b11    33f6
_jmp_addr_0x00547b13:    push             0x00000151                                    // 0x00547b13    6851010000
                         push             0x00bea7c8                                    // 0x00547b18    68c8a7be00
                         push             0x00000244                                    // 0x00547b1d    6844020000
                         {disp32} mov     dword ptr [edi + 0x00000454], esi             // 0x00547b22    89b754040000
                         call             ___nw__FUl                                    // 0x00547b28    e8633c2900
                         mov.s            esi, eax                                      // 0x00547b2d    8bf0
                         add              esp, 0x0c                                     // 0x00547b2f    83c40c
                         cmp.s            esi, ebx                                      // 0x00547b32    3bf3
                         {disp8} je       _jmp_addr_0x00547b8d                          // 0x00547b34    7457
                         cmp              dword ptr [data_bytes + 0x351cac], 0x000010f9 // 0x00547b36    813dac7cd100f9100000
                         {disp8} ja       _jmp_addr_0x00547b49                          // 0x00547b40    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547b42    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00547b55                          // 0x00547b47    eb0c
_jmp_addr_0x00547b49:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00547b49    8b0da87cd100
                         {disp32} lea     eax, dword ptr [ecx + 0x0000cbac]             // 0x00547b4f    8d81accb0000
_jmp_addr_0x00547b55:    {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x00547b55    8b5008
                         push             edx                                           // 0x00547b58    52
                         push             0x1e                                          // 0x00547b59    6a1e
                         push             0x000000c8                                    // 0x00547b5b    68c8000000
                         push             0x64                                          // 0x00547b60    6a64
                         push             0x0000014a                                    // 0x00547b62    684a010000
                         push             0x000003e7                                    // 0x00547b67    68e7030000
                         mov.s            ecx, esi                                      // 0x00547b6c    8bce
                         call             ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00547b6e    e8dd16ecff
                         mov              dword ptr [esi], 0x008ab5c0                   // 0x00547b73    c706c0b58a00
                         {disp32} mov     dword ptr [esi + 0x0000023c], ebx             // 0x00547b79    899e3c020000
                         {disp32} mov     byte ptr [esi + 0x0000022a], bl               // 0x00547b7f    889e2a020000
                         {disp32} mov     dword ptr [esi + 0x00000240], ebx             // 0x00547b85    899e40020000
                         {disp8} jmp      _jmp_addr_0x00547b8f                          // 0x00547b8b    eb02
_jmp_addr_0x00547b8d:    xor.s            esi, esi                                      // 0x00547b8d    33f6
_jmp_addr_0x00547b8f:    push             0x00000152                                    // 0x00547b8f    6852010000
                         push             0x00bea7c8                                    // 0x00547b94    68c8a7be00
                         push             0x000002bc                                    // 0x00547b99    68bc020000
                         {disp32} mov     dword ptr [edi + 0x00000458], esi             // 0x00547b9e    89b758040000
                         call             ___nw__FUl                                    // 0x00547ba4    e8e73b2900
                         add              esp, 0x0c                                     // 0x00547ba9    83c40c
                         cmp.s            eax, ebx                                      // 0x00547bac    3bc3
                         pop              esi                                           // 0x00547bae    5e
                         {disp8} je       _jmp_addr_0x00547bcf                          // 0x00547baf    741e
                         push             0xa                                           // 0x00547bb1    6a0a
                         push             0x000000c8                                    // 0x00547bb3    68c8000000
                         push             0x000000e6                                    // 0x00547bb8    68e6000000
                         push             0x0000008c                                    // 0x00547bbd    688c000000
                         push             0x5a                                          // 0x00547bc2    6a5a
                         push             0x3                                           // 0x00547bc4    6a03
                         mov.s            ecx, eax                                      // 0x00547bc6    8bc8
                         call             @__ct__14SetupMultiListFiiiiii@32             // 0x00547bc8    e85338ecff
                         {disp8} jmp      _jmp_addr_0x00547bd1                          // 0x00547bcd    eb02
_jmp_addr_0x00547bcf:    xor.s            eax, eax                                      // 0x00547bcf    33c0
_jmp_addr_0x00547bd1:    push             0x00000153                                    // 0x00547bd1    6853010000
                         push             0x00bea7c8                                    // 0x00547bd6    68c8a7be00
                         push             0x000002bc                                    // 0x00547bdb    68bc020000
                         {disp32} mov     dword ptr [edi + 0x0000044c], eax             // 0x00547be0    89874c040000
                         call             ___nw__FUl                                    // 0x00547be6    e8a53b2900
                         add              esp, 0x0c                                     // 0x00547beb    83c40c
                         cmp.s            eax, ebx                                      // 0x00547bee    3bc3
                         {disp8} je       _jmp_addr_0x00547c1c                          // 0x00547bf0    742a
                         push             0xa                                           // 0x00547bf2    6a0a
                         push             0x000000c8                                    // 0x00547bf4    68c8000000
                         push             0x000000c8                                    // 0x00547bf9    68c8000000
                         push             0x0000008c                                    // 0x00547bfe    688c000000
                         push             0x0000014a                                    // 0x00547c03    684a010000
                         push             0x2                                           // 0x00547c08    6a02
                         mov.s            ecx, eax                                      // 0x00547c0a    8bc8
                         call             @__ct__14SetupMultiListFiiiiii@32             // 0x00547c0c    e80f38ecff
                         {disp32} mov     dword ptr [edi + 0x00000450], eax             // 0x00547c11    898750040000
                         pop              edi                                           // 0x00547c17    5f
                         pop              ebx                                           // 0x00547c18    5b
                         ret              0x000c                                        // 0x00547c19    c20c00
_jmp_addr_0x00547c1c:    {disp32} mov     dword ptr [edi + 0x00000450], ebx             // 0x00547c1c    899f50040000
                         pop              edi                                           // 0x00547c22    5f
                         pop              ebx                                           // 0x00547c23    5b
                         ret              0x000c                                        // 0x00547c24    c20c00
                         nop                                                            // 0x00547c27    90
                         nop                                                            // 0x00547c28    90
                         nop                                                            // 0x00547c29    90
                         nop                                                            // 0x00547c2a    90
                         nop                                                            // 0x00547c2b    90
                         nop                                                            // 0x00547c2c    90
                         nop                                                            // 0x00547c2d    90
                         nop                                                            // 0x00547c2e    90
                         nop                                                            // 0x00547c2f    90
?Destroy@SpellSetupBox@@UAEXXZ:
                         call             ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00547c30    e85bb9fcff
                         {disp32} mov     dword ptr [data_bytes + 0x30b668], 0x00000000 // 0x00547c35    c7056816cd0000000000
                         ret                                                            // 0x00547c3f    c3
?InitControls@SpellSetupBox@@UAEXXZ:
                         push             ebx                                           // 0x00547c40    53
                         push             ebp                                           // 0x00547c41    55
                         push             esi                                           // 0x00547c42    56
                         push             edi                                           // 0x00547c43    57
                         mov.s            ebx, ecx                                      // 0x00547c44    8bd9
                         call             _GetMidTextSize__Fv                           // 0x00547c46    e8b5fdebff
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30b668]        // 0x00547c4b    8b0d6816cd00
                         {disp8} mov      edx, dword ptr [ecx + 0x04]                   // 0x00547c51    8b5104
                         {disp32} mov     dword ptr [edx + 0x000000ac], eax             // 0x00547c54    8982ac000000
                         {disp32} mov     esi, dword ptr [ebx + 0x0000044c]             // 0x00547c5a    8bb34c040000
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x00547c60    8b8650020000
                         test             eax, eax                                      // 0x00547c66    85c0
                         {disp8} jle      _jmp_addr_0x00547c7d                          // 0x00547c68    7e13
_jmp_addr_0x00547c6a:    dec              eax                                           // 0x00547c6a    48
                         push             eax                                           // 0x00547c6b    50
                         mov.s            ecx, esi                                      // 0x00547c6c    8bce
                         call             @DeleteString__9SetupListFi@12                // 0x00547c6e    e8ed30ecff
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x00547c73    8b8650020000
                         test             eax, eax                                      // 0x00547c79    85c0
                         {disp8} jg       _jmp_addr_0x00547c6a                          // 0x00547c7b    7fed
_jmp_addr_0x00547c7d:    {disp32} mov     esi, dword ptr [ebx + 0x00000450]             // 0x00547c7d    8bb350040000
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x00547c83    8b8650020000
                         test             eax, eax                                      // 0x00547c89    85c0
                         {disp8} jle      _jmp_addr_0x00547ca0                          // 0x00547c8b    7e13
_jmp_addr_0x00547c8d:    dec              eax                                           // 0x00547c8d    48
                         push             eax                                           // 0x00547c8e    50
                         mov.s            ecx, esi                                      // 0x00547c8f    8bce
                         call             @DeleteString__9SetupListFi@12                // 0x00547c91    e8ca30ecff
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x00547c96    8b8650020000
                         test             eax, eax                                      // 0x00547c9c    85c0
                         {disp8} jg       _jmp_addr_0x00547c8d                          // 0x00547c9e    7fed
_jmp_addr_0x00547ca0:    {disp8} mov      esi, dword ptr [ebx + 0x10]                   // 0x00547ca0    8b7310
                         {disp8} lea      edi, dword ptr [ebx + 0x14]                   // 0x00547ca3    8d7b14
                         mov              ecx, 0x0000010b                               // 0x00547ca6    b90b010000
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x00547cab    f3a5
                         mov              edi, 0x000010ee                               // 0x00547cad    bfee100000
                         mov              ebp, 0x0000cb28                               // 0x00547cb2    bd28cb0000
_jmp_addr_0x00547cb7:    cmp              edi, dword ptr [data_bytes + 0x351cac]        // 0x00547cb7    3b3dac7cd100
                         {disp8} jae      _jmp_addr_0x00547cc3                          // 0x00547cbd    7304
                         test             edi, edi                                      // 0x00547cbf    85ff
                         {disp8} ja       _jmp_addr_0x00547cca                          // 0x00547cc1    7707
_jmp_addr_0x00547cc3:    {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547cc3    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00547cd1                          // 0x00547cc8    eb07
_jmp_addr_0x00547cca:    {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547cca    a1a87cd100
                         add.s            eax, ebp                                      // 0x00547ccf    03c5
_jmp_addr_0x00547cd1:    {disp32} mov     esi, dword ptr [ebx + 0x0000044c]             // 0x00547cd1    8bb34c040000
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x00547cd7    8b4808
                         {disp32} mov     edx, dword ptr [esi + 0x00000250]             // 0x00547cda    8b9650020000
                         push             ecx                                           // 0x00547ce0    51
                         push             edx                                           // 0x00547ce1    52
                         mov.s            ecx, esi                                      // 0x00547ce2    8bce
                         call             @InsertString__9SetupListFiPw@16              // 0x00547ce4    e88731ecff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x00547ce9    8b8e50020000
                         {disp8} lea      eax, dword ptr [ecx + -0x01]                  // 0x00547cef    8d41ff
                         test             eax, eax                                      // 0x00547cf2    85c0
                         {disp8} jl       _jmp_addr_0x00547d07                          // 0x00547cf4    7c11
                         cmp.s            eax, ecx                                      // 0x00547cf6    3bc1
                         {disp8} jge      _jmp_addr_0x00547d07                          // 0x00547cf8    7d0d
                         {disp32} mov     ecx, dword ptr [esi + 0x00000268]             // 0x00547cfa    8b8e68020000
                         mov              dword ptr [ecx + eax * 0x4], 0x00000000       // 0x00547d00    c7048100000000
_jmp_addr_0x00547d07:    {disp32} mov     edx, dword ptr [ebx + 0x0000044c]             // 0x00547d07    8b934c040000
                         {disp32} mov     eax, dword ptr [edx + 0x000002b0]             // 0x00547d0d    8b82b0020000
                         {disp32} mov     cl, byte ptr [ebx + edi * 0x1 + -0x00000cd8]  // 0x00547d13    8a8c3b28f3ffff
                         add              ebp, 0x0c                                     // 0x00547d1a    83c50c
                         {disp32} mov     byte ptr [eax + edi * 0x1 + -0x000010ee], cl  // 0x00547d1d    888c3812efffff
                         inc              edi                                           // 0x00547d24    47
                         {disp32} lea     edx, dword ptr [edi + -0x000010ee]            // 0x00547d25    8d9712efffff
                         cmp              edx, 0x0a                                     // 0x00547d2b    83fa0a
                         {disp8} jl       _jmp_addr_0x00547cb7                          // 0x00547d2e    7c87
                         mov              edi, 0x000010ee                               // 0x00547d30    bfee100000
                         mov              ebp, 0x0000cb28                               // 0x00547d35    bd28cb0000
_jmp_addr_0x00547d3a:    cmp              edi, dword ptr [data_bytes + 0x351cac]        // 0x00547d3a    3b3dac7cd100
                         {disp8} jae      _jmp_addr_0x00547d46                          // 0x00547d40    7304
                         test             edi, edi                                      // 0x00547d42    85ff
                         {disp8} ja       _jmp_addr_0x00547d4d                          // 0x00547d44    7707
_jmp_addr_0x00547d46:    {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547d46    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00547d54                          // 0x00547d4b    eb07
_jmp_addr_0x00547d4d:    {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547d4d    a1a87cd100
                         add.s            eax, ebp                                      // 0x00547d52    03c5
_jmp_addr_0x00547d54:    {disp32} mov     esi, dword ptr [ebx + 0x00000450]             // 0x00547d54    8bb350040000
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x00547d5a    8b4808
                         {disp32} mov     edx, dword ptr [esi + 0x00000250]             // 0x00547d5d    8b9650020000
                         push             ecx                                           // 0x00547d63    51
                         push             edx                                           // 0x00547d64    52
                         mov.s            ecx, esi                                      // 0x00547d65    8bce
                         call             @InsertString__9SetupListFiPw@16              // 0x00547d67    e80431ecff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x00547d6c    8b8e50020000
                         {disp8} lea      eax, dword ptr [ecx + -0x01]                  // 0x00547d72    8d41ff
                         test             eax, eax                                      // 0x00547d75    85c0
                         {disp8} jl       _jmp_addr_0x00547d8a                          // 0x00547d77    7c11
                         cmp.s            eax, ecx                                      // 0x00547d79    3bc1
                         {disp8} jge      _jmp_addr_0x00547d8a                          // 0x00547d7b    7d0d
                         {disp32} mov     ecx, dword ptr [esi + 0x00000268]             // 0x00547d7d    8b8e68020000
                         mov              dword ptr [ecx + eax * 0x4], 0x00000000       // 0x00547d83    c7048100000000
_jmp_addr_0x00547d8a:    {disp32} mov     edx, dword ptr [ebx + 0x00000450]             // 0x00547d8a    8b9350040000
                         {disp32} mov     eax, dword ptr [edx + 0x000002b0]             // 0x00547d90    8b82b0020000
                         {disp32} mov     cl, byte ptr [ebx + edi * 0x1 + -0x00000ce3]  // 0x00547d96    8a8c3b1df3ffff
                         add              ebp, 0x0c                                     // 0x00547d9d    83c50c
                         {disp32} mov     byte ptr [eax + edi * 0x1 + -0x000010ee], cl  // 0x00547da0    888c3812efffff
                         inc              edi                                           // 0x00547da7    47
                         {disp32} lea     edx, dword ptr [edi + -0x000010ee]            // 0x00547da8    8d9712efffff
                         cmp              edx, 0x0b                                     // 0x00547dae    83fa0b
                         {disp8} jl       _jmp_addr_0x00547d3a                          // 0x00547db1    7c87
                         pop              edi                                           // 0x00547db3    5f
                         pop              esi                                           // 0x00547db4    5e
                         pop              ebp                                           // 0x00547db5    5d
                         pop              ebx                                           // 0x00547db6    5b
                         ret                                                            // 0x00547db7    c3
                         nop                                                            // 0x00547db8    90
                         nop                                                            // 0x00547db9    90
                         nop                                                            // 0x00547dba    90
                         nop                                                            // 0x00547dbb    90
                         nop                                                            // 0x00547dbc    90
                         nop                                                            // 0x00547dbd    90
                         nop                                                            // 0x00547dbe    90
                         nop                                                            // 0x00547dbf    90
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x00547dc0    8b4c2404
                         cmp              ecx, 0x06                                     // 0x00547dc4    83f906
                         push             ebx                                           // 0x00547dc7    53
                         push             ebp                                           // 0x00547dc8    55
                         push             esi                                           // 0x00547dc9    56
                         push             edi                                           // 0x00547dca    57
                         {disp32} ja      _jmp_addr_0x00547fcc                          // 0x00547dcb    0f87fb010000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x30b668]        // 0x00547dd1    a16816cd00
                         xor.s            ebx, ebx                                      // 0x00547dd6    33db
                         jmp              dword ptr [ecx*4 + 0x547fd4]                  // 0x00547dd8    ff248dd47f5400
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30b668]        // 0x00547ddf    8b0d6816cd00
                         mov              eax, dword ptr [ecx]                          // 0x00547de5    8b01
                         call             dword ptr [eax + 0x20]                        // 0x00547de7    ff5020
                         pop              edi                                           // 0x00547dea    5f
                         pop              esi                                           // 0x00547deb    5e
                         pop              ebp                                           // 0x00547dec    5d
                         pop              ebx                                           // 0x00547ded    5b
                         ret              0x0014                                        // 0x00547dee    c21400
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x00547df1    8b4c2420
                         cmp              ecx, 0x0000009c                               // 0x00547df5    81f99c000000
                         {disp8} mov      edx, dword ptr [esp + 0x24]                   // 0x00547dfb    8b542424
                         {disp8} je       _jmp_addr_0x00547e06                          // 0x00547dff    7405
                         cmp              ecx, 0x1c                                     // 0x00547e01    83f91c
                         {disp8} jne      _jmp_addr_0x00547e0a                          // 0x00547e04    7504
_jmp_addr_0x00547e06:    cmp.s            edx, ebx                                      // 0x00547e06    3bd3
                         {disp8} je       _jmp_addr_0x00547e23                          // 0x00547e08    7419
_jmp_addr_0x00547e0a:    cmp              ecx, 0x01                                     // 0x00547e0a    83f901
                         {disp32} jne     _jmp_addr_0x00547fcc                          // 0x00547e0d    0f85b9010000
                         cmp.s            edx, ebx                                      // 0x00547e13    3bd3
                         {disp32} jne     _jmp_addr_0x00547fcc                          // 0x00547e15    0f85b1010000
                         {disp32} mov     ebp, dword ptr [eax + 0x00000448]             // 0x00547e1b    8ba848040000
                         {disp8} jmp      _jmp_addr_0x00547e27                          // 0x00547e21    eb04
_jmp_addr_0x00547e23:    {disp8} mov      ebp, dword ptr [esp + 0x1c]                   // 0x00547e23    8b6c241c
_jmp_addr_0x00547e27:    cmp.s            ebp, ebx                                      // 0x00547e27    3beb
                         {disp32} je      _jmp_addr_0x00547fcc                          // 0x00547e29    0f849d010000
                         cmp              dword ptr [ebp + 0x18], ebx                   // 0x00547e2f    395d18
                         {disp8} jne      _jmp_addr_0x00547e6c                          // 0x00547e32    7538
                         cmp              byte ptr [ebp + 0x00000229], bl               // 0x00547e34    389d29020000
                         {disp8} jne      _jmp_addr_0x00547e6c                          // 0x00547e3a    7530
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x343190]        // 0x00547e3c    8b0d9091d000
                         {disp8} mov      byte ptr [ecx + 0x20], 0x01                   // 0x00547e42    c6412001
                         {disp32} mov     eax, dword ptr [data_bytes + 0x30b668]        // 0x00547e46    a16816cd00
                         {disp8} mov      edi, dword ptr [eax + 0x10]                   // 0x00547e4b    8b7810
                         {disp8} lea      esi, dword ptr [eax + 0x14]                   // 0x00547e4e    8d7014
                         mov              ecx, 0x0000010b                               // 0x00547e51    b90b010000
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x00547e56    f3a5
                         {disp32} mov     edx, dword ptr [data_bytes + 0x30b664]        // 0x00547e58    8b156416cd00
                         {disp8} mov      byte ptr [edx + 0x10], 0x01                   // 0x00547e5e    c6421001
                         call             _jmp_addr_0x00513640                          // 0x00547e62    e8d9b7fcff
                         {disp32} mov     eax, dword ptr [data_bytes + 0x30b668]        // 0x00547e67    a16816cd00
_jmp_addr_0x00547e6c:    cmp              dword ptr [ebp + 0x18], 0x01                  // 0x00547e6c    837d1801
                         {disp8} jne      _jmp_addr_0x00547e8d                          // 0x00547e70    751b
                         cmp              byte ptr [ebp + 0x00000229], bl               // 0x00547e72    389d29020000
                         {disp8} jne      _jmp_addr_0x00547e8d                          // 0x00547e78    7513
                         {disp32} mov     eax, dword ptr [data_bytes + 0x30b664]        // 0x00547e7a    a16416cd00
                         {disp8} mov      byte ptr [eax + 0x10], 0x01                   // 0x00547e7f    c6401001
                         call             _jmp_addr_0x00513640                          // 0x00547e83    e8b8b7fcff
                         {disp32} mov     eax, dword ptr [data_bytes + 0x30b668]        // 0x00547e88    a16816cd00
_jmp_addr_0x00547e8d:    cmp              dword ptr [ebp + 0x18], 0x02                  // 0x00547e8d    837d1802
                         {disp8} jne      _jmp_addr_0x00547ec4                          // 0x00547e91    7531
                         cmp              byte ptr [ebp + 0x00000229], bl               // 0x00547e93    389d29020000
                         {disp8} jne      _jmp_addr_0x00547ec4                          // 0x00547e99    7529
                         xor.s            esi, esi                                      // 0x00547e9b    33f6
_jmp_addr_0x00547e9d:    {disp32} mov     ecx, dword ptr [eax + 0x00000450]             // 0x00547e9d    8b8850040000
                         {disp32} mov     edx, dword ptr [ecx + 0x000002b0]             // 0x00547ea3    8b91b0020000
                         xor.s            ecx, ecx                                      // 0x00547ea9    33c9
                         mov              cl, byte ptr [edx + esi * 0x1]                // 0x00547eab    8a0c32
                         push             ebx                                           // 0x00547eae    53
                         push             ecx                                           // 0x00547eaf    51
                         push             esi                                           // 0x00547eb0    56
                         {disp8} lea      ecx, dword ptr [eax + 0x14]                   // 0x00547eb1    8d4814
                         call             _jmp_addr_0x007197f0                          // 0x00547eb4    e837191d00
                         {disp32} mov     eax, dword ptr [data_bytes + 0x30b668]        // 0x00547eb9    a16816cd00
                         inc              esi                                           // 0x00547ebe    46
                         cmp              esi, 0x0b                                     // 0x00547ebf    83fe0b
                         {disp8} jl       _jmp_addr_0x00547e9d                          // 0x00547ec2    7cd9
_jmp_addr_0x00547ec4:    cmp              dword ptr [ebp + 0x18], 0x03                  // 0x00547ec4    837d1803
                         {disp32} jne     _jmp_addr_0x00547fcc                          // 0x00547ec8    0f85fe000000
                         cmp              byte ptr [ebp + 0x00000229], bl               // 0x00547ece    389d29020000
                         {disp32} jne     _jmp_addr_0x00547fcc                          // 0x00547ed4    0f85f2000000
                         xor.s            esi, esi                                      // 0x00547eda    33f6
                         {disp8} jmp      _jmp_addr_0x00547ee3                          // 0x00547edc    eb05
_jmp_addr_0x00547ede:    {disp32} mov     eax, dword ptr [data_bytes + 0x30b668]        // 0x00547ede    a16816cd00
_jmp_addr_0x00547ee3:    {disp32} mov     edx, dword ptr [eax + 0x0000044c]             // 0x00547ee3    8b904c040000
                         {disp32} mov     ecx, dword ptr [edx + 0x000002b0]             // 0x00547ee9    8b8ab0020000
                         xor.s            edx, edx                                      // 0x00547eef    33d2
                         mov              dl, byte ptr [ecx + esi * 0x1]                // 0x00547ef1    8a1431
                         push             ebx                                           // 0x00547ef4    53
                         {disp8} lea      ecx, dword ptr [eax + 0x14]                   // 0x00547ef5    8d4814
                         push             edx                                           // 0x00547ef8    52
                         push             esi                                           // 0x00547ef9    56
                         call             _jmp_addr_0x00719840                          // 0x00547efa    e841191d00
                         inc              esi                                           // 0x00547eff    46
                         cmp              esi, 0x0a                                     // 0x00547f00    83fe0a
                         {disp8} jl       _jmp_addr_0x00547ede                          // 0x00547f03    7cd9
                         pop              edi                                           // 0x00547f05    5f
                         pop              esi                                           // 0x00547f06    5e
                         pop              ebp                                           // 0x00547f07    5d
                         pop              ebx                                           // 0x00547f08    5b
                         ret              0x0014                                        // 0x00547f09    c21400
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x00547f0c    8b442424
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x00547f10    8b4c2420
                         push             eax                                           // 0x00547f14    50
                         push             ecx                                           // 0x00547f15    51
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x00547f16    8b4c2420
                         call             _jmp_addr_0x00408100                          // 0x00547f1a    e8e101ecff
                         {disp32} mov     edx, dword ptr [data_bytes + 0x30b668]        // 0x00547f1f    8b156816cd00
                         {disp32} mov     esi, dword ptr [edx + 0x00000440]             // 0x00547f25    8bb240040000
                         xor.s            ebx, ebx                                      // 0x00547f2b    33db
                         cmp.s            eax, ebx                                      // 0x00547f2d    3bc3
                         {disp32} je      _jmp_addr_0x00547fcc                          // 0x00547f2f    0f8497000000
                         {disp8} mov      eax, dword ptr [eax + 0x18]                   // 0x00547f35    8b4018
                         sub              eax, 0x02                                     // 0x00547f38    83e802
                         {disp8} je       _jmp_addr_0x00547f73                          // 0x00547f3b    7436
                         dec              eax                                           // 0x00547f3d    48
                         {disp8} je       _jmp_addr_0x00547f4f                          // 0x00547f3e    740f
                         push             0x000000ff                                    // 0x00547f40    68ff000000
                         {disp8} lea      edi, dword ptr [esi + 0x24]                   // 0x00547f45    8d7e24
                         push             0x00c4cd30                                    // 0x00547f48    6830cdc400
                         {disp8} jmp      _jmp_addr_0x00547f9e                          // 0x00547f4d    eb4f
_jmp_addr_0x00547f4f:    cmp              dword ptr [data_bytes + 0x351cac], 0x0000116b // 0x00547f4f    813dac7cd1006b110000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547f59    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x00547f65                          // 0x00547f5e    7605
                         add              eax, 0x0000d104                               // 0x00547f60    0504d10000
_jmp_addr_0x00547f65:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x00547f65    8b4808
                         push             0x000000ff                                    // 0x00547f68    68ff000000
                         {disp8} lea      edi, dword ptr [esi + 0x24]                   // 0x00547f6d    8d7e24
                         push             ecx                                           // 0x00547f70    51
                         {disp8} jmp      _jmp_addr_0x00547f9e                          // 0x00547f71    eb2b
_jmp_addr_0x00547f73:    cmp              dword ptr [data_bytes + 0x351cac], 0x0000116a // 0x00547f73    813dac7cd1006a110000
                         {disp8} ja       _jmp_addr_0x00547f86                          // 0x00547f7d    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547f7f    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00547f92                          // 0x00547f84    eb0c
_jmp_addr_0x00547f86:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x00547f86    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x0000d0f8]             // 0x00547f8c    8d82f8d00000
_jmp_addr_0x00547f92:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x00547f92    8b4008
                         push             0x000000ff                                    // 0x00547f95    68ff000000
                         {disp8} lea      edi, dword ptr [esi + 0x24]                   // 0x00547f9a    8d7e24
                         push             eax                                           // 0x00547f9d    50
_jmp_addr_0x00547f9e:    push             edi                                           // 0x00547f9e    57
                         call             _wcsncpy                                      // 0x00547f9f    e881e42700
                         push             edi                                           // 0x00547fa4    57
                         {disp32} mov     word ptr [esi + 0x00000222], bx               // 0x00547fa5    66899e22020000
                         call             _wcslen                                       // 0x00547fac    e8b1e42700
                         add              esp, 0x10                                     // 0x00547fb1    83c410
                         {disp32} mov     dword ptr [esi + 0x0000024c], eax             // 0x00547fb4    89864c020000
                         {disp32} mov     dword ptr [esi + 0x00000254], eax             // 0x00547fba    898654020000
                         {disp32} mov     dword ptr [esi + 0x00000250], eax             // 0x00547fc0    898650020000
                         {disp32} mov     dword ptr [esi + 0x00000258], ebx             // 0x00547fc6    899e58020000
_jmp_addr_0x00547fcc:    pop              edi                                           // 0x00547fcc    5f
                         pop              esi                                           // 0x00547fcd    5e
                         pop              ebp                                           // 0x00547fce    5d
                         pop              ebx                                           // 0x00547fcf    5b
                         ret              0x0014                                        // 0x00547fd0    c21400

// Snippet: db, [0x00547fd3, 0x00547fd4)
.byte 0x90                        // 0x00547fd3

// Snippet: jmptbl, [0x00547fd4, 0x00547ff0)
.byte 0x0c, 0x7f, 0x54, 0x00      // 0x00547fd4
.byte 0x23, 0x7e, 0x54, 0x00      // 0x00547fd8
.byte 0xf1, 0x7d, 0x54, 0x00      // 0x00547fdc
.byte 0xcc, 0x7f, 0x54, 0x00      // 0x00547fe0
.byte 0xcc, 0x7f, 0x54, 0x00      // 0x00547fe4
.byte 0xcc, 0x7f, 0x54, 0x00      // 0x00547fe8
.byte 0xdf, 0x7d, 0x54, 0x00      // 0x00547fec

