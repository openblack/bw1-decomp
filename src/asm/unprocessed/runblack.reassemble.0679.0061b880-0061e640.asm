.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern _GetSmallTextSize__Fv
.extern _jmp_addr_0x00407a20
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @AutoScroll__9SetupListFb@9
.extern @__ct__9SetupListFiiiii@28
.extern ?UpdateHeights@SetupList@@QAEXXZ
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__14SetupTabButtonFiiiiiPwiii@35
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x005990a0
.extern _jmp_addr_0x005990f0
.extern _jmp_addr_0x005de490
.extern _jmp_addr_0x0061a660
.extern _jmp_addr_0x0061a9f0
.extern _jmp_addr_0x0061acf0
.extern _jmp_addr_0x0061b4d0
.extern _jmp_addr_0x0061e640
.extern _jmp_addr_0x00621420
.extern _jmp_addr_0x006218e0
.extern _jmp_addr_0x00621aa0
.extern _jmp_addr_0x00621b70
.extern _jmp_addr_0x00621db0
.extern _jmp_addr_0x00622040
.extern _jmp_addr_0x006220f0
.extern _jmp_addr_0x00623820
.extern _jmp_addr_0x00623980
.extern _jmp_addr_0x00625180
.extern _jmp_addr_0x00626020
.extern _jmp_addr_0x00626040
.extern ?IsInternetLobby@MPFEConnectionStatus@@QAE_NXZ
.extern _jmp_addr_0x00632730
.extern _jmp_addr_0x00632740
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _jmp_addr_0x007bd030
.extern _wcscat
.extern _wcscpy
.extern _wcslen
.extern _swprintf
.extern __unlink
.extern __chkstk
.extern _wcscmp
.extern ___nw__FUl
.extern @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4
.extern @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern _CHAR2WCHAR__FPc
.extern @GetStringWidth__13GatheringTextFPwif@20
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ
.extern _jmp_addr_0x00839010
.extern _jmp_addr_0x00870920
.extern _jmp_addr_0x00870990

.globl _jmp_addr_0x0061b910
.globl _jmp_addr_0x0061bc40
.globl _jmp_addr_0x0061cc80
.globl _jmp_addr_0x0061ccb0
.globl _jmp_addr_0x0061d370
.globl _jmp_addr_0x0061d680
.globl _jmp_addr_0x0061d780
.globl _jmp_addr_0x0061d930
.globl _jmp_addr_0x0061dc70
.globl ?Init@ChannelBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@ChannelBox@@UAEXXZ
.globl ?InitControls@ChannelBox@@UAEXXZ

start_0x0061b880_0x0061e640:
// Snippet: asm, [0x0061b880, 0x0061e60e)
_jmp_addr_0x0061b880:    push               ebx                                                  // 0x0061b880    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                          // 0x0061b881    8b5c2414
                         cmp                ebx, -0x01                                           // 0x0061b885    83fbff
                         {disp8} je         _jmp_addr_0x0061b907                                 // 0x0061b888    747d
                         {disp8} fild       dword ptr [esp + 0x10]                               // 0x0061b88a    db442410
                         push               ebp                                                  // 0x0061b88e    55
                         {disp8} fild       dword ptr [esp + 0x10]                               // 0x0061b88f    db442410
                         push               esi                                                  // 0x0061b893    56
                         {disp8} mov        si, word ptr [esp + 0x20]                            // 0x0061b894    668b742420
                         push               edi                                                  // 0x0061b899    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                          // 0x0061b89a    8b7c2414
_jmp_addr_0x0061b89e:    {disp32} fld       dword ptr [__real@40c90fdb]                          // 0x0061b89e    d90510b28a00
                         {disp8} fild       dword ptr [esp + 0x20]                               // 0x0061b8a4    db442420
_jmp_addr_0x0061b8a8:    fld                st(1)                                                // 0x0061b8a8    d9c1
                         fcos                                                                    // 0x0061b8aa    d9ff
                         fmul               st, st(1)                                            // 0x0061b8ac    d8c9
                         fadd               st, st(4)                                            // 0x0061b8ae    d8c4
                         {disp32} fadd      dword ptr [_rdata_float0p5]                          // 0x0061b8b0    d805b4a38a00
                         call               _jmp_addr_0x007a1400                                 // 0x0061b8b6    e8455b1800
                         fld                st(1)                                                // 0x0061b8bb    d9c1
                         fsin                                                                    // 0x0061b8bd    d9fe
                         mov.s              ebp, eax                                             // 0x0061b8bf    8be8
                         shl                ebp, 8                                               // 0x0061b8c1    c1e508
                         fmul               st, st(1)                                            // 0x0061b8c4    d8c9
                         fadd               st, st(3)                                            // 0x0061b8c6    d8c3
                         {disp32} fadd      dword ptr [_rdata_float0p5]                          // 0x0061b8c8    d805b4a38a00
                         call               _jmp_addr_0x007a1400                                 // 0x0061b8ce    e82d5b1800
                         fxch               st(1)                                                // 0x0061b8d3    d9c9
                         {disp32} fsub      dword ptr [rdata_bytes + 0x35d04]                    // 0x0061b8d5    d82504ed8d00
                         add.s              ebp, eax                                             // 0x0061b8db    03e8
                         fxch               st(1)                                                // 0x0061b8dd    d9c9
                         mov                word ptr [edi + ebp * 0x2], si                       // 0x0061b8df    6689346f
                         fld                st(1)                                                // 0x0061b8e3    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0061b8e5    d81d98a38a00
                         fnstsw             ax                                                   // 0x0061b8eb    dfe0
                         test               ah, 0x41                                             // 0x0061b8ed    f6c441
                         {disp8} je         _jmp_addr_0x0061b8a8                                 // 0x0061b8f0    74b6
                         dec                ebx                                                  // 0x0061b8f2    4b
                         fstp               st(0)                                                // 0x0061b8f3    ddd8
                         cmp                ebx, -0x01                                           // 0x0061b8f5    83fbff
                         fstp               st(0)                                                // 0x0061b8f8    ddd8
                         {disp8} mov        dword ptr [esp + 0x20], ebx                          // 0x0061b8fa    895c2420
                         {disp8} jne        _jmp_addr_0x0061b89e                                 // 0x0061b8fe    759e
                         pop                edi                                                  // 0x0061b900    5f
                         fstp               st(0)                                                // 0x0061b901    ddd8
                         pop                esi                                                  // 0x0061b903    5e
                         fstp               st(0)                                                // 0x0061b904    ddd8
                         pop                ebp                                                  // 0x0061b906    5d
_jmp_addr_0x0061b907:    pop                ebx                                                  // 0x0061b907    5b
                         ret                                                                     // 0x0061b908    c3
                         nop                                                                     // 0x0061b909    90
                         nop                                                                     // 0x0061b90a    90
                         nop                                                                     // 0x0061b90b    90
                         nop                                                                     // 0x0061b90c    90
                         nop                                                                     // 0x0061b90d    90
                         nop                                                                     // 0x0061b90e    90
                         nop                                                                     // 0x0061b90f    90
_jmp_addr_0x0061b910:    sub                esp, 0x14                                            // 0x0061b910    83ec14
                         push               ebp                                                  // 0x0061b913    55
                         push               esi                                                  // 0x0061b914    56
                         push               edi                                                  // 0x0061b915    57
                         {disp8} mov        edi, dword ptr [esp + 0x24]                          // 0x0061b916    8b7c2424
                         test               edi, edi                                             // 0x0061b91a    85ff
                         mov.s              ebp, ecx                                             // 0x0061b91c    8be9
                         {disp8} mov        dword ptr [esp + 0x18], ebp                          // 0x0061b91e    896c2418
                         {disp32} je        _jmp_addr_0x0061bc03                                 // 0x0061b922    0f84db020000
                         cmp                byte ptr [edi], 0x00                                 // 0x0061b928    803f00
                         {disp32} je        _jmp_addr_0x0061bc03                                 // 0x0061b92b    0f84d2020000
                         {disp8} mov        eax, dword ptr [edi + 0x18]                          // 0x0061b931    8b4718
                         mov                ecx, dword ptr [eax]                                 // 0x0061b934    8b08
                         {disp8} lea        esi, dword ptr [ecx + eax * 0x1 + 0x09]              // 0x0061b936    8d740109
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x0061b93a    8944241c
                         mov.s              edx, ecx                                             // 0x0061b93e    8bd1
                         {disp8} mov        ecx, dword ptr [edx + eax * 0x1 + 0x05]              // 0x0061b940    8b4c0205
                         mov                eax, 0x55555556                                      // 0x0061b944    b856555555
                         imul               ecx                                                  // 0x0061b949    f7e9
                         mov.s              eax, edx                                             // 0x0061b94b    8bc2
                         shr                eax, 0x1f                                            // 0x0061b94d    c1e81f
                         add.s              edx, eax                                             // 0x0061b950    03d0
                         {disp8} mov        dword ptr [esp + 0x24], edx                          // 0x0061b952    89542424
                         push               ebx                                                  // 0x0061b956    53
                         {disp8} fild       dword ptr [esp + 0x28]                               // 0x0061b957    db442428
                         fsqrt                                                                   // 0x0061b95b    d9fa
                         call               _jmp_addr_0x007a1400                                 // 0x0061b95d    e89e5a1800
                         {disp32} lea       ecx, dword ptr [edi + 0x00000438]                    // 0x0061b962    8d8f38040000
                         mov.s              ebx, eax                                             // 0x0061b968    8bd8
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x0061b96a    894c2418
                         {disp32} mov       ecx, dword ptr [ebp + 0x000009a4]                    // 0x0061b96e    8b8da4090000
                         add                edi, 0x00000430                                      // 0x0061b974    81c730040000
                         push               0x1                                                  // 0x0061b97a    6a01
                         {disp8} mov        dword ptr [esp + 0x14], ebx                          // 0x0061b97c    895c2414
                         {disp32} mov       dword ptr [ebp + 0x00000a38], ebx                    // 0x0061b980    899d380a0000
                         {disp8} mov        dword ptr [esp + 0x18], edi                          // 0x0061b986    897c2418
                         call               _jmp_addr_0x00839010                                 // 0x0061b98a    e881d62100
                         mov.s              ecx, eax                                             // 0x0061b98f    8bc8
                         call               _jmp_addr_0x00870920                                 // 0x0061b991    e88a4f2500
                         mov.s              ebp, eax                                             // 0x0061b996    8be8
                         xor.s              eax, eax                                             // 0x0061b998    33c0
                         test               ebx, ebx                                             // 0x0061b99a    85db
                         mov                ecx, 0x00008000                                      // 0x0061b99c    b900800000
                         mov.s              edi, ebp                                             // 0x0061b9a1    8bfd
                         rep stosd                                                               // 0x0061b9a3    f3ab
                         {disp8} jle        _jmp_addr_0x0061ba23                                 // 0x0061b9a5    7e7c
                         xor.s              edi, edi                                             // 0x0061b9a7    33ff
                         {disp8} mov        dword ptr [esp + 0x28], ebx                          // 0x0061b9a9    895c2428
_jmp_addr_0x0061b9ad:    xor.s              ecx, ecx                                             // 0x0061b9ad    33c9
_jmp_addr_0x0061b9af:    mov                dl, byte ptr [eax + esi * 0x1]                       // 0x0061b9af    8a1430
                         test               dl, dl                                               // 0x0061b9b2    84d2
                         {disp8} jne        _jmp_addr_0x0061b9ce                                 // 0x0061b9b4    7518
                         cmp                byte ptr [eax + esi * 0x1 + 0x01], dl                // 0x0061b9b6    38543001
                         {disp8} jne        _jmp_addr_0x0061b9ce                                 // 0x0061b9ba    7512
                         cmp                byte ptr [eax + esi * 0x1 + 0x02], dl                // 0x0061b9bc    38543002
                         {disp8} jne        _jmp_addr_0x0061b9ce                                 // 0x0061b9c0    750c
                         lea                edx, dword ptr [edi + ecx * 0x1]                     // 0x0061b9c2    8d140f
                         {disp8} mov        word ptr [ebp + edx * 0x2 + 0x00], 0x0000            // 0x0061b9c5    66c74455000000
                         {disp8} jmp        _jmp_addr_0x0061ba0a                                 // 0x0061b9cc    eb3c
_jmp_addr_0x0061b9ce:    xor.s              ebx, ebx                                             // 0x0061b9ce    33db
                         {disp8} mov        bl, byte ptr [eax + esi * 0x1 + 0x02]                // 0x0061b9d0    8a5c3002
                         movsx              dx, dl                                               // 0x0061b9d4    660fbed2
                         sar                bl, 4                                                // 0x0061b9d8    c0fb04
                         movsx              bx, bl                                               // 0x0061b9db    660fbedb
                         and                edx, 0x00000ff0                                      // 0x0061b9df    81e2f00f0000
                         add                edx, 0x00000f00                                      // 0x0061b9e5    81c2000f0000
                         shl                edx, 4                                               // 0x0061b9eb    c1e204
                         add.s              edx, ebx                                             // 0x0061b9ee    03d3
                         movsx              bx, byte ptr [eax + esi * 0x1 + 0x01]                // 0x0061b9f0    660fbe5c3001
                         and                ebx, 0x0000fff0                                      // 0x0061b9f6    81e3f0ff0000
                         add.s              edx, ebx                                             // 0x0061b9fc    03d3
                         lea                ebx, dword ptr [edi + ecx * 0x1]                     // 0x0061b9fe    8d1c0f
                         {disp8} mov        word ptr [ebp + ebx * 0x2 + 0x00], dx                // 0x0061ba01    6689545d00
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                          // 0x0061ba06    8b5c2410
_jmp_addr_0x0061ba0a:    add                eax, 0x03                                            // 0x0061ba0a    83c003
                         inc                ecx                                                  // 0x0061ba0d    41
                         cmp.s              ecx, ebx                                             // 0x0061ba0e    3bcb
                         {disp8} jl         _jmp_addr_0x0061b9af                                 // 0x0061ba10    7c9d
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x0061ba12    8b4c2428
                         add                edi, 0x00000100                                      // 0x0061ba16    81c700010000
                         dec                ecx                                                  // 0x0061ba1c    49
                         {disp8} mov        dword ptr [esp + 0x28], ecx                          // 0x0061ba1d    894c2428
                         {disp8} jne        _jmp_addr_0x0061b9ad                                 // 0x0061ba21    758a
_jmp_addr_0x0061ba23:    xor.s              edi, edi                                             // 0x0061ba23    33ff
                         test               ebx, ebx                                             // 0x0061ba25    85db
                         {disp32} jle       _jmp_addr_0x0061bb15                                 // 0x0061ba27    0f8ee8000000
_jmp_addr_0x0061ba2d:    xor.s              esi, esi                                             // 0x0061ba2d    33f6
_jmp_addr_0x0061ba2f:    {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0061ba2f    8b442414
                         push               edi                                                  // 0x0061ba33    57
                         push               esi                                                  // 0x0061ba34    56
                         push               eax                                                  // 0x0061ba35    50
                         call               _jmp_addr_0x0061bc10                                 // 0x0061ba36    e8d5010000
                         add                esp, 0x0c                                            // 0x0061ba3b    83c40c
                         test               eax, eax                                             // 0x0061ba3e    85c0
                         {disp8} je         _jmp_addr_0x0061ba99                                 // 0x0061ba40    7457
                         {disp8} mov        al, byte ptr [eax + 0x08]                            // 0x0061ba42    8a4008
                         cmp                al, -0x01                                            // 0x0061ba45    3cff
                         {disp8} jne        _jmp_addr_0x0061ba50                                 // 0x0061ba47    7507
                         mov                eax, 0x00000007                                      // 0x0061ba49    b807000000
                         {disp8} jmp        _jmp_addr_0x0061ba53                                 // 0x0061ba4e    eb03
_jmp_addr_0x0061ba50:    movsx              eax, al                                              // 0x0061ba50    0fbec0
_jmp_addr_0x0061ba53:    {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00bff0b8]              // 0x0061ba53    8b0485b8f0bf00
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x0061ba5a    89442428
                         movzx              cx, byte ptr [esp + 0x2a]                            // 0x0061ba5e    660fb64c242a
                         xor.s              edx, edx                                             // 0x0061ba64    33d2
                         mov.s              dl, al                                               // 0x0061ba66    8ad0
                         shr                dl, 4                                                // 0x0061ba68    c0ea04
                         movzx              dx, dl                                               // 0x0061ba6b    660fb6d2
                         movzx              ax, ah                                               // 0x0061ba6f    660fb6c4
                         and                ecx, 0x0000fff0                                      // 0x0061ba73    81e1f0ff0000
                         or                 ecx, 0xff00                                          // 0x0061ba79    81c900ff0000
                         shl                ecx, 4                                               // 0x0061ba7f    c1e104
                         or.s               ecx, edx                                             // 0x0061ba82    0bca
                         and                eax, 0x0000fff0                                      // 0x0061ba84    25f0ff0000
                         or.s               ecx, eax                                             // 0x0061ba89    0bc8
                         push               ecx                                                  // 0x0061ba8b    51
                         push               0x1                                                  // 0x0061ba8c    6a01
                         push               edi                                                  // 0x0061ba8e    57
                         push               esi                                                  // 0x0061ba8f    56
                         push               ebp                                                  // 0x0061ba90    55
                         call               _jmp_addr_0x0061b880                                 // 0x0061ba91    e8eafdffff
                         add                esp, 0x14                                            // 0x0061ba96    83c414
_jmp_addr_0x0061ba99:    {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x0061ba99    8b4c2418
                         push               edi                                                  // 0x0061ba9d    57
                         push               esi                                                  // 0x0061ba9e    56
                         push               ecx                                                  // 0x0061ba9f    51
                         call               _jmp_addr_0x0061bc10                                 // 0x0061baa0    e86b010000
                         add                esp, 0x0c                                            // 0x0061baa5    83c40c
                         test               eax, eax                                             // 0x0061baa8    85c0
                         {disp8} je         _jmp_addr_0x0061bb03                                 // 0x0061baaa    7457
                         {disp8} mov        al, byte ptr [eax + 0x08]                            // 0x0061baac    8a4008
                         cmp                al, -0x01                                            // 0x0061baaf    3cff
                         {disp8} jne        _jmp_addr_0x0061baba                                 // 0x0061bab1    7507
                         mov                eax, 0x00000007                                      // 0x0061bab3    b807000000
                         {disp8} jmp        _jmp_addr_0x0061babd                                 // 0x0061bab8    eb03
_jmp_addr_0x0061baba:    movsx              eax, al                                              // 0x0061baba    0fbec0
_jmp_addr_0x0061babd:    {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00bff0b8]              // 0x0061babd    8b0485b8f0bf00
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x0061bac4    89442428
                         movzx              dx, byte ptr [esp + 0x2a]                            // 0x0061bac8    660fb654242a
                         xor.s              ecx, ecx                                             // 0x0061bace    33c9
                         mov.s              cl, al                                               // 0x0061bad0    8ac8
                         shr                cl, 4                                                // 0x0061bad2    c0e904
                         movzx              cx, cl                                               // 0x0061bad5    660fb6c9
                         movzx              ax, ah                                               // 0x0061bad9    660fb6c4
                         and                edx, 0x0000fff0                                      // 0x0061badd    81e2f0ff0000
                         or                 edx, 0xff00                                          // 0x0061bae3    81ca00ff0000
                         shl                edx, 4                                               // 0x0061bae9    c1e204
                         or.s               edx, ecx                                             // 0x0061baec    0bd1
                         and                eax, 0x0000fff0                                      // 0x0061baee    25f0ff0000
                         or.s               edx, eax                                             // 0x0061baf3    0bd0
                         push               edx                                                  // 0x0061baf5    52
                         push               0x2                                                  // 0x0061baf6    6a02
                         push               edi                                                  // 0x0061baf8    57
                         push               esi                                                  // 0x0061baf9    56
                         push               ebp                                                  // 0x0061bafa    55
                         call               _jmp_addr_0x0061b880                                 // 0x0061bafb    e880fdffff
                         add                esp, 0x14                                            // 0x0061bb00    83c414
_jmp_addr_0x0061bb03:    inc                esi                                                  // 0x0061bb03    46
                         cmp.s              esi, ebx                                             // 0x0061bb04    3bf3
                         {disp32} jl        _jmp_addr_0x0061ba2f                                 // 0x0061bb06    0f8c23ffffff
                         inc                edi                                                  // 0x0061bb0c    47
                         cmp.s              edi, ebx                                             // 0x0061bb0d    3bfb
                         {disp32} jl        _jmp_addr_0x0061ba2d                                 // 0x0061bb0f    0f8c18ffffff
_jmp_addr_0x0061bb15:    {disp8} mov        esi, dword ptr [esp + 0x1c]                          // 0x0061bb15    8b74241c
                         {disp32} mov       ecx, dword ptr [esi + 0x000009a4]                    // 0x0061bb19    8b8ea4090000
                         call               _jmp_addr_0x00839010                                 // 0x0061bb1f    e8ecd42100
                         mov.s              ecx, eax                                             // 0x0061bb24    8bc8
                         call               _jmp_addr_0x00870990                                 // 0x0061bb26    e8654e2500
                         {disp32} mov       ecx, dword ptr [esi + 0x000009a4]                    // 0x0061bb2b    8b8ea4090000
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                          // 0x0061bb31    8b4110
                         and                eax, 0x3f                                            // 0x0061bb34    83e03f
                         cmp                eax, 0x08                                            // 0x0061bb37    83f808
                         pop                ebx                                                  // 0x0061bb3a    5b
                         {disp8} je         _jmp_addr_0x0061bb42                                 // 0x0061bb3b    7405
                         cmp                eax, 0x04                                            // 0x0061bb3d    83f804
                         {disp8} jne        _jmp_addr_0x0061bb4c                                 // 0x0061bb40    750a
_jmp_addr_0x0061bb42:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001             // 0x0061bb42    c7813801000001000000
_jmp_addr_0x0061bb4c:    {disp32} mov       eax, dword ptr [esi + 0x00000a34]                    // 0x0061bb4c    8b86340a0000
                         dec                eax                                                  // 0x0061bb52    48
                         {disp32} je        _jmp_addr_0x0061bbda                                 // 0x0061bb53    0f8481000000
                         dec                eax                                                  // 0x0061bb59    48
                         {disp8} je         _jmp_addr_0x0061bbae                                 // 0x0061bb5a    7452
                         dec                eax                                                  // 0x0061bb5c    48
                         {disp8} je         _jmp_addr_0x0061bb85                                 // 0x0061bb5d    7426
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x0061bb5f    8b4c241c
                         add                ecx, 0x4                                             // 0x0061bb63    83c104
                         push               ecx                                                  // 0x0061bb66    51
                         call               _CHAR2WCHAR__FPc                                     // 0x0061bb67    e834452100
                         push               eax                                                  // 0x0061bb6c    50
                         add                esi, 0x000001a4                                      // 0x0061bb6d    81c6a4010000
                         push               esi                                                  // 0x0061bb73    56
                         call               _wcscpy                                              // 0x0061bb74    e83da41a00
                         add                esp, 0x0c                                            // 0x0061bb79    83c40c
                         pop                edi                                                  // 0x0061bb7c    5f
                         pop                esi                                                  // 0x0061bb7d    5e
                         pop                ebp                                                  // 0x0061bb7e    5d
                         add                esp, 0x14                                            // 0x0061bb7f    83c414
                         ret                0x0004                                               // 0x0061bb82    c20400
_jmp_addr_0x0061bb85:    cmp                dword ptr [data_bytes + 0x351cac], 0x0000107a        // 0x0061bb85    813dac7cd1007a100000
                         {disp8} ja         _jmp_addr_0x0061bb9c                                 // 0x0061bb8f    770b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061bb91    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0061bb96    8b4008
                         push               eax                                                  // 0x0061bb99    50
                         {disp8} jmp        _jmp_addr_0x0061bbf4                                 // 0x0061bb9a    eb58
_jmp_addr_0x0061bb9c:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061bb9c    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000c5b8]                    // 0x0061bba2    8d82b8c50000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0061bba8    8b4008
                         push               eax                                                  // 0x0061bbab    50
                         {disp8} jmp        _jmp_addr_0x0061bbf4                                 // 0x0061bbac    eb46
_jmp_addr_0x0061bbae:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001079        // 0x0061bbae    813dac7cd10079100000
                         {disp8} ja         _jmp_addr_0x0061bbc5                                 // 0x0061bbb8    770b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061bbba    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x0061bbbf    8b5008
                         push               edx                                                  // 0x0061bbc2    52
                         {disp8} jmp        _jmp_addr_0x0061bbf4                                 // 0x0061bbc3    eb2f
_jmp_addr_0x0061bbc5:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061bbc5    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000c5b4]                    // 0x0061bbcb    8b91b4c50000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000c5ac]                    // 0x0061bbd1    8d81acc50000
                         push               edx                                                  // 0x0061bbd7    52
                         {disp8} jmp        _jmp_addr_0x0061bbf4                                 // 0x0061bbd8    eb1a
_jmp_addr_0x0061bbda:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001071        // 0x0061bbda    813dac7cd10071100000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061bbe4    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0061bbf0                                 // 0x0061bbe9    7605
                         add                eax, 0x0000c54c                                      // 0x0061bbeb    054cc50000
_jmp_addr_0x0061bbf0:    {disp8} mov        ecx, dword ptr [eax + 0x08]                          // 0x0061bbf0    8b4808
                         push               ecx                                                  // 0x0061bbf3    51
_jmp_addr_0x0061bbf4:    add                esi, 0x000001a4                                      // 0x0061bbf4    81c6a4010000
                         push               esi                                                  // 0x0061bbfa    56
                         call               _wcscpy                                              // 0x0061bbfb    e8b6a31a00
                         add                esp, 0x08                                            // 0x0061bc00    83c408
_jmp_addr_0x0061bc03:    pop                edi                                                  // 0x0061bc03    5f
                         pop                esi                                                  // 0x0061bc04    5e
                         pop                ebp                                                  // 0x0061bc05    5d
                         add                esp, 0x14                                            // 0x0061bc06    83c414
                         ret                0x0004                                               // 0x0061bc09    c20400
                         nop                                                                     // 0x0061bc0c    90
                         nop                                                                     // 0x0061bc0d    90
                         nop                                                                     // 0x0061bc0e    90
                         nop                                                                     // 0x0061bc0f    90
