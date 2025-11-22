.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetSmallTextSize__Fv
.extern _jmp_addr_0x00408100
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern ?Show@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x00548990
.extern  ??3@YAXPAX@Z
.extern ?Exists@LHOSFile@@SAIPAD@Z
.extern _atexit
.extern _sprintf
.extern _wcsncpy
.extern _wcslen
.extern _fopen
.extern _fclose
.extern _fgets
.extern ___nw__FUl

.globl _jmp_addr_0x00549900
.globl _jmp_addr_0x00549930
.globl _jmp_addr_0x00549a90

.globl _globl_ct_0x00549ae0
.globl _globl_ct_0x00549b10
.globl _globl_ct_0x00549b30
.globl ?Show@SetupOnlineLandscapes@@UAEXXZ
.globl ?Init@SetupMultiplayerMain@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@SetupMultiplayerMain@@UAEXXZ
.globl ?InitControls@SetupMultiplayerMain@@UAEXXZ

start_0x00549900_0x0054a180:
// Snippet: asm, [0x00549900, 0x0054a159)
_jmp_addr_0x00549900:    ret                                                             // 0x00549900    c3
                         nop                                                             // 0x00549901    90
                         nop                                                             // 0x00549902    90
                         nop                                                             // 0x00549903    90
                         nop                                                             // 0x00549904    90
                         nop                                                             // 0x00549905    90
                         nop                                                             // 0x00549906    90
                         nop                                                             // 0x00549907    90
                         nop                                                             // 0x00549908    90
                         nop                                                             // 0x00549909    90
                         nop                                                             // 0x0054990a    90
                         nop                                                             // 0x0054990b    90
                         nop                                                             // 0x0054990c    90
                         nop                                                             // 0x0054990d    90
                         nop                                                             // 0x0054990e    90
                         nop                                                             // 0x0054990f    90
?Show@SetupOnlineLandscapes@@UAEXXZ:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x30b670]        // 0x00549910    a17016cd00
                         push              esi                                           // 0x00549915    56
                         mov.s             esi, ecx                                      // 0x00549916    8bf1
                         {disp32} mov      ecx, dword ptr [eax + 0x000000a8]             // 0x00549918    8b88a8000000
                         mov               edx, dword ptr [ecx]                          // 0x0054991e    8b11
                         push              0x0                                           // 0x00549920    6a00
                         call              dword ptr [edx + 8]                           // 0x00549922    ff5208
                         mov.s             ecx, esi                                      // 0x00549925    8bce
                         call              ?Show@DialogBoxBase@@UAEXXZ                   // 0x00549927    e8c49cfcff
                         pop               esi                                           // 0x0054992c    5e
                         ret                                                             // 0x0054992d    c3
                         nop                                                             // 0x0054992e    90
                         nop                                                             // 0x0054992f    90
_jmp_addr_0x00549930:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00549930    8b442404
                         sub               esp, 0x00000800                               // 0x00549934    81ec00080000
                         test              eax, eax                                      // 0x0054993a    85c0
                         push              ebp                                           // 0x0054993c    55
                         push              esi                                           // 0x0054993d    56
                         push              edi                                           // 0x0054993e    57
                         {disp32} je       _jmp_addr_0x00549a6c                          // 0x0054993f    0f8427010000
                         push              0x009d976c                                    // 0x00549945    686c979d00
                         push              0x00bea824                                    // 0x0054994a    6824a8be00
                         call              _fopen                                        // 0x0054994f    e8c9d42700
                         mov.s             ebp, eax                                      // 0x00549954    8be8
                         add               esp, 0x08                                     // 0x00549956    83c408
                         test              ebp, ebp                                      // 0x00549959    85ed
                         {disp32} je       _jmp_addr_0x00549a6c                          // 0x0054995b    0f840b010000
                         push              ebp                                           // 0x00549961    55
                         {disp32} lea      eax, dword ptr [esp + 0x00000210]             // 0x00549962    8d842410020000
                         push              0x00000200                                    // 0x00549969    6800020000
                         push              eax                                           // 0x0054996e    50
                         call              _fgets                                        // 0x0054996f    e892ec2700
                         add               esp, 0x0c                                     // 0x00549974    83c40c
                         test              eax, eax                                      // 0x00549977    85c0
                         {disp32} je       _jmp_addr_0x00549a63                          // 0x00549979    0f84e4000000
_jmp_addr_0x0054997f:    xor.s             eax, eax                                      // 0x0054997f    33c0
_jmp_addr_0x00549981:    cmp               byte ptr [esp + eax * 0x1 + 0x0000020c], 0x3a // 0x00549981    80bc040c0200003a
                         {disp8} je        _jmp_addr_0x00549995                          // 0x00549989    740a
                         inc               eax                                           // 0x0054998b    40
                         cmp               eax, 0x0000008c                               // 0x0054998c    3d8c000000
                         {disp8} jl        _jmp_addr_0x00549981                          // 0x00549991    7cee
                         {disp8} jmp       _jmp_addr_0x005499b5                          // 0x00549993    eb20
_jmp_addr_0x00549995:    mov.s             ecx, eax                                      // 0x00549995    8bc8
                         mov.s             edx, ecx                                      // 0x00549997    8bd1
                         shr               ecx, 2                                        // 0x00549999    c1e902
                         {disp32} lea      esi, dword ptr [esp + 0x0000020c]             // 0x0054999c    8db4240c020000
                         {disp8} lea       edi, dword ptr [esp + 0x0c]                   // 0x005499a3    8d7c240c
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x005499a7    f3a5
                         mov.s             ecx, edx                                      // 0x005499a9    8bca
                         and               ecx, 0x03                                     // 0x005499ab    83e103
                         rep movsb                                                       // 0x005499ae    f3a4
                         {disp8} mov       byte ptr [esp + eax * 0x1 + 0x0c], 0x00       // 0x005499b0    c644040c00
_jmp_addr_0x005499b5:    {disp8} lea       eax, dword ptr [esp + 0x0c]                   // 0x005499b5    8d44240c
                         push              eax                                           // 0x005499b9    50
                         {disp32} lea      ecx, dword ptr [esp + 0x00000410]             // 0x005499ba    8d8c2410040000
                         push              0x00bea808                                    // 0x005499c1    6808a8be00
                         push              ecx                                           // 0x005499c6    51
                         call              _sprintf                                      // 0x005499c7    e806be2700
                         add               esp, 0x0c                                     // 0x005499cc    83c40c
                         {disp8} lea       edx, dword ptr [esp + 0x0c]                   // 0x005499cf    8d54240c
                         push              edx                                           // 0x005499d3    52
                         {disp32} lea      eax, dword ptr [esp + 0x00000610]             // 0x005499d4    8d842410060000
                         push              0x00bea7f0                                    // 0x005499db    68f0a7be00
                         push              eax                                           // 0x005499e0    50
                         call              _sprintf                                      // 0x005499e1    e8ecbd2700
                         {disp32} lea      ecx, dword ptr [esp + 0x00000418]             // 0x005499e6    8d8c2418040000
                         push              ecx                                           // 0x005499ed    51
                         call              ?Exists@LHOSFile@@SAIPAD@Z                    // 0x005499ee    e8ad2c2700
                         {disp32} lea      edx, dword ptr [esp + 0x0000061c]             // 0x005499f3    8d94241c060000
                         push              edx                                           // 0x005499fa    52
                         call              ?Exists@LHOSFile@@SAIPAD@Z                    // 0x005499fb    e8a02c2700
                         add               esp, 0x14                                     // 0x00549a00    83c414
                         test              eax, eax                                      // 0x00549a03    85c0
                         {disp8} jne       _jmp_addr_0x00549a45                          // 0x00549a05    753e
                         {disp32} mov      eax, dword ptr [esp + 0x00000810]             // 0x00549a07    8b842410080000
                         {disp32} lea      esi, dword ptr [eax + 0x000000c8]             // 0x00549a0e    8db0c8000000
                         {disp8} lea       eax, dword ptr [esp + 0x0c]                   // 0x00549a14    8d44240c
