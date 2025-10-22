.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetFocusControl__8SetupBoxFP12SetupControl@12
.extern _jmp_addr_0x00411fc0
.extern @__ct__16CameraModeFollowFP7GCameraP16GameThingWithPosfii@28
.extern _jmp_addr_0x0053b4a0
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern _jmp_addr_0x005708d0
.extern _jmp_addr_0x00571f50
.extern _jmp_addr_0x00571ff0
.extern _jmp_addr_0x00572090
.extern _jmp_addr_0x005725b0
.extern _jmp_addr_0x005729e0
.extern _jmp_addr_0x00573840
.extern _jmp_addr_0x00573890
.extern _jmp_addr_0x005754b0
.extern _jmp_addr_0x00575d10
.extern _jmp_addr_0x00575d20
.extern _jmp_addr_0x0071ef70
.extern ?CanShowName@SpecialVillager@@QAE_NXZ
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ___RTDynamicCast
.extern _wcsncpy
.extern _wcslen
.extern __strcmpi
.extern __chkstk
.extern ___nw__FUl
.extern @GetStringWidth__13GatheringTextFPwif@20

start_0x00572d00_0x00573840:
// Snippet: asm, [0x00572d00, 0x00573801)
                         mov               eax, 0x00001018                               // 0x00572d00    b818100000
                         call              __chkstk                                      // 0x00572d05    e8a6412500
                         push              ebx                                           // 0x00572d0a    53
                         push              ebp                                           // 0x00572d0b    55
                         push              esi                                           // 0x00572d0c    56
                         push              edi                                           // 0x00572d0d    57
                         push              0x14                                          // 0x00572d0e    6a14
                         call              _jmp_addr_0x00411fc0                          // 0x00572d10    e8abf2e9ff
                         {disp32} mov      ebx, dword ptr [data_bytes + 0x34043c]        // 0x00572d15    8b1d3c64d000
                         {disp32} mov      ebp, dword ptr [esp + 0x00001040]             // 0x00572d1b    8bac2440100000
                         {disp32} mov      esi, dword ptr [esp + 0x00001034]             // 0x00572d22    8bb42434100000
                         {disp32} mov      edi, dword ptr [esp + 0x00001030]             // 0x00572d29    8bbc2430100000
                         {disp8} mov       dword ptr [esp + 0x20], eax                   // 0x00572d30    89442420
                         {disp32} mov      eax, dword ptr [data_bytes + 0x340434]        // 0x00572d34    a13464d000
                         add               esp, 0x04                                     // 0x00572d39    83c404
                         test              eax, eax                                      // 0x00572d3c    85c0
                         {disp8} je        _jmp_addr_0x00572d5a                          // 0x00572d3e    741a
                         {disp32} mov      eax, dword ptr [esp + 0x00001038]             // 0x00572d40    8b842438100000
                         {disp32} mov      ecx, dword ptr [esp + 0x00001034]             // 0x00572d47    8b8c2434100000
                         push              ebp                                           // 0x00572d4e    55
                         push              eax                                           // 0x00572d4f    50
                         push              ecx                                           // 0x00572d50    51
                         push              esi                                           // 0x00572d51    56
                         push              edi                                           // 0x00572d52    57
                         mov.s             ecx, ebx                                      // 0x00572d53    8bcb
                         call              _jmp_addr_0x005729e0                          // 0x00572d55    e886fcffff
_jmp_addr_0x00572d5a:    {disp8} lea       eax, dword ptr [edi + -0x01]                  // 0x00572d5a    8d47ff
                         cmp               eax, 0x0c                                     // 0x00572d5d    83f80c
                         {disp32} ja       _jmp_addr_0x005737f4                          // 0x00572d60    0f878e0a0000
                         jmp               dword ptr [eax*4 + 0x573804]                  // 0x00572d66    ff248504385700
                         {disp32} mov      eax, dword ptr [ebx + 0x000000b4]             // 0x00572d6d    8b83b4000000
                         cmp               dword ptr [esp + 0x00001034], eax             // 0x00572d73    39842434100000
                         {disp32} jne      _jmp_addr_0x005737f4                          // 0x00572d7a    0f85740a0000
                         {disp32} mov      byte ptr [eax + 0x00000285], 0x00             // 0x00572d80    c6808502000000
                         {disp32} mov      ecx, dword ptr [ebx + 0x000000b4]             // 0x00572d87    8b8bb4000000
                         {disp32} mov      eax, dword ptr [ecx + 0x00000248]             // 0x00572d8d    8b8148020000
                         test              eax, eax                                      // 0x00572d93    85c0
                         {disp8} jl        _jmp_addr_0x00572da4                          // 0x00572d95    7c0d
                         {disp32} mov      edx, dword ptr [ecx + 0x00000258]             // 0x00572d97    8b9158020000
                         shl               eax, 9                                        // 0x00572d9d    c1e009
                         add.s             eax, edx                                      // 0x00572da0    03c2
                         {disp8} jmp       _jmp_addr_0x00572da9                          // 0x00572da2    eb05
_jmp_addr_0x00572da4:    mov               eax, 0x00c4cd30                               // 0x00572da4    b830cdc400
_jmp_addr_0x00572da9:    {disp32} mov      esi, dword ptr [ebx + 0x000000ac]             // 0x00572da9    8bb3ac000000
                         push              0x000000ff                                    // 0x00572daf    68ff000000
                         push              eax                                           // 0x00572db4    50
                         {disp8} lea       edi, dword ptr [esi + 0x24]                   // 0x00572db5    8d7e24
                         push              edi                                           // 0x00572db8    57
                         call              _wcsncpy                                      // 0x00572db9    e867362500
                         push              edi                                           // 0x00572dbe    57
                         {disp32} mov      word ptr [esi + 0x00000222], 0x0000           // 0x00572dbf    66c786220200000000
                         call              _wcslen                                       // 0x00572dc8    e895362500
                         {disp32} mov      dword ptr [esi + 0x0000024c], eax             // 0x00572dcd    89864c020000
                         {disp32} mov      dword ptr [esi + 0x00000254], eax             // 0x00572dd3    898654020000
                         {disp32} mov      dword ptr [esi + 0x00000250], eax             // 0x00572dd9    898650020000
                         {disp32} mov      dword ptr [esi + 0x00000258], 0x00000000      // 0x00572ddf    c7865802000000000000
                         {disp32} mov      eax, dword ptr [ebx + 0x000000b4]             // 0x00572de9    8b83b4000000
                         {disp8} mov       ecx, dword ptr [eax + 0x14]                   // 0x00572def    8b4814
                         add               esp, 0x10                                     // 0x00572df2    83c410
                         cmp.s             ebp, ecx                                      // 0x00572df5    3be9
                         {disp8} jle       _jmp_addr_0x00572e00                          // 0x00572df7    7e07
                         add               dword ptr [eax + 0x0000027c], 0x04            // 0x00572df9    83807c02000004
_jmp_addr_0x00572e00:    {disp32} mov      eax, dword ptr [ebx + 0x000000b4]             // 0x00572e00    8b83b4000000
                         cmp               ebp, dword ptr [eax + 0x0c]                   // 0x00572e06    3b680c
                         {disp8} jge       _jmp_addr_0x00572e12                          // 0x00572e09    7d07
                         add               dword ptr [eax + 0x0000027c], -0x04           // 0x00572e0b    83807c020000fc
_jmp_addr_0x00572e12:    {disp32} mov      eax, dword ptr [ebx + 0x000000b4]             // 0x00572e12    8b83b4000000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000278]             // 0x00572e18    8b8878020000
                         cmp               dword ptr [eax + 0x0000027c], ecx             // 0x00572e1e    39887c020000
                         {disp8} jle       _jmp_addr_0x00572e2c                          // 0x00572e24    7e06
                         {disp32} mov      dword ptr [eax + 0x0000027c], ecx             // 0x00572e26    89887c020000
_jmp_addr_0x00572e2c:    {disp32} mov      eax, dword ptr [ebx + 0x000000b4]             // 0x00572e2c    8b83b4000000
                         {disp32} mov      ecx, dword ptr [eax + 0x0000027c]             // 0x00572e32    8b887c020000
                         test              ecx, ecx                                      // 0x00572e38    85c9
                         {disp32} jge      _jmp_addr_0x005737f4                          // 0x00572e3a    0f8db4090000
                         pop               edi                                           // 0x00572e40    5f
                         pop               esi                                           // 0x00572e41    5e
                         pop               ebp                                           // 0x00572e42    5d
                         {disp32} mov      dword ptr [eax + 0x0000027c], 0x00000000      // 0x00572e43    c7807c02000000000000
                         pop               ebx                                           // 0x00572e4d    5b
                         add               esp, 0x00001018                               // 0x00572e4e    81c418100000
                         ret               0x0014                                        // 0x00572e54    c21400
                         {disp32} mov      al, byte ptr [ebx + 0x000000d4]               // 0x00572e57    8a83d4000000
                         test              al, al                                        // 0x00572e5d    84c0
                         {disp8} je        _jmp_addr_0x00572e72                          // 0x00572e5f    7411
                         {disp32} mov      al, byte ptr [ebx + 0x000000a8]               // 0x00572e61    8a83a8000000
                         test              al, al                                        // 0x00572e67    84c0
                         {disp8} je        _jmp_addr_0x00572e72                          // 0x00572e69    7407
                         {disp32} mov      byte ptr [ebx + 0x000000dd], 0x00             // 0x00572e6b    c683dd00000000