_jmp_addr_0x0061bc10:    {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x0061bc10    8b442404
                         mov                eax, dword ptr [eax]                                 // 0x0061bc14    8b00
                         test               eax, eax                                             // 0x0061bc16    85c0
                         push               esi                                                  // 0x0061bc18    56
                         {disp8} je         _jmp_addr_0x0061bc3c                                 // 0x0061bc19    7421
                         {disp8} mov        esi, dword ptr [esp + 0x10]                          // 0x0061bc1b    8b742410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                          // 0x0061bc1f    8b54240c
_jmp_addr_0x0061bc23:    {disp8} mov        ecx, dword ptr [eax + 0x04]                          // 0x0061bc23    8b4804
                         cmp                dword ptr [ecx], edx                                 // 0x0061bc26    3911
                         {disp8} jne        _jmp_addr_0x0061bc2f                                 // 0x0061bc28    7505
                         cmp                dword ptr [ecx + 0x04], esi                          // 0x0061bc2a    397104
                         {disp8} je         _jmp_addr_0x0061bc37                                 // 0x0061bc2d    7408
_jmp_addr_0x0061bc2f:    mov                eax, dword ptr [eax]                                 // 0x0061bc2f    8b00
                         test               eax, eax                                             // 0x0061bc31    85c0
                         {disp8} je         _jmp_addr_0x0061bc3c                                 // 0x0061bc33    7407
                         {disp8} jmp        _jmp_addr_0x0061bc23                                 // 0x0061bc35    ebec
_jmp_addr_0x0061bc37:    {disp8} mov        eax, dword ptr [eax + 0x04]                          // 0x0061bc37    8b4004
                         pop                esi                                                  // 0x0061bc3a    5e
                         ret                                                                     // 0x0061bc3b    c3
_jmp_addr_0x0061bc3c:    xor.s              eax, eax                                             // 0x0061bc3c    33c0
                         pop                esi                                                  // 0x0061bc3e    5e
                         ret                                                                     // 0x0061bc3f    c3
_jmp_addr_0x0061bc40:    {disp32} mov       edx, dword ptr [ecx + 0x00000178]                    // 0x0061bc40    8b9178010000
                         xor.s              eax, eax                                             // 0x0061bc46    33c0
                         cmp.s              edx, eax                                             // 0x0061bc48    3bd0
                         {disp32} mov       dword ptr [ecx + 0x00000170], eax                    // 0x0061bc4a    898170010000
                         {disp32} mov       dword ptr [ecx + 0x000001a0], eax                    // 0x0061bc50    8981a0010000
                         {disp8} mov        dword ptr [ecx + 0x10], eax                          // 0x0061bc56    894110
                         {disp8} mov        dword ptr [ecx + 0x14], 0x00000005                   // 0x0061bc59    c7411405000000
                         {disp32} mov       byte ptr [ecx + 0x00000abc], al                      // 0x0061bc60    8881bc0a0000
                         {disp8} je         _jmp_addr_0x0061bc6e                                 // 0x0061bc66    7406
                         {disp32} mov       byte ptr [edx + 0x00000291], al                      // 0x0061bc68    888291020000
_jmp_addr_0x0061bc6e:    {disp32} mov       edx, dword ptr [ecx + 0x00000164]                    // 0x0061bc6e    8b9164010000
                         cmp.s              edx, eax                                             // 0x0061bc74    3bd0
                         {disp8} je         _jmp_addr_0x0061bc7e                                 // 0x0061bc76    7406
                         {disp32} mov       byte ptr [edx + 0x00000291], al                      // 0x0061bc78    888291020000
_jmp_addr_0x0061bc7e:    {disp32} mov       edx, dword ptr [ecx + 0x00000198]                    // 0x0061bc7e    8b9198010000
                         cmp.s              edx, eax                                             // 0x0061bc84    3bd0
                         {disp8} je         _jmp_addr_0x0061bc8e                                 // 0x0061bc86    7406
                         {disp32} mov       byte ptr [edx + 0x00000291], al                      // 0x0061bc88    888291020000
_jmp_addr_0x0061bc8e:    {disp32} mov       dword ptr [ecx + 0x00000a34], eax                    // 0x0061bc8e    8981340a0000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001aae        // 0x0061bc94    813dac7cd100ae1a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061bc9e    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0061bcaa                                 // 0x0061bca3    7605
                         add                eax, 0x00014028                                      // 0x0061bca5    0528400100
_jmp_addr_0x0061bcaa:    {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x0061bcaa    8b5008
                         {disp32} mov       eax, dword ptr [ecx + 0x00000144]                    // 0x0061bcad    8b8144010000
                         push               edx                                                  // 0x0061bcb3    52
                         add                eax, 0x24                                            // 0x0061bcb4    83c024
                         push               eax                                                  // 0x0061bcb7    50
                         call               _wcscpy                                              // 0x0061bcb8    e8f9a21a00
                         add                esp, 0x08                                            // 0x0061bcbd    83c408
                         ret                                                                     // 0x0061bcc0    c3
                         nop                                                                     // 0x0061bcc1    90
                         nop                                                                     // 0x0061bcc2    90
                         nop                                                                     // 0x0061bcc3    90
                         nop                                                                     // 0x0061bcc4    90
                         nop                                                                     // 0x0061bcc5    90
                         nop                                                                     // 0x0061bcc6    90
                         nop                                                                     // 0x0061bcc7    90
                         nop                                                                     // 0x0061bcc8    90
                         nop                                                                     // 0x0061bcc9    90
                         nop                                                                     // 0x0061bcca    90
                         nop                                                                     // 0x0061bccb    90
                         nop                                                                     // 0x0061bccc    90
                         nop                                                                     // 0x0061bccd    90
                         nop                                                                     // 0x0061bcce    90
                         nop                                                                     // 0x0061bccf    90
?Init@ChannelBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         sub                esp, 0x0c                                            // 0x0061bcd0    83ec0c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                          // 0x0061bcd3    8b442418
                         push               ebx                                                  // 0x0061bcd7    53
                         push               ebp                                                  // 0x0061bcd8    55
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                          // 0x0061bcd9    8b6c2418
                         push               esi                                                  // 0x0061bcdd    56
                         push               edi                                                  // 0x0061bcde    57
                         mov.s              esi, ecx                                             // 0x0061bcdf    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                          // 0x0061bce1    8b4c2424
                         push               eax                                                  // 0x0061bce5    50
                         push               ecx                                                  // 0x0061bce6    51
                         push               ebp                                                  // 0x0061bce7    55
                         mov.s              ecx, esi                                             // 0x0061bce8    8bce
                         call               @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                                 // 0x0061bcea    e81177efff
                         xor.s              ebx, ebx                                             // 0x0061bcef    33db
                         {disp32} mov       dword ptr [data_bytes + 0x379014], esi               // 0x0061bcf1    893514f0d300
                         {disp32} mov       dword ptr [esi + 0x000009a4], ebx                    // 0x0061bcf7    899ea4090000
                         {disp8} mov        dword ptr [esp + 0x14], ebp                          // 0x0061bcfd    896c2414
                         {disp32} mov       dword ptr [esi + 0x000009a8], ebx                    // 0x0061bd01    899ea8090000
                         {disp8} mov        dword ptr [esp + 0x18], ebx                          // 0x0061bd07    895c2418
                         {disp8} fild       qword ptr [esp + 0x14]                               // 0x0061bd0b    df6c2414
                         {disp32} mov       dword ptr [esi + 0x00000a2c], ebx                    // 0x0061bd0f    899e2c0a0000
                         {disp32} mov       dword ptr [esi + 0x00000a30], ebx                    // 0x0061bd15    899e300a0000
                         xor.s              eax, eax                                             // 0x0061bd1b    33c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]                     // 0x0061bd1d    d80dd4b38a00
                         shr                ebp, 1                                               // 0x0061bd23    d1ed
                         mov                edx, 0x00000190                                      // 0x0061bd25    ba90010000
                         mov                ecx, 0x00000010                                      // 0x0061bd2a    b910000000
                         {disp32} lea       edi, dword ptr [esi + 0x000009ac]                    // 0x0061bd2f    8dbeac090000
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x0061bd35    d95c2420
                         rep stosd                                                               // 0x0061bd39    f3ab
                         sub.s              edx, ebp                                             // 0x0061bd3b    2bd5
                         mov                ecx, 0x00000010                                      // 0x0061bd3d    b910000000
                         {disp32} lea       edi, dword ptr [esi + 0x000009ec]                    // 0x0061bd42    8dbeec090000
                         rep stosd                                                               // 0x0061bd48    f3ab
                         {disp8} mov        dword ptr [esp + 0x14], edx                          // 0x0061bd4a    89542414
                         {disp8} mov        dword ptr [esp + 0x18], ebx                          // 0x0061bd4e    895c2418
                         {disp32} mov       dword ptr [esi + 0x00000170], ebx                    // 0x0061bd52    899e70010000
                         {disp32} mov       dword ptr [esi + 0x000001a0], ebx                    // 0x0061bd58    899ea0010000
                         {disp8} fild       qword ptr [esp + 0x14]                               // 0x0061bd5e    df6c2414
                         {disp8} lea        eax, dword ptr [esi + 0x20]                          // 0x0061bd62    8d4620
                         {disp8} mov        dword ptr [esi + 0x10], ebx                          // 0x0061bd65    895e10
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000005                   // 0x0061bd68    c7461405000000
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0061bd6f    d95c2428
                         xor.s              edi, edi                                             // 0x0061bd73    33ff
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0061bd75    89442410
_jmp_addr_0x0061bd79:    push               0x0000023b                                           // 0x0061bd79    683b020000
                         push               0x00bf4584                                           // 0x0061bd7e    688445bf00
                         push               0x00000254                                           // 0x0061bd83    6854020000
                         call               ___nw__FUl                                           // 0x0061bd88    e803fa1b00
                         add                esp, 0x0c                                            // 0x0061bd8d    83c40c
                         cmp.s              eax, ebx                                             // 0x0061bd90    3bc3
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x0061bd92    89442414
                         {disp8} je         _jmp_addr_0x0061bdf5                                 // 0x0061bd96    745d
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x0061bd98    d9442428
                         call               _jmp_addr_0x007a1400                                 // 0x0061bd9c    e85f561800
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x0061bda1    d9442428
                         {disp8} fadd       dword ptr [esp + 0x20]                               // 0x0061bda5    d8442420
                         xor.s              ecx, ecx                                             // 0x0061bda9    33c9
                         cmp                edi, 0x03                                            // 0x0061bdab    83ff03
                         sete               cl                                                   // 0x0061bdae    0f94c1
                         xor.s              edx, edx                                             // 0x0061bdb1    33d2
                         cmp.s              edi, ebx                                             // 0x0061bdb3    3bfb
                         sete               dl                                                   // 0x0061bdb5    0f94c2
                         mov.s              ebp, eax                                             // 0x0061bdb8    8be8
                         xor.s              eax, eax                                             // 0x0061bdba    33c0
                         push               ecx                                                  // 0x0061bdbc    51
                         cmp                edi, dword ptr [esi + 0x10]                          // 0x0061bdbd    3b7e10
                         sete               al                                                   // 0x0061bdc0    0f94c0
                         push               edx                                                  // 0x0061bdc3    52
                         push               eax                                                  // 0x0061bdc4    50
                         push               0x00c4cd30                                           // 0x0061bdc5    6830cdc400
                         push               0x28                                                 // 0x0061bdca    6a28
                         call               _jmp_addr_0x007a1400                                 // 0x0061bdcc    e82f561800
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                          // 0x0061bdd1    8b4c2438
                         sub.s              eax, ebp                                             // 0x0061bdd5    2bc5
                         push               eax                                                  // 0x0061bdd7    50
                         shr                ecx, 1                                               // 0x0061bdd8    d1e9
                         mov                edx, 0x00000104                                      // 0x0061bdda    ba04010000
                         sub.s              edx, ecx                                             // 0x0061bddf    2bd1
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                          // 0x0061bde1    8b4c242c
                         push               edx                                                  // 0x0061bde5    52
                         push               ebp                                                  // 0x0061bde6    55
                         {disp32} lea       eax, dword ptr [edi + 0x000008fc]                    // 0x0061bde7    8d87fc080000
                         push               eax                                                  // 0x0061bded    50
                         call               @__ct__14SetupTabButtonFiiiiiPwiii@35                // 0x0061bdee    e8ed37dfff
                         {disp8} jmp        _jmp_addr_0x0061bdf7                                 // 0x0061bdf3    eb02
_jmp_addr_0x0061bdf5:    xor.s              eax, eax                                             // 0x0061bdf5    33c0
_jmp_addr_0x0061bdf7:    {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x0061bdf7    8b4c2410
                         {disp8} fld        dword ptr [esp + 0x28]                               // 0x0061bdfb    d9442428
                         {disp8} fadd       dword ptr [esp + 0x20]                               // 0x0061bdff    d8442420
                         mov                dword ptr [ecx], eax                                 // 0x0061be03    8901
                         inc                edi                                                  // 0x0061be05    47
                         add                ecx, 0x4                                             // 0x0061be06    83c104
                         cmp                edi, 0x04                                            // 0x0061be09    83ff04
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0061be0c    d95c2428
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x0061be10    894c2410
                         {disp32} jl        _jmp_addr_0x0061bd79                                 // 0x0061be14    0f8c5fffffff
                         call               _GetMidTextSize__Fv                                  // 0x0061be1a    e8e1bbdeff
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                          // 0x0061be1f    8b4e04
                         push               0x0000023f                                           // 0x0061be22    683f020000
                         push               0x00bf4584                                           // 0x0061be27    688445bf00
                         push               0x00000244                                           // 0x0061be2c    6844020000
                         {disp32} mov       dword ptr [ecx + 0x000000ac], eax                    // 0x0061be31    8981ac000000
                         call               ___nw__FUl                                           // 0x0061be37    e854f91b00
                         mov.s              edi, eax                                             // 0x0061be3c    8bf8
                         add                esp, 0x0c                                            // 0x0061be3e    83c40c
                         cmp.s              edi, ebx                                             // 0x0061be41    3bfb
                         mov                ebp, 0x00000001                                      // 0x0061be43    bd01000000
                         {disp8} je         _jmp_addr_0x0061be7c                                 // 0x0061be48    7432
                         push               0x00c4cd30                                           // 0x0061be4a    6830cdc400
                         push               0x1c                                                 // 0x0061be4f    6a1c
                         push               0x000002d0                                           // 0x0061be51    68d0020000
                         push               0x3c                                                 // 0x0061be56    6a3c
                         push               0x28                                                 // 0x0061be58    6a28
                         push               ebp                                                  // 0x0061be5a    55
                         mov.s              ecx, edi                                             // 0x0061be5b    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061be5d    e8eed3deff
                         mov                dword ptr [edi], 0x008ab5c0                          // 0x0061be62    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebp                    // 0x0061be68    89af3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl                      // 0x0061be6e    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx                    // 0x0061be74    899f40020000
                         {disp8} jmp        _jmp_addr_0x0061be7e                                 // 0x0061be7a    eb02
_jmp_addr_0x0061be7c:    xor.s              edi, edi                                             // 0x0061be7c    33ff
_jmp_addr_0x0061be7e:    push               0x00000240                                           // 0x0061be7e    6840020000
                         push               0x00bf4584                                           // 0x0061be83    688445bf00
                         push               0x00000244                                           // 0x0061be88    6844020000
                         {disp8} mov        dword ptr [esi + 0x30], edi                          // 0x0061be8d    897e30
                         call               ___nw__FUl                                           // 0x0061be90    e8fbf81b00
                         mov.s              edi, eax                                             // 0x0061be95    8bf8
                         add                esp, 0x0c                                            // 0x0061be97    83c40c
                         cmp.s              edi, ebx                                             // 0x0061be9a    3bfb
                         {disp8} je         _jmp_addr_0x0061bed6                                 // 0x0061be9c    7438
                         push               0x00c4cd30                                           // 0x0061be9e    6830cdc400
                         push               0x1c                                                 // 0x0061bea3    6a1c
                         push               0x00000208                                           // 0x0061bea5    6808020000
                         push               0x0000017c                                           // 0x0061beaa    687c010000
                         push               0x0000008c                                           // 0x0061beaf    688c000000
                         push               ebp                                                  // 0x0061beb4    55
                         mov.s              ecx, edi                                             // 0x0061beb5    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061beb7    e894d3deff
                         mov                dword ptr [edi], 0x008ab5c0                          // 0x0061bebc    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebp                    // 0x0061bec2    89af3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl                      // 0x0061bec8    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx                    // 0x0061bece    899f40020000
                         {disp8} jmp        _jmp_addr_0x0061bed8                                 // 0x0061bed4    eb02
_jmp_addr_0x0061bed6:    xor.s              edi, edi                                             // 0x0061bed6    33ff
_jmp_addr_0x0061bed8:    push               0x00000242                                           // 0x0061bed8    6842020000
                         push               0x00bf4584                                           // 0x0061bedd    688445bf00
                         push               0x00000244                                           // 0x0061bee2    6844020000
                         {disp8} mov        dword ptr [esi + 0x34], edi                          // 0x0061bee7    897e34
                         call               ___nw__FUl                                           // 0x0061beea    e8a1f81b00
                         add                esp, 0x0c                                            // 0x0061beef    83c40c
                         cmp.s              eax, ebx                                             // 0x0061bef2    3bc3
                         {disp8} je         _jmp_addr_0x0061bf2f                                 // 0x0061bef4    7439
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019e2        // 0x0061bef6    813dac7cd100e2190000
                         {disp8} ja         _jmp_addr_0x0061bf0a                                 // 0x0061bf00    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061bf02    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0061bf16                                 // 0x0061bf08    eb0c
_jmp_addr_0x0061bf0a:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061bf0a    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x00013698]                    // 0x0061bf10    8d8a98360100
_jmp_addr_0x0061bf16:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061bf16    8b4908
                         push               ebx                                                  // 0x0061bf19    53
                         push               ecx                                                  // 0x0061bf1a    51
                         push               0x19                                                 // 0x0061bf1b    6a19
                         push               0x28                                                 // 0x0061bf1d    6a28
                         push               ebx                                                  // 0x0061bf1f    53
                         push               ebx                                                  // 0x0061bf20    53
                         push               0x000003e7                                           // 0x0061bf21    68e7030000
                         mov.s              ecx, eax                                             // 0x0061bf26    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061bf28    e883d9deff
                         {disp8} jmp        _jmp_addr_0x0061bf31                                 // 0x0061bf2d    eb02
_jmp_addr_0x0061bf2f:    xor.s              eax, eax                                             // 0x0061bf2f    33c0
_jmp_addr_0x0061bf31:    push               0x00000243                                           // 0x0061bf31    6843020000
                         push               0x00bf4584                                           // 0x0061bf36    688445bf00
                         push               0x00000244                                           // 0x0061bf3b    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000120], eax                    // 0x0061bf40    898620010000
                         call               ___nw__FUl                                           // 0x0061bf46    e845f81b00
                         add                esp, 0x0c                                            // 0x0061bf4b    83c40c
                         cmp.s              eax, ebx                                             // 0x0061bf4e    3bc3
                         {disp8} je         _jmp_addr_0x0061bf83                                 // 0x0061bf50    7431
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019e3        // 0x0061bf52    813dac7cd100e3190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061bf5c    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0061bf6a                                 // 0x0061bf62    7606
                         add                ecx, 0x000136a4                                      // 0x0061bf64    81c1a4360100
_jmp_addr_0x0061bf6a:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061bf6a    8b4908
                         push               ebx                                                  // 0x0061bf6d    53
                         push               ecx                                                  // 0x0061bf6e    51
                         push               0x19                                                 // 0x0061bf6f    6a19
                         push               0x28                                                 // 0x0061bf71    6a28
                         push               ebx                                                  // 0x0061bf73    53
                         push               ebx                                                  // 0x0061bf74    53
                         push               0x000003e7                                           // 0x0061bf75    68e7030000
                         mov.s              ecx, eax                                             // 0x0061bf7a    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061bf7c    e82fd9deff
                         {disp8} jmp        _jmp_addr_0x0061bf85                                 // 0x0061bf81    eb02
_jmp_addr_0x0061bf83:    xor.s              eax, eax                                             // 0x0061bf83    33c0
_jmp_addr_0x0061bf85:    {disp32} mov       dword ptr [esi + 0x00000124], eax                    // 0x0061bf85    898624010000
                         call               _GetSmallTextSize__Fv                                // 0x0061bf8b    e880badeff
                         {disp32} mov       edx, dword ptr [esi + 0x00000124]                    // 0x0061bf90    8b9624010000
                         {disp8} mov        dword ptr [edx + 0x20], eax                          // 0x0061bf96    894220
                         {disp32} mov       eax, dword ptr [esi + 0x00000124]                    // 0x0061bf99    8b8624010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000120]                    // 0x0061bf9f    8b8e20010000
                         {disp8} mov        edx, dword ptr [eax + 0x20]                          // 0x0061bfa5    8b5020
                         {disp8} mov        dword ptr [ecx + 0x20], edx                          // 0x0061bfa8    895120
                         call               _GetSmallTextSize__Fv                                // 0x0061bfab    e860badeff
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x0061bfb0    89442424
                         {disp32} mov       eax, dword ptr [esi + 0x00000120]                    // 0x0061bfb4    8b8620010000
                         {disp8} fild       dword ptr [esp + 0x24]                               // 0x0061bfba    db442424
                         add                eax, 0x24                                            // 0x0061bfbe    83c024
                         push               eax                                                  // 0x0061bfc1    50
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0061bfc2    d95c2428
                         call               _wcslen                                              // 0x0061bfc6    e897a41a00
                         {disp8} mov        edi, dword ptr [esp + 0x28]                          // 0x0061bfcb    8b7c2428
                         {disp32} mov       edx, dword ptr [esi + 0x00000120]                    // 0x0061bfcf    8b9620010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d2c]               // 0x0061bfd5    8b0d2ccdc400
                         add                esp, 0x04                                            // 0x0061bfdb    83c404
                         push               edi                                                  // 0x0061bfde    57
                         add                edx, 0x24                                            // 0x0061bfdf    83c224
                         push               eax                                                  // 0x0061bfe2    50
                         push               edx                                                  // 0x0061bfe3    52
                         call               @GetStringWidth__13GatheringTextFPwif@20             // 0x0061bfe4    e847512100
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c70]                    // 0x0061bfe9    d805702c8c00
                         call               _jmp_addr_0x007a1400                                 // 0x0061bfef    e80c541800
                         {disp32} mov       dword ptr [esi + 0x0000012c], eax                    // 0x0061bff4    89862c010000
                         call               _GetSmallTextSize__Fv                                // 0x0061bffa    e811badeff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000124]                    // 0x0061bfff    8b8e24010000
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x0061c005    89442424
                         {disp8} fild       dword ptr [esp + 0x24]                               // 0x0061c009    db442424
                         add                ecx, 0x24                                            // 0x0061c00d    83c124
                         push               ecx                                                  // 0x0061c010    51
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0061c011    d95c2428
                         call               _wcslen                                              // 0x0061c015    e848a41a00
                         {disp8} mov        edi, dword ptr [esp + 0x28]                          // 0x0061c01a    8b7c2428
                         {disp32} mov       edx, dword ptr [esi + 0x00000124]                    // 0x0061c01e    8b9624010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d2c]               // 0x0061c024    8b0d2ccdc400
                         add                esp, 0x04                                            // 0x0061c02a    83c404
                         push               edi                                                  // 0x0061c02d    57
                         add                edx, 0x24                                            // 0x0061c02e    83c224
                         push               eax                                                  // 0x0061c031    50
                         push               edx                                                  // 0x0061c032    52
                         call               @GetStringWidth__13GatheringTextFPwif@20             // 0x0061c033    e8f8502100
                         {disp32} fadd      dword ptr [rdata_bytes + 0x19c70]                    // 0x0061c038    d805702c8c00
                         call               _jmp_addr_0x007a1400                                 // 0x0061c03e    e8bd531800
                         push               0x00000249                                           // 0x0061c043    6849020000
                         push               0x00bf4584                                           // 0x0061c048    688445bf00
                         push               0x00000244                                           // 0x0061c04d    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000130], eax                    // 0x0061c052    898630010000
                         call               ___nw__FUl                                           // 0x0061c058    e833f71b00
                         add                esp, 0x0c                                            // 0x0061c05d    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c060    3bc3
                         {disp8} je         _jmp_addr_0x0061c07e                                 // 0x0061c062    741a
                         push               ebx                                                  // 0x0061c064    53
                         push               0x009cee0c                                           // 0x0061c065    680cee9c00
                         push               0x19                                                 // 0x0061c06a    6a19
                         push               0x28                                                 // 0x0061c06c    6a28
                         push               ebx                                                  // 0x0061c06e    53
                         push               ebx                                                  // 0x0061c06f    53
                         push               0x000003e7                                           // 0x0061c070    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c075    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061c077    e834d8deff
                         {disp8} jmp        _jmp_addr_0x0061c080                                 // 0x0061c07c    eb02
_jmp_addr_0x0061c07e:    xor.s              eax, eax                                             // 0x0061c07e    33c0
_jmp_addr_0x0061c080:    {disp32} mov       dword ptr [esi + 0x00000128], eax                    // 0x0061c080    898628010000
                         call               _GetSmallTextSize__Fv                                // 0x0061c086    e885b9deff
                         {disp32} mov       edx, dword ptr [esi + 0x00000128]                    // 0x0061c08b    8b9628010000
                         {disp8} mov        dword ptr [edx + 0x20], eax                          // 0x0061c091    894220
                         {disp32} mov       eax, dword ptr [esi + 0x00000128]                    // 0x0061c094    8b8628010000
                         {disp32} mov       byte ptr [eax + 0x0000022b], 0x01                    // 0x0061c09a    c6802b02000001
                         {disp32} mov       ecx, dword ptr [esi + 0x00000120]                    // 0x0061c0a1    8b8e20010000
                         mov                edx, dword ptr [ecx]                                 // 0x0061c0a7    8b11
                         push               0x1                                                  // 0x0061c0a9    6a01
                         call               dword ptr [edx + 8]                                  // 0x0061c0ab    ff5208
                         {disp32} mov       ecx, dword ptr [esi + 0x00000124]                    // 0x0061c0ae    8b8e24010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061c0b4    8b01
                         push               0x1                                                  // 0x0061c0b6    6a01
                         call               dword ptr [eax + 8]                                  // 0x0061c0b8    ff5008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000128]                    // 0x0061c0bb    8b8e28010000
                         mov                edx, dword ptr [ecx]                                 // 0x0061c0c1    8b11
                         push               0x1                                                  // 0x0061c0c3    6a01
                         call               dword ptr [edx + 8]                                  // 0x0061c0c5    ff5208
                         {disp32} mov       eax, dword ptr [esi + 0x00000124]                    // 0x0061c0c8    8b8624010000
                         {disp32} mov       byte ptr [eax + 0x0000022b], 0x01                    // 0x0061c0ce    c6802b02000001
                         {disp32} mov       ecx, dword ptr [esi + 0x00000120]                    // 0x0061c0d5    8b8e20010000
                         {disp32} mov       byte ptr [ecx + 0x0000022b], 0x01                    // 0x0061c0db    c6812b02000001
                         xor.s              edi, edi                                             // 0x0061c0e2    33ff
                         {disp8} lea        ebp, dword ptr [esi + 0x38]                          // 0x0061c0e4    8d6e38
_jmp_addr_0x0061c0e7:    push               edi                                                  // 0x0061c0e7    57
                         push               esi                                                  // 0x0061c0e8    56
                         mov.s              ecx, ebp                                             // 0x0061c0e9    8bcd
                         call               _jmp_addr_0x0061a660                                 // 0x0061c0eb    e870e5ffff
                         inc                edi                                                  // 0x0061c0f0    47
                         add                ebp, 0x2c                                            // 0x0061c0f1    83c52c
                         cmp                edi, 0x05                                            // 0x0061c0f4    83ff05
                         {disp8} jl         _jmp_addr_0x0061c0e7                                 // 0x0061c0f7    7cee
                         push               0x0000025a                                           // 0x0061c0f9    685a020000
                         push               0x00bf4584                                           // 0x0061c0fe    688445bf00
                         push               0x0000025c                                           // 0x0061c103    685c020000
                         call               ___nw__FUl                                           // 0x0061c108    e883f61b00
                         add                esp, 0x0c                                            // 0x0061c10d    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c110    3bc3
                         {disp8} je         _jmp_addr_0x0061c152                                 // 0x0061c112    743e
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d59        // 0x0061c114    813dac7cd100590d0000
                         {disp8} ja         _jmp_addr_0x0061c128                                 // 0x0061c11e    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c120    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0061c134                                 // 0x0061c126    eb0c
_jmp_addr_0x0061c128:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c128    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000a02c]                    // 0x0061c12e    8d8a2ca00000
_jmp_addr_0x0061c134:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c134    8b4908
                         push               0x2                                                  // 0x0061c137    6a02
                         push               ebx                                                  // 0x0061c139    53
                         push               0x28                                                 // 0x0061c13a    6a28
                         push               ecx                                                  // 0x0061c13c    51
                         push               0x00000212                                           // 0x0061c13d    6812020000
                         push               0x14                                                 // 0x0061c142    6a14
                         push               0x000003e7                                           // 0x0061c144    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c149    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36                  // 0x0061c14b    e81011dfff
                         {disp8} jmp        _jmp_addr_0x0061c154                                 // 0x0061c150    eb02
_jmp_addr_0x0061c152:    xor.s              eax, eax                                             // 0x0061c152    33c0
_jmp_addr_0x0061c154:    push               0x0000025b                                           // 0x0061c154    685b020000
                         push               0x00bf4584                                           // 0x0061c159    688445bf00
                         push               0x0000025c                                           // 0x0061c15e    685c020000
                         {disp32} mov       dword ptr [esi + 0x00000114], eax                    // 0x0061c163    898614010000
                         call               ___nw__FUl                                           // 0x0061c169    e822f61b00
                         add                esp, 0x0c                                            // 0x0061c16e    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c171    3bc3
                         {disp8} je         _jmp_addr_0x0061c1b3                                 // 0x0061c173    743e
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019e5        // 0x0061c175    813dac7cd100e5190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c17f    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0061c18d                                 // 0x0061c185    7606
                         add                ecx, 0x000136bc                                      // 0x0061c187    81c1bc360100
_jmp_addr_0x0061c18d:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c18d    8b4908
                         push               0x3                                                  // 0x0061c190    6a03
                         mov                ebp, 0x00000001                                      // 0x0061c192    bd01000000
                         push               ebp                                                  // 0x0061c197    55
                         push               0x28                                                 // 0x0061c198    6a28
                         push               ecx                                                  // 0x0061c19a    51
                         push               0x00000212                                           // 0x0061c19b    6812020000
                         push               0x000002e4                                           // 0x0061c1a0    68e4020000
                         push               0x000003e7                                           // 0x0061c1a5    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c1aa    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36                  // 0x0061c1ac    e8af10dfff
                         {disp8} jmp        _jmp_addr_0x0061c1ba                                 // 0x0061c1b1    eb07
_jmp_addr_0x0061c1b3:    xor.s              eax, eax                                             // 0x0061c1b3    33c0
                         mov                ebp, 0x00000001                                      // 0x0061c1b5    bd01000000
_jmp_addr_0x0061c1ba:    {disp32} mov       dword ptr [esi + 0x00000118], eax                    // 0x0061c1ba    898618010000
                         call               _jmp_addr_0x00407a20                                 // 0x0061c1c0    e85bb8deff
                         {disp32} mov       edx, dword ptr [esi + 0x00000114]                    // 0x0061c1c5    8b9614010000
                         {disp8} mov        dword ptr [edx + 0x20], eax                          // 0x0061c1cb    894220
                         call               _jmp_addr_0x00407a20                                 // 0x0061c1ce    e84db8deff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000118]                    // 0x0061c1d3    8b8e18010000
                         push               0x0000025f                                           // 0x0061c1d9    685f020000
                         push               0x00bf4584                                           // 0x0061c1de    688445bf00
                         push               0x0000025c                                           // 0x0061c1e3    685c020000
                         {disp8} mov        dword ptr [ecx + 0x20], eax                          // 0x0061c1e8    894120
                         call               ___nw__FUl                                           // 0x0061c1eb    e8a0f51b00
                         add                esp, 0x0c                                            // 0x0061c1f0    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c1f3    3bc3
                         {disp8} je         _jmp_addr_0x0061c238                                 // 0x0061c1f5    7441
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a82        // 0x0061c1f7    813dac7cd100821a0000
                         {disp8} ja         _jmp_addr_0x0061c20b                                 // 0x0061c201    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c203    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0061c217                                 // 0x0061c209    eb0c
_jmp_addr_0x0061c20b:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c20b    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x00013e18]                    // 0x0061c211    8d8a183e0100
_jmp_addr_0x0061c217:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c217    8b4908
                         push               0x3                                                  // 0x0061c21a    6a03
                         push               ebp                                                  // 0x0061c21c    55
                         push               0x28                                                 // 0x0061c21d    6a28
                         push               ecx                                                  // 0x0061c21f    51
                         push               0x00000212                                           // 0x0061c220    6812020000
                         push               0x000002e4                                           // 0x0061c225    68e4020000
                         push               0x000003e7                                           // 0x0061c22a    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c22f    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36                  // 0x0061c231    e82a10dfff
                         {disp8} jmp        _jmp_addr_0x0061c23a                                 // 0x0061c236    eb02
_jmp_addr_0x0061c238:    xor.s              eax, eax                                             // 0x0061c238    33c0
_jmp_addr_0x0061c23a:    {disp32} mov       dword ptr [esi + 0x0000011c], eax                    // 0x0061c23a    89861c010000
                         call               _jmp_addr_0x00407a20                                 // 0x0061c240    e8dbb7deff
                         {disp32} mov       ecx, dword ptr [esi + 0x0000011c]                    // 0x0061c245    8b8e1c010000
                         push               0x00000263                                           // 0x0061c24b    6863020000
                         push               0x00bf4584                                           // 0x0061c250    688445bf00
                         push               0x00000468                                           // 0x0061c255    6868040000
                         {disp8} mov        dword ptr [ecx + 0x20], eax                          // 0x0061c25a    894120
                         call               ___nw__FUl                                           // 0x0061c25d    e82ef51b00
                         add                esp, 0x0c                                            // 0x0061c262    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c265    3bc3
                         {disp8} je         _jmp_addr_0x0061c2ad                                 // 0x0061c267    7444
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001aae        // 0x0061c269    813dac7cd100ae1a0000
                         {disp8} ja         _jmp_addr_0x0061c27d                                 // 0x0061c273    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c275    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0061c289                                 // 0x0061c27b    eb0c
_jmp_addr_0x0061c27d:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c27d    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x00014028]                    // 0x0061c283    8d8a28400100
_jmp_addr_0x0061c289:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c289    8b4908
                         push               ebp                                                  // 0x0061c28c    55
                         push               ecx                                                  // 0x0061c28d    51
                         push               0x1e                                                 // 0x0061c28e    6a1e
                         push               0x00000208                                           // 0x0061c290    6808020000
                         push               0x00000221                                           // 0x0061c295    6821020000
                         push               0x0000008c                                           // 0x0061c29a    688c000000
                         push               0x000003e7                                           // 0x0061c29f    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c2a4    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                        // 0x0061c2a6    e875ffdeff
                         {disp8} jmp        _jmp_addr_0x0061c2af                                 // 0x0061c2ab    eb02
_jmp_addr_0x0061c2ad:    xor.s              eax, eax                                             // 0x0061c2ad    33c0
_jmp_addr_0x0061c2af:    {disp32} mov       dword ptr [esi + 0x00000144], eax                    // 0x0061c2af    898644010000
                         call               _GetSmallTextSize__Fv                                // 0x0061c2b5    e856b7deff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000144]                    // 0x0061c2ba    8b8e44010000
                         push               0x00000265                                           // 0x0061c2c0    6865020000
                         push               0x00bf4584                                           // 0x0061c2c5    688445bf00
                         push               0x000002b0                                           // 0x0061c2ca    68b0020000
                         {disp8} mov        dword ptr [ecx + 0x20], eax                          // 0x0061c2cf    894120
                         call               ___nw__FUl                                           // 0x0061c2d2    e8b9f41b00
                         add                esp, 0x0c                                            // 0x0061c2d7    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c2da    3bc3
                         {disp8} je         _jmp_addr_0x0061c2fd                                 // 0x0061c2dc    741f
                         push               0x78                                                 // 0x0061c2de    6a78
                         push               0x00000208                                           // 0x0061c2e0    6808020000
                         push               0x0000019a                                           // 0x0061c2e5    689a010000
                         push               0x0000008c                                           // 0x0061c2ea    688c000000
                         push               0x000003e7                                           // 0x0061c2ef    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c2f4    8bc8
                         call               @__ct__9SetupListFiiiii@28                           // 0x0061c2f6    e855e1deff
                         {disp8} jmp        _jmp_addr_0x0061c2ff                                 // 0x0061c2fb    eb02
_jmp_addr_0x0061c2fd:    xor.s              eax, eax                                             // 0x0061c2fd    33c0
_jmp_addr_0x0061c2ff:    {disp32} mov       dword ptr [esi + 0x00000148], eax                    // 0x0061c2ff    898648010000
                         call               _GetSmallTextSize__Fv                                // 0x0061c305    e806b7deff
                         {disp32} mov       edx, dword ptr [esi + 0x00000148]                    // 0x0061c30a    8b9648010000
                         push               0x00000269                                           // 0x0061c310    6869020000
                         {disp8} mov        dword ptr [edx + 0x20], eax                          // 0x0061c315    894220
                         {disp32} mov       eax, dword ptr [esi + 0x00000148]                    // 0x0061c318    8b8648010000
                         push               0x00bf4584                                           // 0x0061c31e    688445bf00
                         push               0x00000244                                           // 0x0061c323    6844020000
                         {disp32} mov       byte ptr [eax + 0x00000291], bl                      // 0x0061c328    889891020000
                         call               ___nw__FUl                                           // 0x0061c32e    e85df41b00
                         mov.s              edi, eax                                             // 0x0061c333    8bf8
                         add                esp, 0x0c                                            // 0x0061c335    83c40c
                         cmp.s              edi, ebx                                             // 0x0061c338    3bfb
                         {disp8} je         _jmp_addr_0x0061c38f                                 // 0x0061c33a    7453
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a6a        // 0x0061c33c    813dac7cd1006a1a0000
                         {disp8} ja         _jmp_addr_0x0061c34f                                 // 0x0061c346    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061c348    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0061c35b                                 // 0x0061c34d    eb0c