_jmp_addr_0x00549a18:    mov               dl, byte ptr [eax]                            // 0x00549a18    8a10
                         mov.s             cl, dl                                        // 0x00549a1a    8aca
                         cmp               dl, byte ptr [esi]                            // 0x00549a1c    3a16
                         {disp8} jne       _jmp_addr_0x00549a3c                          // 0x00549a1e    751c
                         test              cl, cl                                        // 0x00549a20    84c9
                         {disp8} je        _jmp_addr_0x00549a38                          // 0x00549a22    7414
                         {disp8} mov       dl, byte ptr [eax + 0x01]                     // 0x00549a24    8a5001
                         mov.s             cl, dl                                        // 0x00549a27    8aca
                         cmp               dl, byte ptr [esi + 0x01]                     // 0x00549a29    3a5601
                         {disp8} jne       _jmp_addr_0x00549a3c                          // 0x00549a2c    750e
                         add               eax, 0x02                                     // 0x00549a2e    83c002
                         add               esi, 0x02                                     // 0x00549a31    83c602
                         test              cl, cl                                        // 0x00549a34    84c9
                         {disp8} jne       _jmp_addr_0x00549a18                          // 0x00549a36    75e0
_jmp_addr_0x00549a38:    xor.s             eax, eax                                      // 0x00549a38    33c0
                         {disp8} jmp       _jmp_addr_0x00549a41                          // 0x00549a3a    eb05
_jmp_addr_0x00549a3c:    sbb.s             eax, eax                                      // 0x00549a3c    1bc0
                         sbb               eax, -0x01                                    // 0x00549a3e    83d8ff
_jmp_addr_0x00549a41:    test              eax, eax                                      // 0x00549a41    85c0
                         {disp8} je        _jmp_addr_0x00549a7a                          // 0x00549a43    7435
_jmp_addr_0x00549a45:    push              ebp                                           // 0x00549a45    55
                         {disp32} lea      eax, dword ptr [esp + 0x00000210]             // 0x00549a46    8d842410020000
                         push              0x00000200                                    // 0x00549a4d    6800020000
                         push              eax                                           // 0x00549a52    50
                         call              _fgets                                        // 0x00549a53    e8aeeb2700
                         add               esp, 0x0c                                     // 0x00549a58    83c40c
                         test              eax, eax                                      // 0x00549a5b    85c0
                         {disp32} jne      _jmp_addr_0x0054997f                          // 0x00549a5d    0f851cffffff
_jmp_addr_0x00549a63:    push              ebp                                           // 0x00549a63    55
                         call              _fclose                                       // 0x00549a64    e8c7d32700
                         add               esp, 0x04                                     // 0x00549a69    83c404
_jmp_addr_0x00549a6c:    pop               edi                                           // 0x00549a6c    5f
                         pop               esi                                           // 0x00549a6d    5e
                         xor.s             al, al                                        // 0x00549a6e    32c0
                         pop               ebp                                           // 0x00549a70    5d
                         add               esp, 0x00000800                               // 0x00549a71    81c400080000
                         ret               0x0004                                        // 0x00549a77    c20400
_jmp_addr_0x00549a7a:    pop               edi                                           // 0x00549a7a    5f
                         pop               esi                                           // 0x00549a7b    5e
                         mov               al, 0x01                                      // 0x00549a7c    b001
                         pop               ebp                                           // 0x00549a7e    5d
                         add               esp, 0x00000800                               // 0x00549a7f    81c400080000
                         ret               0x0004                                        // 0x00549a85    c20400
                         nop                                                             // 0x00549a88    90
                         nop                                                             // 0x00549a89    90
                         nop                                                             // 0x00549a8a    90
                         nop                                                             // 0x00549a8b    90
                         nop                                                             // 0x00549a8c    90
                         nop                                                             // 0x00549a8d    90
                         nop                                                             // 0x00549a8e    90
                         nop                                                             // 0x00549a8f    90
_jmp_addr_0x00549a90:    push              ebx                                           // 0x00549a90    53
                         push              ebp                                           // 0x00549a91    55
                         push              esi                                           // 0x00549a92    56
                         mov.s             esi, ecx                                      // 0x00549a93    8bf1
                         mov               eax, dword ptr [esi]                          // 0x00549a95    8b06
                         xor.s             ebp, ebp                                      // 0x00549a97    33ed
                         test              eax, eax                                      // 0x00549a99    85c0
                         push              edi                                           // 0x00549a9b    57
                         {disp8} je        _jmp_addr_0x00549ad6                          // 0x00549a9c    7438
                         {disp8} mov       bl, byte ptr [esp + 0x18]                     // 0x00549a9e    8a5c2418
