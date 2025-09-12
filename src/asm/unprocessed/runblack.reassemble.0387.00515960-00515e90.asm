.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @FindControl__8SetupBoxFi@12
.extern @SetFocusControl__8SetupBoxFP12SetupControl@12
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern ??0DialogBoxBase@@QAE@XZ
.extern _jmp_addr_0x005133c0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x0053b4a0
.extern _jmp_addr_0x00714490
.extern _jmp_addr_0x00792ca0
.extern _atexit
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern ___nw__FUl

.globl ??0DialogBoxSaveMessage@@QAE@XZ  
.globl _jmp_addr_0x005159c0

.globl _globl_ct_0x00515960
.globl ?Init@DialogBoxSaveMessage@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@DialogBoxSaveMessage@@UAEXXZ

start_0x00515960_0x00515e90:
// Snippet: asm, [0x00515960, 0x00515e5e)
_globl_ct_0x00515960:    {disp32} mov     cl, byte ptr [_DAT_00fac934]                  // 0x00515960    8a0d34c9fa00
                         mov              al, 0x01                                      // 0x00515966    b001
                         test             al, cl                                        // 0x00515968    84c8
                         {disp8} jne      _jmp_addr_0x00515974                          // 0x0051596a    7508
                         or.s             cl, al                                        // 0x0051596c    0ac8
                         {disp32} mov     byte ptr [_DAT_00fac934], cl                  // 0x0051596e    880d34c9fa00
_jmp_addr_0x00515974:    {disp32} jmp     _jmp_addr_0x00515980                          // 0x00515974    e907000000
                         nop                                                            // 0x00515979    90
                         nop                                                            // 0x0051597a    90
                         nop                                                            // 0x0051597b    90
                         nop                                                            // 0x0051597c    90
                         nop                                                            // 0x0051597d    90
                         nop                                                            // 0x0051597e    90
                         nop                                                            // 0x0051597f    90
_jmp_addr_0x00515980:    push             0x00407870                                    // 0x00515980    6870784000
                         call             _atexit                                       // 0x00515985    e807fe2a00
                         pop              ecx                                           // 0x0051598a    59
                         ret                                                            // 0x0051598b    c3
                         nop                                                            // 0x0051598c    90
                         nop                                                            // 0x0051598d    90
                         nop                                                            // 0x0051598e    90
                         nop                                                            // 0x0051598f    90
??0DialogBoxSaveMessage@@QAE@XZ:
                                      push             esi                                           // 0x00515990    56
                         mov.s            esi, ecx                                      // 0x00515991    8bf1
                         call             ??0DialogBoxBase@@QAE@XZ                      // 0x00515993    e808daffff
                         xor.s            eax, eax                                      // 0x00515998    33c0
                         {disp8} mov      dword ptr [esi + 0x10], eax                   // 0x0051599a    894610
                         {disp8} mov      dword ptr [esi + 0x14], eax                   // 0x0051599d    894614
                         {disp8} mov      dword ptr [esi + 0x18], eax                   // 0x005159a0    894618
                         {disp8} mov      dword ptr [esi + 0x1c], eax                   // 0x005159a3    89461c
                         {disp8} mov      byte ptr [esi + 0x20], al                     // 0x005159a6    884620
                         mov              dword ptr [esi], 0x008d8698                   // 0x005159a9    c70698868d00
                         mov.s            eax, esi                                      // 0x005159af    8bc6
                         pop              esi                                           // 0x005159b1    5e
                         ret                                                            // 0x005159b2    c3
                         nop                                                            // 0x005159b3    90
                         nop                                                            // 0x005159b4    90
                         nop                                                            // 0x005159b5    90
                         nop                                                            // 0x005159b6    90
                         nop                                                            // 0x005159b7    90
                         nop                                                            // 0x005159b8    90
                         nop                                                            // 0x005159b9    90
                         nop                                                            // 0x005159ba    90
                         nop                                                            // 0x005159bb    90
                         nop                                                            // 0x005159bc    90
                         nop                                                            // 0x005159bd    90
                         nop                                                            // 0x005159be    90
                         nop                                                            // 0x005159bf    90