_jmp_addr_0x0061c34f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c34f    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013cf8]                    // 0x0061c355    8d81f83c0100
_jmp_addr_0x0061c35b:    {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x0061c35b    8b5008
                         push               edx                                                  // 0x0061c35e    52
                         push               0x1c                                                 // 0x0061c35f    6a1c
                         push               0x000002d0                                           // 0x0061c361    68d0020000
                         push               0x0000017c                                           // 0x0061c366    687c010000
                         push               0x28                                                 // 0x0061c36b    6a28
                         push               ebp                                                  // 0x0061c36d    55
                         mov.s              ecx, edi                                             // 0x0061c36e    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061c370    e8dbcedeff
                         mov                dword ptr [edi], 0x008ab5c0                          // 0x0061c375    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebp                    // 0x0061c37b    89af3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl                      // 0x0061c381    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx                    // 0x0061c387    899f40020000
                         {disp8} jmp        _jmp_addr_0x0061c391                                 // 0x0061c38d    eb02
_jmp_addr_0x0061c38f:    xor.s              edi, edi                                             // 0x0061c38f    33ff
_jmp_addr_0x0061c391:    push               0x0000026c                                           // 0x0061c391    686c020000
                         push               0x00bf4584                                           // 0x0061c396    688445bf00
                         push               0x00000244                                           // 0x0061c39b    6844020000
                         {disp32} mov       dword ptr [esi + 0x0000014c], edi                    // 0x0061c3a0    89be4c010000
                         call               ___nw__FUl                                           // 0x0061c3a6    e8e5f31b00
                         mov.s              edi, eax                                             // 0x0061c3ab    8bf8
                         add                esp, 0x0c                                            // 0x0061c3ad    83c40c
                         cmp.s              edi, ebx                                             // 0x0061c3b0    3bfb
                         {disp8} je         _jmp_addr_0x0061c3e9                                 // 0x0061c3b2    7435
                         push               0x00c4cd30                                           // 0x0061c3b4    6830cdc400
                         push               0x1c                                                 // 0x0061c3b9    6a1c
                         push               0x0000012c                                           // 0x0061c3bb    682c010000
                         push               0x0000017c                                           // 0x0061c3c0    687c010000
                         push               0x64                                                 // 0x0061c3c5    6a64
                         push               ebp                                                  // 0x0061c3c7    55
                         mov.s              ecx, edi                                             // 0x0061c3c8    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061c3ca    e881cedeff
                         mov                dword ptr [edi], 0x008ab5c0                          // 0x0061c3cf    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebp                    // 0x0061c3d5    89af3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl                      // 0x0061c3db    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx                    // 0x0061c3e1    899f40020000
                         {disp8} jmp        _jmp_addr_0x0061c3eb                                 // 0x0061c3e7    eb02
_jmp_addr_0x0061c3e9:    xor.s              edi, edi                                             // 0x0061c3e9    33ff
_jmp_addr_0x0061c3eb:    push               0x0000026d                                           // 0x0061c3eb    686d020000
                         push               0x00bf4584                                           // 0x0061c3f0    688445bf00
                         push               0x00000244                                           // 0x0061c3f5    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000158], edi                    // 0x0061c3fa    89be58010000
                         call               ___nw__FUl                                           // 0x0061c400    e88bf31b00
                         mov.s              edi, eax                                             // 0x0061c405    8bf8
                         add                esp, 0x0c                                            // 0x0061c407    83c40c
                         cmp.s              edi, ebx                                             // 0x0061c40a    3bfb
                         {disp8} je         _jmp_addr_0x0061c446                                 // 0x0061c40c    7438
                         push               0x00c4cd30                                           // 0x0061c40e    6830cdc400
                         push               0x1c                                                 // 0x0061c413    6a1c
                         push               0x0000012c                                           // 0x0061c415    682c010000
                         push               0x0000017c                                           // 0x0061c41a    687c010000
                         push               0x00000190                                           // 0x0061c41f    6890010000
                         push               ebp                                                  // 0x0061c424    55
                         mov.s              ecx, edi                                             // 0x0061c425    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061c427    e824cedeff
                         mov                dword ptr [edi], 0x008ab5c0                          // 0x0061c42c    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebp                    // 0x0061c432    89af3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl                      // 0x0061c438    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx                    // 0x0061c43e    899f40020000
                         {disp8} jmp        _jmp_addr_0x0061c448                                 // 0x0061c444    eb02
_jmp_addr_0x0061c446:    xor.s              edi, edi                                             // 0x0061c446    33ff
_jmp_addr_0x0061c448:    push               0x0000026e                                           // 0x0061c448    686e020000
                         push               0x00bf4584                                           // 0x0061c44d    688445bf00
                         push               0x000002b0                                           // 0x0061c452    68b0020000
                         {disp32} mov       dword ptr [esi + 0x0000015c], edi                    // 0x0061c457    89be5c010000
                         call               ___nw__FUl                                           // 0x0061c45d    e82ef31b00
                         add                esp, 0x0c                                            // 0x0061c462    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c465    3bc3
                         {disp8} je         _jmp_addr_0x0061c488                                 // 0x0061c467    741f
                         push               0x78                                                 // 0x0061c469    6a78
                         push               0x000000fa                                           // 0x0061c46b    68fa000000
                         push               0x0000019a                                           // 0x0061c470    689a010000
                         push               0x0000008c                                           // 0x0061c475    688c000000
                         push               0x000003e7                                           // 0x0061c47a    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c47f    8bc8
                         call               @__ct__9SetupListFiiiii@28                           // 0x0061c481    e8cadfdeff
                         {disp8} jmp        _jmp_addr_0x0061c48a                                 // 0x0061c486    eb02
_jmp_addr_0x0061c488:    xor.s              eax, eax                                             // 0x0061c488    33c0
_jmp_addr_0x0061c48a:    push               0x0000026f                                           // 0x0061c48a    686f020000
                         push               0x00bf4584                                           // 0x0061c48f    688445bf00
                         push               0x000002b0                                           // 0x0061c494    68b0020000
                         {disp32} mov       dword ptr [esi + 0x00000160], eax                    // 0x0061c499    898660010000
                         call               ___nw__FUl                                           // 0x0061c49f    e8ecf21b00
                         add                esp, 0x0c                                            // 0x0061c4a4    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c4a7    3bc3
                         {disp8} je         _jmp_addr_0x0061c4ca                                 // 0x0061c4a9    741f
                         push               0x78                                                 // 0x0061c4ab    6a78
                         push               0x000000fa                                           // 0x0061c4ad    68fa000000
                         push               0x0000019a                                           // 0x0061c4b2    689a010000
                         push               0x0000019a                                           // 0x0061c4b7    689a010000
                         push               0x000003e7                                           // 0x0061c4bc    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c4c1    8bc8
                         call               @__ct__9SetupListFiiiii@28                           // 0x0061c4c3    e888dfdeff
                         {disp8} jmp        _jmp_addr_0x0061c4cc                                 // 0x0061c4c8    eb02
_jmp_addr_0x0061c4ca:    xor.s              eax, eax                                             // 0x0061c4ca    33c0
_jmp_addr_0x0061c4cc:    push               0x00000270                                           // 0x0061c4cc    6870020000
                         push               0x00bf4584                                           // 0x0061c4d1    688445bf00
                         push               0x00000244                                           // 0x0061c4d6    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000164], eax                    // 0x0061c4db    898664010000
                         call               ___nw__FUl                                           // 0x0061c4e1    e8aaf21b00
                         add                esp, 0x0c                                            // 0x0061c4e6    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c4e9    3bc3
                         {disp8} je         _jmp_addr_0x0061c529                                 // 0x0061c4eb    743c
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001ab0        // 0x0061c4ed    813dac7cd100b01a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c4f7    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0061c505                                 // 0x0061c4fd    7606
                         add                ecx, 0x00014040                                      // 0x0061c4ff    81c140400100
_jmp_addr_0x0061c505:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c505    8b4908
                         push               ebx                                                  // 0x0061c508    53
                         push               ecx                                                  // 0x0061c509    51
                         push               0x1e                                                 // 0x0061c50a    6a1e
                         push               0x0000012c                                           // 0x0061c50c    682c010000
                         push               0x0000021c                                           // 0x0061c511    681c020000
                         push               0x000000fa                                           // 0x0061c516    68fa000000
                         push               0x000003e7                                           // 0x0061c51b    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c520    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061c522    e889d3deff
                         {disp8} jmp        _jmp_addr_0x0061c52b                                 // 0x0061c527    eb02
_jmp_addr_0x0061c529:    xor.s              eax, eax                                             // 0x0061c529    33c0
_jmp_addr_0x0061c52b:    push               0x00000271                                           // 0x0061c52b    6871020000
                         push               0x00bf4584                                           // 0x0061c530    688445bf00
                         push               0x00000244                                           // 0x0061c535    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000168], eax                    // 0x0061c53a    898668010000
                         call               ___nw__FUl                                           // 0x0061c540    e84bf21b00
                         add                esp, 0x0c                                            // 0x0061c545    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c548    3bc3
                         {disp8} je         _jmp_addr_0x0061c590                                 // 0x0061c54a    7444
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a53        // 0x0061c54c    813dac7cd100531a0000
                         {disp8} ja         _jmp_addr_0x0061c560                                 // 0x0061c556    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c558    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0061c56c                                 // 0x0061c55e    eb0c
_jmp_addr_0x0061c560:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c560    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x00013be4]                    // 0x0061c566    8d8ae43b0100
_jmp_addr_0x0061c56c:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c56c    8b4908
                         push               ebx                                                  // 0x0061c56f    53
                         push               ecx                                                  // 0x0061c570    51
                         push               0x1e                                                 // 0x0061c571    6a1e
                         push               0x0000012c                                           // 0x0061c573    682c010000
                         push               0x0000021c                                           // 0x0061c578    681c020000
                         push               0x000000fa                                           // 0x0061c57d    68fa000000
                         push               0x000003e7                                           // 0x0061c582    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c587    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061c589    e822d3deff
                         {disp8} jmp        _jmp_addr_0x0061c592                                 // 0x0061c58e    eb02
_jmp_addr_0x0061c590:    xor.s              eax, eax                                             // 0x0061c590    33c0
_jmp_addr_0x0061c592:    {disp32} mov       dword ptr [esi + 0x0000016c], eax                    // 0x0061c592    89866c010000
                         call               _GetSmallTextSize__Fv                                // 0x0061c598    e873b4deff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x0061c59d    8b8e64010000
                         push               0x00000276                                           // 0x0061c5a3    6876020000
                         {disp8} mov        dword ptr [ecx + 0x20], eax                          // 0x0061c5a8    894120
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]                    // 0x0061c5ab    8b9664010000
                         push               0x00bf4584                                           // 0x0061c5b1    688445bf00
                         push               0x00000244                                           // 0x0061c5b6    6844020000
                         {disp32} mov       byte ptr [edx + 0x00000291], bl                      // 0x0061c5bb    889a91020000
                         call               ___nw__FUl                                           // 0x0061c5c1    e8caf11b00
                         mov.s              edi, eax                                             // 0x0061c5c6    8bf8
                         add                esp, 0x0c                                            // 0x0061c5c8    83c40c
                         cmp.s              edi, ebx                                             // 0x0061c5cb    3bfb
                         {disp8} je         _jmp_addr_0x0061c603                                 // 0x0061c5cd    7434
                         push               0x00c4cd30                                           // 0x0061c5cf    6830cdc400
                         push               0x1c                                                 // 0x0061c5d4    6a1c
                         push               0x00000320                                           // 0x0061c5d6    6820030000
                         push               0x0000017c                                           // 0x0061c5db    687c010000
                         push               ebx                                                  // 0x0061c5e0    53
                         push               ebp                                                  // 0x0061c5e1    55
                         mov.s              ecx, edi                                             // 0x0061c5e2    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061c5e4    e867ccdeff
                         mov                dword ptr [edi], 0x008ab5c0                          // 0x0061c5e9    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebp                    // 0x0061c5ef    89af3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl                      // 0x0061c5f5    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx                    // 0x0061c5fb    899f40020000
                         {disp8} jmp        _jmp_addr_0x0061c605                                 // 0x0061c601    eb02
_jmp_addr_0x0061c603:    xor.s              edi, edi                                             // 0x0061c603    33ff
_jmp_addr_0x0061c605:    push               0x00000277                                           // 0x0061c605    6877020000
                         push               0x00bf4584                                           // 0x0061c60a    688445bf00
                         push               0x000002b0                                           // 0x0061c60f    68b0020000
                         {disp32} mov       dword ptr [esi + 0x00000174], edi                    // 0x0061c614    89be74010000
                         call               ___nw__FUl                                           // 0x0061c61a    e871f11b00
                         add                esp, 0x0c                                            // 0x0061c61f    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c622    3bc3
                         {disp8} je         _jmp_addr_0x0061c645                                 // 0x0061c624    741f
                         push               0x78                                                 // 0x0061c626    6a78
                         push               0x00000208                                           // 0x0061c628    6808020000
                         push               0x0000019a                                           // 0x0061c62d    689a010000
                         push               0x0000008c                                           // 0x0061c632    688c000000
                         push               0x000003e7                                           // 0x0061c637    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c63c    8bc8
                         call               @__ct__9SetupListFiiiii@28                           // 0x0061c63e    e80ddedeff
                         {disp8} jmp        _jmp_addr_0x0061c647                                 // 0x0061c643    eb02
_jmp_addr_0x0061c645:    xor.s              eax, eax                                             // 0x0061c645    33c0
_jmp_addr_0x0061c647:    push               0x00000278                                           // 0x0061c647    6878020000
                         push               0x00bf4584                                           // 0x0061c64c    688445bf00
                         push               0x00000244                                           // 0x0061c651    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000178], eax                    // 0x0061c656    898678010000
                         call               ___nw__FUl                                           // 0x0061c65c    e82ff11b00
                         add                esp, 0x0c                                            // 0x0061c661    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c664    3bc3
                         {disp8} je         _jmp_addr_0x0061c6a4                                 // 0x0061c666    743c
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a70        // 0x0061c668    813dac7cd100701a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c672    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0061c680                                 // 0x0061c678    7606
                         add                ecx, 0x00013d40                                      // 0x0061c67a    81c1403d0100
_jmp_addr_0x0061c680:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c680    8b4908
                         push               ebx                                                  // 0x0061c683    53
                         push               ecx                                                  // 0x0061c684    51
                         push               0x1e                                                 // 0x0061c685    6a1e
                         push               0x000000a0                                           // 0x0061c687    68a0000000
                         push               0x0000021c                                           // 0x0061c68c    681c020000
                         push               0x0000008c                                           // 0x0061c691    688c000000
                         push               0x000003e7                                           // 0x0061c696    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c69b    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061c69d    e80ed2deff
                         {disp8} jmp        _jmp_addr_0x0061c6a6                                 // 0x0061c6a2    eb02
_jmp_addr_0x0061c6a4:    xor.s              eax, eax                                             // 0x0061c6a4    33c0
_jmp_addr_0x0061c6a6:    push               0x00000279                                           // 0x0061c6a6    6879020000
                         push               0x00bf4584                                           // 0x0061c6ab    688445bf00
                         push               0x00000244                                           // 0x0061c6b0    6844020000
                         {disp32} mov       dword ptr [esi + 0x0000017c], eax                    // 0x0061c6b5    89867c010000
                         call               ___nw__FUl                                           // 0x0061c6bb    e8d0f01b00
                         add                esp, 0x0c                                            // 0x0061c6c0    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c6c3    3bc3
                         {disp8} je         _jmp_addr_0x0061c70b                                 // 0x0061c6c5    7444
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019e2        // 0x0061c6c7    813dac7cd100e2190000
                         {disp8} ja         _jmp_addr_0x0061c6db                                 // 0x0061c6d1    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c6d3    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0061c6e7                                 // 0x0061c6d9    eb0c
_jmp_addr_0x0061c6db:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c6db    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x00013698]                    // 0x0061c6e1    8d8a98360100
_jmp_addr_0x0061c6e7:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c6e7    8b4908
                         push               ebx                                                  // 0x0061c6ea    53
                         push               ecx                                                  // 0x0061c6eb    51
                         push               0x1e                                                 // 0x0061c6ec    6a1e
                         push               0x000000a0                                           // 0x0061c6ee    68a0000000
                         push               0x0000021c                                           // 0x0061c6f3    681c020000
                         push               0x00000140                                           // 0x0061c6f8    6840010000
                         push               0x000003e7                                           // 0x0061c6fd    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c702    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061c704    e8a7d1deff
                         {disp8} jmp        _jmp_addr_0x0061c70d                                 // 0x0061c709    eb02
_jmp_addr_0x0061c70b:    xor.s              eax, eax                                             // 0x0061c70b    33c0
_jmp_addr_0x0061c70d:    push               0x0000027a                                           // 0x0061c70d    687a020000
                         push               0x00bf4584                                           // 0x0061c712    688445bf00
                         push               0x00000244                                           // 0x0061c717    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000180], eax                    // 0x0061c71c    898680010000
                         call               ___nw__FUl                                           // 0x0061c722    e869f01b00
                         add                esp, 0x0c                                            // 0x0061c727    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c72a    3bc3
                         {disp8} je         _jmp_addr_0x0061c76a                                 // 0x0061c72c    743c
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019e3        // 0x0061c72e    813dac7cd100e3190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c738    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0061c746                                 // 0x0061c73e    7606
                         add                ecx, 0x000136a4                                      // 0x0061c740    81c1a4360100
_jmp_addr_0x0061c746:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c746    8b4908
                         push               ebx                                                  // 0x0061c749    53
                         push               ecx                                                  // 0x0061c74a    51
                         push               0x1e                                                 // 0x0061c74b    6a1e
                         push               0x000000a0                                           // 0x0061c74d    68a0000000
                         push               0x0000021c                                           // 0x0061c752    681c020000
                         push               0x000001f4                                           // 0x0061c757    68f4010000
                         push               0x000003e7                                           // 0x0061c75c    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c761    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061c763    e848d1deff
                         {disp8} jmp        _jmp_addr_0x0061c76c                                 // 0x0061c768    eb02
_jmp_addr_0x0061c76a:    xor.s              eax, eax                                             // 0x0061c76a    33c0
_jmp_addr_0x0061c76c:    {disp32} mov       dword ptr [esi + 0x00000184], eax                    // 0x0061c76c    898684010000
                         call               _GetSmallTextSize__Fv                                // 0x0061c772    e899b2deff
                         {disp32} mov       edx, dword ptr [esi + 0x00000178]                    // 0x0061c777    8b9678010000
                         push               0x0000027f                                           // 0x0061c77d    687f020000
                         {disp8} mov        dword ptr [edx + 0x20], eax                          // 0x0061c782    894220
                         {disp32} mov       eax, dword ptr [esi + 0x00000178]                    // 0x0061c785    8b8678010000
                         push               0x00bf4584                                           // 0x0061c78b    688445bf00
                         push               0x00000244                                           // 0x0061c790    6844020000
                         {disp32} mov       byte ptr [eax + 0x00000291], bl                      // 0x0061c795    889891020000
                         call               ___nw__FUl                                           // 0x0061c79b    e8f0ef1b00
                         mov.s              edi, eax                                             // 0x0061c7a0    8bf8
                         add                esp, 0x0c                                            // 0x0061c7a2    83c40c
                         cmp.s              edi, ebx                                             // 0x0061c7a5    3bfb
                         {disp8} je         _jmp_addr_0x0061c7ff                                 // 0x0061c7a7    7456
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019e8        // 0x0061c7a9    813dac7cd100e8190000
                         {disp8} ja         _jmp_addr_0x0061c7bc                                 // 0x0061c7b3    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061c7b5    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0061c7c8                                 // 0x0061c7ba    eb0c
_jmp_addr_0x0061c7bc:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c7bc    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000136e0]                    // 0x0061c7c2    8d81e0360100
_jmp_addr_0x0061c7c8:    {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x0061c7c8    8b5008
                         push               edx                                                  // 0x0061c7cb    52
                         push               0x1c                                                 // 0x0061c7cc    6a1c
                         push               0x000000be                                           // 0x0061c7ce    68be000000
                         push               0x0000017c                                           // 0x0061c7d3    687c010000
                         push               0x0000008c                                           // 0x0061c7d8    688c000000
                         push               ebp                                                  // 0x0061c7dd    55
                         mov.s              ecx, edi                                             // 0x0061c7de    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061c7e0    e86bcadeff
                         mov                dword ptr [edi], 0x008ab5c0                          // 0x0061c7e5    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebp                    // 0x0061c7eb    89af3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl                      // 0x0061c7f1    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx                    // 0x0061c7f7    899f40020000
                         {disp8} jmp        _jmp_addr_0x0061c801                                 // 0x0061c7fd    eb02
_jmp_addr_0x0061c7ff:    xor.s              edi, edi                                             // 0x0061c7ff    33ff
_jmp_addr_0x0061c801:    push               0x00000280                                           // 0x0061c801    6880020000
                         push               0x00bf4584                                           // 0x0061c806    688445bf00
                         push               0x00000244                                           // 0x0061c80b    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000188], edi                    // 0x0061c810    89be88010000
                         call               ___nw__FUl                                           // 0x0061c816    e875ef1b00
                         mov.s              edi, eax                                             // 0x0061c81b    8bf8
                         add                esp, 0x0c                                            // 0x0061c81d    83c40c
                         cmp.s              edi, ebx                                             // 0x0061c820    3bfb
                         {disp8} je         _jmp_addr_0x0061c86d                                 // 0x0061c822    7449
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019e9        // 0x0061c824    813dac7cd100e9190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061c82e    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0061c83a                                 // 0x0061c833    7605
                         add                eax, 0x000136ec                                      // 0x0061c835    05ec360100
_jmp_addr_0x0061c83a:    {disp8} mov        ecx, dword ptr [eax + 0x08]                          // 0x0061c83a    8b4808
                         push               ecx                                                  // 0x0061c83d    51
                         push               0x1c                                                 // 0x0061c83e    6a1c
                         push               0x00000320                                           // 0x0061c840    6820030000
                         push               0x0000017c                                           // 0x0061c845    687c010000
                         push               ebx                                                  // 0x0061c84a    53
                         push               ebp                                                  // 0x0061c84b    55
                         mov.s              ecx, edi                                             // 0x0061c84c    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061c84e    e8fdc9deff
                         mov                dword ptr [edi], 0x008ab5c0                          // 0x0061c853    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebp                    // 0x0061c859    89af3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl                      // 0x0061c85f    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx                    // 0x0061c865    899f40020000
                         {disp8} jmp        _jmp_addr_0x0061c86f                                 // 0x0061c86b    eb02
_jmp_addr_0x0061c86d:    xor.s              edi, edi                                             // 0x0061c86d    33ff
_jmp_addr_0x0061c86f:    push               0x00000281                                           // 0x0061c86f    6881020000
                         push               0x00bf4584                                           // 0x0061c874    688445bf00
                         push               0x00000244                                           // 0x0061c879    6844020000
                         {disp32} mov       dword ptr [esi + 0x0000018c], edi                    // 0x0061c87e    89be8c010000
                         call               ___nw__FUl                                           // 0x0061c884    e807ef1b00
                         mov.s              edi, eax                                             // 0x0061c889    8bf8
                         add                esp, 0x0c                                            // 0x0061c88b    83c40c
                         cmp.s              edi, ebx                                             // 0x0061c88e    3bfb
                         {disp8} je         _jmp_addr_0x0061c8e8                                 // 0x0061c890    7456
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a72        // 0x0061c892    813dac7cd100721a0000
                         {disp8} ja         _jmp_addr_0x0061c8a5                                 // 0x0061c89c    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061c89e    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0061c8b1                                 // 0x0061c8a3    eb0c
_jmp_addr_0x0061c8a5:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c8a5    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013d58]                    // 0x0061c8ab    8d82583d0100
_jmp_addr_0x0061c8b1:    {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0061c8b1    8b4008
                         push               eax                                                  // 0x0061c8b4    50
                         push               0x1c                                                 // 0x0061c8b5    6a1c
                         push               0x000000be                                           // 0x0061c8b7    68be000000
                         push               0x0000017c                                           // 0x0061c8bc    687c010000
                         push               0x000001d6                                           // 0x0061c8c1    68d6010000
                         push               ebp                                                  // 0x0061c8c6    55
                         mov.s              ecx, edi                                             // 0x0061c8c7    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061c8c9    e882c9deff
                         mov                dword ptr [edi], 0x008ab5c0                          // 0x0061c8ce    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebp                    // 0x0061c8d4    89af3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl                      // 0x0061c8da    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx                    // 0x0061c8e0    899f40020000
                         {disp8} jmp        _jmp_addr_0x0061c8ea                                 // 0x0061c8e6    eb02
_jmp_addr_0x0061c8e8:    xor.s              edi, edi                                             // 0x0061c8e8    33ff
_jmp_addr_0x0061c8ea:    push               0x00000282                                           // 0x0061c8ea    6882020000
                         push               0x00bf4584                                           // 0x0061c8ef    688445bf00
                         push               0x000002b0                                           // 0x0061c8f4    68b0020000
                         {disp32} mov       dword ptr [esi + 0x00000190], edi                    // 0x0061c8f9    89be90010000
                         call               ___nw__FUl                                           // 0x0061c8ff    e88cee1b00
                         add                esp, 0x0c                                            // 0x0061c904    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c907    3bc3
                         {disp8} je         _jmp_addr_0x0061c92a                                 // 0x0061c909    741f
                         push               0x78                                                 // 0x0061c90b    6a78
                         push               0x000000be                                           // 0x0061c90d    68be000000
                         push               0x0000019a                                           // 0x0061c912    689a010000
                         push               0x0000008c                                           // 0x0061c917    688c000000
                         push               0x000003e7                                           // 0x0061c91c    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c921    8bc8
                         call               @__ct__9SetupListFiiiii@28                           // 0x0061c923    e828dbdeff
                         {disp8} jmp        _jmp_addr_0x0061c92c                                 // 0x0061c928    eb02
_jmp_addr_0x0061c92a:    xor.s              eax, eax                                             // 0x0061c92a    33c0
_jmp_addr_0x0061c92c:    push               0x00000283                                           // 0x0061c92c    6883020000
                         push               0x00bf4584                                           // 0x0061c931    688445bf00
                         push               0x000002b0                                           // 0x0061c936    68b0020000
                         {disp32} mov       dword ptr [esi + 0x00000194], eax                    // 0x0061c93b    898694010000
                         call               ___nw__FUl                                           // 0x0061c941    e84aee1b00
                         add                esp, 0x0c                                            // 0x0061c946    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c949    3bc3
                         {disp8} je         _jmp_addr_0x0061c96c                                 // 0x0061c94b    741f
                         push               0x78                                                 // 0x0061c94d    6a78
                         push               0x000000be                                           // 0x0061c94f    68be000000
                         push               0x0000019a                                           // 0x0061c954    689a010000
                         push               0x000001d6                                           // 0x0061c959    68d6010000
                         push               0x000003e7                                           // 0x0061c95e    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c963    8bc8
                         call               @__ct__9SetupListFiiiii@28                           // 0x0061c965    e8e6dadeff
                         {disp8} jmp        _jmp_addr_0x0061c96e                                 // 0x0061c96a    eb02
_jmp_addr_0x0061c96c:    xor.s              eax, eax                                             // 0x0061c96c    33c0
_jmp_addr_0x0061c96e:    push               0x00000284                                           // 0x0061c96e    6884020000
                         push               0x00bf4584                                           // 0x0061c973    688445bf00
                         push               0x00000244                                           // 0x0061c978    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000198], eax                    // 0x0061c97d    898698010000
                         call               ___nw__FUl                                           // 0x0061c983    e808ee1b00
                         add                esp, 0x0c                                            // 0x0061c988    83c40c
                         cmp.s              eax, ebx                                             // 0x0061c98b    3bc3
                         {disp8} je         _jmp_addr_0x0061c9cb                                 // 0x0061c98d    743c
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001ab1        // 0x0061c98f    813dac7cd100b11a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061c999    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0061c9a7                                 // 0x0061c99f    7606
                         add                ecx, 0x0001404c                                      // 0x0061c9a1    81c14c400100
_jmp_addr_0x0061c9a7:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061c9a7    8b4908
                         push               ebx                                                  // 0x0061c9aa    53
                         push               ecx                                                  // 0x0061c9ab    51
                         push               0x19                                                 // 0x0061c9ac    6a19
                         push               0x0000012c                                           // 0x0061c9ae    682c010000
                         push               0x0000021c                                           // 0x0061c9b3    681c020000
                         push               0x000000fa                                           // 0x0061c9b8    68fa000000
                         push               0x000003e7                                           // 0x0061c9bd    68e7030000
                         mov.s              ecx, eax                                             // 0x0061c9c2    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061c9c4    e8e7cedeff
                         {disp8} jmp        _jmp_addr_0x0061c9cd                                 // 0x0061c9c9    eb02
_jmp_addr_0x0061c9cb:    xor.s              eax, eax                                             // 0x0061c9cb    33c0
_jmp_addr_0x0061c9cd:    {disp32} mov       dword ptr [esi + 0x0000019c], eax                    // 0x0061c9cd    89869c010000
                         call               _GetSmallTextSize__Fv                                // 0x0061c9d3    e838b0deff
                         {disp32} mov       edx, dword ptr [esi + 0x00000198]                    // 0x0061c9d8    8b9698010000
                         push               0x00000287                                           // 0x0061c9de    6887020000
                         {disp8} mov        dword ptr [edx + 0x20], eax                          // 0x0061c9e3    894220
                         {disp32} mov       eax, dword ptr [esi + 0x00000198]                    // 0x0061c9e6    8b8698010000
                         push               0x00bf4584                                           // 0x0061c9ec    688445bf00
                         push               0x00000260                                           // 0x0061c9f1    6860020000
                         {disp32} mov       byte ptr [eax + 0x00000291], bl                      // 0x0061c9f6    889891020000
                         call               ___nw__FUl                                           // 0x0061c9fc    e88fed1b00
                         add                esp, 0x0c                                            // 0x0061ca01    83c40c
                         cmp.s              eax, ebx                                             // 0x0061ca04    3bc3
                         {disp8} je         _jmp_addr_0x0061ca37                                 // 0x0061ca06    742f
                         cmp                dword ptr [data_bytes + 0x351ca4], 0x02              // 0x0061ca08    833da47cd10002
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca0]               // 0x0061ca0f    8b0da07cd100
                         {disp8} jbe        _jmp_addr_0x0061ca1a                                 // 0x0061ca15    7603
                         add                ecx, 0x18                                            // 0x0061ca17    83c118
_jmp_addr_0x0061ca1a:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061ca1a    8b4908
                         push               0x28                                                 // 0x0061ca1d    6a28
                         push               ecx                                                  // 0x0061ca1f    51
                         push               ebx                                                  // 0x0061ca20    53
                         push               ebx                                                  // 0x0061ca21    53
                         push               0x0000017c                                           // 0x0061ca22    687c010000
                         push               0x41                                                 // 0x0061ca27    6a41
                         push               0x000004d2                                           // 0x0061ca29    68d2040000
                         mov.s              ecx, eax                                             // 0x0061ca2e    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33                   // 0x0061ca30    e8db44dfff
                         {disp8} jmp        _jmp_addr_0x0061ca39                                 // 0x0061ca35    eb02
_jmp_addr_0x0061ca37:    xor.s              eax, eax                                             // 0x0061ca37    33c0
_jmp_addr_0x0061ca39:    mov.s              ecx, esi                                             // 0x0061ca39    8bce
                         {disp32} mov       dword ptr [esi + 0x00000154], eax                    // 0x0061ca3b    898654010000
                         call               _jmp_addr_0x00621420                                 // 0x0061ca41    e8da490000
                         pop                edi                                                  // 0x0061ca46    5f
                         pop                esi                                                  // 0x0061ca47    5e
                         pop                ebp                                                  // 0x0061ca48    5d
                         pop                ebx                                                  // 0x0061ca49    5b
                         add                esp, 0x0c                                            // 0x0061ca4a    83c40c
                         ret                0x000c                                               // 0x0061ca4d    c20c00
?Destroy@ChannelBox@@UAEXXZ:
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                       // 0x0061ca50    e83b6befff
                         {disp32} mov       dword ptr [data_bytes + 0x379014], 0x00000000        // 0x0061ca55    c70514f0d30000000000
                         ret                                                                     // 0x0061ca5f    c3
?InitControls@ChannelBox@@UAEXXZ:
                         push               ecx                                                  // 0x0061ca60    51
                         push               ebx                                                  // 0x0061ca61    53
                         push               ebp                                                  // 0x0061ca62    55
                         push               esi                                                  // 0x0061ca63    56
                         xor.s              ebx, ebx                                             // 0x0061ca64    33db
                         mov.s              esi, ecx                                             // 0x0061ca66    8bf1
                         push               edi                                                  // 0x0061ca68    57
                         push               ebx                                                  // 0x0061ca69    53
                         {disp32} mov       dword ptr [esi + 0x00000a34], ebx                    // 0x0061ca6a    899e340a0000
                         {disp32} mov       dword ptr [esi + 0x00000a44], ebx                    // 0x0061ca70    899e440a0000
                         {disp8} mov        dword ptr [esi + 0x10], ebx                          // 0x0061ca76    895e10
                         call               _jmp_addr_0x0061b4d0                                 // 0x0061ca79    e852eaffff
                         {disp32} lea       ebp, dword ptr [esi + 0x00000a3c]                    // 0x0061ca7e    8dae3c0a0000
_jmp_addr_0x0061ca84:    {disp8} mov        eax, dword ptr [ebp + 0x00]                          // 0x0061ca84    8b4500
                         cmp.s              eax, ebx                                             // 0x0061ca87    3bc3
                         {disp8} je         _jmp_addr_0x0061caa2                                 // 0x0061ca89    7417
                         {disp8} mov        edi, dword ptr [eax + 0x04]                          // 0x0061ca8b    8b7804
                         push               ebx                                                  // 0x0061ca8e    53
                         push               edi                                                  // 0x0061ca8f    57
                         mov.s              ecx, ebp                                             // 0x0061ca90    8bcd
                         call               _jmp_addr_0x006220f0                                 // 0x0061ca92    e859560000
                         push               edi                                                  // 0x0061ca97    57
                         call               ??3@YAXPAX@Z                                         // 0x0061ca98    e8fb231900
                         add                esp, 0x04                                            // 0x0061ca9d    83c404
                         {disp8} jmp        _jmp_addr_0x0061ca84                                 // 0x0061caa0    ebe2