_jmp_addr_0x00549aa2:    {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x00549aa2    8b4c2414
                         cmp               dword ptr [eax + 0x04], ecx                   // 0x00549aa6    394804
                         mov               edi, dword ptr [eax]                          // 0x00549aa9    8b38
                         {disp8} jne       _jmp_addr_0x00549ace                          // 0x00549aab    7521
                         cmp               eax, dword ptr [esi]                          // 0x00549aad    3b06
                         {disp8} jne       _jmp_addr_0x00549ab5                          // 0x00549aaf    7504
                         mov               dword ptr [esi], edi                          // 0x00549ab1    893e
                         {disp8} jmp       _jmp_addr_0x00549ab8                          // 0x00549ab3    eb03
_jmp_addr_0x00549ab5:    {disp8} mov       dword ptr [ebp + 0x00], edi                   // 0x00549ab5    897d00
_jmp_addr_0x00549ab8:    {disp8} mov       ecx, dword ptr [esi + 0x04]                   // 0x00549ab8    8b4e04
                         dec               ecx                                           // 0x00549abb    49
                         push              eax                                           // 0x00549abc    50
                         {disp8} mov       dword ptr [esi + 0x04], ecx                   // 0x00549abd    894e04
                         call              ??3@YAXPAX@Z                                  // 0x00549ac0    e8d3532600
                         add               esp, 0x04                                     // 0x00549ac5    83c404
                         test              bl, bl                                        // 0x00549ac8    84db
                         {disp8} jne       _jmp_addr_0x00549ad6                          // 0x00549aca    750a
                         {disp8} jmp       _jmp_addr_0x00549ad0                          // 0x00549acc    eb02
_jmp_addr_0x00549ace:    mov.s             ebp, eax                                      // 0x00549ace    8be8
_jmp_addr_0x00549ad0:    test              edi, edi                                      // 0x00549ad0    85ff
                         mov.s             eax, edi                                      // 0x00549ad2    8bc7
                         {disp8} jne       _jmp_addr_0x00549aa2                          // 0x00549ad4    75cc
_jmp_addr_0x00549ad6:    pop               edi                                           // 0x00549ad6    5f
                         pop               esi                                           // 0x00549ad7    5e
                         pop               ebp                                           // 0x00549ad8    5d
                         pop               ebx                                           // 0x00549ad9    5b
                         ret               0x0008                                        // 0x00549ada    c20800
                         nop                                                             // 0x00549add    90
                         nop                                                             // 0x00549ade    90
                         nop                                                             // 0x00549adf    90
_globl_ct_0x00549ae0:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x00549ae0    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x00549ae6    b001
                         test              al, cl                                        // 0x00549ae8    84c8
                         {disp8} jne       _jmp_addr_0x00549af4                          // 0x00549aea    7508
                         or.s              cl, al                                        // 0x00549aec    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x00549aee    880d34c9fa00
_jmp_addr_0x00549af4:    {disp32} jmp      _jmp_addr_0x00549b00                          // 0x00549af4    e907000000
                         nop                                                             // 0x00549af9    90
                         nop                                                             // 0x00549afa    90
                         nop                                                             // 0x00549afb    90
                         nop                                                             // 0x00549afc    90
                         nop                                                             // 0x00549afd    90
                         nop                                                             // 0x00549afe    90
                         nop                                                             // 0x00549aff    90
_jmp_addr_0x00549b00:    push              0x00407870                                    // 0x00549b00    6870784000
                         call              _atexit                                       // 0x00549b05    e887bc2700
                         pop               ecx                                           // 0x00549b0a    59
                         ret                                                             // 0x00549b0b    c3
                         nop                                                             // 0x00549b0c    90
                         nop                                                             // 0x00549b0d    90
                         nop                                                             // 0x00549b0e    90
                         nop                                                             // 0x00549b0f    90
_globl_ct_0x00549b10:    {disp32} jmp      _jmp_addr_0x00549b20                          // 0x00549b10    e90b000000
                         nop                                                             // 0x00549b15    90
                         nop                                                             // 0x00549b16    90
                         nop                                                             // 0x00549b17    90
                         nop                                                             // 0x00549b18    90
                         nop                                                             // 0x00549b19    90
                         nop                                                             // 0x00549b1a    90
                         nop                                                             // 0x00549b1b    90
                         nop                                                             // 0x00549b1c    90
                         nop                                                             // 0x00549b1d    90
                         nop                                                             // 0x00549b1e    90
                         nop                                                             // 0x00549b1f    90
_jmp_addr_0x00549b20:    {disp32} mov      dword ptr [data_bytes + 0x30b67c], 0xffffffff // 0x00549b20    c7057c16cd00ffffffff
                         ret                                                             // 0x00549b2a    c3
                         call              ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00549b2b    e8497debff
_globl_ct_0x00549b30:    {disp32} jmp      _jmp_addr_0x00549b40                          // 0x00549b30    e90b000000
                         nop                                                             // 0x00549b35    90
                         nop                                                             // 0x00549b36    90
                         nop                                                             // 0x00549b37    90
                         nop                                                             // 0x00549b38    90
                         nop                                                             // 0x00549b39    90
                         nop                                                             // 0x00549b3a    90
                         nop                                                             // 0x00549b3b    90
                         nop                                                             // 0x00549b3c    90
                         nop                                                             // 0x00549b3d    90
                         nop                                                             // 0x00549b3e    90
                         nop                                                             // 0x00549b3f    90
_jmp_addr_0x00549b40:    {disp32} fld      dword ptr [rdata_bytes + 0x35d0c]             // 0x00549b40    d9050ced8d00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x35d08]             // 0x00549b46    d80d08ed8d00
                         {disp32} fstp     dword ptr [data_bytes + 0x30b678]             // 0x00549b4c    d91d7816cd00
                         ret                                                             // 0x00549b52    c3
                         nop                                                             // 0x00549b53    90
                         nop                                                             // 0x00549b54    90
                         nop                                                             // 0x00549b55    90
                         nop                                                             // 0x00549b56    90
                         nop                                                             // 0x00549b57    90
                         nop                                                             // 0x00549b58    90
                         nop                                                             // 0x00549b59    90
                         nop                                                             // 0x00549b5a    90
                         nop                                                             // 0x00549b5b    90
                         nop                                                             // 0x00549b5c    90
                         nop                                                             // 0x00549b5d    90
                         nop                                                             // 0x00549b5e    90
                         nop                                                             // 0x00549b5f    90
?Init@SetupMultiplayerMain@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x00549b60    8b44240c
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x00549b64    8b542404
                         push              esi                                           // 0x00549b68    56
                         mov.s             esi, ecx                                      // 0x00549b69    8bf1
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]                   // 0x00549b6b    8b4c240c
                         push              eax                                           // 0x00549b6f    50
                         push              ecx                                           // 0x00549b70    51
                         push              edx                                           // 0x00549b71    52
                         mov.s             ecx, esi                                      // 0x00549b72    8bce
                         call              @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00549b74    e88798fcff
                         push              0x4d                                          // 0x00549b79    6a4d
                         push              0x00bea898                                    // 0x00549b7b    6898a8be00
                         push              0x00000468                                    // 0x00549b80    6868040000
                         {disp32} mov      dword ptr [data_bytes + 0x30b680], esi        // 0x00549b85    89358016cd00
                         call              ___nw__FUl                                    // 0x00549b8b    e8001c2900
                         add               esp, 0x0c                                     // 0x00549b90    83c40c
                         test              eax, eax                                      // 0x00549b93    85c0
                         {disp8} je        _jmp_addr_0x00549bbd                          // 0x00549b95    7426
                         push              0x0                                           // 0x00549b97    6a00
                         push              0x009cee0c                                    // 0x00549b99    680cee9c00
                         push              0x1e                                          // 0x00549b9e    6a1e
                         push              0x000001f4                                    // 0x00549ba0    68f4010000
                         push              0x0000020d                                    // 0x00549ba5    680d020000
                         push              0x00000096                                    // 0x00549baa    6896000000
                         push              0x000003e6                                    // 0x00549baf    68e6030000
                         mov.s             ecx, eax                                      // 0x00549bb4    8bc8
                         call              @__ct__9SetupEditFiiiiiPwi@33                 // 0x00549bb6    e86526ecff
                         {disp8} jmp       _jmp_addr_0x00549bbf                          // 0x00549bbb    eb02