_jmp_addr_0x005159c0:    mov              dword ptr [ecx], 0x008d8698                   // 0x005159c0    c70198868d00
                         {disp32} jmp     _jmp_addr_0x005133c0                          // 0x005159c6    e9f5d9ffff
                         nop                                                            // 0x005159cb    90
                         nop                                                            // 0x005159cc    90
                         nop                                                            // 0x005159cd    90
                         nop                                                            // 0x005159ce    90
                         nop                                                            // 0x005159cf    90
?Init@DialogBoxSaveMessage@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x005159d0    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x005159d4    8b542404
                         push             esi                                           // 0x005159d8    56
                         push             edi                                           // 0x005159d9    57
                         mov.s            edi, ecx                                      // 0x005159da    8bf9
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x005159dc    8b4c2410
                         push             eax                                           // 0x005159e0    50
                         push             ecx                                           // 0x005159e1    51
                         push             edx                                           // 0x005159e2    52
                         mov.s            ecx, edi                                      // 0x005159e3    8bcf
                         call             @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x005159e5    e816daffff
                         push             0x21                                          // 0x005159ea    6a21
                         push             0x00be8e14                                    // 0x005159ec    68148ebe00
                         push             0x00000244                                    // 0x005159f1    6844020000
                         call             ___nw__FUl                                    // 0x005159f6    e8955d2c00
                         mov.s            esi, eax                                      // 0x005159fb    8bf0
                         add              esp, 0x0c                                     // 0x005159fd    83c40c
                         test             esi, esi                                      // 0x00515a00    85f6
                         {disp8} je       _jmp_addr_0x00515a5e                          // 0x00515a02    745a
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001419 // 0x00515a04    813dac7cd10019140000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00515a0e    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x00515a1a                          // 0x00515a13    7605
                         add              eax, 0x0000f12c                               // 0x00515a15    052cf10000
_jmp_addr_0x00515a1a:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x00515a1a    8b4808
                         push             ecx                                           // 0x00515a1d    51
                         push             0x32                                          // 0x00515a1e    6a32
                         push             0x000001c2                                    // 0x00515a20    68c2010000
                         push             0x000000c8                                    // 0x00515a25    68c8000000
                         push             0x000000af                                    // 0x00515a2a    68af000000
                         push             0x000007d3                                    // 0x00515a2f    68d3070000
                         mov.s            ecx, esi                                      // 0x00515a34    8bce
                         call             ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00515a36    e81538efff
                         mov              dword ptr [esi], 0x008ab5c0                   // 0x00515a3b    c706c0b58a00
                         {disp32} mov     dword ptr [esi + 0x0000023c], 0x00000004      // 0x00515a41    c7863c02000004000000
                         {disp32} mov     byte ptr [esi + 0x0000022a], 0x00             // 0x00515a4b    c6862a02000000
                         {disp32} mov     dword ptr [esi + 0x00000240], 0x00000000      // 0x00515a52    c7864002000000000000
                         {disp8} jmp      _jmp_addr_0x00515a60                          // 0x00515a5c    eb02
_jmp_addr_0x00515a5e:    xor.s            esi, esi                                      // 0x00515a5e    33f6
_jmp_addr_0x00515a60:    push             0x22                                          // 0x00515a60    6a22
                         push             0x00be8e14                                    // 0x00515a62    68148ebe00
                         push             0x00000244                                    // 0x00515a67    6844020000
                         {disp8} mov      dword ptr [edi + 0x1c], esi                   // 0x00515a6c    89771c
                         call             ___nw__FUl                                    // 0x00515a6f    e81c5d2c00
                         add              esp, 0x0c                                     // 0x00515a74    83c40c
                         test             eax, eax                                      // 0x00515a77    85c0
                         {disp8} je       _jmp_addr_0x00515abd                          // 0x00515a79    7442
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000a24 // 0x00515a7b    813dac7cd100240a0000
                         {disp8} ja       _jmp_addr_0x00515a8f                          // 0x00515a85    7708
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00515a87    8b0da87cd100
                         {disp8} jmp      _jmp_addr_0x00515a9b                          // 0x00515a8d    eb0c