_jmp_addr_0x0061caa2:    {disp32} mov       edi, dword ptr [esi + 0x00000198]                    // 0x0061caa2    8bbe98010000
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061caa8    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061caae    3bc3
                         {disp8} jle        _jmp_addr_0x0061cac5                                 // 0x0061cab0    7e13
_jmp_addr_0x0061cab2:    dec                eax                                                  // 0x0061cab2    48
                         push               eax                                                  // 0x0061cab3    50
                         mov.s              ecx, edi                                             // 0x0061cab4    8bcf
                         call               @DeleteString__9SetupListFi@12                       // 0x0061cab6    e8a5e2deff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cabb    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cac1    3bc3
                         {disp8} jg         _jmp_addr_0x0061cab2                                 // 0x0061cac3    7fed
_jmp_addr_0x0061cac5:    {disp32} mov       edi, dword ptr [esi + 0x00000194]                    // 0x0061cac5    8bbe94010000
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cacb    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cad1    3bc3
                         {disp8} jle        _jmp_addr_0x0061cae8                                 // 0x0061cad3    7e13
_jmp_addr_0x0061cad5:    dec                eax                                                  // 0x0061cad5    48
                         push               eax                                                  // 0x0061cad6    50
                         mov.s              ecx, edi                                             // 0x0061cad7    8bcf
                         call               @DeleteString__9SetupListFi@12                       // 0x0061cad9    e882e2deff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cade    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cae4    3bc3
                         {disp8} jg         _jmp_addr_0x0061cad5                                 // 0x0061cae6    7fed
_jmp_addr_0x0061cae8:    {disp32} mov       edi, dword ptr [esi + 0x00000164]                    // 0x0061cae8    8bbe64010000
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061caee    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061caf4    3bc3
                         {disp8} jle        _jmp_addr_0x0061cb0b                                 // 0x0061caf6    7e13
_jmp_addr_0x0061caf8:    dec                eax                                                  // 0x0061caf8    48
                         push               eax                                                  // 0x0061caf9    50
                         mov.s              ecx, edi                                             // 0x0061cafa    8bcf
                         call               @DeleteString__9SetupListFi@12                       // 0x0061cafc    e85fe2deff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cb01    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cb07    3bc3
                         {disp8} jg         _jmp_addr_0x0061caf8                                 // 0x0061cb09    7fed
_jmp_addr_0x0061cb0b:    {disp32} mov       edi, dword ptr [esi + 0x00000160]                    // 0x0061cb0b    8bbe60010000
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cb11    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cb17    3bc3
                         {disp8} jle        _jmp_addr_0x0061cb2e                                 // 0x0061cb19    7e13
_jmp_addr_0x0061cb1b:    dec                eax                                                  // 0x0061cb1b    48
                         push               eax                                                  // 0x0061cb1c    50
                         mov.s              ecx, edi                                             // 0x0061cb1d    8bcf
                         call               @DeleteString__9SetupListFi@12                       // 0x0061cb1f    e83ce2deff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cb24    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cb2a    3bc3
                         {disp8} jg         _jmp_addr_0x0061cb1b                                 // 0x0061cb2c    7fed
_jmp_addr_0x0061cb2e:    {disp32} mov       edi, dword ptr [esi + 0x00000178]                    // 0x0061cb2e    8bbe78010000
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cb34    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cb3a    3bc3
                         {disp8} jle        _jmp_addr_0x0061cb51                                 // 0x0061cb3c    7e13
_jmp_addr_0x0061cb3e:    dec                eax                                                  // 0x0061cb3e    48
                         push               eax                                                  // 0x0061cb3f    50
                         mov.s              ecx, edi                                             // 0x0061cb40    8bcf
                         call               @DeleteString__9SetupListFi@12                       // 0x0061cb42    e819e2deff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cb47    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cb4d    3bc3
                         {disp8} jg         _jmp_addr_0x0061cb3e                                 // 0x0061cb4f    7fed
_jmp_addr_0x0061cb51:    {disp32} mov       edi, dword ptr [esi + 0x00000148]                    // 0x0061cb51    8bbe48010000
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cb57    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cb5d    3bc3
                         {disp8} jle        _jmp_addr_0x0061cb74                                 // 0x0061cb5f    7e13
_jmp_addr_0x0061cb61:    dec                eax                                                  // 0x0061cb61    48
                         push               eax                                                  // 0x0061cb62    50
                         mov.s              ecx, edi                                             // 0x0061cb63    8bcf
                         call               @DeleteString__9SetupListFi@12                       // 0x0061cb65    e8f6e1deff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061cb6a    8b8750020000
                         cmp.s              eax, ebx                                             // 0x0061cb70    3bc3
                         {disp8} jg         _jmp_addr_0x0061cb61                                 // 0x0061cb72    7fed
_jmp_addr_0x0061cb74:    mov                ecx, 0x00d40e20                                      // 0x0061cb74    b9200ed400
                         call               ?IsInternetLobby@MPFEConnectionStatus@@QAE_NXZ       // 0x0061cb79    e8420f0100
                         test               al, al                                               // 0x0061cb7e    84c0
                         {disp8} je         _jmp_addr_0x0061cba4                                 // 0x0061cb80    7422
                         cmp                byte ptr [data_bytes + 0x37a5fe], bl                 // 0x0061cb82    381dfe05d400
                         {disp8} je         _jmp_addr_0x0061cba4                                 // 0x0061cb88    741a
                         {disp32} mov       ecx, dword ptr [esi + 0x00000154]                    // 0x0061cb8a    8b8e54010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061cb90    8b01
                         push               ebx                                                  // 0x0061cb92    53
                         call               dword ptr [eax + 8]                                  // 0x0061cb93    ff5008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000154]                    // 0x0061cb96    8b8e54010000
                         {disp32} mov       dword ptr [ecx + 0x00000248], ebx                    // 0x0061cb9c    899948020000
                         {disp8} jmp        _jmp_addr_0x0061cbb1                                 // 0x0061cba2    eb0d
_jmp_addr_0x0061cba4:    {disp32} mov       ecx, dword ptr [esi + 0x00000154]                    // 0x0061cba4    8b8e54010000
                         mov                edx, dword ptr [ecx]                                 // 0x0061cbaa    8b11
                         push               0x1                                                  // 0x0061cbac    6a01
                         call               dword ptr [edx + 8]                                  // 0x0061cbae    ff5208
_jmp_addr_0x0061cbb1:    {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x0061cbb1    8d442410
                         push               eax                                                  // 0x0061cbb5    50
                         push               -0x1                                                 // 0x0061cbb6    6aff
                         push               0x44                                                 // 0x0061cbb8    6a44
                         push               ebx                                                  // 0x0061cbba    53
                         {disp32} mov       dword ptr [esi + 0x00000170], ebx                    // 0x0061cbbb    899e70010000
                         {disp32} mov       dword ptr [esi + 0x000001a0], ebx                    // 0x0061cbc1    899ea0010000
                         {disp8} mov        dword ptr [esi + 0x10], ebx                          // 0x0061cbc7    895e10
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000005                   // 0x0061cbca    c7461405000000
                         {disp8} mov        dword ptr [esp + 0x20], ebx                          // 0x0061cbd1    895c2420
                         call               _jmp_addr_0x008379e0                                 // 0x0061cbd5    e806ae2100
                         push               eax                                                  // 0x0061cbda    50
                         push               0x5                                                  // 0x0061cbdb    6a05
                         {disp32} mov       dword ptr [esi + 0x000009a4], eax                    // 0x0061cbdd    8986a4090000
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                                 // 0x0061cbe3    e848312100
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a2c]                    // 0x0061cbe8    8b8e2c0a0000
                         add                esp, 0x18                                            // 0x0061cbee    83c418
                         cmp.s              ecx, ebx                                             // 0x0061cbf1    3bcb
                         {disp32} mov       dword ptr [esi + 0x000009a8], eax                    // 0x0061cbf3    8986a8090000
                         {disp32} mov       dword ptr [esi + 0x00000a34], ebx                    // 0x0061cbf9    899e340a0000
                         {disp8} je         _jmp_addr_0x0061cc06                                 // 0x0061cbff    7405
                         call               ?Release@LH3DTexture@@QAEXXZ                         // 0x0061cc01    e83ab12100
_jmp_addr_0x0061cc06:    {disp32} mov       eax, dword ptr [esi + 0x00000a30]                    // 0x0061cc06    8b86300a0000
                         cmp.s              eax, ebx                                             // 0x0061cc0c    3bc3
                         {disp32} mov       dword ptr [esi + 0x00000a2c], ebx                    // 0x0061cc0e    899e2c0a0000
                         {disp8} je         _jmp_addr_0x0061cc19                                 // 0x0061cc14    7403
                         {disp8} mov        dword ptr [eax + 0x08], ebx                          // 0x0061cc16    895808
_jmp_addr_0x0061cc19:    {disp8} lea        ecx, dword ptr [esp + 0x10]                          // 0x0061cc19    8d4c2410
                         push               ecx                                                  // 0x0061cc1d    51
                         push               -0x1                                                 // 0x0061cc1e    6aff
                         push               0x44                                                 // 0x0061cc20    6a44
                         push               ebx                                                  // 0x0061cc22    53
                         {disp32} mov       dword ptr [esi + 0x00000a30], ebx                    // 0x0061cc23    899e300a0000
                         call               _jmp_addr_0x008379e0                                 // 0x0061cc29    e8b2ad2100
                         push               eax                                                  // 0x0061cc2e    50
                         push               0x5                                                  // 0x0061cc2f    6a05
                         {disp32} mov       dword ptr [esi + 0x00000a2c], eax                    // 0x0061cc31    89862c0a0000
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                                 // 0x0061cc37    e8f4302100
                         {disp32} mov       dword ptr [esi + 0x00000a30], eax                    // 0x0061cc3c    8986300a0000
                         xor.s              eax, eax                                             // 0x0061cc42    33c0
                         mov                ecx, 0x00000010                                      // 0x0061cc44    b910000000
                         {disp32} lea       edi, dword ptr [esi + 0x000009ac]                    // 0x0061cc49    8dbeac090000
                         rep stosd                                                               // 0x0061cc4f    f3ab
                         mov                ecx, 0x00000010                                      // 0x0061cc51    b910000000
                         {disp32} lea       edi, dword ptr [esi + 0x000009ec]                    // 0x0061cc56    8dbeec090000
                         rep stosd                                                               // 0x0061cc5c    f3ab
                         add                esp, 0x18                                            // 0x0061cc5e    83c418
                         mov.s              ecx, esi                                             // 0x0061cc61    8bce
                         call               _jmp_addr_0x006218e0                                 // 0x0061cc63    e8784c0000
                         mov.s              ecx, esi                                             // 0x0061cc68    8bce
                         call               _jmp_addr_0x0061cc80                                 // 0x0061cc6a    e811000000
                         pop                edi                                                  // 0x0061cc6f    5f
                         pop                esi                                                  // 0x0061cc70    5e
                         pop                ebp                                                  // 0x0061cc71    5d
                         pop                ebx                                                  // 0x0061cc72    5b
                         pop                ecx                                                  // 0x0061cc73    59
                         ret                                                                     // 0x0061cc74    c3
                         nop                                                                     // 0x0061cc75    90
                         nop                                                                     // 0x0061cc76    90
                         nop                                                                     // 0x0061cc77    90
                         nop                                                                     // 0x0061cc78    90
                         nop                                                                     // 0x0061cc79    90
                         nop                                                                     // 0x0061cc7a    90
                         nop                                                                     // 0x0061cc7b    90
                         nop                                                                     // 0x0061cc7c    90
                         nop                                                                     // 0x0061cc7d    90
                         nop                                                                     // 0x0061cc7e    90
                         nop                                                                     // 0x0061cc7f    90
_jmp_addr_0x0061cc80:    push               esi                                                  // 0x0061cc80    56
                         mov.s              esi, ecx                                             // 0x0061cc81    8bf1
                         call               _jmp_addr_0x0061d780                                 // 0x0061cc83    e8f80a0000
                         mov.s              ecx, esi                                             // 0x0061cc88    8bce
                         call               _jmp_addr_0x0061d930                                 // 0x0061cc8a    e8a10c0000
                         mov.s              ecx, esi                                             // 0x0061cc8f    8bce
                         call               _jmp_addr_0x0061ccb0                                 // 0x0061cc91    e81a000000
                         mov.s              ecx, esi                                             // 0x0061cc96    8bce
                         call               _jmp_addr_0x0061d370                                 // 0x0061cc98    e8d3060000
                         mov.s              ecx, esi                                             // 0x0061cc9d    8bce
                         call               _jmp_addr_0x0061d680                                 // 0x0061cc9f    e8dc090000
                         pop                esi                                                  // 0x0061cca4    5e
                         ret                                                                     // 0x0061cca5    c3
                         nop                                                                     // 0x0061cca6    90
                         nop                                                                     // 0x0061cca7    90
                         nop                                                                     // 0x0061cca8    90
                         nop                                                                     // 0x0061cca9    90
                         nop                                                                     // 0x0061ccaa    90
                         nop                                                                     // 0x0061ccab    90
                         nop                                                                     // 0x0061ccac    90
                         nop                                                                     // 0x0061ccad    90
                         nop                                                                     // 0x0061ccae    90
                         nop                                                                     // 0x0061ccaf    90
_jmp_addr_0x0061ccb0:    mov                eax, 0x00001018                                      // 0x0061ccb0    b818100000
                         call               __chkstk                                             // 0x0061ccb5    e8f6a11a00
                         push               ebx                                                  // 0x0061ccba    53
                         mov.s              ebx, ecx                                             // 0x0061ccbb    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x00000160]                    // 0x0061ccbd    8b8360010000
                         {disp32} fild      dword ptr [eax + 0x0000027c]                         // 0x0061ccc3    db807c020000
                         push               ebp                                                  // 0x0061ccc9    55
                         push               esi                                                  // 0x0061ccca    56
                         push               edi                                                  // 0x0061cccb    57
                         xor.s              eax, eax                                             // 0x0061cccc    33c0
                         {disp8} fstp       dword ptr [esp + 0x1c]                               // 0x0061ccce    d95c241c
                         mov                ecx, 0x00000010                                      // 0x0061ccd2    b910000000
                         {disp32} lea       edi, dword ptr [ebx + 0x000009ac]                    // 0x0061ccd7    8dbbac090000
                         rep stosd                                                               // 0x0061ccdd    f3ab
                         {disp32} mov       esi, dword ptr [ebx + 0x00000160]                    // 0x0061ccdf    8bb360010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061cce5    8b8650020000
                         test               eax, eax                                             // 0x0061cceb    85c0
                         {disp8} mov        dword ptr [esp + 0x10], ebx                          // 0x0061cced    895c2410
                         {disp8} jle        _jmp_addr_0x0061cd06                                 // 0x0061ccf1    7e13
_jmp_addr_0x0061ccf3:    dec                eax                                                  // 0x0061ccf3    48
                         push               eax                                                  // 0x0061ccf4    50
                         mov.s              ecx, esi                                             // 0x0061ccf5    8bce
                         call               @DeleteString__9SetupListFi@12                       // 0x0061ccf7    e864e0deff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061ccfc    8b8650020000
                         test               eax, eax                                             // 0x0061cd02    85c0
                         {disp8} jg         _jmp_addr_0x0061ccf3                                 // 0x0061cd04    7fed
_jmp_addr_0x0061cd06:    {disp32} mov       esi, dword ptr [ebx + 0x00000164]                    // 0x0061cd06    8bb364010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061cd0c    8b8650020000
                         test               eax, eax                                             // 0x0061cd12    85c0
                         {disp8} jle        _jmp_addr_0x0061cd29                                 // 0x0061cd14    7e13
_jmp_addr_0x0061cd16:    dec                eax                                                  // 0x0061cd16    48
                         push               eax                                                  // 0x0061cd17    50
                         mov.s              ecx, esi                                             // 0x0061cd18    8bce
                         call               @DeleteString__9SetupListFi@12                       // 0x0061cd1a    e841e0deff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061cd1f    8b8650020000
                         test               eax, eax                                             // 0x0061cd25    85c0
                         {disp8} jg         _jmp_addr_0x0061cd16                                 // 0x0061cd27    7fed
_jmp_addr_0x0061cd29:    {disp32} mov       eax, dword ptr [ebx + 0x00000a44]                    // 0x0061cd29    8b83440a0000
                         test               eax, eax                                             // 0x0061cd2f    85c0
                         {disp32} je        _jmp_addr_0x0061d361                                 // 0x0061cd31    0f842a060000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000a4c]                    // 0x0061cd37    8b834c0a0000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000a58]                    // 0x0061cd3d    8b88580a0000
                         test               ecx, ecx                                             // 0x0061cd43    85c9
                         {disp8} jne        _jmp_addr_0x0061cd51                                 // 0x0061cd45    750a
                         {disp32} mov       dword ptr [ebx + 0x00000170], 0x00000000             // 0x0061cd47    c7837001000000000000
_jmp_addr_0x0061cd51:    {disp32} mov       eax, dword ptr [eax + 0x00000a58]                    // 0x0061cd51    8b80580a0000
                         xor.s              bl, bl                                               // 0x0061cd57    32db
                         test               eax, eax                                             // 0x0061cd59    85c0
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x0061cd5b    89442418
                         {disp32} je        _jmp_addr_0x0061ce85                                 // 0x0061cd5f    0f8420010000
                         mov.s              ecx, eax                                             // 0x0061cd65    8bc8
                         {disp32} mov       eax, dword ptr [ecx + 0x0000012c]                    // 0x0061cd67    8b812c010000
                         test               eax, eax                                             // 0x0061cd6d    85c0
                         {disp32} je        _jmp_addr_0x0061ce85                                 // 0x0061cd6f    0f8410010000
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                          // 0x0061cd75    8b6804
                         test               ebp, ebp                                             // 0x0061cd78    85ed
                         {disp32} je        _jmp_addr_0x0061ce85                                 // 0x0061cd7a    0f8405010000
                         {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x0061cd80    8b7c2410
_jmp_addr_0x0061cd84:    {disp32} mov       esi, dword ptr [edi + 0x00000160]                    // 0x0061cd84    8bb760010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061cd8a    8b8650020000
                         {disp8} lea        edx, dword ptr [ebp + 0x08]                          // 0x0061cd90    8d5508
                         push               edx                                                  // 0x0061cd93    52
                         push               eax                                                  // 0x0061cd94    50
                         mov.s              ecx, esi                                             // 0x0061cd95    8bce
                         call               @InsertString__9SetupListFiPw@16                     // 0x0061cd97    e8d4e0deff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061cd9c    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x0061cda2    8d41ff
                         test               eax, eax                                             // 0x0061cda5    85c0
                         {disp8} jl         _jmp_addr_0x0061cdba                                 // 0x0061cda7    7c11
                         cmp.s              eax, ecx                                             // 0x0061cda9    3bc1
                         {disp8} jge        _jmp_addr_0x0061cdba                                 // 0x0061cdab    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]                    // 0x0061cdad    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000              // 0x0061cdb3    c7048100000000
_jmp_addr_0x0061cdba:    {disp32} mov       ecx, dword ptr [edi + 0x00000160]                    // 0x0061cdba    8b8f60010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]                    // 0x0061cdc0    8b8150020000
                         dec                eax                                                  // 0x0061cdc6    48
                         {disp8} js         _jmp_addr_0x0061cdda                                 // 0x0061cdc7    7811
                         cmp                eax, dword ptr [ecx + 0x00000250]                    // 0x0061cdc9    3b8150020000
                         {disp8} jge        _jmp_addr_0x0061cdda                                 // 0x0061cdcf    7d09
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]                    // 0x0061cdd1    8b9164020000
                         mov                dword ptr [edx + eax * 0x4], ebp                     // 0x0061cdd7    892c82
_jmp_addr_0x0061cdda:    cmp                ebp, dword ptr [edi + 0x00000170]                    // 0x0061cdda    3baf70010000
                         {disp8} jne        _jmp_addr_0x0061ce57                                 // 0x0061cde0    7575
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0061cde2    8b442410
                         {disp32} mov       esi, dword ptr [eax + 0x00000160]                    // 0x0061cde6    8bb060010000
                         {disp32} mov       edi, dword ptr [esi + 0x00000250]                    // 0x0061cdec    8bbe50020000
                         dec                edi                                                  // 0x0061cdf2    4f
                         {disp8} js         _jmp_addr_0x0061ce05                                 // 0x0061cdf3    7810
                         cmp                edi, dword ptr [esi + 0x00000250]                    // 0x0061cdf5    3bbe50020000
                         {disp8} jge        _jmp_addr_0x0061ce05                                 // 0x0061cdfb    7d08
                         {disp32} mov       dword ptr [esi + 0x00000248], edi                    // 0x0061cdfd    89be48020000
                         {disp8} jmp        _jmp_addr_0x0061ce0f                                 // 0x0061ce03    eb0a
_jmp_addr_0x0061ce05:    {disp32} mov       dword ptr [esi + 0x00000248], 0xffffffff             // 0x0061ce05    c78648020000ffffffff
_jmp_addr_0x0061ce0f:    {disp8} mov        eax, dword ptr [esi + 0x04]                          // 0x0061ce0f    8b4604
                         test               eax, eax                                             // 0x0061ce12    85c0
                         {disp8} je         _jmp_addr_0x0061ce51                                 // 0x0061ce14    743b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]               // 0x0061ce16    a100cdc400
                         test               eax, eax                                             // 0x0061ce1b    85c0
                         {disp8} je         _jmp_addr_0x0061ce51                                 // 0x0061ce1d    7432
                         test               edi, edi                                             // 0x0061ce1f    85ff
                         {disp8} jl         _jmp_addr_0x0061ce51                                 // 0x0061ce21    7c2e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061ce23    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4       // 0x0061ce29    e8926f1d00
                         cmp.s              eax, edi                                             // 0x0061ce2e    3bc7
                         {disp8} je         _jmp_addr_0x0061ce51                                 // 0x0061ce30    741f
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061ce32    8b8e50020000
                         push               edi                                                  // 0x0061ce38    57
                         dec                ecx                                                  // 0x0061ce39    49
                         push               ecx                                                  // 0x0061ce3a    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061ce3b    8b0d04c1e800
                         push               0x0                                                  // 0x0061ce41    6a00
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20// 0x0061ce43    e8986f1d00
                         push               0x0                                                  // 0x0061ce48    6a00
                         mov.s              ecx, esi                                             // 0x0061ce4a    8bce
                         call               @AutoScroll__9SetupListFb@9                          // 0x0061ce4c    e87fcfdeff
_jmp_addr_0x0061ce51:    {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x0061ce51    8b7c2410
                         mov                bl, 0x01                                             // 0x0061ce55    b301
_jmp_addr_0x0061ce57:    {disp8} mov        edx, dword ptr [esp + 0x18]                          // 0x0061ce57    8b542418
                         {disp32} mov       eax, dword ptr [edx + 0x0000012c]                    // 0x0061ce5b    8b822c010000
                         test               eax, eax                                             // 0x0061ce61    85c0
                         {disp8} je         _jmp_addr_0x0061ce81                                 // 0x0061ce63    741c
_jmp_addr_0x0061ce65:    cmp                dword ptr [eax + 0x04], ebp                          // 0x0061ce65    396804
                         mov                eax, dword ptr [eax]                                 // 0x0061ce68    8b00
                         {disp8} je         _jmp_addr_0x0061ce72                                 // 0x0061ce6a    7406
                         test               eax, eax                                             // 0x0061ce6c    85c0
                         {disp8} je         _jmp_addr_0x0061ce81                                 // 0x0061ce6e    7411
                         {disp8} jmp        _jmp_addr_0x0061ce65                                 // 0x0061ce70    ebf3
_jmp_addr_0x0061ce72:    test               eax, eax                                             // 0x0061ce72    85c0
                         {disp8} je         _jmp_addr_0x0061ce81                                 // 0x0061ce74    740b
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                          // 0x0061ce76    8b6804
                         test               ebp, ebp                                             // 0x0061ce79    85ed
                         {disp32} jne       _jmp_addr_0x0061cd84                                 // 0x0061ce7b    0f8503ffffff
_jmp_addr_0x0061ce81:    test               bl, bl                                               // 0x0061ce81    84db
                         {disp8} jne        _jmp_addr_0x0061ce93                                 // 0x0061ce83    750e
_jmp_addr_0x0061ce85:    {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x0061ce85    8b7c2410
                         {disp32} mov       dword ptr [edi + 0x00000170], 0x00000000             // 0x0061ce89    c7877001000000000000
_jmp_addr_0x0061ce93:    {disp32} mov       esi, dword ptr [edi + 0x00000164]                    // 0x0061ce93    8bb764010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061ce99    8b8650020000
                         test               eax, eax                                             // 0x0061ce9f    85c0
                         {disp8} jle        _jmp_addr_0x0061ceb6                                 // 0x0061cea1    7e13
_jmp_addr_0x0061cea3:    dec                eax                                                  // 0x0061cea3    48
                         push               eax                                                  // 0x0061cea4    50
                         mov.s              ecx, esi                                             // 0x0061cea5    8bce
                         call               @DeleteString__9SetupListFi@12                       // 0x0061cea7    e8b4dedeff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061ceac    8b8650020000
                         test               eax, eax                                             // 0x0061ceb2    85c0
                         {disp8} jg         _jmp_addr_0x0061cea3                                 // 0x0061ceb4    7fed
_jmp_addr_0x0061ceb6:    {disp32} mov       eax, dword ptr [edi + 0x00000170]                    // 0x0061ceb6    8b8770010000
                         test               eax, eax                                             // 0x0061cebc    85c0
                         {disp32} je        _jmp_addr_0x0061d0b2                                 // 0x0061cebe    0f84ee010000
                         {disp8} mov        cl, byte ptr [eax + 0x01]                            // 0x0061cec4    8a4801
                         test               cl, cl                                               // 0x0061cec7    84c9
                         {disp32} je        _jmp_addr_0x0061d0b2                                 // 0x0061cec9    0f84e3010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a3f        // 0x0061cecf    813dac7cd1003f1a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061ced9    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0061cee7                                 // 0x0061cedf    7606
                         add                ecx, 0x00013af4                                      // 0x0061cee1    81c1f43a0100
_jmp_addr_0x0061cee7:    {disp8} mov        esi, dword ptr [ecx + 0x08]                          // 0x0061cee7    8b7108
                         add                eax, 0x00000308                                      // 0x0061ceea    0508030000
                         push               eax                                                  // 0x0061ceef    50
                         call               _CHAR2WCHAR__FPc                                     // 0x0061cef0    e8ab312100
                         {disp32} mov       edi, dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]    // 0x0061cef5    8b3dd8938a00
                         add                esp, 0x04                                            // 0x0061cefb    83c404
                         push               eax                                                  // 0x0061cefe    50
                         push               esi                                                  // 0x0061ceff    56
                         {disp32} lea       edx, dword ptr [esp + 0x0000082c]                    // 0x0061cf00    8d94242c080000
                         push               0x00bea62c                                           // 0x0061cf07    682ca6be00
                         push               edx                                                  // 0x0061cf0c    52
                         call               edi                                                  // 0x0061cf0d    ffd7
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                          // 0x0061cf0f    8b5c2420
                         {disp32} mov       esi, dword ptr [ebx + 0x00000164]                    // 0x0061cf13    8bb364010000
                         add                esp, 0x10                                            // 0x0061cf19    83c410
                         push               eax                                                  // 0x0061cf1c    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061cf1d    8b8650020000
                         push               eax                                                  // 0x0061cf23    50
                         mov.s              ecx, esi                                             // 0x0061cf24    8bce
                         call               @InsertString__9SetupListFiPw@16                     // 0x0061cf26    e845dfdeff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061cf2b    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x0061cf31    8d41ff
                         test               eax, eax                                             // 0x0061cf34    85c0
                         {disp8} jl         _jmp_addr_0x0061cf49                                 // 0x0061cf36    7c11
                         cmp.s              eax, ecx                                             // 0x0061cf38    3bc1
                         {disp8} jge        _jmp_addr_0x0061cf49                                 // 0x0061cf3a    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]                    // 0x0061cf3c    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000              // 0x0061cf42    c7048100000000
_jmp_addr_0x0061cf49:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001a41        // 0x0061cf49    813dac7cd100411a0000
                         {disp8} ja         _jmp_addr_0x0061cf5c                                 // 0x0061cf53    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061cf55    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0061cf68                                 // 0x0061cf5a    eb0c
_jmp_addr_0x0061cf5c:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061cf5c    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013b0c]                    // 0x0061cf62    8d820c3b0100
_jmp_addr_0x0061cf68:    {disp32} mov       ecx, dword ptr [ebx + 0x00000170]                    // 0x0061cf68    8b8b70010000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0061cf6e    8b4008
                         add                ecx, 0x00000408                                      // 0x0061cf71    81c108040000
                         push               ecx                                                  // 0x0061cf77    51
                         push               eax                                                  // 0x0061cf78    50
                         {disp32} lea       edx, dword ptr [esp + 0x0000082c]                    // 0x0061cf79    8d94242c080000
                         push               0x00bea62c                                           // 0x0061cf80    682ca6be00
                         push               edx                                                  // 0x0061cf85    52
                         call               edi                                                  // 0x0061cf86    ffd7
                         {disp32} mov       esi, dword ptr [ebx + 0x00000164]                    // 0x0061cf88    8bb364010000
                         add                esp, 0x10                                            // 0x0061cf8e    83c410
                         push               eax                                                  // 0x0061cf91    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061cf92    8b8650020000
                         push               eax                                                  // 0x0061cf98    50
                         mov.s              ecx, esi                                             // 0x0061cf99    8bce
                         call               @InsertString__9SetupListFiPw@16                     // 0x0061cf9b    e8d0dedeff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061cfa0    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x0061cfa6    8d41ff
                         test               eax, eax                                             // 0x0061cfa9    85c0
                         {disp8} jl         _jmp_addr_0x0061cfbe                                 // 0x0061cfab    7c11
                         cmp.s              eax, ecx                                             // 0x0061cfad    3bc1
                         {disp8} jge        _jmp_addr_0x0061cfbe                                 // 0x0061cfaf    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]                    // 0x0061cfb1    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000              // 0x0061cfb7    c7048100000000
_jmp_addr_0x0061cfbe:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001a42        // 0x0061cfbe    813dac7cd100421a0000
                         {disp8} ja         _jmp_addr_0x0061cfd1                                 // 0x0061cfc8    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061cfca    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0061cfdd                                 // 0x0061cfcf    eb0c
_jmp_addr_0x0061cfd1:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061cfd1    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013b18]                    // 0x0061cfd7    8d82183b0100
_jmp_addr_0x0061cfdd:    {disp8} mov        esi, dword ptr [eax + 0x08]                          // 0x0061cfdd    8b7008
                         {disp32} mov       eax, dword ptr [ebx + 0x00000170]                    // 0x0061cfe0    8b8370010000
                         add                eax, 0x00000208                                      // 0x0061cfe6    0508020000
                         push               eax                                                  // 0x0061cfeb    50
                         call               _CHAR2WCHAR__FPc                                     // 0x0061cfec    e8af302100
                         add                esp, 0x04                                            // 0x0061cff1    83c404
                         push               eax                                                  // 0x0061cff4    50
                         push               esi                                                  // 0x0061cff5    56
                         {disp32} lea       ecx, dword ptr [esp + 0x0000082c]                    // 0x0061cff6    8d8c242c080000
                         push               0x00bea62c                                           // 0x0061cffd    682ca6be00
                         push               ecx                                                  // 0x0061d002    51
                         call               edi                                                  // 0x0061d003    ffd7
                         {disp32} mov       esi, dword ptr [ebx + 0x00000164]                    // 0x0061d005    8bb364010000
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]                    // 0x0061d00b    8b9650020000
                         add                esp, 0x10                                            // 0x0061d011    83c410
                         push               eax                                                  // 0x0061d014    50
                         push               edx                                                  // 0x0061d015    52
                         mov.s              ecx, esi                                             // 0x0061d016    8bce
                         call               @InsertString__9SetupListFiPw@16                     // 0x0061d018    e853dedeff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061d01d    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x0061d023    8d41ff
                         test               eax, eax                                             // 0x0061d026    85c0
                         {disp8} jl         _jmp_addr_0x0061d03b                                 // 0x0061d028    7c11
                         cmp.s              eax, ecx                                             // 0x0061d02a    3bc1
                         {disp8} jge        _jmp_addr_0x0061d03b                                 // 0x0061d02c    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]                    // 0x0061d02e    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000              // 0x0061d034    c7048100000000