_jmp_addr_0x00549bbd:    xor.s             eax, eax                                      // 0x00549bbd    33c0
_jmp_addr_0x00549bbf:    {disp8} mov       dword ptr [esi + 0x14], eax                   // 0x00549bbf    894614
                         call              _GetSmallTextSize__Fv                         // 0x00549bc2    e849deebff
                         {disp8} mov       ecx, dword ptr [esi + 0x14]                   // 0x00549bc7    8b4e14
                         push              0x51                                          // 0x00549bca    6a51
                         push              0x00bea898                                    // 0x00549bcc    6898a8be00
                         push              0x0000025c                                    // 0x00549bd1    685c020000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                   // 0x00549bd6    894120
                         call              ___nw__FUl                                    // 0x00549bd9    e8b21b2900
                         add               esp, 0x0c                                     // 0x00549bde    83c40c
                         test              eax, eax                                      // 0x00549be1    85c0
                         {disp8} je        _jmp_addr_0x00549c24                          // 0x00549be3    743f
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000a24 // 0x00549be5    813dac7cd100240a0000
                         {disp8} ja        _jmp_addr_0x00549bf9                          // 0x00549bef    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00549bf1    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x00549c05                          // 0x00549bf7    eb0c
_jmp_addr_0x00549bf9:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00549bf9    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x000079b0]             // 0x00549bff    8d8ab0790000
_jmp_addr_0x00549c05:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00549c05    8b4908
                         push              0x3                                           // 0x00549c08    6a03
                         push              0x1                                           // 0x00549c0a    6a01
                         push              0x28                                          // 0x00549c0c    6a28
                         push              ecx                                           // 0x00549c0e    51
                         push              0x00000208                                    // 0x00549c0f    6808020000
                         push              0x000002d0                                    // 0x00549c14    68d0020000
                         push              0x0                                           // 0x00549c19    6a00
                         mov.s             ecx, eax                                      // 0x00549c1b    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00549c1d    e83e36ecff
                         {disp8} jmp       _jmp_addr_0x00549c26                          // 0x00549c22    eb02
_jmp_addr_0x00549c24:    xor.s             eax, eax                                      // 0x00549c24    33c0
_jmp_addr_0x00549c26:    push              0x54                                          // 0x00549c26    6a54
                         push              0x00bea898                                    // 0x00549c28    6898a8be00
                         push              0x00000244                                    // 0x00549c2d    6844020000
                         {disp8} mov       dword ptr [esi + 0x18], eax                   // 0x00549c32    894618
                         call              ___nw__FUl                                    // 0x00549c35    e8561b2900
                         add               esp, 0x0c                                     // 0x00549c3a    83c40c
                         test              eax, eax                                      // 0x00549c3d    85c0
                         {disp8} je        _jmp_addr_0x00549c7b                          // 0x00549c3f    743a
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000012e1 // 0x00549c41    813dac7cd100e1120000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00549c4b    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x00549c59                          // 0x00549c51    7606
                         add               ecx, 0x0000e28c                               // 0x00549c53    81c18ce20000
_jmp_addr_0x00549c59:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00549c59    8b4908
                         push              0x0                                           // 0x00549c5c    6a00
                         push              ecx                                           // 0x00549c5e    51
                         push              0x64                                          // 0x00549c5f    6a64
                         push              0x000000c8                                    // 0x00549c61    68c8000000
                         push              0x00000096                                    // 0x00549c66    6896000000
                         push              0x00000190                                    // 0x00549c6b    6890010000
                         push              0x3                                           // 0x00549c70    6a03
                         mov.s             ecx, eax                                      // 0x00549c72    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x00549c74    e837fcebff
                         {disp8} jmp       _jmp_addr_0x00549c7d                          // 0x00549c79    eb02
_jmp_addr_0x00549c7b:    xor.s             eax, eax                                      // 0x00549c7b    33c0
_jmp_addr_0x00549c7d:    push              0x57                                          // 0x00549c7d    6a57
                         push              0x00bea898                                    // 0x00549c7f    6898a8be00
                         {disp8} mov       dword ptr [esi + 0x1c], eax                   // 0x00549c84    89461c
                         push              0x00000244                                    // 0x00549c87    6844020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x00549dd0      // 0x00549c8c    c78038020000d09d5400
                         call              ___nw__FUl                                    // 0x00549c96    e8f51a2900
                         add               esp, 0x0c                                     // 0x00549c9b    83c40c
                         test              eax, eax                                      // 0x00549c9e    85c0
                         {disp8} je        _jmp_addr_0x00549ce4                          // 0x00549ca0    7442
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000012e2 // 0x00549ca2    813dac7cd100e2120000
                         {disp8} ja        _jmp_addr_0x00549cb6                          // 0x00549cac    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00549cae    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x00549cc2                          // 0x00549cb4    eb0c
_jmp_addr_0x00549cb6:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00549cb6    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x0000e298]             // 0x00549cbc    8d8a98e20000
_jmp_addr_0x00549cc2:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00549cc2    8b4908
                         push              0x0                                           // 0x00549cc5    6a00
                         push              ecx                                           // 0x00549cc7    51
                         push              0x64                                          // 0x00549cc8    6a64
                         push              0x000000c8                                    // 0x00549cca    68c8000000
                         push              0x0000012c                                    // 0x00549ccf    682c010000
                         push              0x00000190                                    // 0x00549cd4    6890010000
                         push              0x4                                           // 0x00549cd9    6a04
                         mov.s             ecx, eax                                      // 0x00549cdb    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x00549cdd    e8cefbebff
                         {disp8} jmp       _jmp_addr_0x00549ce6                          // 0x00549ce2    eb02
_jmp_addr_0x00549ce4:    xor.s             eax, eax                                      // 0x00549ce4    33c0
_jmp_addr_0x00549ce6:    push              0x5a                                          // 0x00549ce6    6a5a
                         push              0x00bea898                                    // 0x00549ce8    6898a8be00
                         {disp8} mov       dword ptr [esi + 0x20], eax                   // 0x00549ced    894620
                         push              0x00000260                                    // 0x00549cf0    6860020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x00549dc0      // 0x00549cf5    c78038020000c09d5400
                         call              ___nw__FUl                                    // 0x00549cff    e88c1a2900
                         add               esp, 0x0c                                     // 0x00549d04    83c40c
                         test              eax, eax                                      // 0x00549d07    85c0
                         {disp8} je        _jmp_addr_0x00549d42                          // 0x00549d09    7437
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000012e3 // 0x00549d0b    813dac7cd100e3120000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00549d15    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x00549d23                          // 0x00549d1b    7606
                         add               ecx, 0x0000e2a4                               // 0x00549d1d    81c1a4e20000
_jmp_addr_0x00549d23:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00549d23    8b4908
                         push              0x14                                          // 0x00549d26    6a14
                         push              ecx                                           // 0x00549d28    51
                         push              0x1                                           // 0x00549d29    6a01
                         push              0x1                                           // 0x00549d2b    6a01
                         push              0x000000be                                    // 0x00549d2d    68be000000
                         push              0x00000113                                    // 0x00549d32    6813010000
                         push              0x1                                           // 0x00549d37    6a01
                         mov.s             ecx, eax                                      // 0x00549d39    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00549d3b    e8d071ecff
                         {disp8} jmp       _jmp_addr_0x00549d44                          // 0x00549d40    eb02