_jmp_addr_0x00515a8f:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x00515a8f    8b15a87cd100
                         {disp32} lea     ecx, dword ptr [edx + 0x000079b0]             // 0x00515a95    8d8ab0790000
_jmp_addr_0x00515a9b:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x00515a9b    8b4908
                         push             0x0                                           // 0x00515a9e    6a00
                         push             ecx                                           // 0x00515aa0    51
                         push             0x32                                          // 0x00515aa1    6a32
                         push             0x64                                          // 0x00515aa3    6a64
                         push             0x0000015e                                    // 0x00515aa5    685e010000
                         push             0x000000fa                                    // 0x00515aaa    68fa000000
                         push             0x000007d0                                    // 0x00515aaf    68d0070000
                         mov.s            ecx, eax                                      // 0x00515ab4    8bc8
                         call             @__ct__10SetupButtonFiiiiiPwi@36              // 0x00515ab6    e8f53defff
                         {disp8} jmp      _jmp_addr_0x00515abf                          // 0x00515abb    eb02
_jmp_addr_0x00515abd:    xor.s            eax, eax                                      // 0x00515abd    33c0
_jmp_addr_0x00515abf:    push             0x23                                          // 0x00515abf    6a23
                         push             0x00be8e14                                    // 0x00515ac1    68148ebe00
                         push             0x00000244                                    // 0x00515ac6    6844020000
                         {disp8} mov      dword ptr [edi + 0x10], eax                   // 0x00515acb    894710
                         call             ___nw__FUl                                    // 0x00515ace    e8bd5c2c00
                         add              esp, 0x0c                                     // 0x00515ad3    83c40c
                         test             eax, eax                                      // 0x00515ad6    85c0
                         {disp8} je       _jmp_addr_0x00515b14                          // 0x00515ad8    743a
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000a23 // 0x00515ada    813dac7cd100230a0000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00515ae4    8b0da87cd100
                         {disp8} jbe      _jmp_addr_0x00515af2                          // 0x00515aea    7606
                         add              ecx, 0x000079a4                               // 0x00515aec    81c1a4790000
_jmp_addr_0x00515af2:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x00515af2    8b4908
                         push             0x0                                           // 0x00515af5    6a00
                         push             ecx                                           // 0x00515af7    51
                         push             0x32                                          // 0x00515af8    6a32
                         push             0x64                                          // 0x00515afa    6a64
                         push             0x0000015e                                    // 0x00515afc    685e010000
                         push             0x000001c2                                    // 0x00515b01    68c2010000
                         push             0x000007d1                                    // 0x00515b06    68d1070000
                         mov.s            ecx, eax                                      // 0x00515b0b    8bc8
                         call             @__ct__10SetupButtonFiiiiiPwi@36              // 0x00515b0d    e89e3defff
                         {disp8} jmp      _jmp_addr_0x00515b16                          // 0x00515b12    eb02