_jmp_addr_0x0061d03b:    cmp                dword ptr [data_bytes + 0x351c9c], 0x1c              // 0x0061d03b    833d9c7cd1001c
                         {disp8} ja         _jmp_addr_0x0061d04b                                 // 0x0061d042    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c98]               // 0x0061d044    a1987cd100
                         {disp8} jmp        _jmp_addr_0x0061d057                                 // 0x0061d049    eb0c
_jmp_addr_0x0061d04b:    {disp32} mov       edx, dword ptr [data_bytes + 0x351c98]               // 0x0061d04b    8b15987cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00000150]                    // 0x0061d051    8d8250010000
_jmp_addr_0x0061d057:    {disp32} mov       ecx, dword ptr [ebx + 0x00000170]                    // 0x0061d057    8b8b70010000
                         {disp32} fld       dword ptr [ecx + 0x00000614]                         // 0x0061d05d    d98114060000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0061d063    8b4008
                         sub                esp, 0x08                                            // 0x0061d066    83ec08
                         fstp               qword ptr [esp]                                      // 0x0061d069    dd1c24
                         push               eax                                                  // 0x0061d06c    50
                         {disp32} lea       edx, dword ptr [esp + 0x00000830]                    // 0x0061d06d    8d942430080000
                         push               0x00bf45c8                                           // 0x0061d074    68c845bf00
                         push               edx                                                  // 0x0061d079    52
                         call               edi                                                  // 0x0061d07a    ffd7
                         {disp32} mov       esi, dword ptr [ebx + 0x00000164]                    // 0x0061d07c    8bb364010000
                         add                esp, 0x14                                            // 0x0061d082    83c414
                         push               eax                                                  // 0x0061d085    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d086    8b8650020000
                         push               eax                                                  // 0x0061d08c    50
                         mov.s              ecx, esi                                             // 0x0061d08d    8bce
                         call               @InsertString__9SetupListFiPw@16                     // 0x0061d08f    e8dcdddeff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061d094    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x0061d09a    8d41ff
                         test               eax, eax                                             // 0x0061d09d    85c0
                         {disp8} jl         _jmp_addr_0x0061d0b2                                 // 0x0061d09f    7c11
                         cmp.s              eax, ecx                                             // 0x0061d0a1    3bc1
                         {disp8} jge        _jmp_addr_0x0061d0b2                                 // 0x0061d0a3    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]                    // 0x0061d0a5    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000              // 0x0061d0ab    c7048100000000
_jmp_addr_0x0061d0b2:    {disp8} fld        dword ptr [esp + 0x1c]                               // 0x0061d0b2    d944241c
                         call               _jmp_addr_0x007a1400                                 // 0x0061d0b6    e845431800
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x0061d0bb    8b4c2410
                         {disp32} mov       edx, dword ptr [ecx + 0x00000160]                    // 0x0061d0bf    8b9160010000
                         {disp32} mov       dword ptr [edx + 0x0000027c], eax                    // 0x0061d0c5    89827c020000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000a2c]                    // 0x0061d0cb    8b892c0a0000
                         test               ecx, ecx                                             // 0x0061d0d1    85c9
                         {disp32} je        _jmp_addr_0x0061d361                                 // 0x0061d0d3    0f8488020000
                         push               0x0                                                  // 0x0061d0d9    6a00
                         call               _jmp_addr_0x00839010                                 // 0x0061d0db    e830bf2100
                         mov.s              ecx, eax                                             // 0x0061d0e0    8bc8
                         call               _jmp_addr_0x00870920                                 // 0x0061d0e2    e839382500
                         push               0x000002f7                                           // 0x0061d0e7    68f7020000
                         mov.s              esi, eax                                             // 0x0061d0ec    8bf0
                         push               0x00bf4584                                           // 0x0061d0ee    688445bf00
                         push               0x00001000                                           // 0x0061d0f3    6800100000
                         {disp8} mov        dword ptr [esp + 0x2c], esi                          // 0x0061d0f8    8974242c
                         call               ___nw__FUl                                           // 0x0061d0fc    e88fe61b00
                         add                esp, 0x0c                                            // 0x0061d101    83c40c
                         test               esi, esi                                             // 0x0061d104    85f6
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x0061d106    8944241c
                         {disp32} je        _jmp_addr_0x0061d354                                 // 0x0061d10a    0f8444020000
                         xor.s              ecx, ecx                                             // 0x0061d110    33c9
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x0061d112    894c2414
                         {disp8} jmp        _jmp_addr_0x0061d11c                                 // 0x0061d116    eb04
_jmp_addr_0x0061d118:    {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0061d118    8b4c2414
_jmp_addr_0x0061d11c:    cmp                ecx, 0x05                                            // 0x0061d11c    83f905
                         {disp8} jne        _jmp_addr_0x0061d138                                 // 0x0061d11f    7517
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0061d121    8b542410
                         {disp32} mov       eax, dword ptr [edx + 0x00000170]                    // 0x0061d125    8b8270010000
                         test               eax, eax                                             // 0x0061d12b    85c0
                         {disp8} je         _jmp_addr_0x0061d134                                 // 0x0061d12d    7405
                         {disp8} mov        edi, dword ptr [eax + 0x04]                          // 0x0061d12f    8b7804
                         {disp8} jmp        _jmp_addr_0x0061d150                                 // 0x0061d132    eb1c
_jmp_addr_0x0061d134:    xor.s              edi, edi                                             // 0x0061d134    33ff
                         {disp8} jmp        _jmp_addr_0x0061d150                                 // 0x0061d136    eb18
_jmp_addr_0x0061d138:    {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0061d138    8b542410
                         {disp32} mov       esi, dword ptr [edx + 0x00000a4c]                    // 0x0061d13c    8bb24c0a0000
                         mov.s              eax, ecx                                             // 0x0061d142    8bc1
                         shl                eax, 6                                               // 0x0061d144    c1e006
                         add.s              eax, ecx                                             // 0x0061d147    03c1
                         {disp32} mov       edi, dword ptr [esi + eax * 0x8 + 0x00000228]        // 0x0061d149    8bbcc628020000
_jmp_addr_0x0061d150:    test               edi, edi                                             // 0x0061d150    85ff
                         {disp8} mov        dword ptr [esp + 0x18], edi                          // 0x0061d152    897c2418
                         {disp32} mov       dword ptr [edx + ecx * 0x4 + 0x000009ac], 0x00000000 // 0x0061d156    c7848aac09000000000000
                         {disp32} je        _jmp_addr_0x0061d30c                                 // 0x0061d161    0f84a5010000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x0061d167    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0061d16b    8b442414
                         cmp                edi, dword ptr [ecx + eax * 0x4 + 0x000009ec]        // 0x0061d16f    3bbc81ec090000
                         {disp8} jne        _jmp_addr_0x0061d188                                 // 0x0061d176    7510
                         {disp32} mov       dword ptr [ecx + eax * 0x4 + 0x000009ac], 0x00000001 // 0x0061d178    c78481ac09000001000000
                         {disp32} jmp       _jmp_addr_0x0061d30c                                 // 0x0061d183    e984010000
_jmp_addr_0x0061d188:    {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x0061d188    8b4c2410
                         {disp32} mov       ebx, dword ptr [ecx + 0x00000a4c]                    // 0x0061d18c    8b994c0a0000
                         xor.s              esi, esi                                             // 0x0061d192    33f6
                         xor.s              ebp, ebp                                             // 0x0061d194    33ed
_jmp_addr_0x0061d196:    mov                edx, dword ptr [ebx]                                 // 0x0061d196    8b13
                         test               edx, edx                                             // 0x0061d198    85d2
                         {disp8} je         _jmp_addr_0x0061d1ed                                 // 0x0061d19a    7451
_jmp_addr_0x0061d19c:    mov                ecx, dword ptr [edx]                                 // 0x0061d19c    8b0a
                         test               ecx, ecx                                             // 0x0061d19e    85c9
                         {disp8} je         _jmp_addr_0x0061d1e0                                 // 0x0061d1a0    743e
                         {disp32} mov       eax, dword ptr [ecx + 0x0000012c]                    // 0x0061d1a2    8b812c010000
                         test               eax, eax                                             // 0x0061d1a8    85c0
                         {disp8} je         _jmp_addr_0x0061d1dc                                 // 0x0061d1aa    7430
                         {disp8} mov        esi, dword ptr [eax + 0x04]                          // 0x0061d1ac    8b7004
                         test               esi, esi                                             // 0x0061d1af    85f6
                         {disp8} je         _jmp_addr_0x0061d1e4                                 // 0x0061d1b1    7431
_jmp_addr_0x0061d1b3:    cmp                dword ptr [esi + 0x04], edi                          // 0x0061d1b3    397e04
                         {disp8} je         _jmp_addr_0x0061d1e0                                 // 0x0061d1b6    7428
                         {disp32} mov       eax, dword ptr [ecx + 0x0000012c]                    // 0x0061d1b8    8b812c010000
                         test               eax, eax                                             // 0x0061d1be    85c0
                         {disp8} je         _jmp_addr_0x0061d1dc                                 // 0x0061d1c0    741a
_jmp_addr_0x0061d1c2:    cmp                dword ptr [eax + 0x04], esi                          // 0x0061d1c2    397004
                         mov                eax, dword ptr [eax]                                 // 0x0061d1c5    8b00
                         {disp8} je         _jmp_addr_0x0061d1cf                                 // 0x0061d1c7    7406
                         test               eax, eax                                             // 0x0061d1c9    85c0
                         {disp8} je         _jmp_addr_0x0061d1dc                                 // 0x0061d1cb    740f
                         {disp8} jmp        _jmp_addr_0x0061d1c2                                 // 0x0061d1cd    ebf3
_jmp_addr_0x0061d1cf:    test               eax, eax                                             // 0x0061d1cf    85c0
                         {disp8} je         _jmp_addr_0x0061d1dc                                 // 0x0061d1d1    7409
                         {disp8} mov        esi, dword ptr [eax + 0x04]                          // 0x0061d1d3    8b7004
                         test               esi, esi                                             // 0x0061d1d6    85f6
                         {disp8} je         _jmp_addr_0x0061d1e4                                 // 0x0061d1d8    740a
                         {disp8} jmp        _jmp_addr_0x0061d1b3                                 // 0x0061d1da    ebd7
_jmp_addr_0x0061d1dc:    xor.s              esi, esi                                             // 0x0061d1dc    33f6
                         {disp8} jmp        _jmp_addr_0x0061d1e4                                 // 0x0061d1de    eb04
_jmp_addr_0x0061d1e0:    test               esi, esi                                             // 0x0061d1e0    85f6
                         {disp8} jne        _jmp_addr_0x0061d1ff                                 // 0x0061d1e2    751b
_jmp_addr_0x0061d1e4:    {disp8} mov        edx, dword ptr [edx + 0x04]                          // 0x0061d1e4    8b5204
                         test               edx, edx                                             // 0x0061d1e7    85d2
                         {disp8} jne        _jmp_addr_0x0061d19c                                 // 0x0061d1e9    75b1
                         {disp8} jmp        _jmp_addr_0x0061d1f1                                 // 0x0061d1eb    eb04
_jmp_addr_0x0061d1ed:    test               esi, esi                                             // 0x0061d1ed    85f6
                         {disp8} jne        _jmp_addr_0x0061d1ff                                 // 0x0061d1ef    750e
_jmp_addr_0x0061d1f1:    inc                ebp                                                  // 0x0061d1f1    45
                         add                ebx, 0x08                                            // 0x0061d1f2    83c308
                         cmp                ebp, 0x05                                            // 0x0061d1f5    83fd05
                         {disp8} jl         _jmp_addr_0x0061d196                                 // 0x0061d1f8    7c9c
                         {disp32} jmp       _jmp_addr_0x0061d30c                                 // 0x0061d1fa    e90d010000
_jmp_addr_0x0061d1ff:    {disp32} mov       eax, dword ptr [esi + 0x0000060c]                    // 0x0061d1ff    8b860c060000
                         test               eax, eax                                             // 0x0061d205    85c0
                         {disp32} je        _jmp_addr_0x0061d30c                                 // 0x0061d207    0f84ff000000
                         {disp32} lea       edx, dword ptr [esp + 0x00000424]                    // 0x0061d20d    8d942424040000
                         push               edx                                                  // 0x0061d214    52
                         push               0x000003ff                                           // 0x0061d215    68ff030000
                         call               dword ptr [__imp__GetTempPathA@4]                    // 0x0061d21a    ff159c918a00
                         {disp8} lea        eax, dword ptr [esp + 0x24]                          // 0x0061d220    8d442424
                         push               eax                                                  // 0x0061d224    50
                         push               0x0                                                  // 0x0061d225    6a00
                         push               0x00bf3264                                           // 0x0061d227    686432bf00
                         {disp32} lea       ecx, dword ptr [esp + 0x00000430]                    // 0x0061d22c    8d8c2430040000
                         push               ecx                                                  // 0x0061d233    51
                         call               dword ptr [__imp__GetTempFileNameA@4]                // 0x0061d234    ff1564918a00
                         {disp32} mov       edx, dword ptr [esi + 0x00000608]                    // 0x0061d23a    8b9608060000
                         {disp32} mov       eax, dword ptr [esi + 0x0000060c]                    // 0x0061d240    8b860c060000
                         push               0x0                                                  // 0x0061d246    6a00
                         push               edx                                                  // 0x0061d248    52
                         push               eax                                                  // 0x0061d249    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                          // 0x0061d24a    8d4c2430
                         push               ecx                                                  // 0x0061d24e    51
                         call               _jmp_addr_0x007bd030                                 // 0x0061d24f    e8dcfd1900
                         add                esp, 0x10                                            // 0x0061d254    83c410
                         push               0x10                                                 // 0x0061d257    6a10
                         push               0x0                                                  // 0x0061d259    6a00
                         push               0x0                                                  // 0x0061d25b    6a00
                         push               0x0                                                  // 0x0061d25d    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x34]                          // 0x0061d25f    8d542434
                         push               edx                                                  // 0x0061d263    52
                         push               0x0                                                  // 0x0061d264    6a00
                         call               dword ptr [__imp__LoadImageA@4]                      // 0x0061d266    ff15c4978a00
                         mov.s              ebx, eax                                             // 0x0061d26c    8bd8
                         test               ebx, ebx                                             // 0x0061d26e    85db
                         {disp32} je        _jmp_addr_0x0061d2ff                                 // 0x0061d270    0f8489000000
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                          // 0x0061d276    8b7c241c
                         push               edi                                                  // 0x0061d27a    57
                         push               ebx                                                  // 0x0061d27b    53
                         call               _jmp_addr_0x005de490                                 // 0x0061d27c    e80f12fcff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x0061d281    8b4c241c
                         mov.s              eax, ecx                                             // 0x0061d285    8bc1
                         cdq                                                                     // 0x0061d287    99
                         and                edx, 0x03                                            // 0x0061d288    83e203
                         add.s              eax, edx                                             // 0x0061d28b    03c2
                         sar                eax, 2                                               // 0x0061d28d    c1f802
                         shl                eax, 8                                               // 0x0061d290    c1e008
                         and                ecx, 0x03                                            // 0x0061d293    83e103
                         add.s              eax, ecx                                             // 0x0061d296    03c1
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x0061d298    8b4c2428
                         shl                eax, 7                                               // 0x0061d29c    c1e007
                         add                esp, 0x08                                            // 0x0061d29f    83c408
                         add.s              eax, ecx                                             // 0x0061d2a2    03c1
                         mov                ebp, 0x00000040                                      // 0x0061d2a4    bd40000000
_jmp_addr_0x0061d2a9:    xor.s              ecx, ecx                                             // 0x0061d2a9    33c9
                         mov.s              esi, eax                                             // 0x0061d2ab    8bf0
_jmp_addr_0x0061d2ad:    xor.s              edx, edx                                             // 0x0061d2ad    33d2
                         mov                dl, byte ptr [edi + ecx * 0x1]                       // 0x0061d2af    8a140f
                         shr                dl, 4                                                // 0x0061d2b2    c0ea04
                         movzx              dx, dl                                               // 0x0061d2b5    660fb6d2
                         add                esi, 0x02                                            // 0x0061d2b9    83c602
                         shl                edx, 0xc                                             // 0x0061d2bc    c1e20c
                         add                edx, 0x00000fff                                      // 0x0061d2bf    81c2ff0f0000
                         {disp8} mov        word ptr [esi + -0x02], dx                           // 0x0061d2c5    668956fe
                         inc                ecx                                                  // 0x0061d2c9    41
                         cmp                ecx, 0x40                                            // 0x0061d2ca    83f940
                         {disp8} jl         _jmp_addr_0x0061d2ad                                 // 0x0061d2cd    7cde
                         {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0061d2cf    8b542410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0061d2d3    8b4c2414
                         {disp8} mov        esi, dword ptr [esp + 0x18]                          // 0x0061d2d7    8b742418
                         add                eax, 0x00000200                                      // 0x0061d2db    0500020000
                         add                edi, 0x40                                            // 0x0061d2e0    83c740
                         dec                ebp                                                  // 0x0061d2e3    4d
                         {disp32} mov       dword ptr [edx + ecx * 0x4 + 0x000009ec], esi        // 0x0061d2e4    89b48aec090000
                         {disp32} mov       dword ptr [edx + ecx * 0x4 + 0x000009ac], 0x00000001 // 0x0061d2eb    c7848aac09000001000000
                         {disp8} jne        _jmp_addr_0x0061d2a9                                 // 0x0061d2f6    75b1
                         push               ebx                                                  // 0x0061d2f8    53
                         call               dword ptr [__imp__DeleteObject@4]                    // 0x0061d2f9    ff156c908a00
_jmp_addr_0x0061d2ff:    {disp8} lea        eax, dword ptr [esp + 0x24]                          // 0x0061d2ff    8d442424
                         push               eax                                                  // 0x0061d303    50
                         call               __unlink                                             // 0x0061d304    e820991a00
                         add                esp, 0x04                                            // 0x0061d309    83c404
_jmp_addr_0x0061d30c:    {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0061d30c    8b442414
                         inc                eax                                                  // 0x0061d310    40
                         cmp                eax, 0x05                                            // 0x0061d311    83f805
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x0061d314    89442414
                         {disp32} jle       _jmp_addr_0x0061d118                                 // 0x0061d318    0f8efafdffff
                         {disp8} mov        esi, dword ptr [esp + 0x10]                          // 0x0061d31e    8b742410
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a2c]                    // 0x0061d322    8b8e2c0a0000
                         call               _jmp_addr_0x00839010                                 // 0x0061d328    e8e3bc2100
                         mov.s              ecx, eax                                             // 0x0061d32d    8bc8
                         call               _jmp_addr_0x00870990                                 // 0x0061d32f    e85c362500
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a2c]                    // 0x0061d334    8b8e2c0a0000
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                          // 0x0061d33a    8b4110
                         and                eax, 0x3f                                            // 0x0061d33d    83e03f
                         cmp                eax, 0x08                                            // 0x0061d340    83f808
                         {disp8} je         _jmp_addr_0x0061d34a                                 // 0x0061d343    7405
                         cmp                eax, 0x04                                            // 0x0061d345    83f804
                         {disp8} jne        _jmp_addr_0x0061d354                                 // 0x0061d348    750a
_jmp_addr_0x0061d34a:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001             // 0x0061d34a    c7813801000001000000
_jmp_addr_0x0061d354:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x0061d354    8b4c241c
                         push               ecx                                                  // 0x0061d358    51
                         call               ??3@YAXPAX@Z                                         // 0x0061d359    e83a1b1900
                         add                esp, 0x04                                            // 0x0061d35e    83c404
_jmp_addr_0x0061d361:    pop                edi                                                  // 0x0061d361    5f
                         pop                esi                                                  // 0x0061d362    5e
                         pop                ebp                                                  // 0x0061d363    5d
                         pop                ebx                                                  // 0x0061d364    5b
                         add                esp, 0x00001018                                      // 0x0061d365    81c418100000
                         ret                                                                     // 0x0061d36b    c3
                         nop                                                                     // 0x0061d36c    90
                         nop                                                                     // 0x0061d36d    90
                         nop                                                                     // 0x0061d36e    90
                         nop                                                                     // 0x0061d36f    90
_jmp_addr_0x0061d370:    sub                esp, 0x00000808                                      // 0x0061d370    81ec08080000
                         push               edi                                                  // 0x0061d376    57
                         mov.s              edi, ecx                                             // 0x0061d377    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000a44]                    // 0x0061d379    8b87440a0000
                         test               eax, eax                                             // 0x0061d37f    85c0
                         {disp32} je        _jmp_addr_0x0061d66e                                 // 0x0061d381    0f84e7020000
                         push               esi                                                  // 0x0061d387    56
                         {disp32} mov       esi, dword ptr [edi + 0x00000194]                    // 0x0061d388    8bb794010000
                         {disp32} fild      dword ptr [esi + 0x0000027c]                         // 0x0061d38e    db867c020000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d394    8b8650020000
                         test               eax, eax                                             // 0x0061d39a    85c0
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x0061d39c    d95c2408
                         {disp8} jle        _jmp_addr_0x0061d3b5                                 // 0x0061d3a0    7e13
_jmp_addr_0x0061d3a2:    dec                eax                                                  // 0x0061d3a2    48
                         push               eax                                                  // 0x0061d3a3    50
                         mov.s              ecx, esi                                             // 0x0061d3a4    8bce
                         call               @DeleteString__9SetupListFi@12                       // 0x0061d3a6    e8b5d9deff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d3ab    8b8650020000
                         test               eax, eax                                             // 0x0061d3b1    85c0
                         {disp8} jg         _jmp_addr_0x0061d3a2                                 // 0x0061d3b3    7fed
_jmp_addr_0x0061d3b5:    {disp32} mov       esi, dword ptr [edi + 0x00000198]                    // 0x0061d3b5    8bb798010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d3bb    8b8650020000
                         test               eax, eax                                             // 0x0061d3c1    85c0
                         {disp8} jle        _jmp_addr_0x0061d3d8                                 // 0x0061d3c3    7e13
_jmp_addr_0x0061d3c5:    dec                eax                                                  // 0x0061d3c5    48
                         push               eax                                                  // 0x0061d3c6    50
                         mov.s              ecx, esi                                             // 0x0061d3c7    8bce
                         call               @DeleteString__9SetupListFi@12                       // 0x0061d3c9    e892d9deff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d3ce    8b8650020000
                         test               eax, eax                                             // 0x0061d3d4    85c0
                         {disp8} jg         _jmp_addr_0x0061d3c5                                 // 0x0061d3d6    7fed
_jmp_addr_0x0061d3d8:    {disp32} mov       ecx, dword ptr [edi + 0x00000a4c]                    // 0x0061d3d8    8b8f4c0a0000
                         push               ebx                                                  // 0x0061d3de    53
                         push               ebp                                                  // 0x0061d3df    55
                         push               0x0                                                  // 0x0061d3e0    6a00
                         xor.s              bl, bl                                               // 0x0061d3e2    32db
                         call               _jmp_addr_0x00626040                                 // 0x0061d3e4    e8578c0000
                         mov.s              ebp, eax                                             // 0x0061d3e9    8be8
                         test               ebp, ebp                                             // 0x0061d3eb    85ed
                         {disp32} je        _jmp_addr_0x0061d5cc                                 // 0x0061d3ed    0f84d9010000
_jmp_addr_0x0061d3f3:    push               ebp                                                  // 0x0061d3f3    55
                         call               _jmp_addr_0x005990a0                                 // 0x0061d3f4    e8a7bcf7ff
                         add                esp, 0x04                                            // 0x0061d3f9    83c404
                         test               eax, eax                                             // 0x0061d3fc    85c0
                         push               ebp                                                  // 0x0061d3fe    55
                         {disp8} je         _jmp_addr_0x0061d408                                 // 0x0061d3ff    7407
                         call               _jmp_addr_0x005990f0                                 // 0x0061d401    e8eabcf7ff
                         {disp8} jmp        _jmp_addr_0x0061d40d                                 // 0x0061d406    eb05
_jmp_addr_0x0061d408:    call               _CHAR2WCHAR__FPc                                     // 0x0061d408    e8932c2100
_jmp_addr_0x0061d40d:    add                esp, 0x04                                            // 0x0061d40d    83c404
                         push               eax                                                  // 0x0061d410    50
                         {disp8} lea        eax, dword ptr [esp + 0x18]                          // 0x0061d411    8d442418
                         push               0x009cd6c8                                           // 0x0061d415    68c8d69c00
                         push               eax                                                  // 0x0061d41a    50
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]         // 0x0061d41b    ff15d8938a00
                         {disp32} mov       esi, dword ptr [edi + 0x00000194]                    // 0x0061d421    8bb794010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061d427    8b8e50020000
                         add                esp, 0x0c                                            // 0x0061d42d    83c40c
                         push               eax                                                  // 0x0061d430    50
                         push               ecx                                                  // 0x0061d431    51
                         mov.s              ecx, esi                                             // 0x0061d432    8bce
                         call               @InsertString__9SetupListFiPw@16                     // 0x0061d434    e837dadeff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061d439    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x0061d43f    8d41ff
                         test               eax, eax                                             // 0x0061d442    85c0
                         {disp8} jl         _jmp_addr_0x0061d457                                 // 0x0061d444    7c11
                         cmp.s              eax, ecx                                             // 0x0061d446    3bc1
                         {disp8} jge        _jmp_addr_0x0061d457                                 // 0x0061d448    7d0d
                         {disp32} mov       edx, dword ptr [esi + 0x00000268]                    // 0x0061d44a    8b9668020000
                         mov                dword ptr [edx + eax * 0x4], 0x00000000              // 0x0061d450    c7048200000000
_jmp_addr_0x0061d457:    {disp32} mov       ecx, dword ptr [edi + 0x00000194]                    // 0x0061d457    8b8f94010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]                    // 0x0061d45d    8b8150020000
                         dec                eax                                                  // 0x0061d463    48
                         {disp8} js         _jmp_addr_0x0061d47d                                 // 0x0061d464    7817
                         cmp                eax, dword ptr [ecx + 0x00000250]                    // 0x0061d466    3b8150020000
                         {disp8} jge        _jmp_addr_0x0061d47d                                 // 0x0061d46c    7d0f
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000264]                    // 0x0061d46e    8b8964020000
                         {disp32} mov       edx, dword ptr [ebp + 0x00000324]                    // 0x0061d474    8b9524030000
                         mov                dword ptr [ecx + eax * 0x4], edx                     // 0x0061d47a    891481
_jmp_addr_0x0061d47d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x379a94]               // 0x0061d47d    8b0d94fad300
                         {disp32} mov       eax, dword ptr [ebp + 0x00000324]                    // 0x0061d483    8b8524030000
                         cmp                eax, dword ptr [ecx + 0x00000300]                    // 0x0061d489    3b8100030000
                         {disp8} jne        _jmp_addr_0x0061d509                                 // 0x0061d48f    7578
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a24        // 0x0061d491    813dac7cd100241a0000
                         {disp8} ja         _jmp_addr_0x0061d4a5                                 // 0x0061d49b    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061d49d    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0061d4b1                                 // 0x0061d4a3    eb0c
_jmp_addr_0x0061d4a5:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061d4a5    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x000139b0]                    // 0x0061d4ab    8d8ab0390100
_jmp_addr_0x0061d4b1:    {disp32} mov       eax, dword ptr [edi + 0x00000194]                    // 0x0061d4b1    8b8794010000
                         {disp32} mov       edx, dword ptr [eax + 0x00000250]                    // 0x0061d4b7    8b9050020000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                          // 0x0061d4bd    8b4908
                         {disp32} mov       eax, dword ptr [eax + 0x00000258]                    // 0x0061d4c0    8b8058020000
                         push               ecx                                                  // 0x0061d4c6    51
                         shl                edx, 9                                               // 0x0061d4c7    c1e209
                         {disp32} lea       ecx, dword ptr [edx + eax * 0x1 + -0x00000200]       // 0x0061d4ca    8d8c0200feffff
                         push               ecx                                                  // 0x0061d4d1    51
                         call               _wcscat                                              // 0x0061d4d2    e8b58a1a00
                         {disp32} mov       ecx, dword ptr [edi + 0x00000194]                    // 0x0061d4d7    8b8f94010000
                         add                esp, 0x08                                            // 0x0061d4dd    83c408
                         call               ?UpdateHeights@SetupList@@QAEXXZ                     // 0x0061d4e0    e80bd6deff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000194]                    // 0x0061d4e5    8b8f94010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]                    // 0x0061d4eb    8b8150020000
                         dec                eax                                                  // 0x0061d4f1    48
                         {disp8} js         _jmp_addr_0x0061d509                                 // 0x0061d4f2    7815
                         cmp                eax, dword ptr [ecx + 0x00000250]                    // 0x0061d4f4    3b8150020000
                         {disp8} jge        _jmp_addr_0x0061d509                                 // 0x0061d4fa    7d0d
                         {disp32} mov       edx, dword ptr [ecx + 0x00000268]                    // 0x0061d4fc    8b9168020000
                         mov                dword ptr [edx + eax * 0x4], 0x00ffff00              // 0x0061d502    c7048200ffff00
_jmp_addr_0x0061d509:    {disp32} mov       al, byte ptr [ebp + 0x00000329]                      // 0x0061d509    8a8529030000
                         test               al, al                                               // 0x0061d50f    84c0
                         {disp8} jne        _jmp_addr_0x0061d537                                 // 0x0061d511    7524
                         {disp32} mov       ecx, dword ptr [edi + 0x00000194]                    // 0x0061d513    8b8f94010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]                    // 0x0061d519    8b8150020000
                         dec                eax                                                  // 0x0061d51f    48
                         {disp8} js         _jmp_addr_0x0061d537                                 // 0x0061d520    7815
                         cmp                eax, dword ptr [ecx + 0x00000250]                    // 0x0061d522    3b8150020000
                         {disp8} jge        _jmp_addr_0x0061d537                                 // 0x0061d528    7d0d
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000268]                    // 0x0061d52a    8b8968020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00ff4040              // 0x0061d530    c704814040ff00
_jmp_addr_0x0061d537:    {disp32} mov       edx, dword ptr [ebp + 0x00000324]                    // 0x0061d537    8b9524030000
                         cmp                edx, dword ptr [edi + 0x000001a0]                    // 0x0061d53d    3b97a0010000
                         {disp8} jne        _jmp_addr_0x0061d5b2                                 // 0x0061d543    756d
                         {disp32} mov       esi, dword ptr [edi + 0x00000194]                    // 0x0061d545    8bb794010000
                         {disp32} mov       ebx, dword ptr [esi + 0x00000250]                    // 0x0061d54b    8b9e50020000
                         dec                ebx                                                  // 0x0061d551    4b
                         {disp8} js         _jmp_addr_0x0061d564                                 // 0x0061d552    7810
                         cmp                ebx, dword ptr [esi + 0x00000250]                    // 0x0061d554    3b9e50020000
                         {disp8} jge        _jmp_addr_0x0061d564                                 // 0x0061d55a    7d08
                         {disp32} mov       dword ptr [esi + 0x00000248], ebx                    // 0x0061d55c    899e48020000
                         {disp8} jmp        _jmp_addr_0x0061d56e                                 // 0x0061d562    eb0a
_jmp_addr_0x0061d564:    {disp32} mov       dword ptr [esi + 0x00000248], 0xffffffff             // 0x0061d564    c78648020000ffffffff
_jmp_addr_0x0061d56e:    {disp8} mov        eax, dword ptr [esi + 0x04]                          // 0x0061d56e    8b4604
                         test               eax, eax                                             // 0x0061d571    85c0
                         {disp8} je         _jmp_addr_0x0061d5b0                                 // 0x0061d573    743b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]               // 0x0061d575    a100cdc400
                         test               eax, eax                                             // 0x0061d57a    85c0
                         {disp8} je         _jmp_addr_0x0061d5b0                                 // 0x0061d57c    7432
                         test               ebx, ebx                                             // 0x0061d57e    85db
                         {disp8} jl         _jmp_addr_0x0061d5b0                                 // 0x0061d580    7c2e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061d582    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4       // 0x0061d588    e833681d00
                         cmp.s              eax, ebx                                             // 0x0061d58d    3bc3
                         {disp8} je         _jmp_addr_0x0061d5b0                                 // 0x0061d58f    741f
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d591    8b8650020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061d597    8b0d04c1e800
                         push               ebx                                                  // 0x0061d59d    53
                         dec                eax                                                  // 0x0061d59e    48
                         push               eax                                                  // 0x0061d59f    50
                         push               0x0                                                  // 0x0061d5a0    6a00
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20// 0x0061d5a2    e839681d00
                         push               0x0                                                  // 0x0061d5a7    6a00
                         mov.s              ecx, esi                                             // 0x0061d5a9    8bce
                         call               @AutoScroll__9SetupListFb@9                          // 0x0061d5ab    e820c8deff