_jmp_addr_0x00549d42:    xor.s             eax, eax                                      // 0x00549d42    33c0
_jmp_addr_0x00549d44:    push              0x5c                                          // 0x00549d44    6a5c
                         push              0x00bea898                                    // 0x00549d46    6898a8be00
                         push              0x00000260                                    // 0x00549d4b    6860020000
                         {disp8} mov       dword ptr [esi + 0x28], eax                   // 0x00549d50    894628
                         call              ___nw__FUl                                    // 0x00549d53    e8381a2900
                         add               esp, 0x0c                                     // 0x00549d58    83c40c
                         test              eax, eax                                      // 0x00549d5b    85c0
                         {disp8} je        _jmp_addr_0x00549d9e                          // 0x00549d5d    743f
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000012e4 // 0x00549d5f    813dac7cd100e4120000
                         {disp8} ja        _jmp_addr_0x00549d73                          // 0x00549d69    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00549d6b    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x00549d7f                          // 0x00549d71    eb0c
_jmp_addr_0x00549d73:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00549d73    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x0000e2b0]             // 0x00549d79    8d8ab0e20000
_jmp_addr_0x00549d7f:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00549d7f    8b4908
                         push              0x14                                          // 0x00549d82    6a14
                         push              ecx                                           // 0x00549d84    51
                         push              0x0                                           // 0x00549d85    6a00
                         push              0x1                                           // 0x00549d87    6a01
                         push              0x00000154                                    // 0x00549d89    6854010000
                         push              0x00000113                                    // 0x00549d8e    6813010000
                         push              0x2                                           // 0x00549d93    6a02
                         mov.s             ecx, eax                                      // 0x00549d95    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00549d97    e87471ecff
                         {disp8} jmp       _jmp_addr_0x00549da0                          // 0x00549d9c    eb02
_jmp_addr_0x00549d9e:    xor.s             eax, eax                                      // 0x00549d9e    33c0
_jmp_addr_0x00549da0:    {disp8} mov       ecx, dword ptr [esi + 0x28]                   // 0x00549da0    8b4e28
                         {disp8} mov       dword ptr [esi + 0x2c], eax                   // 0x00549da3    89462c
                         mov               eax, 0x00549e60                               // 0x00549da6    b8609e5400
                         {disp32} mov      dword ptr [ecx + 0x00000238], eax             // 0x00549dab    898138020000
                         {disp8} mov       edx, dword ptr [esi + 0x2c]                   // 0x00549db1    8b562c
                         {disp32} mov      dword ptr [edx + 0x00000238], eax             // 0x00549db4    898238020000
                         pop               esi                                           // 0x00549dba    5e
                         ret               0x000c                                        // 0x00549dbb    c20c00
                         nop                                                             // 0x00549dbe    90
                         nop                                                             // 0x00549dbf    90
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30b664]        // 0x00549dc0    8b0d6416cd00
                         mov               eax, dword ptr [ecx]                          // 0x00549dc6    8b01
                         {disp8} jmp       dword ptr [eax + 0xc]                         // 0x00549dc8    ff600c
                         nop                                                             // 0x00549dcb    90
                         nop                                                             // 0x00549dcc    90
                         nop                                                             // 0x00549dcd    90
                         nop                                                             // 0x00549dce    90
                         nop                                                             // 0x00549dcf    90
_jmp_addr_0x00549dd0:    {disp32} mov      eax, dword ptr [rdata_bytes + 0x434]          // 0x00549dd0    a134948a00
                         xor.s             ecx, ecx                                      // 0x00549dd5    33c9
                         mov               cl, byte ptr [eax]                            // 0x00549dd7    8a08
                         push              ecx                                           // 0x00549dd9    51
                         call              dword ptr [rdata_bytes + 0x430]               // 0x00549dda    ff1530948a00
                         add               esp, 0x04                                     // 0x00549de0    83c404
                         test              al, al                                        // 0x00549de3    84c0
                         {disp8} jne       _jmp_addr_0x00549e28                          // 0x00549de5    7541
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a9f // 0x00549de7    813dac7cd1009f1a0000
                         {disp8} ja        _jmp_addr_0x00549e0a                          // 0x00549df1    7717
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00549df3    a1a87cd100
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00549df8    8b4008
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00549dfb    8b4c2404
                         push              0x0                                           // 0x00549dff    6a00
                         push              0x0                                           // 0x00549e01    6a00
                         push              eax                                           // 0x00549e03    50
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00549e04    e88773ecff
                         ret                                                             // 0x00549e09    c3
_jmp_addr_0x00549e0a:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00549e0a    8b15a87cd100
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00549e10    8b4c2404
                         {disp32} lea      eax, dword ptr [edx + 0x00013f74]             // 0x00549e14    8d82743f0100
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00549e1a    8b4008
                         push              0x0                                           // 0x00549e1d    6a00
                         push              0x0                                           // 0x00549e1f    6a00
                         push              eax                                           // 0x00549e21    50
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00549e22    e86973ecff
                         ret                                                             // 0x00549e27    c3
_jmp_addr_0x00549e28:    {disp32} mov      ecx, dword ptr [data_bytes + 0x30b680]        // 0x00549e28    8b0d8016cd00
                         {disp32} mov      edx, dword ptr [data_bytes + 0x30b670]        // 0x00549e2e    8b157016cd00
                         add               ecx, 0x000000fc                               // 0x00549e34    81c1fc000000
                         {disp32} mov      dword ptr [edx + 0x000000b4], ecx             // 0x00549e3a    898ab4000000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x30b670]        // 0x00549e40    a17016cd00
                         {disp32} mov      dword ptr [eax + 0x00000090], 0x00000001      // 0x00549e45    c7809000000001000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30b670]        // 0x00549e4f    8b0d7016cd00
                         mov               edx, dword ptr [ecx]                          // 0x00549e55    8b11
                         {disp8} jmp       dword ptr [edx + 0xc]                         // 0x00549e57    ff620c
                         nop                                                             // 0x00549e5a    90
                         nop                                                             // 0x00549e5b    90
                         nop                                                             // 0x00549e5c    90
                         nop                                                             // 0x00549e5d    90
                         nop                                                             // 0x00549e5e    90
                         nop                                                             // 0x00549e5f    90
                         {disp32} mov      eax, dword ptr [data_bytes + 0x30b680]        // 0x00549e60    a18016cd00
                         {disp8} mov       ecx, dword ptr [eax + 0x28]                   // 0x00549e65    8b4828
                         push              ebx                                           // 0x00549e68    53
                         push              ebp                                           // 0x00549e69    55
                         {disp8} mov       ebp, dword ptr [esp + 0x10]                   // 0x00549e6a    8b6c2410
                         push              esi                                           // 0x00549e6e    56
                         xor.s             bl, bl                                        // 0x00549e6f    32db
                         cmp.s             ebp, ecx                                      // 0x00549e71    3be9
                         push              edi                                           // 0x00549e73    57
                         {disp8} jne       _jmp_addr_0x00549ec2                          // 0x00549e74    754c
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30b670]        // 0x00549e76    8b0d7016cd00
                         call              _jmp_addr_0x00548990                          // 0x00549e7c    e80febffff
                         test              al, al                                        // 0x00549e81    84c0
                         {disp8} jne       _jmp_addr_0x00549ebb                          // 0x00549e83    7536
                         {disp32} mov      dword ptr [ebp + 0x00000248], 0x00000000      // 0x00549e85    c7854802000000000000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000012d3 // 0x00549e8f    813dac7cd100d3120000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00549e99    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x00549ea5                          // 0x00549e9e    7605
                         add               eax, 0x0000e1e4                               // 0x00549ea0    05e4e10000