_jmp_addr_0x00572e72:    {disp32} mov      ecx, dword ptr [ebx + 0x000000b4]             // 0x00572e72    8b8bb4000000
                         {disp32} mov      byte ptr [ebx + 0x000000a8], 0x00             // 0x00572e78    c683a800000000
                         mov               edx, dword ptr [ecx]                          // 0x00572e7f    8b11
                         push              0x1                                           // 0x00572e81    6a01
                         call              dword ptr [edx + 8]                           // 0x00572e83    ff5208
                         pop               edi                                           // 0x00572e86    5f
                         pop               esi                                           // 0x00572e87    5e
                         pop               ebp                                           // 0x00572e88    5d
                         pop               ebx                                           // 0x00572e89    5b
                         add               esp, 0x00001018                               // 0x00572e8a    81c418100000
                         ret               0x0014                                        // 0x00572e90    c21400
                         {disp32} mov      eax, dword ptr [ebx + 0x000000c8]             // 0x00572e93    8b83c8000000
                         cmp               dword ptr [esp + 0x00001034], eax             // 0x00572e99    39842434100000
                         {disp8} jne       _jmp_addr_0x00572ec8                          // 0x00572ea0    7526
                         cmp               dword ptr [eax + 0x00000248], 0x05            // 0x00572ea2    83b84802000005
                         {disp8} je        _jmp_addr_0x00572ec8                          // 0x00572ea9    741d
                         push              0x1                                           // 0x00572eab    6a01
                         mov.s             ecx, ebx                                      // 0x00572ead    8bcb
                         call              _jmp_addr_0x00573840                          // 0x00572eaf    e88c090000
                         mov.s             ecx, ebx                                      // 0x00572eb4    8bcb
                         call              _jmp_addr_0x005725b0                          // 0x00572eb6    e8f5f6ffff
                         {disp32} mov      eax, dword ptr [ebx + 0x000000c0]             // 0x00572ebb    8b83c0000000
                         {disp32} mov      dword ptr [esp + 0x00001034], eax             // 0x00572ec1    89842434100000
_jmp_addr_0x00572ec8:    {disp32} mov      ecx, dword ptr [esp + 0x00001034]             // 0x00572ec8    8b8c2434100000
                         cmp               ecx, dword ptr [ebx + 0x000000c0]             // 0x00572ecf    3b8bc0000000
                         {disp32} jne      _jmp_addr_0x005737f4                          // 0x00572ed5    0f8519090000
                         test              esi, esi                                      // 0x00572edb    85f6
                         {disp32} je       _jmp_addr_0x005737f4                          // 0x00572edd    0f8411090000
                         {disp32} mov      ecx, dword ptr [ebx + 0x000000b4]             // 0x00572ee3    8b8bb4000000
                         {disp32} mov      byte ptr [ebx + 0x000000a8], 0x01             // 0x00572ee9    c683a800000001
                         mov               edx, dword ptr [ecx]                          // 0x00572ef0    8b11
                         push              0x0                                           // 0x00572ef2    6a00
                         call              dword ptr [edx + 8]                           // 0x00572ef4    ff5208
                         {disp32} mov      ecx, dword ptr [ebx + 0x000000b0]             // 0x00572ef7    8b8bb0000000
                         mov               eax, dword ptr [ecx]                          // 0x00572efd    8b01
                         push              0x1                                           // 0x00572eff    6a01
                         call              dword ptr [eax + 8]                           // 0x00572f01    ff5008
                         {disp32} mov      ecx, dword ptr [ebx + 0x000000b4]             // 0x00572f04    8b8bb4000000
                         push              ecx                                           // 0x00572f0a    51
                         mov.s             ecx, esi                                      // 0x00572f0b    8bce
                         call              @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00572f0d    e82e62e9ff
                         {disp32} mov      ecx, dword ptr [ebx + 0x000000b4]             // 0x00572f12    8b8bb4000000
                         {disp32} mov      eax, dword ptr [esp + 0x00001038]             // 0x00572f18    8b842438100000
                         mov               edx, dword ptr [ecx]                          // 0x00572f1f    8b11
                         push              0x1                                           // 0x00572f21    6a01
                         push              ebp                                           // 0x00572f23    55
                         push              eax                                           // 0x00572f24    50
                         call              dword ptr [edx + 0x1c]                        // 0x00572f25    ff521c
                         pop               edi                                           // 0x00572f28    5f
                         pop               esi                                           // 0x00572f29    5e
                         pop               ebp                                           // 0x00572f2a    5d
                         pop               ebx                                           // 0x00572f2b    5b
                         add               esp, 0x00001018                               // 0x00572f2c    81c418100000
                         ret               0x0014                                        // 0x00572f32    c21400
                         {disp32} mov      ecx, dword ptr [esp + 0x00001034]             // 0x00572f35    8b8c2434100000
                         test              ecx, ecx                                      // 0x00572f3c    85c9
                         {disp32} je       _jmp_addr_0x005737f4                          // 0x00572f3e    0f84b0080000
                         {disp32} mov      eax, dword ptr [ebx + 0x000000b4]             // 0x00572f44    8b83b4000000
                         cmp.s             ecx, eax                                      // 0x00572f4a    3bc8
                         {disp32} mov      byte ptr [ebx + 0x000000d4], 0x00             // 0x00572f4c    c683d400000000
                         {disp8} jne       _jmp_addr_0x00572f7a                          // 0x00572f53    7525
                         {disp32} mov      eax, dword ptr [eax + 0x00000248]             // 0x00572f55    8b8048020000
                         test              eax, eax                                      // 0x00572f5b    85c0
                         {disp32} jl       _jmp_addr_0x005737f4                          // 0x00572f5d    0f8c91080000
                         push              eax                                           // 0x00572f63    50
                         push              0x0                                           // 0x00572f64    6a00
                         mov.s             ecx, ebx                                      // 0x00572f66    8bcb
                         call              _jmp_addr_0x00573890                          // 0x00572f68    e823090000
                         pop               edi                                           // 0x00572f6d    5f
                         pop               esi                                           // 0x00572f6e    5e
                         pop               ebp                                           // 0x00572f6f    5d
                         pop               ebx                                           // 0x00572f70    5b
                         add               esp, 0x00001018                               // 0x00572f71    81c418100000
                         ret               0x0014                                        // 0x00572f77    c21400
_jmp_addr_0x00572f7a:    cmp               ecx, dword ptr [ebx + 0x000000bc]             // 0x00572f7a    3b8bbc000000
                         {disp8} jne       _jmp_addr_0x00572f94                          // 0x00572f80    7512
                         push              -0x1                                          // 0x00572f82    6aff
                         push              0x0                                           // 0x00572f84    6a00
                         mov.s             ecx, ebx                                      // 0x00572f86    8bcb
                         call              _jmp_addr_0x00573890                          // 0x00572f88    e803090000
                         {disp32} mov      ecx, dword ptr [esp + 0x00001034]             // 0x00572f8d    8b8c2434100000
_jmp_addr_0x00572f94:    cmp               ecx, dword ptr [ebx + 0x000000c8]             // 0x00572f94    3b8bc8000000
                         {disp8} jne       _jmp_addr_0x00572fac                          // 0x00572f9a    7510
                         push              0x0                                           // 0x00572f9c    6a00
                         mov.s             ecx, ebx                                      // 0x00572f9e    8bcb
                         call              _jmp_addr_0x00573840                          // 0x00572fa0    e89b080000
                         {disp32} mov      ecx, dword ptr [esp + 0x00001034]             // 0x00572fa5    8b8c2434100000