_jmp_addr_0x00515b14:    xor.s            eax, eax                                      // 0x00515b14    33c0
_jmp_addr_0x00515b16:    push             0x27                                          // 0x00515b16    6a27
                         push             0x00be8e14                                    // 0x00515b18    68148ebe00
                         push             0x00000468                                    // 0x00515b1d    6868040000
                         {disp8} mov      dword ptr [edi + 0x14], eax                   // 0x00515b22    894714
                         call             ___nw__FUl                                    // 0x00515b25    e8665c2c00
                         add              esp, 0x0c                                     // 0x00515b2a    83c40c
                         test             eax, eax                                      // 0x00515b2d    85c0
                         {disp8} je       _jmp_addr_0x00515b67                          // 0x00515b2f    7436
                         push             0x1                                           // 0x00515b31    6a01
                         push             0x009cee0c                                    // 0x00515b33    680cee9c00
                         push             0x32                                          // 0x00515b38    6a32
                         push             0x000001c2                                    // 0x00515b3a    68c2010000
                         push             0x00000113                                    // 0x00515b3f    6813010000
                         push             0x000000af                                    // 0x00515b44    68af000000
                         push             0x000007d2                                    // 0x00515b49    68d2070000
                         mov.s            ecx, eax                                      // 0x00515b4e    8bc8
                         call             @__ct__9SetupEditFiiiiiPwi@33                 // 0x00515b50    e8cb66efff
                         {disp8} mov      dword ptr [edi + 0x18], eax                   // 0x00515b55    894718
                         pop              edi                                           // 0x00515b58    5f
                         {disp32} mov     dword ptr [eax + 0x00000240], 0x00000020      // 0x00515b59    c7804002000020000000
                         pop              esi                                           // 0x00515b63    5e
                         ret              0x000c                                        // 0x00515b64    c20c00
_jmp_addr_0x00515b67:    xor.s            eax, eax                                      // 0x00515b67    33c0
                         {disp8} mov      dword ptr [edi + 0x18], eax                   // 0x00515b69    894718
                         pop              edi                                           // 0x00515b6c    5f
                         {disp32} mov     dword ptr [eax + 0x00000240], 0x00000020      // 0x00515b6d    c7804002000020000000
                         pop              esi                                           // 0x00515b77    5e
                         ret              0x000c                                        // 0x00515b78    c20c00
                         call             ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00515b7b    e8f9bceeff
?Destroy@DialogBoxSaveMessage@@UAEXXZ:
                         {disp32} jmp     ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00515b80    e90bdaffff
                         nop                                                            // 0x00515b85    90
                         nop                                                            // 0x00515b86    90
                         nop                                                            // 0x00515b87    90
                         nop                                                            // 0x00515b88    90
                         nop                                                            // 0x00515b89    90
                         nop                                                            // 0x00515b8a    90
                         nop                                                            // 0x00515b8b    90
                         nop                                                            // 0x00515b8c    90
                         nop                                                            // 0x00515b8d    90
                         nop                                                            // 0x00515b8e    90
                         nop                                                            // 0x00515b8f    90
                         {disp32} mov     eax, dword ptr [data_bytes + 0x43ffbc]        // 0x00515b90    a1bc5fe000
                         sub              esp, 0x00000080                               // 0x00515b95    81ec80000000
                         push             ebx                                           // 0x00515b9b    53
                         push             ebp                                           // 0x00515b9c    55
                         push             esi                                           // 0x00515b9d    56
                         xor.s            ebx, ebx                                      // 0x00515b9e    33db
                         cmp.s            eax, ebx                                      // 0x00515ba0    3bc3
                         push             edi                                           // 0x00515ba2    57
                         mov.s            edi, ecx                                      // 0x00515ba3    8bf9
                         {disp8} je       _jmp_addr_0x00515bdf                          // 0x00515ba5    7438
                         {disp32} mov     eax, dword ptr [data_bytes + 0x43ffc4]        // 0x00515ba7    a1c45fe000
                         push             eax                                           // 0x00515bac    50
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                   // 0x00515bad    8d4c2414
                         push             ecx                                           // 0x00515bb1    51
                         call             _wcscpy                                       // 0x00515bb2    e8ff032b00
                         {disp8} mov      esi, dword ptr [edi + 0x18]                   // 0x00515bb7    8b7718
                         push             0x000000ff                                    // 0x00515bba    68ff000000
                         {disp8} lea      edx, dword ptr [esp + 0x1c]                   // 0x00515bbf    8d54241c
                         push             edx                                           // 0x00515bc3    52
                         {disp8} lea      ebp, dword ptr [esi + 0x24]                   // 0x00515bc4    8d6e24
                         push             ebp                                           // 0x00515bc7    55
                         call             _wcsncpy                                      // 0x00515bc8    e858082b00
                         push             ebp                                           // 0x00515bcd    55
                         {disp32} mov     word ptr [esi + 0x00000222], bx               // 0x00515bce    66899e22020000
                         call             _wcslen                                       // 0x00515bd5    e888082b00
                         add              esp, 0x18                                     // 0x00515bda    83c418
                         {disp8} jmp      _jmp_addr_0x00515c05                          // 0x00515bdd    eb26