_jmp_addr_0x0061d5b0:    mov                bl, 0x01                                             // 0x0061d5b0    b301
_jmp_addr_0x0061d5b2:    {disp32} mov       ecx, dword ptr [edi + 0x00000a4c]                    // 0x0061d5b2    8b8f4c0a0000
                         push               ebp                                                  // 0x0061d5b8    55
                         call               _jmp_addr_0x00626040                                 // 0x0061d5b9    e8828a0000
                         mov.s              ebp, eax                                             // 0x0061d5be    8be8
                         test               ebp, ebp                                             // 0x0061d5c0    85ed
                         {disp32} jne       _jmp_addr_0x0061d3f3                                 // 0x0061d5c2    0f852bfeffff
                         test               bl, bl                                               // 0x0061d5c8    84db
                         {disp8} jne        _jmp_addr_0x0061d5d6                                 // 0x0061d5ca    750a
_jmp_addr_0x0061d5cc:    {disp32} mov       dword ptr [edi + 0x000001a0], 0x00000000             // 0x0061d5cc    c787a001000000000000
_jmp_addr_0x0061d5d6:    {disp32} mov       esi, dword ptr [edi + 0x00000198]                    // 0x0061d5d6    8bb798010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d5dc    8b8650020000
                         test               eax, eax                                             // 0x0061d5e2    85c0
                         pop                ebp                                                  // 0x0061d5e4    5d
                         pop                ebx                                                  // 0x0061d5e5    5b
                         {disp8} jle        _jmp_addr_0x0061d5fb                                 // 0x0061d5e6    7e13
_jmp_addr_0x0061d5e8:    dec                eax                                                  // 0x0061d5e8    48
                         push               eax                                                  // 0x0061d5e9    50
                         mov.s              ecx, esi                                             // 0x0061d5ea    8bce
                         call               @DeleteString__9SetupListFi@12                       // 0x0061d5ec    e86fd7deff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d5f1    8b8650020000
                         test               eax, eax                                             // 0x0061d5f7    85c0
                         {disp8} jg         _jmp_addr_0x0061d5e8                                 // 0x0061d5f9    7fed
_jmp_addr_0x0061d5fb:    {disp32} mov       eax, dword ptr [edi + 0x000001a0]                    // 0x0061d5fb    8b87a0010000
                         test               eax, eax                                             // 0x0061d601    85c0
                         {disp8} je         _jmp_addr_0x0061d658                                 // 0x0061d603    7453
                         {disp32} mov       ecx, dword ptr [edi + 0x00000a4c]                    // 0x0061d605    8b8f4c0a0000
                         push               eax                                                  // 0x0061d60b    50
                         call               _jmp_addr_0x00626020                                 // 0x0061d60c    e80f8a0000
                         test               eax, eax                                             // 0x0061d611    85c0
                         {disp8} je         _jmp_addr_0x0061d658                                 // 0x0061d613    7443
                         {disp32} mov       cl, byte ptr [eax + 0x00000328]                      // 0x0061d615    8a8828030000
                         test               cl, cl                                               // 0x0061d61b    84c9
                         {disp8} je         _jmp_addr_0x0061d658                                 // 0x0061d61d    7439
                         {disp32} mov       esi, dword ptr [edi + 0x00000198]                    // 0x0061d61f    8bb798010000
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]                    // 0x0061d625    8b9650020000
                         {disp32} lea       ecx, dword ptr [edi + 0x000001a4]                    // 0x0061d62b    8d8fa4010000
                         push               ecx                                                  // 0x0061d631    51
                         push               edx                                                  // 0x0061d632    52
                         mov.s              ecx, esi                                             // 0x0061d633    8bce
                         call               @InsertString__9SetupListFiPw@16                     // 0x0061d635    e836d8deff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061d63a    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x0061d640    8d41ff
                         test               eax, eax                                             // 0x0061d643    85c0
                         {disp8} jl         _jmp_addr_0x0061d658                                 // 0x0061d645    7c11
                         cmp.s              eax, ecx                                             // 0x0061d647    3bc1
                         {disp8} jge        _jmp_addr_0x0061d658                                 // 0x0061d649    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]                    // 0x0061d64b    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000              // 0x0061d651    c7048100000000
_jmp_addr_0x0061d658:    {disp8} fld        dword ptr [esp + 0x08]                               // 0x0061d658    d9442408
                         call               _jmp_addr_0x007a1400                                 // 0x0061d65c    e89f3d1800
                         {disp32} mov       edx, dword ptr [edi + 0x00000194]                    // 0x0061d661    8b9794010000
                         {disp32} mov       dword ptr [edx + 0x0000027c], eax                    // 0x0061d667    89827c020000
                         pop                esi                                                  // 0x0061d66d    5e
_jmp_addr_0x0061d66e:    pop                edi                                                  // 0x0061d66e    5f
                         add                esp, 0x00000808                                      // 0x0061d66f    81c408080000
                         ret                                                                     // 0x0061d675    c3
                         nop                                                                     // 0x0061d676    90
                         nop                                                                     // 0x0061d677    90
                         nop                                                                     // 0x0061d678    90
                         nop                                                                     // 0x0061d679    90
                         nop                                                                     // 0x0061d67a    90
                         nop                                                                     // 0x0061d67b    90
                         nop                                                                     // 0x0061d67c    90
                         nop                                                                     // 0x0061d67d    90
                         nop                                                                     // 0x0061d67e    90
                         nop                                                                     // 0x0061d67f    90
_jmp_addr_0x0061d680:    sub                esp, 0x00000808                                      // 0x0061d680    81ec08080000
                         push               ebx                                                  // 0x0061d686    53
                         push               ebp                                                  // 0x0061d687    55
                         mov.s              ebx, ecx                                             // 0x0061d688    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x00000a44]                    // 0x0061d68a    8b83440a0000
                         test               eax, eax                                             // 0x0061d690    85c0
                         push               esi                                                  // 0x0061d692    56
                         push               edi                                                  // 0x0061d693    57
                         {disp32} je        _jmp_addr_0x0061d772                                 // 0x0061d694    0f84d8000000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000a4c]                    // 0x0061d69a    8b8b4c0a0000
                         {disp32} mov       edi, dword ptr [ecx + 0x00000a58]                    // 0x0061d6a0    8bb9580a0000
                         test               edi, edi                                             // 0x0061d6a6    85ff
                         {disp8} mov        dword ptr [esp + 0x10], edi                          // 0x0061d6a8    897c2410
                         {disp8} jne        _jmp_addr_0x0061d6b4                                 // 0x0061d6ac    7506
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0061d6ae    89442410
                         mov.s              edi, eax                                             // 0x0061d6b2    8bf8
_jmp_addr_0x0061d6b4:    {disp32} mov       esi, dword ptr [ebx + 0x00000178]                    // 0x0061d6b4    8bb378010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d6ba    8b8650020000
                         test               eax, eax                                             // 0x0061d6c0    85c0
                         {disp8} jle        _jmp_addr_0x0061d6d7                                 // 0x0061d6c2    7e13
_jmp_addr_0x0061d6c4:    dec                eax                                                  // 0x0061d6c4    48
                         push               eax                                                  // 0x0061d6c5    50
                         mov.s              ecx, esi                                             // 0x0061d6c6    8bce
                         call               @DeleteString__9SetupListFi@12                       // 0x0061d6c8    e893d6deff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d6cd    8b8650020000
                         test               eax, eax                                             // 0x0061d6d3    85c0
                         {disp8} jg         _jmp_addr_0x0061d6c4                                 // 0x0061d6d5    7fed
_jmp_addr_0x0061d6d7:    test               edi, edi                                             // 0x0061d6d7    85ff
                         {disp32} je        _jmp_addr_0x0061d772                                 // 0x0061d6d9    0f8493000000
                         {disp32} mov       eax, dword ptr [edi + 0x000001d8]                    // 0x0061d6df    8b87d8010000
                         test               eax, eax                                             // 0x0061d6e5    85c0
                         {disp32} je        _jmp_addr_0x0061d772                                 // 0x0061d6e7    0f8485000000
                         {disp8} mov        edi, dword ptr [eax + 0x04]                          // 0x0061d6ed    8b7804
                         test               edi, edi                                             // 0x0061d6f0    85ff
                         {disp8} je         _jmp_addr_0x0061d772                                 // 0x0061d6f2    747e
                         {disp32} mov       ebp, dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]    // 0x0061d6f4    8b2dd8938a00
_jmp_addr_0x0061d6fa:    mov.s              ecx, edi                                             // 0x0061d6fa    8bcf
                         call               _jmp_addr_0x00632730                                 // 0x0061d6fc    e82f500100
                         push               eax                                                  // 0x0061d701    50
                         mov.s              ecx, edi                                             // 0x0061d702    8bcf
                         call               _jmp_addr_0x00632740                                 // 0x0061d704    e837500100
                         push               eax                                                  // 0x0061d709    50
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x0061d70a    8d54241c
                         push               0x00bf45dc                                           // 0x0061d70e    68dc45bf00
                         push               edx                                                  // 0x0061d713    52
                         call               ebp                                                  // 0x0061d714    ffd5
                         {disp32} mov       esi, dword ptr [ebx + 0x00000178]                    // 0x0061d716    8bb378010000
                         add                esp, 0x10                                            // 0x0061d71c    83c410
                         push               eax                                                  // 0x0061d71f    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]                    // 0x0061d720    8b8650020000
                         push               eax                                                  // 0x0061d726    50
                         mov.s              ecx, esi                                             // 0x0061d727    8bce
                         call               @InsertString__9SetupListFiPw@16                     // 0x0061d729    e842d7deff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]                    // 0x0061d72e    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x0061d734    8d41ff
                         test               eax, eax                                             // 0x0061d737    85c0
                         {disp8} jl         _jmp_addr_0x0061d74c                                 // 0x0061d739    7c11
                         cmp.s              eax, ecx                                             // 0x0061d73b    3bc1
                         {disp8} jge        _jmp_addr_0x0061d74c                                 // 0x0061d73d    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]                    // 0x0061d73f    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000              // 0x0061d745    c7048100000000
_jmp_addr_0x0061d74c:    {disp8} mov        edx, dword ptr [esp + 0x10]                          // 0x0061d74c    8b542410
                         {disp32} mov       eax, dword ptr [edx + 0x000001d8]                    // 0x0061d750    8b82d8010000
                         test               eax, eax                                             // 0x0061d756    85c0
                         {disp8} je         _jmp_addr_0x0061d772                                 // 0x0061d758    7418
_jmp_addr_0x0061d75a:    cmp                dword ptr [eax + 0x04], edi                          // 0x0061d75a    397804
                         mov                eax, dword ptr [eax]                                 // 0x0061d75d    8b00
                         {disp8} je         _jmp_addr_0x0061d767                                 // 0x0061d75f    7406
                         test               eax, eax                                             // 0x0061d761    85c0
                         {disp8} je         _jmp_addr_0x0061d772                                 // 0x0061d763    740d
                         {disp8} jmp        _jmp_addr_0x0061d75a                                 // 0x0061d765    ebf3
_jmp_addr_0x0061d767:    test               eax, eax                                             // 0x0061d767    85c0
                         {disp8} je         _jmp_addr_0x0061d772                                 // 0x0061d769    7407
                         {disp8} mov        edi, dword ptr [eax + 0x04]                          // 0x0061d76b    8b7804
                         test               edi, edi                                             // 0x0061d76e    85ff
                         {disp8} jne        _jmp_addr_0x0061d6fa                                 // 0x0061d770    7588
_jmp_addr_0x0061d772:    pop                edi                                                  // 0x0061d772    5f
                         pop                esi                                                  // 0x0061d773    5e
                         pop                ebp                                                  // 0x0061d774    5d
                         pop                ebx                                                  // 0x0061d775    5b
                         add                esp, 0x00000808                                      // 0x0061d776    81c408080000
                         ret                                                                     // 0x0061d77c    c3
                         nop                                                                     // 0x0061d77d    90
                         nop                                                                     // 0x0061d77e    90
                         nop                                                                     // 0x0061d77f    90
_jmp_addr_0x0061d780:    sub                esp, 0x00000800                                      // 0x0061d780    81ec00080000
                         push               ebp                                                  // 0x0061d786    55
                         mov.s              ebp, ecx                                             // 0x0061d787    8be9
                         {disp32} mov       eax, dword ptr [ebp + 0x00000a44]                    // 0x0061d789    8b85440a0000
                         test               eax, eax                                             // 0x0061d78f    85c0
                         {disp32} je        _jmp_addr_0x0061d924                                 // 0x0061d791    0f848d010000
                         {disp32} mov       al, byte ptr [data_bytes + 0x37a5fc]                 // 0x0061d797    a0fc05d400
                         test               al, al                                               // 0x0061d79c    84c0
                         {disp8} je         _jmp_addr_0x0061d7c0                                 // 0x0061d79e    7420
                         {disp32} mov       eax, dword ptr [ebp + 0x00000a4c]                    // 0x0061d7a0    8b854c0a0000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000a5c]                    // 0x0061d7a6    8b885c0a0000
                         add                ecx, 0x00000100                                      // 0x0061d7ac    81c100010000
                         push               0x00bf45f4                                           // 0x0061d7b2    68f445bf00
                         push               ecx                                                  // 0x0061d7b7    51
                         call               _wcscpy                                              // 0x0061d7b8    e8f9871a00
                         add                esp, 0x08                                            // 0x0061d7bd    83c408
_jmp_addr_0x0061d7c0:    {disp32} mov       eax, dword ptr [ebp + 0x00000a4c]                    // 0x0061d7c0    8b854c0a0000
                         {disp32} mov       edx, dword ptr [eax + 0x00000a5c]                    // 0x0061d7c6    8b905c0a0000
                         cmp                word ptr [edx + 0x00000100], 0x00                    // 0x0061d7cc    6683ba0001000000
                         setne              cl                                                   // 0x0061d7d4    0f95c1
                         {disp8} mov        byte ptr [ebp + 0x18], cl                            // 0x0061d7d7    884d18
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a94]               // 0x0061d7da    8b1594fad300
                         cmp                dword ptr [edx + 0x000004bc], -0x01                  // 0x0061d7e0    83babc040000ff
                         {disp32} mov       eax, dword ptr [eax + 0x00000a5c]                    // 0x0061d7e7    8b805c0a0000
                         {disp8} jne        _jmp_addr_0x0061d80a                                 // 0x0061d7ed    751b
                         {disp32} mov       ecx, dword ptr [eax + 0x000004a8]                    // 0x0061d7ef    8b88a8040000
                         push               ecx                                                  // 0x0061d7f5    51
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x0061d7f6    8d542408
                         push               0x009c8208                                           // 0x0061d7fa    6808829c00
                         push               edx                                                  // 0x0061d7ff    52
                         call               _swprintf                                            // 0x0061d800    e87a8c1a00
                         add                esp, 0x0c                                            // 0x0061d805    83c40c
                         {disp8} jmp        _jmp_addr_0x0061d82a                                 // 0x0061d808    eb20
_jmp_addr_0x0061d80a:    {disp32} mov       ecx, dword ptr [eax + 0x000004bc]                    // 0x0061d80a    8b88bc040000
                         {disp32} mov       edx, dword ptr [eax + 0x000004a8]                    // 0x0061d810    8b90a8040000
                         push               ecx                                                  // 0x0061d816    51
                         push               edx                                                  // 0x0061d817    52
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x0061d818    8d44240c
                         push               0x00bf45e8                                           // 0x0061d81c    68e845bf00
                         push               eax                                                  // 0x0061d821    50
                         call               _swprintf                                            // 0x0061d822    e8588c1a00
                         add                esp, 0x10                                            // 0x0061d827    83c410
_jmp_addr_0x0061d82a:    {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]               // 0x0061d82a    a1ac7cd100
                         push               ebx                                                  // 0x0061d82f    53
                         push               esi                                                  // 0x0061d830    56
                         mov                esi, 0x00001a2c                                      // 0x0061d831    be2c1a0000
                         cmp.s              eax, esi                                             // 0x0061d836    3bc6
                         push               edi                                                  // 0x0061d838    57
                         {disp8} ja         _jmp_addr_0x0061d842                                 // 0x0061d839    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061d83b    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0061d84e                                 // 0x0061d840    eb0c
_jmp_addr_0x0061d842:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061d842    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013a10]                    // 0x0061d848    8d81103a0100
_jmp_addr_0x0061d84e:    {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0061d84e    8b4008
                         push               0x00000385                                           // 0x0061d851    6885030000
                         push               0x00bf4584                                           // 0x0061d856    688445bf00
                         push               eax                                                  // 0x0061d85b    50
                         call               _wcslen                                              // 0x0061d85c    e8018c1a00
                         {disp8} lea        edx, dword ptr [eax + eax * 0x1 + 0x02]              // 0x0061d861    8d540002
                         add                esp, 0x04                                            // 0x0061d865    83c404
                         push               edx                                                  // 0x0061d868    52
                         call               ___nw__FUl                                           // 0x0061d869    e822df1b00
                         mov.s              edi, eax                                             // 0x0061d86e    8bf8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]               // 0x0061d870    a1ac7cd100
                         add                esp, 0x0c                                            // 0x0061d875    83c40c
                         cmp.s              eax, esi                                             // 0x0061d878    3bc6
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061d87a    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0061d886                                 // 0x0061d87f    7605
                         add                eax, 0x00013a10                                      // 0x0061d881    05103a0100
_jmp_addr_0x0061d886:    {disp8} mov        ecx, dword ptr [eax + 0x08]                          // 0x0061d886    8b4808
                         push               ecx                                                  // 0x0061d889    51
                         push               edi                                                  // 0x0061d88a    57
                         call               _wcscpy                                              // 0x0061d88b    e826871a00
                         push               edi                                                  // 0x0061d890    57
                         xor.s              ebx, ebx                                             // 0x0061d891    33db
                         call               _wcslen                                              // 0x0061d893    e8ca8b1a00
                         add                esp, 0x0c                                            // 0x0061d898    83c40c
                         dec                eax                                                  // 0x0061d89b    48
                         {disp8} je         _jmp_addr_0x0061d8c5                                 // 0x0061d89c    7427
                         {disp8} lea        esi, dword ptr [edi + 0x02]                          // 0x0061d89e    8d7702
_jmp_addr_0x0061d8a1:    cmp                word ptr [esi + -0x02], 0x25                         // 0x0061d8a1    66837efe25
                         {disp8} jne        _jmp_addr_0x0061d8b3                                 // 0x0061d8a6    750b
                         cmp                word ptr [esi], 0x64                                 // 0x0061d8a8    66833e64
                         {disp8} jne        _jmp_addr_0x0061d8b3                                 // 0x0061d8ac    7505
                         mov                word ptr [esi], 0x0073                               // 0x0061d8ae    66c7067300
_jmp_addr_0x0061d8b3:    push               edi                                                  // 0x0061d8b3    57
                         inc                ebx                                                  // 0x0061d8b4    43
                         add                esi, 0x02                                            // 0x0061d8b5    83c602
                         call               _wcslen                                              // 0x0061d8b8    e8a58b1a00
                         add                esp, 0x04                                            // 0x0061d8bd    83c404
                         dec                eax                                                  // 0x0061d8c0    48
                         cmp.s              ebx, eax                                             // 0x0061d8c1    3bd8
                         .byte              0x72, 0xdc// {disp8} jb _jmp_addr_0x0061d8a1         // 0x0061d8c3    72dc
_jmp_addr_0x0061d8c5:    {disp8} mov        al, byte ptr [ebp + 0x18]                            // 0x0061d8c5    8a4518
                         test               al, al                                               // 0x0061d8c8    84c0
                         {disp8} je         _jmp_addr_0x0061d8df                                 // 0x0061d8ca    7413
                         {disp32} mov       edx, dword ptr [ebp + 0x00000a4c]                    // 0x0061d8cc    8b954c0a0000
                         {disp32} mov       eax, dword ptr [edx + 0x00000a5c]                    // 0x0061d8d2    8b825c0a0000
                         add                eax, 0x00000100                                      // 0x0061d8d8    0500010000
                         {disp8} jmp        _jmp_addr_0x0061d8f8                                 // 0x0061d8dd    eb19
_jmp_addr_0x0061d8df:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001a30        // 0x0061d8df    813dac7cd100301a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061d8e9    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0061d8f5                                 // 0x0061d8ee    7605
                         add                eax, 0x00013a40                                      // 0x0061d8f0    05403a0100
_jmp_addr_0x0061d8f5:    {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0061d8f5    8b4008
_jmp_addr_0x0061d8f8:    {disp32} mov       ecx, dword ptr [ebp + 0x00000a4c]                    // 0x0061d8f8    8b8d4c0a0000
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x0061d8fe    8d542410
                         push               edx                                                  // 0x0061d902    52
                         push               eax                                                  // 0x0061d903    50
                         {disp32} mov       eax, dword ptr [ecx + 0x00000a5c]                    // 0x0061d904    8b815c0a0000
                         push               eax                                                  // 0x0061d90a    50
                         call               _jmp_addr_0x00625180                                 // 0x0061d90b    e870780000
                         {disp8} mov        ecx, dword ptr [ebp + 0x30]                          // 0x0061d910    8b4d30
                         push               eax                                                  // 0x0061d913    50
                         add                ecx, 0x24                                            // 0x0061d914    83c124
                         push               edi                                                  // 0x0061d917    57
                         push               ecx                                                  // 0x0061d918    51
                         call               _swprintf                                            // 0x0061d919    e8618b1a00
                         add                esp, 0x18                                            // 0x0061d91e    83c418
                         pop                edi                                                  // 0x0061d921    5f
                         pop                esi                                                  // 0x0061d922    5e
                         pop                ebx                                                  // 0x0061d923    5b
_jmp_addr_0x0061d924:    pop                ebp                                                  // 0x0061d924    5d
                         add                esp, 0x00000800                                      // 0x0061d925    81c400080000
                         ret                                                                     // 0x0061d92b    c3
                         nop                                                                     // 0x0061d92c    90
                         nop                                                                     // 0x0061d92d    90
                         nop                                                                     // 0x0061d92e    90
                         nop                                                                     // 0x0061d92f    90
_jmp_addr_0x0061d930:    sub                esp, 0x08                                            // 0x0061d930    83ec08
                         push               ebx                                                  // 0x0061d933    53
                         mov.s              ebx, ecx                                             // 0x0061d934    8bd9
                         {disp32} mov       eax, dword ptr [ebx + 0x00000a44]                    // 0x0061d936    8b83440a0000
                         test               eax, eax                                             // 0x0061d93c    85c0
                         {disp32} je        _jmp_addr_0x0061dc67                                 // 0x0061d93e    0f8423030000
                         {disp8} mov        al, byte ptr [ebx + 0x18]                            // 0x0061d944    8a4318
                         test               al, al                                               // 0x0061d947    84c0
                         {disp8} je         _jmp_addr_0x0061d962                                 // 0x0061d949    7417
                         {disp32} mov       eax, dword ptr [ebx + 0x00000a4c]                    // 0x0061d94b    8b834c0a0000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000a5c]                    // 0x0061d951    8b885c0a0000
                         {disp32} mov       edx, dword ptr [ecx + 0x000004b0]                    // 0x0061d957    8b91b0040000
                         {disp8} mov        dword ptr [ebx + 0x1c], edx                          // 0x0061d95d    89531c
                         {disp8} jmp        _jmp_addr_0x0061d969                                 // 0x0061d960    eb07
_jmp_addr_0x0061d962:    {disp8} mov        dword ptr [ebx + 0x1c], 0x00000004                   // 0x0061d962    c7431c04000000
_jmp_addr_0x0061d969:    push               ebp                                                  // 0x0061d969    55
                         push               esi                                                  // 0x0061d96a    56
                         push               edi                                                  // 0x0061d96b    57
                         push               0x0                                                  // 0x0061d96c    6a00
                         push               0x0000010e                                           // 0x0061d96e    680e010000
                         push               0x000000aa                                           // 0x0061d973    68aa000000
                         push               0x5a                                                 // 0x0061d978    6a5a
                         {disp8} lea        edi, dword ptr [ebx + 0x38]                          // 0x0061d97a    8d7b38
                         push               0x0000024e                                           // 0x0061d97d    684e020000
                         mov.s              ecx, edi                                             // 0x0061d982    8bcf
                         mov                esi, 0x000002d0                                      // 0x0061d984    bed0020000
                         {disp32} mov       dword ptr [ebx + 0x00000134], 0x00000028             // 0x0061d989    c7833401000028000000
                         {disp32} mov       dword ptr [ebx + 0x00000138], 0x0000005a             // 0x0061d993    c783380100005a000000
                         {disp32} mov       dword ptr [ebx + 0x0000013c], 0x000002f8             // 0x0061d99d    c7833c010000f8020000
                         {disp32} mov       dword ptr [ebx + 0x00000140], 0x00000168             // 0x0061d9a7    c7834001000068010000
                         call               _jmp_addr_0x0061a9f0                                 // 0x0061d9b1    e83ad0ffff
                         {disp8} mov        eax, dword ptr [ebx + 0x3c]                          // 0x0061d9b6    8b433c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000250]                    // 0x0061d9b9    8b8850020000
                         test               ecx, ecx                                             // 0x0061d9bf    85c9
                         {disp8} je         _jmp_addr_0x0061d9cc                                 // 0x0061d9c1    7409
                         mov                esi, 0x00000226                                      // 0x0061d9c3    be26020000
                         push               0x0                                                  // 0x0061d9c8    6a00
                         {disp8} jmp        _jmp_addr_0x0061d9ce                                 // 0x0061d9ca    eb02
_jmp_addr_0x0061d9cc:    push               0x1                                                  // 0x0061d9cc    6a01
_jmp_addr_0x0061d9ce:    mov.s              ecx, edi                                             // 0x0061d9ce    8bcf
                         call               _jmp_addr_0x0061acf0                                 // 0x0061d9d0    e81bd3ffff
                         {disp8} lea        ebp, dword ptr [ebx + 0x64]                          // 0x0061d9d5    8d6b64
                         mov.s              edi, ebp                                             // 0x0061d9d8    8bfd
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000004                   // 0x0061d9da    c744241004000000
_jmp_addr_0x0061d9e2:    push               0x0                                                  // 0x0061d9e2    6a00
                         push               0x0000010e                                           // 0x0061d9e4    680e010000
                         push               esi                                                  // 0x0061d9e9    56
                         push               0x5a                                                 // 0x0061d9ea    6a5a
                         push               0x28                                                 // 0x0061d9ec    6a28
                         mov.s              ecx, edi                                             // 0x0061d9ee    8bcf
                         call               _jmp_addr_0x0061a9f0                                 // 0x0061d9f0    e8fbcfffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0061d9f5    8b442410
                         add                edi, 0x2c                                            // 0x0061d9f9    83c72c
                         dec                eax                                                  // 0x0061d9fc    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0061d9fd    89442410
                         {disp8} jne        _jmp_addr_0x0061d9e2                                 // 0x0061da01    75df
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                          // 0x0061da03    8b431c
                         dec                eax                                                  // 0x0061da06    48
                         {disp32} je        _jmp_addr_0x0061db07                                 // 0x0061da07    0f84fa000000
                         dec                eax                                                  // 0x0061da0d    48
                         {disp32} je        _jmp_addr_0x0061dad5                                 // 0x0061da0e    0f84c1000000
                         dec                eax                                                  // 0x0061da14    48
                         mov.s              eax, esi                                             // 0x0061da15    8bc6
                         cdq                                                                     // 0x0061da17    99
                         {disp8} je         _jmp_addr_0x0061da7f                                 // 0x0061da18    7465
                         push               0x0                                                  // 0x0061da1a    6a00
                         sub.s              eax, edx                                             // 0x0061da1c    2bc2
                         mov.s              esi, eax                                             // 0x0061da1e    8bf0
                         push               0x00000087                                           // 0x0061da20    6887000000
                         sar                esi, 1                                               // 0x0061da25    d1fe
                         push               esi                                                  // 0x0061da27    56
                         push               0x5a                                                 // 0x0061da28    6a5a
                         push               0x28                                                 // 0x0061da2a    6a28
                         mov.s              ecx, ebp                                             // 0x0061da2c    8bcd
                         call               _jmp_addr_0x0061a9f0                                 // 0x0061da2e    e8bdcfffff
                         push               0x1                                                  // 0x0061da33    6a01
                         push               0x00000087                                           // 0x0061da35    6887000000
                         push               esi                                                  // 0x0061da3a    56
                         push               0x5a                                                 // 0x0061da3b    6a5a
                         {disp8} lea        edi, dword ptr [esi + 0x28]                          // 0x0061da3d    8d7e28
                         push               edi                                                  // 0x0061da40    57
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000090]                    // 0x0061da41    8d8b90000000
                         call               _jmp_addr_0x0061a9f0                                 // 0x0061da47    e8a4cfffff
                         push               0x0                                                  // 0x0061da4c    6a00
                         push               0x00000087                                           // 0x0061da4e    6887000000
                         push               esi                                                  // 0x0061da53    56
                         push               0x000000e1                                           // 0x0061da54    68e1000000
                         push               0x28                                                 // 0x0061da59    6a28
                         {disp32} lea       ecx, dword ptr [ebx + 0x000000bc]                    // 0x0061da5b    8d8bbc000000
                         call               _jmp_addr_0x0061a9f0                                 // 0x0061da61    e88acfffff
                         push               0x1                                                  // 0x0061da66    6a01
                         push               0x00000087                                           // 0x0061da68    6887000000
                         push               esi                                                  // 0x0061da6d    56
                         push               0x000000e1                                           // 0x0061da6e    68e1000000
                         push               edi                                                  // 0x0061da73    57
                         {disp32} lea       ecx, dword ptr [ebx + 0x000000e8]                    // 0x0061da74    8d8be8000000
                         {disp32} jmp       _jmp_addr_0x0061db15                                 // 0x0061da7a    e996000000
_jmp_addr_0x0061da7f:    push               0x0                                                  // 0x0061da7f    6a00
                         sub.s              eax, edx                                             // 0x0061da81    2bc2
                         mov.s              edi, eax                                             // 0x0061da83    8bf8
                         push               0x00000087                                           // 0x0061da85    6887000000
                         sar                edi, 1                                               // 0x0061da8a    d1ff
                         push               edi                                                  // 0x0061da8c    57
                         push               0x5a                                                 // 0x0061da8d    6a5a
                         push               0x28                                                 // 0x0061da8f    6a28
                         mov.s              ecx, ebp                                             // 0x0061da91    8bcd
                         call               _jmp_addr_0x0061a9f0                                 // 0x0061da93    e858cfffff
                         push               0x1                                                  // 0x0061da98    6a01
                         push               0x00000087                                           // 0x0061da9a    6887000000
                         push               edi                                                  // 0x0061da9f    57
                         push               0x5a                                                 // 0x0061daa0    6a5a
                         {disp8} lea        ecx, dword ptr [edi + 0x28]                          // 0x0061daa2    8d4f28
                         push               ecx                                                  // 0x0061daa5    51
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000090]                    // 0x0061daa6    8d8b90000000
                         call               _jmp_addr_0x0061a9f0                                 // 0x0061daac    e83fcfffff
                         mov.s              eax, esi                                             // 0x0061dab1    8bc6
                         cdq                                                                     // 0x0061dab3    99
                         push               0x0                                                  // 0x0061dab4    6a00
                         and                edx, 0x03                                            // 0x0061dab6    83e203
                         push               0x00000087                                           // 0x0061dab9    6887000000
                         add.s              eax, edx                                             // 0x0061dabe    03c2
                         push               edi                                                  // 0x0061dac0    57
                         sar                eax, 2                                               // 0x0061dac1    c1f802
                         push               0x000000e1                                           // 0x0061dac4    68e1000000
                         add                eax, 0x28                                            // 0x0061dac9    83c028
                         push               eax                                                  // 0x0061dacc    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x000000bc]                    // 0x0061dacd    8d8bbc000000
                         {disp8} jmp        _jmp_addr_0x0061db15                                 // 0x0061dad3    eb40
_jmp_addr_0x0061dad5:    mov.s              eax, esi                                             // 0x0061dad5    8bc6
                         cdq                                                                     // 0x0061dad7    99
                         push               0x0                                                  // 0x0061dad8    6a00
                         sub.s              eax, edx                                             // 0x0061dada    2bc2
                         mov.s              esi, eax                                             // 0x0061dadc    8bf0
                         push               0x0000010e                                           // 0x0061dade    680e010000
                         sar                esi, 1                                               // 0x0061dae3    d1fe
                         push               esi                                                  // 0x0061dae5    56
                         push               0x5a                                                 // 0x0061dae6    6a5a
                         push               0x28                                                 // 0x0061dae8    6a28
                         mov.s              ecx, ebp                                             // 0x0061daea    8bcd
                         call               _jmp_addr_0x0061a9f0                                 // 0x0061daec    e8ffceffff
                         push               0x1                                                  // 0x0061daf1    6a01
                         push               0x0000010e                                           // 0x0061daf3    680e010000
                         push               esi                                                  // 0x0061daf8    56
                         push               0x5a                                                 // 0x0061daf9    6a5a
                         add                esi, 0x28                                            // 0x0061dafb    83c628
                         push               esi                                                  // 0x0061dafe    56
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000090]                    // 0x0061daff    8d8b90000000
                         {disp8} jmp        _jmp_addr_0x0061db15                                 // 0x0061db05    eb0e
