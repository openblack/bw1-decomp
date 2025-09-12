.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00407a20
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__9SetupListFiiiii@28
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _HideAll__13DialogBoxBaseFv@0
.extern _jmp_addr_0x00545680
.extern _jmp_addr_0x00545970
.extern _jmp_addr_0x00545980
.extern _jmp_addr_0x00545990
.extern _jmp_addr_0x00545d80
.extern _jmp_addr_0x00545f00
.extern  ??3@YAXPAX@Z
.extern _wcscat
.extern _wcscpy
.extern _wcslen
.extern __strcmpi
.extern ___nw__FUl
.extern _CHAR2WCHAR__FPc

.globl _jmp_addr_0x00544770
.globl _jmp_addr_0x00544b60
.globl _jmp_addr_0x00544df0
.globl ?Init@StartGameBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@StartGameBox@@UAEXXZ
.globl ?InitControls@StartGameBox@@UAEXXZ
.globl ?Init@SkirmishGameBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@SkirmishGameBox@@UAEXXZ
.globl ?InitControls@SkirmishGameBox@@UAEXXZ

start_0x005445b0_0x00544f80:
// Snippet: asm, [0x005445b0, 0x00544f4f)
?Init@StartGameBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x005445b0    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x005445b4    8b542404
                         push             esi                                           // 0x005445b8    56
                         push             edi                                           // 0x005445b9    57
                         mov.s            edi, ecx                                      // 0x005445ba    8bf9
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x005445bc    8b4c2410
                         push             eax                                           // 0x005445c0    50
                         push             ecx                                           // 0x005445c1    51
                         push             edx                                           // 0x005445c2    52
                         mov.s            ecx, edi                                      // 0x005445c3    8bcf
                         call             @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x005445c5    e836eefcff
                         {disp32} mov     dword ptr [data_bytes + 0x30ab84], edi        // 0x005445ca    893d840bcd00
                         call             _jmp_addr_0x00407a20                          // 0x005445d0    e84b34ecff
                         {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x005445d5    8b4f04
                         push             0x00000dcd                                    // 0x005445d8    68cd0d0000
                         push             0x00bea568                                    // 0x005445dd    6868a5be00
                         push             0x00000244                                    // 0x005445e2    6844020000
                         {disp32} mov     dword ptr [ecx + 0x000000ac], eax             // 0x005445e7    8981ac000000
                         call             ___nw__FUl                                    // 0x005445ed    e89e712900
                         mov.s            esi, eax                                      // 0x005445f2    8bf0
                         add              esp, 0x0c                                     // 0x005445f4    83c40c
                         test             esi, esi                                      // 0x005445f7    85f6
                         {disp8} je       _jmp_addr_0x00544637                          // 0x005445f9    743c
                         push             0x00c4cd30                                    // 0x005445fb    6830cdc400
                         push             0x28                                          // 0x00544600    6a28
                         push             0x000002d0                                    // 0x00544602    68d0020000
                         push             0x1e                                          // 0x00544607    6a1e
                         push             0x28                                          // 0x00544609    6a28
                         push             0x1                                           // 0x0054460b    6a01
                         mov.s            ecx, esi                                      // 0x0054460d    8bce
                         call             ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0054460f    e83c4cecff
                         mov              dword ptr [esi], 0x008ab5c0                   // 0x00544614    c706c0b58a00
                         {disp32} mov     dword ptr [esi + 0x0000023c], 0x00000004      // 0x0054461a    c7863c02000004000000
                         {disp32} mov     byte ptr [esi + 0x0000022a], 0x00             // 0x00544624    c6862a02000000
                         {disp32} mov     dword ptr [esi + 0x00000240], 0x00000000      // 0x0054462b    c7864002000000000000
                         {disp8} jmp      _jmp_addr_0x00544639                          // 0x00544635    eb02
_jmp_addr_0x00544637:    xor.s            esi, esi                                      // 0x00544637    33f6
_jmp_addr_0x00544639:    push             0x00000dcf                                    // 0x00544639    68cf0d0000
                         push             0x00bea568                                    // 0x0054463e    6868a5be00
                         push             0x00000244                                    // 0x00544643    6844020000
                         {disp8} mov      dword ptr [edi + 0x10], esi                   // 0x00544648    897710
                         call             ___nw__FUl                                    // 0x0054464b    e840712900
                         add              esp, 0x0c                                     // 0x00544650    83c40c
                         test             eax, eax                                      // 0x00544653    85c0
                         {disp8} je       _jmp_addr_0x0054469c                          // 0x00544655    7445
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001a60 // 0x00544657    813dac7cd100601a0000
                         {disp8} ja       _jmp_addr_0x0054466b                          // 0x00544661    7708
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00544663    8b0da87cd100
                         {disp8} jmp      _jmp_addr_0x00544677                          // 0x00544669    eb0c
_jmp_addr_0x0054466b:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0054466b    8b15a87cd100
                         {disp32} lea     ecx, dword ptr [edx + 0x00013c80]             // 0x00544671    8d8a803c0100
_jmp_addr_0x00544677:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x00544677    8b4908
                         push             0x1                                           // 0x0054467a    6a01
                         push             ecx                                           // 0x0054467c    51
                         push             0x28                                          // 0x0054467d    6a28
                         push             0x000000a0                                    // 0x0054467f    68a0000000
                         push             0x00000212                                    // 0x00544684    6812020000
                         push             0x00000140                                    // 0x00544689    6840010000
                         push             0x000003e7                                    // 0x0054468e    68e7030000
                         mov.s            ecx, eax                                      // 0x00544693    8bc8
                         call             @__ct__10SetupButtonFiiiiiPwi@36              // 0x00544695    e81652ecff
                         {disp8} jmp      _jmp_addr_0x0054469e                          // 0x0054469a    eb02
_jmp_addr_0x0054469c:    xor.s            eax, eax                                      // 0x0054469c    33c0
_jmp_addr_0x0054469e:    push             0x00000dd0                                    // 0x0054469e    68d00d0000
                         push             0x00bea568                                    // 0x005446a3    6868a5be00
                         push             0x000002b0                                    // 0x005446a8    68b0020000
                         {disp8} mov      dword ptr [edi + 0x18], eax                   // 0x005446ad    894718
                         call             ___nw__FUl                                    // 0x005446b0    e8db702900
                         add              esp, 0x0c                                     // 0x005446b5    83c40c
                         test             eax, eax                                      // 0x005446b8    85c0
                         {disp8} je       _jmp_addr_0x005446d5                          // 0x005446ba    7419
                         push             0x0000017c                                    // 0x005446bc    687c010000
                         push             0x00000258                                    // 0x005446c1    6858020000
                         push             0x6e                                          // 0x005446c6    6a6e
                         push             0x64                                          // 0x005446c8    6a64
                         push             0x0                                           // 0x005446ca    6a00
                         mov.s            ecx, eax                                      // 0x005446cc    8bc8
                         call             @__ct__9SetupListFiiiii@28                    // 0x005446ce    e87d5decff
                         {disp8} jmp      _jmp_addr_0x005446d7                          // 0x005446d3    eb02
_jmp_addr_0x005446d5:    xor.s            eax, eax                                      // 0x005446d5    33c0
_jmp_addr_0x005446d7:    push             0x00000dd3                                    // 0x005446d7    68d30d0000
                         push             0x00bea568                                    // 0x005446dc    6868a5be00
                         {disp8} mov      dword ptr [edi + 0x14], eax                   // 0x005446e1    894714
                         push             0x0000025c                                    // 0x005446e4    685c020000
                         {disp32} mov     byte ptr [eax + 0x00000291], 0x00             // 0x005446e9    c6809102000000
                         call             ___nw__FUl                                    // 0x005446f0    e89b702900
                         add              esp, 0x0c                                     // 0x005446f5    83c40c
                         test             eax, eax                                      // 0x005446f8    85c0
                         {disp8} je       _jmp_addr_0x00544722                          // 0x005446fa    7426
                         push             0x2                                           // 0x005446fc    6a02
                         push             0x0                                           // 0x005446fe    6a00
                         push             0x28                                          // 0x00544700    6a28
                         push             0x00c4cd30                                    // 0x00544702    6830cdc400
                         push             0x00000212                                    // 0x00544707    6812020000
                         push             0x1e                                          // 0x0054470c    6a1e
                         push             0x000003e7                                    // 0x0054470e    68e7030000
                         mov.s            ecx, eax                                      // 0x00544713    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00544715    e8468becff
                         {disp8} mov      dword ptr [edi + 0x1c], eax                   // 0x0054471a    89471c
                         pop              edi                                           // 0x0054471d    5f
                         pop              esi                                           // 0x0054471e    5e
                         ret              0x000c                                        // 0x0054471f    c20c00
_jmp_addr_0x00544722:    xor.s            eax, eax                                      // 0x00544722    33c0
                         {disp8} mov      dword ptr [edi + 0x1c], eax                   // 0x00544724    89471c
                         pop              edi                                           // 0x00544727    5f
                         pop              esi                                           // 0x00544728    5e
                         ret              0x000c                                        // 0x00544729    c20c00
                         nop                                                            // 0x0054472c    90
                         nop                                                            // 0x0054472d    90
                         nop                                                            // 0x0054472e    90
                         nop                                                            // 0x0054472f    90
?Destroy@StartGameBox@@UAEXXZ:
                         call             ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00544730    e85beefcff
                         {disp32} mov     dword ptr [data_bytes + 0x30ab84], 0x00000000 // 0x00544735    c705840bcd0000000000
                         ret                                                            // 0x0054473f    c3
?InitControls@StartGameBox@@UAEXXZ:
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000d7a // 0x00544740    813dac7cd1007a0d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054474a    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x00544756                          // 0x0054474f    7605
                         add              eax, 0x0000a1b8                               // 0x00544751    05b8a10000
_jmp_addr_0x00544756:    {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x00544756    8b5008
                         {disp8} mov      eax, dword ptr [ecx + 0x1c]                   // 0x00544759    8b411c
                         push             edx                                           // 0x0054475c    52
                         add              eax, 0x24                                     // 0x0054475d    83c024
                         push             eax                                           // 0x00544760    50
                         call             _wcscpy                                       // 0x00544761    e850182800
                         add              esp, 0x08                                     // 0x00544766    83c408
                         ret                                                            // 0x00544769    c3
                         call             dword ptr [rdata_bytes + 0x754]               // 0x0054476a    ff1554978a00
_jmp_addr_0x00544770:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x00544770    8b442408
                         dec              eax                                           // 0x00544774    48
                         push             esi                                           // 0x00544775    56
                         {disp8} je       _jmp_addr_0x005447e6                          // 0x00544776    746e
                         sub              eax, 0x05                                     // 0x00544778    83e805
                         {disp8} je       _jmp_addr_0x005447d9                          // 0x0054477b    745c
                         sub              eax, 0x07                                     // 0x0054477d    83e807
                         {disp32} jne     _jmp_addr_0x00544814                          // 0x00544780    0f858e000000
                         {disp32} mov     esi, dword ptr [data_bytes + 0x2078]          // 0x00544786    8b3578809c00
                         push             0x1                                           // 0x0054478c    6a01
                         push             0x1                                           // 0x0054478e    6a01
                         mov.s            eax, esi                                      // 0x00544790    8bc6
                         cdq                                                            // 0x00544792    99
                         sub.s            eax, edx                                      // 0x00544793    2bc2
                         push             0x00e0e0e0                                    // 0x00544795    68e0e0e000
                         sar              eax, 1                                        // 0x0054479a    d1f8
                         {disp32} mov     dword ptr [data_bytes + 0x2078], eax          // 0x0054479c    a378809c00
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x005447a1    8b442414
                         {disp8} mov      eax, dword ptr [eax + 0x10]                   // 0x005447a5    8b4010
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x005447a8    8b4814
                         {disp8} mov      edx, dword ptr [eax + 0x10]                   // 0x005447ab    8b5010
                         push             0x00e0e0e0                                    // 0x005447ae    68e0e0e000
                         push             0x00e0e0e0                                    // 0x005447b3    68e0e0e000
                         push             0x00e0e0e0                                    // 0x005447b8    68e0e0e000
                         push             ecx                                           // 0x005447bd    51
                         {disp8} mov      ecx, dword ptr [eax + 0x0c]                   // 0x005447be    8b480c
                         push             edx                                           // 0x005447c1    52
                         {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x005447c2    8b5008
                         push             ecx                                           // 0x005447c5    51
                         push             edx                                           // 0x005447c6    52
                         call             ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005447c7    e8f4eaecff
                         add              esp, 0x28                                     // 0x005447cc    83c428
                         {disp32} mov     dword ptr [data_bytes + 0x2078], esi          // 0x005447cf    893578809c00
                         pop              esi                                           // 0x005447d5    5e
                         ret              0x0018                                        // 0x005447d6    c21800
_jmp_addr_0x005447d9:    {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x005447d9    8b4c2408
                         mov              eax, dword ptr [ecx]                          // 0x005447dd    8b01
                         call             dword ptr [eax + 0x20]                        // 0x005447df    ff5020
                         pop              esi                                           // 0x005447e2    5e
                         ret              0x0018                                        // 0x005447e3    c21800
_jmp_addr_0x005447e6:    {disp8} mov      esi, dword ptr [esp + 0x14]                   // 0x005447e6    8b742414
                         push             edi                                           // 0x005447ea    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                   // 0x005447eb    8b7c240c
                         cmp              esi, dword ptr [edi + 0x18]                   // 0x005447ef    3b7718
                         {disp8} jne      _jmp_addr_0x005447f9                          // 0x005447f2    7505
                         call             _jmp_addr_0x00513640                          // 0x005447f4    e847eefcff
_jmp_addr_0x005447f9:    cmp              esi, dword ptr [edi + 0x1c]                   // 0x005447f9    3b771c
                         pop              edi                                           // 0x005447fc    5f
                         {disp8} jne      _jmp_addr_0x00544814                          // 0x005447fd    7515
                         call             _jmp_addr_0x00513640                          // 0x005447ff    e83ceefcff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x00544804    8b0d5c19d000
                         {disp32} mov     dword ptr [ecx + 0x00250180], 0x00000005      // 0x0054480a    c7818001250005000000
_jmp_addr_0x00544814:    pop              esi                                           // 0x00544814    5e
                         ret              0x0018                                        // 0x00544815    c21800
                         nop                                                            // 0x00544818    90
                         nop                                                            // 0x00544819    90
                         nop                                                            // 0x0054481a    90
                         nop                                                            // 0x0054481b    90
                         nop                                                            // 0x0054481c    90
                         nop                                                            // 0x0054481d    90
                         nop                                                            // 0x0054481e    90
                         nop                                                            // 0x0054481f    90
?Init@SkirmishGameBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x00544820    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x00544824    8b542404
                         push             esi                                           // 0x00544828    56
                         push             edi                                           // 0x00544829    57
                         mov.s            edi, ecx                                      // 0x0054482a    8bf9
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0054482c    8b4c2410
                         push             eax                                           // 0x00544830    50
                         push             ecx                                           // 0x00544831    51
                         push             edx                                           // 0x00544832    52
                         mov.s            ecx, edi                                      // 0x00544833    8bcf
                         call             @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00544835    e8c6ebfcff
                         {disp32} mov     dword ptr [data_bytes + 0x30ab88], edi        // 0x0054483a    893d880bcd00
                         call             _jmp_addr_0x00407a20                          // 0x00544840    e8db31ecff
                         {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x00544845    8b4f04
                         push             0x00000e0c                                    // 0x00544848    680c0e0000
                         push             0x00bea568                                    // 0x0054484d    6868a5be00
                         push             0x00000244                                    // 0x00544852    6844020000
                         {disp32} mov     dword ptr [ecx + 0x000000ac], eax             // 0x00544857    8981ac000000
                         call             ___nw__FUl                                    // 0x0054485d    e82e6f2900
                         mov.s            esi, eax                                      // 0x00544862    8bf0
                         add              esp, 0x0c                                     // 0x00544864    83c40c
                         test             esi, esi                                      // 0x00544867    85f6
                         {disp8} je       _jmp_addr_0x005448a7                          // 0x00544869    743c
                         push             0x00c4cd30                                    // 0x0054486b    6830cdc400
                         push             0x28                                          // 0x00544870    6a28
                         push             0x000002d0                                    // 0x00544872    68d0020000
                         push             0x1e                                          // 0x00544877    6a1e
                         push             0x28                                          // 0x00544879    6a28
                         push             0x1                                           // 0x0054487b    6a01
                         mov.s            ecx, esi                                      // 0x0054487d    8bce
                         call             ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0054487f    e8cc49ecff
                         mov              dword ptr [esi], 0x008ab5c0                   // 0x00544884    c706c0b58a00
                         {disp32} mov     dword ptr [esi + 0x0000023c], 0x00000004      // 0x0054488a    c7863c02000004000000
                         {disp32} mov     byte ptr [esi + 0x0000022a], 0x00             // 0x00544894    c6862a02000000
                         {disp32} mov     dword ptr [esi + 0x00000240], 0x00000000      // 0x0054489b    c7864002000000000000
                         {disp8} jmp      _jmp_addr_0x005448a9                          // 0x005448a5    eb02
_jmp_addr_0x005448a7:    xor.s            esi, esi                                      // 0x005448a7    33f6
_jmp_addr_0x005448a9:    push             0x00000e0e                                    // 0x005448a9    680e0e0000
                         push             0x00bea568                                    // 0x005448ae    6868a5be00
                         push             0x0000025c                                    // 0x005448b3    685c020000
                         {disp8} mov      dword ptr [edi + 0x24], esi                   // 0x005448b8    897724
                         call             ___nw__FUl                                    // 0x005448bb    e8d06e2900
                         add              esp, 0x0c                                     // 0x005448c0    83c40c
                         test             eax, eax                                      // 0x005448c3    85c0
                         {disp8} je       _jmp_addr_0x005448e7                          // 0x005448c5    7420
                         push             0x2                                           // 0x005448c7    6a02
                         push             0x0                                           // 0x005448c9    6a00
                         push             0x28                                          // 0x005448cb    6a28
                         push             0x00c4cd30                                    // 0x005448cd    6830cdc400
                         push             0x00000212                                    // 0x005448d2    6812020000
                         push             0x1e                                          // 0x005448d7    6a1e
                         push             0x000003e7                                    // 0x005448d9    68e7030000
                         mov.s            ecx, eax                                      // 0x005448de    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005448e0    e87b89ecff
                         {disp8} jmp      _jmp_addr_0x005448e9                          // 0x005448e5    eb02
_jmp_addr_0x005448e7:    xor.s            eax, eax                                      // 0x005448e7    33c0
_jmp_addr_0x005448e9:    push             0x00000e0f                                    // 0x005448e9    680f0e0000
                         push             0x00bea568                                    // 0x005448ee    6868a5be00
                         push             0x0000025c                                    // 0x005448f3    685c020000
                         {disp8} mov      dword ptr [edi + 0x28], eax                   // 0x005448f8    894728
                         call             ___nw__FUl                                    // 0x005448fb    e8906e2900
                         add              esp, 0x0c                                     // 0x00544900    83c40c
                         test             eax, eax                                      // 0x00544903    85c0
                         {disp8} je       _jmp_addr_0x0054492a                          // 0x00544905    7423
                         push             0x3                                           // 0x00544907    6a03
                         push             0x1                                           // 0x00544909    6a01
                         push             0x28                                          // 0x0054490b    6a28
                         push             0x00c4cd30                                    // 0x0054490d    6830cdc400
                         push             0x00000212                                    // 0x00544912    6812020000
                         push             0x000002da                                    // 0x00544917    68da020000
                         push             0x000003e6                                    // 0x0054491c    68e6030000
                         mov.s            ecx, eax                                      // 0x00544921    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00544923    e83889ecff
                         {disp8} jmp      _jmp_addr_0x0054492c                          // 0x00544928    eb02
_jmp_addr_0x0054492a:    xor.s            eax, eax                                      // 0x0054492a    33c0
_jmp_addr_0x0054492c:    push             0x00000e10                                    // 0x0054492c    68100e0000
                         push             0x00bea568                                    // 0x00544931    6868a5be00
                         push             0x000002b0                                    // 0x00544936    68b0020000
                         {disp8} mov      dword ptr [edi + 0x2c], eax                   // 0x0054493b    89472c
                         call             ___nw__FUl                                    // 0x0054493e    e84d6e2900
                         add              esp, 0x0c                                     // 0x00544943    83c40c
                         test             eax, eax                                      // 0x00544946    85c0
                         {disp8} je       _jmp_addr_0x00544970                          // 0x00544948    7426
                         push             0x0000017c                                    // 0x0054494a    687c010000
                         push             0x00000258                                    // 0x0054494f    6858020000
                         push             0x6e                                          // 0x00544954    6a6e
                         push             0x64                                          // 0x00544956    6a64
                         push             0x0                                           // 0x00544958    6a00
                         mov.s            ecx, eax                                      // 0x0054495a    8bc8
                         call             @__ct__9SetupListFiiiii@28                    // 0x0054495c    e8ef5aecff
                         {disp8} mov      dword ptr [edi + 0x10], eax                   // 0x00544961    894710
                         pop              edi                                           // 0x00544964    5f
                         {disp32} mov     byte ptr [eax + 0x00000291], 0x01             // 0x00544965    c6809102000001
                         pop              esi                                           // 0x0054496c    5e
                         ret              0x000c                                        // 0x0054496d    c20c00
_jmp_addr_0x00544970:    xor.s            eax, eax                                      // 0x00544970    33c0
                         {disp8} mov      dword ptr [edi + 0x10], eax                   // 0x00544972    894710
                         pop              edi                                           // 0x00544975    5f
                         {disp32} mov     byte ptr [eax + 0x00000291], 0x01             // 0x00544976    c6809102000001
                         pop              esi                                           // 0x0054497d    5e
                         ret              0x000c                                        // 0x0054497e    c20c00
                         nop                                                            // 0x00544981    90
                         nop                                                            // 0x00544982    90
                         nop                                                            // 0x00544983    90
                         nop                                                            // 0x00544984    90
                         nop                                                            // 0x00544985    90
                         nop                                                            // 0x00544986    90
                         nop                                                            // 0x00544987    90
                         nop                                                            // 0x00544988    90
                         nop                                                            // 0x00544989    90
                         nop                                                            // 0x0054498a    90
                         nop                                                            // 0x0054498b    90
                         nop                                                            // 0x0054498c    90
                         nop                                                            // 0x0054498d    90
                         nop                                                            // 0x0054498e    90
                         nop                                                            // 0x0054498f    90
                         push             ebx                                           // 0x00544990    53
                         push             ebp                                           // 0x00544991    55
                         push             esi                                           // 0x00544992    56
                         push             edi                                           // 0x00544993    57
                         mov.s            ebx, ecx                                      // 0x00544994    8bd9
                         call             _HideAll__13DialogBoxBaseFv@0                 // 0x00544996    e845edfcff
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x0054499b    8b442414
                         {disp8} mov      ecx, dword ptr [ebx + 0x24]                   // 0x0054499f    8b4b24
                         push             eax                                           // 0x005449a2    50
                         add              ecx, 0x24                                     // 0x005449a3    83c124
                         push             ecx                                           // 0x005449a6    51
                         call             _wcscpy                                       // 0x005449a7    e80a162800
                         {disp8} mov      esi, dword ptr [ebx + 0x10]                   // 0x005449ac    8b7310
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x005449af    8b8650020000
                         add              esp, 0x08                                     // 0x005449b5    83c408
                         test             eax, eax                                      // 0x005449b8    85c0
                         {disp8} jle      _jmp_addr_0x005449cf                          // 0x005449ba    7e13
_jmp_addr_0x005449bc:    dec              eax                                           // 0x005449bc    48
                         push             eax                                           // 0x005449bd    50
                         mov.s            ecx, esi                                      // 0x005449be    8bce
                         call             @DeleteString__9SetupListFi@12                // 0x005449c0    e89b63ecff
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x005449c5    8b8650020000
                         test             eax, eax                                      // 0x005449cb    85c0
                         {disp8} jg       _jmp_addr_0x005449bc                          // 0x005449cd    7fed
_jmp_addr_0x005449cf:    {disp8} mov      edi, dword ptr [ebx + 0x1c]                   // 0x005449cf    8b7b1c
                         {disp8} mov      ebp, dword ptr [ebx + 0x18]                   // 0x005449d2    8b6b18
                         mov.s            esi, edi                                      // 0x005449d5    8bf7
                         cmp.s            esi, edi                                      // 0x005449d7    3bf7
                         {disp8} je       _jmp_addr_0x005449f6                          // 0x005449d9    741b
_jmp_addr_0x005449db:    {disp32} mov     edx, dword ptr [rdata_bytes + 0x35cd4]        // 0x005449db    8b15d4ec8d00
                         push             edx                                           // 0x005449e1    52
                         push             0x0                                           // 0x005449e2    6a00
                         push             esi                                           // 0x005449e4    56
                         mov.s            ecx, ebp                                      // 0x005449e5    8bcd
                         call             _jmp_addr_0x00545f00                          // 0x005449e7    e814150000
                         add              esi, 0x10                                     // 0x005449ec    83c610
                         add              ebp, 0x10                                     // 0x005449ef    83c510
                         cmp.s            esi, edi                                      // 0x005449f2    3bf7
                         {disp8} jne      _jmp_addr_0x005449db                          // 0x005449f4    75e5
_jmp_addr_0x005449f6:    {disp8} mov      eax, dword ptr [ebx + 0x1c]                   // 0x005449f6    8b431c
                         cmp.s            ebp, eax                                      // 0x005449f9    3be8
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x005449fb    89442414
                         {disp8} je       _jmp_addr_0x00544a65                          // 0x005449ff    7464
                         {disp8} lea      esi, dword ptr [ebp + 0x04]                   // 0x00544a01    8d7504
                         xor.s            ecx, ecx                                      // 0x00544a04    33c9
_jmp_addr_0x00544a06:    mov              eax, dword ptr [esi]                          // 0x00544a06    8b06
                         cmp.s            eax, ecx                                      // 0x00544a08    3bc1
                         {disp8} je       _jmp_addr_0x00544a4d                          // 0x00544a0a    7441
                         {disp8} lea      edi, dword ptr [esi + -0x04]                  // 0x00544a0c    8d7efc
                         push             eax                                           // 0x00544a0f    50
                         mov.s            ecx, edi                                      // 0x00544a10    8bcf
                         call             _jmp_addr_0x00545970                          // 0x00544a12    e8590f0000
                         cmp              byte ptr [eax], 0x00                          // 0x00544a17    803800
                         {disp8} je       _jmp_addr_0x00544a39                          // 0x00544a1a    741d
                         mov              eax, dword ptr [esi]                          // 0x00544a1c    8b06
                         push             eax                                           // 0x00544a1e    50
                         mov.s            ecx, edi                                      // 0x00544a1f    8bcf
                         call             _jmp_addr_0x00545970                          // 0x00544a21    e84a0f0000
                         cmp              byte ptr [eax], -0x01                         // 0x00544a26    8038ff
                         {disp8} je       _jmp_addr_0x00544a39                          // 0x00544a29    740e
                         mov              ecx, dword ptr [esi]                          // 0x00544a2b    8b0e
                         push             ecx                                           // 0x00544a2d    51
                         mov.s            ecx, edi                                      // 0x00544a2e    8bcf
                         call             _jmp_addr_0x00545970                          // 0x00544a30    e83b0f0000
                         dec              byte ptr [eax]                                // 0x00544a35    fe08
                         {disp8} jmp      _jmp_addr_0x00544a4d                          // 0x00544a37    eb14
_jmp_addr_0x00544a39:    {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x00544a39    8b5608
                         mov              eax, dword ptr [esi]                          // 0x00544a3c    8b06
                         add              edx, 0x02                                     // 0x00544a3e    83c202
                         push             edx                                           // 0x00544a41    52
                         sub              eax, 0x02                                     // 0x00544a42    83e802
                         push             eax                                           // 0x00544a45    50
                         mov.s            ecx, edi                                      // 0x00544a46    8bcf
                         call             _jmp_addr_0x00545980                          // 0x00544a48    e8330f0000
_jmp_addr_0x00544a4d:    {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x00544a4d    8b442414
                         xor.s            ecx, ecx                                      // 0x00544a51    33c9
                         mov              dword ptr [esi], ecx                          // 0x00544a53    890e
                         {disp8} mov      dword ptr [esi + 0x04], ecx                   // 0x00544a55    894e04
                         {disp8} mov      dword ptr [esi + 0x08], ecx                   // 0x00544a58    894e08
                         add              esi, 0x10                                     // 0x00544a5b    83c610
                         {disp8} lea      edx, dword ptr [esi + -0x04]                  // 0x00544a5e    8d56fc
                         cmp.s            edx, eax                                      // 0x00544a61    3bd0
                         {disp8} jne      _jmp_addr_0x00544a06                          // 0x00544a63    75a1
_jmp_addr_0x00544a65:    {disp8} mov      dword ptr [ebx + 0x1c], ebp                   // 0x00544a65    896b1c
                         mov              eax, dword ptr [ebx]                          // 0x00544a68    8b03
                         mov.s            ecx, ebx                                      // 0x00544a6a    8bcb
                         call             dword ptr [eax + 0xc]                         // 0x00544a6c    ff500c
                         pop              edi                                           // 0x00544a6f    5f
                         pop              esi                                           // 0x00544a70    5e
                         pop              ebp                                           // 0x00544a71    5d
                         pop              ebx                                           // 0x00544a72    5b
                         ret              0x0004                                        // 0x00544a73    c20400
                         nop                                                            // 0x00544a76    90
                         nop                                                            // 0x00544a77    90
                         nop                                                            // 0x00544a78    90
                         nop                                                            // 0x00544a79    90
                         nop                                                            // 0x00544a7a    90
                         nop                                                            // 0x00544a7b    90
                         nop                                                            // 0x00544a7c    90
                         nop                                                            // 0x00544a7d    90
                         nop                                                            // 0x00544a7e    90
                         nop                                                            // 0x00544a7f    90
_jmp_addr_0x00544a80:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00544a80    8b442404
                         sub              esp, 0x10                                     // 0x00544a84    83ec10
                         push             ebp                                           // 0x00544a87    55
                         push             esi                                           // 0x00544a88    56
                         push             edi                                           // 0x00544a89    57
                         mov.s            edi, ecx                                      // 0x00544a8a    8bf9
                         {disp8} mov      esi, dword ptr [edi + 0x10]                   // 0x00544a8c    8b7710
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x00544a8f    8b8e50020000
                         push             eax                                           // 0x00544a95    50
                         push             ecx                                           // 0x00544a96    51
                         mov.s            ecx, esi                                      // 0x00544a97    8bce
                         call             @InsertString__9SetupListFiPw@16              // 0x00544a99    e8d263ecff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x00544a9e    8b8e50020000
                         {disp8} lea      eax, dword ptr [ecx + -0x01]                  // 0x00544aa4    8d41ff
                         test             eax, eax                                      // 0x00544aa7    85c0
                         {disp8} jl       _jmp_addr_0x00544abc                          // 0x00544aa9    7c11
                         cmp.s            eax, ecx                                      // 0x00544aab    3bc1
                         {disp8} jge      _jmp_addr_0x00544abc                          // 0x00544aad    7d0d
                         {disp32} mov     edx, dword ptr [esi + 0x00000268]             // 0x00544aaf    8b9668020000
                         mov              dword ptr [edx + eax * 0x4], 0x00000000       // 0x00544ab5    c7048200000000
_jmp_addr_0x00544abc:    {disp8} mov      al, byte ptr [esp + 0x20]                     // 0x00544abc    8a442420
                         {disp8} mov      ebp, dword ptr [esp + 0x24]                   // 0x00544ac0    8b6c2424
                         push             ebp                                           // 0x00544ac4    55
                         {disp8} mov      byte ptr [esp + 0x10], al                     // 0x00544ac5    88442410
                         {disp8} mov      dword ptr [esp + 0x14], 0x00000000            // 0x00544ac9    c744241400000000
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000000            // 0x00544ad1    c744241800000000
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000000            // 0x00544ad9    c744241c00000000
                         call             _wcslen                                       // 0x00544ae1    e87c192800
                         add              esp, 0x04                                     // 0x00544ae6    83c404
                         mov.s            esi, eax                                      // 0x00544ae9    8bf0
                         push             0x1                                           // 0x00544aeb    6a01
                         push             esi                                           // 0x00544aed    56
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                   // 0x00544aee    8d4c2414
                         call             _jmp_addr_0x00545990                          // 0x00544af2    e8990e0000
                         test             al, al                                        // 0x00544af7    84c0
                         {disp8} je       _jmp_addr_0x00544b18                          // 0x00544af9    741d
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x00544afb    8b4c2410
                         push             esi                                           // 0x00544aff    56
                         push             ebp                                           // 0x00544b00    55
                         push             ecx                                           // 0x00544b01    51
                         call             _jmp_addr_0x00544b60                          // 0x00544b02    e859000000
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x00544b07    8b54241c
                         {disp8} mov      dword ptr [esp + 0x20], esi                   // 0x00544b0b    89742420
                         add              esp, 0x0c                                     // 0x00544b0f    83c40c
                         mov              word ptr [edx + esi * 0x2], 0x0000            // 0x00544b12    66c704720000
_jmp_addr_0x00544b18:    {disp8} mov      edx, dword ptr [edi + 0x1c]                   // 0x00544b18    8b571c
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                   // 0x00544b1b    8d44240c
                         push             eax                                           // 0x00544b1f    50
                         {disp8} lea      ecx, dword ptr [edi + 0x14]                   // 0x00544b20    8d4f14
                         push             0x1                                           // 0x00544b23    6a01
                         push             edx                                           // 0x00544b25    52
                         call             _jmp_addr_0x00545680                          // 0x00544b26    e8550b0000
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x00544b2b    8b4c2410
                         test             ecx, ecx                                      // 0x00544b2f    85c9
                         pop              edi                                           // 0x00544b31    5f
                         pop              esi                                           // 0x00544b32    5e
                         pop              ebp                                           // 0x00544b33    5d
                         {disp8} je       _jmp_addr_0x00544b58                          // 0x00544b34    7422
                         {disp8} mov      al, byte ptr [ecx + -0x01]                    // 0x00544b36    8a41ff
                         test             al, al                                        // 0x00544b39    84c0
                         {disp8} je       _jmp_addr_0x00544b4c                          // 0x00544b3b    740f
                         cmp              al, -0x01                                     // 0x00544b3d    3cff
                         {disp8} je       _jmp_addr_0x00544b4c                          // 0x00544b3f    740b
                         dec              al                                            // 0x00544b41    fec8
                         {disp8} mov      byte ptr [ecx + -0x01], al                    // 0x00544b43    8841ff
                         add              esp, 0x10                                     // 0x00544b46    83c410
                         ret              0x0008                                        // 0x00544b49    c20800
_jmp_addr_0x00544b4c:    add              ecx, -0x2                                     // 0x00544b4c    83c1fe
                         push             ecx                                           // 0x00544b4f    51
                         call             ??3@YAXPAX@Z                                  // 0x00544b50    e843a32600
                         add              esp, 0x04                                     // 0x00544b55    83c404
_jmp_addr_0x00544b58:    add              esp, 0x10                                     // 0x00544b58    83c410
                         ret              0x0008                                        // 0x00544b5b    c20800
                         nop                                                            // 0x00544b5e    90
                         nop                                                            // 0x00544b5f    90
_jmp_addr_0x00544b60:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00544b60    8b442404
                         push             esi                                           // 0x00544b64    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x00544b65    8b742410
                         test             esi, esi                                      // 0x00544b69    85f6
                         mov.s            ecx, eax                                      // 0x00544b6b    8bc8
                         {disp8} jbe      _jmp_addr_0x00544b84                          // 0x00544b6d    7615
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                   // 0x00544b6f    8b54240c
                         push             edi                                           // 0x00544b73    57
_jmp_addr_0x00544b74:    mov              di, word ptr [edx]                            // 0x00544b74    668b3a
                         mov              word ptr [ecx], di                            // 0x00544b77    668939
                         add              ecx, 0x2                                      // 0x00544b7a    83c102
                         add              edx, 0x02                                     // 0x00544b7d    83c202
                         dec              esi                                           // 0x00544b80    4e
                         {disp8} jne      _jmp_addr_0x00544b74                          // 0x00544b81    75f1
                         pop              edi                                           // 0x00544b83    5f
_jmp_addr_0x00544b84:    pop              esi                                           // 0x00544b84    5e
                         ret                                                            // 0x00544b85    c3
                         nop                                                            // 0x00544b86    90
                         nop                                                            // 0x00544b87    90
                         nop                                                            // 0x00544b88    90
                         nop                                                            // 0x00544b89    90
                         nop                                                            // 0x00544b8a    90
                         nop                                                            // 0x00544b8b    90
                         nop                                                            // 0x00544b8c    90
                         nop                                                            // 0x00544b8d    90
                         nop                                                            // 0x00544b8e    90
                         nop                                                            // 0x00544b8f    90
?Destroy@SkirmishGameBox@@UAEXXZ:
                         call             ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00544b90    e8fbe9fcff
                         {disp32} mov     dword ptr [data_bytes + 0x30ab88], 0x00000000 // 0x00544b95    c705880bcd0000000000
                         ret                                                            // 0x00544b9f    c3
_jmp_addr_0x00544ba0:    {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x00544ba0    8b542404
                         push             edi                                           // 0x00544ba4    57
                         or               ecx, 0xffffffff                               // 0x00544ba5    83c9ff
                         xor.s            eax, eax                                      // 0x00544ba8    33c0
                         mov.s            edi, edx                                      // 0x00544baa    8bfa
                         repne scasb                                                    // 0x00544bac    f2ae
                         not              ecx                                           // 0x00544bae    f7d1
                         dec              ecx                                           // 0x00544bb0    49
                         cmp              ecx, 0x04                                     // 0x00544bb1    83f904
                         pop              edi                                           // 0x00544bb4    5f
                         {disp8} jl       _jmp_addr_0x00544bba                          // 0x00544bb5    7c03
                         sub              ecx, 0x04                                     // 0x00544bb7    83e904
_jmp_addr_0x00544bba:    push             edx                                           // 0x00544bba    52
                         mov              byte ptr [ecx + edx * 0x1], 0x00              // 0x00544bbb    c6041100
                         call             _CHAR2WCHAR__FPc                              // 0x00544bbf    e8dcb42e00
                         add              esp, 0x04                                     // 0x00544bc4    83c404
                         ret                                                            // 0x00544bc7    c3
                         nop                                                            // 0x00544bc8    90
                         nop                                                            // 0x00544bc9    90
                         nop                                                            // 0x00544bca    90
                         nop                                                            // 0x00544bcb    90
                         nop                                                            // 0x00544bcc    90
                         nop                                                            // 0x00544bcd    90
                         nop                                                            // 0x00544bce    90
                         nop                                                            // 0x00544bcf    90
?InitControls@SkirmishGameBox@@UAEXXZ:
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351cac]        // 0x00544bd0    a1ac7cd100
                         sub              esp, 0x00000144                               // 0x00544bd5    81ec44010000
                         push             ebx                                           // 0x00544bdb    53
                         push             ebp                                           // 0x00544bdc    55
                         push             esi                                           // 0x00544bdd    56
                         cmp              eax, 0x00000d7a                               // 0x00544bde    3d7a0d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00544be3    a1a87cd100
                         push             edi                                           // 0x00544be8    57
                         mov.s            ebp, ecx                                      // 0x00544be9    8be9
                         {disp8} jbe      _jmp_addr_0x00544bf2                          // 0x00544beb    7605
                         add              eax, 0x0000a1b8                               // 0x00544bed    05b8a10000
_jmp_addr_0x00544bf2:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x00544bf2    8b4808
                         {disp8} mov      edx, dword ptr [ebp + 0x28]                   // 0x00544bf5    8b5528
                         push             ecx                                           // 0x00544bf8    51
                         add              edx, 0x24                                     // 0x00544bf9    83c224
                         push             edx                                           // 0x00544bfc    52
                         call             _wcscpy                                       // 0x00544bfd    e8b4132800
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351cac]        // 0x00544c02    a1ac7cd100
                         add              esp, 0x08                                     // 0x00544c07    83c408
                         cmp              eax, 0x00000db4                               // 0x00544c0a    3db40d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00544c0f    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x00544c1b                          // 0x00544c14    7605
                         add              eax, 0x0000a470                               // 0x00544c16    0570a40000
_jmp_addr_0x00544c1b:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x00544c1b    8b4808
                         {disp8} mov      edx, dword ptr [ebp + 0x2c]                   // 0x00544c1e    8b552c
                         push             ecx                                           // 0x00544c21    51
                         add              edx, 0x24                                     // 0x00544c22    83c224
                         push             edx                                           // 0x00544c25    52
                         call             _wcscpy                                       // 0x00544c26    e88b132800
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351cac]        // 0x00544c2b    a1ac7cd100
                         add              esp, 0x08                                     // 0x00544c30    83c408
                         cmp              eax, 0x00001a3c                               // 0x00544c33    3d3c1a0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00544c38    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x00544c44                          // 0x00544c3d    7605
                         add              eax, 0x00013ad0                               // 0x00544c3f    05d03a0100
_jmp_addr_0x00544c44:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x00544c44    8b4808
                         {disp8} mov      edx, dword ptr [ebp + 0x24]                   // 0x00544c47    8b5524
                         push             ecx                                           // 0x00544c4a    51
                         add              edx, 0x24                                     // 0x00544c4b    83c224
                         push             edx                                           // 0x00544c4e    52
                         call             _wcscpy                                       // 0x00544c4f    e862132800
                         add              esp, 0x08                                     // 0x00544c54    83c408
                         {disp8} lea      eax, dword ptr [esp + 0x14]                   // 0x00544c57    8d442414
                         push             eax                                           // 0x00544c5b    50
                         push             0x00bea760                                    // 0x00544c5c    6860a7be00
                         call             dword ptr [__imp__FindFirstFileA@4]           // 0x00544c61    ff1594918a00
                         {disp8} mov      esi, dword ptr [ebp + 0x10]                   // 0x00544c67    8b7510
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x00544c6a    89442410
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x00544c6e    8b8650020000
                         test             eax, eax                                      // 0x00544c74    85c0
                         {disp8} jle      _jmp_addr_0x00544c8b                          // 0x00544c76    7e13
_jmp_addr_0x00544c78:    dec              eax                                           // 0x00544c78    48
                         push             eax                                           // 0x00544c79    50
                         mov.s            ecx, esi                                      // 0x00544c7a    8bce
                         call             @DeleteString__9SetupListFi@12                // 0x00544c7c    e8df60ecff
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x00544c81    8b8650020000
                         test             eax, eax                                      // 0x00544c87    85c0
                         {disp8} jg       _jmp_addr_0x00544c78                          // 0x00544c89    7fed
_jmp_addr_0x00544c8b:    {disp8} mov      ebx, dword ptr [ebp + 0x1c]                   // 0x00544c8b    8b5d1c
                         {disp8} mov      edi, dword ptr [ebp + 0x18]                   // 0x00544c8e    8b7d18
                         mov.s            esi, ebx                                      // 0x00544c91    8bf3
                         cmp.s            esi, ebx                                      // 0x00544c93    3bf3
                         {disp8} je       _jmp_addr_0x00544cb2                          // 0x00544c95    741b
_jmp_addr_0x00544c97:    {disp32} mov     ecx, dword ptr [rdata_bytes + 0x35cd4]        // 0x00544c97    8b0dd4ec8d00
                         push             ecx                                           // 0x00544c9d    51
                         push             0x0                                           // 0x00544c9e    6a00
                         push             esi                                           // 0x00544ca0    56
                         mov.s            ecx, edi                                      // 0x00544ca1    8bcf
                         call             _jmp_addr_0x00545f00                          // 0x00544ca3    e858120000
                         add              esi, 0x10                                     // 0x00544ca8    83c610
                         add              edi, 0x10                                     // 0x00544cab    83c710
                         cmp.s            esi, ebx                                      // 0x00544cae    3bf3
                         {disp8} jne      _jmp_addr_0x00544c97                          // 0x00544cb0    75e5
_jmp_addr_0x00544cb2:    {disp8} mov      ebx, dword ptr [ebp + 0x1c]                   // 0x00544cb2    8b5d1c
                         cmp.s            edi, ebx                                      // 0x00544cb5    3bfb
                         mov.s            esi, edi                                      // 0x00544cb7    8bf7
                         {disp8} je       _jmp_addr_0x00544ccb                          // 0x00544cb9    7410
_jmp_addr_0x00544cbb:    push             0x0                                           // 0x00544cbb    6a00
                         mov.s            ecx, esi                                      // 0x00544cbd    8bce
                         call             _jmp_addr_0x00545d80                          // 0x00544cbf    e8bc100000
                         add              esi, 0x10                                     // 0x00544cc4    83c610
                         cmp.s            esi, ebx                                      // 0x00544cc7    3bf3
                         {disp8} jne      _jmp_addr_0x00544cbb                          // 0x00544cc9    75f0
_jmp_addr_0x00544ccb:    cmp              dword ptr [esp + 0x10], -0x01                 // 0x00544ccb    837c2410ff
                         {disp8} mov      dword ptr [ebp + 0x1c], edi                   // 0x00544cd0    897d1c
                         {disp32} je      _jmp_addr_0x00544db3                          // 0x00544cd3    0f84da000000
                         {disp32} mov     edi, dword ptr [__imp__FindNextFileA@4]       // 0x00544cd9    8b3d98918a00
                         mov              ebx, 0x00001b38                               // 0x00544cdf    bb381b0000
_jmp_addr_0x00544ce4:    {disp8} lea      edx, dword ptr [esp + 0x40]                   // 0x00544ce4    8d542440
                         push             edx                                           // 0x00544ce8    52
                         call             _jmp_addr_0x00544ba0                          // 0x00544ce9    e8b2feffff
                         mov.s            esi, eax                                      // 0x00544cee    8bf0
                         {disp8} lea      eax, dword ptr [esp + 0x44]                   // 0x00544cf0    8d442444
                         push             eax                                           // 0x00544cf4    50
                         push             0x00bea758                                    // 0x00544cf5    6858a7be00
                         call             __strcmpi                                     // 0x00544cfa    e8e11f2800
                         add              esp, 0x0c                                     // 0x00544cff    83c40c
                         test             eax, eax                                      // 0x00544d02    85c0
                         {disp8} jne      _jmp_addr_0x00544d27                          // 0x00544d04    7521
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001b36 // 0x00544d06    813dac7cd100361b0000
                         {disp8} ja       _jmp_addr_0x00544d19                          // 0x00544d10    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00544d12    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00544d86                          // 0x00544d17    eb6d
_jmp_addr_0x00544d19:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00544d19    8b0da87cd100
                         {disp32} lea     eax, dword ptr [ecx + 0x00014688]             // 0x00544d1f    8d8188460100
                         {disp8} jmp      _jmp_addr_0x00544d86                          // 0x00544d25    eb5f
_jmp_addr_0x00544d27:    {disp8} lea      edx, dword ptr [esp + 0x40]                   // 0x00544d27    8d542440
                         push             edx                                           // 0x00544d2b    52
                         push             0x00bea74c                                    // 0x00544d2c    684ca7be00
                         call             __strcmpi                                     // 0x00544d31    e8aa1f2800
                         add              esp, 0x08                                     // 0x00544d36    83c408
                         test             eax, eax                                      // 0x00544d39    85c0
                         {disp8} jne      _jmp_addr_0x00544d55                          // 0x00544d3b    7518
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001b37 // 0x00544d3d    813dac7cd100371b0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00544d47    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x00544d86                          // 0x00544d4c    7638
                         add              eax, 0x00014694                               // 0x00544d4e    0594460100
                         {disp8} jmp      _jmp_addr_0x00544d86                          // 0x00544d53    eb31
_jmp_addr_0x00544d55:    {disp8} lea      ecx, dword ptr [esp + 0x40]                   // 0x00544d55    8d4c2440
                         push             ecx                                           // 0x00544d59    51
                         push             0x00bea740                                    // 0x00544d5a    6840a7be00
                         call             __strcmpi                                     // 0x00544d5f    e87c1f2800
                         add              esp, 0x08                                     // 0x00544d64    83c408
                         test             eax, eax                                      // 0x00544d67    85c0
                         {disp8} jne      _jmp_addr_0x00544d89                          // 0x00544d69    751e
                         cmp              dword ptr [data_bytes + 0x351cac], ebx        // 0x00544d6b    391dac7cd100
                         {disp8} ja       _jmp_addr_0x00544d7a                          // 0x00544d71    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00544d73    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00544d86                          // 0x00544d78    eb0c
_jmp_addr_0x00544d7a:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x00544d7a    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x000146a0]             // 0x00544d80    8d82a0460100
_jmp_addr_0x00544d86:    {disp8} mov      esi, dword ptr [eax + 0x08]                   // 0x00544d86    8b7008
_jmp_addr_0x00544d89:    {disp8} lea      eax, dword ptr [esp + 0x40]                   // 0x00544d89    8d442440
                         push             eax                                           // 0x00544d8d    50
                         call             _CHAR2WCHAR__FPc                              // 0x00544d8e    e80db32e00
                         add              esp, 0x04                                     // 0x00544d93    83c404
                         push             eax                                           // 0x00544d96    50
                         push             esi                                           // 0x00544d97    56
                         mov.s            ecx, ebp                                      // 0x00544d98    8bcd
                         call             _jmp_addr_0x00544a80                          // 0x00544d9a    e8e1fcffff
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x00544d9f    8b542410
                         {disp8} lea      ecx, dword ptr [esp + 0x14]                   // 0x00544da3    8d4c2414
                         push             ecx                                           // 0x00544da7    51
                         push             edx                                           // 0x00544da8    52
                         call             edi                                           // 0x00544da9    ffd7
                         test             eax, eax                                      // 0x00544dab    85c0
                         {disp32} jne     _jmp_addr_0x00544ce4                          // 0x00544dad    0f8531ffffff
_jmp_addr_0x00544db3:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x00544db3    8b442410
                         push             eax                                           // 0x00544db7    50
                         call             dword ptr [__imp__FindClose@4]                // 0x00544db8    ff1524928a00
                         {disp8} mov      eax, dword ptr [ebp + 0x10]                   // 0x00544dbe    8b4510
                         {disp32} mov     edi, dword ptr [eax + 0x00000248]             // 0x00544dc1    8bb848020000
                         {disp8} mov      ecx, dword ptr [ebp + 0x2c]                   // 0x00544dc7    8b4d2c
                         mov              edx, dword ptr [ecx]                          // 0x00544dca    8b11
                         cmp              edi, -0x01                                    // 0x00544dcc    83ffff
                         sete             al                                            // 0x00544dcf    0f94c0
                         push             eax                                           // 0x00544dd2    50
                         call             dword ptr [edx + 8]                           // 0x00544dd3    ff5208
                         pop              edi                                           // 0x00544dd6    5f
                         pop              esi                                           // 0x00544dd7    5e
                         pop              ebp                                           // 0x00544dd8    5d
                         pop              ebx                                           // 0x00544dd9    5b
                         add              esp, 0x00000144                               // 0x00544dda    81c444010000
                         ret                                                            // 0x00544de0    c3
                         nop                                                            // 0x00544de1    90
                         nop                                                            // 0x00544de2    90
                         nop                                                            // 0x00544de3    90
                         nop                                                            // 0x00544de4    90
                         nop                                                            // 0x00544de5    90
                         nop                                                            // 0x00544de6    90
                         nop                                                            // 0x00544de7    90
                         nop                                                            // 0x00544de8    90
                         nop                                                            // 0x00544de9    90
                         nop                                                            // 0x00544dea    90
                         nop                                                            // 0x00544deb    90
                         nop                                                            // 0x00544dec    90
                         nop                                                            // 0x00544ded    90
                         nop                                                            // 0x00544dee    90
                         nop                                                            // 0x00544def    90
_jmp_addr_0x00544df0:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x00544df0    8b442408
                         sub              esp, 0x00000208                               // 0x00544df4    81ec08020000
                         cmp              eax, 0x0d                                     // 0x00544dfa    83f80d
                         push             esi                                           // 0x00544dfd    56
                         push             edi                                           // 0x00544dfe    57
                         {disp32} ja      _jmp_addr_0x00544f44                          // 0x00544dff    0f873f010000
                         xor.s            ecx, ecx                                      // 0x00544e05    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x00544f64]               // 0x00544e07    8a88644f5400
                         jmp              dword ptr [ecx*4 + 0x544f50]                  // 0x00544e0d    ff248d504f5400
                         {disp32} mov     eax, dword ptr [esp + 0x00000214]             // 0x00544e14    8b842414020000
                         {disp8} mov      ecx, dword ptr [eax + 0x2c]                   // 0x00544e1b    8b482c
                         {disp8} mov      eax, dword ptr [eax + 0x10]                   // 0x00544e1e    8b4010
                         {disp32} mov     edi, dword ptr [eax + 0x00000248]             // 0x00544e21    8bb848020000
                         mov              edx, dword ptr [ecx]                          // 0x00544e27    8b11
                         cmp              edi, -0x01                                    // 0x00544e29    83ffff
                         sete             al                                            // 0x00544e2c    0f94c0
                         push             eax                                           // 0x00544e2f    50
                         call             dword ptr [edx + 8]                           // 0x00544e30    ff5208
                         pop              edi                                           // 0x00544e33    5f
                         pop              esi                                           // 0x00544e34    5e
                         add              esp, 0x00000208                               // 0x00544e35    81c408020000
                         ret              0x0018                                        // 0x00544e3b    c21800
                         {disp32} mov     ecx, dword ptr [esp + 0x00000214]             // 0x00544e3e    8b8c2414020000
                         mov              edx, dword ptr [ecx]                          // 0x00544e45    8b11
                         call             dword ptr [edx + 0x20]                        // 0x00544e47    ff5220
                         pop              edi                                           // 0x00544e4a    5f
                         pop              esi                                           // 0x00544e4b    5e
                         add              esp, 0x00000208                               // 0x00544e4c    81c408020000
                         ret              0x0018                                        // 0x00544e52    c21800
                         {disp32} mov     esi, dword ptr [esp + 0x00000214]             // 0x00544e55    8bb42414020000
                         {disp32} mov     edi, dword ptr [esp + 0x00000220]             // 0x00544e5c    8bbc2420020000
                         cmp              edi, dword ptr [esi + 0x28]                   // 0x00544e63    3b7e28
                         {disp8} jne      _jmp_addr_0x00544e83                          // 0x00544e66    751b
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00544e68    a15c19d000
                         {disp32} mov     dword ptr [eax + 0x0025017c], 0x00000000      // 0x00544e6d    c7807c01250000000000
                         {disp32} mov     byte ptr [esi + 0x00000238], 0x00             // 0x00544e77    c6863802000000
                         call             _jmp_addr_0x00513640                          // 0x00544e7e    e8bde7fcff
_jmp_addr_0x00544e83:    cmp              edi, dword ptr [esi + 0x2c]                   // 0x00544e83    3b7e2c
                         {disp32} jne     _jmp_addr_0x00544f44                          // 0x00544e86    0f85b8000000
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                   // 0x00544e8c    8b4e10
                         {disp32} mov     byte ptr [esi + 0x00000238], 0x01             // 0x00544e8f    c6863802000001
                         {disp32} mov     eax, dword ptr [ecx + 0x00000248]             // 0x00544e96    8b8148020000
                         {disp8} mov      edx, dword ptr [esi + 0x18]                   // 0x00544e9c    8b5618
                         shl              eax, 4                                        // 0x00544e9f    c1e004
                         add.s            eax, edx                                      // 0x00544ea2    03c2
                         {disp8} mov      eax, dword ptr [eax + 0x04]                   // 0x00544ea4    8b4004
                         test             eax, eax                                      // 0x00544ea7    85c0
                         {disp8} jne      _jmp_addr_0x00544eb0                          // 0x00544ea9    7505
                         mov              eax, 0x008decd8                               // 0x00544eab    b8d8ec8d00
_jmp_addr_0x00544eb0:    push             eax                                           // 0x00544eb0    50
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                   // 0x00544eb1    8d54240c
                         push             edx                                           // 0x00544eb5    52
                         call             _wcscpy                                       // 0x00544eb6    e8fb102800
                         add              esi, 0x30                                     // 0x00544ebb    83c630
                         push             0x00bea788                                    // 0x00544ebe    6888a7be00
                         push             esi                                           // 0x00544ec3    56
                         call             _wcscpy                                       // 0x00544ec4    e8ed102800
                         {disp8} lea      eax, dword ptr [esp + 0x18]                   // 0x00544ec9    8d442418
                         push             eax                                           // 0x00544ecd    50
                         push             esi                                           // 0x00544ece    56
                         call             _wcscat                                       // 0x00544ecf    e8b8102800
                         push             0x00bea77c                                    // 0x00544ed4    687ca7be00
                         push             esi                                           // 0x00544ed9    56
                         call             _wcscat                                       // 0x00544eda    e8ad102800
                         add              esp, 0x20                                     // 0x00544edf    83c420
                         call             _jmp_addr_0x00513640                          // 0x00544ee2    e859e7fcff
                         pop              edi                                           // 0x00544ee7    5f
                         pop              esi                                           // 0x00544ee8    5e
                         add              esp, 0x00000208                               // 0x00544ee9    81c408020000
                         ret              0x0018                                        // 0x00544eef    c21800
                         {disp32} mov     esi, dword ptr [data_bytes + 0x2078]          // 0x00544ef2    8b3578809c00
                         {disp32} mov     ecx, dword ptr [esp + 0x00000214]             // 0x00544ef8    8b8c2414020000
                         push             0x1                                           // 0x00544eff    6a01
                         push             0x1                                           // 0x00544f01    6a01
                         mov.s            eax, esi                                      // 0x00544f03    8bc6
                         cdq                                                            // 0x00544f05    99
                         sub.s            eax, edx                                      // 0x00544f06    2bc2
                         push             0x00e0e0e0                                    // 0x00544f08    68e0e0e000
                         push             0x00e0e0e0                                    // 0x00544f0d    68e0e0e000
                         sar              eax, 1                                        // 0x00544f12    d1f8
                         {disp32} mov     dword ptr [data_bytes + 0x2078], eax          // 0x00544f14    a378809c00
                         {disp8} mov      eax, dword ptr [ecx + 0x24]                   // 0x00544f19    8b4124
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x00544f1c    8b5014
                         {disp8} mov      ecx, dword ptr [eax + 0x10]                   // 0x00544f1f    8b4810
                         push             0x00e0e0e0                                    // 0x00544f22    68e0e0e000
                         push             0x00e0e0e0                                    // 0x00544f27    68e0e0e000
                         push             edx                                           // 0x00544f2c    52
                         {disp8} mov      edx, dword ptr [eax + 0x0c]                   // 0x00544f2d    8b500c
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x00544f30    8b4008
                         push             ecx                                           // 0x00544f33    51
                         push             edx                                           // 0x00544f34    52
                         push             eax                                           // 0x00544f35    50
                         call             ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x00544f36    e885e3ecff
                         add              esp, 0x28                                     // 0x00544f3b    83c428
                         {disp32} mov     dword ptr [data_bytes + 0x2078], esi          // 0x00544f3e    893578809c00
_jmp_addr_0x00544f44:    pop              edi                                           // 0x00544f44    5f
                         pop              esi                                           // 0x00544f45    5e
                         add              esp, 0x00000208                               // 0x00544f46    81c408020000
                         ret              0x0018                                        // 0x00544f4c    c21800

// Snippet: db, [0x00544f4f, 0x00544f50)
.byte 0x90                        // 0x00544f4f

// Snippet: jmptbl, [0x00544f50, 0x00544f64)
.byte 0x14, 0x4e, 0x54, 0x00      // 0x00544f50
.byte 0x55, 0x4e, 0x54, 0x00      // 0x00544f54
.byte 0x3e, 0x4e, 0x54, 0x00      // 0x00544f58
.byte 0xf2, 0x4e, 0x54, 0x00      // 0x00544f5c
.byte 0x44, 0x4f, 0x54, 0x00      // 0x00544f60

// Snippet: ijmptbl, [0x00544f64, 0x00544f72)
.byte 0x00, 0x01, 0x04, 0x04      // 0x00544f64
.byte 0x04, 0x04, 0x02, 0x04      // 0x00544f68
.byte 0x04, 0x04, 0x04, 0x04      // 0x00544f6c
.byte 0x04, 0x03                  // 0x00544f70

// Snippet: db, [0x00544f72, 0x00544f80)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00544f72
.byte 0x90, 0x90, 0x90, 0x90      // 0x00544f76
.byte 0x90, 0x90, 0x90, 0x90      // 0x00544f7a
.byte 0x90, 0x90                  // 0x00544f7e