_jmp_addr_0x00572fac:    cmp               ecx, dword ptr [ebx + 0x000000c4]             // 0x00572fac    3b8bc4000000
                         {disp32} jne      _jmp_addr_0x005734c5                          // 0x00572fb2    0f850d050000
                         {disp32} mov      eax, dword ptr [ebx + 0x000000e0]             // 0x00572fb8    8b83e0000000
                         test              eax, eax                                      // 0x00572fbe    85c0
                         {disp32} jle      _jmp_addr_0x005734c5                          // 0x00572fc0    0f8eff040000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00572fc6    8b0d5c19d000
                         {disp8} mov       byte ptr [esp + 0x12], 0x00                   // 0x00572fcc    c644241200
                         call              ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00572fd1    e8aa91fdff
                         test              eax, eax                                      // 0x00572fd6    85c0
                         {disp8} je        _jmp_addr_0x0057301c                          // 0x00572fd8    7442
                         {disp8} mov       ecx, dword ptr [eax + 0x58]                   // 0x00572fda    8b4858
                         test              ecx, ecx                                      // 0x00572fdd    85c9
                         {disp8} jge       _jmp_addr_0x00572fe5                          // 0x00572fdf    7d04
                         xor.s             eax, eax                                      // 0x00572fe1    33c0
                         {disp8} jmp       _jmp_addr_0x00572fe9                          // 0x00572fe3    eb04
_jmp_addr_0x00572fe5:    {disp8} mov       eax, dword ptr [eax + ecx * 0x4 + 0x28]       // 0x00572fe5    8b448828
_jmp_addr_0x00572fe9:    push              0x0                                           // 0x00572fe9    6a00
                         push              0x009cd3b0                                    // 0x00572feb    68b0d39c00
                         push              0x009cd390                                    // 0x00572ff0    6890d39c00
                         push              0x0                                           // 0x00572ff5    6a00
                         push              eax                                           // 0x00572ff7    50
                         call              ___RTDynamicCast                              // 0x00572ff8    e81c2a2500
                         add               esp, 0x14                                     // 0x00572ffd    83c414
                         test              eax, eax                                      // 0x00573000    85c0
                         {disp8} je        _jmp_addr_0x00573009                          // 0x00573002    7405
                         {disp8} mov       byte ptr [esp + 0x12], 0x01                   // 0x00573004    c644241201
_jmp_addr_0x00573009:    {disp32} mov      ecx, dword ptr [data_bytes + 0x7d6c]          // 0x00573009    8b0d6cdd9c00
                         and               ecx, 0x08                                     // 0x0057300f    83e108
                         cmp               cl, 0x08                                      // 0x00573012    80f908
                         {disp8} je        _jmp_addr_0x0057301c                          // 0x00573015    7405
                         {disp8} mov       byte ptr [esp + 0x12], 0x00                   // 0x00573017    c644241200
_jmp_addr_0x0057301c:    {disp32} mov      edx, dword ptr [esp + 0x00001034]             // 0x0057301c    8b942434100000
                         {disp32} mov      eax, dword ptr [edx + 0x0000022c]             // 0x00573023    8b822c020000
                         test              eax, eax                                      // 0x00573029    85c0
                         {disp8} je        _jmp_addr_0x00573032                          // 0x0057302b    7405
                         {disp8} mov       byte ptr [esp + 0x12], 0x00                   // 0x0057302d    c644241200
_jmp_addr_0x00573032:    {disp32} mov      ecx, dword ptr [_game]                        // 0x00573032    8b0d5c19d000
                         {disp32} mov      eax, dword ptr [ecx + 0x00250300]             // 0x00573038    8b8100032500
                         test              eax, eax                                      // 0x0057303e    85c0
                         {disp8} je        _jmp_addr_0x0057305b                          // 0x00573040    7419
                         {disp32} mov      edx, dword ptr [eax + 0x00006530]             // 0x00573042    8b9030650000
                         test              edx, edx                                      // 0x00573048    85d2
                         {disp8} je        _jmp_addr_0x00573056                          // 0x0057304a    740a
                         {disp32} mov      edx, dword ptr [eax + 0x0000652c]             // 0x0057304c    8b902c650000
                         test              edx, edx                                      // 0x00573052    85d2
                         {disp8} jne       _jmp_addr_0x0057305b                          // 0x00573054    7505
_jmp_addr_0x00573056:    {disp8} mov       byte ptr [esp + 0x12], 0x00                   // 0x00573056    c644241200
_jmp_addr_0x0057305b:    {disp32} mov      eax, dword ptr [ebx + 0x000000e8]             // 0x0057305b    8b83e8000000
                         test              eax, eax                                      // 0x00573061    85c0
                         {disp8} je        _jmp_addr_0x00573070                          // 0x00573063    740b
                         {disp8} mov       eax, dword ptr [eax + 0x04]                   // 0x00573065    8b4004
                         test              eax, eax                                      // 0x00573068    85c0
                         {disp8} je        _jmp_addr_0x00573070                          // 0x0057306a    7404
                         mov               eax, dword ptr [eax]                          // 0x0057306c    8b00
                         {disp8} jmp       _jmp_addr_0x00573072                          // 0x0057306e    eb02
_jmp_addr_0x00573070:    xor.s             eax, eax                                      // 0x00573070    33c0
_jmp_addr_0x00573072:    sub               eax, 0x00                                     // 0x00573072    83e800
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x00573075    0f84a2030000
                         sub               eax, 0x02                                     // 0x0057307b    83e802
                         {disp32} mov      eax, dword ptr [ecx + 0x00250538]             // 0x0057307e    8b8138052500
                         {disp32} je       _jmp_addr_0x0057313b                          // 0x00573084    0f84b1000000
                         test              eax, eax                                      // 0x0057308a    85c0
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x0057308c    0f848b030000
                         call              ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00573092    e8e990fdff
                         test              eax, eax                                      // 0x00573097    85c0
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x00573099    0f847e030000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0057309f    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x005730a5    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x005730a7    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x005730ad    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x005730b0    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x005730b3    8d0450
                         shl               eax, 5                                        // 0x005730b6    c1e005
                         add.s             eax, ecx                                      // 0x005730b9    03c1
                         {disp8} lea       ecx, dword ptr [eax + 0x18]                   // 0x005730bb    8d4818
                         test              ecx, ecx                                      // 0x005730be    85c9
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x005730c0    0f8457030000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000a64]             // 0x005730c6    8b88640a0000
                         test              ecx, ecx                                      // 0x005730cc    85c9
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x005730ce    0f8449030000
                         {disp8} mov       al, byte ptr [esp + 0x12]                     // 0x005730d4    8a442412
                         test              al, al                                        // 0x005730d8    84c0
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x005730da    0f843d030000
                         push              0x000002bb                                    // 0x005730e0    68bb020000
                         push              0x00bef1b8                                    // 0x005730e5    68b8f1be00
                         push              0x48                                          // 0x005730ea    6a48
                         call              ___nw__FUl                                    // 0x005730ec    e89f862600
                         mov.s             esi, eax                                      // 0x005730f1    8bf0
                         add               esp, 0x0c                                     // 0x005730f3    83c40c
                         test              esi, esi                                      // 0x005730f6    85f6
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x005730f8    0f841f030000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005730fe    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x00573104    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x00573106    8a81595a2000
                         push              0x0                                           // 0x0057310c    6a00
                         push              0x0                                           // 0x0057310e    6a00
                         push              0x3f800000                                    // 0x00573110    680000803f
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x00573115    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x00573118    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0057311b    8d0450
                         shl               eax, 5                                        // 0x0057311e    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00573121    8b8408640a0000
                         push              eax                                           // 0x00573128    50
                         call              ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00573129    e85290fdff
                         push              eax                                           // 0x0057312e    50
                         mov.s             ecx, esi                                      // 0x0057312f    8bce
                         call              @__ct__16CameraModeFollowFP7GCameraP16GameThingWithPosfii@28                          // 0x00573131    e8ca86edff
                         {disp32} jmp      _jmp_addr_0x0057341d                          // 0x00573136    e9e2020000
_jmp_addr_0x0057313b:    test              eax, eax                                      // 0x0057313b    85c0
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x0057313d    0f84da020000
                         call              ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00573143    e83890fdff
                         test              eax, eax                                      // 0x00573148    85c0
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x0057314a    0f84cd020000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00573150    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x00573156    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x00573158    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0057315e    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x00573161    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x00573164    8d0450
                         shl               eax, 5                                        // 0x00573167    c1e005
                         add.s             eax, ecx                                      // 0x0057316a    03c1
                         {disp8} lea       ecx, dword ptr [eax + 0x18]                   // 0x0057316c    8d4818
                         test              ecx, ecx                                      // 0x0057316f    85c9
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x00573171    0f84a6020000
                         {disp32} mov      eax, dword ptr [eax + 0x00000a68]             // 0x00573177    8b80680a0000
                         xor.s             ecx, ecx                                      // 0x0057317d    33c9
                         xor.s             esi, esi                                      // 0x0057317f    33f6
                         test              eax, eax                                      // 0x00573181    85c0
                         {disp8} mov       dword ptr [esp + 0x18], ecx                   // 0x00573183    894c2418
                         {disp8} mov       byte ptr [esp + 0x13], cl                     // 0x00573187    884c2413
                         {disp8} mov       dword ptr [esp + 0x14], eax                   // 0x0057318b    89442414
                         {disp32} je       _jmp_addr_0x005732fe                          // 0x0057318f    0f8469010000