_jmp_addr_0x00549ea5:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x00549ea5    8b4808
                         push              0x0                                           // 0x00549ea8    6a00
                         push              0x0                                           // 0x00549eaa    6a00
                         push              ecx                                           // 0x00549eac    51
                         {disp8} mov       ecx, dword ptr [esp + 0x20]                   // 0x00549ead    8b4c2420
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00549eb1    e8da72ecff
                         pop               edi                                           // 0x00549eb6    5f
                         pop               esi                                           // 0x00549eb7    5e
                         pop               ebp                                           // 0x00549eb8    5d
                         pop               ebx                                           // 0x00549eb9    5b
                         ret                                                             // 0x00549eba    c3
_jmp_addr_0x00549ebb:    {disp32} mov      eax, dword ptr [data_bytes + 0x30b680]        // 0x00549ebb    a18016cd00
                         mov               bl, 0x01                                      // 0x00549ec0    b301
_jmp_addr_0x00549ec2:    {disp8} mov       edx, dword ptr [eax + 0x28]                   // 0x00549ec2    8b5028
                         cmp.s             ebp, edx                                      // 0x00549ec5    3bea
                         {disp8} jne       _jmp_addr_0x00549ece                          // 0x00549ec7    7505
                         {disp8} mov       edi, dword ptr [eax + 0x2c]                   // 0x00549ec9    8b782c
                         {disp8} jmp       _jmp_addr_0x00549ed0                          // 0x00549ecc    eb02
_jmp_addr_0x00549ece:    mov.s             edi, edx                                      // 0x00549ece    8bfa
_jmp_addr_0x00549ed0:    cmp.s             ebp, edx                                      // 0x00549ed0    3bea
                         {disp8} jne       _jmp_addr_0x00549ed9                          // 0x00549ed2    7505
                         {disp8} mov       ecx, dword ptr [eax + 0x1c]                   // 0x00549ed4    8b481c
                         {disp8} jmp       _jmp_addr_0x00549edc                          // 0x00549ed7    eb03
_jmp_addr_0x00549ed9:    {disp8} mov       ecx, dword ptr [eax + 0x20]                   // 0x00549ed9    8b4820
_jmp_addr_0x00549edc:    cmp.s             ebp, edx                                      // 0x00549edc    3bea
                         {disp8} jne       _jmp_addr_0x00549ee5                          // 0x00549ede    7505
                         {disp8} mov       esi, dword ptr [eax + 0x20]                   // 0x00549ee0    8b7020
                         {disp8} jmp       _jmp_addr_0x00549ee8                          // 0x00549ee3    eb03
_jmp_addr_0x00549ee5:    {disp8} mov       esi, dword ptr [eax + 0x1c]                   // 0x00549ee5    8b701c
_jmp_addr_0x00549ee8:    cmp.s             ebp, edx                                      // 0x00549ee8    3bea
                         sete              dl                                            // 0x00549eea    0f94c2
                         {disp32} mov      byte ptr [eax + 0x00000428], dl               // 0x00549eed    889028040000
                         {disp32} mov      eax, dword ptr [ebp + 0x00000248]             // 0x00549ef3    8b8548020000
                         test              eax, eax                                      // 0x00549ef9    85c0
                         {disp8} jne       _jmp_addr_0x00549f0c                          // 0x00549efb    750f
                         pop               edi                                           // 0x00549efd    5f
                         pop               esi                                           // 0x00549efe    5e
                         {disp32} mov      dword ptr [ebp + 0x00000248], 0x00000001      // 0x00549eff    c7854802000001000000
                         pop               ebp                                           // 0x00549f09    5d
                         pop               ebx                                           // 0x00549f0a    5b
                         ret                                                             // 0x00549f0b    c3
_jmp_addr_0x00549f0c:    {disp32} mov      dword ptr [edi + 0x00000248], 0x00000000      // 0x00549f0c    c7874802000000000000
                         mov               eax, dword ptr [ecx]                          // 0x00549f16    8b01
                         push              0x0                                           // 0x00549f18    6a00
                         call              dword ptr [eax + 8]                           // 0x00549f1a    ff5008
                         mov               edx, dword ptr [esi]                          // 0x00549f1d    8b16
                         push              0x1                                           // 0x00549f1f    6a01
                         mov.s             ecx, esi                                      // 0x00549f21    8bce
                         call              dword ptr [edx + 8]                           // 0x00549f23    ff5208
                         test              bl, bl                                        // 0x00549f26    84db
                         {disp8} je        _jmp_addr_0x00549f78                          // 0x00549f28    744e
                         {disp32} mov      eax, dword ptr [data_bytes + 0x30b680]        // 0x00549f2a    a18016cd00
                         mov               esi, 0x00c58370                               // 0x00549f2f    be7083c500
                         add               eax, 0x000001c4                               // 0x00549f34    05c4010000
_jmp_addr_0x00549f39:    mov               dl, byte ptr [eax]                            // 0x00549f39    8a10
                         mov               bl, byte ptr [esi]                            // 0x00549f3b    8a1e
                         mov.s             cl, dl                                        // 0x00549f3d    8aca
                         cmp.s             dl, bl                                        // 0x00549f3f    3ad3
                         {disp8} jne       _jmp_addr_0x00549f61                          // 0x00549f41    751e
                         test              cl, cl                                        // 0x00549f43    84c9
                         {disp8} je        _jmp_addr_0x00549f5d                          // 0x00549f45    7416
                         {disp8} mov       dl, byte ptr [eax + 0x01]                     // 0x00549f47    8a5001
                         {disp8} mov       bl, byte ptr [esi + 0x01]                     // 0x00549f4a    8a5e01
                         mov.s             cl, dl                                        // 0x00549f4d    8aca
                         cmp.s             dl, bl                                        // 0x00549f4f    3ad3
                         {disp8} jne       _jmp_addr_0x00549f61                          // 0x00549f51    750e
                         add               eax, 0x02                                     // 0x00549f53    83c002
                         add               esi, 0x02                                     // 0x00549f56    83c602
                         test              cl, cl                                        // 0x00549f59    84c9
                         {disp8} jne       _jmp_addr_0x00549f39                          // 0x00549f5b    75dc
_jmp_addr_0x00549f5d:    xor.s             eax, eax                                      // 0x00549f5d    33c0
                         {disp8} jmp       _jmp_addr_0x00549f66                          // 0x00549f5f    eb05