_jmp_addr_0x0061db07:    push               0x0                                                  // 0x0061db07    6a00
                         push               0x0000010e                                           // 0x0061db09    680e010000
                         push               esi                                                  // 0x0061db0e    56
                         push               0x5a                                                 // 0x0061db0f    6a5a
                         push               0x28                                                 // 0x0061db11    6a28
                         mov.s              ecx, ebp                                             // 0x0061db13    8bcd
_jmp_addr_0x0061db15:    call               _jmp_addr_0x0061a9f0                                 // 0x0061db15    e8d6ceffff
                         mov                esi, 0x00000001                                      // 0x0061db1a    be01000000
_jmp_addr_0x0061db1f:    cmp                esi, dword ptr [ebx + 0x1c]                          // 0x0061db1f    3b731c
                         setg               dl                                                   // 0x0061db22    0f9fc2
                         mov.s              ecx, ebp                                             // 0x0061db25    8bcd
                         push               edx                                                  // 0x0061db27    52
                         call               _jmp_addr_0x0061acf0                                 // 0x0061db28    e8c3d1ffff
                         inc                esi                                                  // 0x0061db2d    46
                         add                ebp, 0x2c                                            // 0x0061db2e    83c52c
                         cmp                esi, 0x04                                            // 0x0061db31    83fe04
                         {disp8} jle        _jmp_addr_0x0061db1f                                 // 0x0061db34    7ee9
                         {disp8} mov        eax, dword ptr [ebx + 0x3c]                          // 0x0061db36    8b433c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000250]                    // 0x0061db39    8b8850020000
                         test               ecx, ecx                                             // 0x0061db3f    85c9
                         {disp8} lea        esi, dword ptr [ebx + 0x3c]                          // 0x0061db41    8d733c
                         {disp8} je         _jmp_addr_0x0061db4a                                 // 0x0061db44    7404
                         push               0x0                                                  // 0x0061db46    6a00
                         {disp8} jmp        _jmp_addr_0x0061db4c                                 // 0x0061db48    eb02
_jmp_addr_0x0061db4a:    push               0x1                                                  // 0x0061db4a    6a01
_jmp_addr_0x0061db4c:    {disp8} lea        ecx, dword ptr [ebx + 0x38]                          // 0x0061db4c    8d4b38
                         call               _jmp_addr_0x0061acf0                                 // 0x0061db4f    e89cd1ffff
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000                   // 0x0061db54    c744241400000000
                         mov.s              ebp, esi                                             // 0x0061db5c    8bee
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000005                   // 0x0061db5e    c744241005000000
_jmp_addr_0x0061db66:    {disp8} mov        eax, dword ptr [ebp + 0x00]                          // 0x0061db66    8b4500
                         {disp32} mov       dword ptr [eax + 0x00000248], 0xffffffff             // 0x0061db69    c78048020000ffffffff
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                          // 0x0061db73    8b4d00
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]                    // 0x0061db76    8b8150020000
                         xor.s              esi, esi                                             // 0x0061db7c    33f6
                         test               eax, eax                                             // 0x0061db7e    85c0
                         {disp32} jle       _jmp_addr_0x0061dc2a                                 // 0x0061db80    0f8ea4000000
_jmp_addr_0x0061db86:    test               esi, esi                                             // 0x0061db86    85f6
                         {disp8} mov        edi, dword ptr [ebp + 0x00]                          // 0x0061db88    8b7d00
                         {disp8} jl         _jmp_addr_0x0061dba0                                 // 0x0061db8b    7c13
                         cmp                esi, dword ptr [edi + 0x00000250]                    // 0x0061db8d    3bb750020000
                         {disp8} jge        _jmp_addr_0x0061dba0                                 // 0x0061db93    7d0b
                         {disp32} mov       edx, dword ptr [edi + 0x00000264]                    // 0x0061db95    8b9764020000
                         mov                eax, dword ptr [edx + esi * 0x4]                     // 0x0061db9b    8b04b2
                         {disp8} jmp        _jmp_addr_0x0061dba2                                 // 0x0061db9e    eb02
_jmp_addr_0x0061dba0:    xor.s              eax, eax                                             // 0x0061dba0    33c0
_jmp_addr_0x0061dba2:    {disp32} mov       ecx, dword ptr [ebx + 0x00000a4c]                    // 0x0061dba2    8b8b4c0a0000
                         cmp                eax, dword ptr [ecx + 0x00000a58]                    // 0x0061dba8    3b81580a0000
                         {disp8} jne        _jmp_addr_0x0061dc18                                 // 0x0061dbae    7568
                         test               esi, esi                                             // 0x0061dbb0    85f6
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000001                   // 0x0061dbb2    c744241401000000
                         {disp8} jl         _jmp_addr_0x0061dbcc                                 // 0x0061dbba    7c10
                         cmp                esi, dword ptr [edi + 0x00000250]                    // 0x0061dbbc    3bb750020000
                         {disp8} jge        _jmp_addr_0x0061dbcc                                 // 0x0061dbc2    7d08
                         {disp32} mov       dword ptr [edi + 0x00000248], esi                    // 0x0061dbc4    89b748020000
                         {disp8} jmp        _jmp_addr_0x0061dbd6                                 // 0x0061dbca    eb0a
_jmp_addr_0x0061dbcc:    {disp32} mov       dword ptr [edi + 0x00000248], 0xffffffff             // 0x0061dbcc    c78748020000ffffffff
_jmp_addr_0x0061dbd6:    {disp8} mov        eax, dword ptr [edi + 0x04]                          // 0x0061dbd6    8b4704
                         test               eax, eax                                             // 0x0061dbd9    85c0
                         {disp8} je         _jmp_addr_0x0061dc18                                 // 0x0061dbdb    743b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]               // 0x0061dbdd    a100cdc400
                         test               eax, eax                                             // 0x0061dbe2    85c0
                         {disp8} je         _jmp_addr_0x0061dc18                                 // 0x0061dbe4    7432
                         test               esi, esi                                             // 0x0061dbe6    85f6
                         {disp8} jl         _jmp_addr_0x0061dc18                                 // 0x0061dbe8    7c2e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061dbea    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4       // 0x0061dbf0    e8cb611d00
                         cmp.s              eax, esi                                             // 0x0061dbf5    3bc6
                         {disp8} je         _jmp_addr_0x0061dc18                                 // 0x0061dbf7    741f
                         {disp32} mov       edx, dword ptr [edi + 0x00000250]                    // 0x0061dbf9    8b9750020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061dbff    8b0d04c1e800
                         push               esi                                                  // 0x0061dc05    56
                         dec                edx                                                  // 0x0061dc06    4a
                         push               edx                                                  // 0x0061dc07    52
                         push               0x0                                                  // 0x0061dc08    6a00
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20// 0x0061dc0a    e8d1611d00
                         push               0x0                                                  // 0x0061dc0f    6a00
                         mov.s              ecx, edi                                             // 0x0061dc11    8bcf
                         call               @AutoScroll__9SetupListFb@9                          // 0x0061dc13    e8b8c1deff
_jmp_addr_0x0061dc18:    {disp8} mov        eax, dword ptr [ebp + 0x00]                          // 0x0061dc18    8b4500
                         {disp32} mov       ecx, dword ptr [eax + 0x00000250]                    // 0x0061dc1b    8b8850020000
                         inc                esi                                                  // 0x0061dc21    46
                         cmp.s              esi, ecx                                             // 0x0061dc22    3bf1
                         {disp32} jl        _jmp_addr_0x0061db86                                 // 0x0061dc24    0f8c5cffffff
_jmp_addr_0x0061dc2a:    cmp                dword ptr [ebx + 0x10], 0x01                         // 0x0061dc2a    837b1001
                         {disp8} jne        _jmp_addr_0x0061dc3a                                 // 0x0061dc2e    750a
                         push               0x1                                                  // 0x0061dc30    6a01
                         {disp8} lea        ecx, dword ptr [ebp + -0x04]                         // 0x0061dc32    8d4dfc
                         call               _jmp_addr_0x0061acf0                                 // 0x0061dc35    e8b6d0ffff
_jmp_addr_0x0061dc3a:    {disp8} mov        eax, dword ptr [esp + 0x10]                          // 0x0061dc3a    8b442410
                         add                ebp, 0x2c                                            // 0x0061dc3e    83c52c
                         dec                eax                                                  // 0x0061dc41    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x0061dc42    89442410
                         {disp32} jne       _jmp_addr_0x0061db66                                 // 0x0061dc46    0f851affffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x0061dc4c    8b442414
                         test               eax, eax                                             // 0x0061dc50    85c0
                         pop                edi                                                  // 0x0061dc52    5f
                         pop                esi                                                  // 0x0061dc53    5e
                         pop                ebp                                                  // 0x0061dc54    5d
                         {disp8} jne        _jmp_addr_0x0061dc67                                 // 0x0061dc55    7510
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000a4c]                    // 0x0061dc57    8b8b4c0a0000
                         {disp32} mov       dword ptr [ecx + 0x00000a58], 0x00000000             // 0x0061dc5d    c781580a000000000000
_jmp_addr_0x0061dc67:    pop                ebx                                                  // 0x0061dc67    5b
                         add                esp, 0x08                                            // 0x0061dc68    83c408
                         ret                                                                     // 0x0061dc6b    c3
                         nop                                                                     // 0x0061dc6c    90
                         nop                                                                     // 0x0061dc6d    90
                         nop                                                                     // 0x0061dc6e    90
                         nop                                                                     // 0x0061dc6f    90
_jmp_addr_0x0061dc70:    {disp8} mov        eax, dword ptr [esp + 0x18]                          // 0x0061dc70    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x0061dc74    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                          // 0x0061dc78    8b54240c
                         sub                esp, 0x0000009c                                      // 0x0061dc7c    81ec9c000000
                         push               ebx                                                  // 0x0061dc82    53
                         {disp32} mov       ebx, dword ptr [esp + 0x000000b0]                    // 0x0061dc83    8b9c24b0000000
                         push               ebp                                                  // 0x0061dc8a    55
                         {disp32} mov       ebp, dword ptr [esp + 0x000000ac]                    // 0x0061dc8b    8bac24ac000000
                         push               esi                                                  // 0x0061dc92    56
                         {disp32} mov       esi, dword ptr [esp + 0x000000ac]                    // 0x0061dc93    8bb424ac000000
                         push               edi                                                  // 0x0061dc9a    57
                         push               eax                                                  // 0x0061dc9b    50
                         push               ecx                                                  // 0x0061dc9c    51
                         push               ebx                                                  // 0x0061dc9d    53
                         push               edx                                                  // 0x0061dc9e    52
                         push               ebp                                                  // 0x0061dc9f    55
                         push               esi                                                  // 0x0061dca0    56
                         call               _jmp_addr_0x0061e640                                 // 0x0061dca1    e89a090000
                         {disp32} mov       eax, dword ptr [esi + 0x00000a44]                    // 0x0061dca6    8b86440a0000
                         test               eax, eax                                             // 0x0061dcac    85c0
                         {disp32} je        _jmp_addr_0x0061e601                                 // 0x0061dcae    0f844d090000
                         cmp                ebp, 0x09                                            // 0x0061dcb4    83fd09
                         {disp32} mov       edi, dword ptr [__imp__timeGetTime@4]                // 0x0061dcb7    8b3d8c988a00
                         {disp8} jne        _jmp_addr_0x0061dd10                                 // 0x0061dcbd    7551
                         test               ebx, ebx                                             // 0x0061dcbf    85db
                         {disp8} je         _jmp_addr_0x0061dd10                                 // 0x0061dcc1    744d
                         {disp8} mov        eax, dword ptr [ebx + 0x18]                          // 0x0061dcc3    8b4318
                         cmp                eax, 0x000000c9                                      // 0x0061dcc6    3dc9000000
                         {disp8} je         _jmp_addr_0x0061dce4                                 // 0x0061dccb    7417
                         cmp                eax, 0x000000ca                                      // 0x0061dccd    3dca000000
                         {disp8} je         _jmp_addr_0x0061dce4                                 // 0x0061dcd2    7410
                         cmp                ebx, dword ptr [esi + 0x00000a90]                    // 0x0061dcd4    3b9e900a0000
                         {disp8} je         _jmp_addr_0x0061dce4                                 // 0x0061dcda    7408
                         cmp                ebx, dword ptr [esi + 0x00000a94]                    // 0x0061dcdc    3b9e940a0000
                         {disp8} jne        _jmp_addr_0x0061dd10                                 // 0x0061dce2    752c
_jmp_addr_0x0061dce4:    call               edi                                                  // 0x0061dce4    ffd7
                         {disp32} mov       dword ptr [data_bytes + 0x379020], eax               // 0x0061dce6    a320f0d300
                         call               edi                                                  // 0x0061dceb    ffd7
                         sub                eax, 0x0000012c                                      // 0x0061dced    2d2c010000
                         {disp32} mov       dword ptr [data_bytes + 0x379024], eax               // 0x0061dcf2    a324f0d300
                         {disp32} mov       dword ptr [data_bytes + 0x37901c], ebx               // 0x0061dcf7    891d1cf0d300
                         {disp32} mov       edx, dword ptr [ebx + 0x0000022c]                    // 0x0061dcfd    8b932c020000
                         xor.s              eax, eax                                             // 0x0061dd03    33c0
                         test               edx, edx                                             // 0x0061dd05    85d2
                         setne              al                                                   // 0x0061dd07    0f95c0
                         inc                eax                                                  // 0x0061dd0a    40
                         {disp32} mov       dword ptr [data_bytes + 0x379018], eax               // 0x0061dd0b    a318f0d300
_jmp_addr_0x0061dd10:    {disp32} mov       eax, dword ptr [data_bytes + 0x379018]               // 0x0061dd10    a118f0d300
                         test               eax, eax                                             // 0x0061dd15    85c0
                         {disp32} je        _jmp_addr_0x0061debb                                 // 0x0061dd17    0f849e010000
                         call               edi                                                  // 0x0061dd1d    ffd7
                         sub                eax, dword ptr [data_bytes + 0x379020]               // 0x0061dd1f    2b0520f0d300
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x0061dd25    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x0061dd29    c744242000000000
                         {disp8} fild       qword ptr [esp + 0x1c]                               // 0x0061dd31    df6c241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]                     // 0x0061dd35    d80d18c48a00
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x0061dd3b    d95c2410
                         call               edi                                                  // 0x0061dd3f    ffd7
                         sub                eax, dword ptr [data_bytes + 0x379024]               // 0x0061dd41    2b0524f0d300
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x0061dd47    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x0061dd4b    c744242000000000
                         {disp8} fild       qword ptr [esp + 0x1c]                               // 0x0061dd53    df6c241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]                     // 0x0061dd57    d80d18c48a00
                         {disp8} fstp       dword ptr [esp + 0x14]                               // 0x0061dd5d    d95c2414
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x0061dd61    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                          // 0x0061dd65    d81db4a38a00
                         fnstsw             ax                                                   // 0x0061dd6b    dfe0
                         test               ah, 0x41                                             // 0x0061dd6d    f6c441
                         {disp8} jne        _jmp_addr_0x0061dd89                                 // 0x0061dd70    7517
                         {disp32} mov       al, byte ptr [data_bytes + 0x379028]                 // 0x0061dd72    a028f0d300
                         test               al, al                                               // 0x0061dd77    84c0
                         {disp8} jne        _jmp_addr_0x0061dd92                                 // 0x0061dd79    7517
                         {disp32} mov       byte ptr [data_bytes + 0x379028], 0x01               // 0x0061dd7b    c60528f0d30001
                         call               edi                                                  // 0x0061dd82    ffd7
                         {disp32} mov       dword ptr [data_bytes + 0x379020], eax               // 0x0061dd84    a320f0d300
_jmp_addr_0x0061dd89:    {disp32} mov       al, byte ptr [data_bytes + 0x379028]                 // 0x0061dd89    a028f0d300
                         test               al, al                                               // 0x0061dd8e    84c0
                         {disp8} je         _jmp_addr_0x0061ddb0                                 // 0x0061dd90    741e
_jmp_addr_0x0061dd92:    {disp8} fld        dword ptr [esp + 0x10]                               // 0x0061dd92    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]                     // 0x0061dd96    d81d78b48a00
                         fnstsw             ax                                                   // 0x0061dd9c    dfe0
                         test               ah, 0x01                                             // 0x0061dd9e    f6c401
                         {disp8} jne        _jmp_addr_0x0061ddb0                                 // 0x0061dda1    750d
                         {disp32} inc       dword ptr [data_bytes + 0x22e580]                    // 0x0061dda3    ff058045bf00
                         call               edi                                                  // 0x0061dda9    ffd7
                         {disp32} mov       dword ptr [data_bytes + 0x379020], eax               // 0x0061ddab    a320f0d300
_jmp_addr_0x0061ddb0:    {disp8} fld        dword ptr [esp + 0x14]                               // 0x0061ddb0    d9442414
                         {disp32} fcomp     dword ptr [__real@3e4ccccd]                          // 0x0061ddb4    d81d44b28a00
                         fnstsw             ax                                                   // 0x0061ddba    dfe0
                         test               ah, 0x41                                             // 0x0061ddbc    f6c441
                         {disp32} jne       _jmp_addr_0x0061debb                                 // 0x0061ddbf    0f85f6000000
                         call               edi                                                  // 0x0061ddc5    ffd7
                         {disp32} mov       edx, dword ptr [data_bytes + 0x37901c]               // 0x0061ddc7    8b151cf0d300
                         {disp32} mov       dword ptr [data_bytes + 0x379024], eax               // 0x0061ddcd    a324f0d300
                         cmp                edx, dword ptr [esi + 0x00000aac]                    // 0x0061ddd2    3b96ac0a0000
                         {disp8} je         _jmp_addr_0x0061dde6                                 // 0x0061ddd8    740c
                         cmp                edx, dword ptr [esi + 0x00000ab0]                    // 0x0061ddda    3b96b00a0000
                         {disp32} jne       _jmp_addr_0x0061de72                                 // 0x0061dde0    0f858c000000
_jmp_addr_0x0061dde6:    cmp                dword ptr [data_bytes + 0x379018], 0x02              // 0x0061dde6    833d18f0d30002
                         mov                ecx, 0x00000001                                      // 0x0061dded    b901000000
                         {disp8} jne        _jmp_addr_0x0061ddf9                                 // 0x0061ddf2    7505
                         mov                ecx, 0x0000003c                                      // 0x0061ddf4    b93c000000
_jmp_addr_0x0061ddf9:    cmp                ebx, dword ptr [esi + 0x00000ab0]                    // 0x0061ddf9    3b9eb00a0000
                         {disp8} jne        _jmp_addr_0x0061de03                                 // 0x0061ddff    7502
                         neg                ecx                                                  // 0x0061de01    f7d9
_jmp_addr_0x0061de03:    {disp32} mov       eax, dword ptr [data_bytes + 0x22e580]               // 0x0061de03    a18045bf00
                         imul               eax, ecx                                             // 0x0061de08    0fafc1
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0061de0b    8b0d5c19d000
                         {disp32} mov       edi, dword ptr [ecx + 0x000059a0]                    // 0x0061de11    8bb9a0590000
                         add.s              eax, edi                                             // 0x0061de17    03c7
                         cmp                eax, 0x0a                                            // 0x0061de19    83f80a
                         .byte              0x72, 0x54// {disp8} jb _jmp_addr_0x0061de72         // 0x0061de1c    7254
                         cmp                eax, 0x000005a0                                      // 0x0061de1e    3da0050000
                         {disp8} ja         _jmp_addr_0x0061de72                                 // 0x0061de23    774d
                         {disp32} mov       dword ptr [ecx + 0x000059a0], eax                    // 0x0061de25    8981a0590000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x0061de2b    8b0d5c19d000
                         {disp32} mov       byte ptr [data_bytes + 0x37a601], 0x01               // 0x0061de31    c6050106d40001
                         {disp32} mov       ecx, dword ptr [ecx + 0x000059a0]                    // 0x0061de38    8b89a0590000
                         xor.s              edx, edx                                             // 0x0061de3e    33d2
                         mov.s              eax, ecx                                             // 0x0061de40    8bc1
                         mov                edi, 0x0000003c                                      // 0x0061de42    bf3c000000
                         div                edi                                                  // 0x0061de47    f7f7
                         mov                eax, 0x88888889                                      // 0x0061de49    b889888888
                         push               edx                                                  // 0x0061de4e    52
                         mul                ecx                                                  // 0x0061de4f    f7e1
                         shr                edx, 5                                               // 0x0061de51    c1ea05
                         push               edx                                                  // 0x0061de54    52
                         {disp32} mov       edx, dword ptr [esi + 0x00000aa8]                    // 0x0061de55    8b96a80a0000
                         add                edx, 0x24                                            // 0x0061de5b    83c224
                         push               0x00bf1a84                                           // 0x0061de5e    68841abf00
                         push               edx                                                  // 0x0061de63    52
                         call               _swprintf                                            // 0x0061de64    e816861a00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x37901c]               // 0x0061de69    8b151cf0d300
                         add                esp, 0x10                                            // 0x0061de6f    83c410
_jmp_addr_0x0061de72:    cmp                edx, dword ptr [esi + 0x00000a90]                    // 0x0061de72    3b96900a0000
                         {disp8} jne        _jmp_addr_0x0061de9a                                 // 0x0061de78    7520
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x379018]               // 0x0061de7a    8b0d18f0d300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22e580]               // 0x0061de80    a18045bf00
                         cmp                ecx, 0x01                                            // 0x0061de85    83f901
                         sete               cl                                                   // 0x0061de88    0f94c1
                         push               eax                                                  // 0x0061de8b    50
                         push               ecx                                                  // 0x0061de8c    51
                         mov.s              ecx, esi                                             // 0x0061de8d    8bce
                         call               _jmp_addr_0x00621aa0                                 // 0x0061de8f    e80c3c0000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x37901c]               // 0x0061de94    8b151cf0d300
_jmp_addr_0x0061de9a:    cmp                edx, dword ptr [esi + 0x00000a94]                    // 0x0061de9a    3b96940a0000
                         {disp8} jne        _jmp_addr_0x0061debb                                 // 0x0061dea0    7519
                         {disp32} mov       edx, dword ptr [data_bytes + 0x22e580]               // 0x0061dea2    8b158045bf00
                         push               edx                                                  // 0x0061dea8    52
                         cmp                dword ptr [data_bytes + 0x379018], 0x01              // 0x0061dea9    833d18f0d30001
                         sete               al                                                   // 0x0061deb0    0f94c0
                         mov.s              ecx, esi                                             // 0x0061deb3    8bce
                         push               eax                                                  // 0x0061deb5    50
                         call               _jmp_addr_0x00621b70                                 // 0x0061deb6    e8b53c0000
_jmp_addr_0x0061debb:    cmp                ebp, 0x0d                                            // 0x0061debb    83fd0d
                         {disp32} ja        _jmp_addr_0x0061e601                                 // 0x0061debe    0f873d070000
                         xor.s              ecx, ecx                                             // 0x0061dec4    33c9
                         {disp32} mov       cl, byte ptr [ebp + 0x0061e628]                      // 0x0061dec6    8a8d28e66100
                         jmp                dword ptr [ecx*4 + 0x61e610]                         // 0x0061decc    ff248d10e66100
                         pop                edi                                                  // 0x0061ded3    5f
                         pop                esi                                                  // 0x0061ded4    5e
                         pop                ebp                                                  // 0x0061ded5    5d
                         {disp32} mov       dword ptr [data_bytes + 0x379018], 0x00000000        // 0x0061ded6    c70518f0d30000000000
                         {disp32} mov       dword ptr [data_bytes + 0x22e580], 0x00000001        // 0x0061dee0    c7058045bf0001000000
                         {disp32} mov       byte ptr [data_bytes + 0x379028], 0x00               // 0x0061deea    c60528f0d30000
                         pop                ebx                                                  // 0x0061def1    5b
                         add                esp, 0x0000009c                                      // 0x0061def2    81c49c000000
                         ret                0x0018                                               // 0x0061def8    c21800
                         cmp                ebx, dword ptr [esi + 0x0000019c]                    // 0x0061defb    3b9e9c010000
                         {disp32} jne       _jmp_addr_0x0061e02e                                 // 0x0061df01    0f8527010000
                         {disp32} mov       edx, dword ptr [esi + 0x000001a0]                    // 0x0061df07    8b96a0010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a4c]                    // 0x0061df0d    8b8e4c0a0000
                         push               edx                                                  // 0x0061df13    52
                         call               _jmp_addr_0x00623820                                 // 0x0061df14    e807590000
                         {disp32} mov       byte ptr [esi + 0x00000abc], 0x01                    // 0x0061df19    c686bc0a000001
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a9c]               // 0x0061df20    8b159cfad300
                         {disp32} mov       byte ptr [data_bytes + 0x379010], 0x01               // 0x0061df26    c60510f0d30001
                         {disp32} mov       bl, byte ptr [edx + 0x00000abc]                      // 0x0061df2d    8a9abc0a0000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000144]                    // 0x0061df33    8b8e44010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061df39    8b01
                         test               bl, bl                                               // 0x0061df3b    84db
                         sete               dl                                                   // 0x0061df3d    0f94c2
                         push               edx                                                  // 0x0061df40    52
                         call               dword ptr [eax + 8]                                  // 0x0061df41    ff5008
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a9c]               // 0x0061df44    8b159cfad300
                         {disp32} mov       bl, byte ptr [edx + 0x00000abc]                      // 0x0061df4a    8a9abc0a0000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000148]                    // 0x0061df50    8b8e48010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061df56    8b01
                         test               bl, bl                                               // 0x0061df58    84db
                         sete               dl                                                   // 0x0061df5a    0f94c2
                         push               edx                                                  // 0x0061df5d    52
                         call               dword ptr [eax + 8]                                  // 0x0061df5e    ff5008
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a9c]               // 0x0061df61    8b159cfad300
                         {disp32} mov       bl, byte ptr [edx + 0x00000abc]                      // 0x0061df67    8a9abc0a0000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000014c]                    // 0x0061df6d    8b8e4c010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061df73    8b01
                         test               bl, bl                                               // 0x0061df75    84db
                         sete               dl                                                   // 0x0061df77    0f94c2
                         push               edx                                                  // 0x0061df7a    52
                         call               dword ptr [eax + 8]                                  // 0x0061df7b    ff5008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000188]                    // 0x0061df7e    8b8e88010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061df84    8b01
                         xor.s              edx, edx                                             // 0x0061df86    33d2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a9c]               // 0x0061df88    8b159cfad300
                         {disp32} mov       dl, byte ptr [edx + 0x00000abc]                      // 0x0061df8e    8a92bc0a0000
                         push               edx                                                  // 0x0061df94    52
                         call               dword ptr [eax + 8]                                  // 0x0061df95    ff5008
                         {disp32} mov       ecx, dword ptr [esi + 0x0000018c]                    // 0x0061df98    8b8e8c010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061df9e    8b01
                         xor.s              edx, edx                                             // 0x0061dfa0    33d2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a9c]               // 0x0061dfa2    8b159cfad300
                         {disp32} mov       dl, byte ptr [edx + 0x00000abc]                      // 0x0061dfa8    8a92bc0a0000
                         push               edx                                                  // 0x0061dfae    52
                         call               dword ptr [eax + 8]                                  // 0x0061dfaf    ff5008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000190]                    // 0x0061dfb2    8b8e90010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061dfb8    8b01
                         xor.s              edx, edx                                             // 0x0061dfba    33d2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a9c]               // 0x0061dfbc    8b159cfad300
                         {disp32} mov       dl, byte ptr [edx + 0x00000abc]                      // 0x0061dfc2    8a92bc0a0000
                         push               edx                                                  // 0x0061dfc8    52
                         call               dword ptr [eax + 8]                                  // 0x0061dfc9    ff5008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000194]                    // 0x0061dfcc    8b8e94010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061dfd2    8b01
                         xor.s              edx, edx                                             // 0x0061dfd4    33d2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a9c]               // 0x0061dfd6    8b159cfad300
                         {disp32} mov       dl, byte ptr [edx + 0x00000abc]                      // 0x0061dfdc    8a92bc0a0000
                         push               edx                                                  // 0x0061dfe2    52
                         call               dword ptr [eax + 8]                                  // 0x0061dfe3    ff5008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]                    // 0x0061dfe6    8b8e98010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061dfec    8b01
                         xor.s              edx, edx                                             // 0x0061dfee    33d2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a9c]               // 0x0061dff0    8b159cfad300
                         {disp32} mov       dl, byte ptr [edx + 0x00000abc]                      // 0x0061dff6    8a92bc0a0000
                         push               edx                                                  // 0x0061dffc    52
                         call               dword ptr [eax + 8]                                  // 0x0061dffd    ff5008
                         {disp32} mov       ecx, dword ptr [esi + 0x0000019c]                    // 0x0061e000    8b8e9c010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061e006    8b01
                         xor.s              edx, edx                                             // 0x0061e008    33d2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x379a9c]               // 0x0061e00a    8b159cfad300
                         {disp32} mov       dl, byte ptr [edx + 0x00000abc]                      // 0x0061e010    8a92bc0a0000
                         push               edx                                                  // 0x0061e016    52
                         call               dword ptr [eax + 8]                                  // 0x0061e017    ff5008
                         mov.s              ecx, esi                                             // 0x0061e01a    8bce
                         call               _jmp_addr_0x0061cc80                                 // 0x0061e01c    e85fecffff
                         pop                edi                                                  // 0x0061e021    5f
                         pop                esi                                                  // 0x0061e022    5e
                         pop                ebp                                                  // 0x0061e023    5d
                         pop                ebx                                                  // 0x0061e024    5b
                         add                esp, 0x0000009c                                      // 0x0061e025    81c49c000000
                         ret                0x0018                                               // 0x0061e02b    c21800
_jmp_addr_0x0061e02e:    {disp32} mov       eax, dword ptr [esi + 0x00000194]                    // 0x0061e02e    8b8694010000
                         cmp.s              ebx, eax                                             // 0x0061e034    3bd8
                         {disp32} jne       _jmp_addr_0x0061e601                                 // 0x0061e036    0f85c5050000
                         {disp32} mov       cl, byte ptr [eax + 0x00000285]                      // 0x0061e03c    8a8885020000
                         test               cl, cl                                               // 0x0061e042    84c9
                         {disp8} je         _jmp_addr_0x0061e04f                                 // 0x0061e044    7409
                         cmp                ebp, 0x04                                            // 0x0061e046    83fd04
                         {disp32} je        _jmp_addr_0x0061e601                                 // 0x0061e049    0f84b2050000
_jmp_addr_0x0061e04f:    {disp32} mov       dword ptr [esi + 0x000001a0], 0x00000000             // 0x0061e04f    c786a001000000000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000248]                    // 0x0061e059    8b8848020000
                         test               ecx, ecx                                             // 0x0061e05f    85c9
                         {disp8} jl         _jmp_addr_0x0061e07e                                 // 0x0061e061    7c1b
                         cmp                ecx, dword ptr [eax + 0x00000250]                    // 0x0061e063    3b8850020000
                         {disp8} jge        _jmp_addr_0x0061e076                                 // 0x0061e069    7d0b
                         {disp32} mov       eax, dword ptr [eax + 0x00000264]                    // 0x0061e06b    8b8064020000
                         mov                ecx, dword ptr [eax + ecx * 0x4]                     // 0x0061e071    8b0c88
                         {disp8} jmp        _jmp_addr_0x0061e078                                 // 0x0061e074    eb02
_jmp_addr_0x0061e076:    xor.s              ecx, ecx                                             // 0x0061e076    33c9
_jmp_addr_0x0061e078:    {disp32} mov       dword ptr [esi + 0x000001a0], ecx                    // 0x0061e078    898ea0010000
_jmp_addr_0x0061e07e:    cmp                ebp, 0x01                                            // 0x0061e07e    83fd01
                         {disp32} jne       _jmp_addr_0x0061e601                                 // 0x0061e081    0f857a050000
                         {disp32} mov       eax, dword ptr [esi + 0x000001a0]                    // 0x0061e087    8b86a0010000
                         test               eax, eax                                             // 0x0061e08d    85c0
                         {disp8} je         _jmp_addr_0x0061e09d                                 // 0x0061e08f    740c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a4c]                    // 0x0061e091    8b8e4c0a0000
                         push               eax                                                  // 0x0061e097    50
                         call               _jmp_addr_0x00623980                                 // 0x0061e098    e8e3580000