_jmp_addr_0x00515bdf:    {disp8} mov      esi, dword ptr [edi + 0x18]                   // 0x00515bdf    8b7718
                         push             0x000000ff                                    // 0x00515be2    68ff000000
                         {disp8} lea      ebp, dword ptr [esi + 0x24]                   // 0x00515be7    8d6e24
                         push             0x00c4cd30                                    // 0x00515bea    6830cdc400
                         push             ebp                                           // 0x00515bef    55
                         call             _wcsncpy                                      // 0x00515bf0    e830082b00
                         push             ebp                                           // 0x00515bf5    55
                         {disp32} mov     word ptr [esi + 0x00000222], bx               // 0x00515bf6    66899e22020000
                         call             _wcslen                                       // 0x00515bfd    e860082b00
                         add              esp, 0x10                                     // 0x00515c02    83c410
_jmp_addr_0x00515c05:    {disp32} mov     dword ptr [esi + 0x0000024c], eax             // 0x00515c05    89864c020000
                         {disp32} mov     dword ptr [esi + 0x00000254], eax             // 0x00515c0b    898654020000
                         {disp32} mov     dword ptr [esi + 0x00000250], eax             // 0x00515c11    898650020000
                         {disp32} mov     dword ptr [esi + 0x00000258], ebx             // 0x00515c17    899e58020000
                         cmp              byte ptr [edi + 0x20], bl                     // 0x00515c1d    385f20
                         {disp8} je       _jmp_addr_0x00515c4f                          // 0x00515c20    742d
                         {disp8} mov      eax, dword ptr [edi + 0x1c]                   // 0x00515c22    8b471c
                         add              eax, 0x24                                     // 0x00515c25    83c024
                         push             0x00be8e40                                    // 0x00515c28    68408ebe00
                         push             eax                                           // 0x00515c2d    50
                         call             _wcscpy                                       // 0x00515c2e    e883032b00
                         {disp8} mov      ecx, dword ptr [edi + 0x14]                   // 0x00515c33    8b4f14
                         mov              edx, dword ptr [ecx]                          // 0x00515c36    8b11
                         add              esp, 0x08                                     // 0x00515c38    83c408
                         push             0x1                                           // 0x00515c3b    6a01
                         call             dword ptr [edx + 8]                           // 0x00515c3d    ff5208
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00515c40    8b4718
                         {disp32} mov     dword ptr [eax + 0x00000240], 0x00000200      // 0x00515c43    c7804002000000020000
                         {disp8} jmp      _jmp_addr_0x00515c97                          // 0x00515c4d    eb48
_jmp_addr_0x00515c4f:    cmp              dword ptr [data_bytes + 0x351cac], 0x00001419 // 0x00515c4f    813dac7cd10019140000
                         {disp8} ja       _jmp_addr_0x00515c62                          // 0x00515c59    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00515c5b    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00515c6e                          // 0x00515c60    eb0c
_jmp_addr_0x00515c62:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00515c62    8b0da87cd100
                         {disp32} lea     eax, dword ptr [ecx + 0x0000f12c]             // 0x00515c68    8d812cf10000