_jmp_addr_0x00573195:    {disp8} mov       edx, dword ptr [esp + 0x14]                   // 0x00573195    8b542414
                         {disp32} mov      ebp, dword ptr [edx + 0x00000754]             // 0x00573199    8baa54070000
                         test              ebp, ebp                                      // 0x0057319f    85ed
                         {disp32} je       _jmp_addr_0x0057323f                          // 0x005731a1    0f8498000000
_jmp_addr_0x005731a7:    {disp32} mov      esi, dword ptr [ebp + 0x000000a0]             // 0x005731a7    8bb5a0000000
                         test              esi, esi                                      // 0x005731ad    85f6
                         {disp8} je        _jmp_addr_0x0057322f                          // 0x005731af    747e
_jmp_addr_0x005731b1:    test              byte ptr [esi + 0x000000e0], 0x04             // 0x005731b1    f686e000000004
                         {disp8} jne       _jmp_addr_0x0057321b                          // 0x005731b8    7561
                         push              0x0                                           // 0x005731ba    6a00
                         push              0x00be8f48                                    // 0x005731bc    68488fbe00
                         push              0x009cafc8                                    // 0x005731c1    68c8af9c00
                         push              0x0                                           // 0x005731c6    6a00
                         push              esi                                           // 0x005731c8    56
                         call              ___RTDynamicCast                              // 0x005731c9    e84b282500
                         add               esp, 0x14                                     // 0x005731ce    83c414
                         test              eax, eax                                      // 0x005731d1    85c0
                         {disp8} je        _jmp_addr_0x0057321b                          // 0x005731d3    7446
                         {disp32} mov      ecx, dword ptr [ebx + 0x000000e8]             // 0x005731d5    8b8be8000000
                         test              ecx, ecx                                      // 0x005731db    85c9
                         {disp8} mov       dword ptr [esp + 0x18], esi                   // 0x005731dd    89742418
                         {disp8} je        _jmp_addr_0x005731e8                          // 0x005731e1    7405
                         {disp8} mov       ecx, dword ptr [ecx + 0x04]                   // 0x005731e3    8b4904
                         {disp8} jmp       _jmp_addr_0x005731ea                          // 0x005731e6    eb02
_jmp_addr_0x005731e8:    xor.s             ecx, ecx                                      // 0x005731e8    33c9
_jmp_addr_0x005731ea:    {disp32} mov      eax, dword ptr [eax + 0x00000130]             // 0x005731ea    8b8030010000
                         {disp32} mov      edx, dword ptr [data_bytes + 0x3d5154]        // 0x005731f0    8b1554b1d900
                         lea               edi, dword ptr [eax + eax * 0x2]              // 0x005731f6    8d3c40
                         add               ecx, 0x00000804                               // 0x005731f9    81c104080000
                         shl               edi, 5                                        // 0x005731ff    c1e705
                         push              ecx                                           // 0x00573202    51
                         add.s             edi, edx                                      // 0x00573203    03fa
                         call              _jmp_addr_0x0053b4a0                          // 0x00573205    e89682fcff
                         push              eax                                           // 0x0057320a    50
                         add               edi, 0x10                                     // 0x0057320b    83c710
                         push              edi                                           // 0x0057320e    57
                         call              __strcmpi                                     // 0x0057320f    e8cc3a2500
                         add               esp, 0x0c                                     // 0x00573214    83c40c
                         test              eax, eax                                      // 0x00573217    85c0
                         {disp8} je        _jmp_addr_0x00573227                          // 0x00573219    740c
_jmp_addr_0x0057321b:    {disp32} mov      esi, dword ptr [esi + 0x000000e4]             // 0x0057321b    8bb6e4000000
                         test              esi, esi                                      // 0x00573221    85f6
                         {disp8} jne       _jmp_addr_0x005731b1                          // 0x00573223    758c
                         {disp8} jmp       _jmp_addr_0x0057322f                          // 0x00573225    eb08
_jmp_addr_0x00573227:    test              esi, esi                                      // 0x00573227    85f6
                         {disp32} jne      _jmp_addr_0x00573308                          // 0x00573229    0f85d9000000
_jmp_addr_0x0057322f:    {disp32} mov      ebp, dword ptr [ebp + 0x0000009c]             // 0x0057322f    8bad9c000000
                         test              ebp, ebp                                      // 0x00573235    85ed
                         {disp32} jne      _jmp_addr_0x005731a7                          // 0x00573237    0f856affffff
                         {disp8} jmp       _jmp_addr_0x00573247                          // 0x0057323d    eb08
_jmp_addr_0x0057323f:    test              esi, esi                                      // 0x0057323f    85f6
                         {disp32} jne      _jmp_addr_0x00573308                          // 0x00573241    0f85c1000000