_jmp_addr_0x0061e09d:    mov.s              ecx, esi                                             // 0x0061e09d    8bce
                         call               _jmp_addr_0x0061d370                                 // 0x0061e09f    e8ccf2ffff
                         pop                edi                                                  // 0x0061e0a4    5f
                         pop                esi                                                  // 0x0061e0a5    5e
                         pop                ebp                                                  // 0x0061e0a6    5d
                         pop                ebx                                                  // 0x0061e0a7    5b
                         add                esp, 0x0000009c                                      // 0x0061e0a8    81c49c000000
                         ret                0x0018                                               // 0x0061e0ae    c21800
                         {disp32} mov       al, byte ptr [esi + 0x00000abc]                      // 0x0061e0b1    8a86bc0a0000
                         test               al, al                                               // 0x0061e0b7    84c0
                         {disp8} jne        _jmp_addr_0x0061e11e                                 // 0x0061e0b9    7563
                         {disp32} mov       eax, dword ptr [esi + 0x00000194]                    // 0x0061e0bb    8b8694010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000248]                    // 0x0061e0c1    8b8848020000
                         test               ecx, ecx                                             // 0x0061e0c7    85c9
                         {disp8} jge        _jmp_addr_0x0061e0d5                                 // 0x0061e0c9    7d0a
                         {disp32} mov       cl, byte ptr [eax + 0x00000285]                      // 0x0061e0cb    8a8885020000
                         test               cl, cl                                               // 0x0061e0d1    84c9
                         {disp8} je         _jmp_addr_0x0061e10d                                 // 0x0061e0d3    7438
_jmp_addr_0x0061e0d5:    {disp32} mov       eax, dword ptr [esi + 0x000001a0]                    // 0x0061e0d5    8b86a0010000
                         test               eax, eax                                             // 0x0061e0db    85c0
                         {disp8} je         _jmp_addr_0x0061e10d                                 // 0x0061e0dd    742e
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a44]                    // 0x0061e0df    8b8e440a0000
                         {disp32} mov       al, byte ptr [ecx + 0x00000100]                      // 0x0061e0e5    8a8100010000
                         test               al, al                                               // 0x0061e0eb    84c0
                         {disp8} je         _jmp_addr_0x0061e10d                                 // 0x0061e0ed    741e
                         {disp32} mov       eax, dword ptr [esi + 0x00000a4c]                    // 0x0061e0ef    8b864c0a0000
                         {disp32} mov       cl, byte ptr [eax + 0x000010c0]                      // 0x0061e0f5    8a88c0100000
                         test               cl, cl                                               // 0x0061e0fb    84c9
                         {disp8} jne        _jmp_addr_0x0061e10d                                 // 0x0061e0fd    750e
                         {disp32} mov       cl, byte ptr [eax + 0x00001350]                      // 0x0061e0ff    8a8850130000
                         test               cl, cl                                               // 0x0061e105    84c9
                         {disp8} jne        _jmp_addr_0x0061e10d                                 // 0x0061e107    7504
                         xor.s              eax, eax                                             // 0x0061e109    33c0
                         {disp8} jmp        _jmp_addr_0x0061e112                                 // 0x0061e10b    eb05
_jmp_addr_0x0061e10d:    mov                eax, 0x00000001                                      // 0x0061e10d    b801000000
_jmp_addr_0x0061e112:    {disp32} mov       ecx, dword ptr [esi + 0x0000019c]                    // 0x0061e112    8b8e9c010000
                         mov                edx, dword ptr [ecx]                                 // 0x0061e118    8b11
                         push               eax                                                  // 0x0061e11a    50
                         call               dword ptr [edx + 8]                                  // 0x0061e11b    ff5208
_jmp_addr_0x0061e11e:    {disp32} mov       al, byte ptr [data_bytes + 0x37a5fc]                 // 0x0061e11e    a0fc05d400
                         test               al, al                                               // 0x0061e123    84c0
                         {disp8} je         _jmp_addr_0x0061e134                                 // 0x0061e125    740d
                         {disp32} mov       ecx, dword ptr [esi + 0x0000019c]                    // 0x0061e127    8b8e9c010000
                         mov                eax, dword ptr [ecx]                                 // 0x0061e12d    8b01
                         push               0x1                                                  // 0x0061e12f    6a01
                         call               dword ptr [eax + 8]                                  // 0x0061e131    ff5008
_jmp_addr_0x0061e134:    mov.s              ecx, esi                                             // 0x0061e134    8bce
                         call               _jmp_addr_0x00622040                                 // 0x0061e136    e8053f0000
                         {disp32} mov       al, byte ptr [esi + 0x00000abc]                      // 0x0061e13b    8a86bc0a0000
                         test               al, al                                               // 0x0061e141    84c0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c9c]               // 0x0061e143    a19c7cd100
                         {disp8} jne        _jmp_addr_0x0061e164                                 // 0x0061e148    751a
                         cmp                eax, 0x11                                            // 0x0061e14a    83f811
                         {disp8} ja         _jmp_addr_0x0061e156                                 // 0x0061e14d    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c98]               // 0x0061e14f    a1987cd100
                         {disp8} jmp        _jmp_addr_0x0061e17c                                 // 0x0061e154    eb26
_jmp_addr_0x0061e156:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351c98]               // 0x0061e156    8b0d987cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000000cc]                    // 0x0061e15c    8d81cc000000
                         {disp8} jmp        _jmp_addr_0x0061e17c                                 // 0x0061e162    eb18
_jmp_addr_0x0061e164:    cmp                eax, 0x10                                            // 0x0061e164    83f810
                         {disp8} ja         _jmp_addr_0x0061e170                                 // 0x0061e167    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c98]               // 0x0061e169    a1987cd100
                         {disp8} jmp        _jmp_addr_0x0061e17c                                 // 0x0061e16e    eb0c
_jmp_addr_0x0061e170:    {disp32} mov       edx, dword ptr [data_bytes + 0x351c98]               // 0x0061e170    8b15987cd100
                         {disp32} lea       eax, dword ptr [edx + 0x000000c0]                    // 0x0061e176    8d82c0000000
_jmp_addr_0x0061e17c:    {disp8} mov        eax, dword ptr [eax + 0x08]                          // 0x0061e17c    8b4008
                         push               eax                                                  // 0x0061e17f    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000ab4]                    // 0x0061e180    8b86b40a0000
                         add                eax, 0x24                                            // 0x0061e186    83c024
                         push               0x009cd6c8                                           // 0x0061e189    68c8d69c00
                         push               eax                                                  // 0x0061e18e    50
                         call               _swprintf                                            // 0x0061e18f    e8eb821a00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c9c]               // 0x0061e194    a19c7cd100
                         add                esp, 0x0c                                            // 0x0061e199    83c40c
                         cmp                eax, 0x12                                            // 0x0061e19c    83f812
                         {disp8} ja         _jmp_addr_0x0061e1a8                                 // 0x0061e19f    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c98]               // 0x0061e1a1    a1987cd100
                         {disp8} jmp        _jmp_addr_0x0061e1b4                                 // 0x0061e1a6    eb0c
_jmp_addr_0x0061e1a8:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351c98]               // 0x0061e1a8    8b0d987cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000000d8]                    // 0x0061e1ae    8d81d8000000
_jmp_addr_0x0061e1b4:    {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x0061e1b4    8b5008
                         {disp32} mov       eax, dword ptr [esi + 0x00000ab8]                    // 0x0061e1b7    8b86b80a0000
                         push               edx                                                  // 0x0061e1bd    52
                         add                eax, 0x24                                            // 0x0061e1be    83c024
                         push               0x009cd6c8                                           // 0x0061e1c1    68c8d69c00
                         push               eax                                                  // 0x0061e1c6    50
                         call               _swprintf                                            // 0x0061e1c7    e8b3821a00
                         {disp32} mov       eax, dword ptr [esi + 0x00000ac0]                    // 0x0061e1cc    8b86c00a0000
                         add                esp, 0x0c                                            // 0x0061e1d2    83c40c
                         test               eax, eax                                             // 0x0061e1d5    85c0
                         {disp8} jne        _jmp_addr_0x0061e20d                                 // 0x0061e1d7    7534
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a98]                    // 0x0061e1d9    8b8e980a0000
                         mov                edx, dword ptr [ecx]                                 // 0x0061e1df    8b11
                         push               0x1                                                  // 0x0061e1e1    6a01
                         call               dword ptr [edx + 8]                                  // 0x0061e1e3    ff5208
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a90]                    // 0x0061e1e6    8b8e900a0000
                         mov                eax, dword ptr [ecx]                                 // 0x0061e1ec    8b01
                         push               0x1                                                  // 0x0061e1ee    6a01
                         call               dword ptr [eax + 8]                                  // 0x0061e1f0    ff5008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a94]                    // 0x0061e1f3    8b8e940a0000
                         mov                edx, dword ptr [ecx]                                 // 0x0061e1f9    8b11
                         push               0x1                                                  // 0x0061e1fb    6a01
                         call               dword ptr [edx + 8]                                  // 0x0061e1fd    ff5208
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a9c]                    // 0x0061e200    8b8e9c0a0000
                         mov                eax, dword ptr [ecx]                                 // 0x0061e206    8b01
                         push               0x1                                                  // 0x0061e208    6a01
                         call               dword ptr [eax + 8]                                  // 0x0061e20a    ff5008
_jmp_addr_0x0061e20d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x379a94]               // 0x0061e20d    8b0d94fad300
                         {disp32} mov       ebx, dword ptr [ecx + 0x00000300]                    // 0x0061e213    8b9900030000
                         test               ebx, ebx                                             // 0x0061e219    85db
                         sete               dl                                                   // 0x0061e21b    0f94c2
                         mov.s              ecx, esi                                             // 0x0061e21e    8bce
                         push               edx                                                  // 0x0061e220    52
                         call               _jmp_addr_0x00621db0                                 // 0x0061e221    e88a3b0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x379a94]               // 0x0061e226    8b0d94fad300
                         {disp32} mov       edx, dword ptr [ecx + 0x00000300]                    // 0x0061e22c    8b9100030000
                         {disp32} mov       esi, dword ptr [esi + 0x00000aa0]                    // 0x0061e232    8bb6a00a0000
                         mov                eax, dword ptr [esi]                                 // 0x0061e238    8b06
                         test               edx, edx                                             // 0x0061e23a    85d2
                         setne              dl                                                   // 0x0061e23c    0f95c2
                         mov.s              ecx, esi                                             // 0x0061e23f    8bce
                         push               edx                                                  // 0x0061e241    52
                         call               dword ptr [eax + 8]                                  // 0x0061e242    ff5008
                         pop                edi                                                  // 0x0061e245    5f
                         pop                esi                                                  // 0x0061e246    5e
                         pop                ebp                                                  // 0x0061e247    5d
                         pop                ebx                                                  // 0x0061e248    5b
                         add                esp, 0x0000009c                                      // 0x0061e249    81c49c000000
                         ret                0x0018                                               // 0x0061e24f    c21800
                         {disp32} mov       eax, dword ptr [esi + 0x000001a0]                    // 0x0061e252    8b86a0010000
                         test               eax, eax                                             // 0x0061e258    85c0
                         {disp32} je        _jmp_addr_0x0061e375                                 // 0x0061e25a    0f8415010000
                         cmp                eax, dword ptr [esi + 0x00000a34]                    // 0x0061e260    3b86340a0000
                         {disp32} jne       _jmp_addr_0x0061e375                                 // 0x0061e266    0f8509010000
                         {disp32} mov       al, byte ptr [esi + 0x00000abc]                      // 0x0061e26c    8a86bc0a0000
                         test               al, al                                               // 0x0061e272    84c0
                         {disp8} jne        _jmp_addr_0x0061e2c8                                 // 0x0061e274    7552
                         {disp32} fild      dword ptr [esi + 0x00000a38]                         // 0x0061e276    db86380a0000
                         {disp32} mov       eax, dword ptr [esi + 0x000009a8]                    // 0x0061e27c    8b86a8090000
                         push               0x42c80000                                           // 0x0061e282    680000c842
                         push               0x0                                                  // 0x0061e287    6a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]                     // 0x0061e289    d80d0cb58a00
                         push               0x0000a000                                           // 0x0061e28f    6800a00000
                         push               0xffff6000                                           // 0x0061e294    680060ffff
                         push               0x1                                                  // 0x0061e299    6a01
                         push               0x0                                                  // 0x0061e29b    6a00
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x0061e29d    d95c2428
                         push               eax                                                  // 0x0061e2a1    50
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                          // 0x0061e2a2    8b44242c
                         push               eax                                                  // 0x0061e2a6    50
                         push               eax                                                  // 0x0061e2a7    50
                         push               0x0                                                  // 0x0061e2a8    6a00
                         push               0x0                                                  // 0x0061e2aa    6a00
                         push               0x00000212                                           // 0x0061e2ac    6812020000
                         push               0x000001cc                                           // 0x0061e2b1    68cc010000
                         push               0x0000019a                                           // 0x0061e2b6    689a010000
                         push               0x00000154                                           // 0x0061e2bb    6854010000
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                        // 0x0061e2c0    e8bb46dfff
                         add                esp, 0x3c                                            // 0x0061e2c5    83c43c
_jmp_addr_0x0061e2c8:    {disp32} mov       ecx, dword ptr [esi + 0x000001a0]                    // 0x0061e2c8    8b8ea0010000
                         push               ecx                                                  // 0x0061e2ce    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a4c]                    // 0x0061e2cf    8b8e4c0a0000
                         call               _jmp_addr_0x00626020                                 // 0x0061e2d5    e8467d0000
                         test               eax, eax                                             // 0x0061e2da    85c0
                         {disp32} je        _jmp_addr_0x0061e375                                 // 0x0061e2dc    0f8493000000
                         {disp32} mov       cl, byte ptr [eax + 0x00000328]                      // 0x0061e2e2    8a8828030000
                         test               cl, cl                                               // 0x0061e2e8    84c9
                         {disp32} je        _jmp_addr_0x0061e375                                 // 0x0061e2ea    0f8485000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000198]                    // 0x0061e2f0    8b8698010000
                         cmp                dword ptr [eax + 0x00000250], 0x01                   // 0x0061e2f6    83b85002000001
                         {disp8} jne        _jmp_addr_0x0061e319                                 // 0x0061e2fd    751a
                         {disp32} mov       edx, dword ptr [eax + 0x00000258]                    // 0x0061e2ff    8b9058020000
                         push               edx                                                  // 0x0061e305    52
                         {disp32} lea       eax, dword ptr [esi + 0x000001a4]                    // 0x0061e306    8d86a4010000
                         push               eax                                                  // 0x0061e30c    50
                         call               _wcscmp                                 // 0x0061e30d    e8cd8b1a00
                         add                esp, 0x08                                            // 0x0061e312    83c408
                         test               eax, eax                                             // 0x0061e315    85c0
                         {disp8} je         _jmp_addr_0x0061e375                                 // 0x0061e317    745c
_jmp_addr_0x0061e319:    {disp32} mov       edi, dword ptr [esi + 0x00000198]                    // 0x0061e319    8bbe98010000
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061e31f    8b8750020000
                         test               eax, eax                                             // 0x0061e325    85c0
                         {disp8} jle        _jmp_addr_0x0061e33c                                 // 0x0061e327    7e13
_jmp_addr_0x0061e329:    dec                eax                                                  // 0x0061e329    48
                         push               eax                                                  // 0x0061e32a    50
                         mov.s              ecx, edi                                             // 0x0061e32b    8bcf
                         call               @DeleteString__9SetupListFi@12                       // 0x0061e32d    e82ecadeff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]                    // 0x0061e332    8b8750020000
                         test               eax, eax                                             // 0x0061e338    85c0
                         {disp8} jg         _jmp_addr_0x0061e329                                 // 0x0061e33a    7fed
_jmp_addr_0x0061e33c:    {disp32} mov       edi, dword ptr [esi + 0x00000198]                    // 0x0061e33c    8bbe98010000
                         {disp32} mov       edx, dword ptr [edi + 0x00000250]                    // 0x0061e342    8b9750020000
                         {disp32} lea       ecx, dword ptr [esi + 0x000001a4]                    // 0x0061e348    8d8ea4010000
                         push               ecx                                                  // 0x0061e34e    51
                         push               edx                                                  // 0x0061e34f    52
                         mov.s              ecx, edi                                             // 0x0061e350    8bcf
                         call               @InsertString__9SetupListFiPw@16                     // 0x0061e352    e819cbdeff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]                    // 0x0061e357    8b8f50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                         // 0x0061e35d    8d41ff
                         test               eax, eax                                             // 0x0061e360    85c0
                         {disp8} jl         _jmp_addr_0x0061e375                                 // 0x0061e362    7c11
                         cmp.s              eax, ecx                                             // 0x0061e364    3bc1
                         {disp8} jge        _jmp_addr_0x0061e375                                 // 0x0061e366    7d0d
                         {disp32} mov       ecx, dword ptr [edi + 0x00000268]                    // 0x0061e368    8b8f68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000              // 0x0061e36e    c7048100000000
_jmp_addr_0x0061e375:    {disp32} mov       al, byte ptr [esi + 0x00000abc]                      // 0x0061e375    8a86bc0a0000
                         test               al, al                                               // 0x0061e37b    84c0
                         {disp32} jne       _jmp_addr_0x0061e601                                 // 0x0061e37d    0f857e020000
                         {disp32} mov       eax, dword ptr [esi + 0x00000a4c]                    // 0x0061e383    8b864c0a0000
                         {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x0061e389    d90598a38a00
                         {disp32} mov       cl, byte ptr [eax + 0x000010c0]                      // 0x0061e38f    8a88c0100000
                         test               cl, cl                                               // 0x0061e395    84c9
                         {disp8} je         _jmp_addr_0x0061e3a3                                 // 0x0061e397    740a
                         fstp               st(0)                                                // 0x0061e399    ddd8
                         {disp32} fld       dword ptr [eax + 0x000012c8]                         // 0x0061e39b    d980c8120000
                         {disp8} jmp        _jmp_addr_0x0061e3b5                                 // 0x0061e3a1    eb12
_jmp_addr_0x0061e3a3:    {disp32} mov       cl, byte ptr [eax + 0x00001350]                      // 0x0061e3a3    8a8850130000
                         test               cl, cl                                               // 0x0061e3a9    84c9
                         {disp8} je         _jmp_addr_0x0061e3b5                                 // 0x0061e3ab    7408
                         fstp               st(0)                                                // 0x0061e3ad    ddd8
                         {disp32} fld       dword ptr [eax + 0x00001558]                         // 0x0061e3af    d98058150000
_jmp_addr_0x0061e3b5:    fld                st(0)                                                // 0x0061e3b5    d9c0
                         call               _jmp_addr_0x007a1400                                 // 0x0061e3b7    e844301800
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2678]                     // 0x0061e3bc    d81578b68a00
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x0061e3c2    8944241c
                         fnstsw             ax                                                   // 0x0061e3c6    dfe0
                         test               ah, 0x40                                             // 0x0061e3c8    f6c440
                         {disp8} je         _jmp_addr_0x0061e410                                 // 0x0061e3cb    7443
                         fstp               st(0)                                                // 0x0061e3cd    ddd8
                         call               dword ptr [__imp__GetTickCount@4]                    // 0x0061e3cf    ff15c4918a00
                         and                eax, 0x00000fff                                      // 0x0061e3d5    25ff0f0000
                         lea                eax, dword ptr [eax + eax * 0x4]                     // 0x0061e3da    8d0480
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x0061e3dd    8d1480
                         shl                edx, 2                                               // 0x0061e3e0    c1e202
                         shr                edx, 0xc                                             // 0x0061e3e3    c1ea0c
                         {disp8} mov        dword ptr [esp + 0x24], edx                          // 0x0061e3e6    89542424
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000                   // 0x0061e3ea    c744242800000000
                         {disp8} fild       qword ptr [esp + 0x24]                               // 0x0061e3f2    df6c2424
                         {disp32} fcom      dword ptr [_rdata_float1p0]                          // 0x0061e3f6    d81590a38a00
                         fnstsw             ax                                                   // 0x0061e3fc    dfe0
                         test               ah, 0x41                                             // 0x0061e3fe    f6c441
                         {disp8} jne        _jmp_addr_0x0061e423                                 // 0x0061e401    7520
                         {disp32} fcom      dword ptr [rdata_bytes + 0x241c]                     // 0x0061e403    d8151cb48a00
                         fnstsw             ax                                                   // 0x0061e409    dfe0
                         test               ah, 0x01                                             // 0x0061e40b    f6c401
                         {disp8} je         _jmp_addr_0x0061e423                                 // 0x0061e40e    7413
_jmp_addr_0x0061e410:    {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0061e410    d81d98a38a00
                         fnstsw             ax                                                   // 0x0061e416    dfe0
                         test               ah, 0x40                                             // 0x0061e418    f6c440
                         {disp32} jne       _jmp_addr_0x0061e601                                 // 0x0061e41b    0f85e0010000
                         {disp8} jmp        _jmp_addr_0x0061e425                                 // 0x0061e421    eb02
_jmp_addr_0x0061e423:    fstp               st(0)                                                // 0x0061e423    ddd8
_jmp_addr_0x0061e425:    {disp32} mov       eax, dword ptr [esi + 0x0000019c]                    // 0x0061e425    8b869c010000
                         {disp8} mov        ebp, dword ptr [eax + 0x14]                          // 0x0061e42b    8b6814
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                          // 0x0061e42e    8b4810
                         {disp8} mov        ebx, dword ptr [eax + 0x0c]                          // 0x0061e431    8b580c
                         {disp8} mov        edi, dword ptr [eax + 0x08]                          // 0x0061e434    8b7808
                         push               -0x1                                                 // 0x0061e437    6aff
                         push               -0x1                                                 // 0x0061e439    6aff
                         push               0x10                                                 // 0x0061e43b    6a10
                         push               0x0                                                  // 0x0061e43d    6a00
                         push               ebp                                                  // 0x0061e43f    55
                         push               ecx                                                  // 0x0061e440    51
                         push               ebx                                                  // 0x0061e441    53
                         push               edi                                                  // 0x0061e442    57
                         {disp8} mov        dword ptr [esp + 0x30], ecx                          // 0x0061e443    894c2430
                         call               ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z                // 0x0061e447    e8d457dfff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a4c]                    // 0x0061e44c    8b8e4c0a0000
                         {disp32} fld       dword ptr [ecx + 0x00000a50]                         // 0x0061e452    d981500a0000
                         add                esp, 0x20                                            // 0x0061e458    83c420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0061e45b    d81d98a38a00
                         fnstsw             ax                                                   // 0x0061e461    dfe0
                         test               ah, 0x41                                             // 0x0061e463    f6c441
                         {disp8} jne        _jmp_addr_0x0061e48b                                 // 0x0061e466    7523
                         {disp32} fld       dword ptr [ecx + 0x00000a50]                         // 0x0061e468    d981500a0000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x0061e46e    d81d90a38a00
                         fnstsw             ax                                                   // 0x0061e474    dfe0
                         test               ah, 0x01                                             // 0x0061e476    f6c401
                         {disp8} je         _jmp_addr_0x0061e483                                 // 0x0061e479    7408
                         {disp32} fld       dword ptr [ecx + 0x00000a50]                         // 0x0061e47b    d981500a0000
                         {disp8} jmp        _jmp_addr_0x0061e491                                 // 0x0061e481    eb0e
_jmp_addr_0x0061e483:    {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x0061e483    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0061e491                                 // 0x0061e489    eb06
_jmp_addr_0x0061e48b:    {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x0061e48b    d90598a38a00
_jmp_addr_0x0061e491:    {disp8} mov        ecx, dword ptr [esp + 0x10]                          // 0x0061e491    8b4c2410
                         push               0x1                                                  // 0x0061e495    6a01
                         push               0x0                                                  // 0x0061e497    6a00
                         sub.s              ecx, edi                                             // 0x0061e499    2bcf
                         sub                ecx, 0x06                                            // 0x0061e49b    83e906
                         push               0x400000ff                                           // 0x0061e49e    68ff000040
                         {disp8} mov        dword ptr [esp + 0x30], ecx                          // 0x0061e4a3    894c2430
                         {disp8} fild       dword ptr [esp + 0x30]                               // 0x0061e4a7    db442430
                         push               0xff0000ff                                           // 0x0061e4ab    68ff0000ff
                         push               0xff0000ff                                           // 0x0061e4b0    68ff0000ff
                         {disp8} lea        eax, dword ptr [ebp + -0x03]                         // 0x0061e4b5    8d45fd
                         fmul               st, st(1)                                            // 0x0061e4b8    d8c9
                         push               0x400000ff                                           // 0x0061e4ba    68ff000040
                         push               eax                                                  // 0x0061e4bf    50
                         call               _jmp_addr_0x007a1400                                 // 0x0061e4c0    e83b2f1800
                         fstp               st(0)                                                // 0x0061e4c5    ddd8
                         {disp8} lea        edx, dword ptr [eax + edi * 0x1 + 0x03]              // 0x0061e4c7    8d543803
                         push               edx                                                  // 0x0061e4cb    52
                         {disp8} lea        eax, dword ptr [ebx + 0x03]                          // 0x0061e4cc    8d4303
                         push               eax                                                  // 0x0061e4cf    50
                         {disp8} lea        ecx, dword ptr [edi + 0x03]                          // 0x0061e4d0    8d4f03
                         push               ecx                                                  // 0x0061e4d3    51
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z                 // 0x0061e4d4    e8e74ddfff
                         {disp8} mov        eax, dword ptr [esp + 0x44]                          // 0x0061e4d9    8b442444
                         add                esp, 0x28                                            // 0x0061e4dd    83c428
                         test               eax, eax                                             // 0x0061e4e0    85c0
                         {disp32} jle       _jmp_addr_0x0061e585                                 // 0x0061e4e2    0f8e9d000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000a4c]                    // 0x0061e4e8    8b8e4c0a0000
                         {disp32} fld       dword ptr [ecx + 0x00000a50]                         // 0x0061e4ee    d981500a0000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x0061e4f4    d81d98a38a00
                         fnstsw             ax                                                   // 0x0061e4fa    dfe0
                         test               ah, 0x41                                             // 0x0061e4fc    f6c441
                         {disp8} jne        _jmp_addr_0x0061e524                                 // 0x0061e4ff    7523
                         {disp32} fld       dword ptr [ecx + 0x00000a50]                         // 0x0061e501    d981500a0000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x0061e507    d81d90a38a00
                         fnstsw             ax                                                   // 0x0061e50d    dfe0
                         test               ah, 0x01                                             // 0x0061e50f    f6c401
                         {disp8} je         _jmp_addr_0x0061e51c                                 // 0x0061e512    7408
                         {disp32} fld       dword ptr [ecx + 0x00000a50]                         // 0x0061e514    d981500a0000
                         {disp8} jmp        _jmp_addr_0x0061e52a                                 // 0x0061e51a    eb0e
_jmp_addr_0x0061e51c:    {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x0061e51c    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0061e52a                                 // 0x0061e522    eb06
_jmp_addr_0x0061e524:    {disp32} fld       dword ptr [_rdata_float0p0]                          // 0x0061e524    d90598a38a00
_jmp_addr_0x0061e52a:    {disp32} fmul      dword ptr [rdata_bytes + 0x241c]                     // 0x0061e52a    d80d1cb48a00
                         call               _jmp_addr_0x007a1400                                 // 0x0061e530    e8cb2e1800
                         push               eax                                                  // 0x0061e535    50
                         {disp8} lea        edx, dword ptr [esp + 0x30]                          // 0x0061e536    8d542430
                         push               0x009c8228                                           // 0x0061e53a    6828829c00
                         push               edx                                                  // 0x0061e53f    52
                         call               _swprintf                                            // 0x0061e540    e83a7f1a00
                         add                esp, 0x0c                                            // 0x0061e545    83c40c
                         push               0x0                                                  // 0x0061e548    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x0061e54a    8d44241c
                         push               0x1                                                  // 0x0061e54e    6a01
                         push               eax                                                  // 0x0061e550    50
                         {disp8} mov        byte ptr [esp + 0x24], -0x01                         // 0x0061e551    c6442424ff
                         {disp8} mov        byte ptr [esp + 0x25], -0x01                         // 0x0061e556    c6442425ff
                         {disp8} mov        byte ptr [esp + 0x26], -0x01                         // 0x0061e55b    c6442426ff
                         {disp8} mov        byte ptr [esp + 0x27], -0x01                         // 0x0061e560    c6442427ff
                         call               _GetSmallTextSize__Fv                                // 0x0061e565    e8a694deff
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                          // 0x0061e56a    8b54241c
                         push               eax                                                  // 0x0061e56e    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                          // 0x0061e56f    8d4c243c
                         push               ecx                                                  // 0x0061e573    51
                         push               0x1                                                  // 0x0061e574    6a01
                         push               ebx                                                  // 0x0061e576    53
                         push               ebp                                                  // 0x0061e577    55
                         push               edx                                                  // 0x0061e578    52
                         push               ebx                                                  // 0x0061e579    53
                         push               edi                                                  // 0x0061e57a    57
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z   // 0x0061e57b    e8d031dfff
                         fstp               st(0)                                                // 0x0061e580    ddd8
                         add                esp, 0x2c                                            // 0x0061e582    83c42c
_jmp_addr_0x0061e585:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001a27        // 0x0061e585    813dac7cd100271a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061e58f    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0061e59b                                 // 0x0061e594    7605
                         add                eax, 0x000139d4                                      // 0x0061e596    05d4390100
_jmp_addr_0x0061e59b:    {disp32} mov       ecx, dword ptr [esi + 0x00000a4c]                    // 0x0061e59b    8b8e4c0a0000
                         {disp32} fld       dword ptr [ecx + 0x00000a54]                         // 0x0061e5a1    d981540a0000
                         {disp8} mov        edx, dword ptr [eax + 0x08]                          // 0x0061e5a7    8b5008
                         sub                esp, 0x08                                            // 0x0061e5aa    83ec08
                         fstp               qword ptr [esp]                                      // 0x0061e5ad    dd1c24
                         push               edx                                                  // 0x0061e5b0    52
                         {disp8} lea        eax, dword ptr [esp + 0x38]                          // 0x0061e5b1    8d442438
                         push               eax                                                  // 0x0061e5b5    50
                         call               _swprintf                                            // 0x0061e5b6    e8c47e1a00
                         add                esp, 0x10                                            // 0x0061e5bb    83c410
                         push               0x0                                                  // 0x0061e5be    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x0061e5c0    8d4c2418
                         push               0x1                                                  // 0x0061e5c4    6a01
                         push               ecx                                                  // 0x0061e5c6    51
                         {disp8} mov        byte ptr [esp + 0x20], -0x01                         // 0x0061e5c7    c6442420ff
                         {disp8} mov        byte ptr [esp + 0x21], -0x01                         // 0x0061e5cc    c6442421ff
                         {disp8} mov        byte ptr [esp + 0x22], -0x01                         // 0x0061e5d1    c6442422ff
                         {disp8} mov        byte ptr [esp + 0x23], -0x01                         // 0x0061e5d6    c6442423ff
                         call               _GetSmallTextSize__Fv                                // 0x0061e5db    e83094deff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                          // 0x0061e5e0    8b4c241c
                         push               eax                                                  // 0x0061e5e4    50
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                          // 0x0061e5e5    8d54243c
                         push               edx                                                  // 0x0061e5e9    52
                         push               0x1                                                  // 0x0061e5ea    6a01
                         push               ebp                                                  // 0x0061e5ec    55
                         {disp8} lea        eax, dword ptr [ebp + ebp * 0x1 + 0x00]              // 0x0061e5ed    8d442d00
                         sub.s              eax, ebx                                             // 0x0061e5f1    2bc3
                         push               eax                                                  // 0x0061e5f3    50
                         push               ecx                                                  // 0x0061e5f4    51
                         push               ebp                                                  // 0x0061e5f5    55
                         push               edi                                                  // 0x0061e5f6    57
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z   // 0x0061e5f7    e85431dfff
                         fstp               st(0)                                                // 0x0061e5fc    ddd8
                         add                esp, 0x2c                                            // 0x0061e5fe    83c42c
_jmp_addr_0x0061e601:    pop                edi                                                  // 0x0061e601    5f
                         pop                esi                                                  // 0x0061e602    5e
                         pop                ebp                                                  // 0x0061e603    5d
                         pop                ebx                                                  // 0x0061e604    5b
                         add                esp, 0x0000009c                                      // 0x0061e605    81c49c000000
                         ret                0x0018                                               // 0x0061e60b    c21800

// Snippet: db, [0x0061e60e, 0x0061e610)
.byte 0x8b, 0xff                  // 0x0061e60e

// Snippet: jmptbl, [0x0061e610, 0x0061e628)
.byte 0x52, 0xe2, 0x61, 0x00      // 0x0061e610
.byte 0xfb, 0xde, 0x61, 0x00      // 0x0061e614
.byte 0x2e, 0xe0, 0x61, 0x00      // 0x0061e618
.byte 0xd3, 0xde, 0x61, 0x00      // 0x0061e61c
.byte 0xb1, 0xe0, 0x61, 0x00      // 0x0061e620
.byte 0x01, 0xe6, 0x61, 0x00      // 0x0061e624

// Snippet: ijmptbl, [0x0061e628, 0x0061e636)
.byte 0x00, 0x01, 0x05, 0x05      // 0x0061e628
.byte 0x02, 0x05, 0x05, 0x05      // 0x0061e62c
.byte 0x05, 0x05, 0x03, 0x05      // 0x0061e630
.byte 0x05, 0x04                  // 0x0061e634

// Snippet: db, [0x0061e636, 0x0061e640)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0061e636
.byte 0x90, 0x90, 0x90, 0x90      // 0x0061e63a
.byte 0x90, 0x90                  // 0x0061e63e