_jmp_addr_0x00549f61:    sbb.s             eax, eax                                      // 0x00549f61    1bc0
                         sbb               eax, -0x01                                    // 0x00549f63    83d8ff
_jmp_addr_0x00549f66:    test              eax, eax                                      // 0x00549f66    85c0
                         {disp8} jne       _jmp_addr_0x00549f78                          // 0x00549f68    750e
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x00549f6a    8b442414
                         push              ebp                                           // 0x00549f6e    55
                         push              eax                                           // 0x00549f6f    50
                         call              _jmp_addr_0x00549dd0                          // 0x00549f70    e85bfeffff
                         add               esp, 0x08                                     // 0x00549f75    83c408
_jmp_addr_0x00549f78:    pop               edi                                           // 0x00549f78    5f
                         pop               esi                                           // 0x00549f79    5e
                         pop               ebp                                           // 0x00549f7a    5d
                         pop               ebx                                           // 0x00549f7b    5b
                         ret                                                             // 0x00549f7c    c3
                         nop                                                             // 0x00549f7d    90
                         nop                                                             // 0x00549f7e    90
                         nop                                                             // 0x00549f7f    90
?Destroy@SetupMultiplayerMain@@UAEXXZ:
                         call              ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00549f80    e80b96fcff
                         {disp32} mov      dword ptr [data_bytes + 0x30b680], 0x00000000 // 0x00549f85    c7058016cd0000000000
                         ret                                                             // 0x00549f8f    c3
?InitControls@SetupMultiplayerMain@@UAEXXZ:
                         push              ebx                                           // 0x00549f90    53
                         mov.s             ebx, ecx                                      // 0x00549f91    8bd9
                         call              _GetSmallTextSize__Fv                         // 0x00549f93    e878daebff
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30b680]        // 0x00549f98    8b0d8016cd00
                         {disp8} mov       edx, dword ptr [ecx + 0x04]                   // 0x00549f9e    8b5104
                         {disp32} mov      dword ptr [edx + 0x000000ac], eax             // 0x00549fa1    8982ac000000
                         {disp8} mov       al, byte ptr [ebx + 0x10]                     // 0x00549fa7    8a4310
                         test              al, al                                        // 0x00549faa    84c0
                         {disp8} jne       _jmp_addr_0x00549fbf                          // 0x00549fac    7511
                         push              esi                                           // 0x00549fae    56
                         {disp8} mov       esi, dword ptr [ebx + 0x30]                   // 0x00549faf    8b7330
                         push              edi                                           // 0x00549fb2    57
                         {disp8} lea       edi, dword ptr [ebx + 0x34]                   // 0x00549fb3    8d7b34
                         mov               ecx, 0x0000010b                               // 0x00549fb6    b90b010000
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x00549fbb    f3a5
                         pop               edi                                           // 0x00549fbd    5f
                         pop               esi                                           // 0x00549fbe    5e
_jmp_addr_0x00549fbf:    {disp32} mov      dl, byte ptr [ebx + 0x00000428]               // 0x00549fbf    8a9328040000
                         {disp8} mov       ecx, dword ptr [ebx + 0x1c]                   // 0x00549fc5    8b4b1c
                         test              dl, dl                                        // 0x00549fc8    84d2
                         sete              dl                                            // 0x00549fca    0f94c2
                         {disp8} mov       byte ptr [ebx + 0x10], 0x00                   // 0x00549fcd    c6431000
                         mov               eax, dword ptr [ecx]                          // 0x00549fd1    8b01
                         push              edx                                           // 0x00549fd3    52
                         call              dword ptr [eax + 8]                           // 0x00549fd4    ff5008
                         {disp8} mov       ecx, dword ptr [ebx + 0x28]                   // 0x00549fd7    8b4b28
                         xor.s             eax, eax                                      // 0x00549fda    33c0
                         {disp32} mov      al, byte ptr [ebx + 0x00000428]               // 0x00549fdc    8a8328040000
                         {disp32} mov      dword ptr [ecx + 0x00000248], eax             // 0x00549fe2    898148020000
                         {disp8} mov       ecx, dword ptr [ebx + 0x20]                   // 0x00549fe8    8b4b20
                         mov               edx, dword ptr [ecx]                          // 0x00549feb    8b11
                         xor.s             eax, eax                                      // 0x00549fed    33c0
                         {disp32} mov      al, byte ptr [ebx + 0x00000428]               // 0x00549fef    8a8328040000
                         push              eax                                           // 0x00549ff5    50
                         call              dword ptr [edx + 8]                           // 0x00549ff6    ff5208
                         {disp32} mov      al, byte ptr [ebx + 0x00000428]               // 0x00549ff9    8a8328040000
                         {disp8} mov       edx, dword ptr [ebx + 0x2c]                   // 0x00549fff    8b532c
                         xor.s             ecx, ecx                                      // 0x0054a002    33c9
                         test              al, al                                        // 0x0054a004    84c0
                         sete              cl                                            // 0x0054a006    0f94c1
                         pop               ebx                                           // 0x0054a009    5b
                         {disp32} mov      dword ptr [edx + 0x00000248], ecx             // 0x0054a00a    898a48020000
                         ret                                                             // 0x0054a010    c3
                         nop                                                             // 0x0054a011    90
                         nop                                                             // 0x0054a012    90
                         nop                                                             // 0x0054a013    90
                         nop                                                             // 0x0054a014    90
                         nop                                                             // 0x0054a015    90
                         nop                                                             // 0x0054a016    90
                         nop                                                             // 0x0054a017    90
                         nop                                                             // 0x0054a018    90
                         nop                                                             // 0x0054a019    90
                         nop                                                             // 0x0054a01a    90
                         nop                                                             // 0x0054a01b    90
                         nop                                                             // 0x0054a01c    90
                         nop                                                             // 0x0054a01d    90
                         nop                                                             // 0x0054a01e    90
                         nop                                                             // 0x0054a01f    90
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0054a020    8b442404
                         cmp               eax, 0x07                                     // 0x0054a024    83f807
                         push              esi                                           // 0x0054a027    56
                         push              edi                                           // 0x0054a028    57
                         {disp32} ja       _jmp_addr_0x0054a154                          // 0x0054a029    0f8725010000
                         {disp32} mov      edx, dword ptr [data_bytes + 0x30b680]        // 0x0054a02f    8b158016cd00
                         jmp               dword ptr [eax*4 + 0x54a15c]                  // 0x0054a035    ff24855ca15400
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30b680]        // 0x0054a03c    8b0d8016cd00
                         mov               eax, dword ptr [ecx]                          // 0x0054a042    8b01
                         call              dword ptr [eax + 0x20]                        // 0x0054a044    ff5020
                         pop               edi                                           // 0x0054a047    5f
                         pop               esi                                           // 0x0054a048    5e
                         ret               0x0014                                        // 0x0054a049    c21400
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x343190]        // 0x0054a04c    8b0d9091d000
                         {disp8} mov       byte ptr [ecx + 0x20], 0x01                   // 0x0054a052    c6412001
                         {disp32} mov      edx, dword ptr [data_bytes + 0x30a648]        // 0x0054a056    8b154806cd00
                         pop               edi                                           // 0x0054a05c    5f
                         {disp8} mov       byte ptr [edx + 0x20], 0x01                   // 0x0054a05d    c6422001
                         pop               esi                                           // 0x0054a061    5e
                         ret               0x0014                                        // 0x0054a062    c21400
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0054a065    8b442418
                         cmp               eax, 0x0000009c                               // 0x0054a069    3d9c000000
                         {disp8} mov       ecx, dword ptr [esp + 0x1c]                   // 0x0054a06e    8b4c241c
                         {disp8} je        _jmp_addr_0x0054a079                          // 0x0054a072    7405
                         cmp               eax, 0x1c                                     // 0x0054a074    83f81c
                         {disp8} jne       _jmp_addr_0x0054a07d                          // 0x0054a077    7504