_jmp_addr_0x00573247:    {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x00573247    8b442414
                         {disp32} mov      esi, dword ptr [eax + 0x00000768]             // 0x0057324b    8bb068070000
                         test              esi, esi                                      // 0x00573251    85f6
                         {disp32} je       _jmp_addr_0x005732e0                          // 0x00573253    0f8487000000
_jmp_addr_0x00573259:    test              byte ptr [esi + 0x000000e0], 0x04             // 0x00573259    f686e000000004
                         {disp8} jne       _jmp_addr_0x005732cf                          // 0x00573260    756d
                         push              0x0                                           // 0x00573262    6a00
                         push              0x00be8f48                                    // 0x00573264    68488fbe00
                         push              0x009cafc8                                    // 0x00573269    68c8af9c00
                         push              0x0                                           // 0x0057326e    6a00
                         push              esi                                           // 0x00573270    56
                         call              ___RTDynamicCast                              // 0x00573271    e8a3272500
                         mov.s             edi, eax                                      // 0x00573276    8bf8
                         add               esp, 0x14                                     // 0x00573278    83c414
                         test              edi, edi                                      // 0x0057327b    85ff
                         {disp8} je        _jmp_addr_0x005732cf                          // 0x0057327d    7450
                         mov.s             ecx, edi                                      // 0x0057327f    8bcf
                         call              ?CanShowName@SpecialVillager@@QAE_NXZ         // 0x00573281    e8eac11a00
                         test              al, al                                        // 0x00573286    84c0
                         {disp8} je        _jmp_addr_0x005732cf                          // 0x00573288    7445
                         {disp32} mov      eax, dword ptr [ebx + 0x000000e8]             // 0x0057328a    8b83e8000000
                         test              eax, eax                                      // 0x00573290    85c0
                         {disp8} mov       dword ptr [esp + 0x18], esi                   // 0x00573292    89742418
                         {disp8} je        _jmp_addr_0x0057329d                          // 0x00573296    7405
                         {disp8} mov       ecx, dword ptr [eax + 0x04]                   // 0x00573298    8b4804
                         {disp8} jmp       _jmp_addr_0x0057329f                          // 0x0057329b    eb02
_jmp_addr_0x0057329d:    xor.s             ecx, ecx                                      // 0x0057329d    33c9
_jmp_addr_0x0057329f:    {disp32} mov      eax, dword ptr [edi + 0x00000130]             // 0x0057329f    8b8730010000
                         lea               edi, dword ptr [eax + eax * 0x2]              // 0x005732a5    8d3c40
                         {disp32} mov      eax, dword ptr [data_bytes + 0x3d5154]        // 0x005732a8    a154b1d900
                         add               ecx, 0x00000804                               // 0x005732ad    81c104080000
                         shl               edi, 5                                        // 0x005732b3    c1e705
                         push              ecx                                           // 0x005732b6    51
                         add.s             edi, eax                                      // 0x005732b7    03f8
                         call              _jmp_addr_0x0053b4a0                          // 0x005732b9    e8e281fcff
                         push              eax                                           // 0x005732be    50
                         add               edi, 0x10                                     // 0x005732bf    83c710
                         push              edi                                           // 0x005732c2    57
                         call              __strcmpi                                     // 0x005732c3    e8183a2500
                         add               esp, 0x0c                                     // 0x005732c8    83c40c
                         test              eax, eax                                      // 0x005732cb    85c0
                         {disp8} je        _jmp_addr_0x005732db                          // 0x005732cd    740c
_jmp_addr_0x005732cf:    {disp32} mov      esi, dword ptr [esi + 0x000000e4]             // 0x005732cf    8bb6e4000000
                         test              esi, esi                                      // 0x005732d5    85f6
                         {disp8} jne       _jmp_addr_0x00573259                          // 0x005732d7    7580
                         {disp8} jmp       _jmp_addr_0x005732e0                          // 0x005732d9    eb05
_jmp_addr_0x005732db:    {disp8} mov       byte ptr [esp + 0x13], 0x01                   // 0x005732db    c644241301
_jmp_addr_0x005732e0:    {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x005732e0    8b4c2414
                         {disp32} mov      eax, dword ptr [ecx + 0x0000075c]             // 0x005732e4    8b815c070000
                         test              eax, eax                                      // 0x005732ea    85c0
                         {disp8} mov       dword ptr [esp + 0x14], eax                   // 0x005732ec    89442414
                         {disp32} jne      _jmp_addr_0x00573195                          // 0x005732f0    0f859ffeffff
                         test              esi, esi                                      // 0x005732f6    85f6
                         {disp8} jne       _jmp_addr_0x00573308                          // 0x005732f8    750e
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                   // 0x005732fa    8b4c2418
_jmp_addr_0x005732fe:    test              ecx, ecx                                      // 0x005732fe    85c9
                         mov.s             esi, ecx                                      // 0x00573300    8bf1
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x00573302    0f8415010000
_jmp_addr_0x00573308:    {disp8} mov       al, byte ptr [esp + 0x12]                     // 0x00573308    8a442412
                         test              al, al                                        // 0x0057330c    84c0
                         {disp8} je        _jmp_addr_0x00573347                          // 0x0057330e    7437
                         push              0x000002ed                                    // 0x00573310    68ed020000
                         push              0x00bef1b8                                    // 0x00573315    68b8f1be00
                         push              0x48                                          // 0x0057331a    6a48
                         call              ___nw__FUl                                    // 0x0057331c    e86f842600
                         mov.s             edi, eax                                      // 0x00573321    8bf8
                         add               esp, 0x0c                                     // 0x00573323    83c40c
                         test              edi, edi                                      // 0x00573326    85ff
                         {disp8} je        _jmp_addr_0x00573347                          // 0x00573328    741d
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0057332a    8b0d5c19d000
                         push              0x0                                           // 0x00573330    6a00
                         push              0x0                                           // 0x00573332    6a00
                         push              0x3f800000                                    // 0x00573334    680000803f
                         push              esi                                           // 0x00573339    56
                         call              ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0057333a    e8418efdff
                         push              eax                                           // 0x0057333f    50
                         mov.s             ecx, edi                                      // 0x00573340    8bcf
                         call              @__ct__16CameraModeFollowFP7GCameraP16GameThingWithPosfii@28                          // 0x00573342    e8b984edff
_jmp_addr_0x00573347:    push              0x0                                           // 0x00573347    6a00
                         push              0x00be8f48                                    // 0x00573349    68488fbe00
                         push              0x009cafc8                                    // 0x0057334e    68c8af9c00
                         push              0x0                                           // 0x00573353    6a00
                         push              esi                                           // 0x00573355    56
                         call              ___RTDynamicCast                              // 0x00573356    e8be262500
                         mov.s             esi, eax                                      // 0x0057335b    8bf0
                         add               esp, 0x14                                     // 0x0057335d    83c414
                         test              esi, esi                                      // 0x00573360    85f6
                         {disp32} je       _jmp_addr_0x0057341d                          // 0x00573362    0f84b5000000
                         {disp8} mov       al, byte ptr [esp + 0x13]                     // 0x00573368    8a442413
                         test              al, al                                        // 0x0057336c    84c0
                         {disp32} mov      eax, dword ptr [ebx + 0x000000e8]             // 0x0057336e    8b83e8000000
                         {disp8} je        _jmp_addr_0x005733c0                          // 0x00573374    744a
                         test              eax, eax                                      // 0x00573376    85c0
                         {disp8} je        _jmp_addr_0x0057337f                          // 0x00573378    7405
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x0057337a    8b5004
                         {disp8} jmp       _jmp_addr_0x00573381                          // 0x0057337d    eb02
_jmp_addr_0x0057337f:    xor.s             edx, edx                                      // 0x0057337f    33d2
_jmp_addr_0x00573381:    {disp32} mov      eax, dword ptr [ebx + 0x000000e8]             // 0x00573381    8b83e8000000
                         test              eax, eax                                      // 0x00573387    85c0
                         {disp8} je        _jmp_addr_0x00573390                          // 0x00573389    7405
                         {disp8} mov       ecx, dword ptr [eax + 0x04]                   // 0x0057338b    8b4804
                         {disp8} jmp       _jmp_addr_0x00573392                          // 0x0057338e    eb02
_jmp_addr_0x00573390:    xor.s             ecx, ecx                                      // 0x00573390    33c9
_jmp_addr_0x00573392:    cmp               dword ptr [data_bytes + 0x351cac], 0x00001a2d // 0x00573392    813dac7cd1002d1a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0057339c    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x005733a8                          // 0x005733a1    7605
                         add               eax, 0x00013a1c                               // 0x005733a3    051c3a0100
_jmp_addr_0x005733a8:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x005733a8    8b4008
                         add               edx, 0x00000c04                               // 0x005733ab    81c2040c0000
                         push              edx                                           // 0x005733b1    52
                         add               ecx, 0x00000804                               // 0x005733b2    81c104080000
                         push              ecx                                           // 0x005733b8    51
                         push              eax                                           // 0x005733b9    50
                         {disp8} lea       ecx, dword ptr [esp + 0x2c]                   // 0x005733ba    8d4c242c
                         {disp8} jmp       _jmp_addr_0x0057340b                          // 0x005733be    eb4b
_jmp_addr_0x005733c0:    test              eax, eax                                      // 0x005733c0    85c0
                         {disp8} je        _jmp_addr_0x005733c9                          // 0x005733c2    7405
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x005733c4    8b5004
                         {disp8} jmp       _jmp_addr_0x005733cb                          // 0x005733c7    eb02
_jmp_addr_0x005733c9:    xor.s             edx, edx                                      // 0x005733c9    33d2
_jmp_addr_0x005733cb:    {disp32} mov      eax, dword ptr [ebx + 0x000000e8]             // 0x005733cb    8b83e8000000
                         test              eax, eax                                      // 0x005733d1    85c0
                         {disp8} je        _jmp_addr_0x005733da                          // 0x005733d3    7405
                         {disp8} mov       ecx, dword ptr [eax + 0x04]                   // 0x005733d5    8b4804
                         {disp8} jmp       _jmp_addr_0x005733dc                          // 0x005733d8    eb02
_jmp_addr_0x005733da:    xor.s             ecx, ecx                                      // 0x005733da    33c9
_jmp_addr_0x005733dc:    cmp               dword ptr [data_bytes + 0x351cac], 0x00001a65 // 0x005733dc    813dac7cd100651a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x005733e6    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x005733f2                          // 0x005733eb    7605
                         add               eax, 0x00013cbc                               // 0x005733ed    05bc3c0100
_jmp_addr_0x005733f2:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x005733f2    8b4008
                         add               edx, 0x00000c04                               // 0x005733f5    81c2040c0000
                         push              edx                                           // 0x005733fb    52
                         add               ecx, 0x00000804                               // 0x005733fc    81c104080000
                         push              ecx                                           // 0x00573402    51
                         push              eax                                           // 0x00573403    50
                         {disp32} lea      ecx, dword ptr [esp + 0x00000830]             // 0x00573404    8d8c2430080000
_jmp_addr_0x0057340b:    push              ecx                                           // 0x0057340b    51
                         call              dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0057340c    ff15d8938a00
                         add               esp, 0x10                                     // 0x00573412    83c410
                         push              eax                                           // 0x00573415    50
                         mov.s             ecx, esi                                      // 0x00573416    8bce
                         call              _jmp_addr_0x0071ef70                          // 0x00573418    e853bb1a00
_jmp_addr_0x0057341d:    {disp32} mov      eax, dword ptr [ebx + 0x000000e0]             // 0x0057341d    8b83e0000000
                         test              eax, eax                                      // 0x00573423    85c0
                         {disp8} jle       _jmp_addr_0x0057346d                          // 0x00573425    7e46
                         dec               eax                                           // 0x00573427    48
                         {disp32} lea      edi, dword ptr [ebx + 0x000000e8]             // 0x00573428    8dbbe8000000
                         {disp32} mov      dword ptr [ebx + 0x000000e0], eax             // 0x0057342e    8983e0000000
                         mov               eax, dword ptr [edi]                          // 0x00573434    8b07
                         test              eax, eax                                      // 0x00573436    85c0
                         {disp8} je        _jmp_addr_0x0057346d                          // 0x00573438    7433
                         {disp8} mov       esi, dword ptr [eax + 0x04]                   // 0x0057343a    8b7004
                         test              esi, esi                                      // 0x0057343d    85f6
                         {disp8} je        _jmp_addr_0x0057346d                          // 0x0057343f    742c
                         push              0x0                                           // 0x00573441    6a00
                         push              esi                                           // 0x00573443    56
                         mov.s             ecx, edi                                      // 0x00573444    8bcf
                         call              _jmp_addr_0x00575d20                          // 0x00573446    e8d5280000
                         push              esi                                           // 0x0057344b    56
                         call              ??3@YAXPAX@Z                                  // 0x0057344c    e847ba2300
                         mov               eax, dword ptr [edi]                          // 0x00573451    8b07
                         add               esp, 0x04                                     // 0x00573453    83c404
                         test              eax, eax                                      // 0x00573456    85c0
                         {disp8} je        _jmp_addr_0x0057346d                          // 0x00573458    7413
                         {disp8} mov       esi, dword ptr [eax + 0x04]                   // 0x0057345a    8b7004
                         test              esi, esi                                      // 0x0057345d    85f6
                         {disp8} je        _jmp_addr_0x0057346d                          // 0x0057345f    740c
                         call              dword ptr [__imp__GetTickCount@4]             // 0x00573461    ff15c4918a00
                         {disp32} mov      dword ptr [esi + 0x00001008], eax             // 0x00573467    898608100000
_jmp_addr_0x0057346d:    {disp32} mov      eax, dword ptr [ebx + 0x000000ec]             // 0x0057346d    8b83ec000000
                         test              eax, eax                                      // 0x00573473    85c0
                         {disp32} mov      dword ptr [ebx + 0x000000e0], eax             // 0x00573475    8983e0000000
                         {disp8} jle       _jmp_addr_0x005734c5                          // 0x0057347b    7e48
                         {disp32} lea      esi, dword ptr [ebx + 0x000000e8]             // 0x0057347d    8db3e8000000
                         mov.s             ecx, esi                                      // 0x00573483    8bce
                         call              _jmp_addr_0x00575d10                          // 0x00573485    e886280000
                         test              eax, eax                                      // 0x0057348a    85c0
                         {disp8} je        _jmp_addr_0x005734c5                          // 0x0057348c    7437
                         mov               eax, dword ptr [esi]                          // 0x0057348e    8b06
                         test              eax, eax                                      // 0x00573490    85c0
                         {disp8} je        _jmp_addr_0x00573499                          // 0x00573492    7405
                         {disp8} mov       eax, dword ptr [eax + 0x04]                   // 0x00573494    8b4004
                         {disp8} jmp       _jmp_addr_0x0057349b                          // 0x00573497    eb02
_jmp_addr_0x00573499:    xor.s             eax, eax                                      // 0x00573499    33c0
_jmp_addr_0x0057349b:    {disp32} mov      edx, dword ptr [ebx + 0x000000b8]             // 0x0057349b    8b93b8000000
                         push              0x000000ff                                    // 0x005734a1    68ff000000
                         add               eax, 0x04                                     // 0x005734a6    83c004
                         push              eax                                           // 0x005734a9    50
                         add               edx, 0x24                                     // 0x005734aa    83c224
                         push              edx                                           // 0x005734ad    52
                         call              _wcsncpy                                      // 0x005734ae    e8722f2500
                         {disp32} mov      eax, dword ptr [ebx + 0x000000b8]             // 0x005734b3    8b83b8000000
                         add               esp, 0x0c                                     // 0x005734b9    83c40c
                         {disp32} mov      word ptr [eax + 0x00000222], 0x0000           // 0x005734bc    66c780220200000000
_jmp_addr_0x005734c5:    {disp32} mov      edi, dword ptr [esp + 0x00001034]             // 0x005734c5    8bbc2434100000
                         cmp               edi, dword ptr [ebx + 0x000000cc]             // 0x005734cc    3bbbcc000000
                         {disp8} jne       _jmp_addr_0x005734d9                          // 0x005734d2    7505
                         call              _jmp_addr_0x005754b0                          // 0x005734d4    e8d71f0000
_jmp_addr_0x005734d9:    cmp               dword ptr [edi + 0x18], 0x05                  // 0x005734d9    837f1805
                         {disp32} jne      _jmp_addr_0x005737f4                          // 0x005734dd    0f8511030000
                         {disp32} mov      eax, dword ptr [ebx + 0x000000b0]             // 0x005734e3    8b83b0000000
                         {disp32} mov      esi, dword ptr [eax + 0x00000248]             // 0x005734e9    8bb048020000
                         test              esi, esi                                      // 0x005734ef    85f6
                         {disp32} jl       _jmp_addr_0x00573661                          // 0x005734f1    0f8c6a010000
                         cmp               esi, dword ptr [eax + 0x00000250]             // 0x005734f7    3bb050020000
                         {disp8} jge       _jmp_addr_0x0057350a                          // 0x005734fd    7d0b
                         {disp32} mov      ecx, dword ptr [eax + 0x0000026c]             // 0x005734ff    8b886c020000
                         mov               ecx, dword ptr [ecx + esi * 0x4]              // 0x00573505    8b0cb1
                         {disp8} jmp       _jmp_addr_0x0057350c                          // 0x00573508    eb02
_jmp_addr_0x0057350a:    xor.s             ecx, ecx                                      // 0x0057350a    33c9
_jmp_addr_0x0057350c:    cmp               ecx, 0x005706a0                               // 0x0057350c    81f9a0065700
                         {disp32} jne      _jmp_addr_0x005735b2                          // 0x00573512    0f859a000000
                         push              0x0                                           // 0x00573518    6a00
                         mov.s             ecx, ebx                                      // 0x0057351a    8bcb
                         call              _jmp_addr_0x00571f50                          // 0x0057351c    e82feaffff
                         {disp32} mov      eax, dword ptr [ebx + 0x000000b0]             // 0x00573521    8b83b0000000
                         cmp               esi, dword ptr [eax + 0x00000250]             // 0x00573527    3bb050020000
                         {disp32} jge      _jmp_addr_0x00573661                          // 0x0057352d    0f8d2e010000
                         {disp32} mov      edx, dword ptr [eax + 0x00000264]             // 0x00573533    8b9064020000
                         mov               esi, dword ptr [edx + esi * 0x4]              // 0x00573539    8b34b2
                         test              esi, esi                                      // 0x0057353c    85f6
                         {disp32} je       _jmp_addr_0x00573661                          // 0x0057353e    0f841d010000
                         {disp8} mov       ecx, dword ptr [edi + 0x10]                   // 0x00573544    8b4f10
                         {disp8} mov       ebp, dword ptr [esp + 0x1c]                   // 0x00573547    8b6c241c
                         mov.s             eax, ecx                                      // 0x0057354b    8bc1
                         sub.s             eax, ebp                                      // 0x0057354d    2bc5
                         {disp8} lea       edx, dword ptr [ecx + -0x02]                  // 0x0057354f    8d51fe
                         {disp32} mov      cl, byte ptr [edi + 0x00000274]               // 0x00573552    8a8f74020000
                         sub               eax, 0x02                                     // 0x00573558    83e802
                         test              cl, cl                                        // 0x0057355b    84c9
                         {disp8} je        _jmp_addr_0x00573577                          // 0x0057355d    7418
                         {disp32} mov      ecx, dword ptr [edi + 0x00000240]             // 0x0057355f    8b8f40020000
                         mov               edi, 0xfffffffe                               // 0x00573565    bffeffffff
                         sub.s             edi, ecx                                      // 0x0057356a    2bf9
                         add.s             eax, edi                                      // 0x0057356c    03c7
                         mov               edi, 0xfffffffe                               // 0x0057356e    bffeffffff
                         sub.s             edi, ecx                                      // 0x00573573    2bf9
                         add.s             edx, edi                                      // 0x00573575    03d7
_jmp_addr_0x00573577:    {disp32} mov      ecx, dword ptr [esp + 0x00001038]             // 0x00573577    8b8c2438100000
                         cmp.s             ecx, eax                                      // 0x0057357e    3bc8
                         {disp8} jle       _jmp_addr_0x005735a2                          // 0x00573580    7e20
                         cmp.s             ecx, edx                                      // 0x00573582    3bca
                         {disp8} jge       _jmp_addr_0x005735a2                          // 0x00573584    7d1c
                         mov               dl, byte ptr [esi]                            // 0x00573586    8a16
                         {disp8} mov       cl, byte ptr [esi + 0x01]                     // 0x00573588    8a4e01
                         test              dl, dl                                        // 0x0057358b    84d2
                         sete              al                                            // 0x0057358d    0f94c0
                         cmp.s             al, cl                                        // 0x00573590    3ac1
                         mov               byte ptr [esi], al                            // 0x00573592    8806
                         {disp32} je       _jmp_addr_0x0057365a                          // 0x00573594    0f84c0000000
                         {disp8} mov       byte ptr [esi + 0x01], al                     // 0x0057359a    884601
                         {disp32} jmp      _jmp_addr_0x0057365a                          // 0x0057359d    e9b8000000
_jmp_addr_0x005735a2:    {disp8} mov       al, byte ptr [esi + 0x01]                     // 0x005735a2    8a4601
                         test              al, al                                        // 0x005735a5    84c0
                         sete              al                                            // 0x005735a7    0f94c0
                         {disp8} mov       byte ptr [esi + 0x01], al                     // 0x005735aa    884601
                         {disp32} jmp      _jmp_addr_0x0057365a                          // 0x005735ad    e9a8000000
_jmp_addr_0x005735b2:    {disp32} mov      edx, dword ptr [eax + 0x00000250]             // 0x005735b2    8b9050020000
                         movzx             di, byte ptr [data_bytes + 0x4bf478]          // 0x005735b8    660fb63d7854e800
                         {disp32} mov      ebp, dword ptr [ebx + 0x000000d8]             // 0x005735c0    8babd8000000
                         xor.s             ecx, ecx                                      // 0x005735c6    33c9
                         cmp.s             esi, edx                                      // 0x005735c8    3bf2
                         {disp8} jge       _jmp_addr_0x005735d7                          // 0x005735ca    7d0b
                         {disp32} mov      edx, dword ptr [eax + 0x0000026c]             // 0x005735cc    8b906c020000
                         mov               edx, dword ptr [edx + esi * 0x4]              // 0x005735d2    8b14b2
                         {disp8} jmp       _jmp_addr_0x005735d9                          // 0x005735d5    eb02
_jmp_addr_0x005735d7:    xor.s             edx, edx                                      // 0x005735d7    33d2
_jmp_addr_0x005735d9:    cmp               edx, 0x00570710                               // 0x005735d9    81fa10075700
                         {disp8} jne       _jmp_addr_0x005735fe                          // 0x005735df    751d
                         cmp               esi, dword ptr [eax + 0x00000250]             // 0x005735e1    3bb050020000
                         {disp8} jge       _jmp_addr_0x005735f4                          // 0x005735e7    7d0b
                         {disp32} mov      eax, dword ptr [eax + 0x00000264]             // 0x005735e9    8b8064020000
                         mov               eax, dword ptr [eax + esi * 0x4]              // 0x005735ef    8b04b0
                         {disp8} jmp       _jmp_addr_0x005735f6                          // 0x005735f2    eb02
_jmp_addr_0x005735f4:    xor.s             eax, eax                                      // 0x005735f4    33c0
_jmp_addr_0x005735f6:    xor.s             ecx, ecx                                      // 0x005735f6    33c9
                         {disp32} mov      cl, byte ptr [eax + 0x0000008d]               // 0x005735f8    8a888d000000
_jmp_addr_0x005735fe:    test              di, di                                        // 0x005735fe    6685ff
                         {disp8} jne       _jmp_addr_0x00573612                          // 0x00573601    750f
                         test              ecx, ecx                                      // 0x00573603    85c9
                         {disp8} je        _jmp_addr_0x00573612                          // 0x00573605    740b
                         push              0x0                                           // 0x00573607    6a00
                         mov.s             ecx, ebx                                      // 0x00573609    8bcb
                         call              _jmp_addr_0x00571f50                          // 0x0057360b    e840e9ffff
                         {disp8} jmp       _jmp_addr_0x00573654                          // 0x00573610    eb42
_jmp_addr_0x00573612:    xor.s             ecx, ecx                                      // 0x00573612    33c9
                         {disp32} mov      cx, word ptr [rdata_bytes + 0xf861e]          // 0x00573614    668b0d1e169a00
                         and.s             ecx, edi                                      // 0x0057361b    23cf
                         test              cx, cx                                        // 0x0057361d    6685c9
                         {disp8} jne       _jmp_addr_0x0057362b                          // 0x00573620    7509
                         push              0x0                                           // 0x00573622    6a00
                         mov.s             ecx, ebx                                      // 0x00573624    8bcb
                         call              _jmp_addr_0x00571f50                          // 0x00573626    e825e9ffff
_jmp_addr_0x0057362b:    xor.s             edx, edx                                      // 0x0057362b    33d2
                         {disp32} mov      dx, word ptr [rdata_bytes + 0xf861c]          // 0x0057362d    668b151c169a00
                         push              esi                                           // 0x00573634    56
                         and.s             edx, edi                                      // 0x00573635    23d7
                         test              dx, dx                                        // 0x00573637    6685d2
                         {disp8} je        _jmp_addr_0x0057364c                          // 0x0057363a    7410
                         push              ebp                                           // 0x0057363c    55
                         mov.s             ecx, ebx                                      // 0x0057363d    8bcb
                         call              _jmp_addr_0x00571ff0                          // 0x0057363f    e8ace9ffff
                         {disp32} mov      dword ptr [ebx + 0x000000d8], ebp             // 0x00573644    89abd8000000
                         {disp8} jmp       _jmp_addr_0x0057365a                          // 0x0057364a    eb0e
_jmp_addr_0x0057364c:    push              esi                                           // 0x0057364c    56
                         mov.s             ecx, ebx                                      // 0x0057364d    8bcb
                         call              _jmp_addr_0x00571ff0                          // 0x0057364f    e89ce9ffff
_jmp_addr_0x00573654:    {disp32} mov      dword ptr [ebx + 0x000000d8], esi             // 0x00573654    89b3d8000000
_jmp_addr_0x0057365a:    mov.s             ecx, ebx                                      // 0x0057365a    8bcb
                         call              _jmp_addr_0x00572090                          // 0x0057365c    e82feaffff
_jmp_addr_0x00573661:    {disp32} mov      eax, dword ptr [ebx + 0x000000b0]             // 0x00573661    8b83b0000000
                         pop               edi                                           // 0x00573667    5f
                         pop               esi                                           // 0x00573668    5e
                         pop               ebp                                           // 0x00573669    5d
                         {disp32} mov      dword ptr [eax + 0x00000248], 0xffffffff      // 0x0057366a    c78048020000ffffffff
                         pop               ebx                                           // 0x00573674    5b
                         add               esp, 0x00001018                               // 0x00573675    81c418100000
                         ret               0x0014                                        // 0x0057367b    c21400
                         cmp               dword ptr [esp + 0x00001038], 0x0d            // 0x0057367e    83bc24381000000d
                         {disp32} jne      _jmp_addr_0x005737f4                          // 0x00573686    0f8568010000
                         push              -0x1                                          // 0x0057368c    6aff
                         push              0x1                                           // 0x0057368e    6a01
                         mov.s             ecx, ebx                                      // 0x00573690    8bcb
                         call              _jmp_addr_0x00573890                          // 0x00573692    e8f9010000
                         {disp8} jmp       _jmp_addr_0x005736c4                          // 0x00573697    eb2b
                         cmp               dword ptr [esp + 0x00001038], 0x01            // 0x00573699    83bc243810000001
                         {disp32} jne      _jmp_addr_0x005737f4                          // 0x005736a1    0f854d010000
                         {disp8} mov       eax, dword ptr [ebx + 0x1c]                   // 0x005736a7    8b431c
                         {disp32} mov      cl, byte ptr [eax + 0x00000229]               // 0x005736aa    8a8829020000
                         test              cl, cl                                        // 0x005736b0    84c9
                         {disp8} jne       _jmp_addr_0x005736bd                          // 0x005736b2    7509
                         push              0x1                                           // 0x005736b4    6a01
                         mov.s             ecx, ebx                                      // 0x005736b6    8bcb
                         call              _jmp_addr_0x005708d0                          // 0x005736b8    e813d2ffff
_jmp_addr_0x005736bd:    {disp32} mov      byte ptr [ebx + 0x000000dd], 0x00             // 0x005736bd    c683dd00000000
_jmp_addr_0x005736c4:    pop               edi                                           // 0x005736c4    5f
                         pop               esi                                           // 0x005736c5    5e
                         xor.s             eax, eax                                      // 0x005736c6    33c0
                         pop               ebp                                           // 0x005736c8    5d
                         {disp32} mov      dword ptr [data_bytes + 0x4bf5e4], eax        // 0x005736c9    a3e455e800
                         {disp32} mov      dword ptr [data_bytes + 0x4bf5e0], eax        // 0x005736ce    a3e055e800
                         {disp32} mov      dword ptr [data_bytes + 0x4bf474], eax        // 0x005736d3    a37454e800
                         pop               ebx                                           // 0x005736d8    5b
                         add               esp, 0x00001018                               // 0x005736d9    81c418100000
                         ret               0x0014                                        // 0x005736df    c21400
                         mov               edx, dword ptr [ebx]                          // 0x005736e2    8b13
                         mov.s             ecx, ebx                                      // 0x005736e4    8bcb
                         call              dword ptr [edx + 0x20]                        // 0x005736e6    ff5220
                         pop               edi                                           // 0x005736e9    5f
                         pop               esi                                           // 0x005736ea    5e
                         pop               ebp                                           // 0x005736eb    5d
                         pop               ebx                                           // 0x005736ec    5b
                         add               esp, 0x00001018                               // 0x005736ed    81c418100000
                         ret               0x0014                                        // 0x005736f3    c21400
                         {disp32} mov      eax, dword ptr [ebx + 0x000000ac]             // 0x005736f6    8b83ac000000
                         {disp8} fild      dword ptr [eax + 0x20]                        // 0x005736fc    db4020
                         add               eax, 0x24                                     // 0x005736ff    83c024
                         push              eax                                           // 0x00573702    50
                         {disp8} fstp      dword ptr [esp + 0x20]                        // 0x00573703    d95c2420
                         call              _wcslen                                       // 0x00573707    e8562d2500
                         {disp8} mov       esi, dword ptr [esp + 0x20]                   // 0x0057370c    8b742420
                         {disp32} mov      edx, dword ptr [ebx + 0x000000ac]             // 0x00573710    8b93ac000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x286d2c]        // 0x00573716    8b0d2ccdc400
                         add               esp, 0x04                                     // 0x0057371c    83c404
                         push              esi                                           // 0x0057371f    56
                         add               edx, 0x24                                     // 0x00573720    83c224
                         push              eax                                           // 0x00573723    50
                         push              edx                                           // 0x00573724    52
                         call              @GetStringWidth__13GatheringTextFPwif@20      // 0x00573725    e806da2b00
                         {disp32} fadd     dword ptr [rdata_bytes + 0x1e658]             // 0x0057372a    d80558768c00
                         call              _jmp_addr_0x007a1400                          // 0x00573730    e8cbdc2200
                         mov.s             esi, eax                                      // 0x00573735    8bf0
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf058]        // 0x00573737    a15850e800
                         and               eax, 0x0000ffff                               // 0x0057373c    25ffff0000
                         shr               eax, 1                                        // 0x00573741    d1e8
                         push              eax                                           // 0x00573743    50
                         call              _jmp_addr_0x00411fc0                          // 0x00573744    e877e8e9ff
                         push              0x5a                                          // 0x00573749    6a5a
                         mov.s             edi, eax                                      // 0x0057374b    8bf8
                         call              _jmp_addr_0x00411fc0                          // 0x0057374d    e86ee8e9ff
                         add               esp, 0x08                                     // 0x00573752    83c408
                         cmp.s             esi, eax                                      // 0x00573755    3bf0
                         {disp8} jle       _jmp_addr_0x00573761                          // 0x00573757    7e08
                         cmp.s             esi, edi                                      // 0x00573759    3bf7
                         {disp8} jl        _jmp_addr_0x00573763                          // 0x0057375b    7c06
                         mov.s             esi, edi                                      // 0x0057375d    8bf7
                         {disp8} jmp       _jmp_addr_0x00573763                          // 0x0057375f    eb02
_jmp_addr_0x00573761:    mov.s             esi, eax                                      // 0x00573761    8bf0
_jmp_addr_0x00573763:    {disp32} mov      eax, dword ptr [ebx + 0x000000ac]             // 0x00573763    8b83ac000000
                         {disp8} mov       ecx, dword ptr [eax + 0x10]                   // 0x00573769    8b4810
                         sub.s             ecx, esi                                      // 0x0057376c    2bce
                         {disp8} mov       dword ptr [eax + 0x08], ecx                   // 0x0057376e    894808
                         {disp32} mov      eax, dword ptr [ebx + 0x000000c0]             // 0x00573771    8b83c0000000
                         {disp8} mov       edx, dword ptr [eax + 0x10]                   // 0x00573777    8b5010
                         sub               dword ptr [eax + 0x08], edx                   // 0x0057377a    295008
                         {disp32} mov      eax, dword ptr [ebx + 0x000000ac]             // 0x0057377d    8b83ac000000
                         {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x00573783    8b5008
                         {disp32} mov      ecx, dword ptr [ebx + 0x000000c0]             // 0x00573786    8b8bc0000000
                         {disp8} mov       dword ptr [ecx + 0x10], edx                   // 0x0057378c    895110
                         {disp32} mov      eax, dword ptr [ebx + 0x000000c0]             // 0x0057378f    8b83c0000000
                         {disp8} mov       ecx, dword ptr [eax + 0x10]                   // 0x00573795    8b4810
                         add               dword ptr [eax + 0x08], ecx                   // 0x00573798    014808
                         {disp8} mov       edx, dword ptr [ebx + 0x04]                   // 0x0057379b    8b5304
                         {disp32} mov      dword ptr [edx + 0x000000c4], 0x3f666666      // 0x0057379e    c782c40000006666663f
                         movzx             ax, byte ptr [data_bytes + 0x4bf478]          // 0x005737a8    660fb6057854e800
                         cmp               ax, word ptr [rdata_bytes + 0xf861c]          // 0x005737b0    663b051c169a00
                         {disp8} jne       _jmp_addr_0x005737dd                          // 0x005737b7    7524
                         {disp32} mov      ecx, dword ptr [ebx + 0x000000c8]             // 0x005737b9    8b8bc8000000
                         {disp32} mov      dword ptr [ecx + 0x00000248], 0x00000008      // 0x005737bf    c7814802000008000000
                         mov.s             ecx, ebx                                      // 0x005737c9    8bcb
                         call              _jmp_addr_0x005725b0                          // 0x005737cb    e8e0edffff
                         pop               edi                                           // 0x005737d0    5f
                         pop               esi                                           // 0x005737d1    5e
                         pop               ebp                                           // 0x005737d2    5d
                         pop               ebx                                           // 0x005737d3    5b
                         add               esp, 0x00001018                               // 0x005737d4    81c418100000
                         ret               0x0014                                        // 0x005737da    c21400
_jmp_addr_0x005737dd:    {disp32} mov      edx, dword ptr [ebx + 0x000000c8]             // 0x005737dd    8b93c8000000
                         mov.s             ecx, ebx                                      // 0x005737e3    8bcb
                         {disp32} mov      dword ptr [edx + 0x00000248], 0x00000005      // 0x005737e5    c7824802000005000000
                         call              _jmp_addr_0x005725b0                          // 0x005737ef    e8bcedffff
_jmp_addr_0x005737f4:    pop               edi                                           // 0x005737f4    5f
                         pop               esi                                           // 0x005737f5    5e
                         pop               ebp                                           // 0x005737f6    5d
                         pop               ebx                                           // 0x005737f7    5b
                         add               esp, 0x00001018                               // 0x005737f8    81c418100000
                         ret               0x0014                                        // 0x005737fe    c21400

// Snippet: db, [0x00573801, 0x00573804)
.byte 0x8d, 0x49, 0x00            // 0x00573801

// Snippet: jmptbl, [0x00573804, 0x00573838)
.byte 0x35, 0x2f, 0x57, 0x00      // 0x00573804
.byte 0x99, 0x36, 0x57, 0x00      // 0x00573808
.byte 0xf4, 0x37, 0x57, 0x00      // 0x0057380c
.byte 0x6d, 0x2d, 0x57, 0x00      // 0x00573810
.byte 0xf4, 0x37, 0x57, 0x00      // 0x00573814
.byte 0xe2, 0x36, 0x57, 0x00      // 0x00573818
.byte 0xf4, 0x37, 0x57, 0x00      // 0x0057381c
.byte 0x7e, 0x36, 0x57, 0x00      // 0x00573820
.byte 0x93, 0x2e, 0x57, 0x00      // 0x00573824
.byte 0x57, 0x2e, 0x57, 0x00      // 0x00573828
.byte 0xf4, 0x37, 0x57, 0x00      // 0x0057382c
.byte 0xf4, 0x37, 0x57, 0x00      // 0x00573830
.byte 0xf6, 0x36, 0x57, 0x00      // 0x00573834

// Snippet: db, [0x00573838, 0x00573840)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00573838
.byte 0x90, 0x90, 0x90, 0x90      // 0x0057383c