_jmp_addr_0x00515c6e:    {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x00515c6e    8b5008
                         {disp8} mov      eax, dword ptr [edi + 0x1c]                   // 0x00515c71    8b471c
                         push             edx                                           // 0x00515c74    52
                         add              eax, 0x24                                     // 0x00515c75    83c024
                         push             eax                                           // 0x00515c78    50
                         call             _wcscpy                                       // 0x00515c79    e838032b00
                         {disp8} mov      ecx, dword ptr [edi + 0x14]                   // 0x00515c7e    8b4f14
                         mov              edx, dword ptr [ecx]                          // 0x00515c81    8b11
                         add              esp, 0x08                                     // 0x00515c83    83c408
                         push             ebx                                           // 0x00515c86    53
                         call             dword ptr [edx + 8]                           // 0x00515c87    ff5208
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x00515c8a    8b4718
                         {disp32} mov     dword ptr [eax + 0x00000240], 0x00000020      // 0x00515c8d    c7804002000020000000
_jmp_addr_0x00515c97:    {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x00515c97    8b4f18
                         push             ecx                                           // 0x00515c9a    51
                         {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x00515c9b    8b4f04
                         call             @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00515c9e    e89d34efff
                         pop              edi                                           // 0x00515ca3    5f
                         pop              esi                                           // 0x00515ca4    5e
                         pop              ebp                                           // 0x00515ca5    5d
                         pop              ebx                                           // 0x00515ca6    5b
                         add              esp, 0x00000080                               // 0x00515ca7    81c480000000
                         ret                                                            // 0x00515cad    c3
                         nop                                                            // 0x00515cae    90
                         nop                                                            // 0x00515caf    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00515cb0    8b442404
                         sub              esp, 0x00000080                               // 0x00515cb4    81ec80000000
                         cmp              eax, 0x08                                     // 0x00515cba    83f808
                         push             esi                                           // 0x00515cbd    56
                         {disp32} ja      _jmp_addr_0x00515e54                          // 0x00515cbe    0f8790010000
                         {disp32} mov     ecx, dword ptr [esp + 0x0000008c]             // 0x00515cc4    8b8c248c000000
                         jmp              dword ptr [eax*4 + 0x515e60]                  // 0x00515ccb    ff2485605e5100
                         {disp32} mov     ecx, dword ptr [esp + 0x0000008c]             // 0x00515cd2    8b8c248c000000
                         {disp8} mov      eax, dword ptr [ecx + 0x70]                   // 0x00515cd9    8b4170
                         test             eax, eax                                      // 0x00515cdc    85c0
                         {disp32} jne     _jmp_addr_0x00515e54                          // 0x00515cde    0f8570010000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x286d0c]        // 0x00515ce4    a10ccdc400
                         test             eax, eax                                      // 0x00515ce9    85c0
                         {disp32} jne     _jmp_addr_0x00515e54                          // 0x00515ceb    0f8563010000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x286d14]        // 0x00515cf1    a114cdc400
                         test             eax, eax                                      // 0x00515cf6    85c0
                         {disp32} jne     _jmp_addr_0x00515e54                          // 0x00515cf8    0f8556010000
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00515cfe    a15c19d000
                         {disp32} mov     edx, dword ptr [eax + 0x0025030c]             // 0x00515d03    8b900c032500
                         {disp8} mov      eax, dword ptr [edx + 0x18]                   // 0x00515d09    8b4218
                         push             eax                                           // 0x00515d0c    50
                         call             @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00515d0d    e82e34efff
                         pop              esi                                           // 0x00515d12    5e
                         add              esp, 0x00000080                               // 0x00515d13    81c480000000
                         ret              0x0014                                        // 0x00515d19    c21400
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x00515d1c    8b0d5c19d000
                         {disp32} mov     ecx, dword ptr [ecx + 0x0025030c]             // 0x00515d22    8b890c032500
                         mov              edx, dword ptr [ecx]                          // 0x00515d28    8b11
                         call             dword ptr [edx + 0x20]                        // 0x00515d2a    ff5220
                         pop              esi                                           // 0x00515d2d    5e
                         add              esp, 0x00000080                               // 0x00515d2e    81c480000000
                         ret              0x0014                                        // 0x00515d34    c21400
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00515d37    a15c19d000
                         {disp32} mov     ecx, dword ptr [eax + 0x0025030c]             // 0x00515d3c    8b880c032500
                         {disp8} mov      byte ptr [ecx + 0x20], 0x00                   // 0x00515d42    c6412000
                         pop              esi                                           // 0x00515d46    5e
                         add              esp, 0x00000080                               // 0x00515d47    81c480000000
                         ret              0x0014                                        // 0x00515d4d    c21400
                         {disp32} mov     eax, dword ptr [esp + 0x00000094]             // 0x00515d50    8b842494000000
                         cmp              eax, 0x0d                                     // 0x00515d57    83f80d
                         {disp8} jne      _jmp_addr_0x00515d94                          // 0x00515d5a    7538
                         {disp32} mov     eax, dword ptr [esp + 0x00000098]             // 0x00515d5c    8b842498000000
                         test             eax, eax                                      // 0x00515d63    85c0
                         {disp32} jne     _jmp_addr_0x00515e54                          // 0x00515d65    0f85e9000000
                         {disp32} mov     edx, dword ptr [_game]                        // 0x00515d6b    8b155c19d000
                         {disp32} mov     eax, dword ptr [edx + 0x0025030c]             // 0x00515d71    8b820c032500
                         {disp8} mov      esi, dword ptr [eax + 0x18]                   // 0x00515d77    8b7018
                         {disp8} mov      edx, dword ptr [ecx + 0x70]                   // 0x00515d7a    8b5170
                         cmp.s            edx, esi                                      // 0x00515d7d    3bd6
                         {disp8} mov      eax, dword ptr [eax + 0x10]                   // 0x00515d7f    8b4010
                         {disp8} jne      _jmp_addr_0x00515dc4                          // 0x00515d82    7540
                         push             eax                                           // 0x00515d84    50
                         call             @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00515d85    e8b633efff
                         pop              esi                                           // 0x00515d8a    5e
                         add              esp, 0x00000080                               // 0x00515d8b    81c480000000
                         ret              0x0014                                        // 0x00515d91    c21400
_jmp_addr_0x00515d94:    cmp              eax, 0x1b                                     // 0x00515d94    83f81b
                         {disp32} jne     _jmp_addr_0x00515e54                          // 0x00515d97    0f85b7000000
                         {disp32} mov     eax, dword ptr [esp + 0x00000098]             // 0x00515d9d    8b842498000000
                         test             eax, eax                                      // 0x00515da4    85c0
                         {disp32} jne     _jmp_addr_0x00515e54                          // 0x00515da6    0f85a8000000
                         {disp32} mov     edx, dword ptr [_game]                        // 0x00515dac    8b155c19d000
                         {disp32} mov     eax, dword ptr [edx + 0x0025030c]             // 0x00515db2    8b820c032500
                         {disp8} mov      eax, dword ptr [eax + 0x14]                   // 0x00515db8    8b4014
                         {disp8} jmp      _jmp_addr_0x00515dc4                          // 0x00515dbb    eb07
                         {disp32} mov     eax, dword ptr [esp + 0x00000090]             // 0x00515dbd    8b842490000000
_jmp_addr_0x00515dc4:    test             eax, eax                                      // 0x00515dc4    85c0
                         {disp32} je      _jmp_addr_0x00515e54                          // 0x00515dc6    0f8488000000
                         {disp8} mov      eax, dword ptr [eax + 0x18]                   // 0x00515dcc    8b4018
                         sub              eax, 0x000007d0                               // 0x00515dcf    2dd0070000
                         {disp8} je       _jmp_addr_0x00515de8                          // 0x00515dd4    7412
                         dec              eax                                           // 0x00515dd6    48
                         {disp8} jne      _jmp_addr_0x00515e54                          // 0x00515dd7    757b
                         call             _jmp_addr_0x00513640                          // 0x00515dd9    e862d8ffff
                         pop              esi                                           // 0x00515dde    5e
                         add              esp, 0x00000080                               // 0x00515ddf    81c480000000
                         ret              0x0014                                        // 0x00515de5    c21400
_jmp_addr_0x00515de8:    push             0x000007d2                                    // 0x00515de8    68d2070000
                         call             @FindControl__8SetupBoxFi@12                  // 0x00515ded    e86e23efff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x00515df2    8b0d5c19d000
                         {disp32} mov     edx, dword ptr [ecx + 0x0025030c]             // 0x00515df8    8b910c032500
                         mov.s            esi, eax                                      // 0x00515dfe    8bf0
                         {disp8} mov      al, byte ptr [edx + 0x20]                     // 0x00515e00    8a4220
                         test             al, al                                        // 0x00515e03    84c0
                         {disp8} je       _jmp_addr_0x00515e28                          // 0x00515e05    7421
                         call             _jmp_addr_0x00513640                          // 0x00515e07    e834d8ffff
                         add              esi, 0x24                                     // 0x00515e0c    83c624
                         push             esi                                           // 0x00515e0f    56
                         call             _jmp_addr_0x0053b4a0                          // 0x00515e10    e88b560200
                         push             eax                                           // 0x00515e15    50
                         call             _jmp_addr_0x00714490                          // 0x00515e16    e875e61f00
                         add              esp, 0x08                                     // 0x00515e1b    83c408
                         pop              esi                                           // 0x00515e1e    5e
                         add              esp, 0x00000080                               // 0x00515e1f    81c480000000
                         ret              0x0014                                        // 0x00515e25    c21400
_jmp_addr_0x00515e28:    call             _jmp_addr_0x00513640                          // 0x00515e28    e813d8ffff
                         push             0x40                                          // 0x00515e2d    6a40
                         add              esi, 0x24                                     // 0x00515e2f    83c624
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x00515e32    8d442408
                         push             esi                                           // 0x00515e36    56
                         push             eax                                           // 0x00515e37    50
                         call             _wcsncpy                                      // 0x00515e38    e8e8052b00
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x00515e3d    8d4c2410
                         push             ecx                                           // 0x00515e41    51
                         push             0x00e05f28                                    // 0x00515e42    68285fe000
                         call             _wcscpy                                       // 0x00515e47    e86a012b00
                         add              esp, 0x14                                     // 0x00515e4c    83c414
                         call             _jmp_addr_0x00792ca0                          // 0x00515e4f    e84cce2700
_jmp_addr_0x00515e54:    pop              esi                                           // 0x00515e54    5e
                         add              esp, 0x00000080                               // 0x00515e55    81c480000000
                         ret              0x0014                                        // 0x00515e5b    c21400

// Snippet: db, [0x00515e5e, 0x00515e60)
.byte 0x8b, 0xff                  // 0x00515e5e

// Snippet: jmptbl, [0x00515e60, 0x00515e84)
.byte 0xd2, 0x5c, 0x51, 0x00      // 0x00515e60
.byte 0xbd, 0x5d, 0x51, 0x00      // 0x00515e64
.byte 0x54, 0x5e, 0x51, 0x00      // 0x00515e68
.byte 0x54, 0x5e, 0x51, 0x00      // 0x00515e6c
.byte 0x54, 0x5e, 0x51, 0x00      // 0x00515e70
.byte 0x54, 0x5e, 0x51, 0x00      // 0x00515e74
.byte 0x1c, 0x5d, 0x51, 0x00      // 0x00515e78
.byte 0x37, 0x5d, 0x51, 0x00      // 0x00515e7c
.byte 0x50, 0x5d, 0x51, 0x00      // 0x00515e80

// Snippet: db, [0x00515e84, 0x00515e90)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00515e84
.byte 0x90, 0x90, 0x90, 0x90      // 0x00515e88
.byte 0x90, 0x90, 0x90, 0x90      // 0x00515e8c