_jmp_addr_0x0054a079:    test              ecx, ecx                                      // 0x0054a079    85c9
                         {disp8} je        _jmp_addr_0x0054a093                          // 0x0054a07b    7416
_jmp_addr_0x0054a07d:    cmp               eax, 0x01                                     // 0x0054a07d    83f801
                         {disp32} jne      _jmp_addr_0x0054a154                          // 0x0054a080    0f85ce000000
                         test              ecx, ecx                                      // 0x0054a086    85c9
                         {disp32} jne      _jmp_addr_0x0054a154                          // 0x0054a088    0f85c6000000
                         {disp8} mov       eax, dword ptr [edx + 0x18]                   // 0x0054a08e    8b4218
                         {disp8} jmp       _jmp_addr_0x0054a097                          // 0x0054a091    eb04
_jmp_addr_0x0054a093:    {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0054a093    8b442414
_jmp_addr_0x0054a097:    test              eax, eax                                      // 0x0054a097    85c0
                         {disp32} je       _jmp_addr_0x0054a154                          // 0x0054a099    0f84b5000000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000238]             // 0x0054a09f    8b8838020000
                         test              ecx, ecx                                      // 0x0054a0a5    85c9
                         {disp8} je        _jmp_addr_0x0054a0b9                          // 0x0054a0a7    7410
                         push              eax                                           // 0x0054a0a9    50
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x0054a0aa    8b442414
                         push              eax                                           // 0x0054a0ae    50
                         call              ecx                                           // 0x0054a0af    ffd1
                         add               esp, 0x08                                     // 0x0054a0b1    83c408
                         pop               edi                                           // 0x0054a0b4    5f
                         pop               esi                                           // 0x0054a0b5    5e
                         ret               0x0014                                        // 0x0054a0b6    c21400
_jmp_addr_0x0054a0b9:    {disp8} mov       ecx, dword ptr [eax + 0x18]                   // 0x0054a0b9    8b4818
                         test              ecx, ecx                                      // 0x0054a0bc    85c9
                         {disp32} jne      _jmp_addr_0x0054a154                          // 0x0054a0be    0f8590000000
                         {disp32} mov      cl, byte ptr [eax + 0x00000229]               // 0x0054a0c4    8a8829020000
                         test              cl, cl                                        // 0x0054a0ca    84c9
                         {disp32} jne      _jmp_addr_0x0054a154                          // 0x0054a0cc    0f8582000000
                         {disp8} mov       edi, dword ptr [edx + 0x30]                   // 0x0054a0d2    8b7a30
                         {disp8} lea       esi, dword ptr [edx + 0x34]                   // 0x0054a0d5    8d7234
                         mov               ecx, 0x0000010b                               // 0x0054a0d8    b90b010000
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x0054a0dd    f3a5
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x343190]        // 0x0054a0df    8b0d9091d000
                         {disp8} mov       byte ptr [ecx + 0x20], 0x01                   // 0x0054a0e5    c6412001
                         call              _jmp_addr_0x00513640                          // 0x0054a0e9    e85295fcff
                         pop               edi                                           // 0x0054a0ee    5f
                         pop               esi                                           // 0x0054a0ef    5e
                         ret               0x0014                                        // 0x0054a0f0    c21400
                         {disp8} mov       edx, dword ptr [esp + 0x1c]                   // 0x0054a0f3    8b54241c
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0054a0f7    8b442418
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x0054a0fb    8b4c2410
                         push              edx                                           // 0x0054a0ff    52
                         push              eax                                           // 0x0054a100    50
                         call              _jmp_addr_0x00408100                          // 0x0054a101    e8fadfebff
                         test              eax, eax                                      // 0x0054a106    85c0
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30b680]        // 0x0054a108    8b0d8016cd00
                         {disp8} mov       esi, dword ptr [ecx + 0x14]                   // 0x0054a10e    8b7114
                         {disp8} je        _jmp_addr_0x0054a154                          // 0x0054a111    7441
                         push              0x000000ff                                    // 0x0054a113    68ff000000
                         {disp8} lea       edi, dword ptr [esi + 0x24]                   // 0x0054a118    8d7e24
                         push              0x00c4cd30                                    // 0x0054a11b    6830cdc400
                         push              edi                                           // 0x0054a120    57
                         call              _wcsncpy                                      // 0x0054a121    e8ffc22700
                         push              edi                                           // 0x0054a126    57
                         {disp32} mov      word ptr [esi + 0x00000222], 0x0000           // 0x0054a127    66c786220200000000
                         call              _wcslen                                       // 0x0054a130    e82dc32700
                         add               esp, 0x10                                     // 0x0054a135    83c410
                         {disp32} mov      dword ptr [esi + 0x0000024c], eax             // 0x0054a138    89864c020000
                         {disp32} mov      dword ptr [esi + 0x00000254], eax             // 0x0054a13e    898654020000
                         {disp32} mov      dword ptr [esi + 0x00000250], eax             // 0x0054a144    898650020000
                         {disp32} mov      dword ptr [esi + 0x00000258], 0x00000000      // 0x0054a14a    c7865802000000000000
_jmp_addr_0x0054a154:    pop               edi                                           // 0x0054a154    5f
                         pop               esi                                           // 0x0054a155    5e
                         ret               0x0014                                        // 0x0054a156    c21400

// Snippet: db, [0x0054a159, 0x0054a15c)
.byte 0x8d, 0x49, 0x00            // 0x0054a159

// Snippet: jmptbl, [0x0054a15c, 0x0054a17c)
.byte 0xf3, 0xa0, 0x54, 0x00      // 0x0054a15c
.byte 0x93, 0xa0, 0x54, 0x00      // 0x0054a160
.byte 0x65, 0xa0, 0x54, 0x00      // 0x0054a164
.byte 0x54, 0xa1, 0x54, 0x00      // 0x0054a168
.byte 0x54, 0xa1, 0x54, 0x00      // 0x0054a16c
.byte 0x54, 0xa1, 0x54, 0x00      // 0x0054a170
.byte 0x3c, 0xa0, 0x54, 0x00      // 0x0054a174
.byte 0x4c, 0xa0, 0x54, 0x00      // 0x0054a178

// Snippet: db, [0x0054a17c, 0x0054a180)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0054a17c

